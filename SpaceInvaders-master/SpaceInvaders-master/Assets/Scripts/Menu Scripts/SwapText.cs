using UnityEngine;
using System.Collections;

public class SwapText : MonoBehaviour {

	public string Text1, Text2;
	public GameObject MenuController;

	protected virtual void Update(){
		if (!MenuController.GetComponent<Menu>().menuPage){
			gameObject.GetComponent<TextMesh>().text=Text1;
		}
		else gameObject.GetComponent<TextMesh>().text=Text2;
	}
}
