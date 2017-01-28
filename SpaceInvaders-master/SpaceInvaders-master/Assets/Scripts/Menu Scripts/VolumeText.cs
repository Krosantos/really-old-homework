using UnityEngine;
using System.Collections;

public class VolumeText : SwapText {

	protected override void Update(){
		base.Update();
		if(MenuController.GetComponent<Menu>().menuPage){
			gameObject.GetComponent<TextMesh>().text+= "  "+PersistentBeat.volume.ToString("P0");
		}
	}
}
