<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myFriends.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="./css/myFriends.css">
</head>
<body>
	<div class="friends">
		<div class="myFriends">
			<h4 id="friend">我的好友</h4>
			<i class="line2"></i>
			<ul class="myF">
				<li>
					<div class="imgs">
						<img src="imgs/12.jpg"/>
						<span class="username">你爱若沉默</span>
						<div class="del_black">
							<span class="del">删除好友</span>
							<span class="black">加黑名单</span>
						</div>						
					</div>	
				</li>
				<li>
					<div class="imgs">
						<img src="imgs/12.jpg"/>
						<span class="username">你爱若沉默</span>
						<div class="del_black">
							<span class="del">删除好友</span>
							<span class="black">加黑名单</span>
						</div>	
					</div>	
				</li>
				<li>
					<div class="imgs">
						<img src="imgs/12.jpg"/>
						<span class="username">你爱若沉默</span>
						<div class="del_black">
							<span class="del">删除好友</span>
							<span class="black">加黑名单</span>
						</div>	
					</div>	
				</li>
			</ul>	
		</div>
		<div>
			<span>分页</span>
		</div>
		<div class="blacklist">
			<h4 id="black">我的黑名单</h4>
			<i class="line2"></i>
			<ul class="blackF">
				<li>
					<div class="imgs">
						<img src="imgs/12.jpg"/>
						<span class="username">你爱若沉默</span>
						<div class="del_black">
							<span class="move">移除黑名单</span>
						</div>	
					</div>	
				</li>
				<li>
					<div class="imgs">
						<img src="imgs/12.jpg"/>
						<span class="username">你爱若沉默</span>
						<div class="del_black">
							<span class="move">移除黑名单</span>
						</div>	
					</div>	
				</li>
			</ul>
		</div>
	</div>
	
</body>
</html>
