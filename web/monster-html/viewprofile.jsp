<%-- 
    Document   : viewprofile
    Created on : Apr 8, 2019, 7:36:05 PM
    Author     : 95ankitmishra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="vp.css" rel="stylesheet">
	<style>
	body{
margin: 0 auto;
background-color:white;
background-repeat: no-repeat;
background-size: 100% 720px;
}
.container2{
width:67%;
height:500px;
margin-left: 205px;
border-color: solid black;
border-radius: 8px;
background-color:#e7e4e4;
border-color:1px solid black;
margin-top: 70px;

} 
.im{
width:190px;
height:190px;
margin-left: 45px;
border-color:red;
background-color:grey;
margin-top: 19px;
border-radius: 6px;
position:absolute;	
}
h1
{
	margin-left: 23px;;
	position:absolute;
	margin-top:219px;
	font-size: 50px;

}
p
{
     margin-left: 475px;
	font-family:monospace;
	font-size: 21px;	
}
h2
{
	margin-left: 645px;
	font-family:monospace;
	font-size: 21px;
}
h6
{
	margin-left: 17px;
	margin-bottom:12px;
	position: absolute;
	font-size: 12px;
	font-family: sans-serif;

}
h4
{
	margin-left: 37px;
	position: absolute;
	font-size: 19px;
	font-family: sans-serif;
}
.head
{
width:490px;
height:290px;
margin-left: 461px;
margin-top: -2px;
position:absolute;
}
table,th,td{
border: 1.5px solid black;
font-size: 18px;
font-family: sans-serif;
border-collapse: collapse;
padding: 13px;
text-align: left;
}
table#t1 tr:nth-child(even) {
	width:100%;
	height:100%;
  background-color: #eee;
}
table#t1 tr:nth-child(odd) {
	width:100%;
	height:100%;
 background-color: #fff;
	</style>
    </head>
    <body>
        <%
            String city2="";
            String special2="";
            String image = "";
            String dfname = "";
            String dlname = "";
            String qualification = "";
            String specialization = "";
            String email = "";
            String gender = "";
            String hospital = "";
            String mobile = "";
            String doctype = "";
            String experince = "";
            String fee = "";
            String from = "";
            String to = "";
            String city = "";
            String s="";
            String m="";
            String t="";
            String w="";
            String th="";
            String f="";
            String sa="";
            String did=request.getParameter("did");
            try{
            Connection con = DBConnection.DBConnection.getconnection();
              Statement  stmt = con.createStatement();
                 ResultSet rs=stmt.executeQuery("select * from doctors where did='"+did+"'");
                    
                    while (rs.next()) {
                    image = rs.getString(16);
                    dfname = rs.getString(2);
                    dlname = rs.getString(3);
                    qualification = rs.getString(7);
                    specialization = rs.getString(5);
                    email = rs.getString(12);
                    gender = rs.getString(4);
                    hospital = rs.getString(8);
                    mobile = rs.getString(10);
                    doctype = rs.getString(9);
                    experince = rs.getString(6);
                    fee = rs.getString(11);
                    from = rs.getString(14);
                    to = rs.getString(15);
                    city = rs.getString(17);
                    s=rs.getString(19);
                    m=rs.getString(20);
                    t=rs.getString(21);
                    w=rs.getString(22);
                    th=rs.getString(23);
                    f=rs.getString(24);
                    sa=rs.getString(25);
        %>
    	<div class="container2">
             <div class="im"><img src="../image/<%=image%>" alt="anilgupta" style="width:190px;
height:190px;"></div>
                                <h1 style="color:#1a1aff; font-size: 40px; margin-bottom: 15px;">&nbsp;Dr.<%out.println(dfname); %><%out.println(dlname); %></h1></br>
                                <div class="head">
                                    <table border="4" id="t1">
                                        <caption><b>Doctor's Details</b></caption>
                                        <tr>
                                            <th><Strong>Gender-</Strong></th>
                                            <td><Strong><%out.println(gender); %></Strong></td></tr>

                                   <tr> <th><Strong>Qualification-</Strong>
                                   <td><Strong><%out.println(qualification); %></Strong></td></tr>
                                <tr><th><Strong> Experience-</Strong></th>
                                <td><Strong><%out.println(experince); %> Years</Strong></td></tr>
                                <tr><th><STRONG>Specialization-</STRONG></th>
                                  <td><STRONG><%out.println(specialization); %></STRONG></td></tr>                          
                                <tr><th><Strong>ClinicAddress-</Strong></th>
                                <td><Strong><%out.println(hospital); %></Strong></td></tr>
                               <tr> <th><Strong>DoctorType-</Strong></th>
                                <td><Strong><%out.println(doctype); %></Strong></td></tr>
                                 <tr><th><Strong>ConsultantFee-</Strong></th>
                                  <td><Strong><%out.println(fee); %>Rs.</Strong></td></tr>
                               <tr> <th><Strong>MobileNo-</Strong></th>
                                  <td><Strong><%out.println(mobile); %></Strong></td></tr>
                               <tr> <th><Strong>City-</Strong></th>
                                <td><Strong><%out.println(city); %></Strong></td>
                                        </tr>

                               </table>
                           </div>
                                 <h4 style="margin-top:245px; margin-left:42px;">(<%out.println(email); %>)</h4></br>
                                <h4 style="color:red; margin-top:330px;"><Strong>Available Days-(<%out.println(s); %><%out.println(m); %><%out.println(t); %><%out.println(w); %><%out.println(th); %><%out.println(f); %><%out.println(sa); %>) </Strong></h4></br>
                                <h4 style="color: green;margin-top:340px;"><Strong>Availble Time- <%out.println(from); %>AM TO <%out.println(to); %>AM</Strong></h4></br>
        </div>
        <%
                }
            }
                   catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
