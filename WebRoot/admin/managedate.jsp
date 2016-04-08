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
		<h3 class="titleshow">管理约会</h3>
		<i class="linev"></i>
		<table border="2" align="center" class="manageservice">
			<tr>
				<th>约会发布人</th>
				<th>约会申请人</th>
				<th>约会主题</th>
				<th>发布时间</th>
				<th>发布内容</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${model_date.entityList}" var="d">
				<tr>
					<td>${d.userId }</td>
					<td>${d.title }</td>
					<td>${d.title }</td>
					<td>${d.time }</td>
					<td>${d.content }</td>
					<td><a
						href="javascript:loadpage('date_findDateById?id=${d.dateId}')">查看</a>
						<!--<a href="user_deleteUser?id=${d.dateId }">删除</a>  --></td>
				</tr>
			</c:forEach>
		</table>
		<center>
			<c:if test="${model_date.onLine<0}">
		上一页
		</c:if>
			<c:if test="${model_date.onLine>=0}">
				<a
					href="javascript:loadpage('date_findAllDate?offset=${model_date.onLine}')">上一页</a>
			</c:if>
			<c:if test="${model_date.nextLine >= model_date.allLine}">
		下一页
		</c:if>
			<c:if test="${model_date.nextLine < model_date.allLine}">
				<a
					href="javascript:loadpage('date_findAllDate?offset=${model_date.nextLine}')">下一页</a>
			</c:if>
		</center>
	</div>
</body>
</html>
