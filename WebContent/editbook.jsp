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
			<li class="active">&nbsp;电子书详情</li>
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
				<h1>电子书详情页</h1>
				<br>
				<s:form action="book_save.action" method="post" namespace="/"
					theme="simple">
					<table border="0" height="700px">
						<s:hidden name="bookID" value="%{model.bookID}" />
						<s:hidden name="bookPath" value="%{model.bookPath}" />
						<s:hidden name="cover" value="%{model.cover}" />
						<s:hidden name="publishDate" value="%{model.publishDate}" />
						<s:hidden name="likeNum" value="%{model.likeNum}" />
						<s:hidden name="sellNum" value="%{model.sellNum}" />

						<tr>
							<td>ISBN</td>
							<td width="700px"><input name="isbn" class="form-control"
								type="text" value="${model.isbn}"></td>
						</tr>
						<tr>
							<td>书名&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><input name="bookName" class="form-control" type="text"
								value="${model.bookName}"></td>
						</tr>
						<tr>
							<td>图书类别</td>
							<td><s:select id="type" name="bookVariety.varietyID"
									list="list2" listKey="varietyID" listValue="varietyName"
									headerValue="---请选择图书类别---" class="form-control" /> <%-- <select id="type" name="type" class="form-control">
									<c:forEach items="${tooltypelist}" var="tooltype"
										varStatus="status">
										<option value="${tooltype.toolTypeID}">${tooltype.toolTypeName}</option>
									</c:forEach>
							</select> --%></td>
						</tr>
						<tr>
							<td>作者</td>
							<td><input name="authorName" class="form-control"
								type="text" value="${model.authorName}"></td>
						</tr>

						<tr>
							<td>出版社</td>
							<td><input name="publisher" class="form-control" type="text"
								value="${model.publisher}"></td>
						</tr>
						<tr>
							<td>价格</td>
							<td><input name="price" class="form-control" type="text"
								value="${model.price}"></td>
						</tr>
						<tr>
							<td>描述</td>
							<td><textarea name="description"
									class="message form-control" rows="6">${model.description}</textarea></td>
						</tr>
						<tr>
							<td>推荐</td>
							<td><input type="radio" name="recommendFlag" value="true" />是
								<input type="radio" name="recommendFlag" value="false"
								checked="checked" />否 <%-- <s:radio name="recommendFlag"
						list="#{'true':'是','false':'否'}" value="false" /> --%></td>
						</tr>
					</table>
					<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" onclick="this.form.submit();"
						class="btn btn-primary">&nbsp;&nbsp;修&nbsp;&nbsp;改&nbsp;&nbsp;</button>
				</s:form>
				<br> <br> <br>
			</div>
		</div>
	</div>
	<!-- /.container --> </section>
	<!-- /.contact -->

	<%@ include file="footer.jsp"%>
</body>
</html>