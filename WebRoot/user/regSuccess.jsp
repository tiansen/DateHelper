<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regSuccess.jsp' starting page</title>
    
	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/top.css" rel="stylesheet">
    <link href="./css/foot.css" rel="stylesheet">
    <style type="text/css">
		body{
			background: #e6e1e2;
		}
		#content{
			background-image: url(imgs/success.png);
			width: 948px;
			height: 523px;
			margin: 0 auto; 
			position: relative;
			text-align: center;
		}
		#content p,label{
			font-size: 15px;
			color: #FDFD7E;
			margin-top: 20px;
		}
		
		#userId{
			color: #0698F6;
		}
		#content a:link{
			text-decoration: underline;
		}
		#content a:hover{
			color:#F60627; 
		}
		.footer{
			margin-top: -20px;
		}
    </style>
</head>
<body>
	<div class="header" style="z-index: 99999;">
      <div class="topwarp">
          <a href="./index.jsp"><img src="imgs/logo-love.png" class="img-responsive logo-img" alt=""/></a>
          <i class="line"></i>
          <span class="logo-font">相约更相爱<span style="color:#F52184;margin-left: 80px;font-size:26px;margin-top: -10px;">约会帮帮忙</span></span>
      </div>
    </div>
    <div id="content">
    	<p style="position:absolute;margin-top: 30px;margin-left: 400px;font-size: 24px;color: #fff">恭喜您已注册成功</p>
    	<div style="margin-left: 30px;position:absolute;margin-top: 120px;">
    		<p>您已成功成为约会帮帮忙的尊贵的会员!</p>
    		<p>下面是您的ID号，该ID号是您登录本网站唯一的账号！</p>
	    	<label>您的ID号是：</label>
	    	<span id="userId">${message}</span>
	      	<p style="font-size: 16px;"><a href="./user/userLogin.jsp">请点击这里登录</a></p>
	</div>
    </div>
    <div class="footer">
        <hr>
        <p >© guanguanzu 2015华中科技大学研究生<br>管振航，田森，曾大海，韩盛，罗丹<br>倾情制作</p>
    </div>
</body>
</html>
