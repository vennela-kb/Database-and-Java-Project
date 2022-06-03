<%-- 
    Document   : user_profile_page
    Created on : Feb 14, 2021, 10:12:18 PM
    Author     : venne
--%>
<%@include file="admin_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile Page</title>
    </head>
    <body>
     <form action="admin_profile_action.jsp">
          
    <center>
        <h1>PROFILE</h1>
                    <table>
            
            <tr><td>ADMIN ID:</td><td><input type="text" name="admin_id" value="" /></td></tr>
            <tr><td>FIRST NAME:</td><td><input type="text" name="fname" value="" /></td></tr>
            <tr><td>LAST NAME:</td><td><input type="text" name="lname" value="" /></td></tr>
            <tr><td>PASSWORD:</td><td><input type="password" name="pword" value="" /></td></tr>
            <tr><td>GENDER:</td><td><input type="radio" name="gender" value="female" />Female<input type="radio" name="gender" value="male" />Male<input type="radio" name="gender" value="transgender" />Transgender</td></tr>
            <tr><td>EMAIL ID:</td><td><input type="email" name="email" value="" /></td></tr>   
            <tr><td>PHONE NO:</td><td><input type="text" name="pno" value="" /></td></tr>
            <tr><td>DATE OF BIRTH:</td><td><input type="date" name="date" value="" /></td></tr>
            <tr><td>ADDRESS:</td><td><input type="text" name="address" value="" /></td></tr>
            <tr> <td></td><td style="padding:20px"><input type="submit" value="save" />&nbsp<input type="submit" value="Cancel" /></td></tr>
            <tr><td></td></tr>
        </table>
        </center>
     </form>
     </body>
</html>
