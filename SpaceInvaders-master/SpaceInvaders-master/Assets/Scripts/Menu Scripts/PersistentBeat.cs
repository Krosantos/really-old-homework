using UnityEngine;
using System.Collections;

public class PersistentBeat : MonoBehaviour {

	public static float volume = 1f;
	public static int lives,difficulty = 1;
	public static int score = 0;
	public static bool isVictory = true;

	private static PersistentBeat instance = null;
	public static PersistentBeat Instance{
		get{return instance;}
	}
	
	void Awake(){
		if(instance != null && instance != this){
			Destroy(this.gameObject);
			return;
		}
		else{
			instance = this;
		}
		DontDestroyOnLoad(this.gameObject);
	}
}