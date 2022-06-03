<%-- 
    Document   : login
    Created on : Feb 11, 2021, 4:03:10 PM
    Author     : venne
--%>
<%@include file="index.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login Page</title>
        <script type="text/javascript">
    window.history.forward();
    function noBack()
    {
        window.history.forward();
    }
</script>
 
   </head>
    <body onload="noBack();"
onpageshow="if(event.persisted) noBack();" onunload=""><form action="login_action.jsp">
        
        <center>
        <table>
            <h1>LOGIN</h1>
        <tr><td>USERNAME:</td><td><input type="text" name="USERNAME" value="" /> </td></tr>
            <tr><td>PASSWORD:</td><td><input type="password" name="password" value="" /></td></tr>
        <tr> <td><input type="submit" value="submit" /><input type="submit" value="Cancel" /></td></tr>
        
    </table>
        </center>
</form>
</body>
</html>
