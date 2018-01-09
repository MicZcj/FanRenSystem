package com.ssh.shop.po;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Order implements java.io.Serializable {
	private int orderID;
	private Set<OrderDetail> orderDetail = new HashSet<OrderDetail>(0);
	private User user; // 下单的用户
	private Date dealDate; // 交易日期
	private float orderTotalPrice; // 订单金额

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public Set<OrderDetail> getOrderDetail() {
		return orderDetail;
	}

	public void setOrderDetail(Set<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getDealDate() {
		return dealDate;
	}

	public void setDealDate(Date dealDate) {
		this.dealDate = dealDate;
	}

	public float getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(float orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

}
