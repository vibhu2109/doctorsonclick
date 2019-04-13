<%-- 
    Document   : myview
    Created on : Mar 26, 2019, 12:31:38 AM
    Author     : 95ankitmishra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
        <title>View Your Appointment</title>
        <!-- Bootstrap Core CSS -->
        <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <!-- You can change the theme colors from here -->
        <link href="css/colors/blue.css" id="theme" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>

    <body class="fix-header card-no-border">
        <%
            response.setHeader("Cache-control", "no-cache,no-store,must-validate");
        %>
        <!-- ============================================================== -->
        <!-- Preloader - style you can find in spinners.css -->
        <!-- ============================================================== -->
        <div class="preloader">
            <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
        </div>
        <!-- ============================================================== -->
        <!-- Main wrapper - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <div id="main-wrapper">
            <!-- ============================================================== -->
            <!-- Topbar header - style you can find in pages.scss -->
            <!-- ============================================================== -->
            <header class="topbar">
                <nav class="navbar top-navbar navbar-toggleable-sm navbar-light">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-header">
                        <a class="navbar-brand" href="myview.jsp">
                            <!-- Logo icon -->
                            <h2 style="color:blue;">DoctorsOnClick</h2>
                            <span>

                                <%
                                    String name = session.getAttribute("pfname").toString();
                                %>
                                <h4  style="color: green;">Welcome <%=name%></h4>
                            </span>
                        </a>
                    </div>
                    <!-- dark Logo text -->
                    <!-- <img src="../assets/images/logo-text.png" alt="homepage" class="dark-logo" />
                     <h4  style="color: green;">Welcome To Dashboard</h4>
                 </span>
             </a>
         </div>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <div class="navbar-collapse">
                        <!-- ============================================================== -->
                        <!-- toggle and nav items -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav mr-auto mt-md-0 ">
                            <!-- This is  -->
                            <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                            <li class="nav-item hidden-sm-down">
                                <form class="app-search p-l-20">
                                    <input type="text" class="form-control" placeholder="Search for..."> <a class="srh-btn"><i class="ti-search"></i></a>
                                </form>
                            </li>
                        </ul>
                        <!-- ============================================================== -->
                        <!-- User profile and search -->
                        <!-- ============================================================== -->
                        <ul class="navbar-nav my-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../assets/images/user.png" alt="user" class="profile-pic m-r-5" /><%=name%></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- ============================================================== -->
            <!-- End Topbar header -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <aside class="left-sidebar">
                <!-- Sidebar scroll-->
                <div class="scroll-sidebar">
                    <!-- Sidebar navigation-->
                    <nav class="sidebar-nav">
                        <ul id="sidebarnav">

                            <li>
                                <a href="myprofile.jsp" class="waves-effect"><i class="fa fa-user m-r-10" aria-hidden="true"></i>Profile</a>
                            </li>
                            <li>
                                <a href="myappointment.jsp" class="waves-effect"><i class="fa fa-table m-r-10" aria-hidden="true"></i>Book Appointment</a>
                            </li>
                            <li>
                                <a href="myreports.jsp" class="waves-effect"><i class="fa fa-font m-r-10" aria-hidden="true"></i>Your Reports</a>
                            </li>

                            <li>
                                <a href="myview.jsp" class="waves-effect"><i class="fa fa-columns m-r-10" aria-hidden="true"></i>View Appointment</a>
                            </li>

                            <li>
                                <a href="logout.jsp" class="waves-effect"><i class="fa fa-info-circle m-r-10" aria-hidden="true"></i>Logout?</a>
                            </li>
                        </ul>
                        <div class="text-center m-t-30">

                        </div>
                    </nav>
                    <!-- End Sidebar navigation -->
                </div>
                <!-- End Sidebar scroll-->
            </aside>
            <!-- ============================================================== -->
            <!-- End Left Sidebar - style you can find in sidebar.scss  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Page wrapper  -->
            <!-- ============================================================== -->
            <div class="page-wrapper">
                <!-- ============================================================== -->
                <!-- Container fluid  -->
                <!-- ============================================================== -->
                <div class="container-fluid">
                    <!-- ============================================================== -->
                    <!-- Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <div class="row page-titles">
                        <div class="col-md-6 col-8 align-self-center">
                            <h3 class="text-themecolor m-b-0 m-t-0">View Appointment</h3>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                <li class="breadcrumb-item active">View Appointment</li>
                            </ol>
                        </div>
                        <div class="col-md-6 col-4 align-self-center">
                        </div>
                    </div>
                    <!-- ============================================================== -->
                    <!-- End Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Start Page Content -->
                    <!-- ============================================================== -->
                    <div class="row">
                        <!-- column -->
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-block">

                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>Appointment ID</th>
                                                    <th>Patient Name</th>
                                                    <th>Doctor Name</th>
                                                    <th> Appointment Date</th>
                                                    <th> Appointment Time</th>
                                                    <th>Appointment Venue</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int id = 0;
                                                    String d = "";
                                                    String hr1 = "";
                                                    String nam1 = "";
                                                    String name2 = "";
                                                    String ven = "";
                                                    String dname = "";
                                                    String dname1 = "";

                                                    String pid = request.getParameter("p");
                                                    String did = request.getParameter("d");

                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick", "root", "");
                                                    Statement stmt = con.createStatement();
                                                    Statement stmt2 = con.createStatement();
                                                    Statement stmt3 = con.createStatement();
                                                    ResultSet rsa = stmt.executeQuery("select App_id,A_time,A_date From appointment where pid=" + pid + "");
                                                    ResultSet rs1 = stmt2.executeQuery("select pfname,plname from patients where pid=" + pid + "");
                                                    ResultSet rs2 = stmt3.executeQuery("select dfname,dlname,address from doctors where did=" + did + "");

                                                    if (rsa.next()) {
                                                        id = rsa.getInt(1);
                                                        d = rsa.getString(3);
                                                        hr1 = rsa.getString(2);
                                                    }
                                                    if (rs1.next()) {
                                                        nam1 = rs1.getString(1);
                                                        name2 = rs1.getString(2);
                                                    }
                                                    if (rs2.next()) {
                                                        dname = rs2.getString(1);
                                                        dname1 = rs2.getString(2);
                                                        ven = rs2.getString(3);
                                                    }
                                                %>
                                                <tr>
                                                    <td><%=id%></td>
                                                    <td><%=nam1%><%=name2%></td>
                                                    <td><%= dname%><%=dname1%></td>
                                                    <td><%=d%></td>
                                                    <td><%=hr1%>:00 Hrs</td>
                                                    <td><%=ven%></td>

                                                </tr>
                                                <%

                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- End PAge Content -->
                    <!-- ============================================================== -->
                </div>
                <!-- ============================================================== -->
                <!-- End Container fluid  -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- footer -->
                <!-- ============================================================== -->
                <footer class="footer text-center">
                    © 2019 DoctorsOnClick
                </footer>
                <!-- ============================================================== -->
                <!-- End footer -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- End Page wrapper  -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Wrapper -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- All Jquery -->
        <!-- ============================================================== -->
        <script src="../assets/plugins/jquery/jquery.min.js"></script>
        <!-- Bootstrap tether Core JavaScript -->
        <script src="../assets/plugins/bootstrap/js/tether.min.js"></script>
        <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- slimscrollbar scrollbar JavaScript -->
        <script src="js/jquery.slimscroll.js"></script>
        <!--Wave Effects -->
        <script src="js/waves.js"></script>
        <!--Menu sidebar -->
        <script src="js/sidebarmenu.js"></script>
        <!--stickey kit -->
        <script src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
        <!--Custom JavaScript -->
        <script src="js/custom.min.js"></script>
        <!-- ============================================================== -->
        <!-- Style switcher -->
        <!-- ============================================================== -->
        <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    </body>

</html>
