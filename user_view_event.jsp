<%-- 
    Document   : user_view_event
    Created on : Feb 26, 2021, 1:58:02 PM
    Author     : venne
--%>

<%@include file="connect.jsp" %>
<%@include file="user_page_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Events Information Page</title>
    </head>
    <body>
        <center>
        <h1>USER EVENTS INFORMATION</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>USER ID</th>
                    <th>EVENT ID</th>
                    <th>EVENT TYPE</th>
                    <th>EVENT</th>
                    <th>DATE OF EVENT</th>
                    <th>TIME OF EVENT</th>
                    <th>CONTACT NO</th>
                    <th>ADDRESS OF EVENT</th>
                    <th>EMAIL ID</th>
                </tr>
                <%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from USER_EVENT_ADD where USERID='"+sid+"'");
            while(rs.next())
            {%>
            </thead>
            <tr><td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td> 
            </tr>
            <%}%>
        </table>
        </center>
        </body>
</html>
