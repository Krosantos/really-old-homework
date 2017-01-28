using UnityEngine;
using System.Collections;

public class BalloonRise : MonoBehaviour {

	public GameObject Balloon, Fire;
	public AudioClip click;
	public int riseSpeed = 1;
	// Use this for initialization
	void Start(){
		Debug.Log ("Beep!");
	}
	void OnTriggerEnter () {
		Debug.Log("Press!");
		audio.PlayOneShot(click, 1f);
		Balloon.constantForce.force  = Vector3.up*Time.deltaTime*riseSpeed;
		ParticleSystem sparky = Fire.GetComponent<ParticleSystem>();
		sparky.Play();
	}
}
