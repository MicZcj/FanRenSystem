package com.ssh.shop.service;

import java.util.List;

import com.ssh.shop.dao.*;
import com.ssh.shop.po.Notification;

public class NotificationServiceImpl implements NotificationService {
	// sevice中注入dao
	private NotificationDao notificationDao;

	public void setNotificationDao(NotificationDao notificationDao) {
		this.notificationDao = notificationDao;
	}

	@Override
	public List<Notification> load() {
		return notificationDao.load();
	}

	@Override
	public void save(Notification notification) {
		notificationDao.save(notification);
	}

	@Override
	public void delete(int noticeID) {
		notificationDao.delete(noticeID);

	}

}
