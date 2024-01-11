@extends('layouts.template')
@section('content')

<!-- carousel -->
<!-- Hero Start -->
<div class="container-fluid py-1 mb-1 hero-header">
  <div class="container py-1">
    <div class="row g-5 align-items-center">
      <div class="col-md-12 col-lg-7">
        <h4 class="mb-3 text-secondary">100% Sayur & Buah Segar</h4>
        <h1 class="mb-5 display-3 text-primary">Sayuran dan Buah-buahan</h1>

      </div>
      <div class="col-md-12 col-lg-5">
        <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
          <div class="carousel-inner" role="listbox">
            @foreach($itemslide as $index => $slide )
            @if($index == 0)
            <div class="carousel-item active rounded">
              <img src="{{ \Storage::url($slide->foto) }}" class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">
              <a href="#" class="btn px-4 py-2 text-white rounded">{{ $slide->caption_title }}</a>
            </div>
            @else
            <div class="carousel-item rounded">
              <img src="{{ \Storage::url($slide->foto) }}" class="img-fluid w-100 h-100 rounded" alt="Second slide">
              <a href="#" class="btn px-4 py-2 text-white rounded">{{ $slide->caption_title }}</a>
            </div>
            @endif
            @endforeach
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Hero End -->

<!-- Modal Search Start -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-fullscreen">
    <div class="modal-content rounded-0">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body d-flex align-items-center">
        <div class="input-group w-75 mx-auto d-flex">
          <input type="search" class="form-control p-3" placeholder="keywords" aria-describedby="search-icon-1">
          <span id="search-icon-1" class="input-group-text p-3"><i class="fa fa-search"></i></span>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Featurs Section Start -->
<div class="container-fluid featurs py-5">
  <div class="container py-5">
    <div class="row g-4">
      <div class="col-md-6 col-lg-3">
        <div class="featurs-item text-center rounded bg-light p-4">
          <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
            <i class="fas fa-car-side fa-3x text-white"></i>
          </div>
          <div class="featurs-content text-center">
            <h5>Gratis Ongkir</h5>
            <p class="mb-0">Gratis untuk wilayah SCBD</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-3">
        <div class="featurs-item text-center rounded bg-light p-4">
          <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
            <i class="fas fa-user-shield fa-3x text-white"></i>
          </div>
          <div class="featurs-content text-center">
            <h5>Keamanan Pembayaran</h5>
            <p class="mb-0">100% Keamanan Pembayaran</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-3">
        <div class="featurs-item text-center rounded bg-light p-4">
          <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
            <i class="fas fa-exchange-alt fa-3x text-white"></i>
          </div>
          <div class="featurs-content text-center">
            <h5>Garansi Uang Kembali</h5>
            <p class="mb-0">30 hari garansi uang kembali</p>
          </div>
        </div>
      </div>
      <div class="col-md-6 col-lg-3">
        <div class="featurs-item text-center rounded bg-light p-4">
          <div class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
            <i class="fa fa-phone-alt fa-3x text-white"></i>
          </div>
          <div class="featurs-content text-center">
            <h5>24/7 Pelayanan</h5>
            <p class="mb-0">Pelayanan cepat setiap waktu</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Featurs Section End -->

<div class="container-fluid fruite py-5">
  <div class="container py-5">
    <div class="tab-class text-center">
      <div class="row g-4">
        <div class="col-lg-4 text-start">
          <h1>Kategori Produk</h1>
        </div>
        <div class="col-lg-8 text-end">
          <ul class="nav nav-pills d-inline-flex text-center mb-5">
            <li class="nav-item">
              <a class="d-flex m-2 py-2 bg-light rounded-pill active" data-bs-toggle="pill" href="#tab-1">
                <span class="text-dark" style="width: 130px;">All Products</span>
              </a>
            </li>

          </ul>
        </div>
      </div>
      <div class="tab-content">
        <div id="tab-1" class="tab-pane fade show p-0 active">
          <div class="row g-4">
            <div class="col-lg-12">
              <div class="row g-4">
                @foreach($itemkategori as $kategori)
                <div class="col-md-6 col-lg-4 col-xl-3">
                  <div class="rounded position-relative fruite-item">
                    <a href="{{ URL::to('kategori/'.$kategori->slug_kategori) }}">
                      <div class="fruite-img">
                        @if($kategori->foto != null)
                        <img src="{{ \Storage::url($kategori->foto) }}" class="img-fluid w-100 rounded-top" alt="{{ $kategori->nama_kategori }}">
                        @else
                        <img src="{{ asset('images/bag.jpg') }}" alt="{{ $kategori->nama_kategori }}" class="img-fluid w-100 rounded-top">
                        @endif
                      </div>
                    </a>
                    <div class="text-white bg-secondary px-3 py-1 rounded position-absolute" style="top: 10px; left: 10px;">Fruits</div>
                    <div class="p-4 border border-secondary border-top-0 rounded-bottom">
                      <h4>{{ $kategori->nama_kategori }}</h4>
                      <p>{{ $kategori->deskripsi_kategori }}</p>

                    </div>
                  </div>
                </div>
                @endforeach


              </div>
            </div>
          </div>
        </div>


      </div>
    </div>
  </div>
</div>
<!-- Fruits Shop End-->

<!-- Featurs Start -->
<div class="container-fluid service py-5">
  <div class="container py-5">
    <div class="row g-4 justify-content-center">
      <div class="col-md-6 col-lg-4">
        <a href="#">
          <div class="service-item bg-secondary rounded border border-secondary">
            <img src="{{asset('fruitables/img/featur-1.jpg')}}" class="img-fluid rounded-top w-100" alt="">
            <div class="px-4 rounded-bottom">
              <div class="service-content bg-primary text-center p-4 rounded">
                <h5 class="text-white">Buah Segar</h5>
                <h3 class="mb-0">Diskon 20% </h3>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-6 col-lg-4">
        <a href="#">
          <div class="service-item bg-dark rounded border border-dark">
            <img src="{{asset('fruitables/img/featur-2.jpg')}}" class="img-fluid rounded-top w-100" alt="">
            <div class="px-4 rounded-bottom">
              <div class="service-content bg-light text-center p-4 rounded">
                <h5 class="text-primary">Buah dan Sayur Segar</h5>
                <h3 class="mb-0">Gratis Ongkir</h3>
              </div>
            </div>
          </div>
        </a>
      </div>
      <div class="col-md-6 col-lg-4">
        <a href="#">
          <div class="service-item bg-primary rounded border border-primary">
            <img src="{{asset('fruitables/img/featur-3.jpg')}}" class="img-fluid rounded-top w-100" alt="">
            <div class="px-4 rounded-bottom">
              <div class="service-content bg-secondary text-center p-4 rounded">
                <h5 class="text-white">Sayur</h5>
                <h3 class="mb-0">Diskon 10%</h3>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
<!-- Featurs End -->

<!-- Vesitable Shop Start-->
<div class="container-fluid vesitable py-5">
  <div class="container py-5">
    <h1 class="mb-0">Promo</h1>
    <div class="owl-carousel vegetable-carousel justify-content-center">
      @foreach($itempromo as $promo)
      <div class="border border-primary rounded position-relative vesitable-item">
        <a href="{{ URL::to('produk/'.$promo->produk->slug_produk) }}">
          <div class="vesitable-img">
            @if($promo->produk->foto != null)
            <img src="{{\Storage::url($promo->produk->foto) }}" class="img-fluid w-100 rounded-top" alt="{{ $promo->produk->nama_produk }}">
            @else
            <img src="{{asset('images/bag.jpg') }}" class="img-fluid w-100 rounded-top" alt="{{ $promo->produk->nama_produk }}">
            @endif
          </div>
        </a>
        <div class="text-white bg-primary px-3 py-1 rounded position-absolute" style="top: 10px; right: 10px;">{{ $promo->produk->nama_produk }}</div>
        <div class="p-4 rounded-bottom">
          <a href="{{ URL::to('produk/'.$promo->produk->slug_produk) }}">
            <h4>{{ $promo->produk->nama_produk }}</h4>
          </a>

          <div class="d-flex justify-content-between flex-lg-wrap">
            <p class="text-dark fs-5 fw-bold mb-0">
              <del>
                Rp. {{ number_format($promo->harga_awal, 2) }}</del>
              <br />
              Rp. {{ number_format($promo->harga_akhir, 2) }}
            </p>

            <a href="{{ URL::to('produk/'.$promo->produk->slug_produk) }}" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
          </div>
        </div>
      </div>
      @endforeach


    </div>
  </div>
</div>
<!-- Vesitable Shop End -->
<!-- Banner Section Start-->
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
          <img src="{{asset('fruitables/img/baner-1.png')}}" class="img-fluid w-100 rounded" alt="">
          <div class="d-flex align-items-center justify-content-center bg-white rounded-circle position-absolute" style="width: 140px; height: 140px; top: 0; left: 0;">
            <h1 style="font-size: 100px;">1</h1>
            <div class="d-flex flex-column">
              <span class="h2 mb-0">20.000</span>
              <span class="h4 text-muted mb-0">kg</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Banner Section End -->

<!-- Bestsaler Product Start -->
<div class="container-fluid py-5">
  <div class="container py-5">
    <div class="text-center mx-auto mb-5" style="max-width: 700px;">
      <h1 class="display-4">Produk Terbaru</h1>
      <p>Kumpulan Makanan dan Minuman Terbaru</p>
    </div>
    <div class="row g-4">
      @foreach($itemproduk as $produk)
      <div class="col-lg-6 col-xl-4">
        <div class="p-4 rounded bg-light">
          <div class="row align-items-center">
            <div class="col-6">
              <a href="{{ URL::to('produk/satu') }}">
                @if($produk->foto != null)
                <img src="{{ \Storage::url($produk->foto) }}" class="img-fluid rounded-circle w-100" alt="{{ $produk->nama_produk }}">
                @else
                <img src="{{ asset('images/bag.jpg') }}" class="img-fluid rounded-circle w-100" alt="{{ $produk->nama_produk }}">
                @endif
              </a>
            </div>
            <div class="col-6">
              <a href="{{ URL::to('produk/'.$produk->slug_produk ) }}" class="h5">{{ $produk->nama_produk }}</a>
              <div class="d-flex my-3">
                <i class="fas fa-star text-primary"></i>
                <i class="fas fa-star text-primary"></i>
                <i class="fas fa-star text-primary"></i>
                <i class="fas fa-star text-primary"></i>
                <i class="fas fa-star"></i>
              </div>
              <h4 class="mb-3"> Rp. {{ number_format($produk->harga, 2) }}</h4>
              <a href="{{ URL::to('produk/'.$produk->slug_produk ) }}" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
            </div>
          </div>
        </div>
      </div>
      @endforeach


    </div>
  </div>
</div>
<!-- Bestsaler Product End -->


<!-- end carousel -->
<!-- kategori produk -->

@endsection