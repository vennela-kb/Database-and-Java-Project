<%-- 
    Document   : user_remainder_page
    Created on : Feb 14, 2021, 10:20:49 PM
    Author     : venne
--%>
<%@include file="user_page_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Remainder Page</title>
    </head>
    <body>
        <form action="user_add_rem_action.jsp" method="POST">
        <center>
        <h1>REMAINDER</h1>
            <table>
                <tr><td>USER ID:</td><td><input type="text" name="user_id" value="<%=sid%>" readonly="readonly" /></td></tr>
                <tr><td>REMAINDER ID:</td><td><input type="text" name="remainder_id" value="" /></td></tr>
             <tr><td>Date:</td><td><input type="date" name="date" value="" /></td></tr>
                    <tr><td>Time:</td><td><input type="time" name="time" value="" /></td></tr>
                    <tr><td>Note:</td><td><input type="text" name="note" value="" /></td></tr>
                    <tr><td></td><td style="padding:20px"><input type="submit" value="save" />&nbsp<input type="submit" value="Cancel" /></td></tr>
               </table>

        </center>
    </form>
    </body>
</html>
