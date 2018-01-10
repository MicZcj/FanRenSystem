package com.ssh.shop.service;

import java.util.List;

import com.ssh.shop.po.Book;
import com.ssh.shop.po.BookVariety;
import com.ssh.shop.po.Boss;
import com.ssh.shop.po.PageBean;

public interface BookService {

	PageBean<Book> findByPage(Integer currPage);

	void addBook(Book book);

	List<BookVariety> findAll();

	List<String> delete(Book book);

	void deleteData(int i);

	Book findById(Integer bid);

	boolean update(Book book);
}
