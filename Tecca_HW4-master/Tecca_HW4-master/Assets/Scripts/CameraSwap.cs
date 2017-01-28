using UnityEngine;
using System.Collections;

public class CameraSwap : MonoBehaviour {

	public GameObject Camera1, Camera2;
	void OnTriggerEnter(){
		Camera1.camera.enabled = false;
		Camera2.camera.enabled = true;
	}
}
