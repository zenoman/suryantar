<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    @foreach($des as $row)
    <title>{{$row->namaweb}}</title>
    <link href="{{asset('img/setting/'.$row->icon)}}" rel="icon" type="image/png">
    @endforeach
    <!-- Bootstrap core CSS -->
    <link href="asset_user/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="asset_user/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Plugin CSS -->
    <!--<link href="asset_user/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css"> -->

    <!-- Custom styles for this template -->
    <link href="asset_user/css/freelancer.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
      <div class="container">
        @foreach($des as $row)
        <a class="navbar-brand js-scroll-trigger text-uppercase" href="#page-top">{{$row->header}}</a>
        @endforeach
        <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="{{url('')}}">Home</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#biaya">
              Biaya Pengiriman</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#hub">Lokasi Kami</a>
            </li>
            <li class="nav-item mx-0 mx-lg-0">
              <a class="nav-link py-3 px-0 px-lg-0 rounded js-scroll-trigger" href="#tentang">Tentang Kami</a>
            </li>
            
          </ul>
        </div>
      </div>
    </nav>

    <!-- Header -->
    <header class="masthead bg-primary text-white text-center">
      <div class="container">
        @foreach($des as $row)
        <img class="img-fluid mb-5 d-block mx-auto" src="{{asset('img/setting/'.$row->landing)}}" alt="">
        
        <h1 class="text-uppercase mb-0">{{$row->header}}</h1>
        <hr class="star-light">
        <h2 class="font-weight-light mb-0">{{$row->sapaan}}</h2>
        @endforeach
      </div>
    </header>
    <!--LINK TABLE DARAT-->
    <section class="portfolio" id="biaya">
      <div class="container">
        <h2 class="text-center text-uppercase text-secondary mb-0">Cek Biaya</h2>
        <hr class="star-dark mb-5">
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <a class="d-block mx-auto">
              <div class="my-auto w-100 text-center">
              <img class="img-fluid" src="asset_user/img/darat.png" alt="">
              </div>
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="{{url('landdarat')}}">
              <h3 class="text-secondary text-center">Tarif Darat</h3>
              </a>
            </a>
          </div>
          <div class="col-md-6 col-lg-4">
            <a>
              <img class="img-fluid" src="asset_user/img/laut.png" alt="">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="{{url('landlaut')}}">
              <h3 class="text-secondary text-center">Tarif Laut</h3>
              </a>
            </a>
          </div>
          <div class="col-md-6 col-lg-4">
            <a>
              <img class="img-fluid" src="asset_user/img/udara.png" alt="">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="{{url('landudara')}}">
              <h3 class="text-secondary text-center ">Tarif Udara</h3>
              </a>
            </a>
          </div>                  
       </div>
      </div>
    </section>
 <!--hubungi kami-->
  <section class="hub" id="hub">
    <div class="single-product-area">
      <div class="container">
        <h1 class="text-uppercase text-center mb-0">Lokasi Kami</h1>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126486.11387369903!2d112.03784828547029!3d-7.822487605206616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7858fb7bf1947d%3A0x4027a76e3531190!2sGurah%2C+Kediri%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1542003545581" width="1135" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
            
        </div>
      </div>
    </section>
  <!--tentang kami-->
    <section class="masthead bg-primary text-white text-center mb-0" id="tentang">
      @foreach($des as $row) 
      <div class="container">
        <h1 class="text-uppercase mb-0">Tentang Kami</h1>
        <hr class="star-light">         
        <h4>{{$row->desk}}</h4>       
      </div>
    </section>
    @endforeach  
<!-- Footer -->
    <footer class="footer text-center">
      <div class="container">
        <div class="row">
          @foreach($des as $row)
          <div class="col-md-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Location</h4>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126486.11387369903!2d112.03784828547029!3d-7.822487605206616!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7858fb7bf1947d%3A0x4027a76e3531190!2sGurah%2C+Kediri%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1542003545581" width="150" height="100" frameborder="0" style="border:0" allowfullscreen></iframe>
            
          </div>
          @endforeach
          <div class="col-md-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4">Gmail</h4>
            <ul class="list-inline mb-0">
              
              @foreach($des as $row)
              <p class="lead mb-0">{{$row->email}}</p>
              @endforeach
              
            </ul>
          </div>
          <div class="col-md-4">
            <h4 class="text-uppercase mb-4">About Freelancer</h4>
            <p class="lead mb-0">Freelance is a free to use, open source Bootstrap theme created by
              <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
          </div>
        </div>
      </div>
    </footer>

    <div class="copyright py-4 text-center text-white">
      <div class="container">
        <small><p>&copy; 2018 <a class="link" onclick="login()"> Suryantara Cargo</a>. All Rights Reserved. <a href="{{url('/login')}}">Joyoboyo Intermedia</a></p></small>
      </div>
    </div>

    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-to-top d-lg-none position-fixed ">
      <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
        <i class="fa fa-chevron-up"></i>
      </a>
    </div>
       

    <!-- Bootstrap core JavaScript -->
    <script src="asset_user/vendor/jquery/jquery.min.js"></script>
    <script src="asset_user/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="asset_user/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="asset_user/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="asset_user/js/jqBootstrapValidation.js"></script>
    <script src="asset_user/js/contact_me.js"></script>
    <script src="asset_user/js/main.js"></script>

    <!-- Custom scripts for this template -->
    <script src="asset_user/js/freelancer.min.js"></script>

  </body>

</html>
