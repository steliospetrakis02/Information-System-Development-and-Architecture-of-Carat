<%@ page import="test.Preferences" %>
<%@ page import="test.Reports" %>
<%@ page import="java.util.*" %>
<%@ include file="authentication_guard.jsp" %>
<link rel="icon" href="../../IMAGES/Home/iR.png">
<section>
<head>
   <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="../../CSS/History/lrc.css" />
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
<link rel="stylesheet" href="style.css"> 





    <title>Report Data</title>
</head>
<style>
  h1{
  font-size: 30px;
  color: #fff;
  font-weight: 300;
  text-align: center;
  margin-bottom: 15px;
}
table{
  width:100%;
  table-layout: fixed;
}
.tbl-header{
  background-color: rgba(255,255,255,0.3);
 }
.tbl-content{
  height:500px;
  overflow-x:auto;
  margin-top: 0px;
  border: 1px solid rgba(255,255,255,0.3);
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
}
td{
  padding: 15px;
  text-align: left;
  vertical-align:middle;
  font-weight: 300;
  font-size: 12px;
  color: #fff;
  border-bottom: solid 1px rgba(255,255,255,0.1);
}

.table-row{
  background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
  background: linear-gradient(to right, #25b7c4, #845ddf);
}
body{
  background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
  background: linear-gradient(to right, #25b7c4, #845ddf);
  font-family: 'Roboto', sans-serif;
}

::-webkit-scrollbar- {
    width: 10px;
} 
::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0.3); 
} 
::-webkit-scrollbar-thumb {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
}

.button-41 {
  background-color: initial;
  background-image: linear-gradient(-180deg, #00acd7, #b660d8);
  border-radius: 5px;
  box-shadow: rgba(0, 0, 0, 0.1) 0 2px 4px;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Inter,-apple-system,system-ui,Roboto,"Helvetica Neue",Arial,sans-serif;
  height: 44px;
  line-height: 44px;
  outline: 0;
  overflow: hidden;
  padding: 0 20px;
  pointer-events: auto;
  position: relative;
  text-align: center;
  touch-action: manipulation;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: top;
  white-space: nowrap;
  width: 20%;
  z-index: 9;
  border: 0;
  font-size: 20px;
  
}

.button-41:hover {
  background: #0087bd;
}
@media (min-width: 768px) {
  .button-36 {
    padding: 0 2.6rem;
  }
}
</style>
<div class="navbar">
  <div class="row" style="padding:1.2%; background-color:#065675; position: fixed; top: 0%; right: 0%; left: 0%;">
      <div class="col-sm-3">
          <img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1">
         
    </div> 
    </div>

    <br><br><br><br><br><br><br><br><br>
  <% String user;
  if((String) session.getAttribute("client") == null) {
       user = (String) session.getAttribute("user");
  
  } else {
       user = (String) session.getAttribute("client");
  }%>
</div>
  <h1><%= user%> <%= (String) request.getParameter("year")%> Campaign-<%= (String) request.getParameter("period")%></h1>
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0">
      <thead>
        <tr>
          <th>Week</th>
          <% Preferences pref = new Preferences();
              Reports rep = new Reports();
              double[][] data =new double[16][5];
              String report_id="0";
              if( ((String) request.getParameter("period")).equals("A") &((String) request.getParameter("year")).equals("2022") ){
                report_id="1";
              }
              else if(((String) request.getParameter("period")).equals("B") & ((String) request.getParameter("year")).equals("2022")){
                report_id="2";

              }
              else if(((String) request.getParameter("period")).equals("C") & ((String) request.getParameter("year")).equals("2022")){
                report_id="3";

              } else if(((String) request.getParameter("period")).equals("Α") & ((String) request.getParameter("year")).equals("2021")){
                report_id="4";

              }
              else if(((String) request.getParameter("period")).equals("Β") & ((String) request.getParameter("year")).equals("2021")){
                report_id="5";

              } else if(((String) request.getParameter("period")).equals("C") & ((String) request.getParameter("year")).equals("2021")){
                report_id="6";

              }
              else if(((String) request.getParameter("period")).equals("A") & ((String) request.getParameter("year")).equals("2020")){
                report_id="7";

              } else if(((String) request.getParameter("period")).equals("B") & ((String) request.getParameter("year")).equals("2020")){
                report_id="8";

              }
              else if(((String) request.getParameter("period")).equals("C") & ((String) request.getParameter("year")).equals("2020")){
                report_id="9";

              }
              else{
                report_id="10";
              }
              //session.setAttribute("report_id", report_id);
              
             data=rep.get_data((String)session.getAttribute("email"),report_id);
             List<String> prefs = pref.get_Client_Preferences((String)session.getAttribute("email")); 
             for(String p: prefs){ %>
                 <th><%= p%></th>
           <%  }  %>
   
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0">
      <tbody>
        <tr>
          <td>1</td>
                <td><%=data[0][1]%></td>
                <td><%=data[0][2]%></td>
                <td><%=data[0][3]%></td>
                <td><%=data[0][4]%></td>
              </tr>
              <tr>
                <td>2</td>
                <td><%=data[1][1]%></td>
                <td><%=data[1][2]%></td>
                <td><%=data[1][3]%></td>
                <td><%=data[1][4]%></td>
              </tr>
              <tr>
                <td>3</td>
                <td><%=data[2][1]%></td>
                <td><%=data[2][2]%></td>
                <td><%=data[2][3]%></td>
                <td><%=data[2][4]%></td>
              </tr>
              <tr>
                <td>4</td>
                <td><%=data[3][1]%></td>
                <td><%=data[3][2]%></td>
                <td><%=data[3][3]%></td>
                <td><%=data[3][4]%></td>
              </tr>
              <tr>
                <td>5</td>
                <td><%=data[4][1]%></td>
                <td><%=data[4][2]%></td>
                <td><%=data[4][3]%></td>
                <td><%=data[4][4]%></td>
              </tr>
              <tr>
                <td>6</td>
                <td><%=data[5][1]%></td>
                <td><%=data[5][2]%></td>
                <td><%=data[5][3]%></td>
                <td><%=data[5][4]%></td>
              </tr>
              <tr>
                <td>7</td>
                <td><%=data[6][1]%></td>
                <td><%=data[6][2]%></td>
                <td><%=data[6][3]%></td>
                <td><%=data[6][4]%></td>
              </tr>
              <tr>
                <td>8</td>
                <td><%=data[7][1]%></td>
                <td><%=data[7][2]%></td>
                <td><%=data[7][3]%></td>
                <td><%=data[7][4]%></td>
              <tr>
                <td>9</td>
                <td><%=data[8][1]%></td>
                <td><%=data[8][2]%></td>
                <td><%=data[8][3]%></td>
                <td><%=data[8][4]%></td>
                </tr>
              <tr>
              <td>10</td>
                <td><%=data[9][1]%></td>
                <td><%=data[9][2]%></td>
                <td><%=data[9][3]%></td>
                <td><%=data[9][4]%></td>
              </tr>
              <tr>
                <td>11</td>
                <td><%=data[10][1]%></td>
                <td><%=data[10][2]%></td>
                <td><%=data[10][3]%></td>
                <td><%=data[10][4]%></td>
              </tr>
              <tr>
                <td>12</td>
                <td><%=data[11][1]%></td>
                <td><%=data[11][2]%></td>
                <td><%=data[11][3]%></td>
                <td><%=data[11][4]%></td>
              </tr>
              <tr>
                <td>13</td>
                <td><%=data[12][1]%></td>
                <td><%=data[12][2]%></td>
                <td><%=data[12][3]%></td>
                <td><%=data[12][4]%></td>
                </tr>
              <tr>
                  <td>14</td>
                <td><%=data[13][1]%></td>
                <td><%=data[13][2]%></td>
                <td><%=data[13][3]%></td>
                <td><%=data[13][4]%></td>
                </tr>
                <tr>
                  <td>15</td>
                <td><%=data[14][1]%></td>
                <td><%=data[14][2]%></td>
                <td><%=data[14][3]%></td>
                <td><%=data[14][4]%></td>
                </tr>
                <tr>
                 <td>16</td>
                <td><%=data[15][1]%></td>
                <td><%=data[15][2]%></td>
                <td><%=data[15][3]%></td>
                <td><%=data[15][4]%></td>
                </tr>
      </tbody>
    </table>
  </div>

<br><br>
<br>

<div class="row" style="padding:1%;text-align:center;">
  <form action="indicators.jsp">
    <button  type="submit" class="button-41" role="button" 
    style="margin-left: auto; margin-right: auto;">Indicator Details</button>
  </form>
  
 <br><br><br>
</div>
</section>