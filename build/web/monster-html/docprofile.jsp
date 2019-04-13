<%-- 
    Document   : docprofile
    Created on : Mar 26, 2019, 12:24:33 AM
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
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
    <title>View Your Profile</title>
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
        response.setHeader("Cache-control","no-cache,no-store,must-validate");
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
                    <a class="navbar-brand" href="docprofile.jsp">
                        <!-- Logo icon -->
                        <b>
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                             <h2 style="color:blue;">DoctorsOnClick</h2>
                            
                        </b>
                        <span>
                            <%
        String did="";
        String image="";
        String dfname="";
        String dlname="";
        String qualification="";
        String specialization="";
        String email="";
        String pass="";
        String gender="";
        String hospital="";
        String mobile="";
        String doctype="";
        String experince="";
        String fee="";
        String from="";
        String to="";
        String city="";
        Statement stmt=null;
        ResultSet rs=null; 
        
        try{
           email=session.getAttribute("demail").toString();
           if(email.equals(""))
           {
               response.sendRedirect("index.jsp"); 
           }
           else
           {
               Connection con=DBConnection.DBConnection.getconnection();
               stmt=con.createStatement();
               rs=stmt.executeQuery("select * from doctors where demail='"+email+"'");
               rs.next();
               image=rs.getString(16);
               dfname=rs.getString(2);
               dlname=rs.getString(3);
               qualification=rs.getString(7);
               specialization=rs.getString(5);
               email=rs.getString(12);
               pass=rs.getString(13);
               gender=rs.getString(4);
               hospital=rs.getString(8);
               mobile=rs.getString(10);
               doctype=rs.getString(9);
               experince=rs.getString(6);
               fee=rs.getString(11);
               from=rs.getString(14);
               to=rs.getString(15);
               city=rs.getString(17);
               did=rs.getString(1);
               
               
               
               
               
           }
               
            }
        catch(Exception e){
           response.sendRedirect("index.jsp"); 
        }
        %>
        
                        
                            
                            <h4  style="color: green;">Welcome Dr. <%=dfname%></h4>
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
                            <a class="nav-link dropdown-toggle text-muted waves-effect waves-dark" href="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="../assets/images/user.png" alt="user" class="profile-pic m-r-5" />Dr. <%=dfname%></a>
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
                       <!-- <li>
                            <a href="docindex.jsp" class="waves-effect"><i class="fa fa-clock-o m-r-10" aria-hidden="true"></i>Dashboard</a>
                        </li>-->
                        <li>
                            <a href="docprofile.jsp" class="waves-effect"><i class="fa fa-user m-r-10" aria-hidden="true"></i>Profile</a>
                        </li>
                        <li>
                            <a href="docprescription.jsp" class="waves-effect"><i class="fa fa-table m-r-10" aria-hidden="true"></i>Prescription</a>
                        </li>
                        <li>
                            <a href="docappointment.jsp" class="waves-effect"><i class="fa fa-font m-r-10" aria-hidden="true"></i>Appointments</a>
                        </li>
                        <li>
                            <a href="docpatient.jsp" class="waves-effect"><i class="fa fa-globe m-r-10" aria-hidden="true"></i>Patients</a>
                        </li>
                       
                     <!--   <li>
                            <a href="docsettings.jsp" class="waves-effect"><i class="fa fa-gears m-r-10" aria-hidden="true"></i>Settings</a>
                        </li>--> 
                        
                        <li>
                            <a href="logout.jsp" class="waves-effect"><i class="fa fa-info-circle m-r-10" aria-hidden="true"></i>Logout?</a>
                    </ul>
                    <div class="text-center m-t-30">
                        <!--<a href="https://wrappixel.com/templates/monsteradmin/" class="btn btn-danger"> Upgrade to Pro</a>-->
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
                        <h3 class="text-themecolor m-b-0 m-t-0">Profile</h3>
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item active">Profile</li>
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
                <!-- Row -->
                <div class="row">
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card">
                            <div class="card-block">
                                <center class="m-t-30"> <img src="../image/<%=image.toString()%>" class="img-circle" width="150" />
                                    <h4 class="card-title m-t-10">Dr. <%=dfname%> <%=dlname%></h4>
                                    <h6 class="card-subtitle"><%=qualification%>  <%=specialization%></h6>
                                    <div class="row text-center justify-content-md-center">
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-people"></i> <font class="font-medium">0</font></a></div>
                                        <div class="col-4"><a href="javascript:void(0)" class="link"><i class="icon-picture"></i> <font class="font-medium">1</font></a></div>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <div class="card-block">
                                <form class="form-horizontal form-material" action="getdocupdate.jsp">
                                    <div class="form-group">
                                        <label class="col-md-12">First Name</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=dfname%> " class="form-control form-control-line" name="first_name">
                                        </div>
                                    </div>
                                        <div class="form-group">
                                        <label class="col-md-12">Last Name</label>
                                        <div class="col-md-12">
                                            <input type="text" value=" <%=dlname%>" class="form-control form-control-line" name="last_name">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="example-email" class="col-md-12">Email</label>
                                        <div class="col-md-12">
                                            <input type="email" value="<%=email%>" class="form-control form-control-line" name="example-email" id="example-email" disabled="">
                                        </div>
                                    </div>
                                <!--  <div class="form-group">
                                        <label class="col-md-12">Password</label>
                                        <div class="col-md-12">
                                            <input type="password" value="password" class="form-control form-control-line">
                                        </div>
                                    </div>-->
                                 <div class="form-group">
                                        <label class="col-md-12">Address</label>
                                        <div class="col-md-12">
                                            <input type="text" value=" <%=hospital%>" class="form-control form-control-line" name="address">
                                        </div>
                                    </div>
                                <div class="form-group">
                                        <label class="col-md-12">City</label>
                                        <div class="col-md-12">
                                            <input type="text" value=" <%=city%>"class="form-control form-control-line" name="city">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Phone No</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=mobile%>" class="form-control form-control-line" name="phone">
                                        </div>
                                    </div>
                                <div class="form-group">
                                        <label class="col-md-12">Doctor's Type</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=doctype%>" class="form-control form-control-line" name="subject" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Qualifications</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=qualification%>" class="form-control form-control-line" name="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-12">Specialization</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=specialization%>" class="form-control form-control-line" name="specialization">
                                        </div>
                                    </div>
                                   
                                    <div class="form-group">
                                        <label class="col-md-12">Experience</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=experince%>" class="form-control form-control-line" name="experience">
                                        </div>
                                    </div>
                                     <div class="form-group">
                                        <label class="col-md-12">Consultant Fee</label>
                                        <div class="col-md-12">
                                            <input type="text" value=" <%=fee%>"class="form-control form-control-line" name="confee">
                                        </div>
                                    </div>
                                <div class="form-group">
                                        <label class="col-md-12">Available From</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=from%>" class="form-control form-control-line" name="time1">
                                        </div>
                                    </div>
                                <div class="form-group">
                                        <label class="col-md-12">Available to</label>
                                        <div class="col-md-12">
                                            <input type="text" value="<%=to%>" class="form-control form-control-line" name="time2">
                                        </div>
                                    </div>
                                    <div class="form-group"> 
                                        <label class="col-md-12">Message</label>
                                        <div class="col-md-12">
                                            <textarea rows="5" class="form-control form-control-line"></textarea>
                                        </div>
                                    </div>
                                   
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <button class="btn btn-success">Update Profile</button>
                                        </div>
                                    </div>
                                        <input type="hidden" name="hf" value="<%=rs.getString(1)%>"/>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
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
