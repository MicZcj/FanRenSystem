package com.ssh.shop.po;

import java.util.HashSet;
import java.util.Set;

public class BookVariety {
	private int varietyID; // 类别ID
	private String varietyName; // 类别名称
	private Set<Book> books = new HashSet<Book>(0); // 图书

	public int getVarietyID() {
		return varietyID;
	}

	public void setVarietyID(int varietyID) {
		this.varietyID = varietyID;
	}

	public String getVarietyName() {
		return varietyName;
	}

	public void setVarietyName(String varietyName) {
		this.varietyName = varietyName;
	}

	public Set<Book> getBooks() {
		return books;
	}

	public void setBooks(Set<Book> books) {
		this.books = books;
	}

}
