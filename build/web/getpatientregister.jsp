<%-- 
    Document   : getpatientregister
    Created on : Mar 8, 2019, 2:22:43 AM
    Author     : Ankit Mishra
--%>

<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="DOCDao.patientregisterDao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="DOCPojo.patientPojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          
        <%
            MultipartRequest multipartRequest=new MultipartRequest(request,"E:/Netbeans/DoctorsOnClick/web/image");
            String image=multipartRequest.getFile("img").getName();
         patientPojo str=new patientPojo();
         str.setPfname(multipartRequest.getParameter("first_name").toString());
         str.setPlname(multipartRequest.getParameter("last_name").toString());
         str.setPemail(multipartRequest.getParameter("email").toString());
         str.setGender(multipartRequest.getParameter("gender").toString());
         str.setPpass(multipartRequest.getParameter("Password").toString());
         str.setMobile(multipartRequest.getParameter("phone").toString());
         str.setAddress(multipartRequest.getParameter("text").toString());
         str.setImage(image);
          Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick","root","");
         Statement stmt=con.createStatement();
         ResultSet rs=stmt.executeQuery("select count(*) from patients where pemail='"+str.getPemail()+"' ");
         rs.next();
         int i=rs.getInt(1);
         System.out.println(i);
         if(i>0)
         {
             out.println("<script type='text/javascript'>alert('already registered');window.location.href='patientsignup.html';</script>");
         }
         else 
         {
             patientregisterDao d=new patientregisterDao();
            int j=d.Insert(str);
                   if(j>0)
                   {
                       out.println("<script type='text/javascript'>alert('successfully register');window.location.href='index.jsp';</script>");
                   }
                   else
                   {
                          out.println("<script type='text/javascript'>alert('not register');window.location.href='index.jsp';</script>");
                   }
         
         }
         
          
          
          
          
        %>
    </body>
</html>
