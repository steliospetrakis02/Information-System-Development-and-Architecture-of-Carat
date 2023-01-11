<%@ page isErrorPage="true"%>
<%@ include file="../Home/navbar.jsp"%>
<link rel="icon" href="../../IMAGES/Home/iR.png">
<div class="contain">
	<header style="position:fixed; top:0%; left:0%;">
<nav id='cssmenu'>
<div class="logo"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul>
<li style="margin-left:2%;"><a href='../Home/finalmainPlanner.jsp'>Main Page</a></li>
<li><a href="../History/lr.jsp">View Report</a></li>
<li><a href='../Preferences/PlannerPreferences.jsp'>Preferences</a></li>
<li class='active'><a href='../Goals/planner-goals.jsp'>Goals</a></li>
<li><a href='../Statistics/StatisticsPlanner.jsp'>Statistics</a></li>
<li><a href='../History/insert.jsp'>Insert</a></li>
</ul>
</nav>
</header>
	<br><br><br><br><br><br><br><br>
	<div class="congrats">
        
		<h1 style="color:red;">Something went wrong!</h1>
        <img src="../../IMAGES/Goals/cancel2.jpg" alt="HTML5 Icon" style="width:200px;height:200px;">

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
	.button1 {
		border: none;
		color: white;
		padding: 15px 32px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 18px;
		cursor: pointer;
		border-radius: 12px;
	  }
	  
	  .button1 {background-color: rgb(250, 10, 42);} 
	</style>
			</div>
		<div class="text">
		<p>No goals have been set for this particular time period! </p>
		<br>	
			</div>
		<p class="regards">Team IntelliReports </p>
		<form action="../Home/finalmainPlanner.jsp">
			<button class="button1 button1"> Exit</button>
        
		</form>
	</div>
</div>
