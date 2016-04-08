<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'manageservice.jsp' starting page</title>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="./css/manageservice.css">
</head>
<body>
	<div class="manage">
		<h3 class="titleshow">管理服务</h3>
		<i class="linev"></i>
		<table border="2" align="center" class="manageservice">
			<tr>
				<th>服务名</th>
				<th>服务类型</th>
				<th>内容</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${model_service.entityList}" var="s">
				<tr>
					<td>${s.serviceName }</td>
					<td>${s.type }</td>
					<td>${s.content }</td>
					<td><a
						href="javascript:loadpage('service_findServiceById?id=${s.serviceId }')">查看</a>
						<a href="javascript:loadpage('service_deleteService?id=${s.serviceId }')">删除</a></td>
				</tr>
			</c:forEach>
		</table>
		<center>
			<c:if test="${model_service.onLine<0}">
		上一页
		</c:if>
			<c:if test="${model_service.onLine>=0}">
				<a
					href="javascript:loadpage('service_findAllService?offset=${model_service.onLine}')">上一页</a>
			</c:if>
			<c:if test="${model_service.nextLine >= model_service.allLine}">
		下一页
		</c:if>
			<c:if test="${model_service.nextLine < model_service.allLine}">
				<a
					href="javascript:loadpage('service_findAllService?offset=${model_service.nextLine}')">下一页</a>
			</c:if>
		</center>
	</div>
</body>
</html>
