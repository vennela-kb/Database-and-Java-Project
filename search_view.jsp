<%-- 
    Document   : event_views
    Created on : Feb 22, 2021, 11:43:08 AM
    Author     : venne
--%>
<%@include file="connect.jsp" %>
<%@include file="index.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Event Information Page</title>
    </head>
    <body>
        <% String search=request.getParameter("search");%>
        <center>
        <h1>EVENT INFORMATION</h1>
        <table border="1">
            <thead>
                <tr>
                   
                    
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
            ResultSet rs=st.executeQuery("select * from ADMIN_EVE where EVENT='"+search+"' OR EVENT_TYPE='"+search+"' OR DATE_OF_EVENT='"+search+"' OR TIME_OF_EVENT='"+search+"' OR ADDRESS_OF_EVENT='"+search+"'");
            Statement std=con.createStatement();
            ResultSet rsr=std.executeQuery("select * from USER_EVENT_ADD where EVENT='"+search+"' OR EVENT_TYPE='"+search+"' OR DATE_OF_EVENT='"+search+"' OR TIME_OF_EVENT='"+search+"' OR ADDRESS_OF_EVENT='"+search+"'");
            
            while(rs.next())
            {%>
            </thead>
            <tr>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
            <td><%=rs.getString(8)%></td>
            <td><%=rs.getString(9)%></td>    
            </tr>
            <%}%>
       
            <% while(rsr.next())
            {
            %>
            </thead>
            <tr>
                
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
