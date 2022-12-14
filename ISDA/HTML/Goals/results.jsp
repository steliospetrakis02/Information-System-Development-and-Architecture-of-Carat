<%@ include file="../Home/authentication_guard.jsp" %>
<%@ include file="../Home/navbar.jsp"%>
<link rel="icon" href="../../IMAGES/Home/iR.png">
<title>Set Goals</title>

<style>

body{
	width:100%;
	height:100%;
	
}
.contain{
	position:absolute;
	top:0;
	left:0;
	width:101%;
	height:102%;
	background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
    background: linear-gradient(to right, #25b7c4, #845ddf);
}

.done{
	width:100px;
	height:100px;
	position:relative;
	left: 0;
	right: 0;
	top:-20px;
	margin:auto;
}
.contain h1{
	font-family: 'Julius Sans One', sans-serif;
	font-size:1.4em;
	color: #02b3e4;
}

.congrats{
	position:relative;
	left:50%;
	top:35%;
	max-width:800px;	transform:translate(-50%,-50%);
	width:80%;
	min-height:300px;
	max-height:900px;
	border:2px solid white;
	border-radius:5px;
	    box-shadow: 12px 15px 20px 0 rgba(46,61,73,.3);
    background-image: linear-gradient(to bottom right,#02b3e4,#02ccba);
	background:#fff;
	text-align:center;
	font-size:2em;
	color: #189086;
}

.text{
	position:relative;
	font-weight:normal;
	left:0;
	right:0;
	margin:auto;
	width:80%;
	max-width:800px;

	font-family: 'Lato', sans-serif;
	font-size:0.6em;

}


.circ{
    opacity: 0;
    stroke-dasharray: 130;
    stroke-dashoffset: 130;
    -webkit-transition: all 1s;
    -moz-transition: all 1s;
    -ms-transition: all 1s;
    -o-transition: all 1s;
    transition: all 1s;
}
.tick{
    stroke-dasharray: 50;
    stroke-dashoffset: 50;
    -webkit-transition: stroke-dashoffset 1s 0.5s ease-out;
    -moz-transition: stroke-dashoffset 1s 0.5s ease-out;
    -ms-transition: stroke-dashoffset 1s 0.5s ease-out;
    -o-transition: stroke-dashoffset 1s 0.5s ease-out;
    transition: stroke-dashoffset 1s 0.5s ease-out;
}
.drawn svg .path{
    opacity: 1;
    stroke-dashoffset: 0;
}

.regards{
	font-size:.7em;
}


@media (max-width:600px){
	.congrats h1{
		font-size:1.2em;
	}
	
	.done{
		top:-10px;
		width:80px;
		height:80px;
	}
	.text{
		font-size:0.5em;
	}
	.regards{
		font-size:0.6em;
	}
}

@media (max-width:500px){
	.congrats h1{
		font-size:1em;
	}
	
	.done{
		top:-10px;
		width:70px;
		height:70px;
	}
	
}

@media (max-width:410px){
	.congrats h1{
		font-size:1em;
	}
	
	.congrats .hide{
		display:none;
	}
	
	.congrats{
		width:100%;
	}
	
	.done{
		top:-10px;
		width:50px;
		height:50px;
	}
	.regards{
		font-size:0.55em;
	}
	
}
</style>
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
<br><br><br><br><br><br><br><br><br><br><br>
	<div class="congrats">
		<h1>Your goals are <p style="color:rgb(25, 228, 160); display: inline;">20% higher</p> than previous year's!</h1><span class="hide"></span></h1>
		<div class="done">
			<svg version="1.1" id="tick" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 viewBox="0 0 37 37" style="enable-background:new 0 0 37 37;" xml:space="preserve">
<path class="circ path" style="fill:#0cdcc7;stroke:#07a796;stroke-width:3;stroke-linejoin:round;stroke-miterlimit:10;" d="
	M30.5,6.5L30.5,6.5c6.6,6.6,6.6,17.4,0,24l0,0c-6.6,6.6-17.4,6.6-24,0l0,0c-6.6-6.6-6.6-17.4,0-24l0,0C13.1-0.2,23.9-0.2,30.5,6.5z"
	/>
<polyline class="tick path" style="fill:none;stroke:#fff;stroke-width:3;stroke-linejoin:round;stroke-miterlimit:10;" points="
	11.6,20 15.9,24.2 26.4,13.8 "/>
</svg>
</div>
	
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
	  
	  .button1 {background-color: rgb(25, 228, 160);} 
	  .button2 {background-color: #008CBA;} 
	  .button3 {background-color: rgb(153, 0, 255);} 
	  .button3 {width: 250px;}
	  .button2 {width: 250px;}
	  .button1 {width: 250px;}



 </style>
	<% session.setAttribute("results", "yes");%>

 	<form action="../Statistics/Statistics.jsp">
		<button class="button button1">See more statistics</button>

 	</form>
	
 	<form action="../Goals/congrats.jsp">
		<button class="button button2">Submit</button>
		
	</form>
	<form action="../Home/finalmain.jsp">
		<button class="button button3">Exit</button>
		
	</form>
	
	
    </div>
