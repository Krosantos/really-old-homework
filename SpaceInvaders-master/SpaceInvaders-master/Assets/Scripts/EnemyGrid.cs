using UnityEngine;
using System.Collections;

public class EnemyGrid : MonoBehaviour {

	public int rows, cols;
	bool isGoingLeft = true;
	public static GameObject[,] theAliens;
	public GameObject[] easy, med, hard, enemyTypes;
	public static int enemyCount;
	private float speed, leftBound, rightBound;

	void Start (){
		switch(PersistentBeat.difficulty){
		case 0:
			rows = 5;
			cols = 3;
			enemyTypes = easy;
			break;
		case 1:
			rows = 7;
			cols = 4;
			enemyTypes = med;
			break;
		case 2:
			rows = 9;
			cols = 5;
			enemyTypes = hard;
			break;
		}

		speed = 1f;
		theAliens = new GameObject[rows,cols];
		for(int x=0;x<theAliens.GetLength(0);x++){
			for(int y=0;y<theAliens.GetLength(1);y++){
				theAliens[x,y] = fillEnemy();
			}
		}
		for(int x=0;x<theAliens.GetLength(0);x++){
			for(int y=0;y<theAliens.GetLength(1);y++){
				if(theAliens[x,y] != null){
					GameObject temp = (GameObject)Instantiate(theAliens[x,y], new Vector3(x*1.5f,y*-1.5f,0f),Quaternion.identity);
					temp.GetComponent<Alien>().setPos(new Vector2(x,y));
					temp.transform.parent=transform;
					enemyCount++;
				}
			}
		}
		StartCoroutine(alwaysMove());
		StartCoroutine(checkForWin());
	}

	int missingRight(){
		int result = 0;
		for(int i=rows-1;i>=0;i--){
			if(!colIsEmpty(i)){
				break;
			}
			else result++;
		}
		return result;
	}

	int missingLeft(){
		int result = 0;
		for(int i=0;i<theAliens.GetLength(0);i++){
			if(!colIsEmpty(i)){
				break;
			}
			else result++;
		}
		return result;
	}
	
	bool colIsEmpty(int col){
		bool result = true;
		for(int i=0;i<theAliens.GetLength (1);i++){
			if(theAliens[col,i] != null){
				result = false;
			}
		}
		return result;
	}

	private GameObject fillEnemy(){
		int rand = Random.Range (0,enemyTypes.Length);
		return enemyTypes[rand];
	}
	
	void moveRight(){
		transform.Translate(new Vector3(1.5f,0,0)*speed*Time.deltaTime, Space.World);
	}

	void moveLeft(){
		transform.Translate(new Vector3(-1.5f,0,0)*speed*Time.deltaTime, Space.World);
	}

	void reverse(){
		if(isGoingLeft)isGoingLeft = false;
		else isGoingLeft = true;
		speed*=1.08f;
		transform.Translate(new Vector3(0,-1.5f,0), Space.World);
	}

	IEnumerator checkForWin(){
		for(;;){
			if(enemyCount <= 0){
				PersistentBeat.isVictory = true;
				Application.LoadLevel("End");
			}
			yield return new WaitForSeconds(0.2f);
		}
	}

	IEnumerator alwaysMove(){
		float counter = 0;

		for(;;){
			leftBound = ((0-missingLeft())*1.285f);
			rightBound = 21-((rows+missingRight())*1.285f);
			if(isGoingLeft){
				moveLeft();
				if(transform.position.x<=leftBound){
					reverse ();
					counter=0;
				}
			}
			else{
				moveRight();
				if(transform.position.x >=rightBound){
					reverse ();
					counter=0;
				}
			}
			counter+= Time.deltaTime*speed;
			yield return new WaitForSeconds(0f);
		}
	}
}
