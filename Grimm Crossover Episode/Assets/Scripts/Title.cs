using UnityEngine;

public class Title : MonoBehaviour
{
    [SerializeField] GameObject exitObject;
    private void Start()
    {
#if UNITY_WEBGL
        exitObject.SetActive(false);
#endif
    }
    public void LoadEnterName() { FindObjectOfType<NextSceneFader>().FadeToNextScene("EnterName", true); }
    public void LoadCredits() { FindObjectOfType<NextSceneFader>().FadeToNextScene("Credits", false); }
    public void ExitGame() { Application.Quit(); }
}
