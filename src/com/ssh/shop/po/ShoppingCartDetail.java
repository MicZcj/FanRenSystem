package com.ssh.shop.po;

public class ShoppingCartDetail implements java.io.Serializable {
	private int sCdetailID; // 购物车清单明细ID（数据库自增）
	private Shoppingcart shoppingcart; // 购物车
	private Book book; // 图书详情

	public int getsCdetailID() {
		return sCdetailID;
	}

	public void setsCdetailID(int sCdetailID) {
		this.sCdetailID = sCdetailID;
	}

	public Shoppingcart getShoppingcart() {
		return shoppingcart;
	}

	public void setShoppingcart(Shoppingcart shoppingcart) {
		this.shoppingcart = shoppingcart;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

}
