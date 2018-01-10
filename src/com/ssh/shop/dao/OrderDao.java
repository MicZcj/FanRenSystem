package com.ssh.shop.dao;

import java.util.Date;
import java.util.List;

import com.ssh.shop.po.OrderDetail;

public interface OrderDao {

	List<OrderDetail> find(Date date1, Date date2);

}
