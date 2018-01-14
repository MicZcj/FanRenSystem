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
<title>凡人书屋管理系统</title>

<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/one-page.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->
</head>

<body>

	<!-- Home -->
	<section class="header" id="header"> <nav
		class="navbar navbar-default">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">

			<a class="navbar-brand" href="index.jsp">凡人书屋后台管理系统</a>
		</div>
		<!-- /.navbar-header -->

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="index.jsp">主页</a></li>
				<li><a href="managebook.jsp">图书管理</a></li>
				<li><a href="manageorder.jsp">账单管理</a></li>
				<li><a href="notify_load.action">通知管理</a></li>
				<c:if test="${fn:length(admin.adminNickname)<=0}">
					<li><a href="center.jsp"><s:property
								value="#session.existBoss.bossName" />:个人中心</a></li>
				</c:if>
				<li><a href="boss_exit.action">退出登录</a></li>
			</ul>
			<!-- /.nav -->
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>
	<div class="container">
		<div class="header-table">
			<div class="header-wrapper">
				<h1 class="header-title">
					<b>凡人书屋后台管理系统</b>
				</h1>
				<p class="header-subtitle">凡人书屋 2018</p>
			</div>
			<!-- /.header-wrapper -->
		</div>
	</div>
	<!-- /.container --> </section>
	<!-- /#header -->



	<!-- Note -->
	<section class="note purple">
	<div class="container section-wrapper text-center">
		<p class="quote">
			<b>凡人书屋</b><br> <b>传承文化 启蒙知识</b> <br>集下载、阅读、管理于一体的电子书阅读网站，拥有海量图书，让您随时随地享受移动阅读的乐趣！<br>
			凡人书屋后台可通过云技术从前台平台获取电子书资源，实现了电子书按本销售的行业愿想，使出版机构得以对内容资源从源头加以把控，从而保证了内容资源的可控性和数据的安全性，更保证了出版机构的利益最大化,一站式解决全民分享电子书资源、销售电子书资源等问题，同时也为渠道商、电商、自媒体提供大量优质的电子书，为渠道创造新的赢利方式和用户价值。
		</p>
		<!-- /.quote -->
		<div class="quoter">Java EE SSH框架搭建</div>
	</div>
	<!-- /.container --> </section>
	<!-- /.note -->


	<!-- Fan Facts -->
	<section class="fun">
	<div class="container section-wrapper">
		<h2 class="section-title black">凡人书屋后台管理系统</h2>
		<!-- /.section-title -->
		<div class="underline purple"></div>
		<div class="row">
			<div class="col-sm-3 col-xs-6">
				<div class="fun-box">
					<div class="number">4282</div>
					<div class="number-title">电子书量</div>
				</div>
				<!-- /.fun-box -->
			</div>
			<!-- /.col-md-3 -->
			<div class="col-sm-3 col-xs-6">
				<div class="fun-box">
					<div class="number">2492174</div>
					<div class="number-title">用户数</div>
				</div>
				<!-- /.fun-box -->
			</div>
			<!-- /.col-md-3 -->
			<div class="col-sm-3 col-xs-6">
				<div class="fun-box">
					<div class="number">32741725</div>
					<div class="number-title">下载量</div>
				</div>
				<!-- /.fun-box -->
			</div>
			<!-- /.col-md-3 -->
			<div class="col-sm-3 col-xs-6">
				<div class="fun-box">
					<div class="number">14</div>
					<div class="number-title">运行天数</div>
				</div>
				<!-- /.fun-box -->
			</div>
			<!-- /.col-md-3 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container --> </section>
	<!-- /.fun -->


	<%@ include file="footer.jsp"%>


</body>
</html>