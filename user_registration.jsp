<%-- 
    Document   : registration
    Created on : Feb 11, 2021, 4:18:27 PM
    Author     : venne
--%>
<%@include file="index.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User SignUp Page</title>
    </head>
    <body>
        <center>
        <h1>REGISTRATION</h1>
        <form action="user_reg_actio.jsp">
                    <table>
            
            <tr><td>USER ID:</td><td><input type="text" name="uid" value="" /></td></tr>
            <tr><td>USERNAME:</td><td><input type="text" name="uname" value="" /></td></tr>
            <tr><td>FIRST NAME:</td><td><input type="text" name="fname" value="" /></td></tr>
            <tr><td>LAST NAME:</td><td><input type="text" name="lname" value="" /></td></tr>
            <tr><td>PASSWORD:</td><td><input type="password" name="pword" value="" /></td></tr>
            <tr><td>GENDER:</td><td><input type="radio" name="gender" value="female" />FEMALE<input type="radio" name="gender" value="male" />MALE</tr>
            <tr><td>EMAIL ID:</td><td><input type="email" name="email" value="" /></td></tr>   
            <tr><td>PHONE NO:</td><td><input type="text" name="pno" value="" /></td></tr>
            <tr><td>DATE OF BIRTH:</td><td><input type="date" name="dob" value="" /></td></tr>
            <tr><td>ADDRESS:</td><td><input type="text" name="address" value="" /></td></tr>
            <tr> <td></td><td style="padding:20px"><input type="submit" value="submit" />&nbsp<input type="submit" value="Cancel" /></td></tr>
            <tr><td></td></tr>
        </table>

        </form>
</center>
    </body>
</html>
