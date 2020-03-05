<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output


  method="html" encoding="UTF-8">
  </xsl:output>

	<xsl:template match="Players">
		<html>


<head>
  <!-- Required meta tags always come first -->
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta http-equiv="x-ua-compatible" content="ie=edge"/>
  <title>Best FIFA Players of 2017</title>

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet"/>
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet"/>

  <style >

    html,
    body,
    header,
    .jarallax {
      height: 700px;
    }

    @media (max-width: 740px) {
      html,
      body,
      header,
      .jarallax {
        height: 100vh;
      }
    }

    @media (min-width: 800px) and (max-width: 850px) {
      html,
      body,
      header,
      .jarallax {
        height: 100vh;
      }
    }

    @media (min-width: 560px) and (max-width: 650px) {
      header .jarallax h1 {
        margin-bottom: .5rem !important;
      }
      header .jarallax h5 {
        margin-bottom: .5rem !important;
      }
    }

    @media (min-width: 660px) and (max-width: 700px) {
      header .jarallax h1 {
        margin-bottom: 1.5rem !important;
      }
      header .jarallax h5 {
        margin-bottom: 1.5rem !important;
      }
    }

    .top-nav-collapse {
      background-color: #7283A7 !important;
    }

    .navbar:not(.top-nav-collapse) {
      background: transparent !important;
    }

    @media (max-width: 768px) {
      .navbar:not(.top-nav-collapse) {
        background: #7283A7 !important;
      }
    }
    @media (min-width: 800px) and (max-width: 850px) {
        .navbar:not(.top-nav-collapse) {
            background: #7283A7!important;
        }
    }

    footer.page-footer {
      background-color: #383838;
    }

    @media (max-width: 450px) {
      .display-3 {
        font-size: 3rem;
      }
    }
    
  </style>

</head>

<body>

  <!--Main Navigation-->
  <header>

    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar">
      <div class="container">
        <a class="navbar-brand" href="#">
          <strong>FIFA17</strong>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-7" aria-controls="navbarSupportedContent-7"
          aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent-7">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" target="_blank"  href="https://www.easports.com/fifa/fifa-17-player-ratings-top-50#3to1">Official website</a>
            </li>
           
          </ul>
        
        </div>
      </div>
    </nav>

    <!-- Intro Section -->
    <div class="view jarallax"  style="background-image: url(imgs/onTop.jpg); background-repeat: no-repeat; background-size: cover; background-position: center center;">
        <div class="mask rgba-white-light">
          <div class="container h-100 d-flex justify-content-center align-items-center">
            <div class="row pt-5 mt-3">
              <div class="col-md-12 mb-3">
                <div class="intro-info-content text-center">
                  <h1 class="text-white display-3 mb-5 wow fadeInDown" data-wow-delay="0.3s"><span style="background-color: #3B3E49">PLAYERS RATINGS</span><br />
                    <a class="text-white font-weight-bold"><span style="background-color: #3B3E49">TOP 5</span></a>
                  </h1>
                  <a class="btn btn-indigo btn-lg wow fadeInDown" data-wow-delay="0.3s" target="_blank" href="https://www.youtube.com/watch?v=fk_K45T3qCc">Watch Trailer</a>
                </div>
              </div>
            </div>
          </div>
        </div>
    </div>
  </header>
  <!--Main Navigation-->
  <!--Main Layout-->
  <main>
      <!--Section: Products v.3-->
      <!--Section: Products v.5-->
      <section class="section pb-3 wow fadeIn" data-wow-delay="0.3s">
        <!--Section heading-->
        <h1 class="font-weight-bold text-center h1 my-5">Best Players in FIFA 2017</h1>
        <!--Section description-->
        <p class="text-center dark-text mb-5 mx-auto w-responsive">Based on their performances over the last 365 days in league and cup competitions, these are the 5 top-rated players in FIFA 17 and FIFA 17 Ultimate Team™.</p>

        <!--Carousel Wrapper-->
        <div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">

          <!--Controls-->
      
          <!--Controls-->

          <!--Indicators-->
      
          <!--Indicators-->

          <!--Slides-->
          <div class="carousel-inner" role="listbox">

            <!--First slide--> 
            

                     <xsl:for-each select="Player">
                     	<xsl:sort select="rank"/>

            <div class="carousel-item active">

              
              	 <div class="col-md-4 clearfix d-none d-sm-block">

                <!--Card-->
               
                <div class="card card-cascade narrower card-ecommerce">

                  <!--Card image-->
                  <div class="view view-cascade overlay">
                    <img src="{Picture}" class="card-img-top" alt="" />
                    <a>
                      <div class="mask rgba-white-slight"></div>
                    </a>
                  </div>
                  <!--Card image-->

                  <!--Card content-->
                  <div class="card-body card-body-cascade text-center no-padding">
                    <!--Category & Title-->
                  
                      <h5 style="color: #DC0707;"><xsl:value-of select="Team" /></h5>

                  
                    <h4 class="card-title">
                      <strong>
                        <a target="_blank" href="{moreInfo}"><xsl:value-of select="Name" /></a>
                      </strong>
                    </h4>

                    <!--Description-->
                    <p class="card-text"><xsl:value-of select="description" />
                    </p>

                    <!--Card footer-->
                    <div class="card-footer">
                      <span class="float-left">Rank : <span style="font-weight: bold; color: #0711DC;" ><xsl:value-of select="rank" /></span></span><br />
                      <span class="float-left">Age : <span style="font-weight: bold; color: #0711DC;"><xsl:value-of select="Age" /></span></span><br />
                      <span class="float-left">League : <span style="font-weight: bold; color: #0711DC;"><xsl:value-of select="League" /></span></span>
                  
                      <span class="float-right">
                        <a target="_blank" data-toggle="tooltip" href="{moreInfo}" data-placement="top" title="More Details">
                          <i class="fa fa-eye"></i>

                        </a>
                     
                      </span>
                    </div>

                  </div>
                  <!--Card content-->


                </div>
                <!--Card-->
              

              </div>

             

              </div>
            </xsl:for-each>
            </div>
             </div>
         </section>

            <!--Third slide-->

        <!--Carousel Wrapper-->

    
      <!--Section: Products v.5-->

  
   

    <!-- Streak Section -->
    <div class="streak streak-photo" style="background-image:url('imgs/picSoccer.jpg')">

      <div class="flex-center white-text pattern-1" style="background-attachment: f">
        <ul class="list-unstyled">
          <li>
            <h1 class=" white-text">
              Use the hashtag <strong>#FIFA17Ratings </strong>on Twitter to join in the conversation</h1>
          </li>

        </ul>
      </div>


    </div>
    <!-- /.Streak Section -->

    

  </main>
  <!--Main Layout-->

  <!--Footer-->
  <br /><br />
  <footer class="page-footer pt-4 mt-4 text-center text-md-left mdb-color lighten-2">

    <!--Footer Links-->
  
    <!--/.Footer Links-->

  

    <!--Social buttons-->
    <div class="social-section text-center">
      <ul class="list-unstyled list-inline">

        <li class="list-inline-item">
          <a class="btn-floating btn-fb">
            <i class="fa fa-facebook"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-tw">
            <i class="fa fa-twitter"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-gplus">
            <i class="fa fa-google-plus"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-li">
            <i class="fa fa-linkedin"> </i>
          </a>
        </li>
        <li class="list-inline-item">
          <a class="btn-floating btn-dribbble">
            <i class="fa fa-dribbble"> </i>
          </a>
        </li>

      </ul>
    </div>
    <!--/.Social buttons-->

    <!--Copyright-->
    <div class="footer-copyright py-3 text-center">
      <div class="container-fluid">2020 Copyright:
        <a href="https://www.ea.com/fr-fr/games/fifa/fifa-20"> FIFA.com </a>

      </div>
    </div>
    <!--/.Copyright-->

  </footer>
  <!--/.Footer-->


  <!--  SCRIPTS  -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="js/mdb.min.js"></script>
  <script>
    new WOW().init();
  </script>
</body>

			



		</html>
	</xsl:template>

</xsl:stylesheet>	



