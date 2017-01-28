using UnityEngine;
using System.Collections;

public class EndMenu : MonoBehaviour {
	
	public GameObject Line01,Line02,Line03;
	private int menuState = 0;
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
				Application.LoadLevel("Main");
				break;
			case 1:
				Application.LoadLevel("Menu");
				break;
			case 2:
				Application.Quit();
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
}
