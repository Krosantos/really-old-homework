﻿using UnityEngine;
using System.Collections;

public class MovePlayer : MonoBehaviour{
	
	//public float baseSpeed = 10f;
	public float jumpspeed = 3f;
	public float accel = .5f;
	
	public bool hasKey;

	private CharacterController controller;
	private Vector3 velocity;
	private float xmove;
	private float ymove;
	public float speed;

	public KeyCode up, down, left, right;

	Animator spriteanimator;

	// Use this for initialization
	void Start () {
		//baseSpeed = baseSpeed;
		controller = GetComponent<CharacterController>();
		hasKey = false;
		spriteanimator = GetComponentInChildren<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
		velocity = controller.velocity;
		xmove = 0f;
		ymove = 0f;

		if (Input.GetKey(left)){
			xmove = -1f;
		}
		if (Input.GetKey(right)){
			xmove = 1f;
		}
		if (Input.GetKey(up)){
			ymove = 1f;
		}
		if (Input.GetKey(down)){
			ymove = -1f;
		}

		if ((Input.GetKey(up) || Input.GetKey(down)) && (Input.GetKey(left) || Input.GetKey(right) )){
			xmove *= 0.707f;
			ymove *= 0.707f;
		}

		velocity.x = Mathf.Lerp(velocity.x, xmove * speed, Time.deltaTime * accel);
		velocity.y = Mathf.Lerp(velocity.y, ymove * speed, Time.deltaTime * accel);

		controller.Move(velocity*Time.deltaTime);

		Vector3 target = Camera.main.ScreenToWorldPoint(Input.mousePosition);
		Vector3 distance = target - transform.position;

		if (Mathf.Abs(distance.normalized.y) > Mathf.Abs(distance.normalized.x)){
			if (distance.normalized.y > 0) spriteanimator.SetInteger ("Direction", 0);
			else spriteanimator.SetInteger ("Direction", 2);
		}else{
			if (distance.normalized.x > 0) spriteanimator.SetInteger ("Direction", 3);
			else spriteanimator.SetInteger ("Direction", 1);
		}
	}

	public void slowHook(){
		StartCoroutine ("slowEffect");
	}

	public IEnumerator slowEffect(){
		this.speed /= 2;
		Debug.Log ("AM SLOW");
		yield return new WaitForSeconds(2f);
		this.speed*= 2;
	}
}
