<html>
    <head>
        <meta charset="UTF-8" />
         <meta http-equiv="X-UA-Compatible" content="IE=edge" />
         <meta name="viewport" content="width=device-width, initial-scale=1.0" />
         <link rel="stylesheet" type="text/css" href="../../CSS/History/lrc.css" />
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
  background: linear-gradient(-45deg,#fe0847,#feae3f);

}
.card::before{
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 40%;
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
.price,.option{
  position: relative;
  z-index: 2;
}
.price h5 {
margin: 0;
padding: 20px 0 ;
color: #fff;
font-size: 20px;
}
.option ul {
  margin: 0;
  padding: 0;

}
.option ul li {
margin: 0 0 10px;
padding: 0;
list-style: none;
color: #fff;
font-size: 16px;
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
    <br><br><br><br><br><br><br><br><br><br><br>
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
                  <div class="price">
                    <h5><a href="https://en.wikipedia.org/wiki/Gross_rating_point" 
                      style="background: #f403d1;">What is it?</a></h5>
                  </div>
                  <div class="option">
                  
                  </div>
                  <a href="graph.jsp">View Chart </a>
                </div>
              </div>
              <!-- END Col one -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>SOV</h2>
                  </div>
                  <div class="price">
                    <h5><a href="https://sproutsocial.com/glossary/share-of-voice/" 
                      style="background: #f76092;">What is it?</a></h5>
                  </div>
                  <div class="option">
                    
                  </div>
                  <a href="graph.jsp">View Chart </a>
                </div>
              </div>
              <!-- END Col two -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Reach 1+</h2>
                  </div>
                  <div class="price">
                    <h5><a href="https://en.wikipedia.org/wiki/Reach_(advertising)" 
                      style="background: #69f180;">What is it?</a></h5>
                  </div>
                  <div class="option">
                   
                  </div>
                  <a href="graph.jsp">View Chart </a>
                </div>
              </div>
              <!-- END Col three -->
              <div class="col-sm-3">
                <div class="card text-center">
                  <div class="title">
                    <i class="fa fa-television" aria-hidden="true"></i>
                    <h2>Reach 3+</h2>
                  </div>
                  <div class="price">
                    <h5><a href="https://en.wikipedia.org/wiki/Reach_(advertising)" 
                      style="background: #ee1d1d;">What is it?</a></h5>
                  </div>
                  <div class="option">
                    
                  </div>
                  <a href="graph.jsp">View Chart </a>
                </div>
              </div>
                    <!-- END Col four-->
            </div>
          </div>
        </div>
      </section>
</body>
</html>