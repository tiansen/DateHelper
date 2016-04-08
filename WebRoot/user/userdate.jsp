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

<title>My JSP 'userdate.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="./css/userdate.css">
<link href="./css/yonghutuisong.css" rel="stylesheet">
</head>
<body>
	<div class="sigleuser">
		<h3 class="titleshow">约会信息</h3>
		<i class="linev"></i>
		<div class="dateinfo">
			<ul class="info-img" style="list-style:none;">
				<li><img src="imgs/user.gif" class="avatar" /></li>
			</ul>
			<div class="info-main" style="margin-top:-220px;">
				<div class="row">
					<label>发布人：</label> <span>${dateById_user}</span>
				</div>
				<div class="row">
					<label>约会主题：</label> <span>${dateById.title }</span>
				</div>

				<div class="row">
					<label>邀请类型：</label> <span class="orange">吃饭+看电影</span>
				</div>

				<div class="row">
					<label>约会时间：</label> <span>${dateById.time }</span>
				</div>
				<div class="row">
					<label>地点：</label> <span>${dateById.address }</span>
				</div>
				<div class="row">
					<label>约会宣言：</label> <span class="orange content">${dateById.content}</span>
				</div>
				<div class="row declaratename">
					<label>参与者: </label>
					<ul>
						<c:forEach items="${dateById.users}" var="dbi">
							<li><span>${dbi.userName}</span></li>
						</c:forEach>
					</ul>
				</div>
				<div class="row">
			
				<form action="order_addOrder" method="post">
					<input type="text" value="${dateById.userId}" name="order.userId" style="display:none;"/>
					<input type="text" value="${dateById.dateId}" name="order.dateId" style="display:none;"/>
					<label>选择约会服务：</label>
					<select id="sel" onchange="change()" style="margin-left:20px;" name="order.serviceId">
						<option>选择约会服务</option>
						<c:forEach items="${model_service.entityList}" var="ms">
						<option value="${ms.serviceId }">${ms.serviceName }</option>			
						</c:forEach>
					</select>
					<input class="priceinput" type="text" value="" name="order.price" style="display:none;"/>
					<button type="submit" class="btn btn-info btn-sm btn-service" style="display:none;margin-top:-34px;margin-left:294px">点击提交</button>	
				</form>
				<ul style="display:none">
					<c:forEach items="${model_service.entityList}" var="ms">
					<li class="priceli" value="${ms.price}">${ms.price}</li>
					</c:forEach>
				</ul>
				<ul style="display:none">
					<c:forEach items="${model_service.entityList}" var="ms">
					<li class="contentli" value="${ms.content}">${ms.content}</li>
					</c:forEach>
				</ul>
				</div>
			</div>	
			
			<div class="hidden-per" style="color:#666;background-color:#ffee99;margin-left:40px;">
				    <h5 style="color: #red;text-align:center">温馨之旅</h5>
				    <button type="button" class="close closebtn pull-right" style="margin-top:-30px;margin-right:10px;"><span aria-hidden="true" style="color:#000;">&times;</span></button>
				    <img class="img-thumbnail" src="imgs/p1.jpg" alt="" style="width: 130px; height: 120px;float:left;margin-right:10px;">
				    <div style="overflow:hidden;height:130px;width:350px;">介绍：<span class="contentspan">的框架啊好睡觉啊客户发送旅客的合法的身份
				        大黄蜂客户的萨开发哈地方咖啡送点是对健康产生大检查阿第三次哈萨克调查数据的课程
				        附近的罚款多少积分哈萨克风景是大客车很多收费卡还是对方回复分风采将豆腐哈客服回大家恢复健康大会上辅导课发挥复</span></div> 
				    <p style="margin-left:130px;">套餐价格：<span style="color:#5555ff;" class="price"></span></p>    
			</div>
		</div>
		
	</div>
	<script type="text/javascript">
		$(function(){
			$(".hidden-per").hide();
		});
		function change() {
			var sel = document.getElementById("sel");
			var now_select = sel.options[sel.selectedIndex];
			if(sel.selectedIndex != 0){
			$(".hidden-per").show();
			$(".btn-service").show();
			$(".price").text($(".priceli").eq(sel.selectedIndex-1).text().trim());
			$(".contentspan").text($(".contentli").eq(sel.selectedIndex-1).text().trim());
			$(".priceinput").val($(".priceli").eq(sel.selectedIndex-1).text().trim());
			$(".hidden-per h5").text($(now_select).text());	
			}	
		}
		$(".closebtn").click(function(){
			$(".hidden-per").hide();
		});
		$(".btn-service").click(function(){
			$(".hidden-per").hide();
		})
	</script>
</body>
</html>