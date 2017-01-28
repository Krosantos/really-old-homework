using UnityEngine;
using System.Collections;

public class VictoryScript : MonoBehaviour {
	
	void Update() {
		if(PersistentBeat.isVictory)gameObject.GetComponent<TextMesh>().text="VICTORY!";
		else gameObject.GetComponent<TextMesh>().text="GAME OVER";
	}
}
