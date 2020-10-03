using UnityEngine;

public class RefreshBranchingPath : MonoBehaviour
{
    const int MORALITY_THRESHOLD = 0;

    public void Refresh(int morality)
    {
        FindObjectOfType<Dialogger>().nextSceneName =
            (morality > MORALITY_THRESHOLD) ? "GoodEnding" : "BadEnding";
    }
}
