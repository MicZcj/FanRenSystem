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
	<a href="managebook.jsp">返回</a>
	<br>
	<table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<td align="center">编号</td>
				<td align="center">类名</td>
				<td align="center">删除</td>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="b" status="status">
				<tr>
					<td align="center"><s:property value="#b.varietyID" /></td>
					<td align="center"><s:property value="#b.varietyName" /></td>
					<td align="center"><a
						href="booktype_typedelete.action?varietyID=<s:property value="#b.varietyID" />"><button
								style="color: red">删除</button></a></td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
	<br />
	<table table border="0" cellspacing="0" cellpadding="0" width="900px">
		<tr>
			<td align="right"><span>第<s:property value="currPage" />/<s:property
						value="totalPage" />页
			</span>&nbsp;&nbsp; <span>总记录数：<s:property value="totalCount" />&nbsp;&nbsp;每页显示：<s:property
						value="pageSize" />条
			</span>&nbsp;&nbsp; <span> <s:if test="currPage != 1">
						<a href="booktype_findAllType.action?currPage=1">[首页]</a>&nbsp;&nbsp; 
			<a
							href="booktype_findAllType.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
			</s:if> <s:if test="currPage != totalPage">
						<a
							href="booktype_findAllType.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp; 
			<a
							href="booktype_findAllType.action?currPage=<s:property value="totalPage"/>">[尾页]</a>&nbsp;&nbsp;
			</s:if>
			</span></td>
		</tr>
	</table>
</body>
</html>