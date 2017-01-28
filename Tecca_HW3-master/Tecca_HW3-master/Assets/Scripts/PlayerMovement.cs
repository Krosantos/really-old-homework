using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

	//I STOLE THIS UNABASHEDLY FROM ZHAN'S LAST THING.
	// player attributes
	public float moveSpeed;		// default 6
	public float jumpTime;		// default 1
	public float jumpMagnitude;	// default 8
	public int jumps;			// default 2
	
	// private run time variables
	Vector3 startPosition;
	Quaternion startRotation;
	int jumpsLeft;
	float airTime;
	Vector3 moveDirection;
	
	bool wasGrounded;
	
	// frequently used variables
	CharacterController playerController;
	Transform playerTransform;
	Transform cameraTransform;
	
	// Use this for initialization
	void Start () {
		// set variables for convenience
		playerController = GetComponent<CharacterController>();
		playerTransform = GetComponent<Transform>();
		cameraTransform = transform.GetChild(0).GetComponent<Transform>();
		startPosition = playerTransform.position;
		startRotation = playerTransform.rotation;
		airTime = -0.5f;
		
		// hide mouse
		Screen.showCursor = false;
		
		wasGrounded = false;
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		
		//reset jumping
		if(!playerController.isGrounded){
			if(wasGrounded){
				wasGrounded = false;
				//				Debug.Log("up in the air");
			}
			airTime -= Time.deltaTime;
		} else{
			if(!wasGrounded){
				wasGrounded = true;
				//				Debug.Log("back to planet earth");
			}
			// reset jumps and airtime
			if (jumpsLeft < jumps){
				jumpsLeft = jumps;
			}
			if (airTime < 0.5f){
				airTime = -0.5f; // ensure isGrounded checks work with a default gravity higher than 0 
			}
		}
		
		//jumping with space
		if(Input.GetKeyDown(KeyCode.Space)){
			if(jumpsLeft > 0){
				jumpsLeft -= 1;
				airTime = jumpTime;
			} else{
				//				Debug.Log("no jumps left");
			}
		}
		
		//simulates jumping motion and gravity. when airtime < 0, player drops down with gravity
		moveDirection = new Vector3(0,1.0f,0) * jumpMagnitude * Time.deltaTime * airTime;
		
		//moving and rotation with QWEASD / arrows. sidestepping only with AD. 
		if(Input.GetKey(KeyCode.W) || Input.GetKey(KeyCode.UpArrow)){
			moveDirection += playerTransform.forward.normalized * Time.deltaTime * moveSpeed;
		} else if (Input.GetKey(KeyCode.S) || Input.GetKey(KeyCode.DownArrow)){
			moveDirection += -playerTransform.forward.normalized * Time.deltaTime * moveSpeed * .6f;
		}
		if(Input.GetKey(KeyCode.Q) || Input.GetKey(KeyCode.LeftArrow)){
			playerTransform.Rotate(new Vector3(0,-90,0) * Time.deltaTime);
		} else if (Input.GetKey(KeyCode.E) || Input.GetKey(KeyCode.RightArrow)){
			playerTransform.Rotate(new Vector3(0,90,0) * Time.deltaTime);
		}
		if(Input.GetKey(KeyCode.A)){
			moveDirection += -playerTransform.right.normalized * Time.deltaTime * moveSpeed;
		} else if (Input.GetKey(KeyCode.D)){
			moveDirection += playerTransform.right.normalized * Time.deltaTime * moveSpeed;
		}
		
		//		//looking up and down with R/F
		//		if(Input.GetKey(KeyCode.R)){
		//			cameraTransform.Rotate(new Vector3(-90,0,0) * Time.deltaTime);
		//		} else if (Input.GetKey(KeyCode.F)){
		//			cameraTransform.Rotate(new Vector3(90,0,0) * Time.deltaTime);
		//		}
		
		//looking and turning with mouse
		playerTransform.Rotate(new Vector3(0,90,0) * Time.deltaTime * Input.GetAxis("Mouse X"));
		//		// set max and min for rotation of camera
		//		float cameraRotationX = cameraTransform.rotation.eulerAngles.x;
		//		if((!(cameraRotationX < 180f && cameraRotationX > 50f && Input.GetAxis("Mouse Y") < 0) && 
		//		    !(cameraRotationX > 180f && cameraRotationX < 310f && Input.GetAxis("Mouse Y") > 0))){
		//			cameraTransform.Rotate(new Vector3(-90,0,0) * Time.deltaTime * Input.GetAxis("Mouse Y"));
		//		}
		
		
		playerController.Move(moveDirection);
		
		//reset on death
		if(playerTransform.position.y < -20){
			playerTransform.position = startPosition;
			playerTransform.rotation = startRotation;
			jumpsLeft = jumps;
		}
		
	}
}