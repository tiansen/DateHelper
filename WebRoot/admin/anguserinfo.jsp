<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'anguserinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">	
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/angulserinfo.css">
</head>
<body>
	<div class="sigleuser">
		<h3 class="titleshow">用户信息</h3>
        <i class="linev"></i>
        <div class="sigleuserinfo">
            <ul class="info-img">
                <li>
                    <img src="./imgs/girl.jpg" class="avatar" />
                </li>
            </ul>
            
            <div class="info-main">
                    <div class="row">
                        <label>用户名：</label>
                        <span>${userById.userName}</span>
                    </div>
                    <div class="row">
                        <label>注册时间：</label>
                        <span>${userById.regTime}</span>
                    </div>
                    <div class="row">
                        <label>所在地：</label>
                        <span>${userById.address}</span>
                    </div>   
                    <div class="row">
                        <label>角色：</label>
                        <span class="orange">${userById.role}</span>
                    </div>
                    <div class="row">
                        <label>账户余额：</label>
                        <span class="orange">${userById.account}</span>&nbsp;元
					</div>
            </div>
        </div>
	</div> 
</body>
</html>
