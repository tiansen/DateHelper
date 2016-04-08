<%@ page language="java" import="java.util.*,com.teamwork.entity.*"
	pageEncoding="utf-8"%>
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

<title>My JSP 'huiyuan.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="./css/huiyuan.css" rel="stylesheet">
<script src="./bootstrap/js/html5.min.js"></script>
<script src="./bootstrap/js/respond.min.js"></script>
<script src="./js/changediv.js"></script>
<script type="text/javascript">
	function updateyinhangka() {
		$("#inputyinhangka").removeAttr("disabled");
		$("#inputyinhangka").focus();
		$("#inputyinhangka").removeAttr("placeholder");
	}
	function save() {
		$("#inputyinhangka").attr("disabled", "disabled");
	}
</script>
<style type="text/css">
.update .mytable{
	margin-top:-8px;
}
	.update .mytable tr td label{
		width:80px;
	}
	.update .mytable tr{
		height:45px;
	}
</style>
</head>
<body>

	<%
		User uifo = (User) session.getAttribute("user");
	%>
	<div class="container">
		<div class="lefthy">
			<div class="left-bottom">
				<img style="margin-left: 0px;" src="./imgs/huiyuan1.png" alt="" />
				<ul class="nav nav-tabs nav-stackedhy">
					<li id="vipmsg"><a
						href="javascript:changediv('#tab1');changestylecol('#vipmsg');"><span
							class="glyphicon glyphicon-user"></span>我的会员信息</a></li>
					<li id="modifymsg"><a
						href="javascript:changediv('#tab2');changestylecol('#modifymsg');"><span
							class="glyphicon glyphicon-pencil"></span>修改会员资料</a></li>
					<li id="setaccount"><a
						href="javascript:changediv('#tab3');changestylecol('#setaccount');"><span
							class="glyphicon glyphicon-cog"></span>账户设置</a></li>
				</ul>
				<img src="./imgs/huiyuan2.png" alt="" style="margin-left:0px;"/>
			</div>
		</div>
		<div class="middlehy" style="overflow: hidden;">
			<div class="middlehy" id="tab1">
				<table class="mytable mytable1">
					<!-- hs修改于2015/3/16 -->
					<tr>
						<td>会员名：</td>
						<td><span>${user.userName }</span>
						</td>
					</tr>
					<tr>
						<td>性别：</td>
						<td><c:if test="${user.sex eq 0}">男</c:if> <c:if
								test="${user.sex eq 1}">女</c:if>
						</td>
					</tr>
					<tr>
						<td>头像</td>
						<td><img src="${user.image }" alt="" width="50" height="50"/></td>
					</tr>
					<tr>
						<td>毕业学校：</td>
						<td>华中科技大学</td>
						<td>居住地：</td>
						<td>${user.address }</td>
					</tr>

					<tr>
						<td>Email：</td>
						<td><span> ${user.email }</span></td>
						<td>注册时间：</td>
						<td>${user.regTime}</td>
					</tr>

					<tr>
						<td>电话：</td>
						<td>${user.mobile}</td>
						<td>余额：</td>
						<td>${user.account}</td>
					</tr>



					<tr>
						<td>真实姓名：</td>
						<td>${user.realName}</td>
						<td>婚姻状况：</td>
						<td><c:if test="${user.maritalStatus eq 0}">单身</c:if> <c:if
								test="${user.maritalStatus eq 1}">非单身</c:if></td>
					</tr>

					<tr>
						<td>年龄：</td>
						<td>${user.age}</td>

					</tr>

				</table>
			</div>
			<div class="middlehy" id="tab2">
				<form action="user_updateUser" class="update" name="form"
					method="post" enctype="multipart/form-data" style="margin-left:40px;">
					<table class="mytable" >
						<tr>
							<td><label for="inputtitle">会员名：</label></td>
							<td><input type="text" id="username" name="user.userName"
								placeholder="会员名" value="${user.userName}">
							</td>
						</tr>
						<tr>
							<td>性别：</td>
							<td><input type="radio" name="user.sex" id="sex_man"
								value="0">男 <input type="radio" name="user.sex"
								id="sex_woman" value="1">女</td>
						</tr>
						<tr>
							<td>头像:</td>
							<td><img src="${user.image }" alt=""  width="50" height="50"/><input type="file" id="file" name="file" value="${user.image }"/></td>
						</tr>
						<tr>
							<td>居住地：</td>
							<td><input type="text" id="useraddress" name="user.address"
								placeholder="居住地" value="${user.address}" /></td>
						</tr>
						<tr>
							<td>邮箱：</td>
							<td><input type="text" id="useremail" name="user.email"
								placeholder="xxxxxxxx@xxx.com" value="${user.email}"/ >
							</td>
						</tr>

						<tr>
							<td>电话：</td>
							<td><input type="text" id="usermobile" name="user.mobile"
								placeholder="13xxxxxxxxx" value="${user.mobile}" /></td>
							
						</tr>
						<tr>
							<td>真名：</td>
							<td><input type="text" id="userrealName"
								name="user.realName" placeholder="请输入中文"
								value="${user.realName}" /></td>
						</tr>


						<tr>
							<td>年龄：</td>
							<td><input type="text" id="userage" name="user.age"
								placeholder="26" value="${user.age}" /></td>
							<br>
						</tr>
						<tr>
							<td>婚姻状况：</td>
							<td><input type="radio" name="user.maritalStatus"
								id="maritalStatus_no" value="0">否 <input type="radio"
								name="user.maritalStatus" id="maritalStatus_yes" value="1">是
							</td>

							
						</tr>
						<tr>
							<td></td>
							<td>
								<button id="sumbit">修改个人信息</button>
						</tr>
					</table>
				</form>
			</div>
			<div class="middlehy" id="tab3">
				<table class="mytable">
					<tr>
						<td>会员账号：</td>
						<td><span>zzloveld</span></td>
					</tr>
					<tr>
						<td>会员余额：</td>
						<td><span>998</span></td>
					</tr>
					<tr>
						<td>关联银行卡：</td>
						<td><input id="inputyinhangka" type="text"
							placeholder="676786767868****6767" disabled /></td>
					</tr>
					<tr>
						<td><a onclick="updateyinhangka()">修改绑定银行卡</a></td>
						<td><button class="pull-right btn-info" onclick="save()">保存</button>
						</td>
					</tr>
				</table>
			</div>
		</div>

	</div>
</body>
</html>