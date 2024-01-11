<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Google Web Fonts -->

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet">

  <!-- Icon Font Stylesheet -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

  <!-- Libraries Stylesheet -->
  <link href="{{ asset('fruitables/lib/lightbox/css/lightbox.min.css') }}" rel="stylesheet">
  <link href="{{ asset('fruitables/lib/owlcarousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
  <link href="{{ asset('fruitables/img/icon.png')}}" rel="icon">


  <!-- Customized Bootstrap Stylesheet -->
  <link href="{{ asset('fruitables/css/bootstrap.min.css')}}" rel="stylesheet">

  <!-- Template Stylesheet -->
  <link href="{{ asset('fruitables/css/style.css')}}" rel="stylesheet">

  <title>{{ $title }}</title>
</head>

<body>
  <!-- menunya kita tempatkan di bawah <body> -->
  @include('layouts.menu')
  <!-- di bawah menu baru kontennya -->

  <!-- Kontek di depannya diberikan @ sama yield-->
  @yield('content')
  <!-- Sampai sini -->

  @include('layouts.footer')
  <!-- Optional JavaScript; choose one of the two! -->
  <!-- Back to Top -->
  <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>

  <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
  <script src="{{ asset('fruitables/lib/easing/easing.min.js')}}"></script>
  <script src="{{ asset('fruitables/lib/waypoints/waypoints.min.js')}}"></script>
  <script src="{{ asset('fruitables/lib/lightbox/js/lightbox.min.js')}}"></script>
  <script src="{{ asset('fruitables/lib/owlcarousel/owl.carousel.min.js')}}"></script>

  <!-- Template Javascript -->
  <script src="{{ asset('fruitables/js/main.js')}}"></script>



</body>

</html>