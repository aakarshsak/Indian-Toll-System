package com.example;

public class Admin {
	
	String userid,pass,Name;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	int toll;
	boolean status=false;
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public int getToll() {
		return toll;
	}
	public void setToll(int toll) {
		this.toll = toll;
	}
	

}
