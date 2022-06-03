<%-- 
    Document   : admin_profile_action
    Created on : Feb 22, 2021, 7:55:51 PM
    Author     : venne
--%>

<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="admin_after_login.jsp" %>

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
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String password =request.getParameter("pword");
        String gender=request.getParameter("gender");
        String email_id=request.getParameter("email");
        String contact_no=request.getParameter("pno");
        String date_of_birth=request.getParameter("date");
        String address =request.getParameter("address");
        
        PreparedStatement ps=con.prepareStatement("insert into ADMIN_DETAIL values(?,?,?,?,?,?,?,?,?)");
        ps.setString(1,adminid);
        ps.setString(2,fname);
        ps.setString(3,lname);
        
        ps.setString(4,password);
        ps.setString(5,gender);
        ps.setString(6,email_id);
        ps.setString(7,contact_no);
        ps.setString(8,date_of_birth);
        ps.setString(9,address);
        
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