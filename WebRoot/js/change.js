$("#myrelease").click(function(){
	$("#release").css("display","block");
	$("#receive").css("display","none");
	$(this).css("background","#FB76C5");
	$("#myrecive").css("background","#bbb");
})
$("#myrecive").click(function(){
	$("#receive").css("display","block");
	$("#release").css("display","none");
	$(this).css("background","#FB76C5");
	$("#myrelease").css("background","#bbb");

})