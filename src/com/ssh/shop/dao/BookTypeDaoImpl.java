package com.ssh.shop.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.ssh.shop.po.Book;
import com.ssh.shop.po.BookVariety;

public class BookTypeDaoImpl extends HibernateDaoSupport implements BookTypeDao {

	@Override
	public List<BookVariety> findTypeByPage(int begin, Integer pageSize) {
		DetachedCriteria criteria = DetachedCriteria.forClass(BookVariety.class);
		List<BookVariety> list = (List<BookVariety>) this.getHibernateTemplate().findByCriteria(criteria, begin,
				pageSize);
		return list;
	}

	@Override
	public Integer findTypeCount() {
		String hql = "select count(*) from BookVariety";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
		if (list.size() > 0) {
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public void addType(BookVariety bookVariety) {
		this.getHibernateTemplate().save(bookVariety);
	}

	@Override
	public void typedelete(int varietyID) {
		String hql = "from BookVariety as bookVariety where bookVariety.varietyID='" + varietyID + "'";
		List<BookVariety> list = (List<BookVariety>) this.getHibernateTemplate().find(hql);
		for (int i = 0; i < list.size(); i++) {
			this.getHibernateTemplate().delete(list.get(i));
		}
	}

}
