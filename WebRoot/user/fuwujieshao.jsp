<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'fuwujieshao.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="./css/fuwujieshao.css" rel="stylesheet">
<script src="./bootstrap/js/html5.min.js"></script>
<script src="./bootstrap/js/respond.min.js"></script>
</head>
<body>
	<div class="container containerfuwu">
		<c:forEach items="${model_service.entityList}" var="ms">
			<div class="col-lg-4">
				<h2>${ms.serviceName }</h2>
				<img class="img-thumbnail" src="${ms.image}" alt=""
					style="width: 240px; height: 140px;">
				<p>${ms.content }</p>
<!-- 				<p>
					<a href="#">查看详情»</a>
				</p> -->
				<p>套餐类型：${ms.type}</p>
				<p>套餐价格：${ms.price}</p>
				<p>受欢迎程度：💗💗💗</p>
				<p>上架日期：2014-12-12</p>
				<!-- <p><button class="btn btn-danger">点击购买</button></p> -->
			</div>
		</c:forEach>
		<center>
			<c:if test="${model_service.onLine<0}">
		上一页
		</c:if>
			<c:if test="${model_service.onLine>=0}">
				<a 
					href="javascript:loadnavpage('service_findAllService?sign=1&offset=${model_service.onLine}');changestylerow('.yuehui')">上一页</a>
			</c:if>
			<c:if test="${model_service.nextLine >= model_service.allLine}">
		下一页
		</c:if>
			<c:if test="${model_service.nextLine < model_service.allLine}">
				<a
					href="javascript:loadnavpage('service_findAllService?offset=${model_service.nextLine}&sign=1');changestylerow('.yuehui')">下一页</a>
			</c:if>
		</center>
	</div>

	<!-- <div class="col-lg-4">
    <h2>浪漫之旅</h2>
    <img class="img-thumbnail" src="imgs/p1.jpg" alt="" style="width: 240px; height: 140px;">
    <p>介绍：的框架啊好睡觉啊客户发送旅大黄蜂客户的萨开发哈地方咖啡送点是对健康产生大检查阿第三次哈萨克调查数据的课程是大客车客的合法的身份</p><p><a href="#">查看详情»</a></p>
    <p>套餐类型：情侣</p>
    <p>套餐价格：998</p>
    <p>受欢迎程度：💗💗💗</p>
    <p>上架日期：2014-12-12</p>
    <p><button class="btn btn-danger">点击购买</button></p>
</div>
<div class="col-lg-4">
    <h2>甜蜜之旅</h2>
    <img class="img-thumbnail" src="imgs/p1.jpg" alt="" style="width: 240px; height: 140px;">
    <p>介绍：的框架啊好睡觉啊客户发送大黄蜂客户的萨开发哈地方咖啡送点是对健康产生大检查阿第三次哈萨克调查数据的课程是大客车旅客的合法的身份</p>
    <p><a href="#">查看详情»</a></p>
    <p>套餐类型：情侣</p>
    <p>套餐价格：998</p>
    <p>受欢迎程度：💗💗💗</p>
    <p>上架日期：2014-12-12</p>
    <p><button class="btn btn-danger">点击购买</button></p>
</div>
</div>
    <div id="hidden-content">
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
    </div> -->
	<script type="text/javascript">
		$(".containerfuwu a").click(function() {
			$(".col-lg-4").hide();
			$("#hidden-content").show();
			$(".containerfuwu").append($("#hidden-content"));
		});
		$(".containerfuwu button").click(function() {
			window.open("http://www.alipay.com.cn");
		});
	</script>
</body>
</html>
