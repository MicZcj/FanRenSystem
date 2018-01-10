package com.ssh.shop.service;

import java.util.List;

import com.ssh.shop.po.Notification;

public interface NotificationService {

	List<Notification> load();
	

	void save(Notification notification);


	void delete(int noticeID);
}
