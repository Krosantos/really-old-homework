using UnityEngine;
using System.Collections;

public class YouLose : MonoBehaviour {

	public Transform target;
	private Vector3 tracker = Vector3.zero; 
	void Start () {
	
	}

	void Update () {
	tracker = target.transform.position;
	if (tracker.y <= 0) {
			GetComponent<GUIText>().text = "YOU LOSE! REFRESH PAGE AND SUCK LESS!";
	}
	}}
