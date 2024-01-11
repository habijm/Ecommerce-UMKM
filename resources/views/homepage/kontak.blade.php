@extends('layouts.template')
@section('content')
<div class="container-fluid page-header py-5">
  <h1 class="text-center text-white display-6">Kontak</h1>
  <ol class="breadcrumb justify-content-center mb-0">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active text-white">Kontak</li>
  </ol>
</div>
<!-- Single Page Header End -->


<!-- Contact Start -->
<div class="container-fluid contact py-5">
  <div class="container py-5">
    <div class="p-5 bg-light rounded">
      <div class="row g-4">
        <div class="col-12">
          <div class="text-center mx-auto" style="max-width: 700px;">
            <h1 class="text-primary">Hubungi Kami</h1>
            <p class="mb-4">Kami siap membantu Anda dengan informasi yang Anda butuhkan dan menjawab pertanyaan Anda tentang produk kami. Jangan ragu untuk menghubungi kami kapan saja.</p>
          </div>
        </div>
        <div class="col-lg-12">
          <div class="h-100 rounded">
            <iframe class="rounded w-100" style="height: 400px;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d247.07372875609485!2d110.4039281434713!3d-7.770764879285301!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7a59d53b110a65%3A0xc935fc50a386443b!2sToko%20Buah%20Podomoro!5e0!3m2!1sid!2sid!4v1704727160634!5m2!1sid!2sid" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
        <div class="col-lg-7">
          <form action="" class="">
            <input type="text" class="w-100 form-control border-0 py-3 mb-4" placeholder="Your Name">
            <input type="email" class="w-100 form-control border-0 py-3 mb-4" placeholder="Enter Your Email">
            <textarea class="w-100 form-control border-0 mb-4" rows="5" cols="10" placeholder="Your Message"></textarea>
            <button class="w-100 btn form-control border-secondary py-3 bg-white text-primary " type="submit">Submit</button>
          </form>
        </div>
        <div class="col-lg-5">
          <div class="d-flex p-4 rounded mb-4 bg-white">
            <i class="fas fa-map-marker-alt fa-2x text-primary me-4"></i>
            <div>
              <h4>Alamat</h4>
              <p class="mb-2">Jl. Selokan Mataram No.430, Dabag, Condongcatur, Kec. Depok, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55281</p>
            </div>
          </div>
          <div class="d-flex p-4 rounded mb-4 bg-white">
            <i class="fas fa-envelope fa-2x text-primary me-4"></i>
            <div>
              <h4>Email</h4>
              <p class="mb-2">podomoro@gmail.com</p>
            </div>
          </div>
          <div class="d-flex p-4 rounded bg-white">
            <i class="fa fa-phone-alt fa-2x text-primary me-4"></i>
            <div>
              <h4>Whatsapp</h4>
              <p class="mb-2">08123456789</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Contact End -->
@endsection