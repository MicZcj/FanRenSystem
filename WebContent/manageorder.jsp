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
<script type="text/javascript">
	function checkNull() {

		var beginDate = dojo.widget.byId("beginDate");
		var endDate = document.getElementById("endDate");

		if (beginDate.value == null || endDate.value == null) {
			alert("请选择起始日期和结束日期！")
			return false;
		}
		return true;
	}
</script>
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
			<li class="active">&nbsp;账单管理</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->

	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
	<div class="container">
		<h1>账单检索</h1>
		<br>
		<s:form action="order_find.action" method="post" namespace="/">
		起始日期：<sx:datetimepicker id="beginDate" name="beginDate"
				displayFormat="yyyy-MM-dd"></sx:datetimepicker> 
		结束日期：<sx:datetimepicker id="endDate" name="endDate"
				displayFormat="yyyy-MM-dd"></sx:datetimepicker>
			<button type="button" class="btn btn-primary"
				onclick="return checkNull();this.form.submit();">查询</button>
		</s:form>
		<br>
		<c:if test="${request.beginDate!=null }">
			<s:form action="order_printExcel.action" method="post" namespace="/">
				账单：<s:property value="#request.beginDate" />----><s:property
					value="#request.endDate" />
				<%-- <s:hidden name="beginDate1"
					value="<s:property value="#request.beginDate" />" />
				<s:hidden name="endDate1"
					value="<s:property
					value="#request.endDate" />" /> --%>
				<input type="hidden" name="beginDate1" value="${request.beginDate }">
				<input type="hidden" name="endDate1" value="${request.endDate }">
				<button type="button" class="btn btn-primary"
					onclick="this.form.submit();">导出Excel表格</button>
			</s:form>
		</c:if>

		<h1>电子书列表</h1>
		<br>
		<table class="table table-striped" border="1">
			<tr>
				<th style='text-align: center;'>编号</th>
				<th style='text-align: center;'>ISBN</th>
				<th style='text-align: center;'>书名</th>
				<th style='text-align: center;'>用户名</th>
				<th style='text-align: center;'>手机号</th>
				<th style='text-align: center;'>收入金额</th>
				<th style='text-align: center;'>交易日期</th>
			</tr>
			<s:iterator value="list" var="o" status="status">
				<tr>
					<td align="center"><s:property value="#o.orderDetailNum" /></td>
					<td align="center"><s:property value="#o.book.isbn" /></td>
					<td align="center"><s:property value="#o.book.bookName" /></td>
					<td align="center"><s:property value="#o.order.user.userName" /></td>
					<td align="center"><s:property value="#o.order.user.phone" /></td>
					<td align="center"><s:property
							value="#o.order.orderTotalPrice" /></td>
					<td align="center"><s:property value="#o.order.dealDate" /></td>
				</tr>
			</s:iterator>
		</table>
	</div>
	</section>

	<%@ include file="footer.jsp"%>
</body>
</html>