using UnityEngine;
using System.Collections;

public class Audiogogue : MonoBehaviour {

	AudioSource Small, Big;
	public AudioClip explosion, laser, biglaser, hurt, charge, missile;

	public void Start(){
		Big = gameObject.GetComponent<AudioSource>();
		Small = gameObject.AddComponent<AudioSource>();
	}

	public void Update(){
		Small.volume = PersistentBeat.volume;
		Big.volume = PersistentBeat.volume;
	}

	public void PlayClip(AudioClip clip, bool loop = false){
		//if(!ear.isPlaying){
			Small.loop = loop;
			Small.clip = clip;
			Small.Play();
		//} 
	}
}