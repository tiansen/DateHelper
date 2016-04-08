<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'sigledate.jsp' starting page</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="./css/sigledate.css">
</head>
<body>
	<div class="sigleuser">
		<h3 class="titleshow">约会信息</h3>
        <i class="linev"></i>
        <div class="dateinfo">
            <ul class="info-img">
                <li>
                    <img src="./imgs/girl.jpg" class="avatar" />
                </li>
            </ul>
            <div class="info-main">
                    <div class="row">
                        <label>约会发布人：</label>
                        <span>${dateById_user}</span>
                    </div>
                    <div class="row">
                        <label>约会主题：</label>
                        <span>${dateById.title }</span>
                    </div>
                    
                    <div class="row">
                        <label>邀请类型：</label>
                        <span class="orange">${dateById.content }</span>
                    </div>
                  
                     <div class="row">
                        <label>发布时间：</label>
                        <span>${dateById.time }</span>
                    </div>
                    <div class="row">
                        <label>地点：</label>
                        <span>${dateById.time }</span>
                    </div>   
                    <div class="row declaratename">
                    <label>申请人: </label>
                    <ul>
                       <c:forEach items="${dateById.users}" var="dbi">
                        <li>
                            <span>${dbi.userName}</span>
                        </li>
                   </c:forEach>
                    </ul>
            </div>
            </div>
            
            <div class="row declarate">
                    <label>约会宣言：</label>
                    <div class="orange content">${dateById.content }</div>
            </div>
             <div class="row declarate tip">
                    <label>注意：若用户所发布的约会邀请包含了违反法律法规的内容，则需要被&nbsp;<a href="javascript:loadpage('date_deleteDate?id=${dateById.dateId}')">删除</a>&nbsp;，点击删除后将自动给予用户信息提醒。</label>
            </div>
        </div>
	</div> 
</body>
</html>
