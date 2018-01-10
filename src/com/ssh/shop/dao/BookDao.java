package com.ssh.shop.dao;

import java.util.List;

import com.ssh.shop.po.Book;
import com.ssh.shop.po.BookVariety;

public interface BookDao {

	Integer findCount();

	List<Book> findByPage(int begin, Integer pageSize);

	void addBook(Book book);

	List<BookVariety> findAll();

	List<String> delete(Book book);

	Book findById(Integer bid);

	boolean update(Book book);

	void deleteData(int bookID);

}
