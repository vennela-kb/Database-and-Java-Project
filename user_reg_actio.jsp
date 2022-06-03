<%-- 
    Document   : user_reg_actio.jsp
    Created on : Feb 22, 2021, 10:06:53 AM
    Author     : venne
--%>

<%@include file="index.jsp" %>
<%@include file="connect.jsp" %>
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
        String userid=request.getParameter("uid");
        String username=request.getParameter("uname");
        String fname=request.getParameter("fname");
        String lname=request.getParameter("lname");
        String password=request.getParameter("pword");
        String gender=request.getParameter("gender");
        String email_id=request.getParameter("email");
        String phone_no =request.getParameter("pno");
        String date_of_birth=request.getParameter("dob");
        String address=request.getParameter("address");
        
        PreparedStatement ps=con.prepareStatement("insert into USER_REGISTRATION values(?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,userid );
        ps.setString(2,username);
        ps.setString(3,fname);
        
        ps.setString(4,lname);
        ps.setString(5,password);
        ps.setString(6,gender);
        ps.setString(7,email_id);
        ps.setString(8,phone_no);
        ps.setString(9,date_of_birth);
        ps.setString(10,address);
        
        int k=ps.executeUpdate();
         if(k!=0)
        {
          out.println("Registered Sucessfully");  
        }
         else
         {
             out.println("Please enter all the fields ");
         }
        
       
        %>
    </body>
</html>

