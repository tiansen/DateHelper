function validate_form(){
	//账户信息
	var useremail=document.getElementById("useremail");
	var promptemail=document.getElementById("promptemail");
	var userpwd=document.getElementById("userpwd");
	var promptpwd=document.getElementById("promptpwd");
	var username=document.getElementById("username");
	var promptname=document.getElementById("promptname");
	var promptage=document.getElementById("promptage");
	/*交友信息*/
	
	/*
	//性别不需要验证
	var sex=document.getElementsByName("sex");
	var strsex;
	for(var i=0;i<sex.length;i++){
		if(sex[i].checked){
			strsex=sex[i].value;
		}
	}
	alert(strsex);

	*/
	//年龄
	var age=document.getElementById("age");
	var mobile=document.getElementById("mobile");
	//地址

	var seachprov=document.getElementById("seachprov");
	var provindex=seachprov.selectedIndex;
	var seachcity=document.getElementById("seachcity");
	var cityindex=seachcity.selectedIndex;
	var seachdistrict=document.getElementById("seachdistrict");
	var districtindex=seachdistrict.selectedIndex;
	//获取地名   alert(area_array[seachprov.options[provindex].value]);
	
	//交友宣言
	var introInfobyself=document.getElementById("introInfobyself");
	var introInfobyother=document.getElementById("introInfobyother");

		
	var emailReg=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
	var emailcheck=emailReg.test(useremail.value);
	var userpwdReg=/^[a-zA-Z]\w{5,17}$/;
	var userpwdcheck=userpwdReg.test(userpwd.value);
	var usernameReg=/^[\u4E00-\u9FA5]{2,5}$/;//^\u4e00-\u9fa5$/;
	var usercheck=usernameReg.test(username.value);
	var ageReg=/^([0-9]|[0-9]{2}|100)$/;
	var agecheck=ageReg.test(age.value);
	var mobileReg=/(\d{11})|^((\d{7,8})|(\d{4}|\d{3})-(\d{7,8})|(\d{4}|\d{3})-(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1})|(\d{7,8})-(\d{4}|\d{3}|\d{2}|\d{1}))$/;
	var mobilecheck=mobileReg.test(mobile.value)
	
	if(useremail.value==""){
		promptemail.innerHTML="请输入您的邮箱！";
		promptemail.style.display="block";
		useremail.focus();
		return false;
	}
	else if((!emailcheck)){
		alert("邮箱格式输入不正确！");
		return false;
		
	}
	else if(username.value==""){
		promptname.innerHTML="请输入您的真实姓名！简体中文";
		promptname.style.display="block";
		username.focus();
		return false;
	}
	else if(!usercheck){
		alert("姓名格式输入不正确！");
		return false;
	}
	else if(userpwd.value==""){
		promptpwd.innerHTML="请输入您的密码！";
		promptpwd.style.display="block";
		userpwd.focus();
		return false;
	}
	else if(!userpwdcheck){
		alert("密码输入格式不正确！");
		return false;
	}
	else if(age.value==""||!agecheck){
		alert("您的年龄未输入或格式不正确！");
		return false;
	}
	else if(mobile.value==""||!mobilecheck){
		alert("您的号码未输入或格式不正确！");
		return false;
	}
	else if((seachprov.options[provindex].value==0)||(seachcity.options[cityindex].value==0)){
		alert("城市选择有误！");
		return false;
	}
	else if(introInfobyself.value==""||introInfobyother.value==""){
		alert("请输入您的交友宣言！");
		return false;
	}
	return true;
}