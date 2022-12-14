<%@ include file="authentication_guard.jsp" %>

<!DOCTYPE html>
<html style="font-size: 16px;" lang="en"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Main Page</title>
    <link rel="stylesheet" href="../../CSS/Home/nicepage.css" media="screen">
<link rel="stylesheet" href="../../CSS/Home/finalmain.css" media="screen">
<link rel="icon" href="../../IMAGES/Home/iR.png">

    <script class="u-script" type="text/javascript" src="../../JS/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../../JS/nicepage.js" defer=""></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Oswald:200,300,400,500,600,700">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "../../IMAGES/Home/logo3.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode" data-lang="en"><header class="u-clearfix u-header u-sticky u-sticky-65f3 u-white u-header" id="sec-6ecb"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
<nav id='cssmenu' style="width:1850px;">
<div class="logo" style="margin-top:1%; width:13%; margin-left:1%;"><img src="../../IMAGES/History/inteli_last.png"></div>
<div id="head-mobile"></div>
<div class="button"></div>
<ul>
<li class='active'><a href='../Home/finalmain.jsp'>Main Page</a></li>
<li><a href="../History/lr.jsp?year=<%= (String) session.getAttribute("year")%>&period=<%= (String) session.getAttribute("period")%>">View Report</a></li>
<li><a href='../Preferences/preferences.jsp'>Preferences</a></li>
<li><a href='../Goals/client_goals.jsp'>Goals</a></li>
<li><a href='../Statistics/Statistics.jsp'>Statistics</a></li>
<li class="element"><a href="Home.jsp">Logout <i class="fa fa-sign-out" style="font-size:20px"></i></a></li>
</ul>
</nav>


<%@ include file="../Home/navbar.jsp"%>
<style>
  /* Style for screens smaller than 1700px */
  @media screen and (max-width: 1700px) {
    .element {
      margin-left:15%;
    }
  }

  /* Style for screens larger than 1700px */
  @media screen and (min-width: 1700px) {
    .element {
      margin-left:24%;
    }
  }
</style>
</header>
<% session.setAttribute("results", "no");
   session.setAttribute("stats", "no");%>
      <div class="u-clearfix u-sheet u-sheet-1">
        <br><%@include file="info_main.jsp"%>

        <h3 class="u-custom-font u-font-roboto-condensed u-text u-text-body-alt-color u-text-default u-text-1" style="margin-left: auto; margin-right: auto;">Welcome, please choose year and time period to work on a particular report</h3>
      </div>
    <section class="u-align-center u-clearfix u-section-2" id="sec-97b2">
      <div class="u-clearfix u-sheet u-valign-bottom u-sheet-1">
        <div class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
          <ul class="u-border-2 u-border-palette-1-base u-spacing-10 u-tab-list u-unstyled" role="tablist">
            <li class="u-tab-item" role="presentation">
              <a class="active u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-1" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">2020</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-2" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false">2021</a>
            </li>
            <li class="u-tab-item" role="presentation">
              <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-3" id="link-tab-2917" href="#tab-2917" role="tab" aria-controls="tab-2917" aria-selected="false">2022</a>
            </li>
          </ul>
          <div class="u-tab-content">
            <div class="u-container-style u-shape-rectangle u-tab-active u-tab-pane" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
              <div class="u-container-layout u-container-layout-1">
                <div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-2">
                  <ul class="u-border-2 u-border-palette-1-base u-spacing-10 u-tab-list u-unstyled" role="tablist">
                    <li class="u-tab-item" role="presentation">
                      <a class="active u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-4" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">JANUARY - APRIL</a>
                    </li>
                    <li class="u-tab-item" role="presentation">
                      <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-5" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false">MAY - AUGUST</a>
                    </li>
                    <li class="u-tab-item" role="presentation">
                      <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-6" id="link-tab-2917" href="#tab-2917" role="tab" aria-controls="tab-2917" aria-selected="false">SEPTEMBER - DECEMBER</a>
                    </li>
                  </ul>
                  <div class="u-tab-content">
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-active u-tab-pane" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                      <div class="u-container-layout u-valign-middle u-container-layout-2">
                        <div class="u-repeater u-repeater-1">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-2">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-4">
                              <img class="u-image u-image-circle u-image-2" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2020&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-2">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-3">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-5">
                              <img class="u-image u-image-circle u-image-3" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2020&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-3">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-4">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-6">
                              <img class="u-image u-image-circle u-image-4" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2020&period=A&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-4">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-5">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-7">
                              <img class="u-image u-image-circle u-image-5" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2020&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-5">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-pane" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                      <div class="u-container-layout u-valign-middle u-container-layout-9">
                        <div class="u-repeater u-repeater-2">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-8">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-11">
                              <img class="u-image u-image-circle u-image-8" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2020&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-8">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-9">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-12">
                              <img class="u-image u-image-circle u-image-9" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2020&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-9">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-10">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-13">
                              <img class="u-image u-image-circle u-image-10" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2020&period=B&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-10">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-11">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-14">
                              <img class="u-image u-image-circle u-image-11" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2020&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-11">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-pane" id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
                      <div class="u-container-layout u-valign-middle u-container-layout-16">
                        <div class="u-repeater u-repeater-3">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-14">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-18">
                              <img class="u-image u-image-circle u-image-14" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2020&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-14">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-15">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-19">
                              <img class="u-image u-image-circle u-image-15" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2020&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-15">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-16">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-20">
                              <img class="u-image u-image-circle u-image-16" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2020&period=C&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-16">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-17">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-21">
                              <img class="u-image u-image-circle u-image-17" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2020&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-17">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-align-left u-container-style u-shape-rectangle u-tab-pane" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
              <div class="u-container-layout u-container-layout-23">
                <div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-3">
                  <ul class="u-border-2 u-border-palette-1-base u-spacing-10 u-tab-list u-unstyled" role="tablist">
                    <li class="u-tab-item" role="presentation">
                      <a class="active u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-7" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">JANUARY - APRIL</a>
                    </li>
                    <li class="u-tab-item" role="presentation">
                      <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-8" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false">MAY - AUGUST</a>
                    </li>
                    <li class="u-tab-item u-tab-item-9" role="presentation">
                      <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-9" id="tab-93fc" href="#link-tab-93fc" role="tab" aria-controls="link-tab-93fc" aria-selected="false">SEPTEMBER - DECEMBER</a>
                    </li>
                  </ul>
                  <div class="u-tab-content">
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-active u-tab-pane" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                      <div class="u-container-layout u-valign-middle u-container-layout-24">
                        <div class="u-repeater u-repeater-4">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-20">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-26">
                              <img class="u-image u-image-circle u-image-20" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2021&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-20">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-21">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-27">
                              <img class="u-image u-image-circle u-image-21" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2021&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-21">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-22">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-28">
                              <img class="u-image u-image-circle u-image-22" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2021&period=A&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-22">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-23">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-29">
                              <img class="u-image u-image-circle u-image-23" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2021&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-23">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-pane" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                      <div class="u-container-layout u-valign-middle u-container-layout-31">
                        <div class="u-repeater u-repeater-5">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-26">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-33">
                              <img class="u-image u-image-circle u-image-26" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2021&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-26">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-27">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-34">
                              <img class="u-image u-image-circle u-image-27" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2021&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-27">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-28">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-35">
                              <img class="u-image u-image-circle u-image-28" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2021&period=B&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-28">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-29">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-36">
                              <img class="u-image u-image-circle u-image-29" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2021&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-29">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-pane" id="link-tab-93fc" role="tabpanel" aria-labelledby="tab-93fc">
                      <div class="u-container-layout u-valign-middle u-container-layout-38">
                        <div class="u-repeater u-repeater-6">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-32">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-40">
                              <img class="u-image u-image-circle u-image-32" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2021&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-32">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-33">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-41">
                              <img class="u-image u-image-circle u-image-33" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2021&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-33">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-34">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-42">
                              <img class="u-image u-image-circle u-image-34" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2021&period=C&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-34">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-35">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-43">
                              <img class="u-image u-image-circle u-image-35" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2021&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-35">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-container-style u-shape-rectangle u-tab-pane u-tab-pane-9" id="tab-2917" role="tabpanel" aria-labelledby="link-tab-2917">
              <div class="u-container-layout u-container-layout-45">
                <div class="u-expanded-width u-tab-links-align-left u-tabs u-tabs-4">
                  <ul class="u-border-2 u-border-palette-1-base u-spacing-10 u-tab-list u-unstyled" role="tablist">
                    <li class="u-tab-item" role="presentation">
                      <a class="active u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-10" id="link-tab-0da5" href="#tab-0da5" role="tab" aria-controls="tab-0da5" aria-selected="true">JANUARY - APRIL</a>
                    </li>
                    <li class="u-tab-item" role="presentation">
                      <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-11" id="link-tab-14b7" href="#tab-14b7" role="tab" aria-controls="tab-14b7" aria-selected="false">MAY - AUGUST</a>
                    </li>
                    <li class="u-tab-item u-tab-item-12" role="presentation">
                      <a class="u-active-palette-1-base u-button-style u-grey-10 u-tab-link u-text-active-white u-text-black u-tab-link-12" id="tab-93fc" href="#link-tab-93fc" role="tab" aria-controls="link-tab-93fc" aria-selected="false">SEPTEMBER - DECEMBER</a>
                    </li>
                  </ul>
                  <div class="u-tab-content">
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-active u-tab-pane" id="tab-0da5" role="tabpanel" aria-labelledby="link-tab-0da5">
                      <div class="u-container-layout u-valign-middle u-container-layout-46">
                        <div class="u-repeater u-repeater-7">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-38">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-48">
                              <img class="u-image u-image-circle u-image-38" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2022&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-38">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-39">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-49">
                              <img class="u-image u-image-circle u-image-39" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2022&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-39">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-40">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-50">
                              <img class="u-image u-image-circle u-image-40" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2022&period=A&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-40">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-41">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-51">
                              <img class="u-image u-image-circle u-image-41" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2022&period=A" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-41">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-pane" id="tab-14b7" role="tabpanel" aria-labelledby="link-tab-14b7">
                      <div class="u-container-layout u-valign-middle u-container-layout-53">
                        <div class="u-repeater u-repeater-8">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-44">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-55">
                              <img class="u-image u-image-circle u-image-44" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2022&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-44">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-45">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-56">
                              <img class="u-image u-image-circle u-image-45" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2022&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-45">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-46">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-57">
                              <img class="u-image u-image-circle u-image-46" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2022&period=B&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-46">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-47">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-58">
                              <img class="u-image u-image-circle u-image-47" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2022&period=B" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-47">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="u-align-center u-container-style u-shape-rectangle u-tab-pane" id="link-tab-93fc" role="tabpanel" aria-labelledby="tab-93fc">
                      <div class="u-container-layout u-valign-middle u-container-layout-60">
                        <div class="u-repeater u-repeater-9">
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-50">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-62">
                              <img class="u-image u-image-circle u-image-50" src="../../IMAGES/Home/reports.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../History/lr.jsp?year=2022&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-50">View Report</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-51">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-63">
                              <img class="u-image u-image-circle u-image-51" src="../../IMAGES/Home/preferences.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Preferences/preferences.jsp?year=2022&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-51">Set preferences</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-52">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-64">
                              <img class="u-image u-image-circle u-image-52" src="../../IMAGES/Home/statistics.jpg" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Statistics/Statistics.jsp?year=2022&period=C&results=no" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-52">See statistics</a>
                            </div>
                          </div>
                          <div class="u-border-2 u-border-white u-container-style u-gradient u-list-item u-repeater-item u-shape-rectangle u-list-item-53">
                            <div class="u-container-layout u-similar-container u-valign-middle u-container-layout-65">
                              <img class="u-image u-image-circle u-image-53" src="../../IMAGES/Home/goals.png" alt="" data-image-width="400" data-image-height="265">
                              <a href="../Goals/client_goals.jsp?year=2022&period=C" class="u-btn u-button-style u-custom-font u-custom-item u-font-oswald u-hover-feature u-hover-palette-1-dark-1 u-palette-1-base u-btn-53">Set goals</a>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
   
    </section>
    
    
    <footer class="u-align-center-md u-align-center-sm u-align-center-xs u-clearfix u-footer u-grey-80" id="sec-5152"><div class="u-clearfix u-sheet u-sheet-1">
      <div class="u-image u-logo u-image-1" data-image-width="1305" data-image-height="429">
        <img src="../../IMAGES/Home/logo3.png" class="u-logo-image u-logo-image-1">
      </div>
      <div class="u-align-left u-social-icons u-spacing-21 u-social-icons-1">
        <a class="u-social-url" title="facebook" target="_blank" href="https://www.facebook.com/"><span class="u-icon u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-c130"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-c130"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M73.5,31.6h-9.1c-1.4,0-3.6,0.8-3.6,3.9v8.5h12.6L72,58.3H60.8v40.8H43.9V58.3h-8V43.9h8v-9.2
          c0-6.7,3.1-17,17-17h12.5v13.9H73.5z"></path></svg></span>
        </a>
        <a class="u-social-url" target="_blank" data-type="YouTube" title="YouTube" href="https://www.youtube.com/"><span class="u-icon u-social-icon u-social-youtube u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9b15"></use></svg><svg class="u-svg-content" viewBox="0 0 112 112" x="0" y="0" id="svg-9b15"><circle fill="currentColor" cx="56.1" cy="56.1" r="55"></circle><path fill="#FFFFFF" d="M74.9,33.3H37.3c-7.4,0-13.4,6-13.4,13.4v18.8c0,7.4,6,13.4,13.4,13.4h37.6c7.4,0,13.4-6,13.4-13.4V46.7 C88.3,39.3,82.3,33.3,74.9,33.3L74.9,33.3z M65.9,57l-17.6,8.4c-0.5,0.2-1-0.1-1-0.6V47.5c0-0.5,0.6-0.9,1-0.6l17.6,8.9 C66.4,56,66.4,56.8,65.9,57L65.9,57z"></path></svg></span>
        </a>
      </div>
    </div></footer>

  
</body></html>