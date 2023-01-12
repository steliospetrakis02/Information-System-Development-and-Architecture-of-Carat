<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>History</title>
  <link rel='stylesheet' href='https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@400;500;600;700&amp;display=swap'>
  <link rel="stylesheet" href="../../CSS/History/hi.css">

<link rel="icon" href="../../IMAGES/Home/iR.png">


</head>
<body style="background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
background: linear-gradient(to right, #25b7c4, #845ddf);">
<% if(((String) session.getAttribute("role")).equals("client")){ %>
  <header>
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
    <header>
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


<%@ include file="../Home/navbar.jsp"%>

<article class="historytable">
  <header>
    <h1 class="historytable_title">History</h1>
  </header>
  <main class="historytable_rows">
   <a href='lr.jsp?year=2022&period=C' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name">
      <% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2022<span>C</span></span>
    </article>
  </a> 
  <a href='lr.jsp?year=2022&period=B' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2022<span>B</span></span>
    </article>
  </a>
    <a href='lr.jsp?year=2022&period=A' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2022<span>A</span></span>
    </article>
  </a>
    <a href='lr.jsp?year=2021&period=C' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2021<span>C</span></span>
    </article>
  </a>
    <a href='lr.jsp?year=2021&period=B' style="text-decoration: none;">
     <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2021<span>B</span></span>
    </article>
  </a>
    <a href='lr.jsp?year=2021&period=A' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2021<span>A</span></span>
    </article>
  </a>
    <a href='lr.jsp?year=2020&period=C' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2020<span>C</span></span>
    </article>
  </a>
  </a>
    <a href='lr.jsp?year=2020&period=B' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2020<span>B</span></span>
    </article>
  </a>
  </a>
    <a href='lr.jsp?year=2020&period=A' style="text-decoration: none;">
    <article class="historytable_row">
      <span class="historytable_name"><% if(((String) session.getAttribute("role")).equals("client")){%> <%= (String) session.getAttribute("user")%> <%}else{%>
      <%= (String) session.getAttribute("client")%> <%} %> Campaign</span>
      <span class="historytable_date">2020<span>A</span></span>
    </article>
  </a>
  </main>
</div>
<br><br><br><br>
</body>
</html>

