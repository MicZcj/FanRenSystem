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
	<a href="manageorder.jsp">返回</a>
	<br>
	<table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<!-- orderdetail类 -->
				<td align="center">编号</td>
				<!-- order类 -->
				<td align="center">交易日期</td>
				<td align="center">收入金额</td>
				<!-- order类--到user类找 -->
				<td align="center">用户名</td>
				<td align="center">手机号</td>
				<!-- book类 -->
				<td align="center">书名</td>
				<td align="center">isbn号</td>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="o" status="status">
				<tr>
					<td align="center"><s:property value="#o.orderDetailNum" /></td>
					<td align="center"><s:property value="#o.order.dealDate" /></td>
					<td align="center"><s:property
							value="#o.order.orderTotalPrice" /></td>
					<td align="center"><s:property value="#o.order.user.userName" /></td>
					<td align="center"><s:property value="#o.order.user.phone" /></td>
					<td align="center"><s:property value="#o.book.bookName" /></td>
					<td align="center"><s:property value="#o.book.isbn" /></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</body>
</html>