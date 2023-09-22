<?php 
use Illuminate\Support\Facades\DB;
use App\Models\Nav_model;
$site_config = DB::table('konfigurasi')->first();
// var_dump($site_config);
// Nav profil
$myprofil    = new Nav_model();
$nav_profil  = $myprofil->nav_profil();
$nav_layanan = $myprofil->nav_layanan();
$nav_berita  = $myprofil->nav_berita();
$nav_terjadi  = $myprofil->nav_terjadi();
$nav_materi  = $myprofil->nav_materi();
?>
   <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
         <div class="site-mobile-menu-close">
            <span class="icofont-close js-menu-toggle"></span>
         </div>
      </div>
      <div class="site-mobile-menu-body"></div>
   </div>
   <nav class="site-nav">
      <div class="container">
         <div class="menu-bg-wrap">
            <div class="site-navigation">
               <div class="row g-0 align-items-center">
                  <div class="col-2">
                     <a href="{{ asset('admin/dasbor') }}" class="brand-link">
                        <img src="{{ asset('assets/upload/image/'.website('icon')) }}"
                           alt="{{ website('namaweb') }}"
                           class="img-fluid" style="max-with:100px"
                           style="opacity: .8"><br>
                        {{-- <span class="brand-text font-weight-light">{{ website('nama_singkat') }}</span> --}}
                      </a>
                     {{-- <a href="index.html" class="logo m-0 float-start">{{ $site_config->namaweb }}<span class="text-primary">.</span></a> --}}
                  </div>
                  <div class="col-8 text-center">
                     <ul class="js-clone-nav d-none d-lg-inline-block text-start site-menu mx-auto">
                        <li class="nav-item active"><a class="nav-link" href="{{ asset('/') }}">Beranda</a> </li>
                        <li class="nav-item"><a class="nav-link" href="{{ asset('javawebmedia') }}">About Us</a> </li>
                        <li class="has-children">
                           <a href="#">Berita &amp; Updates</a>
                           <ul class="dropdown">
                              <?php foreach($nav_berita as $nav_berita) { ?>
                                 <li><a href="{{ asset('berita/kategori/'.$nav_berita->slug_kategori) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ Str::words($nav_berita->nama_kategori,4) }}</a></li>
                                 <?php } ?>
                           </ul>
                        </li>
                        <li class="has-children">
                           <a href="#">Layanan</a>
                           <ul class="dropdown">
                              <?php foreach($nav_layanan as $nav_layanan) { ?>
                                 <li><a href="{{ asset('berita/layanan/'.$nav_layanan->slug_berita) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ Str::words($nav_layanan->judul_berita,6) }}</a></li>
                                 <?php } ?>
                           </ul>
                        </li>

                        <li class="has-children">
                           <a href="#">Download</a>
                           <ul class="dropdown">
                              <?php foreach($nav_materi as $nav_materi) { ?>
                                 <li><a href="{{ asset('download/kategori/'.$nav_materi->slug_kategori_download) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ Str::words($nav_materi->nama_kategori_download,6) }}</a></li>
                                 <?php } ?>
                                 <li><a href="{{ asset('download') }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Lihat Semua Data</a></li>
                           </ul>
                        </li>
                        
                        <li class="nav-item"> <a class="nav-link" href="{{ asset('video') }}">Video</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="{{ asset('galeri') }}">Galeri</a> </li>
                        <li class="nav-item"> <a class="nav-link" href="{{ asset('kontak') }}">Kontak</a> </li>
                     </ul>
                  </div>
                  <div class="col-2 text-end">
                     <a href="#" class="burger ms-auto float-end site-menu-toggle js-menu-toggle d-inline-block d-lg-none light">
                        <span></span>
                     </a>

                     <a href="#" class="call-us d-flex align-items-center">
                        <span class="icon-phone"></span>
                        <span>123-489-9381</span>
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </nav>
 {{-- <div class="row">
<div class="col-md-12">
  <nav class="navbar navbar-expand-lg">
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <i class="fas fa-bars"></i> </button>
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
         <li class="nav-item"><a class="nav-link" href="{{ asset('/') }}">Beranda</a> </li>
         <li class="nav-item"><a class="nav-link" href="{{ asset('javawebmedia') }}">About Us</a> </li>
         <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Berita &amp; Updates <span class="pull-right"><i class="fas fa-caret-down"></i></span></a>
            <ul class="dropdown-menu" >
               <?php foreach($nav_berita as $nav_berita) { ?>
               <li><a href="{{ asset('berita/kategori/'.$nav_berita->slug_kategori) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ Str::words($nav_berita->nama_kategori,4) }}</a></li>
               <?php } ?>
            </ul>
         </li>
         <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Layanan <span class="pull-right"><i class="fas fa-caret-down"></i></span></a>
            <ul class="dropdown-menu" >
               <?php foreach($nav_layanan as $nav_layanan) { ?>
               <li><a href="{{ asset('berita/layanan/'.$nav_layanan->slug_berita) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ Str::words($nav_layanan->judul_berita,6) }}</a></li>
               <?php } ?>
            </ul>
         </li>
         
         <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#"  role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Download <span class="pull-right"><i class="fas fa-caret-down"></i></span></a>
            <ul class="dropdown-menu" >            
               <?php foreach($nav_materi as $nav_materi) { ?>
               <li><a href="{{ asset('download/kategori/'.$nav_materi->slug_kategori_download) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ Str::words($nav_materi->nama_kategori_download,6) }}</a></li>
               <?php } ?>
               <li><a href="{{ asset('download') }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Lihat Semua Data</a></li>
            </ul>
         </li>
         <li class="nav-item"> <a class="nav-link" href="{{ asset('video') }}">Video</a> </li>
         <li class="nav-item"> <a class="nav-link" href="{{ asset('galeri') }}">Galeri</a> </li>
         <li class="nav-item"> <a class="nav-link" href="{{ asset('kontak') }}">Kontak</a> </li>
      </ul>
   </div>
   </nav> 
</div>
</div>
</div>
</div> --}}
</header>
<!--Header End-->    