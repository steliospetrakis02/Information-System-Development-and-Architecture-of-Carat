<%@ include file="../Home/authentication_guard.jsp" %>
<%@ include file="../Home/navbar.jsp"%>

<header style="position:fixed; top:0%; left:0%;">
<nav id='cssmenu'>
<div class="logo" style="margin-top:1%;"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1"></div>
<div id="head-mobile"></div>
<div class="button" style="background-color:#065675;"></div>
<ul style="position:relative; top: 5px;">
<li style="margin-left:3%;"><a href='../Home/finalmainPlanner.jsp'>Main Page</a></li>
<li><a href="../History/lr.jsp">View Report</a></li>
<li><a href='../Preferences/PlannerPreferences.jsp'>Preferences</a></li>
<li><a href='../Goals/planner-goals.jsp'>Goals</a></li>
<li><a href='../Statistics/StatisticsPlanner.jsp'>Statistics</a></li>
<li class='active'><a href='../History/insert.jsp'>Insert Data</a></li>
</ul>
</nav>
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
  }
     %>
<% if(session.getAttribute("client") == null){ %>
    <jsp:forward page="../Home/finalmainPlanner.jsp" >
        <jsp:param name="color" value="red" />
    </jsp:forward>
  <% } %>
<section>
<head>
   <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../../CSS/History/insert.css" /> 
    <link rel="icon" href="../../IMAGES/Home/iR.png">

    <title>Insert Data</title>
</head>
<br><br><br><br><br><br><br>
  <h1> <%= (String) session.getAttribute("client")%>  <%= (String) session.getAttribute("year")%> Campaign - <%= (String) session.getAttribute("period")%></h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0">
      <thead>
        <tr>
          <th>Week</th>
                <th>GRPs</th>
                <th>SOV</th>
                <th>Reach 1+</th>
                <th>Reach 3+</th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0">
      <tbody>
        
                <tr>
                  <td>
                    <button class="button-41" role="button" style="text-align:center;">Add Data</button>
                </td>
                  <td><form action="/action_page.php">
                    <input type="text" id="GRP" name="GRP" style="width: 25%; background-color: rgba(255,255,255,0.3);">
                  </form></td>
                  <td><form action="/action_page.php">
                    <input type="text" id="GRP" name="GRP" style="width: 25%; background-color: rgba(255,255,255,0.3);"><span>%</span>
                  </form></td>
                  <td><form action="/action_page.php">
                    <input type="text" id="GRP" name="GRP" style="width: 25%; background-color: rgba(255,255,255,0.3);"><span>%</span>
                  </form></td>
                  <td><form action="/action_page.php">
                    <input type="text" id="GRP" name="GRP" style="width: 25%; background-color: rgba(255,255,255,0.3);"><span>%</span> 
                  </form></td> 
                </tr>
      </tbody>
    </table>
  </div>
  
</section>
<br>
<br>
<br>
<br>







