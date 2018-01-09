package com.ssh.shop.po;

import java.util.HashSet;
import java.util.Set;

public class User implements java.io.Serializable {
	private int userID; // 用户编号
	private String userName; // 用户姓名
	private String userPassword; // 用户密码
	private String sex; // 性别
	private String phone; // 手机
	private String email; // 邮箱
	private float balance; // 余额
	private String payPassword; // 用户支付密码
	private Set<Book> books = new HashSet<Book>(0); // 拥有的图书集合
	private Shoppingcart shoppingcart; // 购物车
	private Set<Order> orders = new HashSet<Order>(0); // 拥有的订单集合
	private Set<CommentRecord> commentRecord = new HashSet<CommentRecord>(0); // 拥有的评论集合
	private Set<LikeRecord> likeRecord = new HashSet<LikeRecord>(0); // 拥有的点赞集合

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public float getBalance() {
		return balance;
	}

	public void setBalance(float balance) {
		this.balance = balance;
	}

	public String getPayPassword() {
		return payPassword;
	}

	public void setPayPassword(String payPassword) {
		this.payPassword = payPassword;
	}

	public Set<Book> getBooks() {
		return books;
	}

	public void setBooks(Set<Book> books) {
		this.books = books;
	}

	public Shoppingcart getShoppingcart() {
		return shoppingcart;
	}

	public void setShoppingcart(Shoppingcart shoppingcart) {
		this.shoppingcart = shoppingcart;
	}

	public Set<Order> getOrders() {
		return orders;
	}

	public void setOrders(Set<Order> orders) {
		this.orders = orders;
	}

	public Set<CommentRecord> getCommentRecord() {
		return commentRecord;
	}

	public void setCommentRecord(Set<CommentRecord> commentRecord) {
		this.commentRecord = commentRecord;
	}

	public Set<LikeRecord> getLikeRecord() {
		return likeRecord;
	}

	public void setLikeRecord(Set<LikeRecord> likeRecord) {
		this.likeRecord = likeRecord;
	}

}
