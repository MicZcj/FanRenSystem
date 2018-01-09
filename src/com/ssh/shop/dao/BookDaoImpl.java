package com.ssh.shop.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.ssh.shop.po.Book;

public class BookDaoImpl extends HibernateDaoSupport implements BookDao {

	@Override
	public Integer findCount() {
		String hql = "select count(*) from Book";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Book> findByPage(int begin, Integer pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Book.class);
		List<Book> list = (List<Book>) this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

//	@Override
//	public void addBook(Book book) {
//		this.getHibernateTemplate().save(book);
//	}
//
//	@Override
//	public List<String> delete(Book book) {
//		String hql = "from Book as book where book.bid='" + book.getBid() + "'";
//		List<Book> list = (List<Book>) this.getHibernateTemplate().find(hql);
//		List<String> paths = new ArrayList<String>();
//		paths.add(list.get(0).getBpath());
//		paths.add(list.get(0).getBcover());
//		return paths;
//	}
//
//	@Override
//	public void deleteDate(Book book) {
//		this.getHibernateTemplate().delete(book);
//	}
//
//	@Override
//	public Book findById(Integer bid) {
//		return this.getHibernateTemplate().get(Book.class, bid);
//	}
//
//	@Override
//	public boolean update(Book book) {
//		try {
//			this.getHibernateTemplate().update(book);
//			return true;
//		} catch (Exception e) {
//			e.printStackTrace();
//			return false;
//		}
//
//	}

}
