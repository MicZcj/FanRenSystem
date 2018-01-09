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
	<table cellspacing="0" border="1" class="table1">
		<thead>
			<tr>
				<td align="center">编号</td>
				<td align="center">isbn</td>
				<td align="center">书名</td>
				<td align="center">作者</td>
				<td align="center">价格</td>
				<td align="center">出版社</td>
				<td align="center">标签</td>
				<td align="center">点赞</td>
				<td align="center">描述</td>
				<td align="center">路径</td>
				<td align="center">封面</td>
				<td align="center">推荐位</td>
				<td align="center">上架时间</td>
				<td align="center">编辑</td>
				<td align="center">删除</td>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="list" var="b">
				<tr>
					<td align="center"><s:property value="#b.bookID" /></td>
					<td align="center"><s:property value="#b.isbn" /></td>
					<td align="center"><s:property value="#b.bookName" /></td>
					<td align="center"><s:property value="#b.authorName" /></td>
					<td align="center"><s:property value="#b.price" /></td>
					<td align="center"><s:property value="#b.publisher" /></td>
					<td align="center"><s:property value="#b.bookVariety.varietyName" /></td>
					<td align="center"><s:property value="#b.likeNum" /></td>
					<td align="center"><s:property value="#b.description" /></td>
					<td align="center"><s:property value="#b.bookPath" /></td>
					<td align="center"><s:property value="#b.cover" /></td>
					<td align="center"><s:property value="#b.recommendFlag" /></td>
					<td align="center"><s:date name="#b.publishDate" format="yyyy-MM-dd" /></td>
					
					<td align="center"><a
						href="${pageContext.request.contextPath }/book_edit.action?bid=<s:property value="#b.bid" />"><button
								style="color: red">编辑</button></a></td>
					<td align="center"><a
						href="${pageContext.request.contextPath }/book_delete.action?bid=<s:property value="#b.bid" />"><button
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
						<a href="book_findAllBook.action?currPage=1">[首页]</a>&nbsp;&nbsp; 
			<a
							href="book_findAllBook.action?currPage=<s:property value="currPage-1"/>">[上一页]</a>&nbsp;&nbsp;
			</s:if> <s:if test="currPage != totalPage">
						<a
							href="book_findAllBook.action?currPage=<s:property value="currPage+1"/>">[下一页]</a>&nbsp;&nbsp; 
			<a
							href="book_findAllBook.action?currPage=<s:property value="totalPage"/>">[尾页]</a>&nbsp;&nbsp;
			</s:if>
			</span></td>
		</tr>
	</table>
</body>
</html>