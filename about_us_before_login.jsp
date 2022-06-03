<%-- 
    Document   : about_us_before_login
    Created on : Feb 24, 2021, 2:36:33 PM
    Author     : venne
--%>
<script type="text/javascript">
    window.histroy.forward();
    funtion noBack(){
            window.histroy.forward();
    }
</script>

<%@include file="index.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
    </head>
    <body onload="noBack();"
onpageshow="if(event.persisted) noBack();" onunload=""><center>
        <h1>About Us</h1>
        <p>This is helpful in searching the events around the places you want to visit,eventually you can add your own events so that it can be seen by the people around and you can the remainder as your that can be useful for you</p>
    </center>
    </body>
</html>
