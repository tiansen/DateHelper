/**
 * Created by zzld on 15/3/11.
 */

$(document).ready(function(){
     var tag;
     var sel;
     var persel;
    $(".hidden-per").hide();
    var select_name;
    $(".queding").click(function(){
        select_name = $("input[name='radioname']:checked").val();
        //$("#div"+id.substr(3,1)).text(select_name.substr(0,2));

        $(tag).text(select_name.substr(0,2));
        $(".hidden-per").hide();
    });
    $(".per-btn").click(function(){
        $(".hidden-per").show();
        var tr_td = $(this).parent().parent().children();
        var td=tr_td[4];
        tag=td.firstChild;
        sel=tr_td[3].firstChild;
        id=$(tr_td[6]).text().trim();
    	sex=$(tr_td[1]).text().trim();
    	var sexnum= sex=="男"?sex="0":sex="1";
        findRightUser(id,sexnum);
      
    });
    $(".quxiao").click(function(){
        $(".hidden-per").hide();
    });
    $(".tuisongbtn").click(function(){
        var tr_td = $(this).parents(".listinfo").children();
        sel=tr_td[3].firstChild;
        persel=$(tr_td[4]).children();
        var now_select = sel.options[sel.selectedIndex];
       
        var userid=$(tr_td[6]).text().trim();
        var serviceid=$(now_select).val();
        var tuisongid;
        if(select_name !=null){
       	tuisongid=select_name;
        }else{
        	tuisongid=0;
       }
//       alert(userid+" "+serviceid+" "+tuisongid);
       $.ajax({
           url:"order_addTuiSongOrder",
           type:"POST",
           data:"userId="+userid+"&"+"serviceid="+serviceid+"&"+"tuisongid="+tuisongid,
           dataType:'json',
           async: false,
           success:showmessage,
           error:errorpage
   	   });	
        
        
        
        if(select_name != null){
            alert("推送成功,信息为："+$(tr_td[0]).text().trim()+"|"+$(tr_td[1]).text().trim()+"|"+$(tr_td[2]).text().trim()+"|"+$(now_select).text().trim()+"|"+select_name);
           
        }else{
            alert("推送成功,信息为："+$(tr_td[0]).text().trim()+"|"+$(tr_td[1]).text().trim()+"|"+$(tr_td[2]).text().trim()+"|"+$(now_select).text().trim()+"|"+"没选人");
          
        }
        $(this).css({"background-color":"yellow"});
        $(this).attr("disabled",true);
        $(sel).attr("disabled",true);
       $(persel[1]).attr("disabled",true);
    });

    var tb_2 = $(".danshen");
    var tb_4 = $(".per-btn");
    for(var i = 0;i< tb_2.length;i++){
        if($(tb_2[i]).text().trim()!="单身"){
                $(tb_4[i]).css("background-color","#eeeeee");
                $(tb_4[i]).attr("disabled",true);
        }
    }
});
//function addTuiSongOrder(userid,serviceid,tuisongid){
//
//}
function findRightUser(id,sex){
	 $.ajax({
         url:"user_findRightUser",
         type:"POST",
         data:"id="+id+"&"+"sex="+sex,
         dataType:'json',
         async: false,
         success:showmessage,
         error:errorpage
 	   });	
	
}
function success(data){
	alert(data);
}

function showmessage(data){
	$.each(data.result.entityList,function(i,value){  
		//开始循环显示
		if(value.userId!="1"&&value.image!=""&&i<5){

			$(".perimg"+i).find("img").attr("src","./"+value.image);
			$(".perimg"+i).find("input").val(value.userId);
			$(".perimg"+i).find("span").text(value.userId);
			$(".perimg"+i).parent("li").show();
		}
		else if(i>=5){
			$(".uppage").show();
			$(".downpage").show();
			
		}
	 }); 
		
}
function errorpage(data,status){
	alert(status);
}