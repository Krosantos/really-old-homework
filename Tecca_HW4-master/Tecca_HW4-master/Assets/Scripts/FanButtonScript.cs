using UnityEngine;
using System.Collections;

public class FanButtonScript : MonoBehaviour {

	public GameObject FanTarget;
	public AudioClip click;

	void OnTriggerEnter () {
		audio.PlayOneShot(click, 1f);
		audio.PlayDelayed(1.3f);
		StartCoroutine(FanStart()); //This line calls the paused animation.
		StartCoroutine (FanStop());//This one stops the fan after the clip ends.
	}
	IEnumerator FanStart() { //This block is a function to pause for .75 seconds, then spin the fan.
		Debug.Log ("Fan delay 1 triggered.");
		yield return new WaitForSeconds(1.35f);
		Debug.Log ("Fan delay 1 ended.");
		FanTarget.GetComponent<FanSpin>().SpinSpeed = 650;
	}
	IEnumerator FanStop() { //Stop the fan as the sound ends.
		Debug.Log ("Fan delay 2 triggered.");
		yield return new WaitForSeconds(11.35f);
		Debug.Log ("Fan delay 2 ended.");
		FanTarget.GetComponent<FanSpin>().SpinSpeed = 0;
	}
}

/*OK! So, the way this works is that I have a method/function (I guess
 * they're called co-routines in C#?) which waits for 0.80 seconds. I
 * call it after setting up the sound delay, so that the fan won't
 * animate until it would sync up with the noise. */
