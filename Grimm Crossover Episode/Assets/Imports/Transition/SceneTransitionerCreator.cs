using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SceneTransitionerCreator : MonoBehaviour
{
    [SerializeField] GameObject sceneTransitioner;

    void Awake()
    {
        if (GameObject.FindGameObjectWithTag("SceneTransitioner") == null)
            Instantiate(sceneTransitioner);
    }
}
