using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class EnterName : MonoBehaviour
{
    public TMP_InputField nameInput;
    public Button startButton;

    #if !UNITY_EDITOR && UNITY_WEBGL

    private void Start() { WebGLInput.captureAllKeyboardInput = false; }

    #endif

    private void Update() { startButton.interactable = nameInput.textComponent.text.Length > 1; }

    public void StartGame()
    {
        GlobalVariables.playerName = nameInput.textComponent.text;
        FindObjectOfType<NextSceneFader>().FadeToNextScene("Story", true);
    }
}
