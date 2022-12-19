<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../IMAGES/logo.jpg">

    <title>Media Planner Screen</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   

    <!-- Bootstrap core CSS -->
    <link href="../CSS/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../CSS/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../CSS/starter-template.css" rel="stylesheet">
    <style>
    .col-1 {width: 8.33%;}
    .col-2 {width: 16.66%;}
    .col-3 {width: 25%;}
    .col-4 {width: 33.33%;}
    .col-5 {width: 41.66%;}
    .col-6 {width: 50%;}
    .col-7 {width: 58.33%;}
    .col-8 {width: 66.66%;}
    .col-9 {width: 75%;}
    .col-10 {width: 83.33%;}
    .col-11 {width: 91.66%;}
    .col-12 {width: 100%;}
    
    @media only screen and (max-width: 768px) {
      /* For mobile phones: */
      [class*="col-"] {
        width: 100%;
      }
    }
    @media only screen and (max-width: 1500px) {
      /* For mobile phones: */
      [class*="col-"] {
        width: 100%;
      }
    }
    
  </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>


  <body>
    <div class="row" style="  background-color:#065675;
        padding:1.8%;text-align:center;">
        <div class="col-sm-3">
            <img src="../../IMAGES/Statistics/inteli_last.png" class="u-logo-image u-logo-image-1">
        </div> 
        <div class="col-sm-7"></div>
        <div class="col-sm-2">
            <a href="#" class="btn btn-info btn-lg" style="margin-top: 5%; margin-left: 14%;"  
            onclick="window.print()">
                <span class="glyphicon glyphicon-print" ></span> Print 
              </a>
                <a type="button" class="btn btn-lg btn-info active" href="../Home/finalmain.jsp" style="margin-top: 5%; margin-left: 0%;"   
                class="button">Back</a>  
        </div>
        
    </div>
    <br>
    <div class="row">
        <div class="col-sm-3">
            <h2 style="margin-left: 37%">Company:</h2>
        </div>
        
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2 >Average indicator 1:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Average indicator 2:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Average indicator 3:</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h2 style="margin-left: 37%"><%= (String) session.getAttribute("user")%></h2>
        </div>
        
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2 >8,75</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>64,9</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>1,5</h2>
        </div>
    </div>
    <br><br>
    <hr style="height: 20px; background: #065675;">
    <div class="row">
        <div class="col-sm-3">
            <h2 style="margin-left: 37%">Time Period:</h2>
        </div>
        
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2 >Target Goal 1:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Target Goal 2:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Target Goal 3:</h2>
        </div></div>
        <div class="row">
            <div class="col-sm-3">
                <h2 style="margin-left: 37%"><%= (String) session.getAttribute("year")%>-<%= (String) session.getAttribute("period")%></h2>
            </div>
            
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2 >8,9</h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2>52</h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2>0,7</h2>
            </div>
        </div>
        <br><br>
        <hr style="height: 20px; background: #065675;">
        <br><br><br>
        <div class="row">
            <div class="col-sm-3">
                <h2 style="margin-left: 38%;"> Results (Comparison<br> with goals): </h2>
            </div>
            
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#065675;
            border-width: 14px;">
                <h2><span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>  Increase: 5% </h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#065675;
            border-width: 14px;">
                <h2><span style="color:rgb(241, 55, 55); font-size: 38px;">&#8600;</span>  Decrease: 32%   </h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#065675;
            border-width: 14px;">
                 <h2> <span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>  Increase: 8,6%   </h2>
            </div></div>
            <br><br><br><br>
            <div class="navbar">
                <div class="row" style="padding:2%; background-color:#065675; position: fixed; bottom: 0%; left: 0%; right:0%;">
                  </div>
              </div>

  </body>
</html> 
