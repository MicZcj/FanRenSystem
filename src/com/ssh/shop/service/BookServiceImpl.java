package com.ssh.shop.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ssh.shop.po.Book;
import com.ssh.shop.po.BookVariety;
import com.ssh.shop.dao.BookDao;
import com.ssh.shop.po.PageBean;

@Transactional
public class BookServiceImpl implements BookService {
	// sevice中注入dao
	private BookDao bookDao;

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

	@Override
	public PageBean<Book> findByPage(Integer currPage) {
		PageBean<Book> pageBean = new PageBean<Book>();
		pageBean.setCurrPage(currPage);
		Integer pageSize = 1;
		pageBean.setPageSize(pageSize);
		Integer totalCount = bookDao.findCount();
		pageBean.setTotalCount(totalCount);
		double tc = totalCount;
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin = (currPage - 1) * pageSize;
		List<Book> list = bookDao.findByPage(begin, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public void addBook(Book book) {
		bookDao.addBook(book);
	}
	//查找所有图书类别
	@Override
	public List<BookVariety> findAll() {
		return bookDao.findAll();
	}

	@Override
	public List<String> delete(Book book) {
		List<String> paths = bookDao.delete(book);
		return paths;

	}

	@Override
	public void deleteData(int bookID) {
		bookDao.deleteData(bookID);

	}

	@Override
	public Book findById(Integer bid) {
		Book book = bookDao.findById(bid);
		return book;
	}

	@Override
	public boolean update(Book book) {
		return bookDao.update(book);
	}

	@Override
	public PageBean<BookVariety> findTypeByPage(Integer currPage) {
		PageBean<BookVariety> pageBean = new PageBean<BookVariety>();
		pageBean.setCurrPage(currPage);
		Integer pageSize = 1;
		pageBean.setPageSize(pageSize);
		Integer totalCount = bookDao.findTypeCount();
		pageBean.setTotalCount(totalCount);
		double tc = totalCount;
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin = (currPage - 1) * pageSize;
		List<BookVariety> list = bookDao.findTypeByPage(begin, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

}
