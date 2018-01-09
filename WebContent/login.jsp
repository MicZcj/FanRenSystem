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
	<s:form action="boss_login.action" method="post" namespace="/">
		用户名：<input type="text" name="bossName">
		<br>
		密码：<input type="password" name="bossPassword">
		<s:submit value="提交" />
	</s:form>
</body>
</html>