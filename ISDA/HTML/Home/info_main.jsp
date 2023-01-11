<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet' href='https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.no-icons.min.css'><link rel="stylesheet" href="../../CSS/info_main.css">

</head>
<body>
<style>
span.title {
  font-weight: bold;
  font-size: 16px;
  color:white;
text-align: center;
}



a.info {
  vertical-align: bottom;
  position: relative;
  /* Anything but static */
  width: 1.5em;
  height: 1.5em;
  text-indent: -9999em;
  display: inline-block;
  color: white;
  font-weight: bold;
  font-size: 1em;
  line-height: 1em;
  background-color: #91b2d2;
  margin-left: .25em;
  -webkit-border-radius: .75em;
  -moz-border-radius: .75em;
  border-radius: .75em;
}

a.info:hover {
  background-color: #628cb6;
  cursor: hand;
  cursor: pointer;
}

a.info:before {
  content: "?";
  position: absolute;
  top: .25em;
  left: 0;
  text-indent: 0;
  display: block;
  width: 1.5em;
  text-align: center;
}

.popover-title {
  margin-left: 5px;
font-weight: bold;

}


label:hover a.info,
label:hover div.popover.fade.in {
  opacity: 1;
}
}</style>
<!-- partial:index.partial.html -->
<label>
  <span class="title">Confusing thing here</span>
  
  <a class="info" data-toggle="popover" data-placement="right" data-content="This is the helpful information that will appear to help users along their way.This is the helpful information that will appear to help users along their This is the helpful information that will appear to help users along their This is the helpful information that will appear to help users along their This is the helpful information that will appear to help users along their This is the helpful information that will appear to help users along their  They'll love it.kkk kk мунунунн kkk kkkkk kkkkk kkk kkk kkkk mmm aaaa" title="" data-original-title=" Help here" >Info</a>
  
</label>
<!-- partial -->
  <script src='//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js'></script><script  src="../../JS/info.js"></script>
<script>$('.info').popover();


$(':not(#anything)').on('click', function (e) {
    $('.info').each(function () {
        //the 'is' for buttons that trigger popups
        //the 'has' for icons and other elements within a button that triggers a popup
        if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
            $(this).popover('hide');
            return;
        }
    });
});</script>
</body>
</html>
