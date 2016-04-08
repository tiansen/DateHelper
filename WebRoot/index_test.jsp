<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

</head>

<body>
	<center>
		<font color="red">${message}</font>
	</center>
	<%=basePath %>
	<p>

	<form action="user_uploadFile" method="post" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td>名字:</td> 
				<!-- 直接用 user.userName就能向User的对象传值-->
				<td><input type="text" name="user.userName"></td>
			</tr>
			<tr>
				<td>密码:</td>
				<td><input type="password" name="user.passWord"></td>
			</tr>
			<tr>
				<td>文件上传:</td>
				<td><input type="file" id="file" name="file"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交">
				</td>
				<td><input type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
	<center><a href="register.jsp">注册</a></center>
	<center><a href="serviceAdd.jsp">服务</a></center>
</body>
</html>
