		
function style(){
			var useremail=document.getElementById("useremail");
			var promptemail=document.getElementById("promptemail");
			var userpwd=document.getElementById("userpwd");
			var promptpwd=document.getElementById("promptpwd");
			var username=document.getElementById("username");
			var promptname=document.getElementById("promptname");
			var btnself=document.getElementById("self");
			var btnother=document.getElementById("other");
			var introInfo1=document.getElementById("introInfo1");
			var introInfo2=document.getElementById("introInfo2");
			var btn=document.getElementById("submit");
			
			useremail.onfocus=function(){
				 if(useremail.value!=""){
				 	promptemail.style.display="none";
				 }else{
				 	promptemail.style.display="block";
				 }				    		
			}
			// useremail.onblur=function(){
			// 	if(useremail.value!=""){
			// 		promptemail.style.display="none";
			// 	 }		
			// }
			userpwd.onfocus=function(){
				if(userpwd.value!=""){
					promptpwd.style.display="none";
				}else{
					promptemail.style.display="none";
					promptpwd.style.display="block";
				}
			
			}
			userpwd.onblur=function(){
				promptpwd.style.display="none";
			}
			username.onfocus=function(){
				if(username.value!=""){
					promptname.style.display="none";
				}else{
					promptemail.style.display="none";
					promptname.style.display="block";
				}
	
			}
			username.onblur=function(){
				promptname.style.display="none";
			}
			btnself.onclick=function(){
				introInfo1.style.display="block";
				introInfo2.style.display="none";
				btnself.style.background="#fff";
				btnother.style.background="#ddd";
				btnself.style.borderBottomColor="#fff";
				btnother.style.borderBottomColor="gray";
			}
			btnother.onclick=function(){
				introInfo1.style.display="none";
				introInfo2.style.display="block";
				btnself.style.background="#ddd";
				btnother.style.background="#fff";
				btnother.style.borderBottomColor="#fff";
				btnself.style.borderBottomColor="gray";
			}

}
	