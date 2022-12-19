<%@ include file="../Home/authentication_guard.jsp" %>
<html>
    <head>
        <meta charset="UTF-8" />
         <meta http-equiv="X-UA-Compatible" content="IE=edge" />
         <meta name="viewport" content="width=device-width, initial-scale=1.0" />
         <link rel="stylesheet" type="text/css" href="../../CSS/History/lrc.css" />
<link rel="icon" href="../../IMAGES/Home/iR.png">

         <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
     <link rel="stylesheet" href="style.css"> 
         <title>View Report</title>
     </head>
<style>
    @import url('https://fonts.googleapis.com/css?family=Roboto:300');
body{
  margin: 0;
  padding: 0;
 font-family: 'Roboto', sans-serif !important;
}
section{
  width: 95%;
  
  -webkit-box-sizing: border-box;
          box-sizing: border-box;
          
}
.card{
  position: relative;
  width: 280px;
  height: auto;
  background: linear-gradient(-45deg,#fe0847,#feae3f);
  border-radius: 15px;
  margin: 15px;
  padding: 60px 20px;
  -webkit-box-shadow: 0 10px 15px rgba(0,0,0,.1) ;
          box-shadow: 0 10px 15px rgba(0,0,0,.1) ;
-webkit-transition: .5s;
transition: .5s;
}
.card:hover{
  -webkit-transform: scale(1.1);
          transform: scale(1.1);
}
.col-sm-3:nth-child(1) .card ,
.col-sm-3:nth-child(1) .card .title .fa{
  background: linear-gradient(-45deg,#f403d1,#64b5f6);

}
.col-sm-3:nth-child(2) .card,
.col-sm-3:nth-child(2) .card .title .fa{
  background: linear-gradient(-45deg,#ffec61,#f321d7);

}
.col-sm-3:nth-child(3) .card,
.col-sm-3:nth-child(3) .card .title .fa{
  background: linear-gradient(-45deg,#24ff72,#9a4eff);

}
.col-sm-3:nth-child(4) .card,
.col-sm-3:nth-child(4) .card .title .fa{
  background: linear-gradient(153deg, rgba(201,21,21,1) 0%, rgba(181,255,240,1) 100%);

}
.col-sm-3:nth-child(5) .card,
.col-sm-3:nth-child(5) .card .title .fa{
  background: linear-gradient(152deg, rgba(250,10,3,1) 0%, rgba(246,246,125,1) 100%);

}
.col-sm-3:nth-child(6) .card,
.col-sm-3:nth-child(6) .card .title .fa{
  background: linear-gradient(153deg, rgba(25,22,120,1) 0%, rgba(0,212,255,1) 100%);

}
.col-sm-3:nth-child(7) .card,
.col-sm-3:nth-child(7) .card .title .fa{
background: linear-gradient(153deg, rgba(253,255,173,1) 0%, rgba(246,148,0,1) 100%);



}
.col-sm-3:nth-child(8) .card,
.col-sm-3:nth-child(8) .card .title .fa{
  background: linear-gradient(153deg, rgba(72,218,101,1) 0%, rgba(255,0,254,1) 100%);


}
.col-sm-3:nth-child(9) .card,
.col-sm-3:nth-child(9) .card .title .fa{
  background: linear-gradient(153deg, rgba(98,241,234,1) 0%, rgba(0,35,255,1) 100%);

}
.col-sm-3:nth-child(10) .card,
.col-sm-3:nth-child(10) .card .title .fa{
  background: linear-gradient(153deg, rgba(241,98,238,1) 0%, rgba(255,255,166,1) 100%);

}
.col-sm-3:nth-child(11) .card,
.col-sm-3:nth-child(11) .card .title .fa{

background: linear-gradient(153deg, rgba(201,21,21,1) 0%, rgba(249,255,85,1) 100%);

}
.col-sm-3:nth-child(12) .card,
.col-sm-3:nth-child(12) .card .title .fa{
  background: linear-gradient(153deg, rgba(7,134,35,1) 0%, rgba(255,252,0,1) 100%);

}
.card::before{
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 35%;
  background: rgba(255, 255, 255, .1);
z-index: 1;

}
.title .fa{
  color:#fff;
  font-size: 60px;
  width: 100px;
  height: 100px;
  border-radius:  50%;
  text-align: center;
  line-height: 100px;
  -webkit-box-shadow: 0 10px 10px rgba(0,0,0,.1) ;
          box-shadow: 0 10px 10px rgba(0,0,0,.1) ;

}
.title h2 {
  position: relative;
  margin: 20px  0 0;
  padding: 0;
  color: #fff;
  font-size: 28px;
 z-index: 2;
}

.card a {
  position: relative;
  z-index: 2;
  background: #fff;
  color : black;
  width: 150px;
  height: 40px;
  line-height: 40px;
  border-radius: 40px;
  display: block;
  text-align: center;
  margin: 20px auto 0 ;
  font-size: 16px;
  cursor: pointer;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, .1);
          box-shadow: 0 5px 10px rgba(0, 0, 0, .1);

}
.card a:hover{
    text-decoration: none;
}
</style>
<body>
  <div class="navbar">
    <div class="row" style="padding:1.5%; background-color:#065675; position: fixed; top: 0%; right: 0%; left: 0%;">
        <div class="col-sm-3">
            <img src="../../IMAGES/History/inteli_last.png" class="u-logo-image u-logo-image-1">
           
      </div> 
      </div>
    
  
  </div>
    <br><br><br><br><br><br><br><br><br>
    <section>
        <div class="container-fluid">
          <div class="container">
            <div class="row">
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>GRPs</h2>
                  </div>
                  <a href="https://en.wikipedia.org/wiki/Gross_rating_point">What is it? </a>
                </div>
              </div>
              <!-- END Col one -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>SOV</h2>
                  </div>
                  <a href="https://sproutsocial.com/glossary/share-of-voice/">What is it? </a>
                </div>
              </div>
              <!-- END Col two -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Reach 1+</h2>
                  </div>
                  <a href="https://en.wikipedia.org/wiki/Reach_(advertising)">What is it? </a>
                </div>
              </div>
              <!-- END Col three -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Reach 3+</h2>
                  </div>
                  <a href="https://en.wikipedia.org/wiki/Reach_(advertising)">What is it? </a>
                </div>
              </div>
		<!-- END Col 4-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Insertions</h2> 
                  </div>
                  <a href="https://en.wikipedia.org/wiki/Insert_(print_advertising)">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 5-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Grps/Week</h2> 
                  </div>
                  <a href="https://en.wikipedia.org/wiki/Gross_rating_point">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 6-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Weeks</h2> 
                  </div>
                  <a href="https://www.google.com/search?q=week+4X+advertisement&sxsrf=ALiCzsZNtWnDEvDVxo0M3sV50uTHB8Hggw%3A1669647460545&ei=ZMyEY7fyIKCSxc8PtJOD4AY&ved=0ahUKEwi3tKS-kdH7AhUgSfEDHbTJAGwQ4dUDCA8&uact=5&oq=week+4X+advertisement&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCAAQogQyBQgAEKIEMgUIABCiBDoKCAAQRxDWBBCwAzoGCAAQCBAeOggIABAHEB4QCjoGCAAQBxAeOgoIABAHEB4QDxAKOggIABAIEAcQHjoECCEQCjoICAAQCBAeEA1KBAhBGABKBAhGGABQ8xRY2TlgikRoAnABeACAAb4BiAGvBpIBAzMuNJgBAKABAcgBBcABAQ&sclient=gws-wiz-serp">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 7-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Weeks(4X)</h2> 
                  </div>
                  <a href="https://www.google.com/search?q=week+4X+advertisement&sxsrf=ALiCzsZNtWnDEvDVxo0M3sV50uTHB8Hggw%3A1669647460545&ei=ZMyEY7fyIKCSxc8PtJOD4AY&ved=0ahUKEwi3tKS-kdH7AhUgSfEDHbTJAGwQ4dUDCA8&uact=5&oq=week+4X+advertisement&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIFCAAQogQyBQgAEKIEMgUIABCiBDoKCAAQRxDWBBCwAzoGCAAQCBAeOggIABAHEB4QCjoGCAAQBxAeOgoIABAHEB4QDxAKOggIABAIEAcQHjoECCEQCjoICAAQCBAeEA1KBAhBGABKBAhGGABQ8xRY2TlgikRoAnABeACAAb4BiAGvBpIBAzMuNJgBAKABAcgBBcABAQ&sclient=gws-wiz-serp">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 8-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                    <h2>Viewability</h2> 
                  </div>
                  <a href="https://www.thinkwithgoogle.com/marketing-strategies/video/see-how-viewability-is-measured/">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 5-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                    <h2>Impressions</h2> 
                  </div>
                  <a href="https://support.google.com/google-ads/answer/6320?hl=en">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 6-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                    <h2>Clicks</h2> 
                  </div>
                  <a href="https://www.google.com/search?q=click+meaning+advertising&sxsrf=ALiCzsZRtLbp63mllJvqqan6KzpBHNyJOw%3A1669647684369&ei=RM2EY-WWFrGSxc8Pr9CWmAE&ved=0ahUKEwjlyIGpktH7AhUxSfEDHS-oBRMQ4dUDCA8&uact=5&oq=click+meaning+advertising&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQFhAeMgYIABAWEB4yBggAEBYQHjIGCAAQFhAeMgYIABAWEB4yCAgAEBYQHhAPOgoIABBHENYEELADOgYIABAHEB46BQgAEIAEOggIABCABBDLAUoECEEYAEoECEYYAFDLAliNCWDbE2gBcAF4AIABgQGIAfECkgEDMC4zmAEAoAEBoAECyAEIwAEB&sclient=gws-wiz-serp">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 7-->
		<div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-wifi" aria-hidden="true"></i>
                    <h2>Click Rate</h2> 
                  </div>
                  <a href="https://support.google.com/google-ads/answer/2615875?hl=en">What is it? </a>
                </div>
              </div>	
                    <!-- END Col 8-->
            </div>
          </div>
        </div>
      </section>
</body>
</html>