using UnityEngine;

public class Title : MonoBehaviour
{
    public void LoadEnterName() { FindObjectOfType<NextSceneFader>().FadeToNextScene("EnterName", true); }
    public void LoadCredits() { FindObjectOfType<NextSceneFader>().FadeToNextScene("Credits", false); }
    public void ExitGame() { Application.Quit(); }
}
