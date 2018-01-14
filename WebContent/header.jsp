<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!-- Home -->
<section class="portfolio-header" id="header">
	<nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">工具管理系统</a>
			</div>
			<!-- /.navbar-header -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="index.jsp">主页</a></li>
					<li ${param.type1}><a href="managebook.jsp">图书管理</a></li>
					<li ${param.type2}><a href="manageorder.jsp">账单管理</a></li>
					<li ${param.type3}><a href="notify_load.action">通知管理</a></li>
					<c:if test="${fn:length(admin.adminNickname)<=0}">
						<li ${param.type4}><a href="center.jsp"><s:property
									value="#session.existBoss.bossName" />:个人中心</a></li>
					</c:if>
					<li ${param.type5}><a href="login.jsp">退出登录</a></li>
				</ul>
				<!-- /.nav -->
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
</section>
<!-- /#header -->