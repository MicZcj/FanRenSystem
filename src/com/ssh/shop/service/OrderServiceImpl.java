package com.ssh.shop.service;

import java.util.Date;
import java.util.List;

import com.ssh.shop.dao.NotificationDao;
import com.ssh.shop.dao.OrderDao;
import com.ssh.shop.po.OrderDetail;

public class OrderServiceImpl implements OrderService {
	// sevice中注入dao
	private OrderDao orderDao;

	public OrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public List<OrderDetail> find(Date date1, Date date2) {

		return orderDao.find(date1, date2);
	}

}
