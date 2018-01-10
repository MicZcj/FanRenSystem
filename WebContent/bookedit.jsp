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
	<s:form action="book_save.action" method="post" namespace="/"
		theme="simple">
		<table>
			<s:hidden name="bookID" value="%{model.bookID}" />
			<s:hidden name="bookPath" value="%{model.bookPath}" />
			<s:hidden name="cover" value="%{model.cover}" />
			<s:hidden name="publishDate" value="%{model.publishDate}" />
			<s:hidden name="likeNum" value="%{model.likeNum}" />
			<tr>
				<td>封面<img alt="封面" width="80" height="100"
					src="<s:property value="%{model.cover}" />"></td>
			</tr>
			<tr>
				<td>isbn<s:textfield name="isbn" value="%{model.isbn}" /></td>
			</tr>
			<tr>
				<td>书名<s:textfield name="bookName" value="%{model.bookName}" /></td>
			</tr>
			<tr>
				<td>作者<s:textfield name="authorName"
						value="%{model.authorName}" /></td>
			</tr>
			<tr>
				<td>出版社<s:textfield name="publisher" value="%{model.publisher}" /></td>
			</tr>

			<tr>
				<td>描述<s:textfield name="description"
						value="%{model.description}" /></td>
			</tr>
			<tr>
				<td>图书类别<s:select name="bookVariety.varietyID" list="list2"
						listKey="varietyID" listValue="varietyName"
						headerValue="---请选择---" /></td>
			</tr>
			<tr>
				<td>推荐位<s:radio name="recommendFlag"
						list="#{'true':'是','false':'否'}" value="%{model.recommendFlag}" /></td>
			</tr>
		</table>
		<s:submit value="提交" />
	</s:form>
</body>
</html>