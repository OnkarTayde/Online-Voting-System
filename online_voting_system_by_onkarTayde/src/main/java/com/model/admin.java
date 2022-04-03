package com.model;

public class admin 
{

	String aName;
	String aPassword;
	public admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public admin(String aName, String aPassword) {
		super();
		this.aName = aName;
		this.aPassword = aPassword;
	}
	public String getaName() {
		return aName;
	}
	public void setaName(String aName) {
		this.aName = aName;
	}
	public String getaPassword() {
		return aPassword;
	}
	public void setaPassword(String aPassword) {
		this.aPassword = aPassword;
	}
	@Override
	public String toString() {
		return "admin [aName=" + aName + ", aPassword=" + aPassword + "]";
	}
	
	
	
}
