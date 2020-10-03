using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class EnterName : MonoBehaviour
{
    public TMP_InputField nameInput;
    public WebGLNativeInputField webGLNameInput;
    public GameObject webGLEnterNameText;
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

    private void Update()
    {
#if UNITY_WEBGL
        startButton.interactable = webGLNameInput.text.Length > 1;
        webGLEnterNameText.SetActive(webGLNameInput.text.Length <= 1);
#endif
#if !UNITY_WEBGL
        startButton.interactable = nameInput.textComponent.text.Length > 1;
#endif
    }

    public void StartGame()
    {
#if UNITY_WEBGL
        GlobalVariables.playerName = webGLNameInput.text;
#endif
#if !UNITY_WEBGL
        GlobalVariables.playerName = nameInput.textComponent.text;
#endif
        FindObjectOfType<NextSceneFader>().FadeToNextScene("Story", true);
    }
}
