package com.model;

public class voters 
{
	
	private int vId;
	private String vName;
	private String vEmail;
	private String vDob;
	private String vGender;
	private long  vPhoneno;
	private String vAddress;
	private String vPassword;
	
	
	
	
	public voters() {
		
	}




	public voters(int vId) {
		super();
		this.vId = vId;
	}




	public voters(String vEmail, String vPassword) {
		super();
		this.vEmail = vEmail;
		this.vPassword = vPassword;
	}




	public voters(String vName, String vEmail, String vDob, String vGender, long vPhoneno, String vAddress,
			String vPassword) {
		super();
		this.vName = vName;
		this.vEmail = vEmail;
		this.vDob = vDob;
		this.vGender = vGender;
		this.vPhoneno = vPhoneno;
		this.vAddress = vAddress;
		this.vPassword = vPassword;
	}




	public voters(int vId, String vName, String vEmail, String vDob, String vGender, long vPhoneno, String vAddress,
			String vPassword) {
		super();
		this.vId = vId;
		this.vName = vName;
		this.vEmail = vEmail;
		this.vDob = vDob;
		this.vGender = vGender;
		this.vPhoneno = vPhoneno;
		this.vAddress = vAddress;
		this.vPassword = vPassword;
	}




	public int getvId() {
		return vId;
	}




	public void setvId(int vId) {
		this.vId = vId;
	}




	public String getvName() {
		return vName;
	}




	public void setvName(String vName) {
		this.vName = vName;
	}




	public String getvEmail() {
		return vEmail;
	}




	public void setvEmail(String vEmail) {
		this.vEmail = vEmail;
	}




	public String getvDob() {
		return vDob;
	}




	public void setvDob(String vDob) {
		this.vDob = vDob;
	}




	public String getvGender() {
		return vGender;
	}




	public void setvGender(String vGender) {
		this.vGender = vGender;
	}




	public long getvPhoneno() {
		return vPhoneno;
	}




	public void setvPhoneno(long vPhoneno) {
		this.vPhoneno = vPhoneno;
	}




	public String getvAddress() {
		return vAddress;
	}




	public void setvAddress(String vAddress) {
		this.vAddress = vAddress;
	}




	public String getvPassword() {
		return vPassword;
	}




	public void setvPassword(String vPassword) {
		this.vPassword = vPassword;
	}




	@Override
	public String toString() {
		return "voters [vId=" + vId + ", vName=" + vName + ", vEmail=" + vEmail + ", vDob=" + vDob + ", vGender="
				+ vGender + ", vPhoneno=" + vPhoneno + ", vAddress=" + vAddress + ", vPassword=" + vPassword + "]";
	}

	
	



}
