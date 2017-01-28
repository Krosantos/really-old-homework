using UnityEngine;
using System.Collections;

public class CameraZoomOut : MonoBehaviour {

	public AudioClip ding;
	public GameObject target;
	
	void OnTriggerEnter() {
		audio.PlayOneShot(ding,1f);
		target.GetComponent<CameraTrack>().distance = 25;
		target.GetComponent<CameraTrack>().height = 35;
	}

}
