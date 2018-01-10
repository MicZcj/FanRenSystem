<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<sx:head />
<title>Insert title here</title>
</head>
<body>
	<s:form action="order_find.action" method="post" namespace="/">
	订单查询：<br>
		起始日期：<sx:datetimepicker name="beginDate" displayFormat="yyyy-MM-dd"></sx:datetimepicker> 
		结束日期：<sx:datetimepicker name="endDate" displayFormat="yyyy-MM-dd"></sx:datetimepicker>
		<s:submit value="提交" />
	</s:form>
</body>
</html>