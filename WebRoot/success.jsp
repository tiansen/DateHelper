<%@ page language="java" import="java.util.*,com.teamwork.entity.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>success page</title>
</head>

<body>
	<center>
		<font color="red">${message}</font>
	</center>
	<center>µÇÂ¼³É¹¦</center>
	<center>
	<!-- 
	
	-->
	</center>
</body>
</html>
