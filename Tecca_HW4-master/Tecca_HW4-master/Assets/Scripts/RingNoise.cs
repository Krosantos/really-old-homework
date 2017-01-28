using UnityEngine;
using System.Collections;

public class RingNoise : MonoBehaviour {

	public AudioClip ding;

	void OnTriggerEnter() {
		audio.PlayOneShot(ding,1f);
	}
}
