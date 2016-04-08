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
<base href="<%=basePath%>">
<title>My JSP 'orderinfo.jsp' starting page</title>


<link rel="stylesheet" type="text/css" href="./css/orderinf.css">
</head>
<body>
	<div class="ordercenter">
		<h3 class="titleshow">订单信息</h3>
		<i class="linev"></i>
		<table border="2" align="center" class="orderinf">
			<tr>
				<th>用户ID</th>
				<th>订单时间</th>
				<th>订单总价</th>
				<th>是否付款</th>
				<th colspan="2">操作</th>
			</tr>
			<c:forEach items="${model_order.entityList}" var="o">
				<tr>
					<td>${o.userId }</td>
					<td>${o.time }</td>
					<td>${o.price }</td>
				    <!-- 用JSTL标签做判断 -->
					<td><c:if test="${o.payState eq 1}">已付款</c:if>
					<c:if test="${o.payState eq 0}">未付款</c:if></td>
					<td><a href="javascript:loadpage('order_findOrderById?id=${o.orderId }')">查看</a>
					 <!-- <a href="javascript:loadpage('#?id=${m.orderId }')">删除</a> -->
					</td>
				</tr>
			</c:forEach>
		</table>
		<center>
			<c:if test="${model_order.onLine<0}">
		上一页
		</c:if>
			<c:if test="${model_order.onLine>=0}">
				<a
					href="javascript:loadpage('order_findAllOrder?offset=${model_order.onLine}')">上一页</a>
			</c:if>
			<c:if test="${model_order.nextLine >= model_order.allLine}">
		下一页
		</c:if>
			<c:if test="${model_order.nextLine < model_order.allLine}">
				<a
					href="javascript:loadpage('order_findAllOrder?offset=${model_order.nextLine}')">下一页</a>
			</c:if>
		</center>
	</div>
</body>
</html>
