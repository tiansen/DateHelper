 package com.teamwork.smartupload;
 
 import java.io.IOException;
 import java.io.PrintWriter;
 import javax.servlet.ServletConfig;
 import javax.servlet.ServletException;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 
 public class ServletUpload extends HttpServlet
 {
   private ServletConfig config;
 
   public final void init(ServletConfig config)
     throws ServletException
   {
     this.config = config;
   }
 
   public final ServletConfig getServletConfig()
   {
     return this.config;
   }
 
   public void doGet(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
   {
     PrintWriter out = response.getWriter();
     out.println("<HTML>");
     out.println("<BODY BGCOLOR='white'>");
/* 40 */     out.println("<H1>jspSmartUpload : Servlet Sample</H1>");
     out.println("<HR><BR>");
     out.println("The method of the HTML form must be POST.");
/* 43 */     out.println("</BODY>");
/* 44 */     out.println("</HTML>");
   }
 
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException
   {
     PrintWriter out = response.getWriter();
     out.println("<HTML>");
     out.println("<BODY BGCOLOR='white'>");
/* 56 */     out.println("<H1>jspSmartUpload : Servlet Sample</H1>");
     out.println("<HR>");
 
     int count = 0;
     SmartUpload mySmartUpload = new SmartUpload();
     try
     {
       mySmartUpload.initialize(this.config, request, response);
 
       mySmartUpload.upload();
 
       count = mySmartUpload.save(mySmartUpload.getRequest().getParameter("PATH"));
 
       out.println(count + " file uploaded.");
     }
     catch (Exception e)
     {
       out.println("Unable to upload the file.<br>");
       out.println("Error : " + e.toString());
     }
 
/* 85 */     out.println("</BODY>");
/* 86 */     out.println("</HTML>");
   }
 
   public void destroy()
   {
   }
 }

/* Location:           C:\Documents and Settings\Administrator\桌面\新建文件夹 (2)\WEB-INF\classes\
 * Qualified Name:     smartupload.ServletUpload
 * JD-Core Version:    0.5.3
 */