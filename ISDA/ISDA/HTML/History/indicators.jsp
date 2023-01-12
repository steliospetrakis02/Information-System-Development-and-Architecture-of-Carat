<%@ page import="test.Preferences" %>
<%@ page import="java.util.*" %>
<%@ include file="../Home/authentication_guard.jsp" %>
<%@ include file="../Home/navbar.jsp"%>
<html>
    <head>
        <meta charset="UTF-8" />
         <meta http-equiv="X-UA-Compatible" content="IE=edge" />
         <meta name="viewport" content="width=device-width, initial-scale=1.0" />
         <link rel="stylesheet" type="text/css" href="../../CSS/History/lrc.css" />

<link rel="icon" href="../../IMAGES/Home/iR.png">

         <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
     <link rel="stylesheet" href="style.css"> 
         <title>View Report</title>
     </head>
<style>
    @import url('https://fonts.googleapis.com/css?family=Roboto:300');
body{
  margin: 0;
  padding: 0;
 font-family: 'Roboto', sans-serif !important;
}
section{
  width: 95%;
  
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
          
}
.card{
  position: relative;
  width: 280px;
  height: auto;
  background: linear-gradient(-45deg,#fe0847,#feae3f);
  border-radius: 15px;
  margin: 15px;
  padding: 60px 20px;
  -webkit-box-shadow: 0 10px 15px rgba(0,0,0,.1) ;
          box-shadow: 0 10px 15px rgba(0,0,0,.1) ;
-webkit-transition: .5s;
transition: .5s;
}
.card:hover{
  -webkit-transform: scale(1.1);
          transform: scale(1.1);
}
.col-sm-3:nth-child(1) .card ,
.col-sm-3:nth-child(1) .card .title .fa{
  background: linear-gradient(-45deg,#f403d1,#64b5f6);

}
.col-sm-3:nth-child(2) .card,
.col-sm-3:nth-child(2) .card .title .fa{
  background: linear-gradient(-45deg,#ffec61,#f321d7);

}
.col-sm-3:nth-child(3) .card,
.col-sm-3:nth-child(3) .card .title .fa{
  background: linear-gradient(-45deg,#24ff72,#9a4eff);

}
.col-sm-3:nth-child(4) .card,
.col-sm-3:nth-child(4) .card .title .fa{
  background: linear-gradient(-45deg,#fe0847,#feae3f);

}
.card::before{
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 40%;
  background: rgba(255, 255, 255, .1);
z-index: 1;

}
.title .fa{
  color:#fff;
  font-size: 60px;
  width: 100px;
  height: 100px;
  border-radius:  50%;
  text-align: center;
  line-height: 100px;
  -webkit-box-shadow: 0 10px 10px rgba(0,0,0,.1) ;
          box-shadow: 0 10px 10px rgba(0,0,0,.1) ;

}
.title h2 {
  position: relative;
  margin: 20px  0 0;
  padding: 0;
  color: #fff;
  font-size: 28px;
 z-index: 2;
}
.price,.option{
  position: relative;
  z-index: 2;
}
.price h5 {
margin: 0;
padding: 20px 0 ;
color: #fff;
font-size: 20px;
}
.option ul {
  margin: 0;
  padding: 0;

}
.option ul li {
margin: 0 0 10px;
padding: 0;
list-style: none;
color: #fff;
font-size: 16px;
}
.card a {
  position: relative;
  z-index: 2;
  background: #fff;
  color : black;
  width: 150px;
  height: 40px;
  line-height: 40px;
  border-radius: 40px;
  display: block;
  text-align: center;
  margin: 20px auto 0 ;
  font-size: 16px;
  cursor: pointer;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
          box-shadow: 0 5px 10px rgba(0, 0, 0, .1);

}
.card a:hover{
    text-decoration: none;
}
.page {
	margin: 27px auto 0;
  top: 16.8%;
  left: 6%;
	position: absolute;
	width: 600px;
	height: 5%;
	background-color: #34495e;
	border-radius: 8px;
	font-size: 0;
}
.page a {
	line-height: 50px;
	height: 100%;
	font-size: 15px;
	display: inline-block;
	position: relative;
	z-index: 1;
	text-decoration: none;
	text-align: center;
	color: white;
	cursor: pointer;
}
.page .animation {
	position: absolute;
	height: 100%;
	top: 0;
	z-index: 0;
	transition: all .5s ease 0s;
	border-radius: 8px;
}
.page a:nth-child(1) {
	width: 200px;
}
.page a:nth-child(2) {
	width: 200px;
}
.page a:nth-child(3) {
	width: 200px;
}

.page .start-home, a:nth-child(1):hover~.animation {
	width: 200px;
	left: 0;
	background-color: #1abc9c;
}
.page .start-about, a:nth-child(2):hover~.animation {
	width: 200px;
	left: 200px;
	background-color: #3498db;
}
.page .start-his, a:nth-child(3):hover~.animation {
	width: 200px;
	left: 400px;
	background-color: #9a4eff;
}
span {
    color: #2BD6B4;
}
</style>
<body>

 <% if(((String) session.getAttribute("role")).equals("client")){ %>
  <header style="position:fixed; top:0%; left:0%;">
<nav id='cssmenu' style="margin-left:21%;">
<div class="logo"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul style="margin-top:12px;">
<li style="margin-left:4%;"><a href='../Home/finalmain.jsp'>Main Page</a></li>
<li class='active'><a href="../History/lr.jsp">View Report</a></li>
<li><a href='../Preferences/preferences.jsp'>Preferences</a></li>
<li><a href='../Goals/client_goals.jsp'>Goals</a></li>
<li><a href='../Statistics/Statistics.jsp'>Statistics</a></li>
</ul>
</nav>
</header>
<% } else {
  if(session.getAttribute("client") == null){ %>
    <jsp:forward page="../Home/finalmainPlanner.jsp" >
        <jsp:param name="color" value="red" />
    </jsp:forward>
  <% } %>
    <header style="position:fixed; top:0%; left:0%;">
<nav id='cssmenu'>
<div class="logo"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul>
<li style="margin-left:1%;"><a href='../Home/finalmainPlanner.jsp'>Main Page</a></li>
<li class='active'><a href="../History/lr.jsp">View Report</a></li>
<li><a href='../Preferences/PlannerPreferences.jsp'>Preferences</a></li>
<li><a href='../Goals/planner-goals.jsp'>Goals</a></li>
<li><a href='../Statistics/StatisticsPlanner.jsp'>Statistics</a></li>
<li><a href='../History/insert.jsp'>Insert Data</a></li>
</ul>
</nav>
</header>
<% }%>
<div class="page">
	<a href="lr.jsp">Report Data</a>
	<a href="indicators.jsp">Indicator Charts</a>
  <a href="his.jsp">History</a>
	<div class="animation start-about"></div>
</div>
    
  <% Preferences pref = new Preferences();
  List<String> prefs;
             if((String) session.getAttribute("client_email") == null) {
                
                prefs = pref.get_Client_Preferences((String) session.getAttribute("email")); 
             } else {
                 prefs = pref.get_Client_Preferences((String) session.getAttribute("client_email")); 
             } %>
  
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <section>
        <div class="container-fluid">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                  <%  
                  if(prefs.get(0).equals("Impressions") || prefs.get(0).equals("Clicks") || prefs.get(0).equals("Click Rate") || prefs.get(0).equals("Viewability")){ %>
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                  <% } else { %>
                    <i class="fa fa-television" aria-hidden="true"></i>
                 <%  }  %>
                    <h2><%= prefs.get(0)%></h2>
                  </div>
                  <div class="price">
                    <h5><a href="https://en.wikipedia.org/wiki/Gross_rating_point" 
                      style="background: #f403d1;">What is it?</a></h5>
                  </div>
                  <div class="option">
                  
                  </div>
                  <a href="graph.jsp?indicator=<%= prefs.get(0)%>">View Chart </a>
                </div>
              </div>
              <!-- END Col one -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                  <%  
                  if(prefs.get(1).equals("Impressions") || prefs.get(1).equals("Clicks") || prefs.get(1).equals("Click Rate") || prefs.get(1).equals("Viewability")){ %>
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                  <% } else { %>
                    <i class="fa fa-television" aria-hidden="true"></i>
                 <%  }  %>
                    <h2><%= prefs.get(1)%></h2>
                  </div>
                  <div class="price">
                    <h5><a href="https://sproutsocial.com/glossary/share-of-voice/" 
                      style="background: #f76092;">What is it?</a></h5>
                  </div>
                  <div class="option">
                    
                  </div>
                  <a href="graph.jsp?indicator=<%= prefs.get(1)%>">View Chart </a>
                </div>
              </div>
              <!-- END Col two -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <%  
                  if(prefs.get(2).equals("Impressions") || prefs.get(2).equals("Clicks") || prefs.get(2).equals("Click Rate") || prefs.get(2).equals("Viewability")){ %>
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                  <% } else { %>
                    <i class="fa fa-television" aria-hidden="true"></i>
                 <%  }  %>
                    <h2><%= prefs.get(2)%></h2>
                  </div>
                  <div class="price">
                    <h5><a href="https://en.wikipedia.org/wiki/Reach_(advertising)" 
                      style="background: #69f180;">What is it?</a></h5>
                  </div>
                  <div class="option">
                   
                  </div>
                  <a href="graph.jsp?indicator=<%= prefs.get(2)%>">View Chart </a>
                </div>
              </div>
              <!-- END Col three -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <%  
                  if(prefs.get(3).equals("Impressions") || prefs.get(3).equals("Clicks") || prefs.get(3).equals("Click Rate") || prefs.get(3).equals("Viewability")){ %>
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                  <% } else { %>
                    <i class="fa fa-television" aria-hidden="true"></i>
                 <%  }  %>
                    <h2><%= prefs.get(3)%></h2>
                  </div>
                  <div class="price">
                    <h5><a href="https://en.wikipedia.org/wiki/Reach_(advertising)" 
                      style="background: #ee1d1d;">What is it?</a></h5>
                  </div>
                  <div class="option">
                    
                  </div>
                  <a href="graph.jsp?indicator=<%= prefs.get(3)%>">View Chart </a>
                </div>
              </div>
                    <!-- END Col four-->
            </div>
          </div>
        </div>
      </section>
</body>
</html>