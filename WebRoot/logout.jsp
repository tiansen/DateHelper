<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<html>
<link href="style/Style.css" rel="stylesheet" type="text/css"/>
  <head>
  </head>
  
  <body>
  <%
session.removeAttribute("user");
out.println("<script>");
out.println("window.top.location.href='index.jsp';");
out.println("</script>");
%>
  </body>
</html>
