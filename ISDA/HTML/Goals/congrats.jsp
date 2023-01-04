<%@ include file="../Home/authentication_guard.jsp" %>
<%@ include file="../Home/navbar.jsp"%>
<%@ page import="test.Goals" %>
<%@ page import="java.util.*" %>
<%@ page errorPage="error.jsp"%>
<link rel="icon" href="../../IMAGES/Home/iR.png">
<title>Set Goals</title>

<%  Goals g = new Goals();
    String goal_id = "";
    String email = (String) session.getAttribute("email"); 
    List<String> goals_id = g.getClientList_of_goals_ids(email);
    goal_id = goals_id.get(2);
    String indicator1 = request.getParameter("indicator1");
    String indicator2 = request.getParameter("indicator2");
    String indicator3 = request.getParameter("indicator3");
    String indicator4 = request.getParameter("indicator4");
    g.setClient_goals(email,indicator1,indicator2,indicator3,indicator4, goal_id);
%>


<div class="contain">
		<header style="position:fixed; top:0%;">
<nav id='cssmenu' style="position:relative; bottom:30px;">
<div class="logo"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1" style="margin-top:20%;"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul>
<li style="margin-left:6%;"><a href='../Home/finalmain.jsp'>Main Page</a></li>
<li><a href="../History/lr.jsp">View Report</a></li>
<li><a href='../Preferences/preferences.jsp'>Preferences</a></li>
<li class='active'><a href='../Goals/client_goals.jsp'>Goals</a></li>
<li><a href='../Statistics/Statistics.jsp'>Statistics</a></li>
</ul>
</nav>
</header>
<br><br><br><br><br><br><br><br><br>
	<div class="congrats">
        
		<h1>Congrat<span class="hide">ulation</span>s !</h1>
        <img src="../../IMAGES/Goals/res.png" alt="HTML5 Icon" style="width:128px;height:128px;">

	    <link href="../../CSS/Goals/results.css" rel="stylesheet">
        <div class="done">
			<svg version="1.1" id="tick" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 37 37" style="enable-background:new 0 0 37 37;" xml:space="preserve">
<path class="circ path" style="fill:#0cdcc7;stroke:#07a796;stroke-width:3;stroke-linejoin:round;stroke-miterlimit:10;" d="
	M30.5,6.5L30.5,6.5c6.6,6.6,6.6,17.4,0,24l0,0c-6.6,6.6-17.4,6.6-24,0l0,0c-6.6-6.6-6.6-17.4,0-24l0,0C13.1-0.2,23.9-0.2,30.5,6.5z"
	/>
    
<polyline class="tick path" style="fill:none;stroke:#fff;stroke-width:3;stroke-linejoin:round;stroke-miterlimit:10;" points="
	11.6,20 15.9,24.2 26.4,13.8 "/>
</svg>
<style>
	.button {
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 18px;
		cursor: pointer;
	  }
	  
	  .button1 {
		background-color: rgb(153, 0, 255);
		border-radius: 12px;
	} 
	</style>
			</div>
		<div class="text">
		<p>You have successfully<%=indicator1%> set your goals for the next campaign. <br>Here are your details<br>Date: 12.12.12<br>
			Time: 11am<br>
			ID: 12324
		</p>
			</p>
			</div>
		<p class="regards">Regards, Intelligent Reporting </p>
		<form action="../Home/finalmain.jsp">
			<button class="button button1"> Exit</button>
        
		</form>
	</div>
</div>
