<%-- 
    Document   : user_event_admin_vie
    Created on : Feb 26, 2021, 2:05:33 PM
    Author     : venne
--%>

<%@include file="connect.jsp" %>
<%@include file="admin_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information Page</title>
    </head>
    <body>
        <center>
        <h1>ADMIN EVENT INFORMATION</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ADMIN ID</th>
                    <th>EVENT ID</th>
                    <th>EVENT TYPE</th>
                    <th>EVENT</th>
                    <th>DATE OF EVENT</th>
                    <th>TIME OF EVENT</th>
                    <th>ADDRESS OF EVENT</th>
                    <th>EMAIL ID</th>
                    <th>CONTACT NO</th>
                </tr>
<%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ADMIN_EVE");
            while(rs.next())
            {%>
            </thead>
            
            <td><%=rs.getString(1)%></td>
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
        <h1>USER EVENT INFORMATION</h1>
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
            Statement std=con.createStatement();
            ResultSet rsr=st.executeQuery("select * from USER_EVENT_ADD	");
            while(rsr.next())
            {%>
            </thead>
            <tr><td><%=rsr.getString(1)%></td>
            <td><%=rsr.getString(2)%></td> 
                <td><%=rsr.getString(3)%></td>
            <td><%=rsr.getString(4)%></td>
            <td><%=rsr.getString(5)%></td>
            <td><%=rsr.getString(6)%></td>
            <td><%=rsr.getString(7)%></td>
            <td><%=rsr.getString(8)%></td>
            <td><%=rsr.getString(9)%></td>  
            
            </tr>
            <%}%>
        </table>
        
        </center>
        </body>
</html>
