<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tuisong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/tuisong.css" rel="stylesheet">
</head>
<body>
    <div class="tuisongcontent">
          <h4 id="datepush">约会推送</h4>
            <i class="line3"></i>
        <c:forEach items="${model_order.entityList}" var="o">
        <table class="mytable2">
            <tr>
                <td><h4>本月推送</h4></td>
                <td></td>
            </tr>
            <tr>
                <td><img src="./imgs/meinv.jpg" alt="" class="meinv"/></td>
                <td>
                    <p>基本信息：</p>
                    <div class="personinfo">
                        <p>会员名：<span>${tui_user.userName }</span></p>
                        <p>年龄：<span>${tui_user.age }</span></p>
                        <p>居住地：<span>${tui_user.address }</span></p>
                        <p>eamil：<span style="line-height: 20px;">${tui_user.email }</span></p>
                    </div>
                </td>
                <td class="mybtn">
                    <div><button class="btn btn-xs btn-info">同意</button></div>
                  <!--   <div><button class="btn btn-xs btn-success">查看详情</button></div> -->
                    <div><button class="btn btn-xs btn-danger">拒绝</button></div>
                </td>
            </tr>
            <tr class="bottom">
                <i style="display: block;width: 700px;height:2px;background: #FB76C5;margin-top: 208px;position: absolute;"></i>
                <td><h4>约会介绍</h4></td>
            </tr>
            <tr>
                <td colspan="2">
                    <p style="font-size: 1.1em;font-weight: 600;">${tui_service.serviceName }</p>
                    <div class="personinfo jieshao">
                       ${tui_service.content } 
                    </div>
                     <a class="checkall" href="javascript:loadpageuser('./user/singletuisong.jsp')">查看详情</a>
                </td>
                <td><img src="imgs/p1.jpg" alt="" class="peitu"/></td>
            </tr>
        </table>
        </c:forEach>
    </div>
</body>
</html>