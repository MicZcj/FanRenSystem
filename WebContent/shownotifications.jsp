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
	<a href="index.jsp">返回</a>
	<br>
	<a href="notify_addUI.action">添加通知</a>
	<br>
	<table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<td align="center">编号</td>
				<td align="center">发布日期</td>
				<td align="center">通知内容</td>
				<td align="center">删除</td>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list3" var="n" status="status">
				<tr>
					<td align="center"><s:property value="#n.noticeID" /></td>
					<td align="center"><s:property value="#n.noticeDate" /></td>
					<td align="center"><s:property value="#n.notice" /></td>
					<td align="center"><a
						href="notify_delete.action?noticeID=<s:property value="#n.noticeID" />"><button
								style="color: red">删除</button></a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br />
</body>
</html>