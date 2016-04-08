<%@ page language="java" import="java.util.*,com.teamwork.entity.*"
	pageEncoding="utf-8"%>
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

<title>约会帮帮忙</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>约会帮帮忙</title>
<base target="_self">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/user_index.css" rel="stylesheet">
	<script src="jquery/jquery.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body >
	<div style="background-color: #f4f4f4;">
		<div class="header">
			<div class="topwarp">
				<a href="./index.jsp"><img src="imgs/logo-love.png"
					class="img-responsive logo-img" alt="" />
				</a> <i class="line"></i> <span class="logo-font">相约更相爱</span>
				<%
					User u = (User) session.getAttribute("user");
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
					<div id="logdiv">
						<span>用户名： <%
							if (u.getRole() == 2) {
						%> <a
							href="./admin/adminpage.jsp"><%=u.getUserName()%></a> <%
 	} else {
 %>
							<a href="./user/userPage.jsp"><%=u.getUserName()%></a> <%
 	}
 %> </span>
						<div id="log" style="display:none;">
							<a style="float:right;" href="./logout.jsp">退出</a>
						</div>
					</div>
				</div>
				<%
					}
				%>
				<img id="img1" src="imgs/login-right.png" class="login-right">
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
							<li><a href="#">首页</a>
							</li>
							<li><a href="user/userPage.jsp">我的帮帮</a>
							</li>
							<li class=""><a href="user/userPage.jsp">约会服务</a>
							</li>
							<li class=""><a href="user/userPage.jsp">大家在约</a>
							</li>
							<li class=""><a href="user/userPage.jsp">恋爱笔记</a>
							</li>
							<li class=""><a href="user/userPage.jsp">会员中心</a>
							</li>
						</ul>
					</div>
					</nav>

				</div>
			</div>
			<div class="nav-bottom-div"></div>
		</div>
		<div class="container content1">
			<div class="row">
				<div class="col-md-9 carousel-row">
					<div id="mycarousel" class="carousel slide " data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
							<li data-target="#mycarousel" data-slide-to="1"></li>
							<li data-target="#mycarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="imgs/cat.jpg" alt="...">
							</div>
							<div class="item">
								<img src="imgs/girl.jpg" alt="...">
							</div>
							<div class="item">
								<img src="imgs/people.jpg" alt="...">
							</div>
						</div>
						<a class="left carousel-control" href="#mycarousel" role="button"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span> </a> <a
							class="right carousel-control" href="#mycarousel" role="button"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span> </a>
					</div>
				</div>

				<div class="col-md-3 login-div">
					<form class="form-horizontal" role="form" id="loginform"
						action="user_userLogin" method="post">
						<label class="badge">用户登录</label>
						<div class="form-group col-xs-12">
							<input type="text" name="user.UserId"
								class="form-control input-sm" id="inputEmail" placeholder="用户ID">
						</div>
						<div class="form-group col-xs-12">
							<input name="user.passWord" type="password"
								class="form-control input-sm" id="inputPassword"
								placeholder="密码">
						</div>
						<div class="form-group col-xs-12 loginauto">
							<div class="checkbox">
								<input type="checkbox">自动登录 <a href="">忘记密码？</a>
							</div>
						</div>
						<div class="form-group col-xs-12">
							<button type="submit" class="btn btn-danger col-xs-5">登录</button>
							<button type="submit" class="btn btn-info col-xs-6"
								style="float:right;">免费注册</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="between">
		<img src="imgs/heart.png"> <span class="span1">有这么多单身的在等约喔</span>
	</div>
	<div class="container content2">
		<div class="titlebar">
			<h2 class="title">
				约会 <small>推荐</small>
			</h2>
			<ul class="title-ul">
				<li class="active"><a href="#">吃饭</a>
				</li>
				<li><a href="#">KTV</a>
				</li>
				<li><a href="#">看电影</a>
				</li>
			</ul>
			<a href="#" target="_blank" class="more" style="float:right;">查看更多
				»</a>
		</div>
		<div class="row">
			<div class="col-md-4">
				<img src="imgs/meinv.jpg" alt="" class="photo">
				<div class="caption">
					<span class="badge">吃饭</span>
					<p>想法：我们一起去吃好吃的吧</p>
					<%
						if (u == null) {
					%>
					<a href="./user/userLogin.jsp">详情》</a>
					<%
						} else {
					%>
					<a href="#">详情》</a>
					<%
						}
					%>
				</div>
				<div class="loc-time">
					<small>
						<p class="loc">上海</p>
						<p class="time">2015-12-12</p> </small>
				</div>
			</div>
			<div class="col-md-4">
				<img src="imgs/meinv.jpg" alt="" class="photo">
				<div class="caption">
					<span class="badge">吃饭</span>
					<p>想法：我们一起去吃好吃的吧</p>
					<%
						if (u == null) {
					%>
					<a href="./user/userLogin.jsp">详情》</a>
					<%
						} else {
					%>
					<a href="#">详情》</a>
					<%
						}
					%>
				</div>
				<div class="loc-time">
					<small>
						<p class="loc">上海</p>
						<p class="time">2015-12-12</p> </small>
				</div>
			</div>
			<div class="col-md-4">
				<img src="imgs/meinv.jpg" alt="" class="photo">
				<div class="caption">
					<span class="badge">吃饭</span>
					<p>想法：我们一起去吃好吃的吧</p>
					<%
						if (u == null) {
					%>
					<a href="./user/userLogin.jsp">详情》</a>
					<%
						} else {
					%>
					<a href="#">详情》</a>
					<%
						}
					%>
				</div>
				<div class="loc-time">
					<small>
						<p class="loc">上海</p>
						<p class="time">2015-12-12</p> </small>
				</div>
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-md-4">
				<img src="imgs/meinv.jpg" alt="" class="photo">
				<div class="caption">
					<span class="badge">吃饭</span>
					<p>想法：我们一起去吃好吃的吧</p>
					<%
						if (u == null) {
					%>
					<a href="./user/userLogin.jsp">详情》</a>
					<%
						} else {
					%>
					<a href="#">详情》</a>
					<%
						}
					%>
				</div>
				<div class="loc-time">
					<small>
						<p class="loc">上海</p>
						<p class="time">2015-12-12</p> </small>
				</div>
			</div>
			<div class="col-md-4">
				<img src="imgs/meinv.jpg" alt="" class="photo">
				<div class="caption">
					<span class="badge">吃饭</span>
					<p>想法：我们一起去吃好吃的吧</p>
					<%
						if (u == null) {
					%>
					<a href="./user/userLogin.jsp">详情》</a>
					<%
						} else {
					%>
					<a href="#">详情》</a>
					<%
						}
					%>
				</div>
				<div class="loc-time">
					<small>
						<p class="loc">上海</p>
						<p class="time">2015-12-12</p> </small>
				</div>
			</div>
			<div class="col-md-4">
				<img src="imgs/meinv.jpg" alt="" class="photo">
				<div class="caption">
					<span class="badge">吃饭</span>
					<p>想法：我们一起去吃好吃的吧</p>
					<%
						if (u == null) {
					%>
					<a href="./user/userLogin.jsp">详情》</a>
					<%
						} else {
					%>
					<a href="#">详情》</a>
					<%
						}
					%>
				</div>
				<div class="loc-time">
					<small>
						<p class="loc">上海</p>
						<p class="time">2015-12-12</p> </small>
				</div>
			</div>
		</div>
	</div>
	<div class="between">
		<img src="imgs/heart1.png"> <span class="span1">照片秀，一起秀恩爱</span>
		<span class="span2">你，还在等什么</span>
	</div>
	<div class="container content3">
		<div class="contentbody">
			<div class="titlebar">
				<h2 class="title">照片秀</h2>
				<a href="#" target="_blank" class="more" style="float:right;">查看更多
					»</a>
			</div>
			<div class="row">
				<div class="photo-left">
					<img src="head/吴彦祖.jpg">
				</div>
				<div class="ul-div">
					<ul>
						<li>
							<div class="li-div">
								<img src="head/陈意涵.jpg">
							</div></li>
						<li>
							<div class="li-div">
								<img src="head/梁朝伟.jpg">
							</div></li>
						<li>
							<div class="li-div">
								<img src="head/刘亦菲.jpg">
							</div></li>
						<li>
							<div class="li-div">
								<img src="head/刘德华.jpg">
							</div></li>
					</ul>
				</div>
				<div class="ul-div">
					<ul>
						<li>
							<div class="li-div">
								<img src="head/陈意涵.jpg">
							</div></li>
						<li>
							<div class="li-div">
								<img src="head/梁朝伟.jpg">
							</div></li>
						<li>
							<div class="li-div">
								<img src="head/刘亦菲.jpg">
							</div></li>
						<li>
							<div class="li-div">
								<img src="head/刘德华.jpg">
							</div></li>
					</ul>
				</div>
				<i class="line1"></i> <img src="imgs/lovefont.png" class="lovefont">
				<span class="shuzi">爱<br>要<br>勇<br>敢<br>秀<br>出<br>来</span>
			</div>
		</div>
	</div>
	<div class="erweima">
		<img src="imgs/erweima.png"> <span class="badge">扫我看女神</span>
	</div>
	<div class="footer">
		<hr>
		<p>
			© guanguanzu 2015华中科技大学研究生<br>管振航，田森，曾大海，韩盛，罗丹<br>倾情制作
		</p>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户登录</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6"
							style="padding-right:0px;padding-left:50px;padding-top:10px;width:52%;">
							<form class="form-horizontal" role="form" id="modal-form"
								action="user_userLogin">
								<label>会员登录</label>
								<div class="form-group col-xs-12">
									<input type="email" name="user.UserId"
										class="form-control input-sm" id="inputEmail"
										placeholder="用户ID">
								</div>
								<div class="form-group col-xs-12">
									<input type="password" name="user.PassWord"
										class="form-control input-sm" id="inputPassword"
										placeholder="密码">
								</div>
								<div class="form-group col-xs-12 loginauto">
									<div class="checkbox">
										<input type="checkbox">自动登录 <a>忘记密码？</a>
									</div>
								</div>
								<div class="form-group col-xs-12">
									<button type="submit" class="btn btn-danger col-xs-5">登录</button>
									<button type="submit" class="btn btn-info col-xs-6"
										style="float:right;">免费注册</button>
								</div>
							</form>
						</div>
						<div class="col-md-6" style="width:40%;padding-left: 0px;">
							<img src="imgs/login1.png" style="width:200px;height:250px;">
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/jquery.validate.message.js"></script>
	<script type="text/javascript">
		//开始验证
		$().ready(function() {
			
			$("#loginform,#modal-form").validate({
				rules : {
					password : {
						required : true
					},
					email : {
						required : true,
						email : true
					}
				},
				//设置提示信息
				messages : {
					email : {
						required : "邮箱不能为空",
						email : "输入正确的邮箱格式"
					},
					password : {
						required : "密码不能为空"
					}
				}
			});
			var loglink = $("#logdiv");
			loglink.mouseover(function() {
				$("#log").css("display", "block");
				$("#img1").css("margin-top", "2px");
			})
			loglink.mouseout(function() {
				$("#log").css("display", "none");
				$("#img1").css("margin-top", "20px");
			})
			
		});
	</script>
</body>
</html>
