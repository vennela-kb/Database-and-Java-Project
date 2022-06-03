<%-- 
    Document   : user_view_re
    Created on : Feb 26, 2021, 2:00:25 PM
    Author     : venne
--%>

<%@include file="connect.jsp" %>
<%@include file="user_page_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information Page</title>
    </head>
    <body>
        <center>
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
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from USER_REMAINDER_TABLE where USERID='"+sid+"'");
            while(rs.next())
            {%>
            </thead>
            <tr><td><%=rs.getString(2)%></td>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            
            </tr>
            <%}%>
        </table>
       </center>
        </body>
</html>
