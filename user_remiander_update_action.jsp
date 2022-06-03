<%-- 
    Document   : user_remiander_update_action
    Created on : Feb 25, 2021, 11:21:43 PM
    Author     : venne
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@include file="admin_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="connect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String id=request.getParameter("admin_id");
            String r_id =request.getParameter("rem_id");
            String date =request.getParameter("date");
            String time=request.getParameter("time");
            String note =request.getParameter("note");
            
         
        PreparedStatement ps=con.prepareStatement("update USER_REMAINDER_TABLE set TIME_OF_REMAINDER=?, DATE_OF_REMAINDER=?, NOTE=? where REMIANDER_ID='"+r_id+"'");
        
      
          ps.setString(1,time);
          ps.setString(2,date);
          ps.setString(3,note);
                   
             
       
        int k=ps.executeUpdate();
       
        if(k!=0)
        {
            out.println("updated succesfully");
        }
      
        %>
        
      
        
    </body>
</html>
