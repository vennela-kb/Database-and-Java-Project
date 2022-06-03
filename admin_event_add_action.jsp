<%-- 
    Document   : user_eve_add_action
    Created on : Feb 22, 2021, 11:10:48 AM
    Author     : venne
--%>
<%@include file="connect.jsp" %>
<%@include file="admin_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <body >
        <%
        String adminid=request.getParameter("admin_id");
        String event_id=request.getParameter("event_id");
        String event_type=request.getParameter("event");
        String event=request.getParameter("ename");
        String date_of_event=request.getParameter("de");
        String time_of_event=request.getParameter("time");
        String address_of_event=request.getParameter("address");
        String email_id =request.getParameter("email");
        String contact_no=request.getParameter("pno");
        
        PreparedStatement ps=con.prepareStatement("insert into ADMIN_EVE values(?,?,?,?,?,?,?,?,?)");
        ps.setString(1,adminid );
        ps.setString(2,event_id);
        ps.setString(3,event_type);
        
        ps.setString(4,event);
        ps.setString(5,date_of_event);
        ps.setString(6,time_of_event);
        ps.setString(9,contact_no);
        ps.setString(7,address_of_event);
        ps.setString(8,email_id);
        
        int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("Added Sucessfully");  
        }
         else
         {
             out.println("Please enter all the fields ");
         }
        
       
        %>
    </body>
</html>
