<%-- 
    Document   : user_rem_update_action
    Created on : Feb 25, 2021, 11:19:21 PM
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
        <form action="user_remiander_update_action.jsp" method="POST">
        
        <center>
         <h1>USER REMIANDER</h1>
         <% String id=request.getParameter("id");
Statement st=con.createStatement();         
ResultSet rsr=st.executeQuery("select * from USER_REMAINDER_TABLE where REMIANDER_ID='"+id+"'");
rsr.next();
         %>
                    <table>
             <tr><td>USER ID:</td><td><input type="text" name="admin_id" value="<%=id%>" readonly="readonly" /></td></tr>  
             <tr><td>REMAINDER ID:</td><td><input type="text" name="rem_id" value="<%=id%>" readonly="readonly"/></td></tr>   
             <tr><td>DATE :</td><td><input type="text" name="date" value="<%=rsr.getString(3)%>" /></td></tr>
             <tr><td>TIME:</td><td><input type="text" name="time" value="<%=rsr.getString(4)%>" /></td></tr>
             <tr><td>NOTE:</td><td><input type="text" name="note" value="<%=rsr.getString(5)%>"></td></tr>
             
            <tr> <td></td><td style="padding:20px"><input type="submit" value="Update" />&nbsp<input type="submit" value="Cancel" /></td></tr>
    </center>
    </form>    
    </body>
</html>
