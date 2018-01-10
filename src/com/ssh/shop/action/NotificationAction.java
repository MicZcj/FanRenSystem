package com.ssh.shop.action;

import java.util.Date;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.shop.po.Boss;
import com.ssh.shop.po.Notification;
import com.ssh.shop.service.NotificationService;

public class NotificationAction extends ActionSupport implements ModelDriven<Notification> {
	private Notification notification = new Notification();
	private NotificationService notificationService;

	public void setNotificationService(NotificationService notificationService) {
		this.notificationService = notificationService;
	}

	@Override
	public Notification getModel() {
		Date date = new Date();
		this.notification.setNoticeDate(date);
		return notification;
	}

	public String load() {
		List<Notification> list3 = notificationService.load();
		ActionContext.getContext().getValueStack().set("list3", list3);
		return "load";
	}

	public String addUI() {
		return "addUI";
	}

	public String save() {
		notificationService.save(notification);
		return "save";
	}

	public String delete() {
		notificationService.delete(notification.getNoticeID());
		return "delete";
	}
}
