<%-- 
    Document   : user_view_infomation
    Created on : Feb 26, 2021, 1:39:52 PM
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
        <h1>MY INFORMATION</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>USER ID</th>
                    <th>USERNAME</th>
                    <th>FIRST NAME</th>
                    <th>LAST NAME</th>
                    <th>PASSWORD</th>
                    <th>GENDER</th>
                    <th>EMAIL ID</th>
                    <th>CONTACT NO</th>
                    <th>dATE OF BIRTH</th>
                    <th>ADDRESS </th>
                    
                </tr><%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from USER_REGISTRATION where USERID='"+sid+"'");
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
            <td><%=rs.getString(10)%></td>
            </tr>
            <%}%>

        </table>
        </center>
        </body>
</html>
