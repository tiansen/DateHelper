function yuehvalid(){
	var yuehmain=$(".releasedateinfo tr");
	for(var i =0;i<yuehmain.length-1;i++){
		if($(yuehmain[i]).find("input").val()==""){
			alert($(yuehmain[i]).find("label").text().trim()+"不能为空")
			$(yuehmain[i]).find("input").focus();
			 return false;   
		}	
	}
	return true;
}