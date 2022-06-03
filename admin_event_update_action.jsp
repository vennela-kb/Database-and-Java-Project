<%-- 
    Document   : updatedocprofile
    Created on : Jan 9, 2015, 11:23:01 PM
    Author     : MyLap
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@include file="admin_after_login.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="connect.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
       <%
            String id=request.getParameter("admin_id");
            String eve_id =request.getParameter("event_id");
            String eve_type =request.getParameter("event_type");
            String eve_name=request.getParameter("ename");
            String date_eve =request.getParameter("de");
            String time_eve=request.getParameter("time");
            String addre =request.getParameter("address");
            String email_id=request.getParameter("email");
            String p_no =request.getParameter("pno");
            
         
        PreparedStatement ps=con.prepareStatement("update ADMIN_EVE set EVENT_TYPE=?, EVENT=?, DATE_OF_EVENT=?,TIME_OF_EVENT=?, ADDRESS_OF_EVENT=?, EMAIL_ID=?,PHONE_NO=? where EVENT_ID='"+eve_id+"'");
        
      
          ps.setString(1,eve_type);
          ps.setString(2,eve_name);
          ps.setString(3,date_eve);
          ps.setString(4,time_eve);
          ps.setString(5,addre);
          ps.setString(6,email_id);
          ps.setString(7,p_no);
                   
             
       
        int k=ps.executeUpdate();
       
        if(k!=0)
        {
            out.println("updated succesfully");
        }
      
        %>
        
      
        
    </body>
</html>
