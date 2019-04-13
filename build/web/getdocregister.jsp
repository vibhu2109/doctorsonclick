<%-- 
    Document   : getdocregister
    Created on : Mar 2, 2019, 11:00:48 PM
    Author     : Ankit Mishra
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DOCDao.doctorRegisterDao"%>
<%@page import="DOCPojo.DoctorsPojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,javax.sql.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            MultipartRequest multipartRequest = new MultipartRequest(request, "E:/Netbeans/DoctorsOnClick/web/image");
            String image = multipartRequest.getFile("img").getName();
            DoctorsPojo str = new DoctorsPojo();
            str.setDfname(multipartRequest.getParameter("first_name").toString());
            str.setDlname(multipartRequest.getParameter("last_name").toString());
            str.setDemail(multipartRequest.getParameter("email").toString());
            str.setGender(multipartRequest.getParameter("gender").toString());
            str.setPassword(multipartRequest.getParameter("Password").toString());

            str.setAddress(multipartRequest.getParameter("address").toString());

            str.setMobile(multipartRequest.getParameter("phone").toString());
            str.setDoc_type(multipartRequest.getParameter("subject").toString());
            str.setQualification(multipartRequest.getParameter("text").toString());
            str.setSpecialization(multipartRequest.getParameter("special").toString());
            str.setExperience(multipartRequest.getParameter("exp").toString());
            str.setCon_fee(multipartRequest.getParameter("confee").toString());
            str.setAvailable_from(multipartRequest.getParameter("Time1").toString());
            str.setAvailable_to(multipartRequest.getParameter("Time2").toString());
            str.setCity(multipartRequest.getParameter("city").toString());
            str.setSlot(multipartRequest.getParameter("sub").toString());

            if (multipartRequest.getParameter("t101") == null) {
                str.setSUN("");
            } else {
                str.setSUN(multipartRequest.getParameter("t101"));
            }

            if (multipartRequest.getParameter("t102") == null) {
                str.setMON("");
            } else {
                str.setMON(multipartRequest.getParameter("t102"));
            }

            if (multipartRequest.getParameter("t103") == null) {
                str.setTUE("");
            } else {
                str.setTUE(multipartRequest.getParameter("t103"));
            }

            if (multipartRequest.getParameter("t104") == null) {
                str.setWED("");
            } else {
                str.setWED(multipartRequest.getParameter("t104"));
            }

            if (multipartRequest.getParameter("t105") == null) {
                str.setTHU("");
            } else {
                str.setTHU(multipartRequest.getParameter("t105"));
            }

            if (multipartRequest.getParameter("t106") == null) {
                str.setFRI("");
            } else {
                str.setFRI(multipartRequest.getParameter("t106"));
            }

            if (multipartRequest.getParameter("t107") == null) {
                str.setSAT("");
            } else {
                str.setSAT(multipartRequest.getParameter("t107"));
            }

            str.setImage(image);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/doctorsonclick", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select count(*) from doctors where demail='" + str.getDemail() + "' ");
            rs.next();
            int i = rs.getInt(1);
            System.out.println(i);
            if (i > 0) {
                out.println("<script type='text/javascript'>alert('already registered');window.location.href='doctorsignup.html';</script>");
            } else {
                doctorRegisterDao d = new doctorRegisterDao();
                int j = d.Insert(str);
                if (j > 0) {

                    ResultSet rs1 = stmt.executeQuery("select * from doctors where demail='" + str.getDemail() + "' ");
                    rs1.next();
                    String did = rs1.getString("did");
                    String st = rs1.getString("available_from");
                    String et = rs1.getString("available_to");
                    int slot = Integer.parseInt(rs1.getString("slot"));

                    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");

                    Calendar startCalendar = Calendar.getInstance();
                    startCalendar.setTime(sdf.parse(st));
                    startCalendar.add(Calendar.MINUTE, -1);
                    
                    if (startCalendar.get(Calendar.MINUTE) < slot) {
                        startCalendar.set(Calendar.MINUTE, slot);
                    } else {
                        startCalendar.add(Calendar.MINUTE, slot); // overstep hour and clear minutes
                        startCalendar.clear(Calendar.MINUTE);
                    }

                    Calendar endCalendar = Calendar.getInstance();

                    endCalendar.setTime(sdf.parse(et));

                    // if you want dates for whole next day, uncomment next line
                    //endCalendar.add(Calendar.DAY_OF_YEAR, 1);
                    //endCalendar.add(Calendar.HOUR_OF_DAY, 24 - endCalendar.get(Calendar.HOUR_OF_DAY));
                    endCalendar.clear(Calendar.MINUTE);
                    endCalendar.clear(Calendar.SECOND);
                    //endCalendar.clear(Calendar.MILLISECOND);

                    SimpleDateFormat slotTime = new SimpleDateFormat("hh:mma");
                    //SimpleDateFormat slotDate = new SimpleDateFormat(", dd/MM/yy");
                    while (endCalendar.after(startCalendar)) {
                        String slotStartTime = slotTime.format(startCalendar.getTime());
                        //String slotStartDate = slotDate.format(startCalendar.getTime());

                        startCalendar.add(Calendar.MINUTE, slot);
                        String slotEndTime = slotTime.format(startCalendar.getTime());
                        stmt.executeUpdate("INSERT INTO timeslot(did,start_time,end_time) VALUES('" + did + "','" + slotStartTime + "','" + slotEndTime + "')");
//                        out.println("<h1>  Slot Time :" + slotStartTime + " - " + slotEndTime + "</h1>\n");
                    }
                   
                            out.println("<script type='text/javascript'>alert('successfully register');window.location.href='index.jsp';</script>");

                } else {
                    out.println("<script type='text/javascript'>alert('not register');window.location.href='index.jsp';</script>");
                }

            }

        
        %>
    </body>
</html>
