package com.ssh.shop.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.shop.po.OrderDetail;
import com.ssh.shop.service.OrderService;
import com.ssh.shop.util.ExportUtil;

public class OrderAction extends ActionSupport implements ModelDriven<OrderDetail> {
	private OrderDetail orderDetail = new OrderDetail();
	private OrderService orderService;

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	@Override
	public OrderDetail getModel() {
		// TODO Auto-generated method stub
		return orderDetail;
	}

	public String find() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String beginDate = request.getParameter("beginDate").substring(0, 10);
		String endDate = request.getParameter("endDate").substring(0, 10);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(beginDate + "  " + endDate);
		Date date1, date2;
		request.setAttribute("beginDate", beginDate);
		request.setAttribute("endDate", endDate);
		try {
			date1 = sdf.parse(beginDate);
			date2 = sdf.parse(endDate);
			System.out.println(date1 + " " + date2);
			List<OrderDetail> list = orderService.find(date1, date2);
			ActionContext.getContext().getValueStack().set("list", list);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "find";
	}

	public String printExcel() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String beginDate = request.getParameter("beginDate1");
		String endDate = request.getParameter("endDate1");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(beginDate + "  " + endDate);
		Date date1, date2;

		ExportUtil Export = new ExportUtil();
		try {
			date1 = sdf.parse(beginDate);
			date2 = sdf.parse(endDate);
			System.out.println(date1 + " " + date2);
			Export.export(orderService, date1, date2);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("导出数据有误");
		}
		return "export";
	}
}
