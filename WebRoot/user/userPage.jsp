<%@ page language="java" import="java.util.*,com.teamwork.entity.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人主页</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <title>约会帮帮忙</title>
     <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
     
     <link href="./css/top.css" rel="stylesheet">
     <link href="./css/foot.css" rel="stylesheet">
      <script type="text/javascript" src="./js/changediv.js"></script>
      <script type="text/javascript" src="./js/fabuvalid.js"></script>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <style type="text/css">
  		 * {
          padding: 0px;
          margin: 0px;
          font-family:"微软雅黑";
        }
        .container {
          width: 952px;
          height: 520px;
          /*border: 1px solid #f0ad4e;*/
          border-left:2px solid #f0ad4e;
          border-right:2px solid #f0ad4e;
          border-bottom: 2px solid #f0ad4e;
          background:#fff;
          padding-left: 0px;
          padding-right: 0px;
        }
        .left {
          width: 170px;
          height: 520px;
          border-right: 2px solid #f0ad4e;
          float: left;
        }
      .left-top {
          height: 38%;
          border-bottom: 2px solid #f0ad4e;
      }
      .left-top img {
          width: 55px;
          height: 55px;
          margin-left: 10px;
          margin-top: 10px;
      }
      .left-top span {
          color: #333;
          font-size: 18px;
          margin-left: 20px;
      }
      .left-top p {
          margin-left: 20px;
      }
       .left-bottom img {
           margin-top: 20px;
           margin-left: 105px;;
       }
      .nav-stacked li a {
          padding-bottom: 5px;;
          padding-top: 5px;
          padding-right: 0;
          font-size: 15px;

      }
      .badge {
          font-size: 10px;
          background-color: #ff8fc9;
          font-weight: 200;
      }
      .nav-stacked li a:hover {
          background-color: #eeeeee;
          opacity: 1;
      }
      .glyphicon {
          padding-right: 10px;
          color: #e38d13;
      }
        .middle {
          width: 558px;
          height: 520px;
          border-bottom: 2px solid #f0ad4e;
          float: left;
        }
         .right {
          width: 218px;
          height: 520px;
          border-left: 2px solid #f0ad4e;
          float: left;
        }
        .right-top {
          height: 50%;
          border-bottom: 2px solid #f0ad4e;
        }
        hr {
            border-top: 1px solid  #afabab;
        }
  </style>
  </head>
  <body style="background-color: #e6e1e2;" onload="loadpageuser('./user/userindex.jsp')">
    <%User u  = (User)session.getAttribute("user");%>
      <div class="header">
      <div class="topwarp">
            <a href="./index.jsp"><img src="./imgs/logo-love.png" class="img-responsive logo-img" alt=""/></a>
            <i class="line"></i>
            <span class="logo-font">相约更相爱</span>
            				<%
					if (u == null) {
				%>
				<div class="register-login-div">
					<a href="./user/register.jsp">免费注册 |</a> <a data-toggle="modal"
						data-target="#myModal"> 登录</a>
				</div>
				<%
					} else {
				%>
				<div class="register-login-div">
					<div id="logdiv2">
						<span>用户名： <%
							if (u.getRole() == 2) {
						%> <a
							href="./admin/adminpage.jsp"><%=u.getUserName()%></a> <%
 	} else {
 %>
							<a href="./user/userPage.jsp"><%=u.getUserName()%></a> <%
 	}
 %> </span>
						<div id="log2" style="display:none;">
							<a style="float:right;" href="./logout.jsp">退出</a>
						</div>
					</div>
				</div>
				<%
					}
				%>
            <img id="img2" src="./imgs/login-right.png" class="login-right">
      </div>
      <div class="nav-row"></div>
      <div class="row">
              <div class="col-md-12">
                    <nav class="navbar  navbar-style" role="navigation">
                    <div class="navbar-header">
                            <a class="navbar-brand nav-font" href="#">Date-Help</a>
                    </div>
                    <div>
                          <ul class="nav nav-pills nav-justified">
                                  <li><a href="#">首页</a></li>
                                  <li class="bang"><a href="javascript:loadpageuser('./user/userindex.jsp');changestylerow('.bang');">我的帮帮</a></li>
                                  <li class="yuehui"><a href="javascript:loadnavpage('service_findAllService?sign=1');changestylerow('.yuehui')">约会服务</a></li>
                                  <li class="alldate"><a href="javascript:loadnavpage('date_findAllDate?sign=1');changestylerow('.alldate')">大家在约</a></li>
                                  <li class="pubnote"><a href="javascript:loadnavpage('./user/love-note.jsp');changestylerow('.pubnote')">恋爱笔记</a></li>
                                  <li class="vipcenter"><a href="javascript:loadnavpage('./user/huiyuan.jsp');changestylerow('.vipcenter')">会员中心</a></li>
                            </ul>
                    </div>
                    </nav>
              </div>
      </div>
      <div class="nav-bottom-div"></div>
      </div>
      <div class="container contentcol">
              <div class="left">
                    <div class="left-top">
                    <img src="${user.image}" width="50" height="50" alt="">
                    <span style="font-size:16px"><%=u.getUserName() %></span>
              <p>性别：<%if(u.getSex()==0){ 
              out.print("男");
              }else{
              out.print("女");
              } %><br>
                                     年龄：<%=u.getAge() %><br>
                                     账户余额：<%=u.getAccount() %><br>
                                     是否VIP：<%if(u.getRole()==1){
                                     out.print("是");
                                     }else if(u.getRole()==2){
                                     out.print("管理员");
                                     }else{
                                     out.print("否");
                                     } %><br><p>
              <a href="user_updateUserRole"><span class="glyphicon glyphicon-yen"></span>账户充值</a>
                    </div>
                    <div class="left-bottom">
                            <ul class="nav nav-tabs nav-stacked">	
                                    <li id="tuisongnote"><a href="javascript:loadpageuser('order_tuiSong');changestylecol('#tuisongnote')"><span class="glyphicon glyphicon-log-out"></span>我的约会推送<span class="badge">42</span></a></li>
                                    <li id="yuehuiyq"><a href="javascript:loadpageuser('date_findAllDateById');changestylecol('#yuehuiyq')"><span class="glyphicon glyphicon-log-in"></span>我的约会邀请<span class="badge">42</span></a></li>
                                     <li id="fabuyueh"><a href="javascript:loadpageuser('./user/fabuyueh.jsp');changestylecol('#fabuyueh')"><span class="glyphicon glyphicon-pencil"></span>发布约会邀请</a></li>
                                    <li id="myordermsg"><a href="javascript:loadpageuser('order_findAllOrder?sign=1');changestylecol('#myordermsg')"><span class="glyphicon glyphicon-heart"></span>我的订单</a></li>
                                    <li id="logout"><a href="#tab7"><span class="glyphicon glyphicon-off"></span>退出登录</a></li>
                            </ul>
                            <img src="./imgs/rabbit.png">
                    </div>
              </div>
             <div class="middlecon">
            
              </div>
      </div>
      <div class="contentrow" style="display: none;">

      </div>
      <div class="footer">
              <hr>
              <p >© guanguanzu 2015华中科技大学研究生<br>管振航，田森，曾大海，韩盛，罗丹<br>倾情制作</p>
      </div>
      <script src="./jquery/jquery.js"></script>
      <script src="./js/loadpage.js"></script>
      <script src="./bootstrap/js/bootstrap.min.js"></script>
      <script type="text/javascript">
		//开始验证
		$().ready(function() {
			var loglink = $("#logdiv2");
			loglink.mouseover(function() {
				$("#log2").css("display", "block");
				$("#img2").css("margin-top", "2px");
			})
			loglink.mouseout(function() {
				$("#log2").css("display", "none");
				$("#img2").css("margin-top", "20px");
			})

		});
	</script>
</body>
</html>