package com.ssh.shop.service;

import java.util.Date;
import java.util.List;

import com.ssh.shop.po.OrderDetail;

public interface OrderService {

	List<OrderDetail> find(Date date1, Date date2);

}
