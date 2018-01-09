package com.ssh.shop.po;

import java.util.Date;

public class Boss implements java.io.Serializable {
	private int  bossID; //老板编号 
	private String bossName; //老板姓名
	private String bossPassword; //老板密码
	@Override
	public String toString() {
		return "Boss [bossID=" + bossID + ", bossName=" + bossName + ", bossPassword=" + bossPassword + "]";
	}
	public int  getBossID() {
		return bossID;
	}
	public void setBossID(int  bossID) {
		this.bossID = bossID;
	}
	public String getBossName() {
		return bossName;
	}
	public void setBossName(String bossName) {
		this.bossName = bossName;
	}
	public String getBossPassword() {
		return bossPassword;
	}
	public void setBossPassword(String bossPassword) {
		this.bossPassword = bossPassword;
	}

}
