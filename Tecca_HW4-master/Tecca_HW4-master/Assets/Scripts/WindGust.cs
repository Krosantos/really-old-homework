using UnityEngine;
using System.Collections;

public class WindGust : MonoBehaviour {

	public GameObject Balloon;
	public int BlowSpeed;

	void OnTriggerEnter () {
		Balloon.constantForce.force  += Vector3.right*Time.deltaTime*BlowSpeed;
	}
}
