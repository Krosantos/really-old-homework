using UnityEngine;
using System.Collections;

public class DisplayLives : MonoBehaviour {

	private int deleteIndex, trackedLives;
	public GameObject heart;
	private GameObject[] hearts;

	void Start () {
		trackedLives = PersistentBeat.lives;
		deleteIndex = PersistentBeat.lives-1;
		hearts = new GameObject[PersistentBeat.lives]; 
		for(int i=0;i<PersistentBeat.lives;i++){
			hearts[i] = (GameObject)Instantiate (heart, new Vector3((transform.position.x-i*3), transform.position.y, transform.position.z), Quaternion.identity);
		}
	}

	void Update(){
		if(trackedLives != PersistentBeat.lives){
			Damage();
			trackedLives = PersistentBeat.lives;
		}
	}

	void Damage(){
		if(deleteIndex >= 0){
		hearts[deleteIndex].GetComponent<Animator>().SetBool ("IsDead", true);
		GameObject.Destroy(hearts[deleteIndex],0.66f);
		deleteIndex--;
		}
	}
}
