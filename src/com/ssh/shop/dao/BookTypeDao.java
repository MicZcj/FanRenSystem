package com.ssh.shop.dao;

import java.util.List;

import com.ssh.shop.po.BookVariety;

public interface BookTypeDao {

	Integer findTypeCount();

	List<BookVariety> findTypeByPage(int begin, Integer pageSize);

	void addType(BookVariety bookVariety);

	void typedelete(int varietyID);

}
