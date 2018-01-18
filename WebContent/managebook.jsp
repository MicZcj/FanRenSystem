<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 7 ]><html class="ie ie7 lte9 lte8 lte7" lang="en-US"><![endif]-->
<!--[if IE 8]><html class="ie ie8 lte9 lte8" lang="en-US">	<![endif]-->
<!--[if IE 9]><html class="ie ie9 lte9" lang="en-US"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="noIE" lang="en-US">
<!--<![endif]-->
<head>
<!-- meta -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<title>凡人书屋后台图书管理</title>

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/section.css">
<link rel="stylesheet" href="assets/css/kit.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->
</head>
${alert}
<body>

	<jsp:include page="header.jsp">
		<jsp:param name="type4" value="class=\"active\"" />
	</jsp:include>


	<!-- Section Background -->
	<section class="section-background">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="index.jsp">主页</a></li>
			<li class="active">&nbsp;图书管理</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->

	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
	<div class="container">
		<h1>电子书检索</h1>
		<br>
		<form action="book_fuzzyQuery.action" method="post">
			<table border="0">
				<tr>
					<%-- <td><select name="select" class="form-control">
							<option value="0">请选择</option>
							<option value="1">名称</option>
							<option value="2">描述</option>
							<option value="3">发布者</option>
							<option value="4">标签</option>
					</select></td> --%>
					<td width="500px"><input name="keyword" class="form-control"
						type="text" placeholder="关键词模糊查询：ISBN、书名、作者、出版社"></td>
					<td><button type="submit" class="btn btn-primary">&nbsp;&nbsp;搜&nbsp;&nbsp;索&nbsp;&nbsp;</button></td>
				</tr>
			</table>
		</form>
		<br> <a href="book_findAllBook.action"><button type="button"
				class="btn btn-primary">查询所有图书</button></a> <a
			href="book_addBookUI.action"><button type="button"
				class="btn btn-primary">添加图书</button></a><br> <br> <a
			href="booktype_findAllType.action"><button type="button"
				class="btn btn-primary">查询图书类别</button></a> <a
			href="booktype_addTypeUI.action"><button type="button"
				class="btn btn-primary">添加类别</button></a> <br>
		<h1>电子书列表</h1>
		<br>
		<table class="table table-striped" border="1">
			<tr>
				<!-- <th>编号</th> -->
				<th style='text-align: center;'>封面</th>
				<th style='text-align: center;'>ISBN</th>
				<th style='text-align: center;'>书名</th>
				<th style='text-align: center;'>作者</th>
				<th style='text-align: center;'>价格</th>
				<th style='text-align: center;'>出版社</th>
				<!-- <th>标签</th> -->
				<th style='text-align: center;'>点赞</th>
				<th style='text-align: center;'>销量</th>
				<!-- <th>描述</th> -->
				<th style='text-align: center;'>上架时间</th>
				<th style='text-align: center;'>在线预览</th>
				<!-- <th>推荐位</th> -->

				<th style='text-align: center;'>详情</th>
				<th style='text-align: center;'>删除</th>
			</tr>
			<s:iterator value="list" var="b" status="status">
				<tr>
					<%-- 	<td align="center"><s:property value="#b.bookID" /></td> --%>
					<td align="center"><img alt="封面" width="80" height="100"
						src="<s:property value="#b.cover" />"></td>
					<td align="center"><s:property value="#b.isbn" /></td>
					<td align="center"><s:property value="#b.bookName" /></td>
					<td align="center"><s:property value="#b.authorName" /></td>
					<td align="center"><s:property value="#b.price" /></td>
					<td align="center"><s:property value="#b.publisher" /></td>
					<%-- <td align="center"><s:property
							value="#b.bookVariety.varietyName" /></td> --%>
					<td align="center"><s:property value="#b.likeNum" /></td>
					<td align="center"><s:property value="#b.sellNum" /></td>
					<%-- 	<td align="center"><s:property value="#b.description" /></td> --%>
					<td align="center"><s:date name="#b.publishDate"
							format="yyyy-MM-dd" /></td>
					<td align="center"><a
						href="book_downloadBook.action?fileName=<s:property
								value="#b.bookPath" />">预览<!-- <input
							type="hidden" name="fileName" value="#b.bookPath"> --> <%-- <s:hidden
								name="fileName" value="#b.bookPath" />  --%> <%-- --%>
					</a></td>
					<%-- 	<td align="center"><s:property value="#b.recommendFlag" /></td> --%>
					<td align="center"><a
						href="book_edit.action?bookID=<s:property value="#b.bookID" />"><button
								type="button" class="btn btn-warning">编辑</button></a></td>
					<td align="center"><a
						href="book_delete.action?bookID=<s:property value="#b.bookID" />"><button
								type="button" class="btn btn-danger">删除</button></a></td>
				</tr>
			</s:iterator>
		</table>
		<table align="center">
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
	</div>
	</section>

	<%@ include file="footer.jsp"%>
</body>
</html>