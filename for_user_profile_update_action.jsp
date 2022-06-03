<%-- 
    Document   : for_user_profile_update_action
    Created on : Feb 26, 2021, 11:57:51 AM
    Author     : venne
--%>

<%-- 
    Document   : user_event_update_action
    Created on : Feb 25, 2021, 8:17:29 PM
    Author     : venne
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@include file="user_after_after_login.jsp" %>
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
            String id=request.getParameter("uid");
            String uname=request.getParameter("uname");
            String fname =request.getParameter("fname");
            String lname=request.getParameter("lname");
            String pword =request.getParameter("pword");
            String gender=request.getParameter("gender");
            String email =request.getParameter("email");
            String pno=request.getParameter("pno");
            String dob =request.getParameter("dob");
            String address =request.getParameter("address");
            
         
        PreparedStatement ps=con.prepareStatement("update USER_REGISTRATION where USERID='"+sid+"' set FIRST_NAME=?, LAST_NAME=?, PASSWORD=?, GENDER=?, EMAIL_ID=?, DATE_OF_BIRTH=?,PHONE_NO=? , ADDRESS=? where USERID='"+id+"'");
        
      
          ps.setString(1,fname);
          ps.setString(2,lname);
          ps.setString(3,pword);
          ps.setString(4,gender);
          ps.setString(5,email);
          ps.setString(6,dob);
          ps.setString(7,pno);
          ps.setString(7,address);
                   
             
       
        int k=ps.executeUpdate();
       
        if(k!=0)
        {
            out.println("updated succesfully");
        }
      
        %>
        
      
        
    </body>
</html>
