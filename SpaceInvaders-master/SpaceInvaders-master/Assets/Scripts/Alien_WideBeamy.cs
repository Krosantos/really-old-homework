using UnityEngine;
using System.Collections;

public class Alien_WideBeamy : Alien {

	public override void Start ()
	{
		StartCoroutine (checkFront());
		StartCoroutine(shoot ());
		God = GameObject.FindGameObjectWithTag("God").GetComponent<Audiogogue>();
	}

	protected override IEnumerator shoot (){
		yield return new WaitForSeconds (1f);
		float rand;
		float lockX, lockY;
		for(;;){
			rand = Random.value;
			if(isInFront && rand >= 0.88){
				gameObject.GetComponent<Animator>().SetBool ("isCharging", true);
				God.PlayClip (God.charge);
				yield return new WaitForSeconds(1.5f);
				gameObject.GetComponent<Animator>().SetBool ("isCharging", false);
				lockX = transform.position.x+0.5f;
				lockY = transform.position.y-0.5f;
				for(int i=0;i<10;i++){
					God.PlayClip (God.biglaser);
					Instantiate (laser, new Vector3(lockX, lockY,transform.position.z), Quaternion.identity);
					yield return new WaitForSeconds(0.075f);
				}
			}
			yield return new WaitForSeconds(0.6f);
		}
	}
}
