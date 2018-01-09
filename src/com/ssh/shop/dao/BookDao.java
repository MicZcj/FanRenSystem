package com.ssh.shop.dao;

import java.util.List;

import com.ssh.shop.po.Book;

public interface BookDao {

	Integer findCount();

	List<Book> findByPage(int begin, Integer pageSize);

//	void addBook(Book book);
//
//	List<String> delete(Book book);
//
//	void deleteDate(Book book);
//
//	Book findById(Integer bid);
//
//	boolean update(Book book);

}
