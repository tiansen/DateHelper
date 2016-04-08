<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userindex.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	.indexuser{
		margin-left: 30px;
	}
	.indexuser img{
		width:740px;
		height: 480px;
	}
	.indexcontent{
		
		margin-top:-300px;
		margin-left:240px;
	}
	h3{
		color: #FB76C5;
	}
	.indexcontent div{
		font-family: ''微软雅黑'';
		font-size: 16px;
	}
	</style>
</head>
<body>
	<div class="indexuser">
		<img src="./imgs/lovehelp.jpg"/>
		<div class="indexcontent">
			<h3>欢迎使用我们的网站</h3>
			<div >亲爱的会员，很高兴您成为我们尊贵的一员！</div>
			<div>从今日起，我们便为您尽我们一切为您提供服务！</div>
			<div>	祝您在这里能够找到恋爱的幸福感！</div>
		</div>
	</div>
	
</body>
</html>