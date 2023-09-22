<!--Slider Start-->
<section id="home-slider" class="owl-carousel owl-theme wf100">
   <div class="hero overlay">
      <img src="{{ asset('assets/images/blob.svg') }}" alt="" class="img-fluid blob">
      <?php foreach($slider as $slider) { ?>
         <div class="container">
            <div class="row align-items-center justify-content-between mt-5">
               <div class="col-lg-6 text-center text-lg-start pe-lg-5">
                  <?php if($slider->status_text=="Ya") { ?>
                     <h1 class="heading text-white mb-3" data-aos="fade-up">{{ $slider->judul_galeri }}</h1>
                     <p class="text-white mb-5" data-aos="fade-up" data-aos-delay="100">{{ strip_tags($slider->isi) }}</p>
                     <div class="align-items-center mb-5 mm" data-aos="fade-up" data-aos-delay="200">
                        <a href="{{ $slider->website }}" class="btn btn-outline-white-reverse me-4">Read More</a>
                        <a href="https://www.youtube.com/watch?v=Mb1zrW_zra4" class="text-white glightbox">Watch the video</a>
                     </div>
                  <?php } ?>
               </div>
               <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
                  <img src="{{ asset('assets/upload/image/'.$slider->gambar) }}" alt=""  class="img-fluid rounded"> 
                  {{-- <div class="img-wrap">
                     <img src="{{ asset('assets/images/img-1.jpg') }}" alt="Image" class="img-fluid rounded">
                  </div> --}}
               </div>
            </div>
         </div>
         <?php } ?>
      </div>
   </section>
      {{-- Data Service --}}
      <div class="section sec-services">
         <div class="container">
            <div class="row mb-1">
               <div class="col-lg-5 mx-auto text-center" data-aos="fade-up">
                  <h2 class="heading text-primary">17 Sub Sektor</h2>
                  {{-- <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p> --}}
               </div>
            </div>
      
            <div class="row">
               <?php foreach($sub_sektor as $sub_sektor) { ?>
                  <div class="col-12 col-sm-6 col-md-6 col-lg-2" data-aos="fade-up">
                     <div class="service text-center">
                  {{-- <img src="{{ asset('assets/upload/user/testimonials-1.jpg') }}" alt=""  class="img-fluid rounded">  --}}

                        <span class="bi-cash-coin"></span>
                        <div>
                           <h3>{{ $sub_sektor->sub_sektor_name }}</h3>
                        </div>
                     </div>
                  </div>
               <?php }  ?>
            </div>
         </div>
      </div>

         <!--Slider End--> 
         <!--Service Area Start-->
         <div class="section sec-news donation-join wf100">
            <div class="container">
               <div class="row mb-5">
                  <div class="col-lg-7">
                     <h2 class="heading text-primary">Berita Terbaru</h2>
                  </div>
               </div>
         
               <div class="row">
                  <?php foreach($layanan as $layanan) { ?>
                     {{-- <div class="col-md-4 col-sm-12">
                        <br>
                        <img src="{{ asset('assets/upload/image/thumbs/'.$layanan->gambar) }}" alt="{{ $layanan->judul_berita }}" class="img img-thumbnail img-fluid">
                        <div class="volbox">
                           <h6>{{ $layanan->judul_berita }}</h6>
                           <p>{{ $layanan->keywords }}</p>
                           <a href="{{ asset('berita/layanan/'.$layanan->slug_berita) }}">Lihat detail</a> 
                        </div>
                     </div> --}}
                     <div class="col-lg-3">
                        <div class="card post-entry">
                           <a href="single.html"><img src="{{ asset('assets/upload/image/thumbs/'.$layanan->gambar) }}" class="card-img-top" style="max-width: 100%" alt="{{ $layanan->judul_berita }}"></a>
                           <div class="card-body" style="padding: 20px;">
                              <div><span class="text-uppercase font-weight-bold date">Jan 20, 2021</span></div>
                              <h6 class="card-title"><a href="single.html">{{ $layanan->judul_berita }}</a></h5>
                              <p>{{ $layanan->keywords }}</p>
                              <p class="mt-2 mb-0"><a href="{{ asset('berita/layanan/'.$layanan->slug_berita) }}">Baca selengkapnya ></a></p>
                           </div>
                        </div>
                     </div>
            
                     <!--box  end--> 
                  <?php } ?>
               </div>
            </div>
         </div>

         {{-- <section class="donation-join wf100">
            <div class="container text-center">
               <div class="row">
                  
                  <?php foreach($layanan as $layanan) { ?>
                     <div class="col-md-4 col-sm-12">
                        <br>
                        <img src="{{ asset('assets/upload/image/thumbs/'.$layanan->gambar) }}" alt="{{ $layanan->judul_berita }}" class="img img-thumbnail img-fluid">
                        <div class="volbox">
                           <h6>{{ $layanan->judul_berita }}</h6>
                           <p>{{ $layanan->keywords }}</p>
                           <a href="{{ asset('berita/layanan/'.$layanan->slug_berita) }}">Lihat detail</a> 
                        </div>
                     </div>
                     <!--box  end--> 
                  <?php } ?>
                  
               </div>
            </div>
         </section> --}}


         <div class="section sec-cta overlay" style="background-image: url({{ asset('assets/images/img-3.jpg')}})">
            <div class="container">
               <div class="row justify-content-between align-items-center">
                  <div class="col-lg-5" data-aos="fade-up" data-aos-delay="0">
                     <h2 class="heading">Kamu Seorang Pelaku Bisnis?</h2>
                     <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                  </div>
                  <div class="col-lg-5 text-end" data-aos="fade-up" data-aos-delay="100">
                     <a href="#" class="btn btn-outline-white-reverse">Contact us</a>
                  </div>
               </div>
            </div>
         </div>
         
         <!--Service Area End--> 
         {{-- <section class="wf100 about">
            <!--About Txt Video Start-->
            <div class="about-video-section wf100">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-7">
                        <div class="about-text">
                           <h5>TENTANG KAMI</h5>
                           <h2>{{ $site_config->nama_singkat }}</h2>
                           <?php echo $site_config->tentang ?>

                           <a href="{{ asset('kontak') }}" class="btn btn-info btn-lg">Kontak Kami</a> 
                        </div>
                     </div>
                     <div class="col-lg-5">
                        <a href="#"><img src="{{ asset('assets/upload/image/'.$site_config->gambar) }}" alt="{{ $site_config->nama_singkat }}" class="img img-fluid img-thumbnail">
                     </div>
                  </div>
               </div>
            </div>
            <!--About Txt Video End--> 
            <!--About Section Start-->
         <section class="home2-about wf100 p100 gallery" style="background: url({{ asset('assets/aws/images/news-artilcesbg.jpg') }}) no-repeat; background-size: cover;">
            <div class="container">
               <div class="row">
                  <div class="col-md-5">
                        <div class="video-img"> <a href="https://youtu.be/{{ $video->video }}" data-rel="prettyPhoto" title="{{ $video->judul }}"><i class="fas fa-play"></i></a> <img src="{{ asset('assets/upload/image/'.$video->gambar) }}" alt=""> </div>
                  </div>
                  <div class="col-md-7">
                     <div class="h2-about-txt">
                        <h3>Webinar</h3>
                        <h2>{{ $video->judul }}</h2>
                        <p><?php echo strip_tags($video->keterangan) ?></p>
                        <a class="aboutus" href="#">Lihat Detail</a> 
                     </div>
                  </div>
               </div>
            </div>
            
         </section> --}}
         <!--About Section End--> 
         
         <!--Blog Start-->
{{-- <section class="h2-news wf100 p80 blog">
   <div class="blog-grid">
      <div class="container">
         <div class="row">
            <div class="col-md-6">
               <div class="section-title-2">
                  <h5>Baca update kami</h5>
                  <h2>Berita & Updates</h2>
               </div>
            </div>
            <div class="col-md-6"> <a href="{{ asset('berita') }}" class="view-more">Lihat berita lainnya</a> </div>
            <div class="col-md-12">
               <hr>
            </div>
         </div>
         <div class="row" style="background-color: white; padding-top: 20px; padding-bottom: 20px; border-radius: 5px;">
            <?php foreach($berita as $berita) { ?>
            <!--Blog Small Post Start-->
            <div class="col-md-4 col-sm-6" >
               <div class="blog-post">
                  <div class="blog-thumb"> <a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><i class="fas fa-link"></i></a> <img src="{{ asset('assets/upload/image/thumbs/'.$berita->gambar) }}" alt="><?php  echo $berita->judul_berita ?>"> </div>
                  <div class="post-txt">
                     <h5><a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><?php  echo $berita->judul_berita ?></a></h5>
                     <ul class="post-meta">
                        <li> <a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><i class="fas fa-calendar-alt"></i> {{ tanggal('tanggal_id',$berita->tanggal_post)}}</a> </li>
                        <li> <a href="{{ asset('berita/kategori/'.$berita->slug_berita) }}"><i class="fas fa-sitemap"></i> {{ $berita->nama_kategori }}</a> </li>
                     </ul>
                     <p><?php echo \Illuminate\Support\Str::limit(strip_tags($berita->isi), 100, $end='...') ?></p>
                     <a href="{{ asset('berita/read/'.$berita->slug_berita) }}" class="read-post">Baca detail</a>
                  </div>
               </div>
            </div>
            <!--Blog Small Post End--> 
            <?php } ?>
         </div>
         
      </div>
   </div>
</section> --}}
<!--Blog End--> 

<!--Testimonials Start-->
<section class="testimonials-section bg-white wf100 p80 p-5">
   <div class="container">
      <div class="row">
         <div class="col-md-12">
            {{-- <div class="section-title-2 text-center mb-2">
               <h2>Download</h2>
            </div> --}}
            <div id="testimonials" class="owl-carousel owl-theme">
               <?php 
               $agenda = DB::table('agenda')
                  ->orderBy('id_agenda','DESC')
                  ->get();
               foreach($agenda as $agenda) {
               ?>
               <!--testimonials box start-->
               <div class="item">
                  <h4><?php echo $agenda->judul_agenda ?></h4>
                  <a href="single.html"><img src="{{ asset('assets/upload/image/thumbs/'.$agenda->gambar) }}" class="card-img-top" style="max-width: 100%" alt="{{ $agenda->judul_agenda }}"></a>
                  <hr>
                  <div class="row">
                     <div class="col-2">
                        <div class="card bg-secondary text-white" style="width:100%">
                           18
                        </div>
                     </div>
                     <div class="col-10">
                        <?php echo \Illuminate\Support\Str::limit(strip_tags($agenda->isi), 100, $end='...') ?>
                           <a href="{{ asset('download/kategori/'.$agenda->gambar) }}"><i class="fa fa-laptop"></i> Lihat Detail</a>
                     </div>
                  </div>
               </div>
               <!--testimonials box End--> 
               <?php } ?>
            </div>
         </div>
      </div>
   </div>
</section>
<!--Testimonials End--> 

    <!-- Preloader -->
    <div id="overlayer"></div>
    <div class="loader">
    	<div class="spinner-border text-primary" role="status">
    		<span class="visually-hidden">Loading...</span>
    	</div>
    </div>