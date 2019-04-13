package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class services_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/registerPopup.html");
    _jspx_dependants.add("/loginPopup.html");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <title>Hello Doctors</title>\n");
      out.write("\n");
      out.write("    <!-- Required meta tags -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Swiper CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/swiper.min.css\">\n");
      out.write("\n");
      out.write("    <!-- Styles -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"stylesearchbox.css\">\n");
      out.write("    <link href=\"main1.css\" rel=\"stylesheet\" />\n");
      out.write("    <!-- ---------------------CSS for login and registration form-----------------------------      \n");
      out.write(" -->\n");
      out.write("<style>\n");
      out.write("body {font-family: Arial, Helvetica, sans-serif;}\n");
      out.write("\n");
      out.write("/* Full-width input fields */\n");
      out.write("input[type=text], input[type=password] {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 12px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  display: inline-block;\n");
      out.write("  border: 1px solid #ccc;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Set a style for all buttons */\n");
      out.write("/*\n");
      out.write("button {\n");
      out.write("  background-color: deepskyblue;\n");
      out.write("  color: white;\n");
      out.write("  padding: 14px 20px;\n");
      out.write("  margin: 8px 0;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("button:hover {\n");
      out.write("  opacity: 0.8;\n");
      out.write("}*/\n");
      out.write("\n");
      out.write("/* Extra styles for the cancel button */\n");
      out.write(".cancelbtn {\n");
      out.write("  width: auto;\n");
      out.write("  padding: 10px 18px;\n");
      out.write("  background-color: #f44336;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Center the image and position the close button */\n");
      out.write(".imgcontainer {\n");
      out.write("  text-align: center;\n");
      out.write("  margin: 24px 0 12px 0;\n");
      out.write("  position: relative;\n");
      out.write(" \n");
      out.write("}\n");
      out.write("\n");
      out.write("img.avatar {\n");
      out.write("  width: 10%;\n");
      out.write("  border-radius: 30%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".container {\n");
      out.write("  padding: 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("span.psw {\n");
      out.write("  float: right;\n");
      out.write("  padding-top: 16px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The Modal (background) */\n");
      out.write(".modal {\n");
      out.write("  display: none; /* Hidden by default */\n");
      out.write("  position: fixed; /* Stay in place */\n");
      out.write("  z-index: 1; /* Sit on top */\n");
      out.write("  left: 0;\n");
      out.write("  top: 0;\n");
      out.write("  width: 100%; /* Full width */\n");
      out.write("  height: 100%; /* Full height */\n");
      out.write("  overflow: auto; /* Enable scroll if needed */\n");
      out.write("  background-color: rgb(0,0,0); /* Fallback color */\n");
      out.write("  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */\n");
      out.write("  padding-top: 60px;\n");
      out.write(" \n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Modal Content/Box */\n");
      out.write(".modal-content {\n");
      out.write("  background-color: #fefefe;\n");
      out.write("  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */\n");
      out.write("  border: 1px solid #888;\n");
      out.write("  width: 50%; /* Could be more or less, depending on screen size */\n");
      out.write(" \n");
      out.write("}\n");
      out.write("\n");
      out.write("/* The Close Button (x) */\n");
      out.write(".close {\n");
      out.write("  position: absolute;\n");
      out.write("  right: 25px;\n");
      out.write("  top: 0;\n");
      out.write("  color: #000;\n");
      out.write("  font-size: 35px;\n");
      out.write("  font-weight: bold;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".close:hover,\n");
      out.write(".close:focus {\n");
      out.write("  color: red;\n");
      out.write("  cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Add Zoom Animation */\n");
      out.write(".animate {\n");
      out.write("  -webkit-animation: animatezoom 0.6s;\n");
      out.write("  animation: animatezoom 0.6s\n");
      out.write("}\n");
      out.write("\n");
      out.write("@-webkit-keyframes animatezoom {\n");
      out.write("  from {-webkit-transform: scale(0)} \n");
      out.write("  to {-webkit-transform: scale(1)}\n");
      out.write("}\n");
      out.write("  \n");
      out.write("@keyframes animatezoom {\n");
      out.write("  from {transform: scale(0)} \n");
      out.write("  to {transform: scale(1)}\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Change styles for span and cancel button on extra small screens */\n");
      out.write("@media screen and (max-width: 300px) {\n");
      out.write("  span.psw {\n");
      out.write("     display: block;\n");
      out.write("     float: none;\n");
      out.write("  }\n");
      out.write("  .cancelbtn {\n");
      out.write("     width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<!-- -----------------------------------------------------------------------------------\n");
      out.write(" -->\n");
      out.write("</head>\n");
      out.write("<body class=\"single-page\">\n");
      out.write("    <header class=\"site-header\">\n");
      out.write("        <div class=\"nav-bar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12 d-flex flex-wrap justify-content-between align-items-center\">\n");
      out.write("                        <div class=\"site-branding d-flex align-items-center\">\n");
      out.write("                            <a class=\"d-block\" href=\"index.html\" rel=\"home\"><img src=\"images/a.png\"/></a>\n");
      out.write("                        </div><!-- .site-branding -->\n");
      out.write("<!-------------- --------------------registration and login-------------------------- -->\n");
      out.write("\n");
      out.write("                        <div id=\"head_c2\">\n");
      out.write("                                <button onclick=\"document.getElementById('id02').style.display = 'block'\" style=\"width:auto; top:0px;\">\n");
      out.write("                                    Register</button>\n");
      out.write("                                  ");
      out.write("<div id=\"id02\" class=\"modal\">\n");
      out.write("    <form class=\"modal-content animate\" action=\"\">\n");
      out.write("        <div class=\"imgcontainer\">\n");
      out.write("            <span onclick=\"document.getElementById('id02').style.display = 'none'\" class=\"close\" title=\"Close Modal\">&times;</span>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div class=\"col-12 col-md-6 col-lg-3\" style=\"margin-left: 100px;\">\n");
      out.write("                    <div class=\"medical-team-wrap\">\n");
      out.write("\n");
      out.write("                        <a href=\"doctorsignup.html\" style=\"text-decoration: none;\"><img src=\"images/team-2.jpg\" alt=\"\">\n");
      out.write("                            <h3 style=color:blue;>Doctors Regstration</h3></a>                    \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                <div class=\"col-12 col-md-6 col-lg-3 mt-5 mt-md-0\">\n");
      out.write("                    <div class=\"medical-team-wrap\">\n");
      out.write("                        <a href=\"patientsignup.html\" style=\"text-decoration: none;\"> <img src=\"images/team-1.jpg\" alt=\"\">\n");
      out.write("                            <h3 style=color:blue;>Patients Registration</h3></a>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </form>\n");
      out.write("</div>\n");
      out.write(" \n");
      out.write("\n");
      out.write("                                <button onclick=\"document.getElementById('id01').style.display = 'block'\" style=\"width:auto; top:0px; margin: 3PX;\">Login</button>\n");
      out.write("                                ");
      out.write("<div id=\"id01\" class=\"modal\">\n");
      out.write("  \n");
      out.write("  <form class=\"modal-content animate\" action=\"getdoclogin.jsp\">\n");
      out.write("    <div class=\"imgcontainer\">\n");
      out.write("      <span onclick=\"document.getElementById('id01').style.display='none'\" class=\"close\" title=\"Close Modal\">&times;</span>\n");
      out.write("      <img src=\"images/dd.png\" alt=\"Avatar\" class=\"avatar\">\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("   <div class=\"container\">\n");
      out.write("      <label for=\"uname\"><b>Username</b></label></br>\n");
      out.write("      <input type=\"text\" placeholder=\"Enter Username\" name=\"email\" required/></br>\n");
      out.write("</label>\n");
      out.write("<p></p>\n");
      out.write("      <label for=\"psw\"><b>Password</b></label></br>\n");
      out.write("      <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required/>\n");
      out.write("       </label> \n");
      out.write("       <div class=\"form-group\"><label for=\"psw\"><b>Who are you:</b></label>\n");
      out.write("                <input type=\"radio\" name=\"type\" value=\"doctor\">Doctor\n");
      out.write("                <input type=\"radio\" name=\"type\" value=\"patient\">Patient\n");
      out.write("            </div>\n");
      out.write("      <button type=\"submit\">Login</button>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("       \n");
      out.write("\n");
      out.write("         <div class=\"container\" style=\"background-color:#f1f1f1\">\n");
      out.write("                <label>\n");
      out.write("        <input type=\"checkbox\" checked=\"checked\" name=\"remember\"> Remember me\n");
      out.write("      </label>\n");
      out.write("                <span class=\"psw\"><a href=\"#\">Forgot password?</a></span>\n");
      out.write("            </div>\n");
      out.write("  </form>\n");
      out.write("</div>");
      out.write("\n");
      out.write("\n");
      out.write("                            </div>\t\n");
      out.write("<!-- ---------------------------------------------------------------------------------------------------\n");
      out.write(" -->                            \n");
      out.write("                        <nav class=\"site-navigation d-flex justify-content-end align-items-center\">\n");
      out.write("                            <ul class=\"d-flex flex-column flex-lg-row justify-content-lg-end align-items-center\">\n");
      out.write("                                <li ><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                <li><a href=\"about.jsp\">About us</a></li>\n");
      out.write("                                <li class=\"current-menu-item\"><a href=\"showdoc.jsp\">Book Appointment</a></li>\n");
      out.write("                                <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("\t\t\t        <li><a href=\"news.jsp\">news</a></li>\n");
      out.write("\n");
      out.write("                               <!-- <li class=\"call-btn button gradient-bg mt-3 mt-md-0\">\n");
      out.write("                                    <a class=\"d-flex justify-content-center align-items-center\" href=\"#\"><img src=\"images/emergency-call.png\"> +34 586 778 8892</a>\n");
      out.write("                                </li>-->\n");
      out.write("                            </ul>\n");
      out.write("                        </nav><!-- .site-navigation -->\n");
      out.write("\n");
      out.write("                        <div class=\"hamburger-menu d-lg-none\">\n");
      out.write("                            <span></span>\n");
      out.write("                            <span></span>\n");
      out.write("                            <span></span>\n");
      out.write("                            <span></span>\n");
      out.write("                        </div><!-- .hamburger-menu -->\n");
      out.write("                    </div><!-- .col -->\n");
      out.write("                </div><!-- .row -->\n");
      out.write("            </div><!-- .container -->\n");
      out.write("        </div><!-- .nav-bar -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-12\">\n");
      out.write("                    <h2>BookAppointment</h2>\n");
      out.write("\n");
      out.write("                    <div class=\"breadcrumbs\">\n");
      out.write("                        <ul class=\"d-flex flex-wrap align-items-center p-0 m-0\">\n");
      out.write("                            <li><a href=\"#\">Home</a></li>\n");
      out.write("                            <li>BookAppointment</li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div><!-- .breadcrumbs -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <img class=\"header-img\" src=\"images/service-bg.png\" alt=\"\" width=\"700px\">\n");
      out.write("    </header><!-- .site-header -->\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- ---------------------------Search box-------------------------------------- -->\n");
      out.write("<body>\n");
      out.write("    <div class=\"s01\">\n");
      out.write("      <form>\n");
      out.write("        <fieldset>\n");
      out.write("          <legend>Book Your Appointment Today!</legend>\n");
      out.write("        </fieldset>\n");
      out.write("        <div class=\"inner-form\">\n");
      out.write("          <div class=\"input-field first-wrap\">\n");
      out.write("            <input id=\"search\" type=\"text\" placeholder=\"What are you looking for?\" />\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-field second-wrap\">\n");
      out.write("            <input id=\"location\" type=\"text\" placeholder=\"location\" />\n");
      out.write("          </div>\n");
      out.write("          <div class=\"input-field third-wrap\">\n");
      out.write("            <button class=\"btn-search\" type=\"button\">Search</button>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
      out.write("<!-- ------------------------------------------------------------------------------->\n");
      out.write("    \n");
      out.write(" <footer class=\"site-footer\">\n");
      out.write("        <div class=\"footer-widgets\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-12 col-md-6 col-lg-4\">\n");
      out.write("                        <div class=\"foot-about\">\n");
      out.write("                            <h2><a href=\"#\" style=\"color:blue\"><img src=\"images/a.png\"/></a></h2>\n");
      out.write("\n");
      out.write("                            <p></p>\n");
      out.write("\n");
      out.write("                            <p class=\"copyright\">\n");
      out.write("Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved by Ankit Mishra & Vaibhav Agrawal\n");
      out.write("<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>\n");
      out.write("                        </div><!-- .foot-about -->\n");
      out.write("                    </div><!-- .col -->\n");
      out.write("\n");
      out.write("                    <div class=\"col-12 col-md-6 col-lg-4 mt-5 mt-md-0\">\n");
      out.write("                        <div class=\"foot-contact\">\n");
      out.write("                            <h2>Contact</h2>\n");
      out.write("\n");
      out.write("                            <ul class=\"p-0 m-0\">\n");
      out.write("                                <li><span>Addtress:</span>Maulana Azad National Institute Of Technology</li>\n");
      out.write("                                <li><span>Phone:</span>+919956261086</li>\n");
      out.write("                                <li><span>Email:</span>95ankitmishra@gmail.com</li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div><!-- .col -->\n");
      out.write("\n");
      out.write("                    <div class=\"col-12 col-md-6 col-lg-4 mt-5 mt-md-0\">\n");
      out.write("                        <div class=\"foot-links\">\n");
      out.write("                            <h2>Usefull Links</h2>\n");
      out.write("\n");
      out.write("                            <ul class=\"p-0 m-0\">\n");
      out.write("                                <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("                                <li><a href=\"about.jsp\">About us</a></li>\n");
      out.write("                                <li><a href=\"showdoc.jsp\">Book Appointment</a></li>\n");
      out.write("                                <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("\t\t\t\t<li><a href=\"news.jsp\">news</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div><!-- .foot-links -->\n");
      out.write("                    </div><!-- .col -->\n");
      out.write("                </div><!-- .row -->\n");
      out.write("            </div><!-- .container -->\n");
      out.write("        </div><!-- .footer-widgets -->\n");
      out.write("    </footer><!-- .site-footer -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script type='text/javascript' src='js/jquery.js'></script>\n");
      out.write("    <script type='text/javascript' src='js/jquery.collapsible.min.js'></script>\n");
      out.write("    <script type='text/javascript' src='js/swiper.min.js'></script>\n");
      out.write("    <script type='text/javascript' src='js/jquery.countdown.min.js'></script>\n");
      out.write("    <script type='text/javascript' src='js/circle-progress.min.js'></script>\n");
      out.write("    <script type='text/javascript' src='js/jquery.countTo.min.js'></script>\n");
      out.write("    <script type='text/javascript' src='js/jquery.barfiller.js'></script>\n");
      out.write("    <script type='text/javascript' src='js/custom.js'></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
