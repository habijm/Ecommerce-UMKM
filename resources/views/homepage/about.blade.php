@extends('layouts.template')
@section('content')
<div class="container-fluid page-header py-5">
  <h1 class="text-center text-white display-6">Tentang</h1>
  <ol class="breadcrumb justify-content-center mb-0">
    <li class="breadcrumb-item"><a href="#">Home</a></li>
    <li class="breadcrumb-item active text-white">Tentang</li>
  </ol>
</div>
<!-- Single Page Header End -->
<div class="container-fluid banner bg-secondary my-5">
  <div class="container py-5">
    <div class="row g-4 align-items-center">
      <div class="col-lg-6">
        <div class="py-4">
          <h1 class="display-3 text-white">Buah Segar</h1>
          <p class="fw-normal display-3 text-dark mb-4">Lihat Produk Kami</p>
          <p class="mb-4 text-dark">Kami menawarkan berbagai jenis buah segar yang dibutuhkan oleh masyarakat untuk gizi dan vitamin yang terkandung di dalamnya</p>
          <a href="{{ URL::to('produk') }}" class="banner-btn btn border-2 border-white rounded-pill text-dark py-3 px-5">BELI</a>
        </div>
      </div>
      <div class="col-lg-6">
        <div class="position-relative">
          <img src="{{asset('fruitables/img/podomoro.png')}}" class="img-fluid w-100 rounded" alt="">

        </div>
      </div>
    </div>
  </div>
</div>


@endsection