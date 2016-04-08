<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'userLogin.jsp' starting page</title>

	<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="./css/login.css" rel="stylesheet">
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="topwarp">
            <a href="./index.jsp"><img src="imgs/logo-love.png" class="img-responsive logo-img" alt=""/></a>
            <i class="line"></i>
            <span class="logo-font">相约更相爱</span>
            <img src="imgs/login-right.png" class="login-right">
        </div>

        <div class="content">
            <hr>
            <div class="content-body">
                <div class="left-father">
                    <div class="left">
                        <img src="imgs/login-page1.jpg">
                    </div>
                </div>
                <div class="form-right">
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<font color="red">${message}</font>
                    <form class="form-horizontal" role="form" id="loginform" action="user_userLogin" method="post">
                        <label class="badge">欢迎登录</label>
                        <div class="form-group">
                            <input type="text" name="user.UserId" class="form-control input-sm" id="inputEmail" placeholder="用户ID">
                        </div>
                        <div class="form-group">
                            <input name="user.passWord" type="passWord" class="form-control input-sm" id="inputPassword" placeholder="密码">
                        </div>
                        <div class="form-group">
                            <div class="checkbox">
                                <input type="checkbox">自动登录 <a href="">忘记密码？</a>
                            </div>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-danger col-xs-5">登录</button>
                            <button type="submit" class="btn btn-info col-xs-5" style="float:right;">免费注册</button>
                        </div>
                    </form>
                    <div class="login-down">
                        <p>一起来约~<img src="imgs/heart1.png"></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
        <hr>
        <p >© guanguanzu 2015华中科技大学研究生<br>管振航，田森，曾大海，韩盛，罗丹<br>倾情制作</p>
      </div>
    </div>
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/jquery.validate.min.js"></script>
<script src="bootstrap/js/jquery.validate.message.js">
</script>
    <script type="text/javascript">
        //开始验证
        $().ready(function(){
            $("#loginform,#modal-form").validate({
                rules: {
                    password: {
                        required: true
                    },
                    email: {
                        required: true,
                        email: true
                    }
                },
                //设置提示信息
                messages:{
                    email: {
                        required: "邮箱不能为空",
                        email: "输入正确的邮箱格式"
                    },
                    password:{
                        required:"密码不能为空"
                    }
                }
            });
        });
    </script>
</body>
</html>
