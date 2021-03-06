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
			<li class="active">&nbsp;电子书上传</li>
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
				<h1>电子书上传</h1>
				<br>
				<s:form action="book_addBook.action" enctype="multipart/form-data"
					method="post" namespace="/" theme="simple">
					<table border="0" height="700px">
						<tr>
							<td>ISBN</td>
							<td width="700px"><input name="isbn" class="form-control"
								type="text" placeholder="请输入ISBN"></td>
						</tr>
						<tr>
							<td>书名&nbsp;&nbsp;&nbsp;&nbsp;</td>
							<td><input name="bookName" class="form-control" type="text"
								placeholder="请输入书名"></td>
						</tr>
						<tr>
							<td>图书类别</td>
							<td><s:select id="type" name="bookVariety.varietyID"
									list="list1" listKey="varietyID" listValue="varietyName"
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
								type="text" placeholder="请输入作者"></td>
						</tr>

						<tr>
							<td>出版社</td>
							<td><input name="publisher" class="form-control" type="text"
								placeholder="请输入出版社"></td>
						</tr>
						<tr>
							<td>价格</td>
							<td><input name="price" class="form-control" type="text"
								placeholder="请输入价格"></td>
						</tr>
						<tr>
							<td>描述</td>
							<td><textarea name="description"
									class="message form-control" placeholder="请输入描述" rows="6"></textarea></td>
						</tr>
						<tr>
							<td>路径</td>
							<td><input type="file" name="file" /></td>
						</tr>
						<tr>
							<td>封面</td>
							<td><input type="file" name="file" /></td>
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
						class="btn btn-primary">&nbsp;&nbsp;上&nbsp;&nbsp;传&nbsp;&nbsp;</button>
				</s:form>
				<br> <br> <br>
			</div>
		</div>
	</div>
	<!-- /.container --> </section>
	<!-- /.contact -->

	<%@ include file="footer.jsp"%>

	<%-- <script type="text/javascript">
	<!-- 1.监控文件上传的三个时间点-->
		WebUploader.Uploader
				.register(
						{
							"before-send-file" : "beforeSendFile",
							"before-send" : "beforeSend",
							"after-send-file" : "afterSendFile"
						},
						{
							//时间点1：:所有分块进行上传之前调用此函数
							beforeSendFile : function(file) {
								//创建一个deffered
								var deferred = WebUploader.Deferred();
								//1.计算文件的唯一标记，用于断点续传和秒传
								(new WebUploader.Uploader()).md5File(file, 0,
										5 * 1024 * 1024).progress(
										function(percentage) {
											$("#" + file.id).find("div.state")
													.text("正在获取文件信息...");
										}).then(
										function(val) {
											uniqueFileTag = val;
											$("#" + file.id).find("div.state")
													.text("成功获取文件信息");
											//只有文件信息获取成功，才进行下一步操作
											deferred.resolve();
										});
								//alert(uniqueFileTag);
								//2.请求后台是否保存过该文件，如果存在，则跳过该文件，实现秒传功能
								//返回deffered
								return deferred.promise();
							},
							//时间点2：如果有分块上传，则 每个分块上传之前调用此函数
							beforeSend : function() {
								var fileMd5 = uniqueFileTag;
								//携带当前文件的唯一标记到后台，用于让后台创建保存该文件分块的目录
								this.owner.options.formData.fileMd5 = fileMd5;
							},
							//时间点3：所有分块上传成功之后调用此函数
							afterSendFile : function(file) {
								var fileMd5 = uniqueFileTag;
								//1.如果分块上传，则通过后台合并所有分块文件
								//请求后台合并文件
								$
										.ajax({
											type : "POST",
											url : "${pageContext.request.contextPath}/Bigupload?action=mergeChunks",
											data : {
												//文件唯一标记
												fileMd5 : fileMd5,
												//文件名称
												fileName : file.name
											},
											dataType : "json",
											success : function(response) {
												alert(response.msg);
											}
										});
							}
						});
		var uploader = WebUploader.create({
			//
			swf : "${pageContext.request.contextPath}/assets/js/Uploader.swf",
			server : "${pageContext.request.contextPath}/Bigupload",
			pick : "#filePicker",
			auto : true,
			//禁用页面其他地方的拖拽功能，防止页面直接打开文件
			disableGlobalDnd : true,
			//开启黏贴功能
			paste : "#uploader",
			//分块上传设置
			//是否分块上传
			chunked : true,
			//每块文件大小（默认5M）
			chunkSize :1024,
			//开启几个并发线程（默认3个）
			threads : 3,
			//在上传当前文件时，准备好下一个文件
			prepareNextFile : true

		});

		uploader.on("fileQueued", function(file) {

			$("#fileList").append(
					"<div id='"+file.id+"' class='fileInfo'><span>"
							+ '<h4 class="info">' + file.name + '</h4>'
							+ '<p class="state">等待上传...</p>' + '</div>');
		});

		// 文件上传过程中创建进度条实时显示。
		uploader
				.on(
						'uploadProgress',
						function(file, percentage) {
							var $li = $('#' + file.id), $percent = $li
									.find('.progress .progress-bar');

							// 避免重复创建
							if (!$percent.length) {
								$percent = $(
										'<div class="progress progress-striped active">'
												+ '<div class="progress-bar" role="progressbar" style="width: 0%">'
												+ '</div>' + '</div>')
										.appendTo($li).find('.progress-bar');
							}

							$li.find('p.state').text('上传中');

							$percent.css('width', percentage * 100 + '%');
						});
		uploader.on('uploadSuccess', function(file) {
			$('#' + file.id).find('p.state').text('已上传');
		});
	</script> --%>
</body>
</html>