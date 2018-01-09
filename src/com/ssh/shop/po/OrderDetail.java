package com.ssh.shop.po;

public class OrderDetail implements java.io.Serializable {
	private int orderDetailNum; // 订单明细ID（数据库自增）
	private Order order; // 订单
	private Book book; // 图书详情

	public int getOrderDetailNum() {
		return orderDetailNum;
	}

	public void setOrderDetailNum(int orderDetailNum) {
		this.orderDetailNum = orderDetailNum;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

}
