<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userorder.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="./css/userorder.css">
</head>
<body>
	<div class="orders">
		<div class="userorders" style="margin-top:-10px;">
			<h4 id="myorders">我的订单</h4>
			<i class="line10"></i>
		</div>
		<div class="orderlist">
		<c:forEach items="${model_order.entityList}" var="o">
			<div class="ordertitle">
				<ul>
					<li><span class="ordername">${o.userId }</span></li>
					<li>订单时间：<span class="ordertime">${o.time }</span>
					<li>订单号：<span class="ordernum">${o.orderId }</span></li>
				</ul>
			</div>
			<div class="ordermsg">				
				<div class="orderimg" style="margin-bottom:50px;">
					<img src="./imgs/meinv.jpg"  width="90px" height="90px"/>
				</div>
				<div class="ordersinfo">	
					<span class="ordername">${o.userId }</span>
					<span>价格:</span><span class="ordertime">${o.price } </span><span>元</span>
					<c:if test="${o.payState eq 1}">已付款</c:if>
					<c:if test="${o.payState eq 0}">未付款<button id="pay">付款</button>
					<p>或者<button id="cancel">取消订单</button></p></c:if>
					
					
				</div>		
			</div>
			</c:forEach>
			<center>
			<c:if test="${model_order.onLine<0}">
		上一页
		</c:if>
			<c:if test="${model_order.onLine>=0}">
				<a
					href="javascript:loadpageuser('order_findAllOrder?sign=1&offset=${model_order.onLine}')">上一页</a>
			</c:if>
			<c:if test="${model_order.nextLine >= model_order.allLine}">
		下一页
		</c:if>
			<c:if test="${model_order.nextLine < model_order.allLine}">
				<a
					href="javascript:loadpageuser('order_findAllOrder?sign=1&offset=${model_order.nextLine}')">下一页</a>
			</c:if>
		</center>
		</div>
	</div>
</body>
</html>
