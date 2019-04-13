<%-- 
    Document   : bookappoint
    Created on : Apr 9, 2019, 10:34:41 AM
    Author     : 95ankitmishra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
            String did= request.getParameter("did");
            String pid= request.getParameter("pid");
            String d = request.getParameter("date");
            String hr1 = request.getParameter("hr");
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick", "root", "");
            Statement stmt = con.createStatement();
            
        int i=stmt.executeUpdate("insert into appointment(pid,did,A_time,A_date) values('"+pid+"','"+did+"','"+hr1+"','"+d+"')");
        if(i>0)
        {
             out.println("<script type='text/javascript'> alert('Thank You! Appointment successfully Booked'); window.location.href='myview.jsp?p="+pid+"&d="+did+"' ; </script>");
        }
        else
        {
             out.println("<script type='text/javascript'>alert('Booking failed');window.location.href='myprofile.jsp';</script>");
        }
            %>
            
                            
         
                            
    </body>
</html>
