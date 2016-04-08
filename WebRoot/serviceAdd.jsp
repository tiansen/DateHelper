<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>  
  <body>
    <form action="user_addService" method="post">
    <table align="center">
        	<tr>
				<td>服务ID:</td> 
				<!-- 直接用 user.userName就能向User的对象传值-->
				<td><input type="text" name="service.ServiceId"></td>
			</tr>
			<tr>
				<td>服务名:</td> 
				<!-- 直接用 user.userName就能向User的对象传值-->
				<td><input type="text" name="service.ServiceName"></td>
			</tr>
			<tr>
				<td>服务类型:</td>
				<td><input type="text" name="service.Type"></td>
			</tr>
			<tr>
				<td>内容:</td>
				<td><input type="text" name="service.Content"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交">
				</td>
				<td><input type="reset" value="重置">
				</td>
			</tr>
		</table>
    </form>
  </body>
</html>
