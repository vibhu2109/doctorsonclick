<%-- 
    Document   : myappointment
    Created on : Mar 26, 2019, 12:26:51 AM
    Author     : 95ankitmishra
--%>

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
    //        response.setHeader("Cache-control","no-cache,no-store,must-validate");
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
                    <!-- ============================================================== -->
                    <!-- End Bread crumb and right sidebar toggle -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- Start Page Content -->
                    <!-- ============================================================== -->

                    <div class="s01">
                        <style>

                            html {
                                line-height: 1.15;
                                /* 1 */
                                -ms-text-size-adjust: 100%;
                                /* 2 */
                                -webkit-text-size-adjust: 100%;
                                /* 2 */
                            }


                            body {
                                margin: 0;
                            }
                            article,
                            aside,
                            footer,
                            header,
                            nav,
                            section {
                                display: block;
                            }

                            h1 {
                                font-size: 2em;
                                margin: 0.67em 0;
                            }
                            figcaption,
                            figure,
                            main {
                                /* 1 */
                                display: block;
                            }

                            /**
                             * Add the correct margin in IE 8.
                             */
                            figure {
                                margin: 1em 40px;
                            }

                            /**
                             * 1. Add the correct box sizing in Firefox.
                             * 2. Show the overflow in Edge and IE.
                             */
                            hr {
                                box-sizing: content-box;
                                /* 1 */
                                height: 0;
                                /* 1 */
                                overflow: visible;
                                /* 2 */
                            }

                            /**
                             * 1. Correct the inheritance and scaling of font size in all browsers.
                             * 2. Correct the odd `em` font sizing in all browsers.
                             */
                            pre {
                                font-family: monospace, monospace;
                                /* 1 */
                                font-size: 1em;
                                /* 2 */
                            }

                            /* Text-level semantics
                               ========================================================================== */
                            /**
                             * 1. Remove the gray background on active links in IE 10.
                             * 2. Remove gaps in links underline in iOS 8+ and Safari 8+.
                             */
                            a {
                                background-color: transparent;
                                /* 1 */
                                -webkit-text-decoration-skip: objects;
                                /* 2 */
                            }

                            /**
                             * 1. Remove the bottom border in Chrome 57- and Firefox 39-.
                             * 2. Add the correct text decoration in Chrome, Edge, IE, Opera, and Safari.
                             */
                            abbr[title] {
                                border-bottom: none;
                                /* 1 */
                                text-decoration: underline;
                                /* 2 */
                                text-decoration: underline dotted;
                                /* 2 */
                            }

                            /**
                             * Prevent the duplicate application of `bolder` by the next rule in Safari 6.
                             */
                            b,
                            strong {
                                font-weight: inherit;
                            }

                            /**
                             * Add the correct font weight in Chrome, Edge, and Safari.
                             */
                            b,
                            strong {
                                font-weight: bolder;
                            }

                            /**
                             * 1. Correct the inheritance and scaling of font size in all browsers.
                             * 2. Correct the odd `em` font sizing in all browsers.
                             */
                            code,
                            kbd,
                            samp {
                                font-family: monospace, monospace;
                                /* 1 */
                                font-size: 1em;
                                /* 2 */
                            }

                            /**
                             * Add the correct font style in Android 4.3-.
                             */
                            dfn {
                                font-style: italic;
                            }

                            /**
                             * Add the correct background and color in IE 9-.
                             */
                            mark {
                                background-color: #ff0;
                                color: #000;
                            }

                            /**
                             * Add the correct font size in all browsers.
                             */
                            small {
                                font-size: 80%;
                            }

                            /**
                             * Prevent `sub` and `sup` elements from affecting the line height in
                             * all browsers.
                             */
                            sub,
                            sup {
                                font-size: 75%;
                                line-height: 0;
                                position: relative;
                                vertical-align: baseline;
                            }

                            sub {
                                bottom: -0.25em;
                            }

                            sup {
                                top: -0.5em;
                            }

                            /* Embedded content
                               ========================================================================== */
                            /**
                             * Add the correct display in IE 9-.
                             */
                            audio,
                            video {
                                display: inline-block;
                            }

                            /**
                             * Add the correct display in iOS 4-7.
                             */
                            audio:not([controls]) {
                                display: none;
                                height: 0;
                            }

                            /**
                             * Remove the border on images inside links in IE 10-.
                             */
                            img {
                                border-style: none;
                            }

                            /**
                             * Hide the overflow in IE.
                             */
                            svg:not(:root) {
                                overflow: hidden;
                            }

                            /* Forms
                               ========================================================================== */
                            /**
                             * 1. Change the font styles in all browsers (opinionated).
                             * 2. Remove the margin in Firefox and Safari.
                             */
                            button,
                            input,
                            optgroup,
                            select,
                            textarea {
                                font-family: sans-serif;
                                /* 1 */
                                font-size: 100%;
                                /* 1 */
                                line-height: 1.15;
                                /* 1 */
                                margin: 0;
                                /* 2 */
                            }

                            /**
                             * Show the overflow in IE.
                             * 1. Show the overflow in Edge.
                             */
                            button,
                            input {
                                /* 1 */
                                overflow: visible;
                            }

                            /**
                             * Remove the inheritance of text transform in Edge, Firefox, and IE.
                             * 1. Remove the inheritance of text transform in Firefox.
                             */
                            button,
                            select {
                                /* 1 */
                                text-transform: none;
                            }

                            /**
                             * 1. Prevent a WebKit bug where (2) destroys native `audio` and `video`
                             *    controls in Android 4.
                             * 2. Correct the inability to style clickable types in iOS and Safari.
                             */
                            button,
                            html [type="button"],
                            [type="reset"],
                            [type="submit"] {
                                -webkit-appearance: button;
                                /* 2 */
                            }

                            /**
                             * Remove the inner border and padding in Firefox.
                             */
                            button::-moz-focus-inner,
                            [type="button"]::-moz-focus-inner,
                            [type="reset"]::-moz-focus-inner,
                            [type="submit"]::-moz-focus-inner {
                                border-style: none;
                                padding: 0;
                            }

                            /**
                             * Restore the focus styles unset by the previous rule.
                             */
                            button:-moz-focusring,
                            [type="button"]:-moz-focusring,
                            [type="reset"]:-moz-focusring,
                            [type="submit"]:-moz-focusring {
                                outline: 1px dotted ButtonText;
                            }

                            /**
                             * Correct the padding in Firefox.
                             */
                            fieldset {
                                padding: 0.35em 0.75em 0.625em;
                            }

                            /**
                             * 1. Correct the text wrapping in Edge and IE.
                             * 2. Correct the color inheritance from `fieldset` elements in IE.
                             * 3. Remove the padding so developers are not caught out when they zero out
                             *    `fieldset` elements in all browsers.
                             */
                            legend {
                                box-sizing: border-box;
                                /* 1 */
                                color: inherit;
                                /* 2 */
                                display: table;
                                /* 1 */
                                max-width: 100%;
                                /* 1 */
                                padding: 0;
                                /* 3 */
                                white-space: normal;
                                /* 1 */
                            }

                            /**
                             * 1. Add the correct display in IE 9-.
                             * 2. Add the correct vertical alignment in Chrome, Firefox, and Opera.
                             */
                            progress {
                                display: inline-block;
                                /* 1 */
                                vertical-align: baseline;
                                /* 2 */
                            }

                            /**
                             * Remove the default vertical scrollbar in IE.
                             */
                            textarea {
                                overflow: auto;
                            }

                            /**
                             * 1. Add the correct box sizing in IE 10-.
                             * 2. Remove the padding in IE 10-.
                             */
                            [type="checkbox"],
                            [type="radio"] {
                                box-sizing: border-box;
                                /* 1 */
                                padding: 0;
                                /* 2 */
                            }

                            /**
                             * Correct the cursor style of increment and decrement buttons in Chrome.
                             */
                            [type="number"]::-webkit-inner-spin-button,
                            [type="number"]::-webkit-outer-spin-button {
                                height: auto;
                            }

                            /**
                             * 1. Correct the odd appearance in Chrome and Safari.
                             * 2. Correct the outline style in Safari.
                             */
                            [type="search"] {
                                -webkit-appearance: textfield;
                                /* 1 */
                                outline-offset: -2px;
                                /* 2 */
                            }

                            /**
                             * Remove the inner padding and cancel buttons in Chrome and Safari on macOS.
                             */
                            [type="search"]::-webkit-search-cancel-button,
                            [type="search"]::-webkit-search-decoration {
                                -webkit-appearance: none;
                            }

                            /**
                             * 1. Correct the inability to style clickable types in iOS and Safari.
                             * 2. Change font properties to `inherit` in Safari.
                             */
                            ::-webkit-file-upload-button {
                                -webkit-appearance: button;
                                /* 1 */
                                font: inherit;
                                /* 2 */
                            }

                            /* Interactive
                               ========================================================================== */
                            /*
                             * Add the correct display in IE 9-.
                             * 1. Add the correct display in Edge, IE, and Firefox.
                             */
                            details,
                            menu {
                                display: block;
                            }

                            /*
                             * Add the correct display in all browsers.
                             */
                            summary {
                                display: list-item;
                            }

                            /* Scripting
                               ========================================================================== */
                            /**
                             * Add the correct display in IE 9-.
                             */
                            canvas {
                                display: inline-block;
                            }

                            /**
                             * Add the correct display in IE.
                             */
                            template {
                                display: none;
                            }

                            /* Hidden
                               ========================================================================== */
                            /**
                             * Add the correct display in IE 10-.
                             */
                            [hidden] {
                                display: none;
                            }

                            html {
                                height: 100%;
                            }

                            fieldset {
                                margin: 0;
                                padding: 0;
                                -webkit-margin-start: 0;
                                -webkit-margin-end: 0;
                                -webkit-padding-before: 0;
                                -webkit-padding-start: 0;
                                -webkit-padding-end: 0;
                                -webkit-padding-after: 0;
                                border: 0;
                            }

                            legend {
                                margin: 0;
                                padding: 0;
                                display: block;
                                -webkit-padding-start: 0;
                                -webkit-padding-end: 0;
                            }

                            * {
                                box-sizing: border-box;
                            }

                            .s01 {
                                display: -ms-flexbox;
                                display: flex;
                                -ms-flex-pack: center;
                                justify-content: center;
                                -ms-flex-align: center;
                                align-items: center;
                                font-family: 'Poppins', sans-serif;
                                background-position: center center;
                                background-color:gray;
                                padding: 15px;
                            }

                            .s01 form {
                                width: 100%;
                                max-width: 1290px;
                            }

                            .s01 form legend {
                                font-size: 72px;
                                line-height: 1;
                                color: #fff;
                                margin-bottom: 60px;
                            }

                            .s01 form .inner-form {
                                background:#3498DB;
                                padding: 21px 30px;
                                display: -ms-flexbox;
                                display: flex;
                                width: 88%;
                                -ms-flex-pack: justify;
                                justify-content: space-between;
                                -ms-flex-align: center;
                                align-items: center;
                            }

                            .s01 form .inner-form .input-field {
                                margin-right: 30px;
                                height: 43px;
                            }

                            .s01 form .inner-form .input-field input {
                                height: 100%;
                                background: #fff;
                                border-radius: .5px;
                                border: 0;
                                display: block;
                                width: 100%;
                                padding: 10px 32px;
                                font-size: 20px;
                            }

                            .s01 form .inner-form .input-field input.placeholder {
                                color: #00bfff;
                                font-size: 20px;
                            }

                            .s01 form .inner-form .input-field input:-moz-placeholder {
                                color: #00bfff;
                                font-size: 20px;
                            }

                            .s01 form .inner-form .input-field input::-webkit-input-placeholder {
                                color: #9a9a9a;
                                font-size: 20px;
                            }

                            .s01 form .inner-form .input-field input:hover, .s01 form .inner-form .input-field input:focus {
                                box-shadow: none;
                                outline: 0;
                            }

                            .s01 form .inner-form .input-field.first-wrap {
                                -ms-flex-positive: 1;
                                flex-grow: 1;
                            }

                            .s01 form .inner-form .input-field.second-wrap {
                                width: 32.77%;
                                min-width: 180px;
                            }

                            .s01 form .inner-form .input-field.third-wrap {
                                width: 180px;
                                margin-right: 0;
                            }

                            .s01 form .inner-form .input-field.third-wrap .btn3-search {
                                height: 100%;
                                width: 90%;
                                background:#2ECC71;
                                white-space: nowrap;
                                border-radius: .5px;
                                font-size: 20px;
                                color: #fff;
                                transition: all .2s ease-out, color .2s ease-out;
                                margin-left:10px;
                                text-align:center;
                                border: 0;
                                cursor: pointer;
                            }

                            .s01 form .inner-form .input-field.third-wrap .btn3-search:hover {
                                background:#00bfff;
                            }

                            @media screen and (max-width: 992px) {
                                .s01 form legend {
                                    font-size: 50px;
                                    text-align: center;
                                    margin-bottom: 50px;
                                }
                                .s01 form .inner-form {
                                    padding: 30px 35px;
                                }
                                .s01 form .inner-form .input-field {
                                    height: 50px;
                                }
                            }

                            @media screen and (max-width: 767px) {
                                .s01 form legend {
                                    font-size: 40px;
                                    margin-bottom: 40px;
                                }
                                .s01 form .inner-form {
                                    -ms-flex-wrap: wrap;
                                    flex-wrap: wrap;
                                    padding: 20px;
                                }
                                .s01 form .inner-form .input-field {
                                    margin-right: 0;
                                }
                                .s01 form .inner-form .input-field input {
                                    padding: 5px 15px;
                                    font-size: 16px;
                                }
                                .s01 form .inner-form .input-field.first-wrap {
                                    width: 100%;
                                    margin-bottom: 20px;
                                }
                                .s01 form .inner-form .input-field.second-wrap {
                                    width: calc(50% - 10px);
                                    min-width: auto;
                                }
                                .s01 form .inner-form .input-field.third-wrap {
                                    width: calc(30% - 5px);
                                    margin-left:320px;
                                    background-color: skyblue;
                                }
                                .s01 form .inner-form .input-field.third-wrap .btn3-search {
                                    font-size: 19px;
                                }
                            }

                        </style>
                        <center>
                            <form action="myappointment.jsp" method="post">
                                <fieldset>
                                </fieldset>
                                <div class="inner-form">
                                    <div class="input-field first-wrap">
                                        <select style="height:100%; width:130%; border-radius:5px;" name="city1">
                                            <option disabled="disabled" selected="selected" >Select Your Location</option>
                                            <option>Bhopal</option>
                                            <option>Kanpur</option>
                                            <option>New Delhi</option>
                                            <option>Kolkata</option>
                                        </select>
                                    </div>
                                    <div class="input-field second-wrap">
                                        <select style="height:100%; border-radius:5px; " name="special1">
                                            <option disabled="disabled" selected="selected">Choose Speciality</option>
                                            <option>Allergist or Immunologist</option>
                                            <option>Anesthesiologist</option>
                                            <option>Cardiologist</option>
                                            <option>Dermatologist</option>
                                            <option>Gastroenterologist</option>
                                            <option>Hematologist/Oncologist</option>
                                            <option>Internal Medicine Physician</option>
                                            <option>Nephrologist</option>
                                            <option>Neurologist</option>
                                            <option>Neurosurgeon</option>
                                            <option>Obstetrician</option>
                                            <option>Gynecologist</option>
                                            <option>Nurse-Midwifery</option>
                                            <option>Occupational Medicine Physician</option>
                                            <option>Ophthalmologist</option>
                                            <option>Oral and Maxillofacial Surgeon</option>
                                            <option>Orthopaedic Surgeon</option>
                                            <option>Otolaryngologist </option>
                                            <option>Pathologist</option>
                                            <option>Pathologist</option>
                                            <option>Plastic Surgeon</option>
                                            <option>Podiatrist</option>
                                            <option>Psychiatrist</option>
                                            <option>Pulmonary Medicine Physician</option>
                                            <option>Radiation Onconlogist</option>
                                            <option>Diagnostic Radiologist</option>
                                            <option>Rheumatologist</option>
                                            <option>Urologist </option>

                                        </select>
                                    </div>
                                    <div class="input-field third-wrap">
                                        <input type="submit" value="Search" style="background-color:green;color:White;">
                                    </div>
                                </div>
                            </form>
                        </center>
                    </div>
                    <!-- ------------------------------------------------------------------------------->
                    <!-------------------------------------doctor display------------------------------------------ -->
                    <center>
                        <%
                            String city2 = "";
                            String special2 = "";
                            String did = "";
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
                            Statement stmt = null;
                            ResultSet rs = null;

                            try {

                                Connection con = DBConnection.DBConnection.getconnection();
                                stmt = con.createStatement();
                                city2 = request.getParameter("city1");
                                special2 = request.getParameter("special1");
                                if (city2 != "" && special2 != "") {
                                    rs = stmt.executeQuery("select * from doctors where city='" + city2 + "' and specialization='" + special2 + "'");

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

                        %>


                        <div class="container1">
                            <div class="im"><img src="../image/<%=image%>" /> </div>
                            <h2 style="color:#0086b3; font-size: 30px; margin-bottom: 15px;">&nbsp;Dr.<%out.println(dfname); %><%out.println(dlname); %></h2></br>
                            <p style="margin-top: 25px;"><i class="fas fa-briefcase-medical" style="color:red;"></i><strong>&nbsp;<%out.println(qualification); %>-<%out.println(specialization); %></strong></p>
                            <p style="margin-top: -15px;"><i class="fas fa-stethoscope" style="color: solid black;"></i><strong>&nbsp;<%out.println(experince);%> Years Experience</strong></p>
                            <p style="margin-top: -13px;"><i class="fas fa-clinic-medical" style="color:green;"></i>&nbsp;<strong><%out.println(hospital); %></strong></p>
                            <div class="corner">
                                <h6 style="margin-left:-100px; color: green;"><i class="fas fa-male" style="color:solid black;"></i><strong>&nbsp;90%</strong></h6>
                                <h6 style="margin-left:-100px;"><i class="fas fa-rupee-sign"></i><strong>&nbsp;<%out.println(fee); %></strong></h6>
                                <h6 style="margin:11px;"><i class="fas fa-map-marker-alt" style="color: solid black;"></i><strong>&nbsp;<%out.println(city); %></strong>
                                </h6>
                                <h6 style="color: green; margin:12px;"><i class="fas fa-notes-medical"></i><strong>&nbsp;Available Today</strong></h6>
                                <h6 style="color: green; margin:12px;"><i class="fas fa-notes-medical"></i><strong>&nbsp;Contact:<%out.println(mobile); %></strong></h6>

                                <h6 style="color:red; margin-left:25px;"><i class="fas fa-clock"></i><strong>&nbsp;<%out.println(from); %>AM T0 <%out.println(to);%>PM</strong></h6></div>
                            <div class="ctn">
                                <button style="width:auto; top:0px; margin:2px; padding: 7px 9px; color:white;"><b><a href="viewprofile.jsp?did=<%=rs.getString(1)%>">View Profile</a></b></button>


                                <button style="width:auto; top:0px; margin:2px; padding: 7px 9px; color:white;"><b><a href="daypage.jsp?did=<%=rs.getString(1)%>">Book Appointment</a></b></button>
                            </div>
                        </div>
                        <%
                                    }
                                }

                            } catch (Exception e) {
                                response.sendRedirect("index.jsp");
                            }
                        %>
                    </center>

                    <!-- End PAge Content -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- End Container fluid  -->
                    <!-- ============================================================== -->
                    <!-- ============================================================== -->
                    <!-- footer -->
                    <!-- ============================================================== -->
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
