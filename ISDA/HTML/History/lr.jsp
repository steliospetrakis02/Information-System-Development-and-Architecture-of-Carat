<%@ page import="test.Preferences" %>
<%@ page import="test.Reports" %>
<%@ page import="java.util.*" %>
<%@ include file="authentication_guard.jsp" %>
<%@ include file="../Home/navbar.jsp"%>

<link rel="icon" href="../../IMAGES/Home/iR.png">
<section>
<head>
   <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../../CSS/History/lrc.css" />

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<link rel="stylesheet" href="style.css"> 



    <title>View Report</title>
</head>
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
	<div class="animation start-home"></div>
</div>
<style>
.page {
	margin: 27px auto 0;
  top: 16.8%;
  left: 4%;
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
.page .start-about, a:nth-child(3):hover~.animation {
	width: 200px;
	left: 400px;
	background-color: #9a4eff;
}

span {
    color: #2BD6B4;
}
  h1{
  font-size: 30px;
  color: #fff;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:500px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}

.table-row{
  background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
  background: linear-gradient(to right, #25b7c4, #845ddf);
}
body{
  background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
  background: linear-gradient(to right, #25b7c4, #845ddf);
  font-family: 'Roboto', sans-serif;
}

::-webkit-scrollbar- {
    width: 10px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}

.button-41 {
  background-color: initial;
  background-image: linear-gradient(-180deg, #00acd7, #b660d8);
  border-radius: 5px;
  box-shadow: rgba(0, 0, 0, 0.1) 0 2px 4px;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Inter,-apple-system,system-ui,Roboto,"Helvetica Neue",Arial,sans-serif;
  height: 44px;
  line-height: 44px;
  outline: 0;
  overflow: hidden;
  padding: 0 20px;
  pointer-events: auto;
  position: relative;
  text-align: center;
  touch-action: manipulation;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: top;
  white-space: nowrap;
  width: 20%;
  z-index: 9;
  border: 0;
  font-size: 20px;
  
}

.button-41:hover {
  background: #0087bd;
}
@media (min-width: 768px) {
  .button-36 {
    padding: 0 2.6rem;
  }
}
</style>

<br><br><br><br><br><br><br><br><br>
  <% String user;
  if((String) session.getAttribute("client") == null) {
       user = (String) session.getAttribute("user");
  
  } else {
       user = (String) session.getAttribute("client");
  }
  String year= "";
  String period="";
  if(request.getParameter("year") == null){
       year =  (String) session.getAttribute("year");
       period = (String) session.getAttribute("period");
  } else {
    year =  request.getParameter("year");
    period =  request.getParameter("period");
    session.setAttribute("year", year);
    session.setAttribute("period", period);
  }
  
  %>
</div>
  <h1><%= user%> <%= year%> Campaign-<%= period%></h1>
  <br>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0">
      <thead>
        <tr>
          <th>Week</th>
          <% Preferences pref = new Preferences();
              Reports rep = new Reports();
              double[][] data =new double[16][5];
              String report_id="0";
              if(period.equals("A") && year.equals("2022")){
                report_id="1";
                session.setAttribute("report_id", report_id);
              }
              else if(period.equals("B") && year.equals("2022")){
                report_id="2";
                session.setAttribute("report_id", report_id);

              }
              else if(period.equals("C") && year.equals("2022")){
                report_id="3";
                session.setAttribute("report_id", report_id);

              } else if(period.equals("A") && year.equals("2021")){
                report_id="4";
                session.setAttribute("report_id", report_id);

              }
              else if(period.equals("B") && year.equals("2021")){
                report_id="5";
                session.setAttribute("report_id", report_id);

              } else if(period.equals("C") && year.equals("2021")){
                report_id="6";
                session.setAttribute("report_id", report_id);

              }
              else if(period.equals("A") && year.equals("2020")){
                report_id="7";
                session.setAttribute("report_id", report_id);

              } else if(period.equals("B") && year.equals("2020")){
                report_id="8";
                session.setAttribute("report_id", report_id);

              }
              else if(period.equals("C") && year.equals("2020")){
                report_id="9";
                session.setAttribute("report_id", report_id);

              }
              session.setAttribute("report_id", report_id);
              
             List<String> prefs;
             if((String) session.getAttribute("client_email") == null) {
                data=rep.get_data((String)session.getAttribute("email"));
                prefs = pref.get_Client_Preferences((String) session.getAttribute("email")); 
             
             } else {
                 data=rep.get_data((String)session.getAttribute("client_email"));
                 prefs = pref.get_Client_Preferences((String) session.getAttribute("client_email")); 
             }
          
             int index = 0;
             Boolean[] cast = new Boolean[4];
             for(String p: prefs){ %>
                 <th><%= p%></th>
          <%    if(p.equals("Clicks") || p.equals("GRPs")  || p.equals("Insertions")  || p.equals("Impressions")|| p.equals("Weeks")){
                    cast[index] = true;
                    index++;
                } else {
                    cast[index] = false;
                    index++;
                }
             }  %>
   
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td>1</td>
                <td><% if(cast[0]){%> <%=(int) data[0][1]%><%}else{%> <%= data[0][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[0][2]%><%}else{%> <%= data[0][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[0][3]%><%}else{%> <%= data[0][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[0][4]%><%}else{%> <%= data[0][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>2</td>
                <td><% if(cast[0]){%> <%=(int) data[1][1]%><%}else{%> <%= data[1][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[1][2]%><%}else{%> <%= data[1][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[1][3]%><%}else{%> <%= data[1][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[1][4]%><%}else{%> <%= data[1][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>3</td>
                <td><% if(cast[0]){%> <%=(int) data[2][1]%><%}else{%> <%= data[2][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[2][2]%><%}else{%> <%= data[2][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[2][3]%><%}else{%> <%= data[2][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[2][4]%><%}else{%> <%= data[2][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>4</td>
                <td><% if(cast[0]){%> <%=(int) data[3][1]%><%}else{%> <%= data[3][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[3][2]%><%}else{%> <%= data[3][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[3][3]%><%}else{%> <%= data[3][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[3][4]%><%}else{%> <%= data[3][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>5</td>
                <td><% if(cast[0]){%> <%=(int) data[4][1]%><%}else{%> <%= data[4][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[4][2]%><%}else{%> <%= data[4][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[4][3]%><%}else{%> <%= data[4][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[4][4]%><%}else{%> <%= data[4][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>6</td>
                <td><% if(cast[0]){%> <%=(int) data[5][1]%><%}else{%> <%= data[5][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[5][2]%><%}else{%> <%= data[5][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[5][3]%><%}else{%> <%= data[5][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[5][4]%><%}else{%> <%= data[5][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>7</td>
                <td><% if(cast[0]){%> <%=(int) data[6][1]%><%}else{%> <%= data[6][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[6][2]%><%}else{%> <%= data[6][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[6][3]%><%}else{%> <%= data[6][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[6][4]%><%}else{%> <%= data[6][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>8</td>
                <td><% if(cast[0]){%> <%=(int) data[7][1]%><%}else{%> <%= data[7][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[7][2]%><%}else{%> <%= data[7][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[7][3]%><%}else{%> <%= data[7][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[7][4]%><%}else{%> <%= data[7][4]%>%<%}%></td>
              <tr>
                <td>9</td>
                <td><% if(cast[0]){%> <%=(int) data[8][1]%><%}else{%> <%= data[8][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[8][2]%><%}else{%> <%= data[8][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[8][3]%><%}else{%> <%= data[8][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[8][4]%><%}else{%> <%= data[8][4]%>%<%}%></td>
                </tr>
              <tr>
              <td>10</td>
                <td><% if(cast[0]){%> <%=(int) data[9][1]%><%}else{%> <%= data[9][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[9][2]%><%}else{%> <%= data[9][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[9][3]%><%}else{%> <%= data[9][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[9][4]%><%}else{%> <%= data[9][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>11</td>
                <td><% if(cast[0]){%> <%=(int) data[10][1]%><%}else{%> <%= data[10][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[10][2]%><%}else{%> <%= data[10][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[10][3]%><%}else{%> <%= data[10][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[10][4]%><%}else{%> <%= data[10][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>12</td>
                <td><% if(cast[0]){%> <%=(int) data[11][1]%><%}else{%> <%= data[11][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[11][2]%><%}else{%> <%= data[11][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[11][3]%><%}else{%> <%= data[11][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[11][4]%><%}else{%> <%= data[11][4]%>%<%}%></td>
              </tr>
              <tr>
                <td>13</td>
                <td><% if(cast[0]){%> <%=(int) data[12][1]%><%}else{%> <%= data[12][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[12][2]%><%}else{%> <%= data[12][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[12][3]%><%}else{%> <%= data[12][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[12][4]%><%}else{%> <%= data[12][4]%>%<%}%></td>
                </tr>
              <tr>
                  <td>14</td>
                <td><% if(cast[0]){%> <%=(int) data[13][1]%><%}else{%> <%= data[13][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[13][2]%><%}else{%> <%= data[13][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[13][3]%><%}else{%> <%= data[13][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[13][4]%><%}else{%> <%= data[13][4]%>%<%}%></td>
                </tr>
                <tr>
                  <td>15</td>
                <td><% if(cast[0]){%> <%=(int) data[14][1]%><%}else{%> <%= data[14][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[14][2]%><%}else{%> <%= data[14][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[14][3]%><%}else{%> <%= data[14][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[14][4]%><%}else{%> <%= data[14][4]%>%<%}%></td>
                </tr>
                <tr>
                 <td>16</td>
                <td><% if(cast[0]){%> <%=(int) data[15][1]%><%}else{%> <%= data[15][1]%>%<%}%></td>
                <td><% if(cast[1]){%> <%=(int) data[15][2]%><%}else{%> <%= data[15][2]%>%<%}%></td>
                <td><% if(cast[2]){%> <%=(int) data[15][3]%><%}else{%> <%= data[15][3]%>%<%}%></td>
                <td><% if(cast[3]){%> <%=(int) data[15][4]%><%}else{%> <%= data[15][4]%>%<%}%></td>
                </tr>
      </tbody>
    </table>
  </div>
</div>
</section>