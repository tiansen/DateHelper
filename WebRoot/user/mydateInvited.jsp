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

<title>My JSP 'mydateInvited.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="./css/myDateInvited.css">
<script src="./js/jquery.min.js"></script>
<script src="./js/change.js"></script>
<script type="text/javascript"></script>

</head>
<body>
	<div class="dateInvited">
		<div class="date">
			<span id="myrelease">我发布的邀请</span> <span id="myrecive">我申请的约会</span>
			<i class="line11"></i>
			<!-- 发布的邀请 -->
			<div id="release">
				<c:forEach items="${mydate.entityList}" var="md">
					<div class="releaseList">
						<ul>
							<li><label class="title">${md.address }</label>
							</li>
							<li><label for="">发布日期</label> <span class="time">${md.time }</span>
							</li>
							<li><label for="">邀请类型</label> <span class="style">娱乐</span>
							</li>
							<li><label for="">邀请宣言</label> <span class="voice">${md.content }</span>
							</li>
							<li><a href="javascript:loadpageuser('date_findDateById?id=${md.dateId}&sign=1')"><
									查看详细 ></a>
							</li>
						</ul>
					</div>
				</c:forEach>
	
			<c:if test="${mydate.onLine<0}">
		上一页
		</c:if>
			<c:if test="${mydate.onLine>=0}">
				<a 
					href="javascript:loadpageuser('date_findAllDateById?offset=${mydate.onLine}');changestylerow('.yuehui')">上一页</a>
			</c:if>
			<c:if test="${mydate.nextLine >= mydate.allLine}">
		下一页
		</c:if>
			<c:if test="${mydate.nextLine < mydate.allLine}">
				<a
					href="javascript:loadpageuser('date_findAllDateById?offset=${mydate.nextLine}');changestylerow('.yuehui')">下一页</a>
			</c:if>

			</div>

			<!-- 接收的邀请 -->
			<div id="receive">
			<c:forEach items="${userDate.dates}" var="ud">
				<div class="releaseList">
					<ul>
					
						<li><label class="title">${ud.title }</label>
						</li>
						<li><label for="">发布日期</label> <span class="time">${ud.time }</span>
						</li>
						<li><label for="">邀请类型</label> <span class="style">吃饭+看电影</span>
						</li>
						<li><label for="">邀请宣言</label> <span class="voice">${ud.content }</span>
						</li>
						<li><a href="javascript:loadpageuser('date_findDateById?id=${ud.dateId}&sign=1')"><
								查看详细 ></a>
						</li>
				
					</ul>
				</div>
	       </c:forEach>
			</div>
		</div>
</body>
</html>
