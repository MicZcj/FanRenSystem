package com.ssh.shop.po;

import java.util.Date;

public class Notification implements java.io.Serializable {
	private int noticeID; // 通知ID（数据库自增）
	private String notice; // 通知内容
	private Date noticeDate; // 通知发布时间

	public int getNoticeID() {
		return noticeID;
	}

	public void setNoticeID(int noticeID) {
		this.noticeID = noticeID;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

}
