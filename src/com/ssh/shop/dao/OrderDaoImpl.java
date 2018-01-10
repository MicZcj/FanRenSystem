package com.ssh.shop.dao;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.ssh.shop.po.OrderDetail;

public class OrderDaoImpl extends HibernateDaoSupport implements OrderDao {

	@Override
	public List<OrderDetail> find(Date date1, Date date2) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String hql = "from OrderDetail where order.dealDate between '" + sdf.format(date1) + "' and '" + sdf.format(date2) + "'";
		List<OrderDetail> list = (List<OrderDetail>) this.getHibernateTemplate().find(hql);
		System.out.println(list.size());
		return list;
	}

}
