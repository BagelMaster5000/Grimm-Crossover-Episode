using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Image))]
public class Message : MonoBehaviour
{
    Image messageBox;
    TextMeshProUGUI messageText;

    const float FADE_IN_DURATION = 1;
    const float HOLD_DURATION = 2;
    const float FADE_OUT_DURATION = 3;
    const float ALPHA_WHEN_HOLDING = 0.8f;

    private void Awake()
    {
        messageBox = GetComponent<Image>();
        messageText = GetComponentInChildren<TextMeshProUGUI>();
    }

    public void SetMessage(string textToDisplay)
    {
        StopAllCoroutines();
        StartCoroutine(MessageAnimator(textToDisplay));
    }

    IEnumerator MessageAnimator(string textToDisplay)
    {
        // Setup
        messageText.text = textToDisplay;
        messageBox.color = Color.black;
        messageText.color = Color.white;
        messageBox.CrossFadeAlpha(0, 0, false);
        messageText.CrossFadeAlpha(0, 0, false);

        // Fading in
        print("fading in");
        messageBox.CrossFadeAlpha(ALPHA_WHEN_HOLDING, FADE_IN_DURATION, false);
        messageText.CrossFadeAlpha(ALPHA_WHEN_HOLDING, FADE_IN_DURATION, false);

        // Holding
        yield return new WaitForSeconds(FADE_IN_DURATION + HOLD_DURATION);

        // Fading out
        print("fading out");
        messageBox.CrossFadeAlpha(0, FADE_OUT_DURATION, false);
        messageText.CrossFadeAlpha(0, FADE_OUT_DURATION, false);
    }
}
