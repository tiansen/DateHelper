function changediv(id){
	$(id).show();
	$(id).prevAll().hide();
	$(id).nextAll().hide();
}
function changestylecol(id){
	$(id).css("background","#eee");
	$(id).prevAll().css("background","#fff");
	$(id).nextAll().css("background","#fff");
}
function changestylerow(id){
	$(id).css("background","#eee");
	$(id).prevAll().css("background","#FB76C5");
	$(id).nextAll().css("background","#FB76C5");
}