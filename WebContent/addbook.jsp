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
	<s:form action="book_addBook.action" enctype="multipart/form-data"
		method="post" namespace="/" theme="simple">
		<table>
			<tr>
				<td>isbn<input type="text" name="isbn"></td>
			</tr>
			<tr>
				<td>书名<input type="text" name="bookName"></td>
			</tr>
			<tr>
				<td>作者<input type="text" name="authorName"></td>
			</tr>
			<tr>
				<td>价格<input type="text" name="price"></td>
			</tr>
			<tr>
				<td>出版社<input type="text" name="publisher"></td>
			</tr>
			<!-- <tr>
				<td align="center">点赞数<input type="text" name="likeNum"></td>
			</tr> -->
			<tr>
				<td>描述<input type="text" name="description"></td>
			</tr>
			<tr>
				<td>路径<input type="file" name="file" /></td>
			</tr>
			<tr>
				<td>封面<input type="file" name="file" /></td>
			</tr>
			<tr>
				<td>推荐<s:radio name="recommendFlag"
						list="#{'true':'是','false':'否'}" value="false" />
			</tr>
			<!-- <tr>
				<td align="center">推荐位<input type="text" name="recommendFlag"></td>
			</tr> -->
			<tr>
				<td>图书类别<s:select name="bookVariety.varietyID" list="list1"
						listKey="varietyID" listValue="varietyName"
						headerValue="---请选择---" /></td>
			</tr>
		</table>
		<s:submit value="提交" />
	</s:form>

</body>
</html>