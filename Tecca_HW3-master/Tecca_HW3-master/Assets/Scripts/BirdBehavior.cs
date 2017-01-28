using UnityEngine;
using System.Collections;

public class BirdBehavior : MonoBehaviour {
	
	public Transform player;
	public float rotation = 1.0f;


	void Start (){
		player = GameObject.Find("Player").GetComponent<Transform>();
	}

	void Update () {
		//Stare eerily at the player.
		Vector3 finalFacing = (player.position - transform.position).normalized;
		transform.forward = Vector3.Lerp (transform.forward, finalFacing, Time.deltaTime*rotation);
	}
}
