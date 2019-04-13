package org.apache.jsp.monster_002dhtml;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public final class bookappointment_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <!-- Favicon icon -->\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"../assets/images/favicon.png\">\n");
      out.write("      <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">\n");
      out.write("    <title>Book Appointment</title>\n");
      out.write("    <!-- Bootstrap Core CSS -->\n");
      out.write("    <link href=\"../assets/plugins/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"doc.css\">\n");
      out.write("    <!-- You can change the theme colors from here -->\n");
      out.write("    <link href=\"css/colors/blue.css\" id=\"theme\" rel=\"stylesheet\">\n");
      out.write("    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("    <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"fix-header card-no-border\">\n");
      out.write("    ");
 
        response.setHeader("Cache-control","no-cache,no-store,must-validate");
    
      out.write("\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- Preloader - style you can find in spinners.css -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <div class=\"preloader\">\n");
      out.write("        <svg class=\"circular\" viewBox=\"25 25 50 50\">\n");
      out.write("            <circle class=\"path\" cx=\"50\" cy=\"50\" r=\"20\" fill=\"none\" stroke-width=\"2\" stroke-miterlimit=\"10\" /> </svg>\n");
      out.write("    </div>\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- Main wrapper - style you can find in pages.scss -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <div id=\"main-wrapper\">\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- Topbar header - style you can find in pages.scss -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <header class=\"topbar\">\n");
      out.write("            <nav class=\"navbar top-navbar navbar-toggleable-sm navbar-light\">\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- Logo -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <a class=\"navbar-brand\" href=\"myprofile.jsp\">\n");
      out.write("                        <!-- Logo icon -->\n");
      out.write("                        <h2 style=\"color:blue; margin-left:-23px; margin-top:-1px;\">DoctorsOnClick</h2>\n");
      out.write("                            <span>\n");
      out.write("                        \n");
      out.write("                            ");

                                
                                String name=session.getAttribute("pfname").toString();
                            
      out.write("\n");
      out.write("                            <h4  style=\"color: green; margin-top:56px;\">Welcome ");
      out.print(name);
      out.write("</h4>\n");
      out.write("                        </span>\n");
      out.write("                     </a>\n");
      out.write("                 </div>\n");
      out.write("                            <!-- dark Logo text -->\n");
      out.write("                           <!-- <img src=\"../assets/images/logo-text.png\" alt=\"homepage\" class=\"dark-logo\" />\n");
      out.write("                            <h4  style=\"color: green;\">Welcome To Dashboard</h4>\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </div>\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- End Logo -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <div class=\"navbar-collapse\">\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- toggle and nav items -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <ul class=\"navbar-nav mr-auto mt-md-0 \">\n");
      out.write("                        <!-- This is  -->\n");
      out.write("                        <li class=\"nav-item\"> <a class=\"nav-link nav-toggler hidden-md-up text-muted waves-effect waves-dark\" href=\"javascript:void(0)\"><i class=\"ti-menu\"></i></a> </li>\n");
      out.write("                        <li class=\"nav-item hidden-sm-down\">\n");
      out.write("                            <form class=\"app-search p-l-20\">\n");
      out.write("                                <input type=\"text\" class=\"form-control\" placeholder=\"Search for...\"> <a class=\"srh-btn\"><i class=\"ti-search\"></i></a>\n");
      out.write("                            </form>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <!-- User profile and search -->\n");
      out.write("                    <!-- ============================================================== -->\n");
      out.write("                    <ul class=\"navbar-nav my-lg-0\">\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle text-muted waves-effect waves-dark\" href=\"\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\"><img src=\"../assets/images/user.png\" alt=\"user\" class=\"profile-pic m-r-5\" />");
      out.print(name);
      out.write("</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- End Topbar header -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- Left Sidebar - style you can find in sidebar.scss  -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <aside class=\"left-sidebar\">\n");
      out.write("            <!-- Sidebar scroll-->\n");
      out.write("            <div class=\"scroll-sidebar\">\n");
      out.write("                <!-- Sidebar navigation-->\n");
      out.write("                <nav class=\"sidebar-nav\">\n");
      out.write("                    <ul id=\"sidebarnav\">\n");
      out.write("                        \n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"myprofile.jsp\" class=\"waves-effect\"><i class=\"fa fa-user m-r-10\" aria-hidden=\"true\"></i>Profile</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"myappointment.jsp\" class=\"waves-effect\"><i class=\"fa fa-table m-r-10\" aria-hidden=\"true\"></i>Book Appointment</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"myreports.jsp\" class=\"waves-effect\"><i class=\"fa fa-font m-r-10\" aria-hidden=\"true\"></i>Your Reports</a>\n");
      out.write("                        </li>\n");
      out.write("                       \n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"myview.jsp\" class=\"waves-effect\"><i class=\"fa fa-columns m-r-10\" aria-hidden=\"true\"></i>View Appointment</a>\n");
      out.write("                        </li>\n");
      out.write("                       \n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"logout.jsp\" class=\"waves-effect\"><i class=\"fa fa-info-circle m-r-10\" aria-hidden=\"true\"></i>Logout?</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"text-center m-t-30\">\n");
      out.write("                    \n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("                <!-- End Sidebar navigation -->\n");
      out.write("            </div>\n");
      out.write("            <!-- End Sidebar scroll-->\n");
      out.write("        </aside>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- End Left Sidebar - style you can find in sidebar.scss  -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- Page wrapper  -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <div class=\"page-wrapper\">\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- Container fluid  -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <!-- Bread crumb and right sidebar toggle -->\n");
      out.write("                <!-- ============================================================== -->\n");
      out.write("                <div class=\"row page-titles\">\n");
      out.write("                    <div class=\"col-md-6 col-8 align-self-center\">\n");
      out.write("                        <h3 class=\"text-themecolor m-b-0 m-t-0\">Book Appointment</h3>\n");
      out.write("                        <ol class=\"breadcrumb\">\n");
      out.write("                            <li class=\"breadcrumb-item\"><a href=\"javascript:void(0)\">Home</a></li>\n");
      out.write("                            <li class=\"breadcrumb-item active\">Book Appointment</li>\n");
      out.write("                        </ol>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-6 col-4 align-self-center\">\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("        <style>\n");
      out.write("             button {\n");
      out.write("                background-color:#2ECC71;\n");
      out.write("                color: white;\n");
      out.write("                padding: 16px 22px;\n");
      out.write("                margin: 8px 4px;\n");
      out.write("                border:1px white;\n");
      out.write("                cursor: pointer;\n");
      out.write("                width: 100%;\n");
      out.write("                text-color:white;\n");
      out.write("                text-align:center;\n");
      out.write("                border-radius:2px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            button:hover {\n");
      out.write("                opacity: 0.9;\n");
      out.write("            }\n");
      out.write("            a{\n");
      out.write("                color:#fff;\n");
      out.write("            }\n");
      out.write("         </style>\n");
      out.write("\n");
      out.write("        ");

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
            while(hr<en){
                
                out.print("<button style='width:auto; top:0px;'><a href='#'>");
                
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
        
      out.write("\n");
      out.write("        \n");
      out.write("        ");

      out.write("\n");
      out.write("                <footer class=\"footer text-center\" style=\"margin-bottom: -45px; width:70%; text-align:center;\">\n");
      out.write("                © 2019 DoctorsOnClick\n");
      out.write("            </footer>\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("            <!-- End footer -->\n");
      out.write("            <!-- ============================================================== -->\n");
      out.write("        </div>\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("        <!-- End Page wrapper  -->\n");
      out.write("        <!-- ============================================================== -->\n");
      out.write("    </div>\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- End Wrapper -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- All Jquery -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <script src=\"../assets/plugins/jquery/jquery.min.js\"></script>\n");
      out.write("    <!-- Bootstrap tether Core JavaScript -->\n");
      out.write("    <script src=\"../assets/plugins/bootstrap/js/tether.min.js\"></script>\n");
      out.write("    <script src=\"../assets/plugins/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    <!-- slimscrollbar scrollbar JavaScript -->\n");
      out.write("    <script src=\"js/jquery.slimscroll.js\"></script>\n");
      out.write("    <!--Wave Effects -->\n");
      out.write("    <script src=\"js/waves.js\"></script>\n");
      out.write("    <!--Menu sidebar -->\n");
      out.write("    <script src=\"js/sidebarmenu.js\"></script>\n");
      out.write("    <!--stickey kit -->\n");
      out.write("    <script src=\"../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js\"></script>\n");
      out.write("    <!--Custom JavaScript -->\n");
      out.write("    <script src=\"js/custom.min.js\"></script>\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <!-- Style switcher -->\n");
      out.write("    <!-- ============================================================== -->\n");
      out.write("    <script src=\"../assets/plugins/styleswitcher/jQuery.style.switcher.js\"></script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
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
