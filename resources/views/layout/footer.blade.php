<?php 
use Illuminate\Support\Facades\DB;
use App\Models\Nav_model;
$site_config = DB::table('konfigurasi')->first();
// Nav profil
$myprofil    = new Nav_model();
$nav_profilf  = $myprofil->nav_profil();
$nav_layananf = $myprofil->nav_layanan();
?>


<!-- Footer -->
<footer class="text-center text-lg-start text-muted mt-3" style="background-color: #f5f5f5;">
    <!-- Section: Links  -->
    <section class="">
        <div class="container text-center text-md-start pt-4 pb-4">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-12 col-lg-3 col-sm-12 mb-2">
                    <!-- Content -->
                    <a href="{{ asset('admin/dasbor') }}" target="_blank">
                        <img src="{{ asset('assets/upload/image/'.website('icon')) }}"  alt="{{ website('namaweb') }}" height="55" />
                    </a>
                    <p class="mt-2 text-dark">
                        © 2023 Copyright: Ekonomi Kreative Purwakarta
                    </p>
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-6 col-sm-4 col-lg-4">
                    <!-- Links -->
                    <div class="footer-widget">
                        <h6 class="text-uppercase text-dark fw-bold mb-2">
                            {{ $site_config->namaweb }}
                        </h6>
                        <p>{{ $site_config->deskripsi }}</p>
                        <hr style="border-top: solid thin #EEE;padding:0; margin: 5px 0;">
                        <p style="font-size: 14px">
                            <strong>Our office:</strong>
                            <?php echo nl2br($site_config->alamat) ?>
                            <br><strong>Phone:</strong> {{ $site_config->telepon }}
                            <br><strong>Fax:</strong> {{ $site_config->fax }}
                            <br><strong>Email:</strong> {{ $site_config->email }}
                            <br><strong>Website:</strong> {{ $site_config->website }}
                        </p>
                    </div>
                </div>
                <div class="col-6 col-sm-4 col-lg-2">
                </div>
                <!-- Grid column -->

                <!-- Grid column -->
                {{-- <div class="col-6 col-sm-4 col-lg-2">
                    <!-- Links -->
                    <h6 class="text-uppercase text-dark fw-bold mb-2">
                        Information
                    </h6>
                    <ul class="list-unstyled mb-4">
                        <li><a class="text-muted" href="#">Help center</a></li>
                        <li><a class="text-muted" href="#">Money refund</a></li>
                        <li><a class="text-muted" href="#">Shipping info</a></li>
                        <li><a class="text-muted" href="#">Refunds</a></li>
                    </ul>
                </div> --}}
                <!-- Grid column -->

                <!-- Grid column -->
                {{-- <div class="col-6 col-sm-4 col-lg-2">
                    <!-- Links -->
                    <h6 class="text-uppercase text-dark fw-bold mb-2">
                        Support
                    </h6>
                    <ul class="list-unstyled mb-4">
                        <li><a class="text-muted" href="#">Help center</a></li>
                        <li><a class="text-muted" href="#">Documents</a></li>
                        <li><a class="text-muted" href="#">Account restore</a></li>
                        <li><a class="text-muted" href="#">My orders</a></li>
                    </ul>
                </div> --}}
                <!-- Grid column -->

                <!-- Grid column -->
                <div class="col-12 col-sm-12 col-lg-3">
                    <!-- Links -->
                    <h6 class="text-uppercase text-dark fw-bold mb-2">Dapatkan Newsletter Terupdate</h6>
                    <p class="text-muted">Silahkan masukan email untuk berlangganan</p>
                    <div class="input-group mb-3">
                        <input type="email" class="form-control border" placeholder="Email" aria-label="Email"
                            aria-describedby="button-addon2" />
                        <button class="btn btn-light border shadow-0" type="button" id="button-addon2"
                            data-mdb-ripple-color="dark">
                            Join
                        </button>
                    </div>
                </div>
                <!-- Grid column -->
            </div>
            <!-- Grid row -->
        </div>
    </section>
    <!-- Section: Links  -->

    <div class="">
        <div class="container">
            <div class="d-flex justify-content-between py-4 border-top">
                <!--- payment --->
                <span>
                    Made with <i class="fa fa-heart pulse"></i> in <a href="https://www.instagram.com/_rezkiramadhan/" target="_blank">Ekraf Pwk</a>
                </span>
                <!--- payment --->

                <!--- language selector --->
                <div class="dropdown dropup">
                    <a class=" text-dark" href="#" id="Dropdown" role="button" data-mdb-toggle="dropdown"
                        aria-expanded="false"> <i class="flag-indonesia flag m-0 me-1"></i>Indonesia </a>

                    {{-- <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="Dropdown">
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-indonesia flag"></i>Indonesia <i
                                    class="fa fa-check text-success ms-2"></i></a>
                        </li>
                        <li>
                            <hr class="dropdown-divider" />
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-poland flag"></i>Polski</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-china flag"></i>中文</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-japan flag"></i>日本語</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-germany flag"></i>Deutsch</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-france flag"></i>Français</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-spain flag"></i>Español</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-russia flag"></i>Русский</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag-portugal flag"></i>Português</a>
                        </li>
                    </ul> --}}
                </div>
                <!--- language selector --->
            </div>
        </div>
    </div>
</footer>
<!-- Footer -->




{{-- <footer class="h3footer wf100">
   <div class="container">
      <div class="row">
         <!--Footer Widget Start-->
         <div class="col-md-4 col-sm-6">
            <div class="footer-widget">
               <h3>{{ $site_config->namaweb }}</h3>
<p>{{ $site_config->deskripsi }}</p>
<hr style="border-top: solid thin #EEE;padding:0; margin: 5px 0;">
<p><strong>Our office:</strong>
    <?php echo nl2br($site_config->alamat) ?>
    <br><strong>Phone:</strong> {{ $site_config->telepon }}
    <br><strong>Fax:</strong> {{ $site_config->fax }}
    <br><strong>Email:</strong> {{ $site_config->email }}
    <br><strong>Website:</strong> {{ $site_config->website }}</p>
</div>
</div>
<!--Footer Widget End-->
<!--Footer Widget Start-->
<div class="col-md-5 col-sm-6">
    <div class="footer-widget">
        <h3>Layanan</h3>
        <ul class="lastest-products">
            <?php foreach($nav_layananf as $nav_layananf) { ?>
            <li><img src="{{ asset('assets/upload/image/thumbs/'.$nav_layananf->gambar) }}"
                    alt="{{ $nav_layananf->judul_berita }}"> <strong><a
                        href="{{ asset('layanan/'.$nav_layananf->slug_berita) }}">{{ $nav_layananf->judul_berita }}</a></strong>
                <span class="pdate"><i>Updated:</i>
                    <?php echo tanggal('tanggal_id',$nav_layananf->tanggal_post) ?></span> </li>
            <?php } ?>
        </ul>
    </div>
</div>
<!--Footer Widget End-->
<!--Footer Widget Start-->
<div class="col-md-3 col-sm-12">
    <div class="footer-widget">
        <h3>Tetap Update</h3>
        <div class="newsletter">
            <ul>
                <li>
                    <input type="text" placeholder="Your Name">
                </li>
                <li>
                    <input type="text" placeholder="Your Email">
                </li>
                <li>
                    <input type="submit" value="Subscribe Now">
                </li>
            </ul>
        </div>
        <div class="footer-social">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a> </div>
    </div>
</div>
<!--Footer Widget End-->
</div>
<div class="row footer-copyr">
    <div class="col-md-4 col-sm-4"> <img src="{{ asset('assets/upload/image/'.$site_config->logo) }}" alt=""
            style="max-height: 50px; width: auto;"> </div>
    <div class="col-md-8 col-sm-8">
        <p><a target="_blank" href="https://javawebmedia.com">{{ $site_config->namaweb }}</a></p>
    </div>
</div>
</div>
</footer> --}}
<!--Footer End-->
</div>
<!--   JS Files Start  -->
<script src="{{ asset('assets/aws/js/jquery-3.3.1.min.js') }}"></script>
<script src="{{ asset('assets/aws/js/jquery-migrate-1.4.1.min.js') }}"></script>
<script src="{{ asset('assets/aws/js/popper.min.js') }}"></script>
<script src="{{ asset('assets/aws/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('assets/aws/js/owl.carousel.min.js') }}"></script>
<script src="{{ asset('assets/aws/js/jquery.prettyPhoto.js') }}"></script>
<script src="{{ asset('assets/aws/js/isotope.min.js') }}"></script>
<script src="{{ asset('assets/aws/js/slick.min.js') }}"></script>
<script src="{{ asset('assets/aws/js/custom.js') }}"></script>

<!-- MDB -->
<script type="text/javascript" src="{{ asset('assets/mdb5/js/mdb.min.js')}}"></script>
<!-- Custom scripts -->
<script type="text/javascript" src="{{ asset('assets/mdb5/script.js')}}"></script>

</body>

</html>
