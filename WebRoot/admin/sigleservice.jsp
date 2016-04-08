<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'sigledate.jsp' starting page</title>
<base href="<%=basePath%>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="./css/sigledate.css">
</head>
<body>
	<div class="sigleuser">
		<h3 class="titleshow">约会信息</h3>
		<i class="linev"></i>
		<div class="dateinfo">
			<ul class="info-img">
				<li><img src="${serviceById.image }" class="avatar" />
				</li>
			</ul>
			<div class="info-main">
				<div class="row">
					<label>服务ID：</label> <span>${serviceById.serviceId }</span>
				</div>
				<div class="row">
					<label>服务名：</label> <span>${serviceById.serviceName }</span>
				</div>

				<div class="row">
					<label>服务类型：</label> <span class="orange">${serviceById.type
						}</span>
				</div>
				<div class="row">
					<label>费用：</label> <span class="orange">${serviceById.price
						}</span>
				</div>
				<div class="row">
					<label>服务内容：</label> <span>${serviceById.content }</span>
				</div>
				<%-- 	<a href="javascript:loadpage('service_updateService#?id=${s.serviceId }')">修改</a> --%>
				<a
					href="javascript:loadpage('service_deleteService?id=${serviceById.serviceId }')">删除</a>
			</div>
		</div>
	</div>
</body>
</html>
