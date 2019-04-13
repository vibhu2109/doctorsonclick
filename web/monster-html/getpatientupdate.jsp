<%-- 
    Document   : getpatientupdate
    Created on : Apr 1, 2019, 11:47:53 PM
    Author     : 95ankitmishra
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String fname=request.getParameter("name1");
            String lname=request.getParameter("name2");
            String gen=request.getParameter("gender");
            String address1=request.getParameter("add");
            String mob=request.getParameter("mob");
       
            String pid=request.getParameter("hf");
             Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick","root","");
                   Statement stmt=con.createStatement();
                   int i=stmt.executeUpdate("update patients set pfname='"+fname+"',plname='"+lname+"',gender='"+gen+"',address='"+address1+"',mobile='"+mob+"' where pid='"+pid+"'");
                   if(i>0)
                   {
                       out.println("<script type='text/javascript'>alert('data updated');window.location.href='myprofile.jsp';</script>");
                   }
                   else
                   {
                          out.println("<script type='text/javascript'>alert('data not updated');window.location.href='../index.jsp';</script>");
                   }
        %>
    </body>
</html>
