﻿using UnityEngine;
using System.Collections;

public class LightControl : MonoBehaviour {

	Light2D light2d;
	float t;
	public Color neutralcolor, weakattackcolor, strongattackcolor;

	float camsize;
	GameObject cam;
	public float zoomoffset = 5f;
	public float zoomamount = .5f;

	float intensity;

	float targetangle;
	Color attackcolor;
	float targetradius;

	bool beamOn = false;

	public GameObject FlareOnEnemy;

	AudioSource audioSource;

	// Use this for initialization
	void Start () {
		light2d = GetComponent<Light2D>();
		cam = Camera.main.gameObject;
		camsize = cam.camera.orthographicSize;

		Light2D.RegisterEventListener(LightEventListenerType.OnStay, OnLightStay);
		Light2D.RegisterEventListener(LightEventListenerType.OnEnter, OnLightEnter);
		Light2D.RegisterEventListener(LightEventListenerType.OnExit, OnLightExit);

		audioSource = GetComponent<AudioSource>();
	}

	public bool getLightOn(){
		return beamOn;
	}

	void OnDestroy(){
		Light2D.UnregisterEventListener(LightEventListenerType.OnStay, OnLightStay);
		Light2D.UnregisterEventListener(LightEventListenerType.OnEnter, OnLightEnter);
		Light2D.UnregisterEventListener(LightEventListenerType.OnExit, OnLightExit);
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 target = Camera.main.ScreenToWorldPoint(Input.mousePosition);
		Vector3 distance = target - transform.position;

		float angle = Mathf.Atan2(distance.y, distance.x);
		angle = angle * Mathf.Rad2Deg;

		light2d.LightConeStart = angle;

		if (Input.GetMouseButtonDown(0)){
			beamOn = !beamOn;
			ScreenShake2D.Shake(0f,0f);
			if (beamOn){
				AudioManager.instance.Play(AudioManager.instance.turnbeamon);
				transform.parent.GetComponent<MovePlayer>().speed *= .5f;
			}else{
				AudioManager.instance.Play(AudioManager.instance.turnbeamoff);
				transform.parent.GetComponent<MovePlayer>().speed *= 2f;
			}

		}

		if (beamOn){
			if (t < 1f) t += Time.deltaTime * 10f;
			intensity = Mathf.Clamp((distance.magnitude-10f)/0.75f, 0f, 1f);
			targetangle = Mathf.Lerp(90f, 2f, intensity);
			attackcolor = Color.Lerp(weakattackcolor, strongattackcolor, intensity);
			targetradius = Mathf.Lerp(7.5f, 20f, intensity);
		}else if (!beamOn && t > 0f){
			t -= Time.deltaTime * 7f;
		}

		// lerp light angle based on proximity
		light2d.LightConeAngle = Mathf.Lerp (360f, targetangle, t);
		light2d.LightRadius = Mathf.Lerp (5f, targetradius, t);
		light2d.LightColor = Color.Lerp(neutralcolor, attackcolor, t);
		Camera.main.orthographicSize = Mathf.Lerp (camsize, camsize - zoomamount, t);
		cam.transform.parent.GetComponent<CameraFollow>().offset = Vector3.Lerp(Vector3.zero, distance.normalized * zoomoffset, t);

	}

	void OnLightEnter(Light2D l, GameObject g){
		//Debug.Log(g.name);
		if (g.tag == "Enemy" && beamOn && g.renderer.isVisible){
			g.transform.GetComponentInChildren<ParticleSystem>().Play();
			if (!audioSource.isPlaying) audioSource.Play();

		}

	}

	void OnLightStay(Light2D l, GameObject g){

		if (g.tag == "Enemy" && beamOn){
			if (!g.renderer.isVisible){
				if (audioSource.isPlaying) audioSource.Stop();
				g.GetComponent<MobBase>().Recover();
				g.transform.GetComponentInChildren<ParticleSystem>().Stop();
				ScreenShake2D.SetShake(0f);
				return;
			}
			float range = Mathf.Clamp(1f - ((g.transform.position - transform.position).magnitude / l.LightRadius), 0f, 1f);
			float compositeintensity = range * intensity;
			g.GetComponent<MobBase>().Petrify(compositeintensity);
			g.transform.GetComponentInChildren<ParticleSystem>().startSpeed = Mathf.Lerp(5f,10f,intensity);
			if (g.GetComponent<MobBase>().isPetrified){ 
				g.transform.GetComponentInChildren<ParticleSystem>().Stop();
				ScreenShake2D.Shake(0f,0f);
				if (audioSource.isPlaying) audioSource.Stop();
			} 
			else{
				if (!g.transform.GetComponentInChildren<ParticleSystem>().isPlaying){
					g.transform.GetComponentInChildren<ParticleSystem>().Play();
				}
				ScreenShake2D.SetShake(Mathf.Clamp(intensity-.5f, 0f, 1f) * .1f);
				if (!audioSource.isPlaying) audioSource.Play();
				audioSource.pitch = Mathf.Lerp(.25f, 2f, compositeintensity);
				audioSource.volume = Mathf.Lerp(0f, .75f, compositeintensity);
			}
		}if (g.tag == "Enemy" && !beamOn){
			//g.GetComponent<MobBase>().Recover();
			g.transform.GetComponentInChildren<ParticleSystem>().Stop();
			if (audioSource.isPlaying) audioSource.Stop();
		
		}
	}

	void OnLightExit(Light2D l, GameObject g){
		if (g == null) return;
		if (g.tag == "Enemy"){
			if (audioSource.isPlaying) audioSource.Stop();
			g.GetComponent<MobBase>().Recover();
			g.transform.GetComponentInChildren<ParticleSystem>().Stop();
			ScreenShake2D.SetShake(0f);
		}
	}
}
