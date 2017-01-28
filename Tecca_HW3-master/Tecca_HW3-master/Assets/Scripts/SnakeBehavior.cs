using UnityEngine;
using System.Collections;

public class SnakeBehavior : MonoBehaviour {

	public Transform target;
	public float speed = 2.0f;
	public float distance = 3.0f;
	public float rotation = 1.0f;

	void Start (){
		target = GameObject.Find("Player").GetComponent<Transform>();
	}

	void Update () {

		
		if(Vector3.Distance(transform.position, target.position) > distance){
			transform.position += Vector3.Normalize(target.position - transform.position)*Time.deltaTime*speed;
			//Variation via sinewave
			transform.position += transform.right*(Mathf.Sin(Time.time)*0.03f);
		}
		if(transform.position.y >0)transform.position = new Vector3( transform.position.x, 0f, transform.position.z );
		
		
		//Stare eerily at the player.
		Vector3 finalFacing = (target.position - transform.position).normalized;
		transform.forward = Vector3.Lerp (transform.forward, finalFacing, Time.deltaTime*rotation);
	}
}
