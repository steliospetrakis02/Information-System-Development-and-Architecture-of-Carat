<%@ include file="../Home/authentication_guard.jsp" %>
<%@ include file="../Home/navbar.jsp"%>
<%@ page import="test.Preferences" %>
<%@ page import="java.util.*" %>
<%@ page import="test.Goals" %>

<!DOCTYPE html>
<html>
<link rel="icon" href="../../IMAGES/Home/iR.png">
<title>View Goals</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<style>
* {
  box-sizing: border-box;
}

body {
    background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
      background: linear-gradient(to right, #25b7c4, #845ddf);
}

#regForm {
  background-color: #ffffff;
  margin: 30px auto;
  font-family: Raleway;
  padding: 30px;
  width: 40%;
  margin-top:9%;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #04AA6D;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #04AA6D;
}
</style>
<body>
 <header style="position:fixed; top:0%; left:0%;">
<nav id='cssmenu'>
<div class="logo"><img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul>
<li style="margin-left:2%;"><a href='../Home/finalmainPlanner.jsp'>Main Page</a></li>
<li><a href="../History/lr.jsp">View Report</a></li>
<li><a href='../Preferences/PlannerPreferences.jsp'>Preferences</a></li>
<li  class='active'><a href='../Goals/planner_goals.jsp'>Goals</a></li>
<li><a href='../Statistics/StatisticsPlanner.jsp'>Statistics</a></li>
<li><a href='../History/insert.jsp'>Insert Data</a></li>
</ul>
</nav>
</header>
<% String year;
String period;
 if(request.getParameter("year") == null){
       year = (String) session.getAttribute("year");
       period = (String) session.getAttribute("period");
} else {
      year = (String) request.getParameter("year");
      period = (String) request.getParameter("period");
} 
     
     session.setAttribute("year", year);
     session.setAttribute("period", period);%>
     <% if(session.getAttribute("client") == null){ %>
    <jsp:forward page="../Home/finalmainPlanner.jsp" >
        <jsp:param name="color" value="red" />
    </jsp:forward>
<%} 


   Preferences p = new Preferences();
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
   List<String> prefs;
   if((String) session.getAttribute("client_email") == null) {
	      prefs = p.get_Client_Preferences((String) session.getAttribute("email")); 
   } else {
        prefs = p.get_Client_Preferences((String) session.getAttribute("client_email")); 
   }%>
<form id="regForm" action="../Home/finalmainPlanner.jsp">
  <h1><img src="../../IMAGES/Goals/goals.jpg">  </h1>
  <!-- One "tab" for each step in the form: -->
  <br><br><br><br><br><br>
    
<%int i = 0;
List<String> goal_list = g.getClient_goals(email, goal_id);
for(String pp: prefs){%> 
  <div class="tab" style="font-size: 25px;"><%= (String) session.getAttribute("client")%> has set target <%=pp%> at:<br><%=goal_list.get(i++)%></div>
<%}%>
<div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
</form>

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Back to main page";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>

</body>
</html>
