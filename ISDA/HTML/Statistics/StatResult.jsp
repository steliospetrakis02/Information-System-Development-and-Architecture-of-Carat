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

    <title>Results</title>
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
    <div class="row" style="  background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
                              background: linear-gradient(to right, #25b7c4, #845ddf);
        padding:1.8%;text-align:center;">
        <div class="col-sm-3">
            <h1 style="text-align: left; color: #ffffff; margin-left: 29%;
            font-size: 50px; font-family: Georgia, 'Times New Roman', Times, serif;">Results</h1>
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
            <h2 ><%= request.getParameter("Result_indicator_1")%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2><%= request.getParameter("Result_indicator_2")%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2><%= request.getParameter("Result_indicator_3")%>:</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h2 style="margin-left: 37%">Aegean</h2>
        </div>
        
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2 ><%= request.getParameter("real_average_1")%></h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2><%= request.getParameter("real_average_2")%></h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2><%= request.getParameter("real_average_3")%></h2>
        </div>
    </div>
    <hr style="height: 20px; background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
    background: linear-gradient(to right, #25b7c4, #845ddf);">
    <div class="row">
        <div class="col-sm-3">
            <h2 style="margin-left: 37%">Time Period:</h2>
        </div>
        
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2 >Target <%= request.getParameter("Result_indicator_1")%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Target <%= request.getParameter("Result_indicator_2")%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Target <%= request.getParameter("Result_indicator_3")%>:</h2>
        </div></div>
        <div class="row">
            <div class="col-sm-3">
                <h2 style="margin-left: 37%">2022 May-August</h2>
            </div>
            
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2 ><%= request.getParameter("goal_average_1")%></h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2><%= request.getParameter("goal_average_2")%></h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2><%= request.getParameter("goal_average_3")%></h2>
            </div>
        </div>
        <hr style="height: 20px; background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
        background: linear-gradient(to right, #25b7c4, #845ddf);">
        <br><br><br><br><br><br>
        <div class="row">
            <div class="col-sm-3">
                <img src="../../IMAGES/Statistics/logo2.jpg" alt="Responsive image" style="width:230px;height:200px; 
                margin-left: 38%;">
            </div>
            <% double dev_1 = request.getParameter("real_dev_1")
            double dev_2 = request.getParameter("real_dev_2")
            double dev_3 = request.getParameter("real_dev_3") %>
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#25b7c4;
            border-width: 18px;">
                <h2>
                <% if (dev_1 > 0) { %>
                    Increase:

                <% } else { %>
                    Decrease:

                <% } %> 
                <%= dev_1%>%   
                <% if (dev_1 > 0) { %>
                    <span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>

                <% } else { %>
                    <span style="color:rgb(241, 55, 55); font-size: 38px;">&#8600;</span>

                <% } %></h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#25b7c4;
            border-width: 18px;">
                <h2>
                <% if (dev_2 > 0) { %>
                    Increase:

                <% } else { %>
                    Decrease:

                <% } %> 
                <%= dev_2%>%   
                <% if (dev_ > 0) { %>
                    <span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>

                <% } else { %>
                    <span style="color:rgb(241, 55, 55); font-size: 38px;">&#8600;</span>

                <% } %></h2><div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#25b7c4;
            border-width: 18px;">
                <h2>
                <% if (dev_3 > 0) { %>
                    Increase:

                <% } else { %>
                    Decrease:

                <% } %> 
                <%= dev_3%>%   
                <% if (dev_3 > 0) { %>
                    <span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>

                <% } else { %>
                    <span style="color:rgb(241, 55, 55); font-size: 38px;">&#8600;</span>

                <% } %></h2>

  </body>
</html> 
