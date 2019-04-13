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
                    <a class="navbar-brand" href="myprofile.jsp">
                        <!-- Logo icon -->
                        <h2 style="color:blue; margin-left:-23px; margin-top:-1px;">DoctorsOnClick</h2>
                            <span>
                        
                            <%
                                
                                String name=session.getAttribute("pfname").toString();
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
               
        <style>
             button {
                background-color:#2ECC71;
                color: white;
                padding: 16px 22px;
                margin: 8px 4px;
                border:1px white;
                cursor: pointer;
                width: 100%;
                text-color:white;
                text-align:center;
                border-radius:2px;
            }

            button:hover {
                opacity: 0.9;
            }
            a{
                color:#fff;
            }
         </style>

        <%
            String did = request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick", "root", "");
            Statement stmt = con.createStatement();
            //ResultSet rs1 = stmt.executeQuery("select * from timeslot where did='" + did + "'");
            ResultSet rs2=stmt.executeQuery("select * from doctors where did='"+did+"'");
            rs2.next();
            String start=rs2.getString(14);
            String end=rs2.getString(15);
            String step=rs2.getString(18);
            //out.print(start+" "+end+" "+step);
            String array1[]=start.split(":");
            String array2[]=end.split(":");
            int st=Integer.parseInt(array1[0]);
            int en=Integer.parseInt(array2[0]);
            int hr=st;
            int min=0;
            int fogg=Integer.parseInt(step);
            Boolean am=true;
            int hrp=hr;
            if(st>12){
                am=false;
                hrp%=12;
            }
            //out.print(en);
             String date=request.getParameter("date");
            while(hr<en){
                
                out.print("<button style='width:auto; top:0px;'><a href='bookappointment.jsp?did="+did+"&h="+hr+"&m="+min+"&date="+date+"'>");
                
                out.print(hrp);
                out.print(":");
                if(min==0)
                    out.print(min);
                out.print(min);
                if(am)
                    out.print(" AM");
                else
                    out.print(" PM");
                min+=fogg;
                if(min>=60){
                    min%=60;
                    hr+=1;
                    hrp+=1;
                }
                if(hr>=12){
                am=false;
                if(hr!=12)
                hrp%=12;
                }
                out.print("- "+hrp);
                out.print(":");
                out.print(min);
                if(min==0)
                    out.print(min);
                if(am)
                    out.print(" AM");
                else
                    out.print(" PM");
                out.print("</a></button>");
            }
            
           
            
            
            
            
            
            
           /* while (rs1.next()) {
                String st = rs1.getString("start_time");
                String et = rs1.getString("end_time");
               

               */ 
        %>
        
        <%%>
                <footer class="footer text-center" style="margin-bottom: -45px; width:70%; text-align:center;">
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
