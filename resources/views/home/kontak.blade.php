<?php 
$bg   = DB::table('heading')->where('halaman','Kontak')->orderBy('id_heading','DESC')->first();
 ?>

  <!-- Heading -->
  <div class="bg-primary">
   <div class="container py-4">
     <h3 class="text-white ">Menghubungi Ekraf Purwakarta</h3>
     <!-- Breadcrumb -->
     <nav class="d-flex">
       <h6 class="mb-0">
         <a href="" class="text-white-50">Home</a>
         <span class="text-white-50 mx-2"> > </span>
         <a href="" class="text-white-50">Kontak</a>
         <span class="text-white-50 mx-2"> > </span>
         <a href="" class="text-white"><u>Form</u></a>
       </h6>
     </nav>
     <!-- Breadcrumb -->
   </div>
 </div>

<!--Inner Header End--> 
<!--Contact Start-->
<section class="contact-page wf100 p50">
   <div class="container contact-info">
      <div class="row mt-4">
         <!--Contact Info Start-->
         <div class="col-md-6">
            <div class="c-info">
               <h6>Alamat:</h6>
               <p>
                <strong><?php echo $site_config->namaweb ?></strong>
                <br><?php echo nl2br($site_config->alamat) ?>
              </p>
            </div>
         </div>
         <!--Contact Info End--> 
         <!--Contact Info Start-->
         <div class="col-md-6">
            <div class="c-info">
               <h6>Kontak:</h6>
               <p>Telepon: <?php echo $site_config->telepon ?>
                <br>Email: <?php echo $site_config->email ?>
                <br>Website: <?php echo $site_config->website ?></p>
            </div>
         </div>
         <!--Contact Info End--> 
         
      </div>
      <br><br>
   </div>
   <div class="container">
      <div class="row">
         <div class="col-md-6">
            <div class="contact-form">
                  <div class="mb-2">
                     <input type="text" class="form-control" placeholder="Full Name">
                  </div>
                  <div class="mb-2">
                     <input type="text" class="form-control" placeholder="Email">
                  </div>
                  <div class="mb-2">
                     <input type="text" class="form-control" placeholder="Contact">
                  </div>
                  <div class="mb-2">
                     <input type="text" class="form-control" placeholder="Subject">
                  </div>
                  <div class="mb-2">
                     <textarea class="form-control" placeholder="Message"></textarea>
                  </div>
                  <div class="full">
                     <input type="submit" value="Contact us" class="btn btn-info btn-lg btn-block">
                  </div>
            </div>
         </div>
         <div class="col-md-6">
            <div class="google-map">
               <?php echo $site_config->google_map ?>
            </div>
         </div>
      </div>
   </div>
   <br><br>
</section>
<!--Contact End--> 