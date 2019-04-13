<%-- 
    Document   : logout
    Created on : Mar 25, 2019, 7:39:25 PM
    Author     : 95ankitmishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           // session.invalidate();
            request.getSession(false).invalidate();
            response.sendRedirect("../index.jsp");
                %>
    </body>
</html>
