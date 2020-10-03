﻿using System;
using UnityEngine;

[Serializable]
public class Sound
{
    public AudioClip audioClip;

    [Range(0, 1)]
    public float volume = 0.5f;

    [HideInInspector]
    public AudioSource audioSource;
}
