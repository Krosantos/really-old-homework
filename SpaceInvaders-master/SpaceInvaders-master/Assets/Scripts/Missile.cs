using UnityEngine;
using System.Collections;

public class Missile : MonoBehaviour {

	public float speed;
	public static int missileCount;

	void Start(){
		missileCount ++;
	}

	void OnCollisionEnter2D(Collision2D other){
		//If it's an alien, tell him to die properly.
		if(other.gameObject.tag=="Alien"){
			other.gameObject.GetComponent<Alien>().die();
			missileCount --;
			GameObject.Destroy(gameObject);
		}
		//Block and/or be blocked by lasers.
		else if(other.gameObject.GetComponent<Laser>() != null){
			GameObject.Destroy(other.gameObject);
		}
		else{
			missileCount --;
			GameObject.Destroy(gameObject);
		}
	}

	void Update() {
		//Fly ever upwards.
		transform.Translate(new Vector3(0,1,0)*speed*Time.deltaTime);
	}
}
