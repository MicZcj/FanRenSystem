package com.ssh.shop.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ssh.shop.po.Book;
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

//	@Override
//	public List<String> delete(Book book) {
//		List<String> paths = bookDao.delete(book);
//		return paths;
//
//	}
//
//	@Override
//	public void deleteDate(Book book) {
//		bookDao.deleteDate(book);
//
//	}
//
//	@Override
//	public Book findById(Integer bid) {
//		Book book = bookDao.findById(bid);
//		return book;
//	}
//
//	@Override
//	public boolean update(Book book) {
//		return bookDao.update(book);
//	}

}
