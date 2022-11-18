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

<div style="background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
background: linear-gradient(to right, #25b7c4, #845ddf);
padding:1px;text-align:center;">
  <h1 style="color:#ffffff; margin-top: 5%; font-size: 60px; 
  font-family: Georgia, 'Times New Roman', Times, serif;">Campaign Statistics</h1>
</div>

<div style="overflow:auto">
  <div class="menu">
    <h3 style="margin-top: 5%;">Client: Aegean</h3>
    <hr>
    <form>
        <div class="row" >
          <h3>Time Period: 2022-B</h3>
        </div>
        
  </div>
  
  <div class="main">
    <div style="background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
    background: linear-gradient(to right, #25b7c4, #845ddf);text-align:center;padding:6%;margin-top:0px;"></div>
    <h2 style="margin-top: 3%; text-align:center;">Check Client's Progress</h2>
    <br>
    <p style="text-align:center;">Find out if the indicators are above, below or equal to the expected ones
      , or go back to <a href="../Home/finalmainPlanner.jsp">Main Page</a>. </p>
  </div>

  <div class="right">
    <h3 style="margin-bottom: 5%;">Get Started!</h3>
      <a class="btn btn-info active btn-lg" style="background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
      background: linear-gradient(to right, #25b7c4, #845ddf);" href="../Preferences/PlannerpreferencesStats.jsp">
        <p style="color:#ffffff; margin-bottom: 0px;">Analyze</p>
      </a>
  </div>
</div>

<div style="background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
background: linear-gradient(to right, #25b7c4, #845ddf);;text-align:center;padding: 3%;margin-top:0px;"></div>
<img src="../../IMAGES/Statistics/stat.png" alt="Responsive image" style="width:100%;height:40%;">

</body>
</html>