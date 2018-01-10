package com.ssh.shop.dao;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.shop.po.BookVariety;
import com.ssh.shop.po.Notification;

@Transactional
public class NotificationDaoImpl extends HibernateDaoSupport implements NotificationDao {

	@Override
	public List<Notification> load() {
		DetachedCriteria criteria = DetachedCriteria.forClass(Notification.class);
		List<Notification> list = (List<Notification>) this.getHibernateTemplate().findByCriteria(criteria);
		return list;
	}

	@Override
	public void save(Notification notification) {
		this.getHibernateTemplate().save(notification);

	}

	@Override
	public void delete(int noticeID) {
		String hql = "from Notification as notification where notification.noticeID='" + noticeID + "'";
		List<Notification> list = (List<Notification>) this.getHibernateTemplate().find(hql);
		for (int i = 0; i < list.size(); i++) {
			this.getHibernateTemplate().delete(list.get(i));
		}
	}

}
