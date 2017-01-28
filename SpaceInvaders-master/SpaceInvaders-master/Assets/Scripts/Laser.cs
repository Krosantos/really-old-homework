using UnityEngine;
using System.Collections;

public class Laser : MonoBehaviour {

	public float speed;
	protected Audiogogue God;

	void Start () {
		//Give a maximum lifetime to the object.
		GameObject.Destroy(gameObject, 15f);
		God = GameObject.FindGameObjectWithTag("God").GetComponent<Audiogogue>();
	}
	
	void Update() {
		//Fly ever downwards.
		transform.Translate(new Vector3(0,-1,0)*speed*Time.deltaTime);
	}

	void OnCollisionEnter2D(Collision2D other){
		if(other.gameObject.tag == "Player"){
			//If you hit the player, take a life.
			God.PlayClip (God.hurt);
			PersistentBeat.lives--;
		}
		GameObject.Destroy(gameObject);
	}
}
