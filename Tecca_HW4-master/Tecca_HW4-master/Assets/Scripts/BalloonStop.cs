using UnityEngine;
using System.Collections;

public class BalloonStop : MonoBehaviour {
	
	void Update () {
		if(constantForce.force.y < 0)constantForce.force = Vector3.zero;	
	}
}
