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
 <header>
       <!-- Jumbotron -->
       <div class="p-3 text-center bg-white border-bottom">
         <div class="container">
           <div class="row gy-3">
             <!-- Left elements -->
             <div class="col-lg-2 col-sm-4 col-4">
               <a href="{{ asset('/home') }}" class="float-start">
                 <img src="{{ asset('assets/upload/image/'.website('icon')) }}"  alt="{{ website('namaweb') }}" height="35" />
               </a>
             </div>
             <!-- Left elements -->
     
             <!-- Center elements -->
             <div class="order-lg-last col-lg-5 col-sm-8 col-8">
               <div class="d-flex float-end">
                 <a href="{{ asset('login') }}" class="me-1 border rounded-5 py-1 px-3 nav-link d-flex align-items-center" target="_blank"> <i class="fas fa-user-alt m-1 me-md-2"></i><p class="d-none d-md-block mb-0">Login</p> </a>
                 <a href="https://forms.gle/NgYagSFmosY8iaq97" class="me-1 border rounded-5 py-1 px-3 nav-link d-flex align-items-center" style="background-color: #f3d617" target="_blank"> <p class="d-none d-md-block mb-0">Daftar Sekarang</p> </a>
               </div>
             </div>
             <!-- Center elements -->
     
             <!-- Right elements -->
             <div class="col-lg-5 col-md-12 col-12">
               <div class="input-group float-center">
                 <div class="form-outline">
                   <input type="search" id="form1" class="form-control" />
                   <label class="form-label" for="form1">Cari...</label>
                 </div>
                 <button type="button" class="btn btn-primary shadow-0">
                   <i class="fas fa-search"></i>
                 </button>
               </div>
             </div>
             <!-- Right elements -->
           </div>
         </div>
       </div>
       <!-- Jumbotron -->
     
       <!-- Navbar -->
       <nav class="navbar navbar-expand-lg navbar-light bg-white">
         <!-- Container wrapper -->
         <div class="container justify-content-center justify-content-md-between">
           <!-- Toggle button -->
           <button
                   class="navbar-toggler border py-2 text-dark"
                   type="button"
                   data-mdb-toggle="collapse"
                   data-mdb-target="#navbarLeftAlignExample"
                   aria-controls="navbarLeftAlignExample"
                   aria-expanded="false"
                   aria-label="Toggle navigation"
                   >
             <i class="fas fa-bars"></i>
           </button>
     
           <!-- Collapsible wrapper -->
           <div class="collapse navbar-collapse" id="navbarLeftAlignExample">
             <!-- Left links -->
             <ul class="navbar-nav me-auto mb-2 mb-lg-0">
               
               <li class="nav-item active"><a class="nav-link" href="{{ asset('/') }}">Home</a> </li>
               {{-- <li class="nav-item"><a class="nav-link" href="{{ asset('javawebmedia') }}">About Us</a> </li> --}}
               <li class="nav-item">
                 <a class="nav-link text-dark" href="{{ asset('/ekraf') }}">Pelaku Ekraf</a>
               </li>
               <li class="nav-item">
                <a class="nav-link text-dark" href="{{ asset('/berita/kategori/berita') }}">Berita</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-dark" href="{{ asset('/kontak') }}">Kontak</a>
              </li>
               <!-- Navbar dropdown -->
               {{-- <li class="nav-item dropdown">
                 <a class="nav-link dropdown-toggle text-dark" href="{{ asset('berita/kategori/berita') }}" id="navbarDropdown" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                   Berita
                 </a>
                 <!-- Dropdown menu -->
                 <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <?php foreach($nav_berita as $nav_berita) { ?>
                     <li><a href="{{ asset('berita/kategori/'.$nav_berita->slug_kategori) }}"><i class="fa fa-angle-double-right" aria-hidden="true"></i> {{ Str::words($nav_berita->nama_kategori,4) }}</a></li>
                  <?php } ?>
                 </ul>
               </li> --}}
             </ul>
             <!-- Left links -->
           </div>
         </div>
         <!-- Container wrapper -->
       </nav>
       <!-- Navbar -->
  