<%-- 
    Document   : user_info_page
    Created on : Feb 14, 2021, 10:53:12 PM
    Author     : venne
--%>
<%@include file="connect.jsp" %>
<%@include file="admin_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Information Page</title>
    </head>
    <body>
        <center>
        <h1>ADMIN REMAINDER INFORMATION</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>REMAINDER ID</th>
                    <th>ADMIN ID:</th>
                    <th>DATE OF REMAINDER</th>
                    <th>TIME OF REMIANDER</th>
                    <th>NOTE</th>
                 </tr><%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ADMIN_REM");
            while(rs.next())
            {%>
            </thead>
            <tr>
                
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>    
            <td><a href="admin_rem_update_action.jsp?id=<%=rs.getString(2)%>">Update</a></td>
            <td><a href="admin_rem_delete_action.jsp?id=<%=rs.getString(2)%>">delete</a></td>
            
            </tr>
            <%}%>
        </table>
        <h1>REMAINDER INFORMATION</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>REMAINDER ID</th>
                    <th>USER ID</th>
                    <th>DATE OF REMAINDER</th>
                    <th>TIME OF REMIANDER</th>
                    <th>NOTE</th>
                 </tr> 
                 <%
            Statement std=con.createStatement();
            ResultSet rsr=std.executeQuery("select * from USER_REMAINDER_TABLE");
            while(rsr.next())
            {%>
            </thead>
            <tr><td><%=rsr.getString(2)%></td>
            <td><%=rsr.getString(1)%></td>
            <td><%=rsr.getString(3)%></td>
            <td><%=rsr.getString(4)%></td>
            <td><%=rsr.getString(5)%></td>
            <td><a href="user_rem_update_action.jsp?id=<%=rsr.getString(2)%>">Update</a></td>
            <td><a href="user_rem_delete_action.jsp?id=<%=rsr.getString(2)%>">delete</a></td>
            </tr>
            <%}%>
        </table>
       
        </table>
       </center>
        </body>
</html>
