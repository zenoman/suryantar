@if(!Session::get('username'))
<script type="text/javascript">
    window.location.href = '{{url("login")}}';
</script>
@endif
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	@yield('header')
	<!-- <title>Suryantara</title> -->
	
	<!-- <link href="{{asset('img/favicon.png')}}" rel="icon" type="image/png"> -->
	
	<!-- =============================plugin css============================== -->
	@yield('css')
	<!-- ===================================================================== -->
	<!-- =============================css=================================== -->
	<link rel="stylesheet" href="{{asset('assets/css/lib/font-awesome/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/lib/bootstrap/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
	<!-- =================================================================== -->

</head>
<body class="with-side-menu">

	<header class="site-header">
	    <div class="container-fluid">
	        <a href="#" class="site-logo">
	            <img class="hidden-md-down" src="{{asset('img/suryantara_home.png')}}" alt="">
	            <img class="hidden-lg-down" src="{{asset('img/suryantara_home.png')}}" alt="">
	        </a>
	
	        <button id="show-hide-sidebar-toggle" class="show-hide-sidebar">
	            <span>toggle menu</span>
	        </button>
	
	        <button class="hamburger hamburger--htla">
	            <span>toggle menu</span>
	        </button>
	        <div class="site-header-content">
	            <div class="site-header-content-in">
	                <div class="site-header-shown">
	                   <div class="dropdown user-menu">
	                        <button class="dropdown-toggle" id="dd-user-menu" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	                            <img src="{{asset('assets/img/avatar-2-64.png')}}" alt="">
	                        </button>
	                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dd-user-menu">
	                            <a class="dropdown-item" href="{{url('admin/'.Session::get('id'))}}"><span class="font-icon font-icon-user"></span>Edit Profile</a>

	                            <a class="dropdown-item" href="{{url('/login/logout')}}"><span class="font-icon glyphicon glyphicon-log-out"></span>Logout</a>
	                        </div>
	                    </div>
	
	                    <button type="button" class="burger-right">
	                        <i class="font-icon-menu-addl"></i>
	                    </button>
	                </div><!--.site-header-shown-->
	
	        </div><!--.site-header-content-->
	    </div><!--.container-fluid-->
	</header><!--.site-header-->

	<div class="mobile-menu-left-overlay"></div>
	<nav class="side-menu">
	    <ul class="side-menu-list">
	        <li class="grey">
	       	<a href="{{url('dashboard')}}">
	            <span>
	                <i class="font-icon font-icon-home"></i>
	                <span class="lbl">Home</span>
	            </span>
	        </a>
	        </li>
@if(Session::get('level') == 'programer' || Session::get('level') == 'superadmin')

	        <li class="blue">
	            <a href="{{url('admin')}}">
	                <i class="font-icon font-icon-user"></i>
	                <span class="lbl">Admin</span>
	               </a>
	        </li>
@endif
	        <li class="magenta with-sub">
	        	<span>
	                <i class="font-icon font-icon-pencil"></i>
	                <span class="lbl">Resi Pengiriman</span>
	            </span>
	             <ul>
                <li><a href="{{url('/resipengirimandarat')}}"><span class="lbl">Pengiriman Darat</span></a></li>
	                <li><a href="{{url('/resipengirimanlaut')}}"><span class="lbl">Pengiriman Laut</span></a></li>
	                <li><a href="{{url('/resipengirimanudara')}}"><span class="lbl">Pengiriman Udara</span></a></li> 
	            </ul>
	        </li>
	        <li class="green">
	            <a href="{{url('listpengiriman')}}">
	                <i class="fa fa-list-alt"></i>
	                <span class="lbl">List Pengiriman</span>
	            </a>
	        </li>
	        <li class="red with-sub">
	        	<span>
	                <i class="fa fa-bus"></i>
	                <span class="lbl">Surat Jalan</span>
	            </span>
	             <ul>
                <li><a href="{{url('/buatsuratjalan')}}"><span class="lbl">Buat Surat Jalan</span></a></li>
	                <li><a href="{{url('/listsuratjalan')}}"><span class="lbl">
	                Daftar Surat Jalan </span></a></li>
	                <!--<li><a href="#"><span class="lbl">Pengiriman Udara</span></a></li> -->
	            </ul>
	        </li>
	        
	        <li class="red">
	            <a href="{{url('trfdarat')}}">
	                <i class="fa fa-truck"></i>
	                <span class="lbl">Tarif Darat</span>
	            </a>
	        </li>
	        <li class="pink-red">
	            <a href="{{url('trflaut')}}">
	                <i class="font-icon font-icon-help"></i>
	                <span class="lbl">Tarif Laut</span>
	            </a>
	        </li>
	        <li class="mageta">
	            <a href="{{url('trfudara')}}">
	                <i class="fa fa-plane"></i>
	                <span class="lbl">Tarif Udara</span>
	            </a>
	        </li>
	        <li class="red">
	            <a href="{{url('vendor')}}">
	                <i class="fa fa-users"></i>
	                <span class="lbl">Vendor</span>
	            </a>
	        </li>
	        <li class="green with-sub">
	        	<span>
	                <i class="fa fa-file"></i>
	                <span class="lbl">Laporan</span>
	            </span>
	             <ul>
	                <li>
	                	<a href="{{url('/laporanpemasukan')}}"><span class="lbl">
		                Laporan Pemasukan</span></a>
	                	
	                </li>
		            <li>
		            	<a href="{{url('/laporanpengeluaran')}}"><span class="lbl">
		                Laporan Pengeluaran</span></a>
		            </li>
	            </ul>
	        </li>
	        <li class="brown">
	            <a href="{{url('setting')}}">
	                <i class="font-icon font-icon-cogwheel"></i>
	                <span class="lbl">Setting</span>
	            </a>
	        </li>
	       
	    </ul>
	

	</nav>
	
	@yield('content')	
	<!-- <div class="page-content">
		<div class="container-fluid">
		</div>
	</div> -->

	<script src="{{asset('assets/js/lib/jquery/jquery-3.2.1.min.js')}}"></script>
	<script src="{{asset('assets/js/lib/popper/popper.min.js')}}"></script>
	<script src="{{asset('assets/js/lib/tether/tether.min.js')}}"></script>
	<script src="{{asset('assets/js/lib/bootstrap/bootstrap.min.js')}}"></script>
	<script src="{{asset('assets/js/plugins.js')}}"></script>
	<!-- =========================plugin js=================================== -->
	@yield('js')
	<!-- ===================================================================== -->
	<script src="{{asset('assets/js/app.js')}}"></script>
	@yield('otherjs')
</body>
</html>	