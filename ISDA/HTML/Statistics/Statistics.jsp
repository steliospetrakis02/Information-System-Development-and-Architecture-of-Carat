<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
* {
  box-sizing: border-box;
}

.menu {
  background-color: #ffffff;
  float: left;
  width: 20%;
  text-align: center;
  margin-top: 0px;
}

.menu a {
  background-color: #e5e5e5;
  padding: 8px;
  margin-top: 7px;
  display: block;
  width: 100%;
  color: black;
}

.main {
  float: left;
  width: 60%;
  padding: 0 20px;
}

.right {
  background-color: #ffffff;
  float: left;
  width: 20%;
  padding: 15px;
  margin-top: 0px;
  text-align: center;
}

@media only screen and (max-width: 620px) {
  /* For mobile phones: */
  .menu, .main, .right {
    width: 100%;
  }
}
</style>
</head>
<body style="font-family:Verdana;">
 <% String year, period;
 session.setAttribute("stats", "yes");
 if(((String) session.getAttribute("results")).equals("yes")) {
     year = (String) session.getAttribute("year");
     period = (String) session.getAttribute("period");
 } else {
      year = (String) request.getParameter("year");
      period = (String) request.getParameter("period");
     session.setAttribute("year", year);
     session.setAttribute("period", period);
 }
     
   %>
<div style="background: #065675;
padding:1px;text-align:left;"> <img src="../../IMAGES/Preferences/inteli_last.png" class="u-logo-image u-logo-image-1">
  <h1 style="color:#ffffff; font-size: 60px; 
  font-family: Georgia, 'Times New Roman', Times, serif; text-align:center;">Campaign Statistics</h1>
</div>

<div style="overflow:auto">
  <div class="menu">
    <h3 style="margin-top: 5%;">Company: <%= (String) session.getAttribute("user")%></h3>
    <hr>
    <form>
        <div class="row" >
          <h3>Time Period: <%= (String) session.getAttribute("year")%>-<%= (String) session.getAttribute("period")%></h3>
        </div>
        
  </div>
  
  <div class="main">
    <div style="background: #065675;text-align:center;padding:6%;margin-top:0px;"></div>
    <h2 style="margin-top: 3%; text-align:center;">Check Your Progress</h2>
    <br>
    <p style="text-align:center;">Find out if the indicators are above, below or equal to the expected ones
      , or go back to <a href="../Home/finalmain.jsp">Main Page</a>. </p>
  </div>

  <div class="right">
    <h3 style="margin-bottom: 5%;">Get Started!</h3>
      <a class="btn btn-info active btn-lg" style="background: #065675;" href="../Preferences/preferencesStats.jsp">
        <p style="color:#ffffff; margin-bottom: 0px;">Analyze</p>
      </a>
  </div>
</div>

<div style="background: #065675;;text-align:center;padding: 3%;margin-top:0px;"></div>
<img src="../../IMAGES/Statistics/stat.png" alt="Responsive image" style="width:100%;height:40%;">

</body>
</html>
