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
	<a href="managebook.jsp">图书管理</a>
	<br>
	<a href="manageorder.jsp">账单管理</a>
	<br>
	<a href="notify_load.action">通知管理</a>
	<br>
</body>
</html>