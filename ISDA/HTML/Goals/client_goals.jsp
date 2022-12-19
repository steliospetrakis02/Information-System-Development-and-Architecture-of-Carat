<%@ include file="../Home/authentication_guard.jsp" %>

<!DOCTYPE html>
<html>
<title>Set Goals</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="icon" href="../../IMAGES/Home/iR.png">

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
 <div class="navbar">
    <div class="row" style="padding:1.2%; background-color:#065675; position: fixed; top: 0%; right: 0%; left: 0%;">
        <div class="col-sm-3">
            <img src="../../IMAGES/Goals/inteli_last.png" class="u-logo-image u-logo-image-1">
           
      </div> 
      </div>
  </div>
<% String year = (String) request.getParameter("year");
     String period = (String) request.getParameter("period");
     session.setAttribute("year", year);
     session.setAttribute("period", period);%>
<form id="regForm" action="results.jsp">
  <h1><img src="../../IMAGES/Goals/goals.jpg">  </h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab">Target GRPs:
    <p><input placeholder="Set your target GRPs" oninput="this.className = ''" name="GRPs"></p>
  </div>
  <div class="tab">Target SOV:
    <p><input placeholder="Set your target SOV" oninput="this.className = ''" name="SOV"></p>
  </div>
  <div class="tab">Target Reach 1+:
    <p><input placeholder="Set your target Reach 1+" oninput="this.className = ''" name="Reach 1+"></p>
  </div>
  <div class="tab">Target Reach 3+:
    <p><input placeholder="Set your target Reach 3+" oninput="this.className = ''" name="Reach 3+"></p>
  </div>
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
    document.getElementById("nextBtn").innerHTML = "Submit";
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
