<%@page import="com.teamwork.entity.Date"%>
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

<title>My JSP 'everyonenote.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="./css/everyonedate.css">
</head>
<body>
	<div class="container" style="margin: 0 auto;">
		<div class="search">
			<h4 id="searchdate">邀请搜索</h4>
			<i class="line12"></i>
			<form id="searchcon" method="get" action="">
				<label for="sex">性别：</label> <input id="boy" name="sex" type="radio"
					checked="checked" value="boy" />男 <input id="girl" name="sex"
					type="radio" value="girl" />女 <label for="age">年龄：</label> <input
					type="text" name="age" id="age" /> <label for="address">所在地：</label>
				<input type="text" name="address" />
				<button id="searchbtn">点击搜索</button>
			</form>
		</div>
		<div class="allpublishdate">
			<h4 id="searchdate">大家发布的邀请</h4>
			<i class="line12"></i>
			<div id="allrelease">
				<c:forEach items="${model_date.entityList}" var="md">
					<div class="allreleaseList">
						<ul>
							<li><label class="title">${md.title }</label></li>
							<li><label for="">发布日期</label> <span class="time">${md.time
									}</span></li>
							<li><label for="">发布人</label> <span class="time">${md.userId
									}</span></li>
							<li><label for="">邀请类型</label> <span class="style">吃饭+看电影</span>
							</li>
							<li><label for="">邀请宣言</label> <span class="voice2">${md.content
									}</span></li>
							<li><label for="">参与者</label> <c:forEach
									items="${md.users}" var="dbi">
									<span class="voice2">${dbi.userName}</span>
								</c:forEach></li>
							<li><c:if test="${md.userId==user.userId}">
									<button class="supply" disabled="disabled"
										style="background: #666">申请</button>
								</c:if> <%
 	if (session.getAttribute("date") != null) {
 			session.removeAttribute("date");
 		}
 %> <c:set var="date" value="${md}" scope="session" /> <%-- 						<%	Date d = (Date)page.getAttribute("md"); 
						request.setAttribute("date",d); %> --%> <c:if
									test="${md.userId!=user.userId}">
									<button class="supply"
										onclick="loadnavpage('date_addApply')">申请</button>
								</c:if> <!-- 	<button class="ignore">屏蔽</button> --></li>
						</ul>
					</div>
				</c:forEach>

			</div>
			<div class="paixu">
				<span style="font-size:18px;margin-left:-30px">排序</span>
				<ul id="ulpx">
					<li>
						<div id="timepx">
							<p id="timepaix">按时间</p>
							<div id="timelist" style="display:none;">
								<p id="long">最久</p>
								<p id="now">最近</p>
							</div>
						</div></li>
					<li>
						<div id="agepx">
							<p id="agepaix">按发布人年龄</p>
							<div id="agelist" style="display:none;">
								<p id="big">最大</p>
								<p id="little">最小</p>
							</div>
						</div></li>
				</ul>
			</div>
			<div style="margin-top: 200px;width: 10px;margin-left: 925px;">

				<c:if test="${model_date.onLine<0}">
		上一页
		</c:if>
				<c:if test="${model_date.onLine>=0}">
					<a
						href="javascript:loadnavpage('date_findAllDate?sign=1&offset=${model_date.onLine}')">上一页</a>
				</c:if>
				<i style="display:block;width: 14px;height: 25px;background: red;"></i>
				<c:if test="${model_date.nextLine >= model_date.allLine}">
		下一页
		</c:if>

				<c:if test="${model_date.nextLine < model_date.allLine}">
					<a
						href="javascript:loadnavpage('date_findAllDate?sign=1&offset=${model_date.nextLine}')">下一页</a>
				</c:if>
			</div>
		</div>
		<script type="text/javascript">
			$("#timepx").mouseover(function() {
				$("#timelist").show();
			}).mouseout(function() {
				$("#timelist").hide();
			})
			$("#agepx").mouseover(function() {
				$("#agelist").show();
			}).mouseout(function() {
				$("#agelist").hide();
			})
		</script>
</body>
</html>
