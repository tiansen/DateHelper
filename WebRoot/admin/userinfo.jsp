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

<title>My JSP 'userinfo.jsp' starting page</title>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="./css/userinfo.css">
<script src="./js/loadpage.js" type="text/javascript"></script>
</head>
<body>
	<div class="ucenter">
		<h3 class="titleshow">用户信息</h3>
		<i class="linev"></i>
		<%//System.out.println("次数："); %>
		<table border="2" align="center" class="userinfo">
			<tr>
				<th>用户名</th>
				<th>密码</th>
				<th>用户级别</th>
				<th colspan="2">操作</th>
			</tr>
			<c:forEach items="${model.entityList}" var="u">
				<tr>
					<td>${u.userName }</td>
					<td>${u.passWord }</td>
					<td><c:if test="${u.role eq 0}">普通会员</c:if> <c:if
							test="${u.role eq 1}">VIP</c:if><c:if
							test="${u.role eq 2}">管理员</c:if></td>
					<td><a href="javascript:loadpage('user_findUserById?id=${u.userId}')">查看</a> 
					<!--<a href="user_deleteUser?id=${u.userId }">删除</a>  -->
					</td>
				</tr>
			</c:forEach>
		</table>
		<center>
			<c:if test="${model.onLine<0}">
		上一页
		</c:if>
			<c:if test="${model.onLine>=0}">
				<a href="javascript:loadpage('user_findAllUser?offset=${model.onLine}')">上一页</a>
			</c:if>
			<c:if test="${model.nextLine >= model.allLine}">
		下一页
		</c:if>
			<c:if test="${model.nextLine < model.allLine}">
				<a href="javascript:loadpage('user_findAllUser?offset=${model.nextLine}')">下一页</a>
			</c:if>
		</center>
	</div>
</body>
</html>
