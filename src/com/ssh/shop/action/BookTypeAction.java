package com.ssh.shop.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.shop.po.Book;
import com.ssh.shop.po.BookVariety;
import com.ssh.shop.po.PageBean;
import com.ssh.shop.service.BookService;
import com.ssh.shop.service.BookTypeService;

public class BookTypeAction extends ActionSupport implements ModelDriven<BookVariety> {
	private BookVariety bookVariety = new BookVariety();
	private BookTypeService bookTypeService;

	public BookTypeService getBookTypeService() {
		return bookTypeService;
	}

	public void setBookTypeService(BookTypeService bookTypeService) {
		this.bookTypeService = bookTypeService;
	}

	@Override
	public BookVariety getModel() {
		// TODO Auto-generated method stub
		return bookVariety;
	}

	// 分页查询
	private Integer currPage = 1;

	public void setCurrPage(Integer currPage) {
		this.currPage = currPage;
	}

	// 显示所有图书类别
	public String findAllType() {
		PageBean<BookVariety> pageBean = bookTypeService.findTypeByPage(currPage);
		ActionContext.getContext().getValueStack().push(pageBean);
		return "findAllType";
	}

	// 跳转到添加图书类别页面
	public String addTypeUI() {
		return "addTypeUI";
	}

	// 添加图书类别方法
	public String addType() {
		bookTypeService.addType(bookVariety);
		return "addType";
	}

	// 删除图书类别
	public String typedelete() {
		bookTypeService.typedelete(bookVariety.getVarietyID());
		return "typedelete";
	}
}
