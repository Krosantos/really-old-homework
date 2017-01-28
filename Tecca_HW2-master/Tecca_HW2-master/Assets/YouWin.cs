using UnityEngine;
using System.Collections;

public class YouWin : MonoBehaviour {
	public GUIText linkedText;
	
	// Use this for initialization
	void Start () {
		linkedText.enabled = false;
	}
	
	void OnTriggerEnter(Collider other) {
		linkedText.enabled = true;
	}
	
	void OnTriggerExit(Collider other) {
		linkedText.enabled = false;
	}
}