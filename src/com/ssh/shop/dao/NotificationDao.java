package com.ssh.shop.dao;

import java.util.List;

import com.ssh.shop.po.Notification;

public interface NotificationDao {

	List<Notification> load();

	 void save(Notification notification);

	void delete(int noticeID);

}
