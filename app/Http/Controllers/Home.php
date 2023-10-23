<?php
namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use App\Models\Rekening_model;
use App\Models\Berita_model;
use App\Models\Staff_model;
use App\Models\Download_model;
use PDF;

class Home extends Controller
{
    // Homepage
    public function index()
    {
    	$site_config   = DB::table('konfigurasi')->first();
        $video          = DB::table('video')->orderBy('id_video','DESC')->first();
        $sub_sektor     = DB::table('mt_sub_sektor')
        ->select('mt_sub_sektor.id_sub_sektor', 'mt_sub_sektor.sub_sektor_name', 'mt_sub_sektor.description', 'mt_sub_sektor.icon', DB::raw('COUNT(subject_data.id_sub_sector) AS total_data'))
        ->leftJoin('subject_data', 'mt_sub_sektor.id_sub_sektor', '=', 'subject_data.id_sub_sector')
        ->groupBy('mt_sub_sektor.id_sub_sektor', 'mt_sub_sektor.sub_sektor_name', 'mt_sub_sektor.description', 'mt_sub_sektor.icon')
        ->get();
    	$slider         = DB::table('galeri')->where('jenis_galeri','Homepage')->limit(5)->orderBy('id_galeri', 'DESC')->get();
        $layanan        = DB::table('berita')->where(array('jenis_berita'=>'Layanan','status_berita'=>'Publish'))->limit(3)->orderBy('urutan', 'ASC')->get();
        $news           = new Berita_model();
        $berita         = $news->home();

        $data = array(  'title'         => $site_config->namaweb.' - '.$site_config->tagline,
                        'deskripsi'     => $site_config->namaweb.' - '.$site_config->tagline,
                        'keywords'      => $site_config->namaweb.' - '.$site_config->tagline,
                        'slider'        => $slider,
                        'site_config'   => $site_config,
                        'berita'        => $berita,
                        'beritas'       => $berita,
                        'layanan'       => $layanan,
                        'video'         => $video,
                        'sub_sektor'    => $sub_sektor,
                        'content'       => 'home/index'
                    );
        return view('layout/wrapper',$data);
    }

    // Homepage
    public function javawebmedia()
    {
        $site_config   = DB::table('konfigurasi')->first();
        $news   = new Berita_model();
        $berita = $news->home();
        // Staff
        $kategori_staff  = DB::table('kategori_staff')->orderBy('urutan','ASC')->get();
        $layanan = DB::table('berita')->where(array('jenis_berita' => 'Layanan','status_berita' => 'Publish'))->orderBy('urutan', 'ASC')->get();

        $data = array(  'title'     => 'Tentang '.$site_config->namaweb,
                        'deskripsi' => 'Tentang '.$site_config->namaweb,
                        'keywords'  => 'Tentang '.$site_config->namaweb,
                        'site_config'      => $site_config,
                        'berita'    => $berita,
                        'layanan'   => $layanan,
                        'kategori_staff'     => $kategori_staff,
                        'content'   => 'home/aws'
                    );
        return view('layout/wrapper',$data);
    }

    // kontak
    public function kontak()
    {
        $site_config   = DB::table('konfigurasi')->first();

        $data = array(  'title'     => 'Menghubungi '.$site_config->namaweb,
                        'deskripsi' => 'Kontak '.$site_config->namaweb,
                        'keywords'  => 'Kontak '.$site_config->namaweb,
                        'site_config'      => $site_config,
                        'content'   => 'home/kontak'
                    );
        return view('layout/wrapper',$data);
    }

    // kontak
    public function ekraf()
    {
        $site_config   = DB::table('konfigurasi')->first();
        $sub_sektor     = DB::table('mt_sub_sektor')
            ->select('mt_sub_sektor.id_sub_sektor', 'mt_sub_sektor.sub_sektor_name', 'mt_sub_sektor.description', 'mt_sub_sektor.icon', DB::raw('COUNT(subject_data.id_sub_sector) AS total_data'))
            ->leftJoin('subject_data', 'mt_sub_sektor.id_sub_sektor', '=', 'subject_data.id_sub_sector')
            ->groupBy('mt_sub_sektor.id_sub_sektor', 'mt_sub_sektor.sub_sektor_name', 'mt_sub_sektor.description', 'mt_sub_sektor.icon')
            ->get();
        $sub_sektor_side    = DB::table('mt_sub_sektor')->orderBy('sub_sektor_name', 'ASC')->get();
        $subject_data    = DB::table('subject_data')->orderBy('id_sub_sector', 'ASC')->get();
        $category_business    = DB::table('mt_category_business as c')
            ->select('c.id_category_business', 'c.category_business', DB::raw('COUNT(t.id_category_business) AS total_data'))
            ->leftJoin('subject_data as t', 'c.id_category_business', '=', 't.id_category_business')
            ->groupBy('c.id_category_business', 'c.category_business')
            ->get();


        $data = array(
            'title'             => 'Menghubungi ' . $site_config->namaweb,
            'deskripsi'        => 'ekraf ' . $site_config->namaweb,
            'keywords'         => 'ekraf ' . $site_config->namaweb,
            'site_config'      => $site_config,
            'subject_data'      => $subject_data,
            'sub_sektor'           => $sub_sektor,
            'sub_sektor_side'           => $sub_sektor_side,
            'category_business'     => $category_business,
            'content'          => 'ekraf/index'
        );
        return view('layout/wrapper', $data);
    }

}
