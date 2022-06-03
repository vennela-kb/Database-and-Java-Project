<%-- 
    Document   : user_remainder_page
    Created on : Feb 14, 2021, 10:20:49 PM
    Author     : venne
--%>
<%@include file="admin_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Remainder Page</title>
    </head>
    <body>
        <form action="admin_rem_add_action.jsp" method="POST">
        <center>
        <h1>REMAINDER</h1>
        <form action="user_remainder_page.jsp">
            <table>
                <tr><td>ADMIN ID:</td><td><input type="text" name="admin_id" value="" /></td></tr>
                <tr><td>REMAINDER ID:</td><td><input type="text" name="rem_id" value="" /></td></tr>
                <tr><td>DATE:</td><td><input type="date" name="date" value="" /></td></tr>
                <tr><td>TIME:</td><td><input type="time" name="time" value="" /></td></tr>
                <tr><td>NOTE:</td><td><input type="text" name="note" value="" /></td></tr>
                <tr><td></td><td style="padding:20px"><input type="submit" value="save" />&nbsp<input type="submit" value="Cancel" /></td></tr>
            </table>     
        </center>
            </form>
    </body>
</html>
