<%-- 
    Document   : user_profile_page
    Created on : Feb 14, 2021, 10:12:18 PM
    Author     : venne
--%>
<%@include file="connect.jsp" %>
<%@include file="user_page_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Update Profile Page</title>
    </head>
    <body>
        <center>
        <h1>PROFILE</h1>
        
        <form action="for_user_profile_update_action.jsp">
<% 
   
        String id=request.getParameter("id");
    
Statement st=con.createStatement();         
ResultSet rs=st.executeQuery("select * from USER_REGISTRATION where USERID='"+id+"'");
rs.next();
    
         %>
                    <table>
             <tr><td>USER ID:</td><td><input type="text" name="uid" value="<%=id%>" readonly="readonly" /></td></tr>  
             <tr><td>USERNAME:</td><td><input type="text" name="uname" value="<%=rs.getString(2)%>" readonly="readonly"/></td></tr>   
             <tr><td>FIRST NAME:</td><td><input type="text" name="fname" value="<%=rs.getString(3)%>" /></td></tr>
             <tr><td>LAST NAME:</td><td><input type="text" name="lname" value="<%=rs.getString(4)%>" /></td></tr>
             <tr><td>PASSWORD:</td><td><input type="text" name="pword" value="<%=rs.getString(5)%>"></td></tr>
             <tr><td>GENDER:</td><td><input type="text" name="gender" value="<%=rs.getString(6)%>" /></td></tr> 
             <tr><td>EMAIL ID:</td><td><input type="text" name="email" value="<%=rs.getString(7)%>" /></td></tr>
            <tr><td>PHONE NO:</td><td><input type="text" name="pno" value="<%=rs.getString(8)%>" /></td></tr>   
            <tr><td>DATE OF BIRTH:</td><td><input type="text" name="dob" value="<%=rs.getString(9)%>" /></td></tr>
           <tr><td>ADDRESS:</td><td><input type="text" name="address" value="<%=rs.getString(10)%>" /></td></tr>
           
            <tr> <td></td><td style="padding:20px"><input type="submit" value="Update" />&nbsp<input type="submit" value="Cancel" /></td></tr>
                    </table>
          </center>
    </form>    
    </body>
</html>
