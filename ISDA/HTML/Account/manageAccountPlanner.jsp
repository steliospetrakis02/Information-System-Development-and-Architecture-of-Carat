<!DOCTYPE html>
<html>
  <head>
    <title>Account Settings</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
      html, body {
      min-height: 100%;
      background: -webkit-linear-gradient(left, #25b7c4, #845ddf);
      background: linear-gradient(to right, #25b7c4, #845ddf);
      width: 100%;
      }
      body, div, form, input, select, textarea, label, p { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 40px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      width: 60%;
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      margin-left: 20%;
      margin-top: 2%;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px  #669999; 
      }
      .banner {
      position: relative;
      height: 400px;
      width: 400px;

      
      background-image: url("../IMAGES/goals.jpg");  
   
    
      }
      #center {  
        text-align: center;  
        }   
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.2); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #669999;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #669999;
      color: #669999;
      }
      .item {
      position: center;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      .week {
      display:flex;
      justify-content:space-between;
      }
      .colums {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .colums div {
      width:48%;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: center;
      font-size: 20px;
      color:  #a3c2c2;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: center;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #669999;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #669999;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
    </style>
  </head>
  <body>
    <div class="testbox">
      <form action="/">
        <div id ="center">  
          <img src="../../IMAGES/Account/account.png">  

        </div>
        <div class="colums">
          <div class="item">
            <p style="font-size: 28px;"><b>Your Account Details</b></p>
          </div>
          <div class="item">
            <p style="font-size: 28px;"><b>Client Account Details</b></p>
          </div>
          <div class="item">
           <p style="font-size: 23px; margin-top: 10%;"> - Employee ID: 4815162342</p><br><br>
           <p style="font-size: 23px; margin-top: 10%;"> - Email: Planner1@dentsu.com</p>
          </div>
          <div class="item">
            <ul style="font-size: 20px;"><br><br>
                <li>Company: Aegean</li><br><br>
                <li>Email: aegean@gmail.com</li><br><br>
                <li><a href="passwordreset.jsp" style="color:#000000;">Change Password</a></li><br><br>
            </ul>
             
          </div>
          <div class="item">
            
          </div>
          
          <div class="item">
           
          </div>
          <div class="item">
            
          </div>
        </div>
        <div class="question">
          <div class="btn-block">
            <style>
              .button {
                 background-color: #000000;
                 box-shadow: 0 5px 0 #0cdcc7;
                 color: white;
                 padding: 1em 1.5em;
                 position: relative;
                 text-decoration: none;
                 display: inline-block;
                 border-radius: 12px;
             }
           </style>
              <a type="submit"  href="../Home/finalmainPlanner.jsp" style="text-decoration: none; font-size: 20px;" 
              class="button">Back to Main Page</a>
          </div>
        
      </form>
    </div>
  </body>
</html>