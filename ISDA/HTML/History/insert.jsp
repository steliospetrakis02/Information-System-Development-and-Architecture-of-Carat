<div class="navbar">
  <div class="row" style="padding:1.2%; background-color:#065675; position: fixed; top: 0%; right: 0%; left: 0%;">
      <div class="col-sm-3">
          <img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1">
         
    </div> 
    </div>
  <% String year = (String) request.getParameter("year");
     String period = (String) request.getParameter("period");
     session.setAttribute("year", year);
     session.setAttribute("period", period);%>

</div>
<section>
<head>
   <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../../CSS/History/insert.css" /> 
    
    <title>Add Report Data</title>
</head>
<br><br><br><br><br><br><br>
  <h1> <%= (String) session.getAttribute("client")%>  <%= (String) session.getAttribute("year")%> Campaign- <%= (String) session.getAttribute("period")%></h1>
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
                    <button class="button-41" role="button">Add Data</button>
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







