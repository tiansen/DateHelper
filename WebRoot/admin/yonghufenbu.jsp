<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'yonghufenbu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 
<body>
<div class="content">
    <div class="chart11"></div>
    <div class="chart22"></div>
    <button class="btn btn-info btn-xs showper" style="position: absolute;margin-top: 220px;margin-left: -560px;">查看详细列表</button>
    <div id="hidden_table" style="margin-top: -4px;display:none;">
    <table class="table table-striped mytable5 table-bordered">
        <tr>
            <th>用户名</th>
            <th>性别</th>
            <th>城市</th>
            <th>单身情况</th>
        </tr>
        <tr>
            <td>打啊打</td>
            <td>男</td>
            <td>武汉</td>
            <td>是</td>
        </tr>
        <tr>
            <td>哈哈</td>
            <td>女</td>
            <td>上海</td>
            <td>否</td>
        </tr>
        <tr>
            <td>咪咪</td>
            <td>女</td>
            <td>深圳</td>
            <td>否</td>
        </tr>
    </table>
    <nav class="pull-right table_fenye">
        <ul class="pagination pagination-sm">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
    </div>
</div>
<script type="text/javascript"> 
	$(function(){
	 	showuserchart();
	 	$(".showper").click(function(){
        if($(".showper").text()=="查看详细列表"){
            $(".showper").text("收起详细列表");
        }else if($(".showper").text()=="收起详细列表"){
            $(".showper").text("查看详细列表");
        }
        $("#hidden_table").toggle();
   		 });
	});  
</script>
   <script src="./Highcharts-4.0.1/js/highcharts.js"></script>
</body>
</html>