using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class EnterName : MonoBehaviour
{
    public TMP_InputField nameInput;
    public WebGLNativeInputField webGLNameInput;
    public Button startButton;

    private void Start()
    {
#if UNITY_WEBGL
        nameInput.gameObject.SetActive(false);
        webGLNameInput.gameObject.SetActive(true);
#endif
#if !UNITY_WEBGL
        nameInput.gameObject.SetActive(true);
        webGLNameInput.gameObject.SetActive(false);
#endif
    }

    private void Update() { startButton.interactable = nameInput.textComponent.text.Length > 1; }

    public void StartGame()
    {
        GlobalVariables.playerName = nameInput.textComponent.text;
        FindObjectOfType<NextSceneFader>().FadeToNextScene("Story", true);
    }
}
