<%-- 
    Document   : deleteaction
    Created on : 31 Jan, 2015, 10:08:46 AM
    Author     : kaushik123
--%>
<%@include file="connect.jsp" %>
<%@include file="admin_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletion Page</title>
    </head>
    <body>
        <%
           
        String id1 = request.getParameter("id");
        
        
        PreparedStatement ps = con.prepareStatement("Delete from USER_REGISTRATION where USERID =?"); 
         
       ps.setString(1,id1);
      
       ps.executeUpdate();
       out.println("Account deletion successful");
            
      %>      
    </body>
</html>
