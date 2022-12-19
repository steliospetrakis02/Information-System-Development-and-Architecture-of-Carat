<%@ include file="../Home/authentication_guard.jsp" %>
<%@ page import="test.Preferences" %>
<%@ page import="test.Reports" %>
<%@ page import="java.util.*" %>

<link rel="icon" href="../../IMAGES/Home/iR.png">
<title>Bar chart</title>
<div class="navbar">
  <div class="row" style="padding:1.2%; background-color:#065675;  position: fixed; top: 0%; right: 0%; left: 0%;">
      <div class="col-sm-3">
          <img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1">
         
    </div> 
    </div>
  

</div>
<br>
<br>
<br><br><br>
<br>
<br>
<% Preferences pref = new Preferences();
              Reports rep = new Reports();
              double[][] data =new double[16][5];
              String report_id="0";
              int index = 0;
              int indicator_index = 0;
              
              report_id = (String) session.getAttribute("report_id");
//              data=rep.get_data((String)session.getAttribute("Aegean@hotmail.com"),"1");
  //            data=rep.get_data((String)session.getAttribute("email"),report_id);
                  data=(rep.get_data("AEGEAN@hotmail.com","1"));  


             List<String> prefs = pref.get_Client_Preferences((String) session.getAttribute("email")); 
             for(String prefe: prefs){
                if(prefe.equals(request.getParameter("indicator"))){
                  indicator_index = index;
                }
                index++;
             } %>
<h1 style="font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">
  <%= request.getParameter("indicator")%> Report 3D Vertical Bar Chart</h1>  <!-- %του 300-->
  <div class="chart-container">
    <div class="base"></div>
        <!-- Left Side Meter-->
    <ul class="meter">
      <li><div>300</div></li>
      <li><div>240</div></li>
      <li><div>180</div></li>
      <li><div>120</div></li>
      <li><div>60</div></li>
    </ul>
    <!-- Background-Grid -->
    <table>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
      </tr>
    </table>
    <!-- End Background Grid -->
 
    <div class="bar one"></div>   
    <div class="bar two"></div>   
    <div class="bar three"></div>
    <div class="bar four"></div>   
    <div class="bar five"></div>   
    <div class="bar six"></div>
    <div class="bar seven"></div>   
    <div class="bar eight"></div> 
  </div>
  <h3 style="margin-left: 26%;">Weeks <span style="margin-left: 2.5%;">1-2</span>
    <span style="margin-left: 4.8%;">3-4</span>
    <span style="margin-left: 4.8%;">5-6</span>
    <span style="margin-left: 4.8%;">7-8</span>
    <span style="margin-left: 4.8%;">9-10</span>
    <span style="margin-left: 3.3%;">11-12</span>
    <span style="margin-left: 3.3%;">13-14</span>
    <span style="margin-left: 3.3%;">15-16</span>

</h3>
<br><br><br><br>
  <style>
    html, body {
        background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
  background: linear-gradient(to right, #25b7c4, #845ddf);
  font-family: 'Helvetica Neue', Helvetica, sans-serif;
  color: rgba(255,255,255,0.75);
}

h1 {
  margin: 60px auto 0;
  width: 550px;
  text-align: center;
  font-size: 36px;
}

.base {
  position: absolute;
  bottom: 0;
  left: -35px;
  width: 825px;
  height: 20px;
  background-color: rgba(75, 65, 65, 0);
  -moz-transform: skew(45deg);
  -o-transform: skew(45deg);
  -webkit-transform: skew(45deg);
}

.chart-container {
  position: relative;
  z-index: 0;
  margin: 100px auto 0;
  width: 800px;
  height: 500px;
  /*border: solid 1px #bbb;*/
  background-color: rgba(255,255,255,0.055);
/*  -webkit-box-shadow: 0 8px 6px -6px #444;
*/}

.chart-container:after {
  content:"";
  position: absolute;
  top: -15px;
  left: -8px;
  height: 15px;
  width: 800px;
  background-color: rgba(255,255,255,0.055);
  -moz-transform: skew(45deg);
  -o-transform: skew(45deg);
  -webkit-transform: skew(45deg);
  transform: skew(45deg);
}

.chart-container > table {
  position: absolute;
  top: 0;
  left: 0;
  z-index: -999;
  width: 100%;
  height: 100%;
}

.chart-container table  tr  td {
  width: 100px;
  height: 98x;
  border: solid 1px  rgba(255,255,255,0.05);

}

.meter {
  position: relative;
  top: 0px;
  left: -50px;
  height: 500px;
  width: 30px;
  background-color: rgba(132, 29, 216, 0.5);
  border-left: solid 1px rgba(255,255,255,0.5);

}

.meter:before {
  content: "";
  position: absolute;
  top: -7px;
  left: -15px;
  width: 15px;
  height: 500px;
  background-color: rgba(14,81,117,0.9);
   -moz-transform: skewY(45deg);
  -o-transform: skewY(45deg);
  -webkit-transform: skewY(45deg);
  transform: skewY(45deg);
}

.meter:after {
  content: "";
  position: absolute;
  top: -15px;
  left: -8px;
  width: 30px;
  height: 15px;
  background-color: rgba(13,171,217,0.45);
   -moz-transform: skewX(45deg);
  -o-transform: skewX(45deg);
  -webkit-transform: skewX(45deg);
  transform: skewX(45deg);
}

.meter li {
  position: relative;
  list-style-type: none;
  height: 99px;
  border-bottom: solid 1px #0DABD9;
}

.meter li:before {
  content: "";
  position: absolute;
  top: -15px;
  left: -30px;
  width: 30px;
  height: 100%;
  border-bottom: solid 1px #0DABD9;
  -moz-transform: skewY(45deg);
  -o-transform: skewY(45deg);
  -webkit-transform: skewY(45deg);
  transform: skewY(45deg);
}

.meter li:last-child {
  border-bottom: none;
}

.meter li:last-child:before {
  border: 0;
}

.meter li div {
  position: absolute;
  left: -135px;
  top: 0;
  padding: 55px 0 0;
  width: 80px;
  color: #ffffff;
  text-align: right;
  font-weight: 300;
  font-size: 17px;
  line-height: 18px;
  text-transform: uppercase;
}


/* ---------------------
  Vertical Bars
----------------------*/

.bar {
  float: left;
  position: absolute;
  bottom: 0;
  z-index: 99;
  height: 35%;
  width: 40px;
  margin: 0 40px;
  background-color: rgba(10, 245, 194, 0.986);
}

.bar:before {
  content: "";
  position: absolute;
  left: -15px;
  bottom: 7px;
  height: 100%;
  width: 15px;
  background-color: rgba(14, 168, 135, 0.986);
  -webkit-transform: skewY(45deg);
}

.bar:after {
  content: "";
  position: absolute;
  top: -15px;
  left: -8px;
  width: 40px;
  height: 15px;
  background-color: rgba(9, 95, 76, 0.986);
  -moz-transform: skewX(45deg);
  -o-transform: skewX(45deg);
  -webkit-transform: skewX(45deg);
  transform: skewX(45deg);
}

.two {
  left: 12.5%;
  height: 57%;
}

.three {
  left: 25%;
  height: 85%;
}

.four {
  left: 37.5%;
  height: 35%;
}

.five {
  left: 50%;
  height: 63%;
}

.six {
  left: 62.5%;
  height: 45%;
}

.seven {
  left: 75%;
  height: 15%;
}

.eight {
  left: 87.5%;
  height: 32%;
}

  </style>