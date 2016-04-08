<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fabuyueh.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/fabuyueh.css">

</head>
<body>
	<div class="releasedate">
		<h3 class="titleshow">发布约会</h3>
        		<i class="linev"></i>
		<form action="date_addDate" method="post">	
			<table align="center" class="releasedateinfo">
				  	<tr>
					    <td><label>约会主题</label></td>
					    <td>
							<input type="text" name="date.title">
						</td>					   
				  	</tr>
				  	<tr>
				  		<td><label>约会类型</label></td>
				  		<td>
							<input type="text" name="name">
						</td>
				  	</tr>
				  	<tr>
					    <td><label>约会地点</label></td>
					    <td>
							<input type="text" name="date.address">
						</td>
				  	</tr>
				  	<tr>
					    <td><label>约会内容</label></td>
					    <td>
							<textarea  class="contentdate" cols="43" rows="6" name="date.content">
								
							</textarea>
						</td>
				  	</tr>
				  	<tr>
					    <td><label>约会时间</label></td>
					    <td>
							<input type="text" name="date.time">
						</td>
				  	</tr>
				  	<tr>
					    <td colspan="2">
							<input type="submit" class="releasebtn"  value="发布" onclick="return yuehvalid()">	
							<input type="reset" class="releasebtn"  value="重置">
						</td>												
				  	</tr>
				</table>      
		</form>
	</div>
</body>
</html>