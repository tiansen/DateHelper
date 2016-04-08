<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'orderinfo.jsp' starting page</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/UserCSS.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="./css/top.css"/>
    <link rel="stylesheet" type="text/css" href="./css/foot.css"/>
    <link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.min.css"/>
    <link href="./css/caiwushuju.css" rel="stylesheet">  
    <link href="./css/yonghufenbu.css" rel="stylesheet"> 
    <script type="text/javascript" src="./jquery/jquery.js"></script>
    <script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/ops.js"></script>
    <script src="./js/loadpage.js" type="text/javascript"></script>
    <script	src="./js/yonghuliebiao.js" type="text/javascript"></script>   
    <script src="./Highcharts-4.0.1/js/highcharts.js"></script>
    <script type="text/javascript" src="./js/jiazai.js"></script>
  
</head>
<body style="background:#e6e1e2;height:700px;margin:0 auto;">
<div class="container">
    <div class="row" style="background:#fff;margin:0 auto;">
   		<div class="topwarp">
            <a href="./index.jsp"><img src="./imgs/logo-love.png" class="img-responsive logo-img" alt=""/></a>
            <i class="line"></i>
            <span class="logo-font">相约更相爱</span>
      </div>
    </div>
    <!--<div class="main-nav">-->
   <div class="row" style="border-top:solid 2px orange;border-right:solid 2px orange;margin:0 auto;">
            <div class="u-menu" style="width:180px;border-left:solid 2px orange;border-right:solid 2px orange;padding:20px 5px;height:530px;">
            <ul class="u-nav" id="user_menu">
                <li class="item" id="user_menu_my" name="user_menu_my">
                    <h3 class="t1">
                        用户管理<span title="折叠"></span>
                    </h3>
                    <ul class="sub">
                        <li><a href="javascript:loadpage('user_findAllUser')">用户信息</a></li>
                        <li><a href="javascript:loadpage('order_findAllOrder')">订单信息</a></li>
                    </ul>
                </li>
                <li class="item" id="user_menu_funds" name="user_menu_funds">
                    <h3 class="t2">
                        约会管理<span title="折叠"></span>
                    </h3>
                    <ul class="sub">
                        <li><a href="javascript:loadpage('service_gotoAddUserPage')">发布服务</a></li>
                        <li><a href="javascript:loadpage('service_findAllService')">管理服务</a></li>                        
                        <li><a href="javascript:loadpage('date_findAllDate')">管理约会</a></li>
                        <li><a href="javascript:loadpage('user_findAllUser?sign=1')">服务推送</a></li>
                    </ul>
                </li>
                <li class="item" id="user_menu_invest" name="user_menu_invest">
                    <h3 class="t4">
                        网站数据管理<span title="折叠"></span>
                    </h3>
                    <ul class="sub">
                       <li><a href="javascript:loadpage('./admin/yonghufenbu.jsp')">用户数据</a></li>
                       <li><a href="javascript:loadpage('./admin/caiwushuju.jsp')">财务数据</a></li>
                    </ul>
                </li>
            </ul>

            <script type="text/javascript">
            var menuClosed = Ops.getCookie('menuClosed');
            $(function(){
            	 $(".item h3 span").click(function () {
                    menuClosed = Ops.getCookie('menuClosed');
                    if (menuClosed == undefined || menuClosed == null) {
                        menuClosed = '';
                        Ops.setCookie('menuClosed', menuClosed);
                    }
                    //console.log(menuClosed+',click;;;');	
                    $(this).parent().parent().toggleClass('bg-slide');
                    $(this).parent().parent().find(".sub").slideToggle('fast');

                    if ($(this).attr('title') == '折叠') {
                        $(this).attr('title', '展开');
                    } else {
                        $(this).attr('title', '折叠');
                    }

                    var pid = $(this).parent().parent().attr('id');

                    if ($(this).parent().parent().hasClass('bg-slide') && menuClosed.indexOf("#" + pid + "#") == -1) {
                        var cookies = menuClosed + '#' + pid + '#';
                    } else {
                        var cookies = menuClosed.replace("#" + pid + "#", '');
                    }
                    Ops.setCookie('menuClosed', cookies);
                });

                if (menuClosed != null) {
                    var closedMatch = menuClosed.match(/([a-z_]+)/g);
                    for (var i in closedMatch) {
                        var idObj = $('#' + closedMatch[i]);
                        idObj.toggleClass('bg-slide');
                        idObj.find(".sub").hide();
                        idObj.find('h3 span').attr('title', '展开');
                    }
                } else {
                    $("#user_menu_loan h3 span").click();
                }
            })
                

               
            </script>
        </div>
        <!-- /.u-menu -->
        <div class="u-main" style="position:absolute;margin-left:185px;">
            
        </div>
        <!-- /.u-main -->
    </div>
    </div>
    <div class="footer" style="position:absolute;bottom:10px;width:100%;margin-top:50px;">
        <hr>
        <p >© guanguanzu 2015华中科技大学研究生<br>管振航，田森，曾大海，韩盛，罗丹<br>倾情制作</p>
    </div>
</body>
</html>
