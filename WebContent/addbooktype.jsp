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
<title>凡人书屋后台管理系统</title>
<link rel="stylesheet" type="text/css" href="assets/css/webuploader.css" />
<link rel="stylesheet" type="text/css" href="assets/css/cropper.css" />
<link rel="stylesheet" type="text/css" href="assets/css/style.css" />
<script type="text/javascript" src="assets/js/jquery.js"></script>
<script type="text/javascript" src="assets/js/webuploader.js"></script>
<script type="text/javascript" src="assets/js/cropper.js"></script>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/ionicons.min.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/section.css">
<link rel="stylesheet" href="assets/css/service.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->
<script type="text/javascript">
		    if(${result}) alert("上传成功！");
		    </script>
</head>

<body>

	<jsp:include page="header.jsp">
		<jsp:param name="type3" value="class=\"active\"" />
	</jsp:include>



	<!-- Section Background -->
	<section class="section-background">
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="index.jsp">主页</a></li>
			<li class="active">&nbsp;添加图书类别</li>
		</ol>
	</div>
	<!-- /.container --> </section>
	<!-- /.section-background -->


	<div id="uploader">
		<!-- 文件拖拽区域 -->

	</div>
	<!-- Contact with us -->
	<section class="contact section-wrapper" id="contact">
	<div class="container">
		<div align="center">
			<div class="row">
				<h1>添加图书类别</h1>

				<s:form action="booktype_addType.action" method="post" namespace="/"
					theme="simple">
					<table border="0" height="200px">
						<tr>
							<td>图书类别&nbsp;&nbsp;</td>
							<td width="450px"><input name="varietyName"
								class="form-control" type="text" placeholder="请输入图书类别"></td>
						</tr>
					</table>
					<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="managebook.jsp"><button type="button"
							class="btn btn-primary">返回</button></a>
					<button type="button" onclick="this.form.submit();"
						class="btn btn-primary">&nbsp;&nbsp;提&nbsp;&nbsp;交&nbsp;&nbsp;</button>
				</s:form>

			</div>
		</div>
	</div>
	<!-- /.container --> </section>
	<!-- /.contact -->

	<%@ include file="footer.jsp"%>
</body>
</html>