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
	<s:form action="book_save.action" method="post" namespace="/">
		<table>
			<s:hidden  name="bid" value="%{model.bookID}"/>
			<s:hidden  name="isbn" value="%{model.isbn}"/>
			<s:hidden  name="bname" value="%{model.bookName}"/>
			<s:hidden  name="bauthor" value="%{model.authorName}"/>
			<s:hidden  name="bpublisher" value="%{model.publisher}"/>
			<s:hidden  name="bdesc" value="%{model.description}"/>
			<s:hidden  name="bpath" value="%{model.bookPath}"/>
			<s:hidden  name="bcover" value="%{model.cover}"/>
			<s:hidden  name="bdate" value="%{model.publishDate}"/>
			<s:hidden  name="blike" value="%{model.likeNum}"/>
			<tr>
				<td align="center">价格<s:textfield name="price"
						value="%{model.price}" /></td>
			</tr>
			<tr>
				<td align="center">标签<s:textfield type="text" name="bookVariety.varietyName"
						value="%{model.bookVariety.varietyName}" /></td>
			</tr>
			<tr>
				<td align="center">推荐位<s:textfield type="text"
						name="brecommend" value="%{model.recommendFlag}" /></td>
			</tr>
			<s:submit value="提交" />
		</table>
	</s:form>
</body>
</html>