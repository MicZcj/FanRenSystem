package com.ssh.shop.service;

import com.ssh.shop.po.BookVariety;
import com.ssh.shop.po.PageBean;

public interface BookTypeService {

	PageBean<BookVariety> findTypeByPage(Integer currPage);

	void addType(BookVariety bookVariety);

	void typedelete(int i);

}
