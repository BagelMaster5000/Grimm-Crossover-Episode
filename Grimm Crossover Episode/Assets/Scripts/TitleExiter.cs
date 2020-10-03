using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TitleExiter : MonoBehaviour
{
    // Inputs
    InputMaster inputs;

    // Initialize variables
    private void Awake()
    {
        inputs = new InputMaster();
        inputs.App.Exit.performed += ctx => ExitToTitle();
        inputs.App.Enable();
    }

    // Disables inputs when object is set inactive
    private void OnDisable() { inputs.App.Disable(); }

    // Exits to title
    void ExitToTitle() { FindObjectOfType<NextSceneFader>().FadeToNextScene("Title", true); }
}
