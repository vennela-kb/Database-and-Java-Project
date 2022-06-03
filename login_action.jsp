<%-- 
    Document   : login_action
    Created on : Feb 26, 2021, 4:25:57 PM
    Author     : venne
--%>
<%@include file="connect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="index.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
    window.history.forward();
    function noBack()
    {
        window.history.forward();
    }
</script>

    </head>
    <body onload="noBack();"
onpageshow="if(event.persisted) noBack();" onunload="">
       <%
           String username=request.getParameter("USERNAME");
           session.setAttribute("id",username);
        String pwd=request.getParameter("password");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select PASSWORD from ADMIN_DETAIL where ADMIN_ID='"+username+"'");
         Statement st1=con.createStatement();
        ResultSet rs1=st1.executeQuery("select PASSWORD from USER_REGISTRATION	 where USERID='"+username+"'");
       if(rs.next())
       {
           String pwd1=rs.getString(1);
           if(pwd.equals(pwd1))
           {
               %>
               <jsp:forward page="home_admin_after_login.jsp"></jsp:forward>
          <% }
           else
           {%>
           <jsp:forward page="loginfail.jsp"></jsp:forward>
               
      <% }
       }
       else if(rs1.next())
       {
          String pwd2=rs1.getString(1);
           if(pwd.equals(pwd2))
           {
               %>
               <jsp:forward page="home_user_after_login.jsp"></jsp:forward>
          <% }
           else
           {%>
           <jsp:forward page="loginfail.jsp"></jsp:forward>
               
      <%
           }
       }
       
       %>
    </body>
</html>
