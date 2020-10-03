/* Script that accepts ink file and displays text.
 * Handles most of the logic of the game.
 * A lot of inspiration was drawn from YouTube tutorials by Dan Cox.
*/

using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using TMPro;
using System.Collections;
using UnityEngine.UI;
using System;

public class Dialogger : MonoBehaviour
{
    #pragma warning disable 649

    const float TEXT_DISPLAY_SPEED = 0.016f;
    const int TEXT_SCALE_START_DELTA = -40;
    const int TALKING_SOUND_DELAY = 3;

    public string nextSceneName;

    [Header("Story")]
    [SerializeField] TextAsset inkFile;
    static Story story;

    [Header("Background")]
    [SerializeField] Sprite[] backgroundSprites;
    [SerializeField] SpriteRenderer backgroundSpriteRenderer;

    [Header("Characters")]
    int currentCharacter; // -1 none, 0 buttons, 1 queenWithBaby, 2 rumplestilskin
    [SerializeField] Character[] characters; // Same indexes as above
    [SerializeField] SpriteRenderer characterSpriteRenderer;

    [Header("UI")]
    [SerializeField] TextMeshProUGUI dialogText; // Dialog displaying text
    [SerializeField] ButtonAnimator buttonAnimator; // Controls animations for all buttons
    GameObject[] buttons; // All buttons
    [SerializeField] Image proceedGraphic; // Bobbing arrow to show dialogue is done
    [SerializeField] TextMeshProUGUI characterNameText;
    [SerializeField] Message message;

    // Related to text appearing
    bool canContinue = true;
    float startTextSize;
    bool madeDecision = true;
    bool fastForwarding;
    Coroutine fastForwardCoroutine;

    [Header("Sounds")]
    [SerializeField] AudioSource talkingSound;
    [SerializeField] AudioSource selectionSound;

    InputMaster inputs;

    // Other values
    int morality;

    #pragma warning restore 649

    #region Inputs and Buttons Set-Up

    // Initialize variables
    private void Awake()
    {
        inputs = new InputMaster();
        inputs.InGame.AdvanceDialog.performed += ctx => ContinueStory();
        inputs.InGame.FastForward.started += ctx => fastForwardCoroutine = StartCoroutine(FastForwardingHold());
        inputs.InGame.FastForward.canceled += ctx => StopCoroutine(fastForwardCoroutine);
        inputs.InGame.FastForward.canceled += ctx => fastForwarding = false;
        inputs.Enable();

        buttons = GetComponentInChildren<ButtonAnimator>().buttons;
    }

    // Disables inputs when object is set inactive
    private void OnDisable() { inputs.Disable(); }

    #endregion

    // Set-up
    void Start()
    {
        characterSpriteRenderer.sprite = null;
        characterNameText.text = "";
        startTextSize = dialogText.fontSize;
        story = new Story(inkFile.text);
        story.variablesState["name"] = GlobalVariables.playerName;
        proceedGraphic.enabled = false;
        ContinueStory();
    }

    // Advances dialog if able; otherwise, ends story. Called with press of primary button
    public void ContinueStory()
    {
        if (story.canContinue && madeDecision)
        {
            if (canContinue)
                AdvanceDialog();
            else
                fastForwarding = true;
        }
        else if (madeDecision && canContinue)
            FinishDialog();
    }

    // Advances dialog
    void AdvanceDialog()
    {
        string curSentence = story.Continue();
        ParseTags();
        StartCoroutine(ShowDialog(curSentence));
    }

    #region Tag Parsing

    // Checks tags for commands (currently used only for the character animation)
    void ParseTags()
    {
        // Doesn't parse tags if no animator attached
        if (story.currentTags.Count == 0)
            return;

        // Checks each tag
        foreach (string t in story.currentTags)
        {
            string prefix = t.Split(' ')[0]; // String before ' '
            string param = ""; // String after ' '
            if (prefix.Length + 1 <= t.Length - 1)
                param = t.Substring(prefix.Length + 1);

            switch (prefix)
            {
                case "anim":
                    SetAnimation(param);
                    break;
                case "morality":
                    SetMorality(param);
                    break;
                case "character":
                    SetCharacter(param);
                    break;
                case "characterName":
                    SetCharacterName(param);
                    break;
                case "message":
                    SetMessage(param);
                    break;
                case "background":
                    SetBackground(param);
                    break;
            }
        }
    }

    // Sets animation of the character. Called by ParseTags()
    void SetAnimation(string param)
    {
        switch (param)
        {
            case "questioning":
                switch (currentCharacter)
                {
                    case 0: characterSpriteRenderer.sprite = characters[0].characterSprites[0]; break;
                    case 1: characterSpriteRenderer.sprite = characters[1].characterSprites[3]; break;
                    case 2: characterSpriteRenderer.sprite = characters[2].characterSprites[3]; break;
                }
                break;
            case "happy":
                switch (currentCharacter)
                {
                    case 0: characterSpriteRenderer.sprite = characters[0].characterSprites[3]; break;
                    case 1: characterSpriteRenderer.sprite = characters[1].characterSprites[2]; break;
                    case 2: characterSpriteRenderer.sprite = characters[2].characterSprites[2]; break;
                }
                break;
            case "sad":
                switch (currentCharacter)
                {
                    case 0: characterSpriteRenderer.sprite = characters[0].characterSprites[4]; break;
                    case 1: characterSpriteRenderer.sprite = characters[1].characterSprites[4]; break;
                    case 2: characterSpriteRenderer.sprite = characters[2].characterSprites[4]; break;
                }
                break;
            case "angry":
                switch (currentCharacter)
                {
                    case 0: characterSpriteRenderer.sprite = null; break;
                    case 1: characterSpriteRenderer.sprite = characters[1].characterSprites[0]; break;
                    case 2: characterSpriteRenderer.sprite = characters[2].characterSprites[0]; break;
                }
                break;
            case "drinkMe":
                switch (currentCharacter)
                {
                    case 0: characterSpriteRenderer.sprite = characters[0].characterSprites[2]; break;
                    case 1: characterSpriteRenderer.sprite = null; break;
                    case 2: characterSpriteRenderer.sprite = null; break;
                }
                break;
            case "idle":
                switch (currentCharacter)
                {
                    case 0: characterSpriteRenderer.sprite = characters[0].characterSprites[1]; break;
                    case 1: characterSpriteRenderer.sprite = characters[1].characterSprites[1]; break;
                    case 2: characterSpriteRenderer.sprite = characters[2].characterSprites[1]; break;
                }
                break;
            default:
                characterSpriteRenderer.sprite = null; break;
        }
    }

    // Increments/decrements current player morality. Called by ParseTags()
    void SetMorality(string param)
    {
        morality = (param == "up") ? morality + 1 : morality - 1;
        if (FindObjectOfType<RefreshBranchingPath>() != null)
            FindObjectOfType<RefreshBranchingPath>().Refresh(morality);
    }

    // Sets current character. Called by ParseTags()
    void SetCharacter(string param)
    {
        switch (param)
        {
            case "Buttons": currentCharacter = 0; break;
            case "QueenWithBaby": currentCharacter = 1; break;
            case "Rumpel": currentCharacter = 2; break;
            case "none":
                currentCharacter = -1;
                characterNameText.text = "";
                SetAnimation("");
                break;
        }
    }

    // Sets name of current character. Called by ParseTags()
    void SetCharacterName(string param)
    {
        if (param == "none")
            characterNameText.text = "";
        else
            characterNameText.text = param;
    }

    // Shows a pop-up message. Called by ParseTags()
    void SetMessage(string param) { message.SetMessage(param); }

    void SetBackground(string param)
    {
        int backgroundNum = -1;
        if (!Int32.TryParse(param, out backgroundNum) || backgroundNum >= backgroundSprites.Length)
            return;
        backgroundSpriteRenderer.sprite = backgroundSprites[backgroundNum];
    }

    #endregion

    // Shows buttons for player to make a choice
    void ShowChoices()
    {
        List<Choice> choices = story.currentChoices;

        // Throws error if more choices than available buttons
        if (choices.Count > buttons.Length)
        {
            Debug.LogError("More choices than buttons");
            return;
        }

        madeDecision = false;

        // Sets buttons
        for (int x = 0; x < choices.Count; x++)
        {
            buttons[x].transform.GetComponentInChildren<TextMeshProUGUI>().text = choices[x].text;
            buttons[x].GetComponent<Selectable>().element = choices[x];
        }
        buttonAnimator.Appear(choices.Count);
    }

    // Ends dialog and loads next scene
    void FinishDialog() { FindObjectOfType<NextSceneFader>().FadeToNextScene(nextSceneName, false); }

    /* Selects a decision. Called by choice button's script
     * @param element Choice selected
     */
    public void SetDecision(Choice element)
    {
        if (element == null)
            return;
        selectionSound.Play();
        story.ChooseChoiceIndex(element.index);
        AdvanceFromDecision();
    }

    // Advances dialog following decision
    void AdvanceFromDecision()
    {
        madeDecision = true;
        buttonAnimator.Disappear();
        if (story.canContinue)
            AdvanceDialog();
    }

    /* Shows dialog character-by-character. Also does a fancy letter-scaling effect.
     * @param sentence segment of dialog to display
     */
    IEnumerator ShowDialog(string sentence)
    {
        canContinue = false;
        List<float> letterSizes = new List<float>();

        talkingSound.Play();
        int soundCounter = 0;

        proceedGraphic.enabled = false;

        // Printing text
        for (int index = 0; index < sentence.Length; index++)
        {
            letterSizes.Add(startTextSize + TEXT_SCALE_START_DELTA);
            dialogText.text = "";
            for (int letNum = 0; letNum < letterSizes.Count; letNum++)
            {
                dialogText.text += "<size=" + letterSizes[letNum] + ">" + sentence.Substring(letNum, 1) + "</size>";
                letterSizes[letNum] = Mathf.SmoothStep(letterSizes[letNum], startTextSize, 0.5f);
            }
            soundCounter++;
            if (soundCounter > TALKING_SOUND_DELAY)
            {
                soundCounter = 0;
                talkingSound.Play();
            }
            if (fastForwarding)
                yield return new WaitForSecondsRealtime(TEXT_DISPLAY_SPEED / 2);
            else
                yield return new WaitForSecondsRealtime(TEXT_DISPLAY_SPEED);
        }

        // Shrinking text after all text has been displayed
        while (letterSizes[sentence.Length - 1] < startTextSize - 1)
        {
            dialogText.text = "";
            for (int letNum = 0; letNum < letterSizes.Count; letNum++)
            {
                dialogText.text += "<size=" + letterSizes[letNum] + ">" + sentence.Substring(letNum, 1) + "</size>";
                letterSizes[letNum] = Mathf.SmoothStep(letterSizes[letNum], startTextSize, 0.5f);
            }
            if (fastForwarding)
                yield return new WaitForSecondsRealtime(TEXT_DISPLAY_SPEED / 2);
            else
                yield return new WaitForSecondsRealtime(TEXT_DISPLAY_SPEED);
        }
        dialogText.text = "<size=" + startTextSize + ">" + sentence + "</size>";

        if (story.currentChoices.Count > 0)
            ShowChoices();
        else
            proceedGraphic.enabled = true;
        fastForwarding = false;
        canContinue = true;

    }

    // Keeps fastForward set to true while speed up button pressed
    IEnumerator FastForwardingHold()
    {
        while (true)
        {
            fastForwarding = true;
            yield return null;
        }
    }
}
