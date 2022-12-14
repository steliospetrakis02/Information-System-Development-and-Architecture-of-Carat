<%@ include file="../Home/authentication_guard.jsp" %>
<%@ page import="test.Preferences" %>
<%@ page import="test.Reports" %>
<%@ page import="java.util.*" %>
<link rel="icon" href="../../IMAGES/Home/iR.png">
<title>View Indicators</title>

<head>
  <body>
      <body style="background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
      background: linebuttonar-gradient(to right, #25b7c4, #845ddf);">
      
<header style="position:fixed; top:0%; left:0%;">
<nav id='cssmenu' style="width:1200px;">
<div class="logo"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul>
<li><a href='../Home/finalmainPlanner.jsp'>Main Page</a></li>
<li><a href="../History/lr.jsp">View Report</a></li>
<li class='active'><a href='../Preferences/PlannerPreferences.jsp'>Preferences</a></li>
<li><a href='../Goals/planner-goals.jsp'>Goals</a></li>
<li><a href='../Statistics/StatisticsPlanner.jsp'>Statistics</a></li>
<li><a href='../History/insert.jsp'>Insert Data</a></li>
<li><a href="../History/allindicators.jsp" style="font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">All indicators</a></li>
</ul>
</nav>
</header>
<script class="u-script" type="text/javascript" src="../../JS/jquery.js" defer=""></script>
<script class="u-script" type="text/javascript" src="../../JS/nicepage.js" defer=""></script>


</nav>
<div class="row" style="padding:1%;">
  <div class="col-sm-3">
    
    
  <header>
 
  </header>
  
  <% String year,period;
  if(request.getParameter("year") == null) {
     year = (String) session.getAttribute("year");
     period = (String) session.getAttribute("period");
  } else {
     year = (String) request.getParameter("year");
     period = (String) request.getParameter("period");
     session.setAttribute("year", year);
     session.setAttribute("period", period);
  }%>
  <% if(session.getAttribute("client") == null){ %>
    <jsp:forward page="../Home/finalmainPlanner.jsp" >
        <jsp:param name="color" value="red" />
    </jsp:forward>
  <% } %>
</div> 
</div>
<br><br><br><br><br><br><br>
<h1 style="font-size:30px; color:white"><%= (String) session.getAttribute("client")%> has chosen for <%= year%>-<%= period%>:</h1> 
<br> 
<form>
 
</div>
</form>
<% Preferences pref = new Preferences();
   List<String> TV = new ArrayList<String>();
   List<String> Internet = new ArrayList<String>();
   List<String> prefs;
   prefs = pref.get_Client_Preferences((String) session.getAttribute("client_email"));
   for(String p : prefs) {
      if(p.equals("Clicks") || p.equals("Click Rate") || p.equals("Impressions") || p.equals("Viewability")) {
        Internet.add(p);

      } else {
        TV.add(p);
      }
   } 
%>
<%if(TV.size() != 0) { %>
  <h1 style="border-style: groove solid groove solid; border-width: 0px; border-color: #065675;
  max-width: 100%; margin-left: auto; margin-right:auto; background-color: #065675; font-size: 50px;
  color:#FFFFFF"> TV </h1>
  <FORM action="../Home/finalmainPlanner.jsp">
<%for(String p : TV){ %>
  <label>
    <input type="checkbox" name="" value=""/>
    <span><%= p%></span>
  </label>
  <br> 
<% }
} %>

<br>
<% if(Internet.size() != 0) { %>
  br>
<br>
<br>
<h1 style="border-style: groove solid groove solid; border-width: 0px; border-color: #065675;
 max-width: 100%; margin-left: auto; margin-right:auto; background-color: #065675; font-size: 50px;
 color:#FFFFFF"> Internet </h1>
  <%  for(String p : Internet){ %>
        <label>
          <input type="checkbox" name="" value=""/>
          <span><%= p%></span>
        </label>
        <br>

    <%  }
      } %>

    <br> <br>
    <br>
    <br>
  <br>
  <div class="container">
      <div class="center">
        <button class="button2"style="color:#ffffff">Back to main page</button>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="center">
  
      </div>
    </div>
  </div>
  <div class="navbar" style="position: fixed; bottom: 0%; left: 0%; right:0%;">
        <div class="row" style="padding:2%;">
          <div class="col-sm-3">
              <a href="Home.jsp" class="u-image u-logo u-image-1" data-image-width="135" data-image-height="49">
                 
                </a>
              
            
        
        </div> 
        </div>
      
  
    </div>

<style>
  
  /* Navbar container */
.navbar {
overflow: hidden;
background-color: #065675;
font-family: Arial;


}

/* Links inside the navbar */
.navbar a {
float: right;
font-size: 16px;
color: white;
text-align: center;
padding: 24px 25px;
text-decoration: none;
}
.a {
float: left;
font-size: 16px;
color: white;
text-align: center;
padding: 14px 16px;
text-decoration: none;
}
.button2 {
        background-color: 373740;
        border: none;
        color: white;
        padding: 15px 52px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 22px;
        margin: auto;
        cursor: pointer;
        border-radius: 12px;
        font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
      }
      .button-container-div {
          width: 300px;
          height: 300px;
          margin: auto;
      }
  

/* The dropdown container */
.dropdown {
float: right;
overflow: hidden;
}
.container {
      height: 200px;
      position: relative;
    }
    .center {
      margin: 0;
      position: absolute;
      top: 50%;
      left: 50%;
      -ms-transform: translate(-50%, -50%);
      transform: translate(-50%, -50%);
    }

/* Dropdown button */
.dropdown .dropbtn {
font-size: 16px;
border: none;
outline: none;
color: white;
padding: 14px 16px;
background-color: inherit;
font-family: inherit; /* Important for vertical align on mobile phones */
margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
background-color: rgb(5, 113, 236);
}

/* Dropdown content (hidden by default) */
.dropdown-content {
display: none;
position: right;
background-color: #f9f9f9;
min-width: 160px;
box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
float: none;
color: black;
padding: 12px 16px;
text-decoration: none;
display: block;
text-align: right;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
display: block;
}
body{
  background-image: -ms-radial-gradient(center, circle farthest-corner, #FFFFFF 0%, #D6D6D6 100%);
  background-image: -moz-radial-gradient(center, circle farthest-corner, #FFFFFF 0%, #D6D6D6 100%);
  background-image: -o-radial-gradient(center, circle farthest-corner, #FFFFFF 0%, #D6D6D6 100%);
  background-image: -webkit-gradient(radial, center center, 0, center center, 497, color-stop(0, #FFFFFF), color-stop(1, #D6D6D6));
  background-image: -webkit-radial-gradient(center, circle farthest-corner, #FFFFFF 0%, #D6D6D6 100%);
  background-image: radial-gradient(circle farthest-corner at center, #FFFFFF 0%, #D6D6D6 100%);
  background-color: #5244d9;

  }
  .button {
		color:#5244d9;
    margin: auto;
	  }
    button:hover {
  background-color:#5244d9;
  }
  
  input[type=checkbox] {display:none;}
  
  h1 {
  font-family:'PT Sans', sans-serif;
  text-align:center;
  font-size:3em;
  color:black;
  margin:30px 0;
  }

 
  span {
  background-color:#373740;
  -webkit-border-radius:4px;
  -moz-border-radius:4px;
  border-radius:4px;
  font-weight:700;
  color:#FFF;
  font-size:.85em;
  letter-spacing:2px;
  text-decoration:center;
  font-family:'PT Sans', sans-serif;
  text-align:center;
  width:280px;
  height:40px;
  line-height:40px;
  display:block;
  margin:auto ;
  -webkit-transition:background-color 150ms ease-in;
  -moz-transition:background-color 150ms ease-in;
  -ms-transition:background-color 150ms ease-in;
  -o-transition:background-color 150ms ease-in;
  transition:background-color 150ms ease-in;
  }
  


</style>
 <%@ include file="../Home/navbar.jsp"%>

</head>
</body>