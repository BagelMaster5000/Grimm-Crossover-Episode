using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class EnterName : MonoBehaviour
{
    public TMP_InputField nameInput;
    public Button startButton;

    private void Update() {
        print(nameInput.textComponent.text);
        startButton.interactable = nameInput.textComponent.text.Length > 1; }

    public void StartGame()
    {
        GlobalVariables.playerName = nameInput.textComponent.text;
        print("Start game");
        // FIXME load first scene
    }
}
