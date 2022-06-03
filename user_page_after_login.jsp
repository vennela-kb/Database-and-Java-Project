<%-- 
    Document   : user_page_after_login
    Created on : Feb 22, 2021, 10:52:40 AM
    Author     : venne
--%>
<!DOCTYPE html>
<html dir="ltr">
    <%String sid=(String)session.getAttribute("id");%>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0">
	<title>css3menu.com</title>
		<!-- Start css3menu.com HEAD section -->
	<link rel="stylesheet" href="user_page_after_login_files/css3menu1/style.css" type="text/css" /><style type="text/css">._css3m{display:none}</style>
	<!-- End css3menu.com HEAD section -->
<script type="text/javascript">
    window.history.forward();
    function noBack()
    {
        window.history.forward();
    }
</script>

	
</head>
<body onload="noBack();"
onpageshow="if(event.persisted) noBack();" onunload="" ontouchstart="" style="background-color:#EBEBEB">
    
<ul id="css3menu1" class="topmenu">
	<li class="topmenu"><a href="home_user_after_login.jsp" style="height:48px;line-height:48px;"><img src="user_page_after_login_files/css3menu1/bullhorn.png" alt=""/>HOME</a></li>
	<li class="topmenu"><a href="#" style="height:48px;line-height:48px;"><span><img src="user_page_after_login_files/css3menu1/user2.png" alt=""/>MY PROFILE</span></a>
	<ul>
		<li class="subfirst"><a href="user_view_info.jsp"><img src="user_page_after_login_files/css3menu1/arrow-up2.png" alt=""/>UPDATE</a></li>
		<li class="sublast"><a href="user_view_infomation.jsp"><img src="user_page_after_login_files/css3menu1/icomoon.png" alt=""/>VIEW</a></li>
	</ul></li>
	<li class="topmenu"><a href="user_event_page.jsp" style="height:48px;line-height:48px;"><span><img src="user_page_after_login_files/css3menu1/wand.png" alt=""/>EVENTS</span></a>
	<ul>
		<li class="subfirst"><a href="user_view_events.jsp">UPDATE/DELETE</a></li>
		<li><a href="user_view_event.jsp"><img src="user_page_after_login_files/css3menu1/icomoon1.png" alt=""/>VIEW</a></li>
		<li class="sublast"><a href="user_event_page.jsp"><img src="user_page_after_login_files/css3menu1/plus.png" alt=""/>ADD</a></li>
	</ul></li>
	<li class="topmenu"><a href="user_remainder_page.jsp" style="height:48px;line-height:48px;"><span><img src="user_page_after_login_files/css3menu1/alarm.png" alt=""/>REMAINDER</span></a>
	<ul>
		<li class="subfirst"><a href="user_view_rem.jsp">UPDATE/DELETE</a></li>
		<li><a href="user_view_re.jsp"><img src="user_page_after_login_files/css3menu1/icomoon2.png" alt=""/>VIEW</a></li>
		<li class="sublast"><a href="user_remainder_page.jsp"><img src="user_page_after_login_files/css3menu1/plus1.png" alt=""/>ADD</a></li>
	</ul></li>
	<li class="toplast"><a href="user_login.jsp" style="height:48px;line-height:48px;"><img src="user_page_after_login_files/css3menu1/accessibility.png" alt=""/>LOGOUT</a></li>
</ul><p class="_css3m"><a href="http://css3menu.com/">css3 dropdown menu</a> by Css3Menu.com</p>
<!-- End css3menu.com BODY section -->
<center><h1>WELCOME <%=sid%></h1></center>

</body>
</html>
