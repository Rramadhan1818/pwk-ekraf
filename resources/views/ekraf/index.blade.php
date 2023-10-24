
<style>
    .card-sub-sector:hover {
       background-color: #00B5B8!important;
       transition: background-color 0.3s ease;
       cursor: pointer;
       color: white !important;
    }

    .card-pelaku:hover {
       background-color: #f8eda4!important;
       transition: background-color 0.3s ease;
       cursor: pointer;
       /* color: white !important; */
    }
    
    .card-sub-sector:hover h5.primary {
       color: white !important;
    }
</style>
 <!-- Heading -->
  <div class="bg-primary">
    <div class="container py-4">
      <h3 class="text-white ">Pelaku Ekonomi Kreative</h3>
      <!-- Breadcrumb -->
      <nav class="d-flex">
        <h6 class="mb-0">
          <a href="" class="text-white-50">Home</a>
          <span class="text-white-50 mx-2"> > </span>
          <a href="" class="text-white-50">Pelaku Ekraf</a>
          <span class="text-white-50 mx-2"> > </span>
          <a href="" class="text-white"><u>Data</u></a>
        </h6>
      </nav>
      <!-- Breadcrumb -->
    </div>
  </div>

  <!-- Heading -->
    {{-- Data Service --}}
    <div class="section sec-services">
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
                                      <h5 class="primary">{{ $sub_sektor->total_data}}</h5>
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

<!-- sidebar + content -->
<section class="">
    <div class="container">
      <div class="row">
        <!-- sidebar -->
        <div class="col-lg-3">
          <!-- Toggle button -->
          <button
                  class="btn btn-outline-secondary mb-3 w-100 d-lg-none"
                  type="button"
                  data-mdb-toggle="collapse"
                  data-mdb-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                  >
            <span>Show filter</span>
          </button>
          <!-- Collapsible wrapper -->
          <div class="collapse card d-lg-block mb-5" id="navbarSupportedContent">
            <div class="accordion" id="accordionPanelsStayOpenExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="headingTwo">
                      <button
                              class="accordion-button text-dark bg-light"
                              type="button"
                              data-mdb-toggle="collapse"
                              data-mdb-target="#panelsStayOpen-collapseTwo"
                              aria-expanded="true"
                              aria-controls="panelsStayOpen-collapseTwo"
                              >
                        Kategori
                      </button>
                    </h2>
                    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo">
                      <div class="accordion-body">
                        <div>
                        
                          
                          <?php foreach($category_business as $category_business) { ?>
                              <!-- Checked checkbox -->
                          <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked1" checked />
                            <label class="form-check-label" for="flexCheckChecked1">{{ $category_business->category_business }}</label>
                            <span class="badge badge-secondary float-end">{{ $category_business->total_data }}</span>
                          </div>
                            <?php } ?>
    
                        </div>
                      </div>
                    </div>
                  </div>
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button
                          class="accordion-button text-dark bg-light"
                          type="button"
                          data-mdb-toggle="collapse"
                          data-mdb-target="#panelsStayOpen-collapseOne"
                          aria-expanded="true"
                          aria-controls="panelsStayOpen-collapseOne"
                          >
                    Sub Sektor
                  </button>
                </h2>
                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne">
                  <div class="accordion-body">
                    <ul class="list-unstyled">
                        <?php foreach($sub_sektor_side as $sub_sektor_side) { ?>
                      <li><a href="#" class="text-dark">{{ $sub_sektor_side->sub_sektor_name }} </a></li>
                      <?php } ?>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- sidebar -->
        <!-- content -->
        <div class="col-lg-9">
          <header class="d-sm-flex align-items-center border-bottom mb-4 pb-3">
            <strong class="d-block py-2">159 Items found </strong>
            <div class="ms-auto">
              <select class="form-select d-inline-block w-auto border pt-1">
                <option value="0">Sektor Populer</option>
                <option value="1">Sektor Baru</option>
                <option value="2">Sektor Favorit</option>
                <option value="3">Semua Sektor</option>
              </select>
              <div class="btn-group shadow-0 border">
                <a href="#" class="btn btn-light" title="List view">
                  <i class="fa fa-bars fa-lg"></i>
                </a>
                <a href="#" class="btn btn-light active" title="Grid view">
                  <i class="fa fa-th fa-lg"></i>
                </a>
              </div>
            </div>
          </header>
  
          <div class="row">
            <?php foreach($subject_data as $pelaku) { ?>
                <div class="col-lg-3 col-md-6 col-sm-6 d-flex">
                <div class="card w-100 my-2 shadow-2-strong card-pelaku" style="cursor: pointer">
                    <center>
                    <img src="{{ $pelaku->picture }}" style="max-height: 70px; max-width:110px" class="card-img-top" />
                    </center>
                    <div class="card-body d-flex flex-column pb-0 pt-2">
                    <div class="d-flex flex-row">
                        <h6 class="mb-1 me-1">{{ $pelaku->business_name }}</h6>
                    </div>
                    <p style="font-size: 12px">{{ \Illuminate\Support\Str::limit(strip_tags($pelaku->description), 40, $end='...') }}</p>
                    <span style="font-size: 0.6em">
                        <i class="fa fa-map-pin fa-sm text-danger"></i>
                        {{ $pelaku->subdistrict }}
                    </span>
                    {{-- <div class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
                        <a href="#!" class="btn btn-primary shadow-0 me-1">Add to cart</a>
                        <a href="#!" class="btn btn-light border icon-hover px-2 pt-2"><i class="fas fa-heart fa-lg text-secondary px-1"></i></a>
                    </div> --}}
                    </div>
                </div>
                </div>
            <?php } ?>
          </div>
  
          <hr />
  
          <!-- Pagination -->
          <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
            <ul class="pagination">
              <li class="page-item disabled">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="page-item active"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item"><a class="page-link" href="#">4</a></li>
              <li class="page-item"><a class="page-link" href="#">5</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
          <!-- Pagination -->
        </div>
      </div>
    </div>            
  </section>
  <!-- sidebar + content -->