<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'register.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="./css/register.css">
<title>register</title>
<script src="./js/style.js"></script>

<script src="./jquery/jquery.js"></script>
<script src="./js/areaCtrl.js"></script>
<script src="./js/Area.js"></script>
<script src="./js/AreaData_min.js"></script>
<script src="./js/valid.js"></script>
<script src="./js/getArea.js"></script>
<script>
		window.onload=function(){		
			style();
			initComplexArea('seachprov', 'seachcity', 'seachdistrict', area_array, sub_array, '42', '0', '0');
		}
		//日期
</script>
</head>
<body>
	<div class="register">
		<div class="header">
		<a href="./index.jsp"><img src="./imgs/logo.jpg" /></a>
			
		</div>
		<div class="content">
			<div class="webInfo">
				<h2>
					立即注册约会帮帮忙
					<h2>
			</div>
			<div class="userInfo">
				<form action="user_addUser" class="reg" name="form1" method="post"
					onsubmit="return validate_form()">
					<p class="account">
						<span>您的账户信息<span>
					</p>
					<div class="basicInfo">
						<p class="useremail">
							注册邮箱:<input type="text" id="useremail" name="user.Email" />
						<div id="promptemail">
							请输入您常用的邮箱地址 如果您没有邮箱，推荐您使用以下邮箱，它将成为您未来的登录账号： <a
								href="http://reg.email.163.com/unireg/call.do?cmd=register.entrance">网易</a>
							<a
								href="http://mail.qq.com/cgi-bin/loginpage?templatename=regist">QQ</a>
						</div>
						</p>
						<p class="username">
							姓名:<input type="text" id="username" name="user.UserName">
						<div id="promptname">请输入您的真实姓名！请用简体中文</div>
						</p>
						<p class="userpwd">
							密码:<input type="password" id="userpwd" name="user.PassWord" />
						<div id="promptpwd">以字母开头，长度在6-18之间，只能包含字符、数字和下划线。</div>
						</p>
					</div>
					<p class="account">
						<span>您的交友档案<span>
					</p>
					<div class="makeFriendInfo">
						<p class="sex">
							您是:<input type="radio" name="user.Sex" id="man" checked="checked"
								value="0" />男 <input type="radio" name="user.Sex" id="woman"
								value="1">女 <span>(注册后性别不可更改)<span>
						</p>
						<p class="birth">
							年龄: <input type="text" name="user.Age" id="age">
						</p>
						<p class="tel">
							电话: <input type="text" name="user.Mobile" id="mobile">
						</p>
						<p class="area">
							所在地区: <select id="seachprov" name="seachprov"
								onchange="changeComplexProvince(this.value, sub_array, 'seachcity', 'seachdistrict');">
							</select> <select id="seachcity" name="homecity"
								onchange="changeCity(this.value,'seachdistrict','seachdistrict');">
							</select><span id="seachdistrict_div"> <select id="seachdistrict"
								name="seachdistrict">
							</select>
							</span>
						</p>
						<p class="height">
							身高: <select id="height">
								<option value="low">150cm以下</option>
								<option value="150">150cm</option>
								<option value="151">151cm</option>
								<option value="152">152cm</option>
								<option value="153">153cm</option>
								<option value="154">154cm</option>
								<option value="155">155cm</option>
								<option value="156">156cm</option>
								<option value="157">157cm</option>
								<option value="158">158cm</option>
								<option value="159">159cm</option>
								<option value="160">160cm</option>
								<option value="161">161cm</option>
								<option value="162">162cm</option>
								<option value="163">163cm</option>
								<option value="164">164cm</option>
								<option value="165">165cm</option>
								<option value="166">166cm</option>
								<option value="167">167cm</option>
								<option value="168">168cm</option>
								<option value="169">169cm</option>
								<option value="170">170cm</option>
								<option value="171">171cm</option>
								<option value="172">172cm</option>
								<option value="173">173cm</option>
								<option value="174">174cm</option>
								<option value="175" selected="selected">175cm</option>
								<option value="176">176cm</option>
								<option value="177">177cm</option>
								<option value="178">178cm</option>
								<option value="179">179cm</option>
								<option value="180">180cm</option>
								<option value="181">181cm</option>
								<option value="182">182cm</option>
								<option value="183">183cm</option>
								<option value="184">184cm</option>
								<option value="185">185cm</option>
								<option value="186">186cm</option>
								<option value="187">187cm</option>
								<option value="188">188cm</option>
								<option value="189">189cm</option>
								<option value="190">190cm</option>
								<option value="high">190cm以上</option>

							</select>
						</p>
						<p class="marry">
							婚姻状况: <select id="marry" name="user.MaritalStatus">
								<option value="0" selected="selected">未婚</option>
								<option value="1">已婚</option>
								<option value="2">离异</option>
							</select>
						</p>
						<p class="intro">
							自我介绍: <span id="self">自己写</span> <span id="other">帮你写</span>
						</p>
						<div id="introInfo1">
							<textarea name="" id="introInfobyself" cols="29" rows="8"
								placeholder="写下自己的好友宣言吧！给好友留个好印象！"></textarea>
						</div>
						<div id="introInfo2">
							<ul>
								<li>我的性格特点是:<input type="text" />
								</li>
								<li>业余时间我喜欢:<input type="text" />
								</li>
								<li>我憧憬的生活是:<input type="text" />
								</li>
								<li>此外我还想补充:<input type="text" />
								</li>
							</ul>
						</div>
						<input type="text" name="user.Address" id="areaStr" style="display: none;">
						<p class="sumbit">
							<button id="sumbit" onclick="getArea()">立即注册</button>
						</p>
					</div>
				</form>
			</div>
		</div>
		<div class="footer">
			<p>
				© guanguanzu 2015华中科技大学研究生</br>管振航，田森，曾大海，韩盛，罗丹</br>倾情制作
			</p>
		</div>
	</div>
</body>
</html>
