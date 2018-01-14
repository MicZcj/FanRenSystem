<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
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
<sx:head />
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
			<li class="active">&nbsp;通知管理</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->

	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
	<div class="container">
		<h1>通知管理</h1>
		<br>
			<a href="notify_addUI.action"><button type="button" class="btn btn-primary"
				onclick="this.form.submit();">添加通知</button></a>
			<br>
		
		<h1>通知列表</h1>
		<br>
		<table class="table table-striped" border="1">
			<tr>
				<th style='text-align: center;'>编号</th>
				<th style='text-align: center;'>发布日期</th>
				<th style='text-align: center;'>通知内容</th>
				<th style='text-align: center;'>操作</th>
			</tr>
			<s:iterator value="list3" var="n" status="status">
				<tr>
					<td align="center"><s:property value="#n.noticeID" /></td>
					<td align="center"><s:property value="#n.noticeDate" /></td>
					<td align="center"><s:property value="#n.notice" /></td>
					<td align="center"><a
						href="notify_delete.action?noticeID=<s:property value="#n.noticeID" />"><button
								type="button" class="btn btn-danger">删除</button></a></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	</section>

	<%@ include file="footer.jsp"%>
</body>
</html>