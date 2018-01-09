package com.ssh.shop.po;

import java.util.HashSet;
import java.util.Set;

public class Shoppingcart implements java.io.Serializable {
	private int shoppingCartID; // 购物车记录编号
	private Set<ShoppingCartDetail> shoppingCartDetail = new HashSet<ShoppingCartDetail>(0);

	private User user = new User();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getShoppingCartID() {
		return shoppingCartID;
	}

	public void setShoppingCartID(int shoppingCartID) {
		this.shoppingCartID = shoppingCartID;
	}

	public Set<ShoppingCartDetail> getShoppingCartDetail() {
		return shoppingCartDetail;
	}

	public void setShoppingCartDetail(Set<ShoppingCartDetail> shoppingCartDetail) {
		this.shoppingCartDetail = shoppingCartDetail;
	}

}
