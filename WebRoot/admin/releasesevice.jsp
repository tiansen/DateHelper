<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'releasesevice.jsp' starting page</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
    <link rel="stylesheet" type="text/css" href="./css/releasesevice.css">
    <script src="./js/loadpage.js" type="text/javascript"></script>
</head>
<body>
	<div class="releasesevice">
		<h3 class="titleshow">发布约会</h3>
        <i class="linev"></i>
		<form method="post" action="service_addService" onsubmit="loadpage('./admin/manageservice.jsp')" enctype="multipart/form-data">	
			<table border="2" align="center" class="releaseseviceinfo">
				  	<tr>
					    <td>服务名称</td>
					    <td>
							<input type="text" name="service.serviceName">
						</td>					   
				  	</tr>
				  	<tr>
				  		<td>服务类型</td>
				  		<td>
							<input type="text" name="service.type">
						</td>
				  	</tr>
				  	<tr>
					    <td>服务费用</td>
					    <td>
							<input type="text" name="service.price">
						</td>
				  	</tr>
				  	<tr>
					    <td>服务内容</td>
					    <td>
							<textarea  class="contentsevice" cols="43" rows="6" name="service.content">
								
							</textarea>
						</td>
				  	</tr>
				  	<tr>
					    <td>服务图片</td>
					    <td>
							<input type="file" id="file" name="file" value="service.image"/>
						</td>
				  	</tr>
				  	<tr>
					    <td colspan="2">
							<input type="submit" class="releasebtn"  value="发布">	
							<input type="reset" class="releasebtn"  value="重置">
						</td>												
				  	</tr>
				</table>      
		</form>
	</div>
</body>
</html>
