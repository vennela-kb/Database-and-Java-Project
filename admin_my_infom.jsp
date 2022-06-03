<%-- 
    Document   : admin_my_infom
    Created on : Feb 27, 2021, 10:24:05 AM
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
        <script type="text/javascript">
    window.history.forward();
    function noBack()
    {
        window.history.forward();
    }
</script>

    </head>
    <body>
        <center>
        <h1>ADMIN INFORMATION</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ADMIN ID</th>
                    <th>FIRST NAME</th>
                    <th>LAST NAME</th>
                    <th>PASSWORD</th>
                    <th>GENDER</th>
                    <th>EMAIL ID</th>
                    <th>CONTACT NO</th>
                    <th>DATE OF BIRTH</th>
                    <th>ADDRESS </th>
                    
                </tr><%
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from ADMIN_DETAIL");
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
            <td><a href="admin_my_info_update.jsp?id=<%=rs.getString(2)%>">Update</a></td>
            <td><a href="admin_my_info_delete.jsp?id=<%=rs.getString(2)%>">delete</a></td>
            </tr>
            <%}%>

        </table>
        </center>
        </body>
</html>
