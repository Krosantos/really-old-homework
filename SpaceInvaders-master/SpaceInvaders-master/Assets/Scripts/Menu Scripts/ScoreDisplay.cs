using UnityEngine;
using System.Collections;

public class ScoreDisplay : MonoBehaviour {
	
	void Update() {
		gameObject.GetComponent<TextMesh>().text =PersistentBeat.score.ToString();
	}
}
