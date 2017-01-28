using UnityEngine;
using System.Collections;

public class Alien : MonoBehaviour {
	
	protected int xPos, yPos, value =100;
	protected  bool isInFront;
	public GameObject explosion, laser;
	protected Audiogogue God;

	public virtual void Start(){
		StartCoroutine("checkFront");
		StartCoroutine("shoot");
		God = GameObject.FindGameObjectWithTag("God").GetComponent<Audiogogue>();
	}

	public virtual void die(){
		EnemyGrid.enemyCount--;
		EnemyGrid.theAliens[xPos,yPos] = null;
		GameObject boom = (GameObject)Instantiate(explosion,new Vector3(transform.position.x+0.5f, transform.position.y-0.5f,transform.position.z),Quaternion.identity);
		God.PlayClip (God.explosion);
		GameObject.Destroy(boom,1f);
		PersistentBeat.score+= value;
		GameObject.Destroy(gameObject, 0.01f);
	}

	public void setPos(Vector2 input){
		xPos = (int)input.x;
		yPos = (int)input.y;
	}
	
	protected IEnumerator checkFront(){
		for(;;){
			isInFront = true;
			for(int i=(yPos+1);i<EnemyGrid.theAliens.GetLength(1);i++){
				if(EnemyGrid.theAliens[xPos,i] != null){
					isInFront = false;
				}
			}
			yield return new WaitForSeconds(0.5f);
		}
	}

	protected virtual IEnumerator shoot(){
		yield return new WaitForSeconds (1f);
		for(;;){
			if(isInFront && Random.value > 0.9f){
				Instantiate(laser,new Vector3(transform.position.x+0.5f, transform.position.y-0.5f,transform.position.z),Quaternion.identity);
				God.PlayClip(God.laser);
			}
			yield return new WaitForSeconds (0.6f);
		}
	}
}