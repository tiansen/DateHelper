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
    <form action="user_addUser" method="post">
    <table align="center">

			<tr>
				<td>����:</td> 
				<!-- ֱ���� user.userName������User�Ķ���ֵ-->
				<td><input type="text" name="user.UserName"></td>
			</tr>
			<tr>
				<td>����:</td>
				<td><input type="password" name="user.passWord"></td>
			</tr>
			<tr>
				<td><input type="submit" value="�ύ">
				</td>
				<td><input type="reset" value="����">
				</td>
			</tr>
		</table>
    </form>
  </body>
</html>
