<style>
      .card-sub-sector:hover {
         background-color: #00B5B8!important;
         transition: background-color 0.3s ease;
         cursor: pointer;
         color: white !important;
      }

      .card-sub-sector:hover h5.primary {
         color: white !important;
      }
</style>
    <!-- Jumbotron -->
    <div class="bg-primary text-white py-5">
      <!--Slider Start-->
    <section id="home-slider" class="owl-carousel owl-theme wf100">
       <div class="hero overlay">
             {{-- <img src="{{ asset('assets/images/blob.svg') }}" alt="" class="img-fluid blob"> --}}
          <?php foreach($slider as $slider) { ?>
             <div class="container">
                <div class="row align-items-center justify-content-between mt-5">
                   <div class="col-lg-6 text-center text-lg-start pe-lg-5">
                         <?php if($slider->status_text=="Ya") { ?>
                         <h1 class="heading text-white mb-3" data-aos="fade-up">{{ $slider->judul_galeri }}</h1>
                         <p class="text-white mb-5" data-aos="fade-up" data-aos-delay="100">
                            {{ strip_tags($slider->isi) }}</p>
                         <div class="align-items-center mb-5 mm" data-aos="fade-up" data-aos-delay="200">
                            <button type="button" class="btn btn-outline-light">
                               Daftar Sekarang
                            </button>
                            <button type="button" class="btn btn-light shadow-0 primary pt-2 border border-white">
                               <span class="pt-1">Pelajari lebih lanjut</span>
                            </button>
                         </div>
                         <?php } ?>
                   </div>
                   <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
                         <img src="{{ asset('assets/upload/image/'.$slider->gambar) }}" alt=""
                            class="img-fluid rounded">
                   </div>
                </div>
             </div>
          <?php } ?>
       </div>
    </section>
 </div>
 <!-- Jumbotron -->
      {{-- Data Service --}}
      <div class="section sec-services mt-4">
         <div class="container">
            <div class="row">
               <div class="col-12 mt-3 mb-1">
                   <h4 class="text-uppercase"><b class="primary">17</b> Sub Sektor</h4>
                   <p>Badan Usaha di Kabupaten Purwakarta</p>
               </div>
           </div>
           <div class="row">
               <?php foreach($sub_sektor as $sub_sektor) { ?>
               <div class="col-xl-2 col-sm-6 col-12">
                   <div class="card card-sub-sector">
                       <div class="card-content">
                           <div class="card-body p-2">
                               <div class="row">
                                   <div class="col-md-8 text-left">
                                       <h5 class="primary">{{ $sub_sektor->total_data }}</h5>
                                       <span style="font-size:0.8rem">{{ $sub_sektor->sub_sektor_name }}</span>
                                   </div>
                                   <div class="col-md-4 float-right">
                                       <img src="{{ asset('assets/images/ekraf/'.$sub_sektor->icon.'') }}" width="40px">
                                   </div>
                               </div>
                           </div>
                       </div>
                   </div>
               </div>
               <?php }  ?>
           </div>
         </div>
      </div>
         <!--Slider End--> 


         <!--Service Area Start-->
         <section class="mt-2" style="background-color: #f5f5f5;">
            <div class="container text-dark pt-3">
              <header class="pt-4 pb-3">
                <h3>Berita</h3>
              </header>
          
              <div class="row mb-4">
               <?php foreach($berita as $berita) { ?>
                  <div class="col-lg-3">
                     <div class="card post-entry">
                        <a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><img src="{{ asset('assets/upload/image/thumbs/'.$berita->gambar) }}" class="card-img-top" style="max-width: 100%" alt="{{ $berita->judul_berita }}"></a>
                        <div class="card-body" style="padding: 20px;">
                           <div><span class="text-uppercase font-weight-bold date">{{ tanggal('tanggal_id',$berita->tanggal_post)}}</span></div>
                           {{-- <ul class="post-meta">
                              <li> <a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><i class="fas fa-calendar-alt"></i> {{ tanggal('tanggal_id',$berita->tanggal_post)}}</a> </li>
                              <li> <a href="{{ asset('berita/read/'.$berita->slug_berita) }}"><i class="fas fa-comments"></i> {{ $berita->nama_kategori }}</a> </li>
                           </ul> --}}
                           <h6 class="card-title"><a href="{{ asset('berita/read/'.$berita->slug_berita) }}">{{ $berita->judul_berita }}</a></h5>
                           <p>{{  \Illuminate\Support\Str::limit(strip_tags($berita->isi), 80, $end='...') }}</p>
                           <p class="mt-2 mb-0"><a href="{{ asset('berita/read/'.$berita->slug_berita) }}">Baca selengkapnya ></a></p>
                        </div>
                     </div>
                  </div>
               <?php } ?>
              </div>
            </div>
            <!-- container end.// -->
          </section>

          
          
          <section class="mt-5 mb-4">
            <div class="container text-dark">
              <header class="mb-4">
                <h3>Agenda</h3>
              </header>
              <div class="row">
               <?php 
               $agenda = DB::table('agenda')
                  ->orderBy('id_agenda','DESC')
                  ->get();
               foreach($agenda as $agenda) {
               ?>

                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                  <article>
                    <a href="{{ asset('download/kategori/'.$agenda->gambar) }}" class="img-fluid">
                      <img class="rounded w-100" src="{{ asset('assets/upload/image/thumbs/'.$agenda->gambar) }}" style="object-fit: cover;" height="160" />
                    </a>
                    <div class="mt-2 text-muted small d-block mb-1">
                      {{-- <span>
                        <i class="fa fa-calendar-alt fa-sm"></i>
                        23.12.2022
                      </span> --}}

                      <div class="row">
                        <div class="col-md-3">
                           <style>
                              .date-calender {
                                 width: 48px;
                                 height: 48px;
                                 border-radius: 10px;
                                 background-color: #ffef80;
                                 text-align: center;
                                 padding-top: 7px;
                                 margin-right: 15px;
                              }

                              .date-calender h3 {
                                 margin-bottom: 0px;
                                 font-size: 22px;
                                 line-height: 20px;
                                 font-weight: bold;
                              }
                           </style>
                           <div class="date-calender">
                              <h3>{{ date('d', strtotime($agenda->tanggal_mulai)) }}</h3><span>{{ date('M', strtotime($agenda->tanggal_mulai)) }}</span>
                           </div>
                        </div>
                        <div class="col-md-9">
                           <a href="{{ asset('download/kategori/'.$agenda->gambar) }}">
                             <h6 class="text-dark" style="margin-bottom: 0.1rem"><?php echo $agenda->judul_agenda ?></h6>
                          </a>
                           <p style="margin-bottom: 0.4rem"><?php echo \Illuminate\Support\Str::limit(strip_tags($agenda->isi), 100, $end='...') ?></p>
                              <span style="font-size: 0.9em">
                                 <i class="fa fa-map-pin fa-sm text-danger"></i>
                                 {{ $agenda->tempat }}
                              </span>
                        </div>
                      </div>
                    </div>
                  </article>
                </div>
                <?php } ?>
              </div>
         </div>
          </section>