<%-- 
    Document   : user_event_page
    Created on : Feb 14, 2021, 10:31:12 PM
    Author     : venne
--%>
<%@include file="connect.jsp" %>
<%@include file="admin_after_login.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Admin event Page</title>
    </head>
    <body>
        <form action="admin_event_update_action.jsp" method="POST">
        
        <center>
         <h1>EVENTS</h1>
         <% String id=request.getParameter("id");
Statement st=con.createStatement();         
ResultSet rs=st.executeQuery("select * from ADMIN_EVE where EVENT_ID='"+id+"'");
rs.next();
         %>
                    <table>
             <tr><td>ADMIN ID:</td><td><input type="text" name="admin_id" value="<%=id%>" readonly="readonly" /></td></tr>  
             <tr><td>EVENT ID:</td><td><input type="text" name="event_id" value="<%=id%>" readonly="readonly"/></td></tr>   
             <tr><td>EVENT TYPE:</td><td><input type="text" name="event_type" value="<%=rs.getString(3)%>" /></td></tr>
             <tr><td>EVENT:</td><td><input type="text" name="ename" value="<%=rs.getString(4)%>" /></td></tr>
             <tr><td>DATE OF EVENT:</td><td><input type="text" name="de" value="<%=rs.getString(5)%>"></td></tr>
             <tr><td>TIME:</td><td><input type="text" name="time" value="<%=rs.getString(6)%>" /></td></tr> 
             <tr><td>ADDRESS:</td><td><input type="text" name="address" value="<%=rs.getString(7)%>" /></td></tr>
            <tr><td>EMAIL ID:</td><td><input type="text" name="email" value="<%=rs.getString(8)%>" /></td></tr>   
            <tr><td>PHONE NO:</td><td><input type="text" name="pno" value="<%=rs.getString(9)%>" /></td></tr>
           
            <tr> <td></td><td style="padding:20px"><input type="submit" value="Update" />&nbsp<input type="submit" value="Cancel" /></td></tr>
    </center>
    </form>    
    </body>
</html>
