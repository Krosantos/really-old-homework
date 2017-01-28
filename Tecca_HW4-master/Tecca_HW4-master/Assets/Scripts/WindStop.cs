using UnityEngine;
using System.Collections;

public class WindStop : MonoBehaviour {

	public GameObject Balloon;
	public float drag;
	void OnTriggerEnter () {
		Balloon.rigidbody.drag = drag;
		Debug.Log ("WARK!");
}
}
