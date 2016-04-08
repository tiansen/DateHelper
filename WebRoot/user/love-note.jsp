<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'love-note.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="./css/love-note.css" rel="stylesheet">
    <script src="./bootstrap/js/html5.min.js"></script>
    <script src="./bootstrap/js/respond.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="./ueditor/umeditor_config.js"></script>
    <script type="text/javascript" charset="utf-8" src="./ueditor/editor.js"></script>
    <script type="text/javascript" src="./js/changediv.js"></script>
    <link rel="stylesheet" type="text/css"  href="./ueditor/themes/default/umeditor.css"/>
</head>
<body>
<div class="container">
    <div class="leftlove">
        <div class="left-bottom">
            <img style="margin-left:0px" src="./imgs/lianaibiji.png" alt=""/>
            <ul class="nav nav-tabs nav-stackedlove">
                <li id="mydatenote"><a href="javascript:changediv('#tab1');changestylecol('#mydatenote')"><span class="glyphicon glyphicon-heart"></span>我的恋爱笔记<span class="badge">42</span></a></li>
                <li id="pubnote"><a href="javascript:changediv('#tab2');changestylecol('#pubnote')"><span class="glyphicon glyphicon-pencil"></span>发表恋爱笔记</a></li>
            </ul>
        </div>
    </div>
    <div class="middlelove" style="overflow: hidden;">
        <div class="middlelove" id="tab1">
            <h3>恋爱笔记</h3>
            <ul class="note-content">
                <li>
                    <p class="note-title">周一</p>
                    <p class="note-body">婚纱尽快发货还翻江倒海放假啊看哈打开风华绝代
                        双方决定是否哈了点击发货的卷发大家饭卡是分离技术开发和见风使舵恢复建设的
                        <a href="#tab3">查看笔记👉</a><span class="pull-right">2012-12-21 08:05</span></p>
                </li>
                <li>
                    <p class="note-title">周一</p>
                    <p class="note-body">婚纱尽快发货还翻江倒海放假啊看哈打开风华绝代双方决定是否哈了点击发
                        货的卷发大家饭卡是分离技术开发和见风使舵恢复建设的<a href="#tab3">查看笔记👉</a><span class="pull-right">2012-12-21 08:05</span></p>
                </li>
                <li>
                    <p class="note-title">周一</p>
                    <p class="note-body">婚纱尽快发货还翻江倒海放假啊看
                        哈打开风华绝代双方决定是否哈了点击发货的卷发大家饭卡是分离技术开发和见风使舵恢复建设的
                        <a href="#tab3">查看笔记👉</a><span class="pull-right">2012-12-21 08:05</span></p>
                </li>
                <li>
                    <p class="note-title">周一</p>
                    <p class="note-body">婚纱尽快发货还
                        翻江倒海放假啊看哈打开风华绝代双方决定是否哈了点击发货的卷发大家饭卡是分离技术开发和见风使舵恢复建设的
                        <a href="#tab3">查看笔记👉</a><span class="pull-right">2012-12-21 08:05</span></p>
                </li>
                <li>
                    <p class="note-title">周一</p>
                    <p class="note-body">婚纱尽快发货还翻江倒海放假啊看哈打开风华绝代双方决定是否哈了点击发
                        货的卷发大家饭卡是分离技术开发和见风使舵恢复建设的<a href="#tab3">查看笔记👉</a><span class="pull-right">2012-12-21 08:05</span></p>
                </li>
            </ul>
            <nav>
                <ul class="pagination pull-right">
                    <li>
                        <a href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li>
                        <a href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="middlelove" id="tab2">
            <form class="form-horizontal">
                <div class="form-group">
                    <label for="inputtitle" class="col-sm-offset-1 col-sm-2 control-label">笔记名：</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" id="inputtitle" placeholder="输入笔记名">
                    </div>
                </div>
                <div class="form-group col-sm-10 write">
                    <script id="editor" type="text/plain" style="width:600px;height:300px"></script>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-5 col-sm-4">
                        <button type="submit" class="btn btn-info">保存恋爱笔记</button>
                    </div>
                </div>
            </form>
        </div>
        <div class="middlelove" id="tab3">
            <div class="notedetails">
                <p class="note-title">周一</p>
                <p class="note-body">婚纱尽快发货还翻江倒海放假啊看哈打开风华绝代
                双方决定是否哈了点击发货的卷发大家饭卡是分离技术开发和见风使舵恢复建设的
                婚纱尽快发货还翻江倒海放假啊看哈打开风华绝代
                双方决定是否哈了点击发货的卷发大家饭卡是分离技术开发和见风使舵恢复建设
                婚纱尽快发货还翻江倒海放假啊看哈打开风华绝代
                双方决定是否哈了点击发货的卷发大家饭卡是分离技术开发和见风使舵恢复建设
                </p>
            </div>
            <a class="btn btn-default btnback" href="#tab1">返回我的恋爱笔记</a>
        </div>
    </div>
</div>
<script src="./ueditor/ueditor.config.js"></script>
<script src="./ueditor/ueditor.all.js"></script>
<script type="text/javascript">
    var ue = UE.getEditor("editor");
</script>

</body>
</html>
