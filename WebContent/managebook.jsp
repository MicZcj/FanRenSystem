<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	欢迎您:
	<s:property value="#session.existBoss.bossName" />
	<br>
	<a href="book_findAllBook.action">查询所有图书</a>
	<br>
	<a href="book_addBookUI.action">添加图书</a>
	<br>
	<a href="book_findAllType.action">查询所有图书类别</a>
	<br>
	<a href="book_addTypeUI.action">添加图书类别</a>
	<br>
</body>
</html>