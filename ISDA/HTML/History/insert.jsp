<%@ include file="../Home/authentication_guard.jsp" %>
<%@ include file="../Home/navbar.jsp"%>
<%@ page import="test.Preferences" %>
<%@ page import="java.util.*" %>
<%@ page import="test.Reports" %>
<link rel="icon" href="../../IMAGES/Home/iR.png">
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
<% 
  Preferences pref = new Preferences();
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
              
             String email = (String) session.getAttribute("client_email");
             report_id = rep.getClientList_of_reports_ids(email).get(0);
             session.setAttribute("report_id", report_id);

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
             Boolean[] cast = new Boolean[4];
             boolean[] G_per_W = new boolean[4];
             for(String p: prefs){ %>
                 <th><%= p%></th>
          <%    if(p.equals("GRPs")){
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
                if(p.equals("Grps/Week")){
                   G_per_W[index] = true;
                }
                if(p.equals("Clicks") || p.equals("GRPs")  || p.equals("Insertions")  ||
                 p.equals("Impressions")|| p.equals("Weeks") || p.equals("Grps/Week")){
                    cast[index] = true;
                    index++;
                } else {
                    cast[index] = false;
                    index++;
                }
                
             }  

             
if(session.getAttribute("client") == null){ %>
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
        <% for(String pr: prefs){ %>
            <th><%= pr%></th>
       <% } %>     
        </tr>
      </thead>
      <% if(data.length == 15) { %>
        <div class="tbl-content">
          <table cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                  <td></td><td></td>
                  <td>
                    <h1 style="color:white;">Data table is full!</h1>
                  </td>
                  <td></td><td></td>
            </tbody>
        </table>
        </div>
     <% } else { %>
          <div class="tbl-content">
            <table cellpadding="0" cellspacing="0">
            <tbody>
             <%int i = 0;
                for(double[] row: data) {
                 %>
            <tr>
              <td><%= i+1%></td>
                <td><% if(use_4X[0]){%> <%= Weeks4X.get(i)%> <%}else{ if(cast[0]){%> <%=(int) data[i][data_index[0]]%><%}else{%> <%= data[i][data_index[0]]%><%if(!G_per_W[0]){%>%<%}%><%}%><%}%></td>
                <td><% if(use_4X[1]){%> <%= Weeks4X.get(i)%> <%}else{ if(cast[1]){%> <%=(int) data[i][data_index[1]]%><%}else{%> <%= data[i][data_index[1]]%><%if(!G_per_W[1]){%>%<%}%><%}%><%}%></td>
                <td><% if(use_4X[2]){%> <%= Weeks4X.get(i)%> <%}else{ if(cast[2]){%> <%=(int) data[i][data_index[2]]%><%}else{%> <%= data[i][data_index[2]]%><%if(!G_per_W[2]){%>%<%}%><%}%><%}%></td>
                <td><% if(use_4X[3]){%> <%= Weeks4X.get(i)%> <%}else{ if(cast[3]){%> <%=(int) data[i][data_index[3]]%><%}else{%> <%= data[i][data_index[3]]%><%if(!G_per_W[3]){%>%<%}%><%}%><%}%></td>
            </tr>
            <% i++;
              }%>
        
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
   <%  } %>
      
    </table>
  </div>
  
  
</section>
<br>
<br>
<br>
<br>







