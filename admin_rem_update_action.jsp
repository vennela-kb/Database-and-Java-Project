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
        <form action="admin_remainder_update_action.jsp" method="POST">
        
        <center>
         <h1>USER REMAINDER</h1>
         <table>
         <% String id=request.getParameter("id");
Statement st=con.createStatement();         
ResultSet rs=st.executeQuery("select * from ADMIN_REM where REM_ID='"+id+"'");
rs.next();
         %>
                    
             <tr><td>ADMIN ID:</td><td><input type="text" name="admin_id" value="<%=rs.getString(1)%>" readonly="readonly" /></td></tr>  
             <tr><td>REMAINDER ID:</td><td><input type="text" name="rem_id" value="<%=id%>" readonly="readonly"/></td></tr>   
             <tr><td>DATE :</td><td><input type="text" name="date" value="<%=rs.getString(3)%>" /></td></tr>
             <tr><td>TIME:</td><td><input type="text" name="time" value="<%=rs.getString(4)%>" /></td></tr>
             <tr><td>NOTE:</td><td><input type="text" name="note" value="<%=rs.getString(5)%>"></td></tr>
             
            <tr> <td></td><td style="padding:20px"><input type="submit" value="Update" />&nbsp<input type="submit" value="Cancel" /></td></tr>
    </center>
    </form>    
    </body>
</html>
