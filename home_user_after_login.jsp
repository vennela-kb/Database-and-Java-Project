<%-- 
    Document   : home_before_login
    Created on : Feb 24, 2021, 2:31:17 PM
    Author     : venne
--%>

<%@include file="user_page_after_login.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    <script type="text/javascript">
    window.history.forward();
    function noBack()
    {
        window.history.forward();
    }
</script>

    </head>
    <body onload="noBack();"
onpageshow="if(event.persisted) noBack();" onunload=""><center>
        <p>Welcome to the Website ......</p>
    </center>
    </body>
</html>
