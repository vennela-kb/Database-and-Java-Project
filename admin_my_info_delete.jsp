<%-- 
    Document   : admin_my_info_delete
    Created on : Feb 26, 2021, 2:59:37 PM
    Author     : venne
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
        
        
        PreparedStatement ps = con.prepareStatement("Delete from ADMIN_DETAIL where ADMIN_ID=?"); 
         
       ps.setString(1,id1);
      
       ps.executeUpdate();
       out.println("Account deletion successful");
            
      %>      
    </body>
</html>
