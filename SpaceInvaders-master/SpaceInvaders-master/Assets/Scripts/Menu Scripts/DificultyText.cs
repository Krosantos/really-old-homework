using UnityEngine;
using System.Collections;

public class DificultyText : SwapText {

	protected override void Update(){
		base.Update();
		if(MenuController.GetComponent<Menu>().menuPage){
			gameObject.GetComponent<TextMesh>().text+= "  ";
			switch(PersistentBeat.difficulty){
			case 0:
				gameObject.GetComponent<TextMesh>().text+= "Easy";
				break;
			case 1:
				gameObject.GetComponent<TextMesh>().text+= "Nrml";
				break;
			case 2:
				gameObject.GetComponent<TextMesh>().text+= "Hard";
				break;
			}
		}
	}
}
