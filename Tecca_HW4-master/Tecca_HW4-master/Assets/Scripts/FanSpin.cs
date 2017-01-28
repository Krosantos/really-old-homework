using UnityEngine;
using System.Collections;

public class FanSpin : MonoBehaviour {

	public int SpinSpeed = 100;

	void Update () {
		transform.Rotate(Vector3.up * -1*Time.deltaTime *SpinSpeed);
	}
}
