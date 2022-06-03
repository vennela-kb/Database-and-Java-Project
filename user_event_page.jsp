<%-- 
    Document   : user_event_page
    Created on : Feb 14, 2021, 10:31:12 PM
    Author     : venne
--%>
<%@include file="user_page_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> user event Page</title>
    </head>
    <body><form action="user_eve_add_action.jsp" method="POST">
        
        <center>
         <h1>EVENTS</h1>
                    <table>
                       <tr><td>USER ID:</td><td><input type="text" name="user_id" value="<%=sid%>" readonly="readonly" /></td></tr>
                       <tr><td>EVENT ID:</td><td><input type="text" name="event_id" value="" /></td></tr>
                        <tr><td>EVENT TYPE:</td><td><select name="event" size="1">
                        <option>Occasional</option>
                        <option>Business</option>
                        <option>Educational</option>
                        <tr><td>EVENT:</td><td><input type="text" name="ename" value="" /></td></tr></select></td></tr>        
                       <tr><td>DATE OF EVENT:</td><td><input type="date" name="date_of_event" value="" /></td></tr>
                       <tr><td>TIME OF EVENT:</td><td><input type="time" name="time_of_event" value="" /></td></tr>
                       <tr><td>PHONE NO:</td><td><input type="text" name="pno" value="" /></td></tr>
                       <tr><td>ADDRESS:</td><td><input type="text" name="address" value="" /></td></tr>
                       <tr><td>EMAIL ID:</td><td><input type="email" name="email" value="" /></td></tr>
                       <tr> <td></td><td style="padding:10px"><input type="submit" value="submit" />&nbsp<input type="submit" value="Cancel" /></td></tr>
    </center>
</form>                    
</body>
</html>
