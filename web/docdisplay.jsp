<%-- 
    Document   : services
    Created on : Feb 19, 2019, 5:17:20 PM
    Author     : Ankit Mishra
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Hello Doctors</title>

        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- Swiper CSS -->
        <link rel="stylesheet" href="css/swiper.min.css">

        <!-- Styles -->
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="doc.css">
        <link rel="stylesheet" href="stylesearchbox.css">
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
                                    <li class="current-menu-item"><a href="showdoc.jsp">Book Appointment</a></li>
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
                        <h3>BookAppointment</h3>

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
  }
  .s01 form .inner-form .input-field.third-wrap .btn3-search {
    font-size: 19px;
  }
}

</style>
	<center>
      <form>
        <fieldset>
        </fieldset>
        <div class="inner-form">
          <div class="input-field first-wrap">
            <select style="height:100%; width:130%; border-radius:5px;">
			<option disabled="disabled" selected="selected">Select Your Location</option>
			<option>Bhopal</option>
			<option>Kanpur</option>
			<option>New Delhi</option>
			<option>Kolkata</option>
			</select>
          </div>
          <div class="input-field second-wrap">
            <select style="height:100%; border-radius:5px; ">
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
            <button class="btn3-search" type="button">Search</button>
          </div>
        </div>
      </form>
	  </center>
    </div>
        <!-- ------------------------------------------------------------------------------->
        <!-------------------------------------doctor display------------------------------------------ -->
    <center>
        <%

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
                rs = stmt.executeQuery("select * from doctors");
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
            <div class="im"><img src="image/<%=image%>" /> </div>
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


                <h6 style="color:red; margin-left:25px;"><i class="fas fa-clock"></i><strong>&nbsp;<%out.println(from); %>AM T0 <%out.println(to); %>PM</strong></h6></div>
            <div class="ctn">
                <button style="width:auto; top:0px; margin:2px; padding: 7px 9px;"><b>View Profile</b></button>

                <button style="width:auto; top:0px; margin:2px; background-color:none; padding: 7px 9px;"><b>Contact</b></button>
                <button style="width:auto; top:0px; margin:2px; padding: 7px 9px;"><b>Book Appointment</b></button>
            </div>
        </div>
        <%
                }

            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
        %>
    </center>
    <!-------------------------------------doctor display------------------------------------------ -->
    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-4">
                        <div class="foot-about">
                            <h3><a href="#" style="color:blue"><img src="images/a.png"/></a></h3>

                            <p></p>

                            <p class="copyright">
                                Copyright &copy;<script>& nbsp;
                                    document.write(new Date().getFullYear());</script>&nbsp;&nbsp;&nbsp;Copyright &copy; All rights reserved by Ankit Mishra & Vaibhav Agrawal
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h3>Contact</h3>

                            <ul class="p-0 m-0">
                                <li><span>Address:</span>Maulana Azad National Institute Of Technology</li>
                                <li><span>Phone:</span>+919956261086</li>
                                <li><span>Email:</span>95ankitmishra@gmail.com</li>
                            </ul>
                        </div>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-4 mt-5 mt-md-0">
                        <div class="foot-links">
                            <h3>Usefull Links</h3>

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
