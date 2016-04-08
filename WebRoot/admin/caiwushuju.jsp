<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'caiwushuju.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<body >
<div class="content" >

    <div class="chartcw"></div>
    <table class="table table-striped mytable3 table-bordered">
        <tr>
            <th>月份</th>
            <th>服务购买数</th>
            <th>营收（单位：万元）</th>
            <th>详情</th>
        </tr>
        <tr>
            <td>1月</td>
            <td>300</td>
            <td>70</td>
            <td><button class="btn btn-default orderlist" id="order1">查看订单列表</button></td>
        </tr>
        <tr>
            <td>2月</td>
            <td>200</td>
            <td>90</td>
            <td><button class="btn btn-default orderlist" id="order2">查看订单列表</button></td>
        </tr>
        <tr>
            <td>3月</td>
            <td>250</td>
            <td>60</td>
            <td><button class="btn btn-default orderlist" id="order3">查看订单列表</button></td>
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
<div class="hidden_orderinfo" style="display:none">
    <div class="title"><h4>订单详情---<span id="month"></span></h4></div>
    <a href="javascript:loadpage('./admin/caiwushuju.jsp')" class="pull-right">返回财务数据页</a>
    <table class="table table-striped mytable3 table-bordered">
        <tr>
            <th>订单ID</th>
            <th>服务ID</th>
            <th>用户ID</th>
            <th>购买时间</th>
            <th>金额</th>
        </tr>
        <tr>
            <td>25444</td>
            <td>03</td>
            <td>2334</td>
            <td>2015-01-23</td>
            <td>300</td>
        </tr>
    </table>
</div>
  <script type="text/javascript">
    $(function(){
         showchartcw();
          $(".orderlist").click(function(){
             $(".content").hide();
            $(".hidden_orderinfo").show();
             $("#month").text($(this).attr("id").substr(5,1)+"月");
         }); 
    })
  </script>
</body>
</html>
