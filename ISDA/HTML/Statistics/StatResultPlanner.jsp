<%@ include file="../Home/authentication_guard.jsp" %>
<%@ page import="test.Preferences" %>
<%@ page import="test.Reports" %>
<%@ page import="test.Goals" %>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../IMAGES/Home/iR.png">
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

<% String year= "";
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

    String[] result = new String[3];
    result[0] = (String) request.getAttribute("indicator1");
    result[1] = (String) request.getAttribute("indicator2"); 
    result[2] = (String) request.getAttribute("indicator3");
    
    Preferences pref = new Preferences();
    Reports rep = new Reports();
              double[][] data =new double[16][5];
              String report_id="0";
              if(period.equals("A") && year.equals("2022")){
                report_id="1";
                
              }
              else if(period.equals("B") && year.equals("2022")){
                report_id="2";
                

              }
              else if(period.equals("C") && year.equals("2022")){
                report_id="3";
                

              } else if(period.equals("A") && year.equals("2021")){
                report_id="4";
                

              }
              else if(period.equals("B") && year.equals("2021")){
                report_id="5";
                

              } else if(period.equals("C") && year.equals("2021")){
                report_id="6";
                

              }
              else if(period.equals("A") && year.equals("2020")){
                report_id="7";
                

              } else if(period.equals("B") && year.equals("2020")){
                report_id="8";
                

              }
              else if(period.equals("C") && year.equals("2020")){
                report_id="9";
              }
                
             List<String> prefs;
             List<String> Weeks4X;
             if((String) session.getAttribute("client_email") == null) {
                data=rep.get_data((String)session.getAttribute("email"), report_id);
                prefs = pref.get_Client_Preferences((String) session.getAttribute("email")); 
                Weeks4X = rep.getList_of_Weeks_4x();
             
             } else {
                 data=rep.get_data((String)session.getAttribute("client_email"), report_id);
                 prefs = pref.get_Client_Preferences((String) session.getAttribute("client_email")); 
                 Weeks4X = rep.getList_of_Weeks_4x();
             }  

            int index = 0;
            int[] data_index = new int[4];
            boolean[] use_4X = new boolean[4];
            for(int i=0; i<3; i++) {
                String p = result[i]; 
                if(p.equals("GRPs")){
                    data_index[index] = 1;
                } else if(p.equals("Reach1+")) {
                    data_index[index] = 2;
                } else if(p.equals("Reach3+")) {
                    data_index[index] = 3;
                } else if(p.equals("SOV")) {
                    data_index[index] = 4;
                } else if(p.equals("Insertions")) {
                    data_index[index] = 5;
                } else if(p.equals("Grps/Week")) {
                    data_index[index] = 6;
                } else if(p.equals("Weeks")) {
                    data_index[index] = 7;
                } else if(p.equals("Weeks(4X)")) {
                    use_4X[index] = true;
                } else if(p.equals("Impressions")) {
                    data_index[index] = 8;
                } else if(p.equals("Clicks")) {
                    data_index[index] = 9;
                } else if(p.equals("Click Rate")) {
                    data_index[index] = 10;
                } else if(p.equals("Viewability")) {
                    data_index[index] = 11;
                }
                index++;
            }
            double[] average = new double[3];
            double sum1 = 0.0;
            double sum2 = 0.0;
            double sum3 = 0.0;

            int[] goal_indicators = new int[3];
            int index_goal_indicators = 0;
            for(int i=0; i<4; i++) {
                if(prefs.get(i).equals(result[0])) {
                  goal_indicators[index_goal_indicators] = i;
                  index_goal_indicators++;
                
                } else if(prefs.get(i).equals(result[1])) {
                  goal_indicators[index_goal_indicators] = i;
                  index_goal_indicators++;
                
                } else if(prefs.get(i).equals(result[2])) {
                  goal_indicators[index_goal_indicators] = i;
                  index_goal_indicators++;
                
                }
            }

            Goals g = new Goals();
            String goal_id = "";
            String email = (String) session.getAttribute("client_email");
            List<String> goals_id = g.getClientList_of_goals_ids(email);
            if(period.equals("A") && year.equals("2022")){
                goal_id = goals_id.get(0);
                session.setAttribute("goal_id", goal_id);
              }
              else if(period.equals("B") && year.equals("2022")){
                goal_id = goals_id.get(1);
                session.setAttribute("goal_id", goal_id);

              }
              else if(period.equals("C") && year.equals("2022")){
                goal_id = goals_id.get(2);
                session.setAttribute("goal_id", goal_id);

              } else if(period.equals("A") && year.equals("2021")){
                goal_id = goals_id.get(3);
                session.setAttribute("goal_id", goal_id);

              }
              else if(period.equals("B") && year.equals("2021")){
                goal_id = goals_id.get(4);
                session.setAttribute("goal_id", goal_id);

              } else if(period.equals("C") && year.equals("2021")){
                goal_id = goals_id.get(5);
                session.setAttribute("goal_id", goal_id);

              }
              else if(period.equals("A") && year.equals("2020")){
                goal_id = goals_id.get(6);
                session.setAttribute("goal_id", goal_id);

              } else if(period.equals("B") && year.equals("2020")){
                goal_id = goals_id.get(7);
                session.setAttribute("goal_id", goal_id);

              }
              else if(period.equals("C") && year.equals("2020")){
                goal_id = goals_id.get(8);
                session.setAttribute("goal_id", goal_id);

              }
            
            List<String> goals = g.getClient_goals(email, goal_id);  
            double goal_1 = Double.parseDouble(goals.get(goal_indicators[0]));
            double goal_2 = Double.parseDouble(goals.get(goal_indicators[1]));
            double goal_3 = Double.parseDouble(goals.get(goal_indicators[2]));
            for(int i=0; i<16; i++) {
                sum1 += data[i][data_index[0]];
                sum2 += data[i][data_index[1]];
                sum3 += data[i][data_index[2]];
            }
            average[0] = sum1 / 16;
            average[1] = sum2 / 16;
            average[2] = sum3 / 16;
              %>
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
                <a type="button" class="btn btn-lg btn-info active" href="../Home/finalmainPlanner.jsp" style="margin-top: 5%; margin-left: 0%;"   
                class="button">Back</a>  
        </div>
        
    </div>
    <br>
    <div class="row">
        <div class="col-sm-3">
            <h2 style="margin-left: 37%">Client:</h2>
        </div>
        
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2 >Average <%=result[0]%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Average <%=result[1]%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Average <%=result[2]%>:</h2>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3">
            <h2 style="margin-left: 37%"><%= (String) session.getAttribute("client")%></h2>
        </div>
        
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2 ><%= average[0]%></h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2><%= average[1]%></h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2><%= average[1]%></h2>
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
            <h2>Target <%=result[0]%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Target <%=result[1]%>:</h2>
        </div>
        <div class="col-sm-1"></div>
        <div class="col-sm-2">
            <h2>Target <%=result[2]%>:</h2>
        </div></div>
        <div class="row">
            <div class="col-sm-3">
                <h2 style="margin-left: 37%"><%= (String) session.getAttribute("year")%>-<%= (String) session.getAttribute("period")%></h2>
            </div>
            
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2><%= goal_1%></h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2><%= goal_2%></h2>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2">
                <h2><%= goal_3%></h2>
            </div>
        </div>
        <br><br>
        <hr style="height: 20px; background: #065675;">
        <br><br><br>
        <div class="row" style="display: flex;">
            <div class="col-sm-3">
                <h2 style="margin-left: 38%;"> Results (Comparison<br> with goals): </h2>
            </div>
            <% double deviation_1 = Math.abs(average[0] - goal_1);
               double deviation_2 = Math.abs(average[1] - goal_2);
               double deviation_3 = Math.abs(average[2] - goal_3);%>
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#065675;
            border-width: 14px; width:15%;">
              <% if(average[0] >= goal_1) { %>
                  <h2><span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>  Increase: <%= deviation_1%> </h2>
              <%} else { %>
                  <h2><span style="color:rgb(241, 55, 55); font-size: 38px;">&#8600;</span>  Decrease: <%=deviation_1%>  </h2>
              <%  } %>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#065675;
            border-width: 14px;" style="width:15%;">
                <% if(average[1] >= goal_2) { %>
                  <h2><span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>  Increase: <%= deviation_2%> </h2>
              <%} else { %>
                  <h2><span style="color:rgb(241, 55, 55); font-size: 38px;">&#8600;</span>  Decrease: <%=deviation_2%>  </h2>
              <%  } %>
            </div>
            <div class="col-sm-1"></div>
            <div class="col-sm-2" style="border-style:inset; border-color:#065675;
            border-width: 14px;" style="width:15%;">
                 <% if(average[2] >= goal_3) { %>
                  <h2><span style="color:rgb(31, 219, 31); font-size: 38px;">&#8599;</span>  Increase: <%= deviation_3%> </h2>
              <%} else { %>
                  <h2><span style="color:rgb(241, 55, 55); font-size: 38px;">&#8600;</span>  Decrease: <%=deviation_3%>  </h2>
              <%  } %>
            </div></div>
            <br><br><br><br>
            <div class="navbar">
                <div class="row" style="padding:2%; background-color:#065675; position: fixed; bottom: 0%; left: 0%; right:0%;">
                  </div>
              </div>

  </body>
</html> 
