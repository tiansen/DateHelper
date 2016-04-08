<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'sigleorderinfo.jsp' starting page</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/sigleorderinfo.css">
</head>
<body>
	<div class="sigleorder">
		<h3 class="titleshow">订单信息</h3>
        <i class="linev"></i>
        <div class="sigleorderinfo">
           <!--  <ul class="info-img">
                <li>
                    <img src="images/user.gif" class="avatar" />
                </li>
            </ul>  -->
            <div class="info-main">
                    <div class="row">
                        <label>订单号：</label>
                        <span>${orderById.orderId }</span>
                    </div>
                    <div class="row">
                        <label>用户名：</label>
                        <span>${order_userName }</span>
                    </div>
                    <div class="row">
                        <label>服务名：</label>
                        <span>${order_serviceName }</span>
                    </div>   
                    <div class="row">
                        <label>订单时间：</label>
                        <span class="orange">${orderById.time }</span>
                    </div>
                    <div class="row">
                        <label>是否付款：</label>
                        <span class="orange"><c:if test="${orderById.payState eq 1}">已付款</c:if>
					<c:if test="${orderById.payState eq 0}">未付款</c:if></span>
                    </div>
                    <div class="row">
                        <label>应付费用：</label>
                        <span class="orange">${orderById.price }</span>&nbsp;元
					</div>
            </div>
        </div>
	</div> 
</body>
</html>
