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
			<li class="active">&nbsp;图书类别管理</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->

	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
	<div class="container">
		<h1>图书类别一览</h1>
		<br>
		<table class="table table-striped" border="1">
			<tr>
				<th style='text-align: center;'>编号</th>
				<th style='text-align: center;'>类名</th>
				<th style='text-align: center;'>操作</th>
			</tr>
			<s:iterator value="list" var="b" status="status">
				<tr>
					<td align="center"><s:property value="#b.varietyID" /></td>
					<td align="center"><s:property value="#b.varietyName" /></td>
					<td align="center"><a
						href="booktype_typedelete.action?varietyID=<s:property value="#b.varietyID" />"><button
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
		<div align="center">
			<a href="managebook.jsp"><button type="button"
					class="btn btn-primary">返回</button></a>
		</div>
	</div>
	</section>

	<%@ include file="footer.jsp"%>
</body>
</html>