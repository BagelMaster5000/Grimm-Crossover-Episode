using UnityEngine;

public class Credits : MonoBehaviour
{
    public void BackToTitle() { FindObjectOfType<NextSceneFader>().FadeToNextScene("Title", true); }
}
