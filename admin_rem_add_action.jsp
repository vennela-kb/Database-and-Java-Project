<%-- 
    Document   : user_add_rem_action
    Created on : Feb 22, 2021, 7:28:42 PM
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
        String rem_id=request.getParameter("remainder_id");
        String date=request.getParameter("date");
        String time=request.getParameter("time");
        String note=request.getParameter("note");
        
        PreparedStatement ps=con.prepareStatement("insert into ADMIN_REM values(?,?,?,?,?)");
        ps.setString(2,rem_id);
        ps.setString(1,adminid );
        ps.setString(3,date);
        ps.setString(4,time);
        ps.setString(5,note);
        
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