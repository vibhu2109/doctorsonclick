package org.apache.jsp.monster_002dhtml;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class viewprofile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.8.1/css/all.css\" integrity=\"sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf\" crossorigin=\"anonymous\">\n");
      out.write("    <!-- Tell the browser to be responsive to screen width -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <link href=\"vp.css\" rel=\"stylesheet\">\n");
      out.write("\t<style>\n");
      out.write("\tbody{\n");
      out.write("margin: 0 auto;\n");
      out.write("background-color:white;\n");
      out.write("background-repeat: no-repeat;\n");
      out.write("background-size: 100% 720px;\n");
      out.write("}\n");
      out.write(".container2{\n");
      out.write("width:67%;\n");
      out.write("height:500px;\n");
      out.write("margin-left: 205px;\n");
      out.write("border-color: solid black;\n");
      out.write("border-radius: 8px;\n");
      out.write("background-color:#e7e4e4;\n");
      out.write("border-color:1px solid black;\n");
      out.write("margin-top: 70px;\n");
      out.write("\n");
      out.write("} \n");
      out.write(".im{\n");
      out.write("width:190px;\n");
      out.write("height:190px;\n");
      out.write("margin-left: 45px;\n");
      out.write("border-color:red;\n");
      out.write("background-color:grey;\n");
      out.write("margin-top: 19px;\n");
      out.write("border-radius: 6px;\n");
      out.write("position:absolute;\t\n");
      out.write("}\n");
      out.write("h1\n");
      out.write("{\n");
      out.write("\tmargin-left: 23px;;\n");
      out.write("\tposition:absolute;\n");
      out.write("\tmargin-top:219px;\n");
      out.write("\tfont-size: 50px;\n");
      out.write("\n");
      out.write("}\n");
      out.write("p\n");
      out.write("{\n");
      out.write("     margin-left: 475px;\n");
      out.write("\tfont-family:monospace;\n");
      out.write("\tfont-size: 21px;\t\n");
      out.write("}\n");
      out.write("h2\n");
      out.write("{\n");
      out.write("\tmargin-left: 645px;\n");
      out.write("\tfont-family:monospace;\n");
      out.write("\tfont-size: 21px;\n");
      out.write("}\n");
      out.write("h6\n");
      out.write("{\n");
      out.write("\tmargin-left: 17px;\n");
      out.write("\tmargin-bottom:12px;\n");
      out.write("\tposition: absolute;\n");
      out.write("\tfont-size: 12px;\n");
      out.write("\tfont-family: sans-serif;\n");
      out.write("\n");
      out.write("}\n");
      out.write("h4\n");
      out.write("{\n");
      out.write("\tmargin-left: 37px;\n");
      out.write("\tposition: absolute;\n");
      out.write("\tfont-size: 19px;\n");
      out.write("\tfont-family: sans-serif;\n");
      out.write("}\n");
      out.write(".head\n");
      out.write("{\n");
      out.write("width:490px;\n");
      out.write("height:290px;\n");
      out.write("margin-left: 461px;\n");
      out.write("margin-top: -2px;\n");
      out.write("position:absolute;\n");
      out.write("}\n");
      out.write("table,th,td{\n");
      out.write("border: 1.5px solid black;\n");
      out.write("font-size: 18px;\n");
      out.write("font-family: sans-serif;\n");
      out.write("border-collapse: collapse;\n");
      out.write("padding: 13px;\n");
      out.write("text-align: left;\n");
      out.write("}\n");
      out.write("table#t1 tr:nth-child(even) {\n");
      out.write("\twidth:100%;\n");
      out.write("\theight:100%;\n");
      out.write("  background-color: #eee;\n");
      out.write("}\n");
      out.write("table#t1 tr:nth-child(odd) {\n");
      out.write("\twidth:100%;\n");
      out.write("\theight:100%;\n");
      out.write(" background-color: #fff;\n");
      out.write("\t</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("    \t<div class=\"container2\">\n");
      out.write("             <div class=\"im\"><img src=\"../image/");
      out.print(image);
      out.write("\" alt=\"anilgupta\" style=\"width:190px;\n");
      out.write("height:190px;\"></div>\n");
      out.write("                                <h1 style=\"color:#1a1aff; font-size: 40px; margin-bottom: 15px;\">&nbsp;Dr.");
out.println(dfname); 
out.println(dlname); 
      out.write("</h1></br>\n");
      out.write("                                <div class=\"head\">\n");
      out.write("                                    <table border=\"4\" id=\"t1\">\n");
      out.write("                                        <caption><b>Doctor's Details</b></caption>\n");
      out.write("                                        <tr>\n");
      out.write("                                            <th><Strong>Gender-</Strong></th>\n");
      out.write("                                            <td><Strong>Male</Strong></td></tr>\n");
      out.write("\n");
      out.write("                                   <tr> <th><Strong>Qualification-</Strong>\n");
      out.write("                                   <td><Strong>MBBS</Strong></td></tr>\n");
      out.write("                                <tr><th><Strong> Experience-</Strong></th>\n");
      out.write("                                <td><Strong>10 Years</Strong></td></tr>\n");
      out.write("                                <tr><th><STRONG>Specialization-</STRONG></th>\n");
      out.write("                                  <td><STRONG>Cardiologist</STRONG></td></tr>                          \n");
      out.write("                                <tr><th><Strong>ClinicAddress-</Strong></th>\n");
      out.write("                                <td><Strong>Red Cross Hospital</Strong></td></tr>\n");
      out.write("                               <tr> <th><Strong>DoctorType-</Strong></th>\n");
      out.write("                                <td><Strong>Allopathic</Strong></td></tr>\n");
      out.write("                                 <tr><th><Strong>ConsultantFee-</Strong></th>\n");
      out.write("                                  <td><Strong>300Rs.</Strong></td></tr>\n");
      out.write("                               <tr> <th><Strong>MobileNo-</Strong></th>\n");
      out.write("                                  <td><Strong>9865231548</Strong></td></tr>\n");
      out.write("                               <tr> <th><Strong>City-</Strong></th>\n");
      out.write("                                <td><Strong>Bhopal</Strong></td>\n");
      out.write("                                        </tr>\n");
      out.write("\n");
      out.write("                               </table>\n");
      out.write("                           </div>\n");
      out.write("                                 <h4 style=\"margin-top:245px; margin-left:42px;\">(anilgupta@gmail.com)</h4></br>\n");
      out.write("                                <h4 style=\"color:red; margin-top:330px;\"><Strong>Available Days- Monday To Friday</Strong></h4></br>\n");
      out.write("                                <h4 style=\"color: green;margin-top:340px;\"><Strong>Availble Time- 08:30AM TO 10:30AM</Strong></h4></br>\n");
      out.write("        </div>\n");
      out.write("        ");

                }
            }
                   catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
        
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
