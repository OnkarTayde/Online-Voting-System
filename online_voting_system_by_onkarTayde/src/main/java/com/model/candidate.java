package com.model;

public class candidate extends voters
{
	int cId;
	String cImg;
	String cName;
	int cAge;
	String cAddress;
	String cParty;
	int vCount;
	public candidate() {
		super();
		
	}
	public candidate(int cId, String cImg, String cName, int cAge, String cAddress, String cParty) {
		super();
		this.cId = cId;
		this.cImg = cImg;
		this.cName = cName;
		this.cAge = cAge;
		this.cAddress = cAddress;
		this.cParty = cParty;
	}
	public candidate(String cImg, String cName, int cAge, String cAddress, String cParty) {
		super();
		this.cImg = cImg;
		this.cName = cName;
		this.cAge = cAge;
		this.cAddress = cAddress;
		this.cParty = cParty;
		
	}
	
	public candidate(int cId, String cImg, String cName, int cAge, String cAddress, String cParty, int vCount) {
		super();
		this.cId = cId;
		this.cImg = cImg;
		this.cName = cName;
		this.cAge = cAge;
		this.cAddress = cAddress;
		this.cParty = cParty;
		this.vCount = vCount;
	}
	public int getcId() {
		return cId;
	}
	public void setcId(int cId) {
		this.cId = cId;
	}
	public String getcImg() {
		return cImg;
	}
	public void setcImg(String cImg) {
		this.cImg = cImg;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public int getcAge() {
		return cAge;
	}
	public void setcAge(int cAge) {
		this.cAge = cAge;
	}
	public String getcAddress() {
		return cAddress;
	}
	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}
	public String getcParty() {
		return cParty;
	}
	public void setcParty(String cParty) {
		this.cParty = cParty;
	}
	public int getvCount() {
		return vCount;
	}
	public void setvCount(int vCount) {
		this.vCount = vCount;
	}
	@Override
	public String toString() {
		return "candidate [cId=" + cId + ", cImg=" + cImg + ", cName=" + cName + ", cAge=" + cAge + ", cAddress="
				+ cAddress + ", cParty=" + cParty + ", vCount=" + vCount + "]";
	}

	

	
}