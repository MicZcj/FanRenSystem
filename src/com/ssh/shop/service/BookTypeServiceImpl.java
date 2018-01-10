package com.ssh.shop.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.ssh.shop.dao.BookDao;
import com.ssh.shop.dao.BookTypeDao;
import com.ssh.shop.po.BookVariety;
import com.ssh.shop.po.PageBean;

@Transactional
public class BookTypeServiceImpl implements BookTypeService {
	// sevice中注入dao
	private BookTypeDao bookTypeDao;

	public void setBookTypeDao(BookTypeDao bookTypeDao) {
		this.bookTypeDao = bookTypeDao;
	}

	public BookTypeDao getBookTypeDao() {
		return bookTypeDao;
	}

	@Override
	public PageBean<BookVariety> findTypeByPage(Integer currPage) {
		PageBean<BookVariety> pageBean = new PageBean<BookVariety>();
		pageBean.setCurrPage(currPage);
		Integer pageSize = 1;
		pageBean.setPageSize(pageSize);
		Integer totalCount = bookTypeDao.findTypeCount();
		pageBean.setTotalCount(totalCount);
		double tc = totalCount;
		Double num = Math.ceil(tc / pageSize);
		pageBean.setTotalPage(num.intValue());
		int begin = (currPage - 1) * pageSize;
		List<BookVariety> list = bookTypeDao.findTypeByPage(begin, pageSize);
		pageBean.setList(list);
		return pageBean;
	}

	@Override
	public void addType(BookVariety bookVariety) {
		bookTypeDao.addType(bookVariety);

	}

	@Override
	public void typedelete(int varietyID) {
		bookTypeDao.typedelete(varietyID);
		
	}

}
