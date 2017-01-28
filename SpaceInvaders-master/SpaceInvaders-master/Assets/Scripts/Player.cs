using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

	public float speed;
	private int ammo;
	private Vector3 velocity;
	private CharacterController controller;
	private Audiogogue God;
	public GameObject missile;

	void Start(){
		switch(PersistentBeat.difficulty){
		case 0:
			PersistentBeat.lives = 4;
			ammo = 10;
			break;
		case 1:
			PersistentBeat.lives = 2;
			ammo = 7;
			break;
		case 2:
			PersistentBeat.lives = 0;
			ammo = 5;
			break;
		}

		God = GameObject.FindGameObjectWithTag("God").GetComponent<Audiogogue>();
	}

	bool Left(){
		return (Input.GetKey(KeyCode.A)||Input.GetKey(KeyCode.LeftArrow));
	}
	bool Right(){
		return (Input.GetKey(KeyCode.D)||Input.GetKey(KeyCode.RightArrow));
	}
	bool Space(){
		return (Input.GetKeyDown(KeyCode.Space));
	}

	void Shoot(){
		if(ammo > Missile.missileCount){
			God.PlayClip(God.missile);
		Instantiate(missile,transform.position, Quaternion.identity);
		}
	}

	void Update() {

		if(Left()&&!Right()){
			transform.Translate(new Vector3(-1.5f,0,0)*speed*Time.deltaTime);
		}
		if(!Left()&&Right()){
			transform.Translate(new Vector3(1.5f,0,0)*speed*Time.deltaTime);
		}
		if(Space()){
			Shoot();
		}
		if(transform.position.x < 0f)transform.position = new Vector3(0f,transform.position.y,0f);
		if(transform.position.x > 20f)transform.position = new Vector3(20f,transform.position.y,0f);

		if(PersistentBeat.lives < 0){
			PersistentBeat.isVictory = false;
			Application.LoadLevel("End");
		}

	}
}
