<%-- 
    Document   : services
    Created on : Feb 19, 2019, 5:17:20 PM
    Author     : Ankit Mishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Hello Doctors</title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="stylesearchbox.css">
   
    
   <!-- <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                padding: 5px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
        </style>-->
    <!-- ---------------------CSS for login and registration form-----------------------------      
 -->
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
/*
button {
  background-color: deepskyblue;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}*/

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
 
}

img.avatar {
  width: 10%;
  border-radius: 30%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
 
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
 
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

</style>

<!-- -----------------------------------------------------------------------------------
 -->
</head>
<body class="single-page">
    <header class="site-header">
        <div class="nav-bar">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-flex flex-wrap justify-content-between align-items-center">
                        <div class="site-branding d-flex align-items-center">
                            <a class="d-block" href="index.html" rel="home"><img src="images/a.png"/></a>
                        </div><!-- .site-branding -->
<!-------------- --------------------registration and login-------------------------- -->

                        <div id="head_c2">
                                <button onclick="document.getElementById('id02').style.display = 'block'" style="width:auto; top:0px;">
                                    Register</button>
                                  <%@include  file="registerPopup.html" %> 

                                <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto; top:0px; margin: 3PX;">Login</button>
                                <%@include  file="loginPopup.html" %>

                            </div>	
<!-- ---------------------------------------------------------------------------------------------------
 -->                            
                        <nav class="site-navigation d-flex justify-content-end align-items-center">
                            <ul class="d-flex flex-column flex-lg-row justify-content-lg-end align-items-center">
                                <li ><a href="index.jsp">Home</a></li>
                                <li><a href="about.jsp">About us</a></li>
                                <li class="current-menu-item"><a href="services.jsp">Book Appointment</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
			        <li><a href="news.jsp">news</a></li>

                               <!-- <li class="call-btn button gradient-bg mt-3 mt-md-0">
                                    <a class="d-flex justify-content-center align-items-center" href="#"><img src="images/emergency-call.png"> +34 586 778 8892</a>
                                </li>-->
                            </ul>
                        </nav><!-- .site-navigation -->

                        <div class="hamburger-menu d-lg-none">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div><!-- .hamburger-menu -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .nav-bar -->
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2>BookAppointment</h2>

                    <div class="breadcrumbs">
                        <ul class="d-flex flex-wrap align-items-center p-0 m-0">
                            <li><a href="#">Home</a></li>
                            <li>BookAppointment</li>
                        </ul>
                    </div><!-- .breadcrumbs -->
                </div>
            </div>
        </div>

        <img class="header-img" src="images/service-bg.png" alt="" width="700px">
    </header><!-- .site-header -->


<!-- ---------------------------Search box-------------------------------------- -->
<div class="header">
    
  <form>
    <div class="form-box">
      <input style="width: 400px;height: 50px;" class="search-field location" type="text" name="location" placeholder="location" autocomplete="on" />
      <input style="width: 400px; height: 50px;" class="search-field skills" type="text" name="speciality" placeholder="speciality" autocomplete="on" />
      <button class="search-btn" type="button">Search</button>


    </div>
  </form>
</div>
     
<!-- ------------------------------------------------------------------------------->

<center>

            <%
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick", "root", "");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select * from doctors");
                while (rs.next()) {

                    String name = rs.getString(2);
                    String specialization = rs.getString(5);
                    String experience = rs.getString(6);
                     String qualification=rs.getString(7);
                      String address=rs.getString(8);
                       String doc_type=rs.getString(9);
                        String mobile=rs.getString(10);
                         String con_fee=rs.getString(11);
                          String availabe_from=rs.getString(14);
                           String available_to=rs.getString(15);
            %>
            
            <div class="container py-xl-5 py-lg-3" >

                <h3 class="title text-dark mb-sm-5 mb-4">	

                    <div class="row address-row pt-lg-8">
                        <div class="col-lg-10">
                            <div class="address-right container p-sm-5 p-4">
                                <table class="container">

                                    <tr><td><h3>Name</h3></td><td><%out.println(name); %></td></tr>
                                    <tr><td><h3>Specialization</h3></td><td><%out.println(specialization); %></td></tr>
                                    <tr><td><h3>Expertise</h3></td><td><%out.println(experience); %></td></tr>
                                    <tr><td><h3>Qualification</h3></td><td><%out.println(qualification); %></td></tr>
                                    <tr><td><h3>Address</h3></td><td><%out.println(address); %></td></tr>
                                    <tr><td><h3>Type</h3></td><td><%out.println(doc_type); %></td></tr>
                                    <tr><td><h3>Mobile</h3></td><td><%out.println(mobile); %></td></tr>
                                    <tr><td><h3>Fee</h3></td><td><%out.println(con_fee); %></td></tr>
                                    <tr><td><h3>From</h3></td><td><%out.println(availabe_from); %></td></tr>
                                    <tr><td><h3>To</h3></td><td><%out.println(available_to); %></td></tr>
                                    <tr><td><a href="take_appointment.jsp"><button class="btn btn-primary">Take appointment</button></a></td><td></td></tr>
                                    
                                </table>
                            </div>
                        </div>
                    </div>
            </div>					

            <%}%>
    </center>
<!---------------------------------------------------------------------------------->
    
 <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="foot-about">
                            <h2><a href="#" style="color:blue"><img src="images/a.png"/></a></h2>

                            <p></p>

                            <p class="copyright">
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved by Ankit Mishra & Vaibhav Agrawal
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>Contact</h2>

                            <ul class="p-0 m-0">
                                <li><span>Addtress:</span>Maulana Azad National Institute Of Technology</li>
                                <li><span>Phone:</span>+919956261086</li>
                                <li><span>Email:</span>95ankitmishra@gmail.com</li>
                            </ul>
                        </div>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-links">
                            <h2>Usefull Links</h2>

                            <ul class="p-0 m-0">
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="about.jsp">About us</a></li>
                                <li><a href="showdoc.jsp">Book Appointment</a></li>
                                <li><a href="contact.jsp">Contact</a></li>
				<li><a href="news.jsp">news</a></li>
                            </ul>
                        </div><!-- .foot-links -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->
    </footer><!-- .site-footer -->


    <script type='text/javascript' src='js/jquery.js'></script>
    <script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='js/swiper.min.js'></script>
    <script type='text/javascript' src='js/jquery.countdown.min.js'></script>
    <script type='text/javascript' src='js/circle-progress.min.js'></script>
    <script type='text/javascript' src='js/jquery.countTo.min.js'></script>
    <script type='text/javascript' src='js/jquery.barfiller.js'></script>
    <script type='text/javascript' src='js/custom.js'></script>
</body>
</html>
