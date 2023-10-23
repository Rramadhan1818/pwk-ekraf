<?php 
$bg   = DB::table('heading')->where('halaman','Berita')->orderBy('id_heading','DESC')->first();
 ?>
{{-- <!--Inner Header Start-->
<section class="wf100 p80 inner-header" style="background-image: url('{{ asset('assets/upload/image/'.$bg->gambar) }}'); background-position: bottom center;">
   <div class="container">
      <h1>{{ $title }}</h1>
   </div>
</section> --}}

  <!-- Heading -->
  <div class="bg-primary">
   <div class="container py-4">
     <h3 class="text-white ">{{ $title }}</h3>
     <!-- Breadcrumb -->
     <nav class="d-flex">
       <h6 class="mb-0">
         <a href="" class="text-white-50">Home</a>
         <span class="text-white-50 mx-2"> > </span>
         <a href="" class="text-white-50">Berita</a>
         <span class="text-white-50 mx-2"> > </span>
         <a href="" class="text-white"><u>Data</u></a>
       </h6>
     </nav>
     <!-- Breadcrumb -->
   </div>
 </div>
<!--Inner Header End--> 


     <!--Service Area Start-->
     <section>
      <div class="container text-dark pt-5">
        {{-- <header class="pt-4 pb-3">
          <h3>Berita</h3>
        </header> --}}
    
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

