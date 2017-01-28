using UnityEngine;
using System.Collections;

public class Menu : MonoBehaviour {

	public GameObject Line01,Line02,Line03;
	private int menuState = 0;
	public bool menuPage = false;
	public Color white, yellow;

	void Start(){
		white = Color.white;
		yellow = Color.yellow;
	}

	bool Up(){
		return (Input.GetKeyDown(KeyCode.W)||Input.GetKeyDown(KeyCode.UpArrow));
	}
	bool Down(){
		return (Input.GetKeyDown(KeyCode.S)||Input.GetKeyDown(KeyCode.DownArrow));
	}

	void Update(){

		//Get user input.
		if(Up() && menuState > 0) menuState--;
		if(Down() && menuState < 2) menuState++;
		if(Input.GetKeyDown (KeyCode.Space)){
			switch(menuState){
			case 0:
				if(!menuPage)Application.LoadLevel ("Main");
				else incrementDifficulty();
				break;
			case 1:
				if(!menuPage)menuPage = true;
				else incrementVolume();
				break;
			case 2:
				if(!menuPage)Application.Quit();
				else menuPage = false;
				break;
			}
		}

		//Make the selected line yellow.
		switch(menuState){
		case 0:
			Line01.GetComponent<TextMesh>().color = yellow;
			Line02.GetComponent<TextMesh>().color = white;
			Line03.GetComponent<TextMesh>().color = white;
			break;
		case 1:
			Line01.GetComponent<TextMesh>().color = white;
			Line02.GetComponent<TextMesh>().color = yellow;
			Line03.GetComponent<TextMesh>().color = white;
			break;
		case 2:
			Line01.GetComponent<TextMesh>().color = white;
			Line02.GetComponent<TextMesh>().color = white;
			Line03.GetComponent<TextMesh>().color = yellow;
			break;
		}
	}

	void incrementDifficulty(){
		//Using the persistent singleton, control difficulty
		PersistentBeat.difficulty += 1;
		if(PersistentBeat.difficulty >2)PersistentBeat.difficulty = 0;
	}

	void incrementVolume(){
		//Using the persistent signleton, control volume
		PersistentBeat.volume += .1f;
		if(PersistentBeat.volume >= 1.1f)PersistentBeat.volume = 0f;
	}
}
