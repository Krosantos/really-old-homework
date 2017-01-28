﻿using UnityEngine;
using System.Collections;

public class MobBase : MonoBehaviour {

	static protected GameObject player;
	public LayerMask collideMask;
	private float _health;
	private float _detectRange; //Range at which mob loses you
	private float _targetRange; //Range at which mob aggresses
	private float _engageRange; //Range mob tries to fight at
	public AIStates AIState;
	private bool isFighting;

	public GameObject lastNode;
	public GameObject nextNode;
	private float nodeDist;
	private Rigidbody self;
	private Vector3 moveVec;
	private Vector3 debugVec;
	protected Vector3 target;
	protected float recoverTime;
	private float _speed;
	private float _accel;
	private float _regenRate;
	private float _resistRate; //Unintuitively, 1 means no resist, 0 means immune.
	protected float accelMod=1;

	public bool isPetrified = false;

	protected Color tintcolor, gradColor, petColor;

	#region Get/Set Variables
	
	public float speed{
		get {return _speed;}
		set {_speed = value;}
	}

	public float regenRate{
		get {return _regenRate;}
		set {_regenRate = value;}
	}

	public float resistRate{
		get {return _resistRate;}
		set {_resistRate = value;}
	}
	
	public float accel{
		get {return _accel;}
		set {_accel = value;}
	}
	
	public float targetRange{
		get {return _targetRange;}
		set {_targetRange = value;}
	}
	
	public float health{
		get {return _health;}
		set {_health = value;}
	}
	
	public float detectRange{
		get {return _detectRange;}
		set {_detectRange = value;}
	}
	
	public float engageRange{
		get {return _engageRange;}
		set {_engageRange = value;}
	}
	#endregion
	#region Start/Update
	public virtual void Start(){
		player = GameObject.FindGameObjectWithTag("Player");
		nextNode = lockNode();
		self = GetComponent<Rigidbody>();
		tintcolor = renderer.material.color;
		petColor = new Color(.4f,.4f,.4f);
		StartCoroutine ("updateState");
		StartCoroutine ("UnStick");
		StartCoroutine("NodeTrack");
	}
	
	public virtual void Update(){

	
		if (accelMod <= 0f){
			if (!isPetrified) AudioManager.instance.Play(AudioManager.instance.petrifysound);
			isPetrified = true;
			gameObject.layer = 13;
		}else{
			isPetrified = false;
			gameObject.layer = 11;
		}
		
		//Check for death
		gradColor = Color.Lerp (tintcolor, petColor,1-accelMod);
		if(isPetrified){
			gameObject.renderer.material.color = Color.black;
			if (GetComponent<Animator>()) GetComponent<Animator>().speed = 0f;
		}
		else{
			gameObject.renderer.material.color = gradColor;
			if (GetComponent<Animator>()) GetComponent<Animator>().speed = Random.Range(.5f,1f);
		}
		
		//Determine movetarget
		switch (AIState){
		case AIStates.Idle:
			Idle ();
			break;
		case AIStates.Pursue:
			Pursue();
			break;
		case AIStates.Attack:
			Pursue();
			break;
		}
		Move ();
	}
	#endregion
	#region State Directions
	protected virtual void Idle(){
		if(nextNode != null){
			target = (nextNode.transform.position - transform.position);
			nodeDist=target.magnitude;
			if(nodeDist<0.1f){
				lastNode=nextNode;
				nextNode=lastNode.GetComponent<Node>().getNextNode(lastNode);
			}
		}
		else{
			nextNode = lockNode();
		}

	}

	protected virtual void Pursue(){
		nextNode = null;

		target = (player.transform.position-transform.position);
	}
	
	protected virtual void Attack(){

	}

	protected void Move(){

		moveVec = target.normalized*speed*Time.deltaTime*accelMod;
		float moveDist = moveVec.magnitude;
		if(!Physics.Raycast(transform.position,target,moveDist+.5f,collideMask)){
			self.MovePosition (moveVec+transform.position);
		}
	}
	

	#endregion
	#region State Calculation
	AIStates calcState(){
		//Determines an AI's current state
		//TODO:Contemplate Fleeing
		float distance = Calc.getRangeFrom(gameObject,player);
		if(distance > detectRange){
			isFighting = false;
			//Debug.Log ("IDLE");
			return AIStates.Idle;
		}
		else if( distance <= targetRange && distance > engageRange){
			isFighting = true;
			//Debug.Log ("CHASE");
			return AIStates.Pursue;
		}
		else if(distance < engageRange){
			isFighting = true;
			//Debug.Log("ATTACK");
			return AIStates.Attack;
		}
		else if(isFighting && distance < detectRange){
			isFighting = true;
			//Debug.Log ("CHASE");
			return AIStates.Pursue;
		}
		else{
			isFighting = false;
			//Debug.Log("IDLE BUT BAD IDLE");
			return AIStates.Idle;
		}
	}
	
	public bool getIsFighting(){
		return isFighting;
	}
	
	IEnumerator updateState(){
		for(;;){
			AIState = calcState ();
			yield return new WaitForSeconds(.5f);
		}
	}
	#endregion
	#region Light Effects
	public virtual void Petrify(float compositeIntensity){
		StopCoroutine("UnFreeze");
		if(accelMod > 0f){
			accelMod-=compositeIntensity*Time.deltaTime*2f*_resistRate;
		}
		if(accelMod < 0f){
			accelMod = 0f;
		}
	}
	public virtual void Recover(){
		StartCoroutine("UnFreeze");
	}

	protected virtual IEnumerator UnFreeze(){
		recoverTime = 0;
		float t = 1f;
		Vector3 baseposition = transform.position;
		for(;;){
			if(recoverTime < 1){
				recoverTime += regenRate*Time.deltaTime;
			}
			if(recoverTime > 1){
				while (t > 0){
					t -= Time.deltaTime * 2f;
					transform.position = baseposition + new Vector3(Mathf.Sin(Time.time * 100f)-.5f, 0f, 0f) * .1f;
					yield return 0;
				}
				accelMod = 1;
				recoverTime = 1;
				Suicide("UnFreeze");
			}
			yield return 0;
		}
	}

	/*IEnumerator UnFreeze(){
		for(;;){
			if(accelMod < 1){
				accelMod += regenRate*Time.deltaTime;
			}
			if(accelMod > 1){
				accelMod = 1;
				Suicide("UnFreeze");
			}
			yield return 0;
		}
	}*/

	protected void Suicide(string targetCR){
		StopCoroutine(targetCR);
	}

	#endregion

	IEnumerator UnStick(){
		GameObject temp;
		for(;;){
			if(transform.position == debugVec){
				temp = lockNode();
				if(temp != null){
					nextNode = temp.GetComponent<Node>().getNextNode(lastNode);
				}
			}
			else{
				debugVec = transform.position;
			}
			yield return new WaitForSeconds (0.75f);
		}
	}
	
	public GameObject lockNode(){
		float x = transform.position.x+NodeMapGen.xOffSet+0.5f;
		float y = transform.position.y+NodeMapGen.yOffSet+0.5f;
		if(NodeMapGen.nodeMap[(int)x,(int)y]!=null){
			return NodeMapGen.nodeMap[(int)x,(int)y];
		}
		else return null;
	}

	private GameObject prevNode = null;
	private GameObject currNode = null;
	
	IEnumerator NodeTrack(){
		prevNode = lockNode();
		currNode = lockNode();
		for(;;){
			if(prevNode != null){
				prevNode.GetComponent<Node>().turnOn();
			}
			prevNode = currNode;
			currNode = lockNode();
			if(currNode != null){
				currNode.GetComponent<Node>().turnOff();
			}
			yield return new WaitForSeconds(0.02f);
		}
	}

}
