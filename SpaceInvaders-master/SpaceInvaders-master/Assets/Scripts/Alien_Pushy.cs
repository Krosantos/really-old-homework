using UnityEngine;
using System.Collections;

public class Alien_Pushy : Alien {

	public override void die (){
		if(transform.parent.transform.position.y<0){
		transform.parent.transform.Translate(new Vector3(0,1.5f,0), Space.World);
		}
		base.die ();
	}
}
