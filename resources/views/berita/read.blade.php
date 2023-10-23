<?php 
$bg   = DB::table('heading')->where('halaman','Berita')->orderBy('id_heading','DESC')->first();
 ?>
<!--Inner Header Start-->
  <!-- Heading -->
  <div class="bg-primary">
   <div class="container py-4">
     <h3 class="text-white ">Detail Berita</h3>
     <!-- Breadcrumb -->
     <nav class="d-flex">
       <h6 class="mb-0">
         <a href="" class="text-white-50">Home</a>
         <span class="text-white-50 mx-2"> > </span>
         <a href="" class="text-white-50">Berita</a>
         <span class="text-white-50 mx-2"> > </span>
         <a href="" class="text-white"><u>Data Read</u></a>
       </h6>
     </nav>
     <!-- Breadcrumb -->
   </div>
 </div>

<!--Inner Header End--> 
<!--About Start-->
<section class="mt-4">
<!--About Txt Video Start-->
<div class="about-video-section wf100">
   <div class="container">
      <div class="row">
         <div class="col-lg-8 mx-auto">
            <div class="about-text text-aws">
               <h2>{{ $title }}</h2>
            <style type="text/css" media="screen">
                              .text-aws img {
                                 width: auto;
                                 max-width: 100%;
                                 height: auto;
                              }
                           </style>               
               <?php echo $read->isi ?>
            </div>
         </div>
         {{-- <div class="col-lg-6">
            <a href="#"><img src="{{ asset('assets/upload/image/'.$read->gambar) }}" alt="{{ $title }}" class="img img-fluid img-thumbnail"></a>
         </div> --}}
         
         
      </div>
   </div>
</div>
</section>
<!--About Txt Video End--> 



