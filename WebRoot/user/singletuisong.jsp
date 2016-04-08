<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'singletuisong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link rel="stylesheet" href="./css/singletuisong.css"/>
</head>
<body>
<div class="hidden-content">
    <h2 style="color: #ff8fc9;">温馨之旅</h2>
    <img class="img-thumbnail" src="imgs/p1.jpg" alt="" style="width: 400px; height: 200px;">
    <p>介绍：的框架啊好睡觉啊客户发送旅客的合法的身份
        大黄蜂客户的萨开发哈地方咖啡送点是对健康产生大检查阿第三次哈萨克调查数据的课程
        附近的罚款多少积分哈萨克风景是大客车很多收费卡还是对方回复分风采将豆腐哈客服回大家恢复健康大会上辅导课发挥复</p>
    <p>套餐类型：情侣</p>
    <p>套餐价格：998</p>
    <p>受欢迎程度：💗💗💗</p>
    <p style="margin-left: 150px">已经被<span class="num">787977979</span>人关注</p>
    <p><button class="btn btn-danger">点击购买</button></p>
</div>
</body>
</html>