<%--
    Document   : get
    Created on : Jul 28, 2018, 12:41:55 PM
    Author     : kiit1
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>Book Appointment</title>
        <!-- Bootstrap Core CSS -->
        <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="doc.css">
        <link rel="stylesheet" href="ap.css">
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
        <%
            String city2 = "";
            String special2 = "";
            String image = "";
            String dfname = "";
            String dlname = "";
            String qualification = "";
            String specialization = "";
            String email = "";
            String pass = "";
            String gender = "";
            String hospital = "";
            String mobile = "";
            String doctype = "";
            String experince = "";
            String fee = "";
            String from = "";
            String to = "";
            String city = "";

            try {

                String did = request.getParameter("did");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick", "root", "");
                Statement stmt = con.createStatement();
                //ResultSet rs1 = stmt.executeQuery("select * from timeslot where did='" + did + "'");
                ResultSet rs = stmt.executeQuery("select * from doctors where did='" + did + "'");
                while (rs.next()) {
                    image = rs.getString(16);
                    dfname = rs.getString(2);
                    dlname = rs.getString(3);
                    qualification = rs.getString(7);
                    specialization = rs.getString(5);
                    email = rs.getString(12);
                    pass = rs.getString(13);
                    gender = rs.getString(4);
                    hospital = rs.getString(8);
                    mobile = rs.getString(10);
                    doctype = rs.getString(9);
                    experince = rs.getString(6);
                    fee = rs.getString(11);
                    from = rs.getString(14);
                    to = rs.getString(15);
                    city = rs.getString(17);
                    did = rs.getString(1);

                }
            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
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
                        <a class="navbar-brand" href="myprofile.jsp">
                            <!-- Logo icon -->
                            <h2 style="color:blue; margin-left:-23px; margin-top:-1px;">DoctorsOnClick</h2>
                            <span>

                                <%
                                    String name = session.getAttribute("pfname").toString();
                                    String mail = session.getAttribute("pemail").toString();
                                %>
                                <h4  style="color: green; margin-top:56px;">Welcome <%=name%></h4>
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
                <form action="bookappoint.jsp">
                <div class="container-fluid">
                    <!-- ============================================================== -->
                    <!-- Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <div class="row page-titles">
                        <div class="col-md-6 col-8 align-self-center">
                            <h3 class="text-themecolor m-b-0 m-t-0">Book Appointment</h3>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                                <li class="breadcrumb-item active">Book Appointment</li>
                            </ol>
                        </div>
                        <div class="col-md-6 col-4 align-self-center">
                        </div>
                    </div>
                      
                        <h1 style="margin-left:320px;"><b>Confirm Appointment</b></h1>
                        <style>
                            .container{
                                width:640px;
                                height:215px;
                                margin-left: 2px;
                                border:1px solid black;
                                border-radius: 5px;
                                background-color:white;
                                margin-top: 75px;
                            } 
                            .im{
                                width:110px;
                                height:125px;
                                margin-left: 25px;
                                border-color:red;
                                background-color:grey;
                                margin-top: 19px;
                                border-radius: 6px;
                                position:absolute;	
                            }
                            h2
                            {
                                margin-left: 140px;;
                                position:absolute;
                                margin-top:12px;
                                font-size: 25px;
                            }
                            h6
                            {
                                margin-left: 145px;
                                padding-top:-20px;
                                font-family:monospace;
                                font-size: 15px;
                            }
                            p
                            {
                                margin-left: 145px;
                                font-family:monospace;
                                font-size: 17px;	
                            }
                            .corner
                            {
                                margin-left:450px;
                                width:200px;
                                height:80px;
                                border-color:red;
                                margin-top:-145px;
                            }
                        </style>

                        <div class="right">

                            <span style="color:#333; font-size:26px; font-family:Helvetica, Arial, sans-serif; font-weight:700;line-height:90px;">Patient's details</span><br>
                            <span style="color:#1d2129; font-size:19px; font-family:Helvetica,Arial,sans-serif;line-height:1px;">It's free and always will be.</span>
                            <br>

                            <%
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick", "root", "");
                                Statement stmt1 = con.createStatement();

                                ResultSet rs1 = stmt1.executeQuery("select * from patients where pemail='" + mail + "'");
                                rs1.next();
                                String did=request.getParameter("did");
                                String date=request.getParameter("date");
                                String h=request.getParameter("h");
                               

                            %>

                            <input class="registration_form" type="text" placeholder="Enter Your Name" value="<%=rs1.getString(2)%> <%=rs1.getString(3)%>" style="width:377px;"></input>

                            <input class="registration_form" type="text" placeholder="Mobile number or email address" value="<%=rs1.getString(5)%>"  style="width:377px;"></input>
                            <input class="registration_form" type="text" placeholder="Age" value=""  style="width:377px;"></input><br>
                            <input class="registration_form" type="text" placeholder="Disease" value=""  style="width:377px;"></input><br><br>

                            <span style="color:#1d2129; font-size:18px; font-family: Helvetica, Arial, sans-serif; margin-right: 40px;">Terms & Conditions</span><br>
                            <h5 class="terms_and_conditions">
                                By clicking Book Appointment, you agree to our Terms, Data Policy and Cookie 
                                Policy.
                            </h5>
                            <input type="text" value=<%=did%> name="did" hidden>
                            <input type="text" value="<%=rs1.getString(1)%>" name="pid" hidden>
                            <input type="text" value=<%=date%> name="date" hidden>
                            <input type="text" value=<%=h%> name="hr" hidden>
                            
                            <input type="submit"  value="Book Appointment">  


                        </div>

                        <h2 style="color:#333; font-size:26px; font-family:Helvetica, Arial, sans-serif; font-weight:600; margin-left:270px; margin-top:20px;">Doctor's details</h2><br>
                        <div class="container">
                            <div class="im"><img style="margin-left:1px;" src="../image/<%=image%>" /> </div>
                            <h2 style="color:#0086b3; font-size: 30px; margin-bottom: 15px;">&nbsp;Dr.<%=dfname%> <%=dlname%></h2></br>
                            <p style="margin-top: 35px;"><i class="fas fa-briefcase-medical" style="color:red;"></i><strong>&nbsp;<%=qualification%>-<%=specialization%></strong></p>
                            <p><i class="fas fa-stethoscope" style="color: solid black;"></i><strong>&nbsp;<%=experince%> Years Experience</strong></p>
                            <p><i class="fas fa-clinic-medical" style="color:green;"></i>&nbsp;<strong><%=hospital%></strong></p>
                            <div class="corner">
                                <h6 style="margin:12px; color: green;"><i  class="fas fa-male" style="color:solid black;"></i>&nbsp;90%</h6>
                                <h6 style="margin:12px;"><i class="fas fa-map-marker-alt" style="color: solid black;"></i>&nbsp;<%=city%></h6>
                                <h6 style="margin:12px;"><i class="fas fa-rupee-sign"></i>&nbsp<%=fee%></h6>

                                <h6 style="margin:12px;"><i class="fas fa-clock"></i>&nbsp;On <%=request.getParameter("date")%>  At <%=request.getParameter("h")%> hour and <%=request.getParameter("m")%> mins</h6>
                            </div>

                        </div>
                </div>
                </form>
                <footer class="footer text-center" style="margin-bottom: -195px; width:70%; text-align:center;">
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

</body>
</html>
