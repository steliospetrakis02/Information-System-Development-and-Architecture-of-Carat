<%@ include file="../Home/authentication_guard.jsp" %>

<link rel="icon" href="../../IMAGES/Home/iR.png">
<title>Select Indicators</title>

<head>
    <body>
        <body style="background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
        background: linebuttonar-gradient(to right, #25b7c4, #845ddf);">
        
<header style="position:fixed; top:0%; left:0%;">
<nav id='cssmenu'>
<div class="logo"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul>
<li style="margin-left:6%;"><a href='../Home/finalmain.jsp'>Main Page</a></li>
<li><a href="../History/lr.jsp">View Report</a></li>
<li class='active'><a href='../Preferences/preferences.jsp'>Preferences</a></li>
<li><a href='../Goals/client_goals.jsp'>Goals</a></li>
<li><a href='../Statistics/Statistics.jsp'>Statistics</a></li>
<li><a href="../History/allindicators.jsp" style="font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">All indicators</a></li>
</ul>
</nav>
</header>
  <script class="u-script" type="text/javascript" src="../../JS/jquery.js" defer=""></script>
  <script class="u-script" type="text/javascript" src="../../JS/nicepage.js" defer=""></script>
  
  <link href="../../CSS/Preferences/prefe.css" rel="stylesheet">
  
    
  </nav>
  <div class="row" style="padding:1%;">
    <div class="col-sm-3">
      
      
    <header>
   
    </header>
    <% String color = "white";
    session.setAttribute("stats", "no");
    if(request.getParameter("color") != null) {
        color = "red";
    }%>
  </div> 
  </div>
  <br><br><br><br><br><br><br><br><%@ include file="info_prefs_client.jsp" %>
  <h1 style="font-size: 30px; color:white;"><p style="color:white;">Which of the following indicators<br>would you like to see in your report?</p>
  <p style="color: <%= color%> ">Choose exactly 4 of them</p></h1> 
  <br> 
  <form>
   
</div>
</form>

  <h1 style="border-style: groove solid groove solid; border-width: 0px; border-color: #065675;
  max-width: 100%; margin-left: auto; margin-right:auto; background-color: #065675; font-size: 50px;
  color:#FFFFFF"> TV </h1>
  <FORM action="prefController.jsp">
  <label>
    <input type="checkbox" name="indicators" value="GRPs"/>
    <span>GRPs</span>
</label>
<label>
<br>
</label>
    <label>
    <input type="checkbox" name="indicators" value="Reach1+"/>
    <span>Reach 1+</span>
</label>
<br>

    <label>
    <input type="checkbox" name="indicators" value="Reach3+"/>
    <span>Reach 3+</span>

</label>
<label>
  <br>

  <input type="checkbox" name="indicators" value="SOV"/>
  <span>SOV</span>
</label>
<label>
  <br>

  <input type="checkbox" name="indicators" value="Insertions"/>
  <span>Insertions</span>
</label>
<label>
  <br>

  <input type="checkbox" name="indicators" value="Grps/Week"/>
  <span>Grps/Week</span>
</label>
<label>
  <br>

  <input type="checkbox" name="indicators" value="Weeks"/>
  <span>Weeks</span>
</label>
<label>
  <br>

  <input type="checkbox" name="indicators" value="Weeks(4X)"/>
  <span>Weeks(4X)</span>
</label>

  <br>
  <br>
  <h1 style="border-style: groove solid groove solid; border-width: 0px; border-color: #065675;
   max-width: 100%; margin-left: auto; margin-right:auto; background-color: #065675; font-size: 50px;
   color:#FFFFFF"> Internet </h1>
<br>
<label>
<input type="checkbox" name="indicators" value="Impressions"/>
  <span>Impressions</span>
</label>
<label>
  <br>

  <input type="checkbox" name="indicators" value="Clicks"/>
  <span>Clicks</span>
</label>
<label>
  <br>

  <input type="checkbox" name="indicators" value="Click Rate"/>
  <span>Click Rate</span>

  </label>
  <label>
      <br>
  
      <input type="checkbox" name="indicators" value="Viewability"/>
      <span>Viewability</span>

    </label>
    <br>
    <br>
    <div class="container">
        <div class="center">
          <button class="button2"style="color:#ffffff">Submit</button>
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
    -webkit-transition:background-color 150ms ease-in;
  -moz-transition:background-color 150ms ease-in;
  -ms-transition:background-color 150ms ease-in;
  -o-transition:background-color 150ms ease-in;
  transition:background-color 150ms ease-in;
	  }
  input[type=checkbox] {display:none;}
  
  h1 {
  font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
  text-align:center;
  font-size:2.6em;
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
  cursor:pointer;
  display:block;
  margin:auto ;
  -webkit-transition:background-color 150ms ease-in;
  -moz-transition:background-color 150ms ease-in;
  -ms-transition:background-color 150ms ease-in;
  -o-transition:background-color 150ms ease-in;
  transition:background-color 150ms ease-in;
  }
  
  span:hover {
  background-color:#5244d9;
  }
  button:hover {
  background-color:#5244d9;
  }
  
  input[type=checkbox]:checked + span {
  background-color:#5244d9;
  text-decoration:none;
  -webkit-border-radius:4px;
  -moz-border-radius:4px;
  border-radius:4px;
  background:#5244d9 url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAaCAYAAACgoey0AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAX9JREFUeNpi+P//PwMNsS4QbwBiLnQ5WlqqAsRP/0PARiBmoYfFkkB8+z8qWALEjLS0mB+IL/3HDibSymJQXB7/jx/UgNSCvU4lwAbEG4DYkwi1WUxUspQZiOcRaSkIWOAKMk0Sg3jaf+IBOIVjMyQWiH8DsR+RljaTYOkBWJ5GNwRk2R+ooh9A7ETA0jwSLL0ATfEYqRpkyVc0xR+A2AyHpdFA/I9IS0F5WhRbAWIEtQQbeAXE6lhC5jeRlj4GYgVsRaYK1HBCmmWgmuyxhAwu8BpaXjNgs/gYkYbcAGIXPCGDDkCOM8eVPkCEFhE+JhX8BGJnfAkTxgC57BOVLAXlihBC2RA9Vf+k0FJQKk8nJv+jCwQi5WNyQAWxpR02wRQS8icy6CKlmMUlUUGipfOQK3lKLAbhdhIKfWZS6258kiAfzCZg6V4gZiOn0UBIAcgn63BYehK50Ke2xQxQH+3FUoqJUtJMIlYhLxAfxVJu09xiWENuMxCrUaNhCBBgAOAVfjALa5TLAAAAAElFTkSuQmCC) no-repeat 7% center;
  background-size:15px 13px;
  }
  
  input[type=checkbox]:checked:hover + span {
  background-color:#5244d9;
  color:rgba(255,255,255,0.5);

  text-decoration:none;
  -webkit-border-radius:4px;
  -moz-border-radius:4px;
  border-radius:4px;
  background:#5244d9 url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAS5JREFUeNq8110OgjAMAGBGvIY3VESjt9jPg95PT+LccBIZ7dYOWJPGB+g+Ymg3hLW2QeLkcu/y2pSFdvl0eQevehjI3uXbfkMh96TShFq/xhG6J4faAtxEtSBOQTm4QWpnOBWl4CZT69fuYpiCpnBDrB1xLhrjgoFO8F1oGcFslUv4bV32zFoxmOHJta0XMn65dC0UaiddA8UGiN4axeC1cUkdmWviEls/NwL1FqjPNtNvoimPdC3yRCUTiTXbt0R/oSnw2iiK10BBvBY6w2uiE3xJr8oFtcrvxy/fVcyeVdGx98yotcOxN/znHeMUIhdMOG8c4reagssF43VEoT5O4ZJwvNUUFJtcEE5BMXyGpnanf5yDxjiI+hSJj7YunEBvhbuTCh9tD+jiR4ABAJ0SrJgNr1UAAAAAAElFTkSuQmCC) no-repeat 7% center;
  background-size:15px 15px;
  }

  </style>
   
  <%@ include file="../Home/navbar.jsp" %>
  </head>
</body>