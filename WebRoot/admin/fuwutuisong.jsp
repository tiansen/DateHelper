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

<title>My JSP 'fuwutuisong.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="./css/yonghutuisong.css" rel="stylesheet">
<script	src="./js/yonghuliebiao.js" type="text/javascript"></script>  

</head>
<body>
	<div class="contentfw">

		<table class="table table-striped mytable4 table-bordered">
			<tr>
				<th>用户名</th>
				<th>性别</th>
				<th>是否单身</th>
				<th>服务选择</th>
				<th>约会对象</th>
				<th>推送选择</th>
			</tr>
			<c:forEach items="${model.entityList}" var="u">
			
				<tr class="listinfo">
				    
					<td>${u.userName }</td>
					<td class="persex"><c:if test="${u.sex eq 0}">男</c:if> <c:if
							test="${u.sex eq 1}">女</c:if></td>
					<td class="danshen"><c:if test="${u.maritalStatus eq 0}">单身</c:if> <c:if
							test="${u.maritalStatus eq 1}">非单身</c:if>
					</td>
					<td><select name="" class="sel" >
					<c:forEach items="${model_service.entityList}" var="ms">
							<option value="${ms.serviceId}">${ms.serviceName}</option>
					</c:forEach>
					</select></td>
					<td class="per-td">
						<!-- <div></div> -->
						<button class="btn btn-default per-btn">约会对象选择</button>
					</td>
					
					<td>
						<button type="submit" class="btn btn-default tuisongbtn">推送</button>	
					</td>
					<td style="display:none" class="userid">${u.userId }</td>
				</tr>
			
			</c:forEach>
		</table>

		<center>
			<c:if test="${model.onLine<0}">
		上一页
		</c:if>
			<c:if test="${model.onLine>=0}">
				<a
					href="javascript:loadpage('user_findAllUser?offset=${model.onLine}&sign=1')">上一页</a>
			</c:if>
			<c:if test="${model.nextLine >= model.allLine}">
		下一页
		</c:if>
			<c:if test="${model.nextLine < model.allLine}">
				<a
					href="javascript:loadpage('user_findAllUser?offset=${model.nextLine}&sign=1')">下一页</a>
			</c:if>
		</center>
		<div class="hidden-per">
			<ul class="photo-ul">
				<li style="display:none;">
					<div class="perimg0">
						<img src="./imgs/meinv.jpg" alt=""
							style="width: 100px;height: 135px" />
						<p>
							<input type="radio" name="radioname" value="奶茶妹妹"><span>奶茶妹妹</span>
						</p>
					</div>
				</li>
				<li style="display:none;">
					<div class="perimg1">
						<img src="./imgs/meinv.jpg" alt=""
							style="width: 100px;height: 135px" />
						<p>
							<input type="radio" name="radioname" value="奶茶妹妹"><span>奶茶妹妹</span>
						</p>
					</div>
				</li>
				<li style="display:none;">
					<div class="perimg2">
						<img src="./imgs/meinv.jpg" alt=""
							style="width: 100px;height: 135px" />
						<p>
							<input type="radio" name="radioname" value="奶茶妹妹"><span>奶茶妹妹</span>
						</p>
					</div>
				</li>
				<li style="display:none;">
					<div class="perimg3">
						<img src="./imgs/meinv.jpg" alt=""
							style="width: 100px;height: 135px" />
						<p>
							<input type="radio" name="radioname" value="奶茶妹妹"><span>${model_select eq null}</span>
						</p>
					</div>
				</li>
			</ul>
			
			<div class="selectphoto-btn">
				<button class="btn btn-info btn-xs queding">确定</button>
				<button class="btn btn-info btn-xs quxiao">取消</button>
			</div>
<!-- 			<div class="num-fenye">
				<ul class="fenye">
					<li><a href="">1｜</a>
					</li>
					<li><a href="">2｜</a>
					</li>
					<li><a href="">3</a>
					</li>
				</ul>
			</div> -->
			<div class="chinese-fenye">
			
				<ul class="fenye">
					<li class="uppage" style="display:none;"><a href="javascript:loadpage('user_findAllUser?offset=${model.nextLine}')">上一页｜</a>
					</li>
					<li class="downpage" style="display:none;"><a href="">下一页</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>