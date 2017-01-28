using UnityEngine;
using System.Collections;

public class Alien_Sturdy : Alien {

	private int hp = 2;

	public override void Start ()
	{
		base.Start ();
		value = 250;
	}

	public override void die ()
	{
		if(hp <=1){
			base.die();
		}
		else{
			hp--;
		}
	}
}
