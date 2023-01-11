<!DOCTYPE html>
<html>
  <head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
      /* Popup container */
      .popup {
        position: absolute;
        display: inline-block;
        cursor: pointer;
        top: 20%;
        left:55%;
      }
      
      /* The actual popup */
      .popup .popuptext {
        visibility: hidden;
        width: 400px;
        background-color: #555;
        color: #fff;
        text-align: center;
        border-radius: 6px;
        padding: 8px 0;
        position: absolute;
        z-index: 1;
        bottom: 125%;
        left: 50%;
        margin-left: -80px;
      }
      
      /* Popup arrow */
      .popup .popuptext::after {
        content: "";
        position: absolute;
        top: 100%;
        left: 50%;
        margin-left: -5px;
        border-width: 5px;
        border-style: solid;
        border-color: #555 transparent transparent transparent;
      }
      
      /* Toggle this class when clicking on the popup container (hide and show the popup) */
      .popup .show {
        visibility: visible;
        -webkit-animation: fadeIn 1s;
        animation: fadeIn 1s;
      }
      
      /* Add animation (fade in the popup) */
      @-webkit-keyframes fadeIn {
        from {opacity: 0;} 
        to {opacity: 1;}
      }
      
      @keyframes fadeIn {
        from {opacity: 0;}
        to {opacity:1 ;}
      }
    </style>
  </head>
  <body>
  
    <div class="popup" onclick="myFunction()"><i class="fa fa-info-circle" style="font-size:36px"></i>
      <span class="popuptext" id="myPopup">
        This is the helpful information that will appear to help users along their way.This is the helpful information that will appear 
  to help users along their way.This is the helpful information that will appear to help users along their way.This is the helpful 
  information that will appear to help users along their way.This is the helpful information that will appear to help users along 
  their This is the helpful information that will appear to help users along their This is the helpful information that will appear 
  to help users along their This is the helpful information that will appear to help users along their This is the helpful information 
  that will appear to help users along their  They'll love it.kkk kk �������� kkk kkkkk kkkkk kkk kkk kkkk mmm aaaa
      </span>
    </div>
    
    <script>
      function myFunction() {
        var popup = document.getElementById("myPopup");
        popup.classList.toggle("show");
      }
    </script>
    
  </body>
</html>