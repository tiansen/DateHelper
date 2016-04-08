function loadpage(url){
	$(".u-main").load(url);
}
function idloadpage(url){
	$(".u-main").load(url);
}
function loadpageuser(url){
	$(".contentcol").show();
	$(".contentrow").hide();
	$(".middlecon").load(url);

}
function loadnavpage(url){
	$(".contentcol").hide();
	$(".contentrow").show();
	$(".contentrow").load(url);
}