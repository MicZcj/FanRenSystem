package com.ssh.shop.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.ssh.shop.po.Book;
import com.ssh.shop.po.BookVariety;

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

	@Override
	public void addBook(Book book) {
		this.getHibernateTemplate().save(book);
	}

	@Override
	public List<BookVariety> findAll() {
		return (List<BookVariety>) this.getHibernateTemplate().find("from BookVariety");
	}

	@Override
	public List<String> delete(Book book) {
		String hql = "from Book as book where book.bookID='" + book.getBookID() + "'";
		List<Book> list = (List<Book>) this.getHibernateTemplate().find(hql);
		List<String> paths = new ArrayList<String>();
		paths.add("upload/" + list.get(0).getBookPath());
		paths.add(list.get(0).getCover());
		return paths;
	}

	@Override
	public void deleteData(int bookID) {
		String hql = "from Book as book where book.bookID='" + bookID + "'";
		List<Book> list = (List<Book>) this.getHibernateTemplate().find(hql);
		for (int i = 0; i < list.size(); i++) {
			this.getHibernateTemplate().delete(list.get(i));
		}

	}

	@Override
	public Book findById(Integer bid) {
		return this.getHibernateTemplate().get(Book.class, bid);
	}

	@Override
	public boolean update(Book book) {
		try {
			this.getHibernateTemplate().update(book);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public List<Book> findByPage(int begin, Integer pageSize, String[] keywords) {
		DetachedCriteria criteria = DetachedCriteria.forClass(Book.class);
		for (int i = 0; i < keywords.length; i++) {
			criteria.add(Restrictions.like("isbn", keywords[i], MatchMode.ANYWHERE));
			criteria.add(Restrictions.like("bookName", keywords[i], MatchMode.ANYWHERE));
			criteria.add(Restrictions.like("authorName", keywords[i], MatchMode.ANYWHERE));
			criteria.add(Restrictions.like("publisher", keywords[i], MatchMode.ANYWHERE));
		}
		List<Book> list = (List<Book>) this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
		return list;
	}

	@Override
	public Integer findCount(String[] keywords) {
		String hql = "select count(*) from Book where ";
		for (int i = 0; i < keywords.length; i++) {
			hql = hql + "isbn like " + "'%" + keywords[i] + "%' or ";
			hql = hql + "bookName like " + "'%" + keywords[i] + "%' or ";
			hql = hql + "authorName like " + "'%" + keywords[i] + "%' or ";
			hql = hql + "publisher like " + "'%" + keywords[i] + "%' ";
			if (i != keywords.length - 1) {
				hql = hql + " or ";
			}
		}
		System.out.println(hql);
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

}
