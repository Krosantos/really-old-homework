using UnityEngine;
using System.Collections;

public class SpawnWorld : MonoBehaviour {

	public Transform TreePF, SnakePF, BirdPF, WellPF, StatuePF;
	void Start () {

		for (float x = -50f;x <=50;x+=10f){
			for (float y = -50f;y <=50;y+=10f){
				int chance = Random.Range(0,101);
				if (chance < 10)
					Instantiate(SnakePF, new Vector3(x, 0f, y), Quaternion.identity);
				else if (chance < 30)
					Instantiate(WellPF, new Vector3(x, 0f, y), Quaternion.identity);
				else if (chance < 50)
					Instantiate(StatuePF, new Vector3(x, 0f, y), Quaternion.identity);
				else if (chance < 75)
					Instantiate(TreePF, new Vector3(x, 5f, y), Quaternion.identity);
				else
					Instantiate(BirdPF, new Vector3(x, 7f, y), Quaternion.identity);
			}


			}
		}

		/*if (TreeCount < TreeMax){
			Instantiate(TreePF, new Vector3(Random.Range (-50f,50f),0f, Random.Range (-50f,50f)), Quaternion.identity);
			TreeCount++;
		}
		if (SnakeCount < SnakeMax){
			Instantiate(SnakePF, new Vector3(Random.Range (-50f,50f),0f, Random.Range (-50f,50f)), Quaternion.identity);
			SnakeCount++;
		}
		if (BirdCount < BirdMax){
			Instantiate(BirdPF, new Vector3(Random.Range (-50f,50f),5f, Random.Range (-50f,50f)), Quaternion.identity);
			BirdCount++;
		}
		if (WellCount < WellMax){
			Instantiate(WellPF, new Vector3(Random.Range (-50f,50f),0f, Random.Range (-50f,50f)), Quaternion.identity);
			WellCount++;
		}
		if (StatueCount < StatueMax){
			Instantiate(StatuePF, new Vector3(Random.Range (-50f,50f),0f, Random.Range (-50f,50f)), Quaternion.identity);
			StatueCount++;*/
		}