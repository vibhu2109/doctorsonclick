<%-- 
    Document   : getdocupdate
    Created on : Apr 1, 2019, 12:48:52 PM
    Author     : 95ankitmishra
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String fname=request.getParameter("first_name");
            String lname=request.getParameter("last_name");
            String gen=request.getParameter("gender");
            String pass=request.getParameter("password");
            String address1=request.getParameter("address");
            String mob=request.getParameter("phone");
            String doctype=request.getParameter("subject");
            String qly=request.getParameter("text");
            String special=request.getParameter("specialization");
            String exp=request.getParameter("experience");
            String fee=request.getParameter("confee");
            String time3=request.getParameter("time1");
            String time4=request.getParameter("time2");
            String city=request.getParameter("city");
            String did=request.getParameter("hf");
             Class.forName("com.mysql.jdbc.Driver");
                   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick","root","");
                   Statement stmt=con.createStatement();
                   int i=stmt.executeUpdate("update doctors set dfname='"+fname+"',dlname='"+lname+"',gender='"+gen+"',specialization='"+special+"',experience='"+exp+"',qualification='"+qly+"',address='"+address1+"',doc_type='"+doctype+"',mobile='"+mob+"',con_fee='"+fee+"',password='"+pass+"',available_from='"+time3+"',available_to='"+time4+"',city='"+city+"' where did='"+did+"'");
                   if(i>0)
                   {
                       out.println("<script type='text/javascript'>alert('data updated');window.location.href='docprofile.jsp';</script>");
                   }
                   else
                   {
                          out.println("<script type='text/javascript'>alert('data not updated');window.location.href='../index.jsp';</script>");
                   }
        %>
    </body>
</html>
