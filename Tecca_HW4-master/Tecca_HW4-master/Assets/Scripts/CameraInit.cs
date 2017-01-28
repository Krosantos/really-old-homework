using UnityEngine;
using System.Collections;

public class CameraInit : MonoBehaviour {

	public GameObject Camera2, Camera3;
	void Start () {
		gameObject.camera.enabled = true;
		Camera2.camera.enabled = false;
		Camera3.camera.enabled = false;
	}
}
