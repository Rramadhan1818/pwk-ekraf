-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 07:28 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwk_ekraf`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_agenda` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_agenda` varchar(255) NOT NULL,
  `judul_agenda` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_agenda` varchar(20) NOT NULL,
  `jenis_agenda` varchar(20) NOT NULL,
  `keywords` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT 0,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `tempat` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `id_user`, `id_kategori_agenda`, `bahasa`, `slug_agenda`, `judul_agenda`, `isi`, `status_agenda`, `jenis_agenda`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `jam_mulai`, `jam_selesai`, `tempat`, `google_map`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 4, 6, 'ID', 'latihan-agenda', 'Latihan Agenda', '<p>Latihan</p>', 'Publish', 'Agenda', 'adad', 'creative-hub-1697734976.jpg', 'daad', 0, NULL, '2020-09-12', '2020-09-12', '08:00:00', '08:00:00', 'Connect', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7930.3386078467065!2d106.82893243028725!3d-6.372131203377098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ed5d166b756d%3A0x41d8cdc14c819774!2sDepok%20Town%20Square!5e0!3m2!1sen!2sid!4v1579565022446!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '2020-09-12 23:46:53', '2020-09-12 23:42:16', '2023-10-19 17:02:56'),
(2, 4, 6, 'ID', 'pelantikan-ekraf', 'Pelantikan Ekraf', '<p>lorem ipsum dolor</p>', 'Publish', 'Event', NULL, 'diplay-web-1697734960.png', NULL, 0, NULL, '2023-09-14', '2023-09-14', '08:00:00', '08:00:00', 'Connect', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7930.3386078467065!2d106.82893243028725!3d-6.372131203377098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ed5d166b756d%3A0x41d8cdc14c819774!2sDepok%20Town%20Square!5e0!3m2!1sen!2sid!4v1579565022446!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '2023-09-14 14:16:03', '2023-09-14 14:13:24', '2023-10-19 17:02:42'),
(3, 4, 6, 'ID', 'komunitas-pena-dan-lensa', 'Komunitas Pena dan Lensa', '<p>adsdsadsa</p>', 'Publish', 'Event', 'adsdsa', 'whatsapp-image-2023-05-03-at-160446-1694701573.jpg', NULL, 0, NULL, '2023-09-14', '2023-09-14', '08:00:00', '08:00:00', 'Connect', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7930.3386078467065!2d106.82893243028725!3d-6.372131203377098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ed5d166b756d%3A0x41d8cdc14c819774!2sDepok%20Town%20Square!5e0!3m2!1sen!2sid!4v1579565022446!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '2023-09-14 14:24:17', '2023-09-14 14:20:11', '2023-10-19 17:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT 0,
  `bahasa` enum('ID','EN') NOT NULL,
  `updater` varchar(32) DEFAULT '-',
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) DEFAULT 'Berita',
  `keywords` text DEFAULT '',
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `bahasa`, `updater`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(8, 4, 0, 'ID', '', 'kursus-wordpress-mastering-cms', 'Kursus Wordpress (Mastering CMS)', '<h2>Deskripsi ringkas</h2>\r\n\r\n<p>Anda akan belajar membangun website pribadi, perusahaan, toko online dengan platform CMS (Content Management System) Wordpress dan database MySQL. Kursus ini tidak memerlukan koding yang berat. Cocok untuk yang ingin membuat website instan dengan cepat.</p>\r\n\r\n<hr />\r\n<p>Anda akan belajar membangun website pribadi, perusahaan,&nbsp;<strong>toko online&nbsp;</strong>dengan platform&nbsp;<strong>CMS (<em>Content Management System)&nbsp;</em>Wordpress</strong>&nbsp;dan database MySQL. Kursus ini tidak memerlukan koding yang berat. Cocok untuk yang ingin membuat website instan dengan cepat.</p>\r\n\r\n<h2><a name=\"_Toc32320282\"></a>Materi kursus</h2>\r\n\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n\r\n<ul>\r\n	<li>Dasar-dasar HTML5, CSS3 dan Bootstrap</li>\r\n	<li>Pembuatan website profil perusahaan dengan Wordpress</li>\r\n	<li>Pembuatan website&nbsp;<strong><em>online store</em></strong>&nbsp;dengan Wordpress dengan plugin Woocommerce</li>\r\n</ul>\r\n\r\n<h2><a name=\"_Toc32320283\"></a>Tujuan Kursus</h2>\r\n\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Design</strong>, Anda dapat:</p>\r\n\r\n<ul>\r\n	<li>Mengelola konten website dengan CMS.</li>\r\n	<li>Membangun website profil perusahaan dan&nbsp;<strong><em>online store</em></strong>&nbsp;dengan CMS Wordpress</li>\r\n	<li>Bekerja sebagai&nbsp;<strong>Content Creator dan Admin Toko Online.</strong></li>\r\n</ul>\r\n\r\n<h2><a name=\"_Toc32320284\"></a>Urutan materi</h2>\r\n\r\n<ol>\r\n	<li>Installasi Software pendukung</li>\r\n	<li>Dasar-dasar layouting dengan HTML dan CSS</li>\r\n	<li>Installasi CMS Wordpress</li>\r\n	<li>Pembuatan website&nbsp;<strong><em>company profile</em></strong></li>\r\n	<li>Mengelola plugin, widget dan menu</li>\r\n	<li>Memilih, mengelola dan mengubah template Wordpress</li>\r\n	<li>Pembuatan toko online dengan Plugin Woocommerce</li>\r\n	<li>Pengelolaan konten website, produk dan order toko online</li>\r\n	<li>Optimasi website Wordpress</li>\r\n	<li>Security website Wordpress</li>\r\n	<li>Pendaftaran website&nbsp;<em>Google Webmaster, Google Anayltic dan Google Business</em></li>\r\n</ol>\r\n\r\n<h2><a name=\"_Toc32320285\"></a>Software yang digunakan</h2>\r\n\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar</p>\r\n\r\n<h3>&nbsp;</h3>', 'Publish', 'Layanan', 'Anda akan belajar membangun website pribadi, perusahaan, toko online dengan Wordpress. Kursus ini tidak memerlukan koding yang berat. Cocok untuk membuat website instan dengan cepat.', 'creative-hub-1695391750.jpg', 'fa fa-globe', 82, 3, NULL, NULL, '2020-01-16 08:04:58', '2020-01-16 08:01:54', '2023-09-22 14:09:11'),
(9, 4, 0, 'ID', '', 'kursus-advanced-web-programming', 'Kursus Advanced Web Programming', '<h2>Deskripsi ringkas</h2>\r\n\r\n<p>Anda akan belajar membangun aplikasi berbasis website (web based application) dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter/Laravel dan database MySQL.</p>\r\n\r\n<hr />\r\n<p>Anda akan belajar membangun&nbsp;<strong>aplikasi berbasis website (<em>web based application</em>)</strong>&nbsp;dengan menggunakan bootstrap, framework JavaScript,&nbsp;<strong><em>PHP framework</em></strong><em>&nbsp;<strong>Codeigniter/Laravel&nbsp;</strong></em>dan database MySQL.</p>\r\n\r\n<h2><a name=\"_Toc32320307\"></a>Materi kursus</h2>\r\n\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n\r\n<ul>\r\n	<li>Membangun aplikasi berbasis website</li>\r\n	<li>Membuat laporan dengan berbagai format (PDF, Excel, Word dll)</li>\r\n	<li>Membangun web service (API)</li>\r\n	<li>Membangun aplikasi web dengan berbagai database (MySQL, Oracle, SQL Server, PostgreSQL dll)</li>\r\n	<li><strong><em>Data visualization</em></strong>&nbsp;(format grafik dan peta digital)</li>\r\n</ul>\r\n\r\n<h2><a name=\"_Toc32320308\"></a>Tujuan Kursus</h2>\r\n\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n\r\n<ul>\r\n	<li>Membangun aplikasi kompleks berbasis web dengan berbagai database</li>\r\n	<li>Bekerja sebagai&nbsp;<strong>&nbsp;Senior Web Web Developer.</strong></li>\r\n</ul>\r\n\r\n<h2><a name=\"_Toc32320309\"></a>Urutan materi</h2>\r\n\r\n<ol>\r\n	<li>Installasi Software pendukung</li>\r\n	<li>Merencanakan, membuat &amp; mengelola database MySQL</li>\r\n	<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework PHP</li>\r\n	<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n	<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n	<li>CRUD Kompleks dengan relasi database</li>\r\n	<li>Membuat berbagai jenis laporan (PDF, Excel, Word, Web Service/API, dll)</li>\r\n	<li>Membuat data visualization (Grafik dan Peta Digital)</li>\r\n	<li>Security review atas aplikasi yang telah dibuat</li>\r\n	<li>Version control dengan Git</li>\r\n	<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n\r\n<h2><a name=\"_Toc32320310\"></a>Software yang digunakan</h2>\r\n\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>', 'Publish', 'Layanan', 'Anda akan belajar membangun aplikasi berbasis website (web based application) dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter/Laravel dan database MySQL.', 'creative-hub-1695391742.jpg', 'fa fa-laptop', 69, 2, NULL, NULL, '2020-01-16 08:08:16', '2020-01-16 08:07:46', '2023-09-22 14:09:03'),
(18, 4, 0, 'ID', '-', 'kursus-web-development', 'Kursus Web Development', '<h2>Deskripsi ringkas</h2>\r\n\r\n<p>Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Larevel dan database MySQL.</p>\r\n\r\n<hr />\r\n<p>Anda akan belajar membangun website&nbsp;<strong>profil perusahaan</strong>&nbsp;dengan menggunakan bootstrap, framework JavaScript,&nbsp;<strong><em>PHP framework</em></strong><em>&nbsp;<strong>Codeigniter / Laravel</strong></em>&nbsp;dan database MySQL.</p>\r\n\r\n<h2><a name=\"_Toc32320297\"></a>Materi kursus</h2>\r\n\r\n<p>Anda akan mempelajari hal-hal berikut ini:</p>\r\n\r\n<ul>\r\n	<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n	<li>Mengembangkan website profil perusahaan dengan framework Codeigniter / Laraveldan database MySQL</li>\r\n	<li>Integrasi framework JavaScript dengan Codeigniter / Laravel</li>\r\n</ul>\r\n\r\n<h2><a name=\"_Toc32320298\"></a>Tujuan Kursus</h2>\r\n\r\n<p>Setelah Anda belajar&nbsp;di&nbsp;<strong>Kursus Web Development</strong>, Anda akan dapat:</p>\r\n\r\n<ul>\r\n	<li>Membuat website profil perusahaan (<em>company profile</em>) dengan framework Codeigniter / Laravel dan database MySQL</li>\r\n	<li>Aplikasi pendaftaran online sederhana</li>\r\n	<li>Bekerja sebagai&nbsp;<strong>&nbsp;Web Programmer&nbsp;</strong>atau&nbsp;<strong>Web Developer dengan keahlian Bootstrap, HTML, CSS, JavaScript dan framework Codeigniter / Larevel.</strong></li>\r\n</ul>\r\n\r\n<h2><a name=\"_Toc32320299\"></a>Urutan materi</h2>\r\n\r\n<ol>\r\n	<li>Installasi Software pendukung</li>\r\n	<li>Dasar-dasar HTML, CSS dan Bootstrap</li>\r\n	<li>Membuat&nbsp;<em><strong>Brief project ,&nbsp;</strong></em>yaitu merencanakan website yang akan dibuat sehingga nantinya bisa diwujudkan menjadi website sebenarnya</li>\r\n	<li>Merencanakan, membuat dan mengelola database MySQL</li>\r\n	<li>Integrasi template&nbsp;<em>front end&nbsp;</em>dan&nbsp;<em>back end&nbsp;</em>dengan framework Codeigniter / Laravel</li>\r\n	<li>Authentication (Login, Logout &amp; Proteksi Halaman)</li>\r\n	<li>CRUD&nbsp;<em>(Create, Read, Update &amp; Delete)&nbsp;</em>Dasar</li>\r\n	<li>CRUD Kompleks dengan relasi database</li>\r\n	<li>Laporan PDF dengan MPDF</li>\r\n	<li>Security review atas aplikasi yang telah dibuat</li>\r\n	<li>Upload web ke hosting atau meng-onlinekan website</li>\r\n</ol>\r\n\r\n<h2><a name=\"_Toc32320300\"></a>Software yang digunakan</h2>\r\n\r\n<p>XAMPP, Sublime Text/Notepad/Visual Studio, Browser, Aplikasi pengolah gambar, Composer dll.</p>', 'Publish', 'Layanan', 'Anda akan belajar membangun website profil perusahaan dengan menggunakan bootstrap, framework JavaScript, PHP framework Codeigniter / Larevel dan database MySQL.', 'creative-hub-1695391733.jpg', NULL, NULL, 1, NULL, NULL, '2020-09-15 23:29:49', '2020-09-15 23:29:03', '2023-09-22 14:08:54'),
(19, 4, 6, 'ID', '-', 'tips-menerima-proyek-website-untuk-pemula', 'TIPS MENERIMA PROYEK WEBSITE UNTUK PEMULA', '<h2>Kenapa ada Tips ini?</h2>\r\n\r\n<p>Banyak teman-teman Programmer pemula yang belum memiliki keberanian untuk mulai menerima proyek website. Mudah-mudahan dengan Tips sederhana ini, teman-teman semua mulai berani&nbsp;<strong>Belajar yang dibayarin&nbsp;</strong>dengan menerima Proyek Web.<br />\r\nSemoga Bermanfaat ya.</p>\r\n\r\n<p>Untuk mendapatkan Konsultasi &amp; Contoh dokumen pendukung (Kontrak, Proposal, Catatan Kebutuhan dll), silakan kontak:<br />\r\n<strong>Andoyo (085715100485)</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/3-13-1024x1024.jpg\" /></p>\r\n\r\n<p>#1 Catat kebutuhan client</p>\r\n\r\n<h2>#1 Catat kebutuhan client</h2>\r\n\r\n<p>Diskusikan kebutuhan dari client yang sesungguhnya.</p>\r\n\r\n<ul>\r\n	<li><strong>Tanyakan kebutuhannya</strong>&nbsp;apa saja, mulai dari websitenya untuk apa, fiturnya apa dsb. Jika ada yang kurang jelas, tanyakan.</li>\r\n	<li><strong>Buat Catatan</strong>&nbsp;dari hasil diskusi tersebut</li>\r\n	<li><strong>Bagikan Catatan</strong>&nbsp;tersebut kepada calon client, minta respon dan feedbacknya untuk mengkonfirmasi kebutuhan.</li>\r\n</ul>\r\n\r\n<p><strong>NOTE</strong>: Hindari memberikan perkiraan biaya pada client di tahap ini. Lihat&nbsp;<strong>#2 Buat estimasi biaya</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/4-10-1024x1024.jpg\" /></p>\r\n\r\n<p>#2&nbsp;Buat Estimasi Biaya</p>\r\n\r\n<h2>#2&nbsp;Buat Estimasi Biaya</h2>\r\n\r\n<p>Setelah berhasil memetakan kebutuhannya, buatlah estimasi biaya.</p>\r\n\r\n<ul>\r\n	<li>Hitung&nbsp;<strong>waktu pengerjaan</strong>&nbsp;per-fitur dari aplikasi/website tersebut. Konversi dalam jam.</li>\r\n	<li>Hitung kira-kira Anda mau&nbsp;<strong>dibayar berapa perjam</strong>&nbsp;dalam mengerjakan website tersebut</li>\r\n	<li><strong>Buat akumulasi</strong>&nbsp;dari perhitungan biaya tersebut&nbsp;<strong>ditambah minimal 30%</strong>. Misal Anda menghitung totalnya Rp.1.000.000, maka nilai proyeknya minimal adalah Rp.1.300.000</li>\r\n</ul>\r\n\r\n<p><strong>NOTE:&nbsp;</strong>Jika client bertanya berapa biayanya. Jawab<strong>&nbsp;&ldquo;Kami akan kirimkan proposal ya pak/bu&rdquo;</strong>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/5-6-1024x1024.jpg\" /></p>\r\n\r\n<p>#3&nbsp;Kirimkan Proposal</p>\r\n\r\n<h2>#3&nbsp;Kirimkan Proposal</h2>\r\n\r\n<p>Buat penawaran dengan Proposal yang menarik. Isinya minimal adalah:</p>\r\n\r\n<ul>\r\n	<li>Halaman&nbsp;<strong>Cover yang bagus</strong></li>\r\n	<li>Surat penawaran.&nbsp;<strong><em>Buat minimal 2 pilihan</em></strong><strong>&nbsp;</strong>harga, misal:&nbsp;<strong>Paket 1 Website Lengkap Rp. 1.300.000</strong>, lalu&nbsp;<strong>Paket 2 Website Lengkap &amp; Hosting Unlimeted Rp. 2.000.000,&nbsp;</strong>dan&nbsp;<strong>Paket 3 Website Lengkap, Hosting Unlimited &amp; Manual Book/Traing Rp. 2.500.000</strong>&nbsp;dst. Ini membuat client memilih dengan bantuan Anda</li>\r\n	<li><strong>Kirimkan proposal</strong>&nbsp;dengan baik dan sopan. Beri tahu calon client jika sudah dikirim.</li>\r\n	<li>Proposal dikirim sebaiknya&nbsp;<strong>tidak lebih dari 3 hari&nbsp;</strong>sejak diskusi kebutuhan dilakukan</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/6-7-1024x1024.jpg\" /></p>\r\n\r\n<p>#4&nbsp;Perjanjian Kerjasama</p>\r\n\r\n<h2>#4&nbsp;Perjanjian Kerjasama</h2>\r\n\r\n<p>Setelah&nbsp;<strong>Proposal Disetujui</strong>&nbsp;dan&nbsp;<strong>Disepakati&nbsp;</strong>besaran biaya dari proyek, maka buatlah&nbsp;<strong>Kontrak kerja</strong>. Isinya minimal adalah?</p>\r\n\r\n<ul>\r\n	<li><strong>Skup pekerjaan</strong>, buat rincian mendetail.</li>\r\n	<li><strong>Durasi Pekerjaan</strong>, misalnya 30 hari</li>\r\n	<li><strong>Termin Pembayaran</strong>, misalnya 2x pembayaran. DP Awal 50% dan 50% setelah serah terima.</li>\r\n	<li>Sepakati jika ada&nbsp;<strong>pekerjaan tambahan&nbsp;</strong>bagaimana? Tambah biayakah?</li>\r\n</ul>\r\n\r\n<p>Biasanya kontrak kerja sederhana antara 1-2 halaman A4. Ga banyak kan? Bisa menggunakan materai, bisa juga tidak. Sepakati bersama saja dengan client ya. Buat minimal 2 salinan kontrak kerja, 1 untuk Anda dan 1 untuk client.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/7-5-1024x1024.jpg\" /></p>\r\n\r\n<p>#5&nbsp;Buat Invoice yang Baik</p>\r\n\r\n<h2>#5&nbsp;Buat Invoice yang Baik</h2>\r\n\r\n<p>Hindari menagih client hanya dengan melalui telepon atau pesan chatting (misal via WA).<br />\r\nMaka,&nbsp;<strong>buatlah invoice yang baik</strong>. Sekaligus untuk branding diri Anda. Isinya minimal:</p>\r\n\r\n<ul>\r\n	<li><strong>Ditujukan ke siapa?&nbsp;</strong>Tulis nama client dengan benar</li>\r\n	<li><strong>Tagihan Termin keberapa</strong>? Lihat Kontrak Kerja</li>\r\n	<li><strong>Besar tagihan berapa</strong>? Tulisa angka dan terbilangnya. Mis:&nbsp;<strong>Rp. 1.000 (Seribu rupiah)</strong></li>\r\n	<li><strong>Itu Duit Dikirim kemana?</strong>&nbsp;Cantumkan nomor rekening lengkap jika pembayaran diharapkan via transfer</li>\r\n	<li><strong>Tanda tangan dan nama jelas Anda</strong></li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/8-3-1024x1024.jpg\" /></p>\r\n\r\n<p>#6&nbsp;Laporkan Perkembangan</p>\r\n\r\n<h2>#6&nbsp;Laporkan Perkembangan</h2>\r\n\r\n<p>Selalu laporkan perkembangan pekerjaan Anda. Jangan menunggu client menelpon Anda baru membuat laporan.</p>\r\n\r\n<ul>\r\n	<li>Buat&nbsp;<strong>Periode Laporan</strong>, misalnya 3 hari sekali</li>\r\n	<li>Tetap&nbsp;<strong>Laporkan Meskipun tidak ada perkembangan</strong>.</li>\r\n	<li><strong>Selalu berkomunikasi</strong>&nbsp;dan diskusikan dengan client jika ada kesulitan yang Anda alami.</li>\r\n	<li><strong>Selesaikan dengan bertanggung jawab</strong>. Selesaikan pekerjaan Anda, bahkan jika terpaksa harus dilimpahkan ke orang lain, selesaikan dengan baik-baik.</li>\r\n</ul>\r\n\r\n<p>Mulailah belajar membuat pola atau format laporan yang menjadi ciri khas Anda. Bisa via chat atau bahkan dengan file PDF yang menarik.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/9-1024x1024.jpg\" /></p>\r\n\r\n<p>#7&nbsp;Training &amp; Manual Book</p>\r\n\r\n<h2>#7&nbsp;Training &amp; Manual Book</h2>\r\n\r\n<p>nda tentu akan capek jika setelah serah terima Client atau staffnya berkali-kali menelpon Anda menanyakan bagaimana cara mengupdate websitenya. Ga enak kan? Oleh karena itu:</p>\r\n\r\n<ul>\r\n	<li>Sediakan&nbsp;<strong>Training Client/Staff</strong>, ini bisa Anda cantumkan dalam estimasi harga. Perhitungkan biaya training staff.</li>\r\n	<li>Buat&nbsp;<strong>Manual Book</strong>&nbsp;atau bahkan&nbsp;<strong>Video Panduan</strong>&nbsp;cara mengoperasikan website yang Anda buat yang bisa diakses langsung di website mereka.</li>\r\n</ul>\r\n\r\n<p>Ini akan mempermudah pekerjaan Anda mendatang</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/10-1024x1024.jpg\" /></p>\r\n\r\n<p>#8&nbsp;Serah Terima Pekerjaan</p>\r\n\r\n<h2>#8&nbsp;Serah Terima Pekerjaan</h2>\r\n\r\n<p>Akhirnya selesai juga proyeknya. Nah saatnya menyerahkan hasil pekerjaan Anda kepada client.<br />\r\nApa saja yang sebaiknya Anda serahkan?</p>\r\n\r\n<ul>\r\n	<li>Data&nbsp;<strong>Akses Username Password&nbsp;</strong>akun Hosting dan website</li>\r\n	<li><strong>Source Code</strong>, semuanya. Berikan kepada client</li>\r\n	<li><strong>Dokumentasi Pekerjaan</strong>, mulai dari foto, kontrak dll</li>\r\n	<li><strong>Manual Book</strong>&nbsp;dan&nbsp;<strong>Video Panduan</strong>&nbsp;(jika ada). Serahkan kepada client. Bila perlu cetak Manual Book tadi.</li>\r\n	<li>Jaga selalu&nbsp;<strong>Hubungan Baik</strong>&nbsp;dengan client</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/08/11-1024x1024.jpg\" /></p>\r\n\r\n<p>#9&nbsp;Berdoa &amp; Bersyukur</p>\r\n\r\n<h2>#9&nbsp;Berdoa &amp; Bersyukur</h2>\r\n\r\n<p>Selalu berdoa dan bersyukur, telah diperkenalkan pada Client yang baik.<br />\r\nDiberi kesempatan untuk belajar sekaligus bekerja. Maka sudah sepatutnya kita Selalu Berdoa dan Bersyukur pada Tuhan Yang Maha Esa.</p>', 'Publish', 'Berita', 'TIPS MENERIMA PROYEK WEBSITE UNTUK PEMULA', 'creative-hub-1697992919.jpg', NULL, NULL, NULL, NULL, NULL, '2020-09-15 23:43:00', '2020-09-15 23:41:16', '2023-10-22 16:42:00'),
(21, 4, 6, 'ID', '-', '3-alasan-kenapa-css-js-sebaiknya-di-minify', '3 Alasan Kenapa CSS & JS sebaiknya di-Minify?', '<p>Minification is the process of minimizing code and markup in your web pages and script files. It&rsquo;s one of the main methods used to reduce load times and bandwidth usage on websites.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/2-1024x1024.jpg\" /></p>\r\n\r\n<p>CSS Minify &ndash; Kursus Web Java Web Media</p>\r\n\r\n<p>Minification dramatically improves site speed and accessibility, directly translating into a better user experience. It&rsquo;s also beneficial to users accessing your website through a limited data plan and who would like to save on their bandwidth usage while surfing the web.</p>\r\n\r\n<p>Sumber: https://www.imperva.com/learn/performance/minification</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/4-1-1024x1024.jpg\" /></p>\r\n\r\n<p>Kode dikompres &ndash; Kursus Web Java Web Media</p>\r\n\r\n<h2>Kenapa &ldquo;.min&rdquo;?</h2>\r\n\r\n<p>Nama &ldquo;<strong>.min</strong>&rdquo; sebelum ekstensi file (misal&nbsp;<strong>bootstrap.min.css</strong>&nbsp;atau&nbsp;<strong>bootstrap.min.js</strong>) menunjukkan dia adalah &ldquo;<strong>minify version</strong>&rdquo; yang artinya?</p>\r\n\r\n<ul>\r\n	<li><strong>Kode telah dikompres</strong>, bahkan spasi pun dibuang</li>\r\n	<li><strong>Ukuran file jadi lebih kecil</strong>&nbsp;dibanding dengan yang &ldquo;<strong>Non Minify</strong>&ldquo;</li>\r\n</ul>\r\n\r\n<h2>Sebaiknya gunakan &ldquo;minify&rdquo;</h2>\r\n\r\n<p>Ada banyak alasan kenapa saat Anda membuat web sebaiknya menggunakan CSS &amp; Javascript versi minify.</p>\r\n\r\n<p>Nah, kali ini&nbsp;<strong>Java Web Media&nbsp;</strong>akan menjelaskannya kenapa. Postingan berikutnya kita akan bahas bagaimana &ldquo;<strong>Cara membuat minify CSS &amp; Javascript&rdquo;&nbsp;</strong>yaa.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/6-1-1024x1024.jpg\" /></p>\r\n\r\n<p>Ukuran File Jadi Kecil &ndash; Kursus Web Java Web Media</p>\r\n\r\n<h2>#1 Ukuran File Jadi Kecil</h2>\r\n\r\n<p>File CSS &amp; JavaScript yang di-<strong>minify</strong>&nbsp;pasti ukurannya lebih kecil. Hampir semua spasi, komentar dan dokumentasi akan dibuang saat dilakukan &ldquo;<strong>minification</strong>&ldquo;, sehingga file lebih compact.</p>\r\n\r\n<p>Dengan&nbsp;<strong>minification&nbsp;</strong>ukuran&nbsp;<strong>Javascript&nbsp;</strong>bisa&nbsp;<strong>48</strong>% lebih kecil dan&nbsp;<strong>CSS&nbsp;</strong>bisa&nbsp;<strong>60</strong>% dari ukuran asli. Mantap kan?</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/7-1-1024x1024.jpg\" /></p>\r\n\r\n<p>Lebih cepat diakses &ndash; Kursus Web Java Web Media</p>\r\n\r\n<h2>#2 Website jadi lebih cepat diakses</h2>\r\n\r\n<p>Karena ukuran file menjadi kecil, maka loading website menjadi lebih cepat. Ini adalah salah satu teknik&nbsp;<strong>Front End Optimization&nbsp;</strong>(FEO)<strong>.&nbsp;</strong>Dampaknya, ukuran website secara keseluruhan juga akan lebih kecil dan ringan.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/8-1-1024x1024.jpg\" /></p>\r\n\r\n<p>Hemat Bandwidth &ndash; Kursus Web Java Web Media</p>\r\n\r\n<h2>#3&nbsp;Hemat Bandwith dan Space Hosting/Server</h2>\r\n\r\n<p>Karena ukuran file menjadi kecil, space hosting/server Anda menjadi lebih lega. Bandwidth juga jadi lebih hemat.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/9-1024x1024.jpg\" /></p>\r\n\r\n<p>Online Store &ndash; Kursus Web Java Web Media</p>\r\n\r\n<h2>Mau kursus?</h2>\r\n\r\n<p>Mau kursus web bikin Toko Online? Kursus di Java Web Media aja ya.</p>', 'Publish', 'Berita', 'Minification is the process of minimizing code and markup in your web pages and script files. It’s one of the main methods used to reduce load times and bandwidth usage on websites.', 'creative-hub-1697992905.jpg', NULL, NULL, NULL, NULL, NULL, '2020-09-15 23:57:11', '2020-09-15 23:56:44', '2023-10-22 16:41:46'),
(22, 4, 8, 'ID', '-', '7-konten-website-company-profile-yang-harus-anda-minta-ke-client-atau-anda-buat', '7  Konten Website Company Profile yang Harus Anda Minta ke Client (atau Anda Buat)', '<p><strong>&ldquo;Konten&nbsp;website menjadi salah satu Bagian Paling Lama dalam Pengerjaan Proyek Website.&rdquo;&nbsp; (Andoyo &ndash; Java Web Media)</strong></p>\r\n\r\n<p>Di posting sebelumnya Anda sudah belajar bagaimana mempersiapkan Proposal dan Kontrak Kerja.&nbsp;</p>\r\n\r\n<p>Nah,&nbsp;pada tahap ini Anda mulai bekerja. Anda akan belajar mempersiapkan konten apa saja yang harus&nbsp;<strong>Anda minta ke client&nbsp;</strong>atau&nbsp;<strong>Anda buat sendiri</strong>&nbsp;untuk membuat sebuah website&nbsp;<strong>Company Profile.</strong></p>\r\n\r\n<p>Buatlah list kebutuhan konten ini, kemudian kirimkan ke Client. Tanyakan kapan konten tersebut bisa tersedia.</p>\r\n\r\n<p>Nah, agar nyambung silakan membaca ini dulu yah:</p>\r\n\r\n<ol>\r\n	<li><a href=\"https://javawebmedia.com/blog/tips-menerima-proyek-website-untuk-pemula/\">Tips Menerima Proyek Website untuk Pemula</a></li>\r\n	<li><a href=\"https://javawebmedia.com/blog/1-catat-kebutuhan-client-6-pertanyaan-yang-harus-diajukan-ke-client/\">#1 Catat Kebutuhan Client: 6 Pertanyaan yang harus diajukan ke Client</a></li>\r\n	<li><a href=\"https://javawebmedia.com/blog/2-buat-estimasi-biaya-6-biaya-proyek-website-yang-harus-dihitung-oleh-web-programmer-pemula/\">#2 Buat Estimasi Biaya: 6 Biaya Proyek Website&nbsp;yang Harus Dihitung oleh Web Programmer Pemula</a></li>\r\n	<li><a href=\"https://javawebmedia.com/blog/3-kirimkan-proposal-5-isi-proposal-website-untuk-calon-client/\">#3 Kirimkan Proposal: 5 Isi Proposal Website untuk Calon Client</a></li>\r\n	<li><a href=\"https://javawebmedia.com/blog/4-perjanjian-kerjasama-4-isi-kontrak-kerja/\">#4 Perjanjian Kerjasama: 4 Isi Kontrak Kerja</a></li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/3-2-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>#1 Nama website &amp; Slogannya</strong></h2>\r\n\r\n<p>Tanyakan ke client apa nama website dan slogan yang akan digunakan. Contoh:</p>\r\n\r\n<ul>\r\n	<li><strong>Nama website:</strong>&nbsp;<strong>Dokter Mobil</strong></li>\r\n	<li><strong>Slogan:</strong>&nbsp;<strong>Bengkel Mobil Terdekat &ndash; Spesialis Upgrade Performance</strong></li>\r\n</ul>\r\n\r\n<p>atau Misalnya&nbsp;<strong>Java Web Media &ndash; Pusat Kursus Desain, Web, Programming &amp; Statistik.&nbsp;</strong>Nah, silakan diskusikan dengan client sebaik-baiknya.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/4-2-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>#2 Logo &amp; Icon Website</strong></h2>\r\n\r\n<p>Mintalah ke client&nbsp;<strong>Logo &amp; Icon&nbsp;</strong>yang akan digunakan di dalam website mereka. Mintalah logo dengan resolusi setidaknya&nbsp;<strong>1.080 pixel</strong>, atau bahkan jika memiliki file vectornya, mintalah. Logo &amp; icon dengan format vector tentu lebih mudah untuk Anda olah.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/5-2-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>#3 Data Profil Website</strong></h2>\r\n\r\n<p>Profil website atau&nbsp;<strong>About Us</strong>&nbsp;dari website harus ada. Mintalah antara lain:</p>\r\n\r\n<ul>\r\n	<li><strong>Sejarah</strong>/profil</li>\r\n	<li><strong>Visi &amp; Misi</strong></li>\r\n	<li><strong>Kontak (</strong>alamat, telepon, HP, email dst)</li>\r\n	<li>Link akun&nbsp;<strong>media sosial</strong></li>\r\n	<li><strong>Team</strong>&nbsp;(Nama, foto, jabatan &amp; deskripsi)</li>\r\n	<li><strong>Value</strong>&nbsp;(nilai lebih) perusahaan</li>\r\n	<li>Data&nbsp;<strong>brand color&nbsp;</strong>(warna resmi) perusahaan. Misal&nbsp;<strong>Indosat&nbsp;</strong>identik dengan warna hijau dan kuning dst</li>\r\n	<li>Dan konten pendukung lainnya</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/6-2-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>#4 Produk &amp; Layanan</strong></h2>\r\n\r\n<p>Minta juga data produk &amp; layanan mereka, yang meliputi:</p>\r\n\r\n<ul>\r\n	<li><strong>Nama</strong>&nbsp;produk/layanan</li>\r\n	<li><strong>Harga&nbsp;</strong>produk/layanan</li>\r\n	<li><strong>Deskripsi&nbsp;</strong>ringkas &amp; lengkapnya</li>\r\n	<li><strong>Harga/Biaya&nbsp;</strong>produk &amp; layanan</li>\r\n	<li><strong>Kategori Produk</strong></li>\r\n	<li><strong>Gambar/Video&nbsp;</strong>pendukung produk/layanan yang akan dipasarkan</li>\r\n</ul>\r\n\r\n<p>Mintalah mereka untuk menyiapkan konten tersebut sebaik-baiknya.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/7-2-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>#5 Berita &amp; Article</strong></h2>\r\n\r\n<p>Minta setidaknya 2 konten berita/article untuk mengisi website yang isinya berkaitan erat dengan website yang akan dibangun:</p>\r\n\r\n<ul>\r\n	<li><strong>Judul&nbsp;</strong>artikel/berita</li>\r\n	<li><strong>Deskripsi&nbsp;</strong>artikel/berita</li>\r\n	<li><strong>Kategori&nbsp;</strong>artikel/berita</li>\r\n	<li><strong>Gambar/Video&nbsp;</strong>artikel/berita</li>\r\n</ul>\r\n\r\n<p>Panjang artikel ini setidaknya 2 paragraf.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/8-2-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>#6 File Pendukung</strong></h2>\r\n\r\n<p>Mintalah file-file pendukung website, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Foto-foto&nbsp;aktivitas perusahaan</li>\r\n	<li>Video</li>\r\n	<li>File-file pendukung (Misal: Pricelist, Leaflet, Brosur dsb)</li>\r\n	<li>Gambar-gambar ilustrasi</li>\r\n	<li>Dsb</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/9-2-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>#7 Portofolio Client</strong></h2>\r\n\r\n<p>Client biasanya sudah pernah mengerjakan pekerjaan sesuai produk &amp; layanan yang mereka miliki. Mintalah data-data client &amp; informasi atas portofolio tersebut.</p>\r\n\r\n<p>Mintalah nama client mereka, nama pekerjaan, deskripsi ringkasnya jika perlu dan foto-fotonya.</p>\r\n\r\n<p><img alt=\"\" src=\"https://javawebmedia.com/blog/wp-content/uploads/2020/07/10-1024x1024.png\" /></p>\r\n\r\n<p>Kursus Website Java Web Media</p>\r\n\r\n<h2><strong>Butuh contoh Dokumen Lengkap Tips Menerima Proyek Website untuk Pemula?</strong></h2>\r\n\r\n<p>Silakan&nbsp;Follow, Spam dan Comment di Instagram kami (<a href=\"https://www.instagram.com/javawebmedia/\">https://www.instagram.com/javawebmedia/</a>).</p>\r\n\r\n<p>Lalu kirim bukti ke:&nbsp;<strong>0857 1510 0485</strong></p>', 'Publish', 'Berita', '7  Konten Website Company Profile yang Harus Anda Minta ke Client (atau Anda Buat)', 'creative-hub-1698073855.jpg', NULL, NULL, NULL, NULL, NULL, '2020-09-16 00:01:35', '2020-09-15 23:59:58', '2023-10-23 15:10:55'),
(23, 4, 0, 'ID', '-', 'layanan-konsultasi-strategis', 'Layanan Konsultasi Strategis', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Layanan Konsultasi kami ideal untuk Anda saat membutuhkan dukungan dalam menyelaraskan tujuan strategis keberlanjutan perusahaan Anda dengan penatalayanan air yang baik dan mengembangkan rencana untuk tindakan tingkat wilayah operasional dan daerah tangkapan air. </span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Dari menilai kesiapan wilayah operasional Anda terhadap Standar AWS, hingga penilaian risiko air dalam rantai pasokan dan mengembangkan peta jalan menuju tindakan pengelolaan air yang baik di lokasi, rantai pasokan, dan tingkat daerah tangkapan, kami dapat membantu Anda dalam perjalanan. </span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Kami bekerja sama dengan penyedia layanan terakreditasi, kredensial profesional, dan terlatih AWS, bergantung pada kebutuhan spesifik perusahaan Anda. Ingin tahu lebih banyak? Hubungi kami dan untuk sesi konsultasi terbuka.</span></span></p>', 'Publish', 'Terjadi', 'Layanan Konsultasi Strategis', '26-image-section-aws-indonesia-contact-1600218408.jpg', NULL, NULL, 1, NULL, NULL, '2020-09-16 01:06:48', '2020-09-16 01:06:08', '2020-09-16 01:06:48'),
(24, 4, 0, 'ID', '-', 'pelatihan-standar-dan-sistem-aws', 'Pelatihan Standar dan Sistem AWS', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Program pelatihan Standar dan Sistem AWS interaktif selama 1, 2, dan 3 hari mencakup presentasi, studi kasus, serta latihan individu dan kelompok. </span></span></p>\r\n\r\n<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Berhasil menyelesaikan program pelatihan Spesialis memungkinkan Anda memenuhi syarat untuk menjadi penyedia layanan AWS yang terakreditasi, sebagai auditor, pelatih, dan konsultan. Ini juga mendukung Anda untuk membangun kapasitas internal untuk mengelola dan mengimplementasikan penatalayanan air dan sertifikasi AWS. Kami memberikan pelatihan dalam Bahasa Indonesia dan Bahasa Inggris.</span></span></p>', 'Publish', 'Terjadi', 'Pelatihan Standar dan Sistem AWS', '26-image-section-aws-indonesia-contact-1600218481.jpg', NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:08:01', '2020-09-16 01:07:31', '2020-09-16 01:08:01'),
(25, 4, 0, 'ID', '-', 'studi-kasus', 'Studi Kasus', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Jelajahi studi kasus Indonesia dan contoh penerapan penatalayanan air yang baik di seluruh Indonesia dari berbagai sektor.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Natural Rubber 2019 Hevea |</span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Natural Rubber Processing Site Online Survey 2019 Hevea I</span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Hospitality Sector Hotel Indigo Seminyak IHG |</span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">GAA Hevea Connect<strong>&nbsp;|&nbsp;</strong></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Brantas mapping |&nbsp;</span></span></li>\r\n</ul>', 'Publish', 'Materi', 'Studi Kasus', NULL, NULL, NULL, 1, NULL, NULL, '2020-09-16 01:26:05', '2020-09-16 01:23:28', '2020-09-16 01:26:05'),
(26, 4, 0, 'ID', '-', 'platform-e-tools-untuk-anggota-aws', 'Platform e-Tools untuk Anggota AWS', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Cari tahu lebih lanjut tentang e-standar AWS, Panduan juga Modul Pembelajaran Online penatalayanan air di <a href=\"https://tools.a4ws.org/my-account/subscriptions/\" style=\"color:#0563c1; text-decoration:underline\">AWS Tool Hub</a>. Akses gratis untuk semua Anggota AWS dan non-anggota dapat membayar biaya untuk membuat akun.</span></span></p>', 'Publish', 'Materi', 'Platform e-Tools untuk Anggota AWS', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:28:44', '2020-09-16 01:27:50', '2020-09-16 01:28:44'),
(27, 4, 0, 'ID', '-', 'webinars', 'Webinars', '<p><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Dapatkan wawasan Anda mengenai Standar dan Sistem AWS melalui webinar AWS dan diskusi penting lainnya tentang topik penatalayanan air di Indonesia.</span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">World Water Development Report 2020 Launch by UNESCO &amp; Climate Tracker </span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Lainnya: <a href=\"https://unesdoc.unesco.org/ark:/48223/pf0000372985.locale=en\" style=\"color:#0563c1; text-decoration:underline\">Laporan</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">GWPSEA Webinar COVID-19 Belajar dari Krisis untuk Pengelolaan Air Terpadu yang Lebih<br />\r\n	Rekaman: <a href=\"https://www.facebook.com/GlobalWaterPartnershipSoutheastAsia/videos/271658824268924/?_rdc=1&amp;_rdr\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Air Tanah untuk Tanah Air</span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Rekaman: <a href=\"bit.ly/youtube-airtanah\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Online Consultation &ndash; the Principles for Addressing Water-related Disaster Risk Reduction and COVID-19 </span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Lainnya: <a href=\"https://www.gwp.org/en/GWP-South-East-Asia/WE-ACT/keep-updated/News-and-Activities/2020/help-gwp-pan-asia-consultation-meeting/\" style=\"color:#0563c1; text-decoration:underline\">Summary</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">AWS Member Webinars: Spotlight on Indonesia Brantas River Basin, East Java</span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Rekaman: <a href=\"https://register.gotowebinar.com/recording/4530186227396155147\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n	<li><span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">World Water Week #AtHome 2020 &ndash; Water Stewardship in Agriculture</span></span><br />\r\n	<span style=\"font-size:10pt\"><span style=\"font-family:&quot;Arial Nova Light&quot;,sans-serif\">Rekaman: <a href=\"https://register.gotowebinar.com/recording/8511901561510833158\" style=\"color:#0563c1; text-decoration:underline\">Tersedia</a></span></span></li>\r\n</ul>', 'Publish', 'Materi', 'Webinars', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-16 01:31:45', '2020-09-16 01:30:55', '2020-09-16 01:31:45');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `bahasa`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal`) VALUES
(3, 1, 4, 'ID', 'The AWS Standard 2.0 Bahasa Indonesia', 'Download', '<p>Versi Bahasa Indonesia dari AWS Standar, Panduan dan Skoring Rubrik sudah tersedia online. <a href=\"https://a4ws.org/download-standard-2/\" style=\"color:#0563c1; text-decoration:underline\">Unduh</a> untuk Anda sekarang dan hubungi tim kami di Indonesia untuk mendukung Anda dalam perjalanan penatalayanan air.</p>', 'aws-standard-20-2019-bahasa-indonesia-1600653859.pdf', NULL, 22, '2020-09-21 02:06:43'),
(4, 1, 4, 'ID', 'The AWS Standard Guidance 2.0 Bahasa Indonesia', 'Download', '<p>The AWS Standard Guidance 2.0 Bahasa Indonesia</p>', 'aws-standard-20-guidance-final-january-2020-bahasa-indonesia-1600654043.pdf', NULL, 2, '2020-09-21 02:08:09'),
(5, 1, 4, 'ID', 'The AWS Standard Scoring 2.0 Bahasa Indonesia', 'Download', '<p>The AWS Standard Scoring 2.0 Bahasa Indonesia</p>', 'aws-standard-20-scoring-criteria-revised-june-1-2020-bahasa-indonesia-1600654078.pdf', NULL, 0, '2020-09-21 02:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `bahasa`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
(15, 4, 4, 'ID', 'Potensi Pertumbuhan Ekonomi Kreatif Purwakarta', 'Homepage', 'Potensi Pertumbuhan Ekonomi: Purwakarta memiliki potensi besar untuk pertumbuhan ekonomi melalui sektor ekonomi kreatif. Dengan meningkatnya minat masyarakat terhadap seni, budaya, kreativitas, dan inovasi, Purwakarta dapat menjadi pusat pengembangan sektor ini, menciptakan lapangan kerja baru dan meningkatkan pendapatan masyarakat setempat.', 'diplay-web-1694534859.png', 'https://javawebmedia.com/kursus', 3, 'Publish', NULL, 'Ya', '2023-10-22 16:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `heading`
--

CREATE TABLE `heading` (
  `id_heading` int(11) NOT NULL,
  `id_user` int(11) DEFAULT 0,
  `judul_heading` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `halaman` varchar(255) DEFAULT 'NULL',
  `tanggal` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `heading`
--

INSERT INTO `heading` (`id_heading`, `id_user`, `judul_heading`, `keterangan`, `gambar`, `halaman`, `tanggal`) VALUES
(1, 0, 'Berita dan Updates', '<p>Berita dan Updates</p>', 'heading-03-1600256326.jpg', 'Berita', '2020-09-16 11:38:46'),
(2, 0, 'AWS Indonesia', '<p>AWS Indonesia</p>', 'aws-indonesia-1600259780.jpg', 'AWS', '2020-09-16 12:36:20'),
(3, 0, 'Halaman Kontak', '<p>Halaman Kontak</p>', 'kontak-1600257025.jpg', 'Kontak', '2020-09-16 11:50:25'),
(4, 0, 'Board and Team', '<p>Board and Team</p>', 'board-and-team-300-1600260175.jpg', 'Team', '2020-09-16 12:42:55'),
(5, 0, 'Layanan', '<p>Penatalayanan air memungkinkan pengguna air bekerjasama untuk mengidentifikasi dan mencapai tujuan bersama untuk pengelolaan air yang berkelanjutan dan keamanan air bersama. Penatalayanan air yang baik didefinisikan sebagai penggunaan air yang adil secara sosial dan budaya, berkelanjutan secara lingkungan dan menguntungkan secara ekonomi, dicapai melalui proses inklusif pemangku kepentingan yang mencakup tindakan berbasis wilayah operasional dan daerah tangkapan air (DAS).</p>\r\n<p>AWS Indonesia meripakan promosi dan penerapan penatalayanan air yang baik dan standar penatalayanan air internasional (<a href=\"https://a4ws.org/the-aws-standard-2-0/\">AWS Standard</a>) di Indonesia sebagai mitra negara <a href=\"https://waterstewardship.org.au/\">Alliance for Water Stewardship Asia-Pacific</a> dan <a href=\"https://a4ws.org/about/\">Alliance for Water Stewardship SCIO</a>.</p>\r\n<p>Apakah Anda tertarik untuk mempelajari lebih lanjut mengenai penatalayanan air dan aktivitas kami di Indonesia? Apakah Anda Manajer Sustainability atau Engineer Air yang ingin menerapkan penatalayanan air di wilayah operasional Anda? Hubungi kami dan mari kita mulai penatalayanan air bersama-sama.</p>', 'layanan-1600315713.jpg', 'Layanan', '2020-09-17 04:08:33'),
(6, 0, 'Dokumen', '<p>Dokumen</p>', 'dokumen-1600317093.jpg', 'Dokumen', '2020-09-17 04:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `bahasa`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(6, 4, 'ID', 'berita', 'Berita', 3, 0, '2020-09-12 21:36:42'),
(8, 4, 'ID', 'updates', 'Updates', 2, NULL, '2020-09-12 21:36:35');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_agenda`
--

CREATE TABLE `kategori_agenda` (
  `id_kategori_agenda` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_agenda` varchar(255) NOT NULL,
  `nama_kategori_agenda` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_agenda`
--

INSERT INTO `kategori_agenda` (`id_kategori_agenda`, `bahasa`, `slug_kategori_agenda`, `nama_kategori_agenda`, `keterangan`, `urutan`) VALUES
(4, 'ID', 'kegiatan-eksternal', 'Kegiatan Eksternal', NULL, 2),
(6, 'ID', 'kegiatan-internal', 'Kegiatan Internal', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `bahasa`, `slug_kategori_download`, `nama_kategori_download`, `keterangan`, `urutan`) VALUES
(1, 'ID', 'dokumen', 'Dokumen', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 1),
(4, 'ID', 'download-pricelist', 'Download Pricelist', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 0),
(5, 'ID', 'studi-kasus', 'Studi Kasus', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 2),
(6, 'ID', 'webinar', 'Webinar', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `bahasa`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`) VALUES
(4, 'ID', 'kegiatan', 'Kegiatan', 2),
(6, 'ID', 'kegiatan-kampus', 'Kegiatan Kampus', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `bahasa`, `slug_kategori_staff`, `nama_kategori_staff`, `keterangan`, `urutan`) VALUES
(4, 'ID', 'senyum-programmer', 'Senyum Programmer', 'Yeay...selain tim tutor kita juga ada tim programmer yang bekerja full time maupun part time', 2),
(6, 'ID', 'happy-tutor', 'Happy Tutor', 'Java Web Media didampingi oleh tutor-tutor dan instruktur yang berpengalaman di bidangnya.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `bahasa` enum('ID','EN') NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `nama_singkat` varchar(200) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tagline2` varchar(255) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `favicon` varchar(200) NOT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) NOT NULL,
  `nama_twitter` varchar(255) NOT NULL,
  `nama_instagram` varchar(255) NOT NULL,
  `nama_google_plus` varchar(255) NOT NULL,
  `singkatan` varchar(255) NOT NULL,
  `google_map` text DEFAULT NULL,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `isi_1` varchar(500) DEFAULT NULL,
  `isi_2` varchar(500) DEFAULT NULL,
  `isi_3` varchar(500) DEFAULT NULL,
  `isi_4` varchar(500) DEFAULT NULL,
  `isi_5` varchar(500) DEFAULT NULL,
  `isi_6` varchar(500) DEFAULT NULL,
  `link_1` varchar(255) DEFAULT NULL,
  `link_2` varchar(255) DEFAULT NULL,
  `link_3` varchar(255) DEFAULT NULL,
  `link_4` varchar(255) DEFAULT NULL,
  `link_5` varchar(255) DEFAULT NULL,
  `link_6` varchar(255) DEFAULT NULL,
  `javawebmedia` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `rekening` text DEFAULT NULL,
  `prolog_topik` text DEFAULT NULL,
  `prolog_program` text DEFAULT NULL,
  `prolog_sekretariat` text DEFAULT NULL,
  `prolog_aksi` text DEFAULT NULL,
  `prolog_kolaborasi` text DEFAULT NULL,
  `prolog_sebaran` text DEFAULT NULL,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `prolog_agenda` text DEFAULT NULL,
  `prolog_wawasan` text DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_timeout` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `judul_pembayaran` varchar(255) DEFAULT NULL,
  `isi_pembayaran` text DEFAULT NULL,
  `gambar_pembayaran` varchar(255) DEFAULT NULL,
  `link_bawah_peta` varchar(255) DEFAULT NULL,
  `text_bawah_peta` varchar(255) DEFAULT NULL,
  `cara_pesan` enum('Keranjang Belanja','Formulir Pemesanan') DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `bahasa`, `namaweb`, `nama_singkat`, `tagline`, `tagline2`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `favicon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_plus`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_google_plus`, `singkatan`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `isi_1`, `isi_2`, `isi_3`, `isi_4`, `isi_5`, `isi_6`, `link_1`, `link_2`, `link_3`, `link_4`, `link_5`, `link_6`, `javawebmedia`, `gambar`, `video`, `rekening`, `prolog_topik`, `prolog_program`, `prolog_sekretariat`, `prolog_aksi`, `prolog_kolaborasi`, `prolog_sebaran`, `gambar_berita`, `prolog_agenda`, `prolog_wawasan`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `judul_pembayaran`, `isi_pembayaran`, `gambar_pembayaran`, `link_bawah_peta`, `text_bawah_peta`, `cara_pesan`, `id_user`, `tanggal`) VALUES
(1, 'ID', 'Ekraf Purwakarta', 'Connect', 'Connect, Collaboration, Commerce', 'Lembaga nonstruktural yang dibentuk untuk membantu pelaksanaan ekonomo kreatif di Purwakarta dengan anggota para pelaku, Akademisi, Praktisi dan Media. Mereka diharapkan ikut merencanakan serta mendampingi pelaku ekonomi kreatif di lapangan.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<p>&nbsp;</p>', 'Lembaga nonstruktural yang dibentuk untuk membantu pelaksanaan ekonomo kreatif di Purwakarta dengan anggota para pelaku, Akademisi, Praktisi dan Media. Mereka diharapkan ikut merencanakan serta mendampingi pelaku ekonomi kreatif di lapangan.', 'https://ekrafpurwakarta.com/', 'purwakartacreativehub@gmail.com', 'xxxxx@xxxxx.com', 'Purwakarta Creative Hub, Nagri Kidul, Purwakarta, Purwakarta Regency, West Java 41111', '083817260288', '+083817260288', '083817260288', 'creative-hub.png', 'creative-hub.png', 'logo_creative_hub_icon.png', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', NULL, 'https://www.facebook.com/rez', 'http://twitter.com/rez', 'https://instagram.com/rez', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', 'Educamedia', 'Educamedia', 'rez', '', 'PM', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15855.157661576925!2d107.43298434938141!3d-6.548252345114568!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e690f397e6ff737%3A0x5be6706969df9ba!2sPurwakarta%20Creative%20Center!5e0!3m2!1sid!2sid!4v1698073483850!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'Tempat belajar nyaman', 'fa fa-home', 'Materi Kursus Selalu Update', 'fa fa-laptop', 'Jadwal Flexibel', 'fa fa-thumbs-up', 'Menjaga Amanah', 'fa-check-square-o', 'Tempat belajar nyaman', 'fa-home', 'Online service', 'fa-laptop', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan serasa di rumah sendiri', 'Materi kursus kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', 'Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel', 'Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan', 'Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', '', '', '', '', '', '', '<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>', 'creative-hub.jpg', 'fsH_KhUWfho', '<table id=\"dataTables-example\" class=\"table table-bordered\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"19%\">Nama Bank</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"21%\">Nomor Rekening</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"7%\">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Dalam mewujudkan pembangunan berkelanjutan, pemerintah kabupaten anggota LTKL telah mengidentifikasi dan memilih topik yang sesuai dengan kondisi di daerahnya. Ada 5 topik prioritas yang dipilih dengan penerapan yang disesuaikan kembali di masing-masing kabupaten.</p>', NULL, '<p>Setelah Lingkar Temu Kabupaten Lestari (LTKL) diinisiasi, kesekretariatan dibentuk untuk membantu para pemerintah kabupaten anggota bekerja dan berkolaborasi. Walaupun tidak memiliki mandat implementasi, Sekretariat LTKL menjadi vital dalam melancarkan koordinasi, pengumpulan basis data, hingga pelaporan perkembangan. Sekretariat LTKL juga diperkuat dengan kehadiran personil yang telah berpengalaman di bidang management pengetahuan, program pembangunan berkelanjutan hingga kebijakan.</p>', '', '<p>Lingkar Temu Kabupaten Lestari (LTKL) mengedepankan kolaborasi dalam mewududkan pembangunan berkelanjutan. Ada 10 kabupaten yang tersebar di 6 provinsi di Indonesia telah menjadi anggota LTKL.</p>\r\n<p>Hingga kini, berbagai pihak telah ikut berkolaborasi, mulai dari pemerintah kabupaten, sekeretariat LTKL, mitra pembangunan hingga pihak swasta.</p>', '', 'balairung-budiutomo-01.jpg', '<p>Acara yang ditampilkan merupakan kumpulan acara LTKL, mitra, maupun pemerintah kabupaten anggota LTKL, mulai dari acara seminar hingga festival.</p>', '<p>LTKL bukan satu-satunya yang bergerak dalam mewujudkan pembangunan berkelanjutan, serta upaya penanggulangan perubahan iklim. Ikuti terus perkembangan usaha LTKL serta rekan-rekan lain menuju bumi dan Indonesia yang lestari.</p>', 'smtp', 'ssl://mail.javawebmedia.com', '465', '12', 'info@javawebmedia.com', 'javawebmedia', 'Metode Pembayaran Produk', '<p>Anda dapat melakukan pembayaran dengan beberapa cara, yaitu:</p>\r\n<ol>\r\n<li><strong>Pembayaran Tunai</strong>, dapat Anda serahkan secara langsung ke salah satu staff Java Web Media</li>\r\n<li><strong>Pembayar Via Transfer Rekening</strong></li>\r\n</ol>\r\n<p>Lakukan transfer biaya atas layanan dan produk&nbsp;<strong>Java Web Media</strong>&nbsp;ke salah satu rekening di bawah ini.</p>\r\n<h3>Konfirmasi Pembayaran</h3>\r\n<p>Anda dapat melakukan konfirmasi pembayaran melalui:</p>\r\n<ul>\r\n<li><strong>Melalui Email</strong>, silakan kirim bukti pembayaran ke:&nbsp;<strong><a href=\"mailto:contact@javawebmedia.co.id?subject=Konfirmasi%20Pembayaran\">contact@javawebmedia.co.id</a></strong></li>\r\n<li><strong>Melalui Whatsapp</strong>, kirimkan bukti pembayaran Anda ke&nbsp;<strong>+6281210697841</strong></li>\r\n<li><strong>Melalui Formulir Konfirmasi Pembayaran</strong>, Anda dapat mengunggah bukti pembayaran Anda melalui form&nbsp;<strong><a title=\"Konfirmasi Pembayaran\" href=\"https://javawebmedia.com/konfirmasi\">&nbsp;Konfirmasi Pembayaran</a></strong></li>\r\n</ul>', 'payment.jpg', NULL, NULL, 'Formulir Pemesanan', 4, '2023-10-24 04:50:42');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mt_category_business`
--

CREATE TABLE `mt_category_business` (
  `id_category_business` int(11) NOT NULL,
  `category_business` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mt_category_business`
--

INSERT INTO `mt_category_business` (`id_category_business`, `category_business`) VALUES
(1, 'Pelaku Bisnis'),
(2, 'Komunitas Bisnis'),
(3, 'Usaha/Bisnis'),
(4, 'Lembaga Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `mt_sub_sektor`
--

CREATE TABLE `mt_sub_sektor` (
  `id_sub_sektor` int(11) NOT NULL,
  `sub_sektor_name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mt_sub_sektor`
--

INSERT INTO `mt_sub_sektor` (`id_sub_sektor`, `sub_sektor_name`, `description`, `icon`) VALUES
(1, 'Kuliner', '', 'Kuliner.png'),
(2, 'Fashion', '', 'Fashion.png'),
(3, 'Kriya', '', 'Kriya.png'),
(4, 'Televisi & Radio', '', 'Tv.png'),
(5, 'Penerbitan', '', 'News.png'),
(6, 'Arsitektur', '', 'Arsitektur.png'),
(7, 'Periklanan', '', 'Periklanan.png'),
(8, 'Musik', '', 'Musik.png'),
(9, 'Fotografi', '', 'Fotografi.png'),
(10, 'Seni Pertunjukan', '', 'Pertunjukan.png'),
(11, 'Desain Produk', '', 'Desain-Produk.png'),
(12, 'Seni Rupa', '', 'Seni-Rupa.png'),
(13, 'Desain Interior', '', 'Desain-Interior.png'),
(14, 'Film, Animasi dan Video', '', 'Film.png'),
(15, 'DKV', '', 'DKV.png'),
(16, 'Aplikasi', '', 'Aplikasi.png'),
(17, 'Game', '', 'Game.png'),
(18, 'Semua', '', 'all.png');

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nomor_rekening` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `atas_nama`, `gambar`, `urutan`, `tanggal`) VALUES
(1, 'BCA KCP DEPOK', '4212-5482-04', 'ANDOYO', 'bca.jpg', 1, '2020-06-11 21:36:46'),
(2, 'BNI SYARIAH DEPOK', '0611-9927-06', 'CV JAVA WEB MEDIA', 'Logo_BNI_Syariah.png', 2, '2019-11-12 23:54:18'),
(4, 'BANK MANDIRI KCU DEPOK', '157-00-0180776-8', 'EFLITA MEIYETRIANI', 'mandiri.png', 4, '2019-11-12 23:58:42'),
(5, 'BANK BNI KCU DEPOK', '0105-3010-01', 'EFLITA MEIYETRIANI', 'bni.png', 5, '2019-11-13 00:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) NOT NULL,
  `slug_staff` varchar(255) NOT NULL,
  `nama_staff` varchar(255) NOT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `slug_staff`, `nama_staff`, `jabatan`, `pendidikan`, `expertise`, `email`, `telepon`, `isi`, `gambar`, `status_staff`, `keywords`, `urutan`, `tanggal`) VALUES
(1, 4, 4, 'basja-jantowski-program-director', 'Bina Rika', 'Program Director', NULL, NULL, NULL, NULL, NULL, 'board-and-team-01-1599999423a.png', 'Ya', NULL, 1, '2020-09-13 12:17:03'),
(2, 4, 4, 'gracia-plenita-agnindhira-knowledge-and-learning-officer', 'Karyani', 'Knowledge and Learning Officer', NULL, NULL, NULL, NULL, NULL, 'board-and-team-05-15a99999506.png', 'Ya', NULL, 2, '2020-09-13 12:18:27'),
(3, 4, 4, 'uli-fitri-handayani-communication-and-project-officer', 'Ulindi', 'Communication and Project Officer', NULL, NULL, NULL, NULL, NULL, 'board-and-team-09-1599999886.png', 'Ya', NULL, 3, '2020-09-13 12:25:05'),
(4, 4, 6, 'heru-hendrayana-ketua-dewan-pembina', 'Uda', 'Ketua Dewan Pembina', NULL, NULL, NULL, NULL, NULL, 'board-and-team-07-1599a999946.png', 'Ya', NULL, 0, '2020-09-13 12:25:47'),
(5, 4, 6, 'gita-syahrani-ketua-dewan-pengawas', 'Diana Widya', 'Ketua Dewan Pengawas', NULL, NULL, NULL, NULL, NULL, 'board-and-team-04-1599a999987.png', 'Ya', NULL, 2, '2020-09-13 12:26:28'),
(6, 4, 6, 'fany-wedhahuditama-ketua-dewan-pengurus', 'Andoyo', 'Ketua Dewan Pengurus', NULL, NULL, NULL, NULL, NULL, 'board-and-team-06-160000a0085.png', 'Ya', NULL, 3, '2020-09-13 12:28:14'),
(7, 4, 6, 'fainta-susilo-negoro-sekretaris-dewan-pengurus', 'Muhammad Soleh', 'Sekretaris Dewan Pengurus', NULL, NULL, NULL, NULL, NULL, 'board-anad-team-03-1600000132.png', 'Ya', NULL, 4, '2020-09-13 12:29:04'),
(8, 4, 6, 'chrisandini-bendahara-dewan-pengurus', 'Dani Widya', 'Bendahara Dewan Pengurus', NULL, NULL, NULL, NULL, NULL, 'board-and-team-02-160000a0191.png', 'Ya', NULL, 5, '2020-09-13 12:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `subject_data`
--

CREATE TABLE `subject_data` (
  `id_pelaku_usaha` varchar(255) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `business_name` varchar(50) NOT NULL,
  `id_category_business` varchar(50) NOT NULL,
  `id_sub_sector` varchar(20) NOT NULL,
  `address_business` text NOT NULL,
  `subdistrict` varchar(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `owner_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject_data`
--

INSERT INTO `subject_data` (`id_pelaku_usaha`, `nik`, `business_name`, `id_category_business`, `id_sub_sector`, `address_business`, `subdistrict`, `location`, `owner_name`, `email`, `no_telp`, `website`, `description`, `picture`) VALUES
('63b740d2-70df-11ee-b962-0242ac120002', '3273066502930004', 'Gallery Raden craft', '3', '3', 'Perum bukit kencana residence cibening blok p5 no 14', 'Bungursari', '', 'Dini puspasari ', 'Dinipuspasari1993@gmail.com', '085722947031', '', '', 'https://drive.google.com/uc?export=view&id=1JqcUQ8nnmHHlmrpTzkssIlvNPZVO6HRK'),
('63b74352-70df-11ee-b962-0242ac120002', '3217044602860009', 'Boyank Cookies', '3', '1', 'perum bukit kencana resident blok L5 no4', 'Bungursari', '', 'Radianti Utami ', 'radiantiutami1986@gmail.com', '087828735656', '', 'usaha di bidang kuliner', 'https://drive.google.com/uc?export=view&id=1oLBk9lmWEFrBqv44abRjWIA2yTdFlkiE'),
('63b7449c-70df-11ee-b962-0242ac120002', '3214124203930005', 'Spill The Tea & Dimsum', '3', '1', 'Perum griya asri k5 no 16 ciseureuh', 'Purwakarta', '', 'Erythya Intan Riau Vicca', 'erythya.intan.riauvicca@gmail.com', '0895320560609', '', 'Menjual minuman olahan teh, dan dimsum kukus, ada juga cemilan seperti burger, kebab, dan kentang..', 'https://drive.google.com/uc?export=view&id=1yt8j-0PD7HR_H2Z2HKaDgRT2JD2UPzKO'),
('63b74820-70df-11ee-b962-0242ac120002', '3214015707850001', 'BUTIK RENGGANIS', '3', '2', 'PERUM MUNJULJAYA LAMA A39 RT 23 RW 07, KEL. MUNJULJAYA, KEC. PURWAKARTA, KAB. PURWAKARTA', 'Purwakarta', '', 'DEVY RENGGANIS', 'devy.rengganis@gmail.com', '085175337311', 'butikrengganis.com', 'Butik Rengganis memproduksi gamis yang berfokus pada kategori spesifik yaitu gamis syar\'i', 'https://drive.google.com/uc?export=view&id=1YrC5MPrRM1yLciObdzwZGoxddvwhXYcC'),
('63b74956-70df-11ee-b962-0242ac120002', '3214132311970003', 'Lensa Surya', '3', '9', 'Kp. Cikiara RT 04 RW 02 Ds. Wanakerta Kec. Bungursari Kab. Purwakarta', 'Bungursari', '', 'Suryana', 'Suryana231197@gmail.com', '089604402598', '', 'Lensa Surya Sports Photography', 'https://drive.google.com/uc?export=view&id=1s2Zh51WwCD-jdSsLCCXSg2jCAyR96UIs'),
('63b74a64-70df-11ee-b962-0242ac120002', '3214016306000004', 'Ayam Goreng Pak Oji', '3', '1', 'Jln. Ahmad Yani, Gg. Nusa Indah 2, Rt. 02/ Rw. 03, Nagri Kaler Purwakarta, Jawa Barat', 'Purwakarta', '', 'Nisa NF', 'denisanurfachrurozi236@gmail.com', '083804196155', '', 'Mie ayam goreng serundeng, dibungkus box. Isi box ada lalaapn, sambal, tahu/tempe, ayam, nasi timbel, tisu/tusuk gigi/sendok. (Bisa request sesuai permintaan costumer).', 'https://drive.google.com/uc?export=view&id=1N-H7jukVKlzDB5YbqCh1uasyQjYS1iGp'),
('63b74b5e-70df-11ee-b962-0242ac120002', '3214126207000001', 'Sanggar Bunda Febri', '1', '10', 'Jl. Veteran Gg. Kramik Perumahan Cihideung Indah Blok a No. 1', 'Babakancika', '', 'Defhira Meutia Malahayati, S.M', 'defhiramalahayati@gmail.com', '081210165649', '', 'Sanggar Bunda Febri adalah tempat pelatihan seni tari dan modelling yang bertujuan membantu generasi muda sebagai wadah melestarikan budaya khususnya Jawa Barat.', 'https://drive.google.com/uc?export=view&id=1-1dLpYpxVgPHH5NIZc3Z7-eRc2pmWx_r'),
('63b74c6c-70df-11ee-b962-0242ac120002', '3214115103730002', 'Catering Ngeriung di Saung ', '3', '1', 'perum BJI blok AR no 5,ciseureh,Purwakarta', 'Purwakarta', '', 'irma vitaloka', 'vitalokairma41@gmail.com', '089601439444', '', 'membuat paket liwet, utk jumlah besar dan perorangan dan makanan khas sunda lainnya, dengan kemasan khas sunda. besek dll', 'https://drive.google.com/uc?export=view&id=1m8iniaTtZgcRJ6B1dpmN9-1p_CRr2wtJ'),
('63b74d70-70df-11ee-b962-0242ac120002', '3214015812780007', 'DAPOER ANENTA SHOP', '1', '1', 'Perum Kota Permatajln. Zamrud Raya Blok D7 No.16 Desa Ciwareng Kec. Babakan Cikao Purwakarta', 'Babakancika', '', 'R. Endah Tresnawati', 'endahanentashop@gmail.com', '085793375564', '', '', 'https://drive.google.com/uc?export=view&id=1iloxqN68bIdgd_ezboeBoTjd-1eJVbxL'),
('63b74e74-70df-11ee-b962-0242ac120002', '3213210412940001', 'Skipper media', '3', '16', 'Jl. Terusan kapten Halim GG Adung kp. Cirateun', 'Pasawahan', '', 'ARIF SOLEH MAKMUN ', 'info.skippermedia@gmail.com', '081313114656', 'Skippermedia.my.id', 'Skipper', 'https://drive.google.com/uc?export=view&id=1j0HKEVDU13U4jjGvbMF2GqYXWsCiGwZY'),
('63b751b2-70df-11ee-b962-0242ac120002', '3214030407970001', 'Aditama Food Persada (Mamarachick)', '3', '1', 'Ciganea-Purwakarta', 'Jatiluhur', '', 'Rizky Anugrah ', 'rizkyanugrah1997@gmail.com', '085659682887', '', 'Owner Mamarachick', 'https://drive.google.com/uc?export=view&id=1LjXi4Uo15hbx1nNInpjS_URncgNM1-kC'),
('63b752b6-70df-11ee-b962-0242ac120002', '3214012703760005', 'Wans Pro', '1', '11', 'Kp. Margaluyu RT 33 RW 04, Kel. Munjuljaya', 'Purwakarta', '', 'Iwan Iswanto', 'wanriswara76@gmail.com', '083853933777', '', 'Bergerak dibidang percetakan, sablon manual, dan perdagangan umum', 'https://drive.google.com/uc?export=view&id=1jcBNLAkTffI7RI7AB1ntPOFs73Y95M0f'),
('63b753c4-70df-11ee-b962-0242ac120002', '3201136108690007', 'DJejak', '1', '2', 'Jalan mr dr kusumah atmaja rt2/1 no. 136, cipaisan purwakarta', 'Purwakarta', '', 'Ela nurlaila azizah', 'elaasyadi@gmail.com', '085216922038', '', 'Djejak adalah brand produk ecoprint. Ecoprintsendiri masuk ke dalam subsektor industri tekstil dan pakaian yang berfokus pada teknik pencetakan kain menggunakan bahanNULLbahan alami seperti daun dan bunga. Subsektor ini juga terkait erat dengan seni tekstil dan pembuatan pakaian berkelanjutan yang menekankan penggunaan bahanNULLbahan ramah lingkungan', 'https://drive.google.com/uc?export=view&id=1554LgpVq8Bvr547SyFXiP1BJ8WuWAjqx'),
('63b754be-70df-11ee-b962-0242ac120002', '3214026504870001', 'H&N', '1', '1', 'Perum Kota Baru Blok A0 no 8 Rt/Rw 11/04 Ds. Campaka Kec. Campaka Kab. Purwakarta 41181', 'Campaka', '', 'MALA NURMALASARI', 'malanurmalasari818@gmail.com', '085224061324', '', 'Kegiatan produksi brownies lumer dan aneka bolu lainnnya serta memasarkan nya dengan sistem konsinyasi', 'https://drive.google.com/uc?export=view&id=16yW-I2klZdRqU_x2MHFW6GwhjexFyw5r'),
('63b755b8-70df-11ee-b962-0242ac120002', '3208256112900002', 'Tsani Homemade', '3', '1', 'Jln Stasiun Ciganea Rt 07 Rw 03', 'Jatiluhur', '', 'Dewi Riani', 'dewirianispd@gmail.com', '087744193737', '', 'Perseorangan', 'https://drive.google.com/uc?export=view&id=1sKpswF6f_r5mRKBEXUh_ZdpksEXZcGXc'),
('63b756b2-70df-11ee-b962-0242ac120002', '1312106310750002', 'Dapoer Bunda Berty ', '1', '1', 'Jln Rawasari gang rawa lele RT 35 RW 03 kelurahan Munjul', 'Purwakarta', '', 'Berty Yusmaniar ', 'ayuratu1712@gmail.com', '081389708847', '-', 'Dapoer Bunda Berty berdiri tahun 2019 sampai sekarang mempunyai prodak makanan dan minuman siap saji', 'https://drive.google.com/uc?export=view&id=1WZS-Y3INqFl0IZ_S9Da-vlXIrDoLJ6Xi'),
('63b757b6-70df-11ee-b962-0242ac120002', '321401240490003', 'KR KITCHEN & BAKERY ', '3', '1', 'Pondok jaya indah blok f5 no 25 RT 57 RW 13 Munjuljaya', 'Purwakarta', '', 'Saeful bahri ', 'kr.kitchen.bakery@gmail.com', '083186771569', '', 'Penyedia layanan makanan harian, penjualan bahan baku, bumbu dan bahan olahan pangan. Snack box , rice box ,rice bowl, paket aqiqah, paket wedding dll', 'https://drive.google.com/uc?export=view&id=16oa53wkwVHFgpOURU4ymVkBZ08oL6mZP'),
('63b758ba-70df-11ee-b962-0242ac120002', '3214141112860001', 'GP ANSOR CIRANGKONG', '2', '3', 'Kp.cilandak RT03 RW01', 'Cibatu', '', 'Ridwan Sunarya ', 'sunarya.ridwan@gmail.com', '081912554201', '', 'produsen sabun cair', 'https://drive.google.com/uc?export=view&id=1oAN_ahZhJUmH8ZqV2uW_dX4nxxD9dbaD'),
('63b75c48-70df-11ee-b962-0242ac120002', '3273211305870003', 'kindi music school', '4', '8', 'jalan RE martadinata no 83 jalan tengah purwkarta', 'Purwakarta', '', 'Rohanda, S.Pd', 'jalurohanda@gmail.com', '087835090219', 'www.kindimusic.com', 'Kindi music school merupakan tempat les musik yang mencangkup piano,vokal,gitar,biola,drum,saxophone,bass dan pekusi , kami menggunakan metode stydy and fun, mengajak anak berlajar sambil bermain, dengan meng agendakan konser dalan setaun 3 kali, pengajar di kindi musik school merupakan pengajar profesional yang menguasai notasi balok dan metode pengajaran yang profesional... aktif,creative,dan berkualitas, setiap murid akan di disik selama 4 grade atau tingkatan,yang setelah lulus nya akan di asah secara profesional sebagai musisi atau talent yang berkualitas,yang siap bergelut di dunia industri musik yang sesungguh nya, harapan kami kindi music school dapat mencetak bibit bibit musisi, yang berkualitas,berkhlak dan ber etika, dan akan menambah gernerasi musik anak bangsa..', 'https://drive.google.com/uc?export=view&id=1Qos1tfauVe4x8USr_Wh5Fh2Sqa5nz89V'),
('63b75d56-70df-11ee-b962-0242ac120002', '3273256805950002', 'Biyankids / Berjualan pakaian anak', '1', '2', 'Perum benteng mutiara mas B11 no 9 kel benteng kecamatan campaka kab Purwakarta', 'Campaka', '', 'Wina siti robiah ', 'winaridhwan@gmail.com', '085723434660', 'shopee.co.id/biyankids', 'Saya berjualan pakaian anak import secara online di marketplace', 'https://drive.google.com/uc?export=view&id=1YTRrWDZf4lEBh_dm38RE2FJAFZ0Tld70'),
('63b75e5a-70df-11ee-b962-0242ac120002', '3214176307950001', 'Banana Fusa (Keripik Pisang Coklat)', '3', '1', 'Kp. Ciloji RT 004/002 Desa Kiarapedes Kec. Kiarapedes Kab. Purwakarta 41175', 'Kiarapedes', '', 'Delia Rahmahyanti', 'deliarahmah1@gmail.com', '085863969083', '', '', 'https://drive.google.com/uc?export=view&id=1dmwu8f8XK66d3_4zWjUR8OZFbBlcMbFo'),
('63b75f72-70df-11ee-b962-0242ac120002', '3214034810850003', 'Pasmini', '1', '1', 'Jl. Kutilang 2 , Perum kota baru blok B6 no.5 Ds. Campaka , Kec. Campaka , Kab. Purwakarta, Jawa Barat Indonesia', 'Campaka', '', 'Cucu Nengsih', 'cucu.nengsih85@gmail.com', '085795499309', 'www.pasmini.id', 'Usaha yang bergerak di bidang makanan dan minuman', 'https://drive.google.com/uc?export=view&id=14t7VMyxq5KFVtF6Ip5hVAB4Ie57hbctN'),
('63b7606c-70df-11ee-b962-0242ac120002', '3214012707790001', 'Raospoll Berkah Jaya', '1', '1', 'Outlet Raospoll, Jl. Taman Pahlawan No.75 Purwakarta 41115', 'Purwakarta', '', 'Mujada', 'nusaindah456@gmail.com', '087779954582', 'https://raospoll.my.id', 'Raospoll Berkah Jaya adalah home industry produk roti dan kue dengan produk utama roti abon gulung. Memasarkan produknya secara online melalui media sosial, marketplace dan aplikasi. Penjualan offline di Outlet Raospoll, Jl. Taman Pahlawan No. 75 Purwakarta. Selain menjual produknya sendiri, juga memasarkan produkNULLproduk UMKM dan ekonomi kreatif.', 'https://drive.google.com/uc?export=view&id=1nWeY4KvPTa7GxSyC_zaFAARupBkR4mW-'),
('63b76170-70df-11ee-b962-0242ac120002', '3275096804890012', 'Aivie Handmade ', '1', '3', 'Jl.raya Sadang no 244 Ciwangi Bungursari Purwakarta', 'Bungursari', '', 'Pitri Solihat ', 'fitriaivie2889@gmail.com', '085720066217', '', 'Menjual kerajinan rajutan', 'https://drive.google.com/uc?export=view&id=1mVtXlAC0ztX8PizHbg3k4bekDJPoAMhu'),
('63b7626a-70df-11ee-b962-0242ac120002', '3214015611830007', 'Dapur dhyandra', '1', '1', 'Perum bumi inti persada blok b14 no. 12 rt. 29 rw. 09 desa. Cibening kec. Bungursari kab. Purwakarta', 'Bungursari', '', 'Iin fajarwati', 'Dapurdhyandra83@gmail.com', '085722031884', '', 'Saya usaha di bidang kuliner, dapun dhyandra berdiri sejak 2014 dan alhamdulillah tetap bertahan sampe sekarang dan usaha saya bertambah maju. Saya membuat makanan unik keripik ubi ungu kriwil yg dinamakan kruwil.', 'https://drive.google.com/uc?export=view&id=1OHS3ZrCYXqhM24mCj_nUbeDkK4QiiDsn'),
('63b7636e-70df-11ee-b962-0242ac120002', '326055801950009', 'Maeen Craft', '3', '3', 'Samesta Royal CampakaBlok D12/009 RT 21 RW 06Kel. CampakaKec. Campaka Kab. PurwakartaProv. Jawa Barat', 'Campaka', '', 'Elsy Indriani', 'maeencraft18@gmail.com', '081287558667', '', 'Maeen Craft adalah jenis usaha kriya rajut yang dibuat secara manual tanpa mesin, banyak macam yang bisa dibuat seperti tas, gantungan kunci, peci, bandana, sajadah, dompet, buket bunga dll. Konsumen dapat memesan sesuai request yang diinginkan', 'https://drive.google.com/uc?export=view&id=1mUapyeSnWz1_ceSpgKEHdXGRQaWg9ysl'),
('63b765c6-70df-11ee-b962-0242ac120002', '3203072409930003', 'Pawon Naras', '3', '1', 'Kp Sukamukti RT07/RW03 Desa Cibatu Kecamatan Cibatu (Seberang Hotel Cibatu)', 'Cibatu', '', 'Adhitama Narastyawan', 'adhitnaras1824@gmail.com', '082122307424', '', 'Pawon Naras adalah usaha dibidang kuliner dengan menu utama Mie Ayam dan Yamien, juga terdapat menu lain ayam bakar dan ikan bakar.', 'https://drive.google.com/uc?export=view&id=1bpVbThMqAYkr-sHKvRVWrf_ETLb97zCe'),
('63b766d4-70df-11ee-b962-0242ac120002', '3214011008770002', 'Inchakey Sacha Inchi', '3', '1', 'Cihuni lebak RT 01 RW01 Cihuni Pasawahan Purwakarta', 'Pasawahan', '', 'Muhamad Abdurahman', 'sanosachainchi', '82111875507', '', 'Sacha inchi menghasilkan minyak nabati dan kacang cemilan.', 'https://drive.google.com/uc?export=view&id=15SsVKrr_F8io5voIOLFZFB3DF33AVQ4Y'),
('63b767e2-70df-11ee-b962-0242ac120002', '3214130302860001', 'Advertising cutting cnc', '1', '3', 'Jl.raya sadang ciwangi', 'Bungursari', '', 'Dani', 'androidkidong@gmail.com', '087722273636', '', 'Menerima jasa cutting cnc laserDekor interiorMelayani pesanan custom di bidang advertising dan pembuatan mesin cnc laser,plasma dan router', 'https://drive.google.com/uc?export=view&id=1KYEsvxq9VE-Z__QbV4UKjFGvmoETLNe3'),
('63b768dc-70df-11ee-b962-0242ac120002', '3214016707010002', 'Meraksi Bouquet', '1', '3', 'Munjul Jaya', 'Purwakarta', '', 'Amalia Firada Baifin', 'amalia.baifin@gmail.com', '083148762123', 'instagram.com/meraksi.bouquet', 'Meraksi adalah salah satu kerajinan tangan berbentuk buket bunga dengan bahan utama kawat bulu', 'https://drive.google.com/uc?export=view&id=1qiWyFnam3pD0FXkwOg81DQOoSEQl5GrF'),
('63b769cc-70df-11ee-b962-0242ac120002', '3214015509750007', 'Makanan ,minuman', '1', '1', 'Perum griya asri blok f4 no 10 Ciseureuh', 'Purwakarta', '', 'N.Laila Rahmawati ', 'nlailarahmawati2020@gmail.com', '085846455793', '', 'Es durian,Bagor sumenep', 'https://drive.google.com/uc?export=view&id=1MSlHlYRibPema2q2PfoqAoD9IBkhzpar'),
('63b76ac6-70df-11ee-b962-0242ac120002', '3214164609970002', 'Oeng durian dan alpuket', '3', '1', 'Kp.genggereng, ds.salem,kec.pondoksalam,kab.purwakarta', 'Pondoksalam', '', 'Neng siti solihah', 'sitisolihah28821@gmail.com', '089691421892', '', 'Menjual buah durian dan alpuket mentega', 'https://drive.google.com/uc?export=view&id=17X_09SqZl1b15O_iQcXXNoJ3dU9ip7ni'),
('63b76bca-70df-11ee-b962-0242ac120002', '3214012309820008', 'Manajemen Produksi Film Indonesia', '2', '14', 'Perum Pesona Purwakarta Regency, Edelweis No. 12, Rt/Rw. 011/010, Kelurahan Nagri Tengah', 'Purwakarta', '', 'Yosep Saputra', 'mpfipurwakarta@gmail.com', '081993833332', 'mpfi.or.id', 'MPFI adalah Asosiasi / perkumpulan Profesi pekerja Film di seluruh indonesia', 'https://drive.google.com/uc?export=view&id=1rPWPEHSrOKeBT6CaCF_JZie7WcgwXeVP'),
('63b76f76-70df-11ee-b962-0242ac120002', '3214010907900007', 'Sembako ritel eceran&Pulsa', '3', '1', 'Perum Bumi villa jatiluhur blok B8 no 10 rt 014/004', 'Jatiluhur', '', 'Redi supredi', 'Rediboy333@gmail.com', '087790000114', '', 'Usaha sembako ritel dan pulsa', 'https://drive.google.com/uc?export=view&id=12qXvz7h0McOvVOTl_qRh5iVzAput4MO9'),
('63b77084-70df-11ee-b962-0242ac120002', '3214011309860006', 'King Dimsum ', '3', '1', 'Jl RE Martadinata No. 83 Kel Nagri Kidul Jalantengah', 'Purwakarta', '', 'Prima Eka Saptiya', 'saptiya.prima@gmail.com', '081224104007', '', 'Aneka kuliner dimsumAneka MakananAneka Minuman Signature coffee', 'https://drive.google.com/uc?export=view&id=16NHTIcDSzSfhsToaj0JwDkTf3lpqTqLG'),
('63b7717e-70df-11ee-b962-0242ac120002', '3172036711930002', 'Dapoer ummah', '1', '1', 'Perum griya mukti blok D no 2', 'Babakancika', '', 'Prima novela', 'Prima.novela1993@gmail.com', '082250050008', '', 'Saya berjualan es kulkul, sushi, onigiri, gula aren,', 'https://drive.google.com/uc?export=view&id=1Jzq8kQlNPet1ev2ylhCUKo49UPMWYAaK'),
('63b77282-70df-11ee-b962-0242ac120002', '3214012401050001', 'Ferz Photography', '1', '9', 'Graha citalang permai, blok B7 No 7', 'Purwakarta', '', 'Ferdian Yunizar', 'yunizarferdian@gmail.com', '085156258644', '', 'Saya pelaku usaha mandiri yang bergerak di bidang fotografi, berdiri sejak 2022.', 'https://drive.google.com/uc?export=view&id=1Z6jrExiRkpUwIGRsmM25JK9zGAXa_XBJ'),
('63b77372-70df-11ee-b962-0242ac120002', '3214026403840001', 'Cevina', '3', '2', 'Kp.Sukamaju Rt12 Rw4 desa Campakasari kec Campaka/ecoprint', 'Campaka', '', 'Vina Yulis Setyowati', 'vinayulis@gmail.com', '081294952714', '', 'Membuat & menjual produk ecoprint,pakaian jadi,jasa jahit ..', 'https://drive.google.com/uc?export=view&id=1mq7HBnmuAfysPhQJ2v9G5DdXEOM6XACU'),
('63b77476-70df-11ee-b962-0242ac120002', '3214125703970001', 'Caudeui', '3', '1', 'Gang Sawo Purwamekar Rt.24 Rw.08, Kab.Purwakarta', 'Purwakarta', '', 'Vicky Fatimah', 'Vickyfatimah448@gmail.com', '087828616180', '', 'Kami bergerak di bidang kuliner yang berdasar pengolahan nya dari Pisang', 'https://drive.google.com/uc?export=view&id=1sxUlPY4xdhGYN7ptmLexz7ni2PfhPsqm'),
('63b7782c-70df-11ee-b962-0242ac120002', '3214015109670003', 'Cimory Yogurt', '1', '1', 'Jl.Basuki Rahmat. Gg H Mursid ,Sindangkasih , Purwakarta', 'Purwakarta', '', 'Eneng Rodijah ', 'winnanadia8@gmail.com', '087879774356', '', '', 'https://drive.google.com/uc?export=view&id=1o_8WFKmkf0M7r134MP4hy-4KarRBThzw'),
('63b77944-70df-11ee-b962-0242ac120002', '3214046201950001', 'Adzkiyafood ', '3', '1', 'Kp Mekarsari RT 01rw 02 Des ciwareng kec cikao kan purwakarta', 'Babakancika', '', 'Mira Nurhasanah ', 'mirahasanahnur@gmail.com', '081312612501', '', 'Menjual aneka desert cemilan, kue ulangtahun, mochi, koreanfood, dan biasa ikut berjualan bazar atau CFD', 'https://drive.google.com/uc?export=view&id=1z9qFwXvTbKdo8gHNa5sIFNg_pdnK5TNK'),
('63b77a3e-70df-11ee-b962-0242ac120002', '3275036410980014', 'ayam bakar bu wati', '1', '3', 'Jl Citalang Munjul Jaya', 'Purwakarta', '', 'devi', 'devirestupangesti9@gmail.com', '089665670005', '', 'Menjual kuliner ayam bakar ayam goreng', 'https://drive.google.com/uc?export=view&id=14HGpgeDTkJUbgcFbJs8YNhbabBr4fbs9'),
('63b77b42-70df-11ee-b962-0242ac120002', '3214015011710012', 'SASOKU SHOES ', '3', '3', 'Kp Karajan no 12 A Tegal Munjul', 'Purwakarta', '', 'Sutirah ', 'sutirahsutaryo10@gmail.com', '087779625627', '', 'Sepatu sasoku merupakan salah satu produk sepatu kulit yang diproduksi oleh industri rumahan. Sepatu & sandal ini memiliki berbagai jenis model', 'https://drive.google.com/uc?export=view&id=1Fd5yUYYR6iikFmyEQpf723-h15TnQGtu'),
('63b77c3c-70df-11ee-b962-0242ac120002', '3214012309820008', 'Multi Talent Production', '4', '10', 'Perum Pesona Purwakarta Regency, Edelweis No. 12, Rt/Rw. 011/010, Kelurahan Nagri Tengah', 'Purwakarta', '', 'Yosep Saputra', 'multitalentprod@gmail.com', '081220820600', 'multitalentproduction.blogspot.com', 'Multi talent Production adalah suatu tempat untuk mengembangkan bakat di bidang Acting, Modeling, Dancer, Broadcasting (MC & Presenter), DJ dan berlaku sebagai Management Artis, Agency, Entertainment School, dan Event Organizer', 'https://drive.google.com/uc?export=view&id=1Mg9JF6se9cszBhl0on4xGnOLGFX50Cdh'),
('63b77d36-70df-11ee-b962-0242ac120002', '3214031306890001', 'Samarana', '3', '1', 'Ciganea Mekargalih', 'Jatiluhur', '', 'Fauzi Hendrata', 'zie.13.89@gmail.com', '082213138509', '', 'Makanan dan Minuman', 'https://drive.google.com/uc?export=view&id=1gTVoU0T71uewBCC4_blrnbdMk7WuIKmN'),
('63b77e3a-70df-11ee-b962-0242ac120002', '3214017107690003', 'Pawon Ummi Bondalem ', '1', '1', 'Griya Asri - Sadang - Ciseureuh - Purwakarta', 'Purwakarta', '', 'Umi Anisah', 'umianisah.crab@gmail.com', '081319647588', '', 'Pawon Ummi Bondalem berdiri th 2020, bergerak di bidang kuliner, dan satu²nya yg ada di Purwakarta produk unggulan kami adalah Bandeng Otak² Selimut ( cabut duri gluten free) . Dengan rasa yang enak dan tekstur yg cukup lembut membuat ingin mencicipi terus dan terus. Kami yg tadinya bekerja di dunia industri pangan yg berbasis export dan import, ingin mandiri dan berusaha menciptakan industri rumahan yg bisa membawa byk kemudahan konsumen utk menikatinys', 'https://drive.google.com/uc?export=view&id=1n3VtsIzuN3aDhd9SuTDZom-lyd_0ElGZ'),
('63b78006-70df-11ee-b962-0242ac120002', '3214101302850003', 'HILFA FOOD ( JAJANAN JADUL )', '1', '1', 'Kp,Ciomas,Rt 08,Rw 04,Ds Warungkadu,kec Pasawahan,kab,Purwakarta', 'Pasawahan', '', 'Dede yusup hamdani', 'Yusufhilmi2006@gmail.com', '085871137088', '', 'Menjual aneka makanan jadul yang di kemas kekinian,d buat oleh ibu ibu di rumah ny masing masing,agar ibu ibu yg tidak punya penghasilan menjadi punya penghasilan ,,,mengangkat perekonomian mereka', 'https://drive.google.com/uc?export=view&id=1fvcAo1qDES8WhEwRBlwPW_5BYgChMwVx'),
('63b78362-70df-11ee-b962-0242ac120002', '3214082303980002', 'Sanggar tari dan Galery Kostum tari', '3', '10', 'Desa Batutumpang', 'Tegal Waru', '', 'Ajidin', 'Azidin.gordes23@gmail.com', '081909470447', '', 'Sanggar tari dan galery penyewaan kostum tari', 'https://drive.google.com/uc?export=view&id=1pzgVV8MN040K6c1h5MJPS_55uZOjoxa9'),
('63b78448-70df-11ee-b962-0242ac120002', '3214136810870002', '@ Deary Food (Lotek kucur th susi, Cireng krupuk/c', '3', '1', 'Kp. Cilodong rt19/07 ds. Cikopo kec. Bungursari purwakarta', 'Bungursari', '', 'Susi mulyati', 'Susimulyati2810@gmail.com', '085283393604', '', 'Produksi dan pemasaran', 'https://drive.google.com/uc?export=view&id=15E6vjxOBYeL1f_22Q79T-MjgfmROGuSm'),
('63b7851a-70df-11ee-b962-0242ac120002', '3214125209810002', 'Nasi pecel ', '1', '1', 'Jl Alternatif Cikopak-Bic, desa cigelam sebrang masjid Nurul Huda', 'Babakancika', '', 'Sri Mulasih', 'Srimulasih12@gmail.com', '081283391138', '', 'Menjual nasi pecel, tempe mendoan, tahu pedas dan aneka gorengan lainnya', 'https://drive.google.com/uc?export=view&id=1sdofj5zceUUUqH9LSmpGQpIBGksEdmAJ'),
('63b785f6-70df-11ee-b962-0242ac120002', '3214034904990001', 'Roti Ropi & azkyummy ', '3', '1', 'Rest area cikao park 1001 Purwakarta', 'Jatiluhur', '', 'Rima ambarsari ', 'rimaambarsari12@gmail.com', '083824041294', '', 'Roti Ropi menjual roti dengan 7 varian rasa, azkyummy menjual beberapa camilan seperti risol mayo, cheese roll, bento rice,dll.', 'https://drive.google.com/uc?export=view&id=12xf9Rr4HiLaRKfurIzJzeTOOyJclVtQj'),
('63b786be-70df-11ee-b962-0242ac120002', '3214012208990006', 'Moxie.ku', '1', '11', 'Jl.Basuki Rahmat No.100 Sindangkasih, Purwakarta', 'Purwakarta', '', 'Adhitya Firmanda Gustiansyah', 'adhityafirmanda123@gmail.com', '085171140822', '', 'Moxie.ku bergerak dibidang jasa, yaitu jasa pencucian sepatu, perawatan sepatu dan custom painting atau lukis di bidang sepatu, jaket, dompet, helm, tangki motor dan rangka motor. selain custom painting moxie.ku pun bergerak di jasa gambar mural, grafiti dan design art digital seperti kebutuhan artwork brand, logo perusahaan dan komunitas.', 'https://drive.google.com/uc?export=view&id=1Ytcg2d3EvIhth7IHdJwJ-z1XPIf5drFw'),
('63b78790-70df-11ee-b962-0242ac120002', '3214120604900004', 'Topoci purwakarta', '3', '1', 'Purwakarta street food Jl Baru purwakarta', 'Babakancika', '', 'Rachmat Apriyasa', 'rama.apriyasa@gmail.com', '081290090496', '', 'Angkringan Korea', 'https://drive.google.com/uc?export=view&id=1QXpLKVYxd6p7IMcNVX6OcFhYBGaCeWIW'),
('63b78862-70df-11ee-b962-0242ac120002', '3214051509950003', 'Katapena Story', '3', '9', 'Kp. Hanura 006/002 Desa. Malangnengah', 'Sukatani', '', 'Dede Juanda', 'dedejuanda15@gmail.com', '081210996891', '', 'Katapena.story ialah usaha mandiri yang bergerak di bidang fotografi & videografi secara personal (freelance)Berdiri pada tahun 2019 sampai saat ini.', 'https://drive.google.com/uc?export=view&id=1jj0EYKo9mdndnPDhPA8SiZlplWEho5a7'),
('63b78b50-70df-11ee-b962-0242ac120002', '3214095608740002', 'Aulie food', '2', '1', 'Ds Cibuntu rt 05/02,Kec Wanayasa -Purwakarta', 'Wanayasa', '', 'Titun kartini', 'titink981@gmail.com', '087879943777', '', 'Berawal dari keprihatinsn terhadap buah pala yg kurang bermanfaat selama ini,jadi kepikiran u tuk membuat produk yang dari buah pala,supaya bernanfaat,,dan memanfaat ka buah pala,juga membuka usaha,', 'https://drive.google.com/uc?export=view&id=1LSm1pa94VKgJPCLD8ptLg6PWzkbCsTY1'),
('63b78c40-70df-11ee-b962-0242ac120002', '3214010403960004', 'Haaz Studio', '3', '6', 'Perumahan benteng mutiara mas blok g3 no 8', 'Campaka', '', 'Eko mardiansyah', 'mardiansyahdesain.work@gmail.com', '081290841896', '', 'Konsultan perencanaan bangunan', 'https://drive.google.com/uc?export=view&id=1KshEnJ3fkqAXoiuma2BU7JzXSiy0hutA'),
('63b78d62-70df-11ee-b962-0242ac120002', '3214101406760004', 'Acep wawan', '3', '1', 'Kp. Selabaya, desa sawah kulon', 'Pasawahan', '', 'Acep wawan', 'achefachef@gmail.com', '081462234331', '', 'Pedagang kuliner ice, dan gorengan', 'https://drive.google.com/uc?export=view&id=1Ao2AUByNWUmuo1hxXJokkrpOD5SzjkeD'),
('63b78eac-70df-11ee-b962-0242ac120002', '3214026409820002', 'Sanggar seni Campaka ligar ', '3', '10', 'Desa campaka RT 06 RW 02', 'Campaka', '', 'Rosma Delisma kurniati ', 'maganzdelisma1915@gmail.com', '085943488033', '', 'Kursus tari,kursus makeup dan rental kostum', 'https://drive.google.com/uc?export=view&id=1RW91_oCwm38uZURllX8iC8NNx3U88fmB'),
('63b78fc4-70df-11ee-b962-0242ac120002', '3174036009840001', 'Jasuke', '3', '1', 'Jl.basuki rahmat sindangkasih', 'Purwakarta', '', 'Ummu Habibah', 'ummu.habibah8419@gmail.com', '0895806446777', '', 'Jajanan kuliner', 'https://drive.google.com/uc?export=view&id=1v6_Ha1Kfl14RvB7DJ2Oy6ntV5m8YSWYe'),
('63b790d2-70df-11ee-b962-0242ac120002', '3214012510840006', 'Komunitas Seni PARIS (Purwakarta Art Istimewa)', '2', '12', 'Jl. Raya Sadang Ds. Ciwangi No.28 Rt32/01 Kec, Bungursari Kab. Purwakarta Kode Pos 41181', 'Bungursari', '', 'Demank/Adhevio', 'adheioscornovyansar@gmail.com', '085759085525', '', 'Seni rupa, Seni Tari, Design Interior, dll', 'https://drive.google.com/uc?export=view&id=1qfu4dEeKiTsb8xr4jlvEKmkenrzgg3pk'),
('63b791ea-70df-11ee-b962-0242ac120002', '3214133108000003', 'Kawaii Koi', '1', '1', 'Jl. Alternatif BIC, Desa Dangder, Kecamatan Bungursari, Kabupaten Purwakarta', 'Bungursari', '', 'Ariansa', 'jeffsullivan04@gmail.com', '085163631844', '', 'Menjual makanan ala jepang yaitu Taiyaki dan Dorayaki, dan juga minuman nya yaitu Milkshake', 'https://drive.google.com/uc?export=view&id=14uemr3PKXzavUEG2zKHePhhogLmGEgGd'),
('63b79550-70df-11ee-b962-0242ac120002', '3214012010970004', 'Maschot.id by Kanaka Group', '3', '1', 'Jl. Ganda Negara No.5, Nagri Kidul, Kec. Purwakarta, Kabupaten Purwakarta, Jawa Barat 41111', 'Purwakarta', '', 'Guntur Gunawan Kusuma Parta ', 'maschotidofficial@gmail.com', '089635937977', '', 'Menjual berbagai macam masakan pasta dan snack dengan harga yang terjangkau namun tepat mengedepankan rasa yang unik dan enak', 'https://drive.google.com/uc?export=view&id=1u9DyqRDpT3OxR1rTzaFO7hI8L3CgeIZ4'),
('63b796cc-70df-11ee-b962-0242ac120002', '3214130509830001', 'Demank Creative Production [ DCP ]', '3', '12', 'Jl.raya sadang desa ciwangi no.28 rt:32/01 kec.bungursari kab.purwakarta', 'Bungursari', '', '( Demank ) Juhana Rusyana', 'juhanarusyana@gmail.com', '083823794130', '', 'DCP mulai usaha dibidang karya seni, kerajinan tangan, seni rupa, dan crafting di tahun 2019', 'https://drive.google.com/uc?export=view&id=1qLp33bLWJtHreicZxI1J9V7QWC3fw3Y7'),
('63b797f8-70df-11ee-b962-0242ac120002', '3214124301870001', 'Cirawang(cilok bawang tulang rangu) ', '1', '1', 'Kp. Krajan Rt/Rw 07/03.Des/Kec.Babakan cikao kab. Purwakarta', 'Babakancika', '', 'Cucun cunayah', 'mvia6318@gmail.com', '087841811975', '', 'Sendiri', 'https://drive.google.com/uc?export=view&id=1SeESoI8wEePwl5TTrEVlxTtEXu_eqEog'),
('63b7992e-70df-11ee-b962-0242ac120002', '3275003610790028', 'Dapoer Raeesa', '1', '1', 'Perum Bukit Kencana Residence Blok L2 no 4 Cibening', 'Bungursari', '', 'Evie Oktavianingsih', 'alfarghani26@gmail.com ', '081319819011', 'www.kripikunik.com', 'Dimulai usaha catering th 2014 lalu pas corona merambah ke kripik sumpia udang', 'https://drive.google.com/uc?export=view&id=1L9G6L-vKx965gqs7NRe_WRAxoHKpeDEx'),
('63b79a64-70df-11ee-b962-0242ac120002', '3214064303840004', 'Wina Salon Purwakarta ', '1', '2', 'Kp. Sukamaju RT 13 RW 04', 'Darangdan', '', 'Wina Nengsih ', 'wienceu87@gmail.com', '085863684231', '', 'Usaha yang bergerak dibidang jasa perawatan kecantikan rambut, wajah, badan', 'https://drive.google.com/uc?export=view&id=1y65_sv_jpJneBKzR2EBFhQlTaG9wXrti'),
('63b79bd6-70df-11ee-b962-0242ac120002', '3203120308880010', 'Dayaba', '1', '3', 'Desa Margaluyu', 'Kiarapedes', '', 'Rudiana Efendi', 'cvalbarokah898@gmail.com', '083825967244', '', 'Membuat olahan kayu untuk dijadikan tempat atau property di rumah makan jepang.', 'https://drive.google.com/uc?export=view&id=1of6sRMPrik5CK588r4T0RWhf_KvkOGI2'),
('63b79d98-70df-11ee-b962-0242ac120002', '3214013001040004', 'Kelana.Dreadlock.', '3', '2', 'Jl. Ibrahimsingadilaga RT/RW 15/10, belakang puskesmas koncara. (Bisa menerima panggilan ke tempat)', 'Purwakarta', '', 'Galih Adhitya anggra', 'galihdoger@gmail.com', '089671482341', '', 'Kelana.Dreadlock adalah bidang usaha yang bergerak di fashion style rambut seperti Cornrow,Dreadlock,Boxbraids.', 'https://drive.google.com/uc?export=view&id=1F8uTej-Zfer58nD6gquq32xqa2vbg5qp'),
('63b7a16c-70df-11ee-b962-0242ac120002', '3214120503930003', 'Inglocoffee ', '1', '1', 'Jl Basuki Rahmat No 100 (Sindangkasih)Kel Purwakarta Kec Purwakarta 41112', 'Purwakarta', '', 'Sumardi paragon prosper ', 'paragon.note@ymail.com', '081398017648', 'Inglot.id', 'Coffee shop', 'https://drive.google.com/uc?export=view&id=15M0IC29g0j_03-MJmZrH4HulKdHktqmy'),
('63b7a310-70df-11ee-b962-0242ac120002', '3214014211860007', 'Pupuhu Art', '3', '3', 'Gg. Ekajaya Rt. 021/Rw.006 kel. Munjul Jaya', 'Purwakarta', '', 'Siti Solihah Nuriah', 'pupuhuart@gmail.com', '087773609208', '', 'Memproduksi dan menjual tas kain handmade, produk rajutan dan fashion', 'https://drive.google.com/uc?export=view&id=1ZwoaaQDO0ygsKkOOhQd6cJas6jNLPCd0'),
('63b7a4a0-70df-11ee-b962-0242ac120002', '3214010706930004', 'Diwangkara Wedding Organizer', '1', '10', 'Jl. Veteran Gg. Beringin No.383 RT. 80/08 Kel. Nagri Kaler Kec. Purwakarta', 'Purwakarta', '', 'Mochammad Iyan Sopyana, S.Pd., CPS', 'mochammadiyan@gmail.com', '081818885378', '', 'Bergerak di Bidang Wedding Planner & Organizer', 'https://drive.google.com/uc?export=view&id=1E66GxDlEwAFmbXb-KB7ComnWKFBJ682v'),
('63b7a66c-70df-11ee-b962-0242ac120002', '3214064408760005', 'Kedai Zuppa Family', '3', '1', 'Desa Nangewer kp Cinusa rt 04/010', 'Darangdan', '', 'Ati Nurhayati', 'atinurhayati284@gmail.com', '081909585616', '', 'Di bidang kuliner zuppa soup,pizza,aneka roti manis(korean garlic,abon,dll)es bulbul', 'https://drive.google.com/uc?export=view&id=1KYs2Qy9ALEDVf5YSsE1691piE98QAZdp'),
('63b7a81a-70df-11ee-b962-0242ac120002', '3275035110840029', 'd\'Djajan Nely ', '3', '1', 'Perum Dian anyar blok NA 5 RT 16 RW 12 cisereuh Purwakarta', 'Purwakarta', '', 'NAILY RAHMAWATI ', 'kowekuwi212@gmail.com', '085810554203', '', 'Memproduksi&menjual jajanan Frozen/mentah dan matang yg digoreng dadakan', 'https://drive.google.com/uc?export=view&id=18ZM8aLANOQFtbw9At4pG-jU9iSmXpeVE'),
('63b7a9fa-70df-11ee-b962-0242ac120002', '3214046011780002', 'C\'milan Nahnu', '1', '1', 'Kp. Coblong rt 001 rw 001Ds. Palinggihan, kec. PleredKab. Purwakarta, Jawa Barat', 'Plered', '', 'Tini Rukmini', 'rukminitininov@gmail.com', '081909399490', '', 'Owner atau pemilik ukm di bidang kuliner. Produsen aneka makanan ringan atau cemilan dan minuman. Ikut di beberapa komunitas ukm kota purwakarta.', 'https://drive.google.com/uc?export=view&id=1_Cd-WTa0VLo0jzK8j8jtEBHLQR4vTwuT'),
('63b7aba8-70df-11ee-b962-0242ac120002', '3214132705870001', 'Cilokba Diya Dinanti', '3', '1', 'Jalan Ipik Gandamanah, Perumahan Pesona Panghegar Blok B3 No 11, Kelurahan Ciseureuh, Kecamatan Purwakarta, Kabupaten Purwakarta 41118', 'Purwakarta', '', 'Riyadi Ramadhan S', 'riyadiramadhan87@gmail.com', '081296179317', '', 'Cafe Diya Dinanti, cafe yang menjual salah satu makanan terfavorit yaitu Cilokba Diya Dinanti dengan bahan bakso premium dicampurkan dengan bumbu rempahNULLrempah yang gurih dan cabe pedas yang menggugah selera.', 'https://drive.google.com/uc?export=view&id=1pQJh0RyXC7BpxGvsHjx4fo-exf0MDkqZ'),
('63b7b058-70df-11ee-b962-0242ac120002', '3214011612910005', 'Samba Juanda', '1', '2', 'Perum Benteng Mutiara Mas Blok J4 No. 7 , Desa/Kelurahan Benteng,Kec. Campaka, Kab. Purwakarta, Provinsi Jawa Barat,Kode Pos: 41181', 'Purwakarta', '', 'Samba Setia Juanda', 'sambajuanda42@gmail.com', '085659921750', '', 'Samba Setia Juanda Lahir di Purwakarta pada tanggal 16 Desember 1991.Perkembangan Zaman yang semakin maju industri fashion local maupun internasional berjamur, bahkan di purwakarta Samba Juanda adalah brand yang bergerak di bidang fashion nama tersebut diambil dari nama sang Fashion designer Samba Setia Juanda. Usaha ini dimulai dari tahun 2019. untuk support salah satu finalis rissing star rcti. Samba Juanda memiki Visi diantara adalah sebagai busana fashonnable, kekinian anak muda maupun orang tua yang menghasilkan produk – produk yang berkualitas.dan cinta terhadap budaya indonesia.Misi Untuk Mencapai visi tersebut Samba Juanda mempunyai sebuah misi sebagai berikut : 1.Memberikan pelayanan yang baik dengan konsep 3 S2.Memberikan Jamuan Snack ketika berkunjung atau pun akan Fitting3.Berinovasi dan berekplorasi dengan kain kain etnik yang d mix dengan kain polos dalam menciptakan produk,. Mengutamakan bahan yang berkualitas, serta jahitan rapi. karya dari saya sudah masuk di beberapa pagent di kota karawang. dan sudah pernah mengikuti pageleran busana di jakarta pada april 2023', 'https://drive.google.com/uc?export=view&id=1AVgfMOnCmRa3BHJUX015WAKxIKWgZdXD'),
('63b7b1fc-70df-11ee-b962-0242ac120002', '3205061102920004', 'Somtam Salad Thailand', '1', '1', 'Perum BKR Blok J4 No 19 Cibening', 'Bungursari', '', 'Hendi Mulyana', 'hendimulyana77@gmail.com', '089579878546', '', 'Berusia 31 tahun, usaha dibidang kuliner salad thailand, berdiri sejak 3 minggu yg lalu.', 'https://drive.google.com/uc?export=view&id=1t752pv2iWgPOKMXs_CfZKA5y4XHWc6RH'),
('63b7b378-70df-11ee-b962-0242ac120002', '3214055510990001', 'Kripik Sikuya Baperan', '3', '1', 'Kp. Jambusewu Rt 13 Rw 05 Ds. Cilalawi Sukatani Purwakarta', 'Sukatani', '', 'Asri Oktari', 'asrioktari65@gmail.com', '0838 1639 2940', '', 'Usaha kripik sikuya baperan (kulit lumpia banyak rasa bervariant) sudah berjalan 4 tahun, saat ini sedang mengikuti proses untuk mendapatkan legalitas PIRT.', 'https://drive.google.com/uc?export=view&id=1JtgjZu-pPt9yQEZXPWPaAeZzoU_uXiuu'),
('63b7b558-70df-11ee-b962-0242ac120002', '3214015106020001', 'luminous fashion id ', '3', '2', 'Jl. Flamboyan no 48 rt 037/004', 'Purwakarta', '', 'Rachma Firyal / Rangga Jatnika', 'lumonousfashion10@gmail.com', '085798890034', '', 'luminous.id bergerak di bidang fashion. luminous.id ini, memproduksi dan menjual berbagai macam hijab dan pakaian dengan menggunakan media penjualan e commers seperti tiktok dan shoppe', 'https://drive.google.com/uc?export=view&id=1joQKE6QbQEK9omD118Kh2XIVc_Dnznfd'),
('63b7b756-70df-11ee-b962-0242ac120002', '3214060505790003', 'Dagang', '3', '1', 'Desa linggasari rt08/03', 'Darangdan', '', 'Iswandi', 'Iswan9302@gmail', '087875738505', '', 'Produk makanan ringan', 'https://drive.google.com/uc?export=view&id=1Q9h6tP8gRDe4bz6gZZ3zbZGVblk1_mhd'),
('63b7b94a-70df-11ee-b962-0242ac120002', '3214012104850001', 'Content creator', '3', '14', 'Perum panorama purwakarta', 'Purwakarta', '', 'Hari abdullah', 'bcreativefile@gmail.com', '081299245305', '', 'Usaha/jasa yang bergerak di bidang audio visual,periklanan, dokumentasi dan content creator', 'https://drive.google.com/uc?export=view&id=1L4Ok2R0DMjYrncpoahvDR0JZ-hBcJ500'),
('63b7bb0c-70df-11ee-b962-0242ac120002', '3214121809860002', 'Magic show', '1', '10', 'kp.krajan rt.002 rw.001', 'Babakancika', '', 'Ragil septia', 'ragilseptia@gmail.com', '089639615492', '', 'menjual property sulap( alat sulap ),jasa pertunjukan sulap ( magic show ).', 'https://drive.google.com/uc?export=view&id=1UlPIXe9fMfqGXyDD6o90fotQ3wIfACmu'),
('63b7bcce-70df-11ee-b962-0242ac120002', '3273132412880001', 'The WIld Stripes', '1', '2', 'Jl. Soka 2', 'Purwakarta', '', 'Yan yan', 'yeyeforyanz@gmail.com', '081220104545', 'https://thewildstripes.blogspot.com', 'sebuah brand yang dibangun dari sebuah mimpi kecil', 'https://drive.google.com/uc?export=view&id=14S-YOsDOcuXMLGgjSo7yLNqm1cQUkSLv'),
('63b7c106-70df-11ee-b962-0242ac120002', '3214015710940002', 'Chamy Collection', '3', '2', 'Jl. Munjul Jaya', 'Purwakarta', '', 'Yeni Anisa', 'chamycollection@gmail.com', '085798615176', '', 'Menjual Pakaian Anak dan Dewasa', 'https://drive.google.com/uc?export=view&id=1zEqSxypXvKKvGbviKeJpfYZh0pwBnNJi'),
('63b7c2fa-70df-11ee-b962-0242ac120002', '3672026604670001', 'Quinn’s Kitchen', '3', '1', 'Kp. Jawa RT/RW 008/004 Desa cibogohilir Kecamatan Plered Kabupaten Purwakarta prov. Jawa Barat', 'Plered', '', 'Mira Karlina', 'mirakarlina19@gmail.com', '081912869098', '', 'Quinn’s Kitchen adalah umkm yang bergerak di bidang kuliner yaitu puding. Berdiri sejak 2018 sampai sekarang. Puding yang dibuat homemade.', 'https://drive.google.com/uc?export=view&id=1KoTPJHgIh8M5azfvicQLpihoIOHsYWv6'),
('63b7c4a8-70df-11ee-b962-0242ac120002', '3214060908030002', 'WARGI (WARUNG YOGI)', '3', '1', 'Kp.Cikokosan Rt/Rw 001/001, Des.Gunung Hejo, Kec.Darangdan, Kab.Purwakarta', 'Darangdan', '', 'YOGI MAULANA', 'ym6009063@gmail.com', '083871456886', '', 'Manusia biasa', 'https://drive.google.com/uc?export=view&id=1bjt2pFbjksZwLZhGZWZ7LdagnfEgtyzL'),
('63b7c638-70df-11ee-b962-0242ac120002', '3576015612880001', 'DAMARU', '3', '1', 'Perum Bukit Soeryo Blok C6/12 Purwakarta', 'Babakancika', '', 'DARU PROBO RETNO', 'darupr@gmail.com', '081289733021', '', 'Usah bergerak di bidang kuliner makanan dan minuman', 'https://drive.google.com/uc?export=view&id=10Bu3q3SY41n-Ygn9WD2CxCOe9fHGSJMo'),
('63b7c7e6-70df-11ee-b962-0242ac120002', '1671083112780022', 'TePy / Pempek Kriukkk', '1', '1', 'kp mekarsari, gang galur no 54, rt 04 rw 02, Cibening', 'Bungursari', '', 'D Miko Wardhana ', 'desttumikowardhana@gmail.com', '081367460631', 'pempekkriukkk.site', 'pempek viral Purwakarta, keripik Tenggiri crispy', 'https://drive.google.com/uc?export=view&id=1oEBX24AKX438UxM0ecPe7zGCkgAkEpEk'),
('63b7ca02-70df-11ee-b962-0242ac120002', '3214010507830004', 'BACIKU (Bakso Aci Kumplit)', '1', '1', 'Jl.Letkol Abdul Kodir rt.06 rw.03 Kelurahan Purwamekar', 'Purwakarta', '', 'Rizaldy Romadhona', 'Rizaldyromadhona@gmail.com', '087779650222', '', 'Produsen Bakso Aci Kumplit khas Garut', 'https://drive.google.com/uc?export=view&id=1jbzwdW-ZF9Lv0I6hXkRR5guvmDyLj3ge'),
('63b7cb7e-70df-11ee-b962-0242ac120002', '3604151805020002', 'Es Milo & Pisang Gondrong ', '3', '1', 'Jln industri Kp.krajan Rt.06/Rw.03 Desa Babakan cikao Kec. Babakan cikao Kab. Purwakarta', 'Babakancika', '', 'David & Fitri ', 'davidnurulaulia@gmail.com', '089664078023', '', '', 'https://drive.google.com/uc?export=view&id=1pSbOxws4y7h64S-JrljQ7eb9b4PShw0d'),
('63b7ccfa-70df-11ee-b962-0242ac120002', '3214062208920003', 'Badut Sulap Purwakarta', '3', '10', 'Jl. Raya Nagrak Darangdan RT06/03', 'Darangdan', '', 'Agus Pupun Purwadi', 'aguspupunpurwadi@gmail.com', '087712340210', '', 'Usaha ini berjalan di bidang Event Organizer Birthday Party', 'https://drive.google.com/uc?export=view&id=1g91wIA-S0jYAEb1BRzinMY8CqvJrCUun'),
('63b7d038-70df-11ee-b962-0242ac120002', '3214016712910005', 'Meizan food / makanan / mochi', '1', '1', 'Gang sukarata rt 14 rw 06 kel cipaisan purwakarta', 'Purwakarta', '', 'N Diah Hermawati Azis', 'Dya.azalea7@gmail.com', '087779541099', '', 'Mochi home made dengan 4 varian rasa . Dan mochi daifuku', 'https://drive.google.com/uc?export=view&id=1tsEsVcrMEdI-M3Wq1xuDRYxPjJ0ee6hT'),
('63b7d1f0-70df-11ee-b962-0242ac120002', '3214010609890003', 'Awanz Media', '1', '14', 'Perumahan Benteng Mutiara Mas', 'Campaka', '', 'Riky Rustiawan', 'rikyrustiawan15@gmail.com', '083816354335', 'awanzmedia.biz.id', 'awanzmedia adalah sebuah jasa pembuatan video', 'https://drive.google.com/uc?export=view&id=1iR0r-aNeVhzoxX1baArfIINk35ithgP_'),
('63b7d394-70df-11ee-b962-0242ac120002', '3214011312930002', 'Mie Jaya 7 Turunan', '3', '1', 'Jl. Veteran No. 159', 'Purwakarta', '', 'Graha Mustika Jamal', 'jaya7turunan@gmail.com', '087846686009', 'jaya7turunan.my.canva.site', 'Pelaku usaha mie ayam, bakso, dan bubur ayam serta frozen food pangsit rebus dan goreng dengan citarasa oriental asli. Menerima juga pesanan catering atau personal chef', 'https://drive.google.com/uc?export=view&id=1q45ESrnFwgzVUTG1Y5GRbposCzD854aN'),
('63b7d4e8-70df-11ee-b962-0242ac120002', '3214016209720002', 'AyyanaDessert', '3', '1', 'Perum Panorama Indah Blok A 11/15', 'Purwakarta', '', 'Dian Anggraini', 'ddiani2209@gmail.com', '081912051808', '', 'Semangat membangun usaha kuliner untuk melestarikan resep kue warisan ibu dan membuka lowongan pekerjaan untuk orang lain.', 'https://drive.google.com/uc?export=view&id=1jQnxBtNynZeykRiPg-zHEF2gNRtJAHHT'),
('63b7d614-70df-11ee-b962-0242ac120002', '3214010711900005', 'RNA Videobooth 360', '1', '9', 'Sadang Terminal Square Lt. 2, no. 249.', 'Purwakarta', '', 'Ridwan Nugraha', 'Iniridwan@gmail.com', '085759003007', 'https://instagram.com/rnavideobooth360?igshid=OGQ5ZDc2ODk2ZA==', 'Video berputar 360 derajat untuk event dan lainnya.', 'https://drive.google.com/uc?export=view&id=1ZYdWvh_qVfFXSlOGwwDTBcAGSfIFKHVI'),
('63b7d736-70df-11ee-b962-0242ac120002', '3214010505830023', 'MYDRIM', '3', '16', 'Perumahan Bumi Inti Persada blok D no 8 RT.23 RW.08', 'Bungursari', '', 'Yayat Hidayat', 'yayat2836@gmail.com', '085862341470', 'www.may-drim.my.id', 'Owner', 'https://drive.google.com/uc?export=view&id=1vfoWA-BQ2COwpn1WA5f85PzlZWaFtJ9F'),
('63b7db3c-70df-11ee-b962-0242ac120002', '3204160306930003', 'Kiwari Projek', '1', '9', 'Cluster Marsela Blok F2, Maracang', 'Babakancika', '', 'Andri Supardi', 'kiwari.projek@gmail.com', '085295559123', '', 'Jasa Foto dan Video', 'https://drive.google.com/uc?export=view&id=1MBZ2gDid4BrdI4ioAhRDPH8ksjES-EFg'),
('63b7dc5e-70df-11ee-b962-0242ac120002', '3214171607980001', 'Tahu Gejrot Bang Martin', '3', '1', 'Kp. Krajan RT 14 RW 06 DESA WANAYSA', 'Wanayasa', '', 'Mochamad Dian Mu\'minin', 'dianmoeminin@gmail.com', '0882000278872', '', 'Tahu gejrot adalah makan khas cirebon yang membunging kemanaNULLmana dari dulu hingga sekarang masih eksih di kalangan para remaja maupun orang tua..Tahu gejrot terdiri dari.1. Tahu kopong2. Bawang merah3. Bawang putih4. Garam5. Cabe rawit6. Air asam jawa.Tahu gejrot yang mempunyai cita rasa yang khas dengan asam manis segar dapat membuat yang memakannya biaa merasakan segar kembali dikala keadaan sedang di pase suntuk suntuknya. Tahu gejrot etan tau😁.', 'https://drive.google.com/uc?export=view&id=17U0yB_KVpwHvKd4iP4NrMgHMhdaircEo'),
('63b7dd80-70df-11ee-b962-0242ac120002', '3214010604960008', 'Bakakak Ayam Gelora', '3', '1', 'Warung kandang kecamatan plered', 'Plered', '', 'Deni Ismail Saleh', 'deni.smail546@gmail.com', '087826997630', '', 'Usaha di mulai pada tahun 2020 di masa masa krisis pandemi covid 19, dimana brand bakakak 35rb belum ada yang berjualan saya sudah mulai memasarakan di plered dan di purwakarta kota hingga saat ini.', 'https://drive.google.com/uc?export=view&id=1S0mG2djmdy_QNTvYLwIOTkXDjJbLS43u'),
('63b7de98-70df-11ee-b962-0242ac120002', '3214084610980001', 'Pedagang makanan ', '3', '1', 'Kp. Cicadas RT.006 RW.003 Ds. Cadasmekar Kecamatan Tegalwaru Kabupaten Purwakarta', 'Tegal Waru', '', 'Celi Susanti ', 'cherlly.susanty67@gmail.com', '87730869060', '', 'Membuat aneka makanan berbahan tepung tapioka seperti cireng, citul dan per esan seperti es lilin, es kulkul', 'https://drive.google.com/uc?export=view&id=1DQJcqWvw2_j2cS50LZELVFSQBBzfETjD'),
('63b7dfa6-70df-11ee-b962-0242ac120002', '3214131505760001', 'Batagor BIP', '1', '1', 'Perum BIP blok h.05 rt 27 rw 09 desa cibening', 'Bungursari', '', 'Anto susanto', 'popinurhapipah27@gmail.com', '087778761921', '', 'Batagor yang berbahan ikan tenggiri', 'https://drive.google.com/uc?export=view&id=1wcH7TQVNnEtpVZ4DJ6uxNnSfjNCYQ8Vd'),
('63b7e0be-70df-11ee-b962-0242ac120002', '3214105608870003', 'Wedding Organizer Sanggar Mega Tiara', '3', '2', 'Desa Pasawahan kidul RT. 04/02 Kec. Pasawahan Kab. Purwakarta', 'Pasawahan', '', 'Mega Agustina Setiawan, M. Sn. ', 'megaagustina34@gmail.com', '085295468576', '', 'Menyewakan jasa makeup wedding/khitanan, sewa baju pengantin, dekorasi wedding/khitanan, perlengkapan pernikahan, sewa baju kebaya, jas, kostum tari jawa barat Nusantara', 'https://drive.google.com/uc?export=view&id=1176Px28HBUt0SaVq3FXLm7O36cqFFVIe'),
('63b7e1cc-70df-11ee-b962-0242ac120002', '3214014505710018', 'Nasi kuning oesman', '1', '1', 'Perum Oesman jln Cendana 2 black k k no 9', 'Purwakarta', '', 'Hernawati', 'hernawatiaja74@gmail.com', '087719260098', 'Grapfood/shopee food.com', 'Sarapan pagi dan makan dll', 'https://drive.google.com/uc?export=view&id=1I6NH2CrEMeytOSoTvs1AhpdfjdDB8o0y'),
('63b7e2ee-70df-11ee-b962-0242ac120002', '3214121903870003', 'Creative Time', '1', '14', 'Ciwareng', 'Babakancika', '', 'Dian ', 'ukirjejak@gmail.com', '081222129907', '', 'Multimedia', 'https://drive.google.com/uc?export=view&id=1g6rJlnBECagcKTSUujie7X9VAZAtg91F'),
('63b7e5e6-70df-11ee-b962-0242ac120002', '3204266005990002', 'Aneka makanan ringan kripik ', '3', '1', 'Kp. Cianting sukatani purwakarta', 'Sukatani', '', 'Windi rosminda', 'windirosminda8@gmail.com', '083822642507', '', 'Saya sekarang menekuni usaha makanan ringan yang di titipkn ke tiap tiap warung seperti kripik singkong, ubi, telor gabus dll saya jual 2rbu rupiah walaupun usaha saya kecil tapi saya bisa menghidupi keluarga kecil saya', 'https://drive.google.com/uc?export=view&id=1SP7cgVLq3zzpMABlA0AN3l7cwOXJP7Cw'),
('63b7e712-70df-11ee-b962-0242ac120002', '3214175608960001', 'Hana Crochet', '1', '3', 'Kp. Cijolang Ds. Lingga dari rt 12 rw 04', 'Darangdan', '', 'Hana Aulia Hidayat', 'aulia16hana@gmail.com', '087738849209', '', 'Aneka kreasi produk rajutan', 'https://drive.google.com/uc?export=view&id=1QEApuKMDb6tRxoqSFqoqAFSeqIG31-Wc'),
('63b7e82a-70df-11ee-b962-0242ac120002', '3214025309990003', 'Eira handmade', '1', '2', 'Kp babakan 09/03. desa gardu', 'Kiarapedes', '', 'Ainina farhiyyah', 'aininafh@gmail.com', '083838163719', '', 'Menyalurkan hobi', 'https://drive.google.com/uc?export=view&id=1ebcs2bujCi4zO8_G0_cTzNV6Jsm1Qv85'),
('63b7e942-70df-11ee-b962-0242ac120002', '3214171207960001', 'ND_Design', '3', '15', 'Kp.cihideung, kel.ciseureuh', 'Purwakarta', '', 'Moh Nurqoyyim ', 'nurqoyyim12@gmail.com', '087879712602', '-', 'Menjalankan usaha kreatif di bidang desain, dan marketing', 'https://drive.google.com/uc?export=view&id=17E1aunNC6FCxqb6RXJu_141RNHFYtqFu'),
('63b7ea50-70df-11ee-b962-0242ac120002', '3214130112940001', 'Es Kelapa muda dan aneka jajanan anak', '3', '1', 'Kp.cibungur Ds.cibungur Rt.009/003 kec.bungursari kb.purwakarta', 'Bungursari', '', 'DERI DESTIANA', 'Derifebriansyah565@gmail.com', '087796446222', '', 'mohon agar bisa di bantu modal usaha', 'https://drive.google.com/uc?export=view&id=1thkBHfA9W6RZ8AcpYUlHgUGrVjxNDPzx'),
('63b7eb5e-70df-11ee-b962-0242ac120002', '3214015402780002', 'Ziraya Pastry', '3', '1', 'Perum Dian Anyar blok E 1 no 12', 'Purwakarta', '', 'Gina Mulyasari', 'mulyasari.gina@gmail.com', '085211213054', '', 'membuat pastry, bakery, kue² tradisional', 'https://drive.google.com/uc?export=view&id=1SHVtDBUGWZv2OeEsTE9noCVCFCVeZ8Fr'),
('63b7ec6c-70df-11ee-b962-0242ac120002', '3214041004800001', 'Keramik glasir plered', '1', '3', 'Gg SDN2 anjun no 89 02/01 plered purwakarta 41162 Jabar', 'Plered', '', 'Sofian subarkah', 'yanshandscraft10@gmail.com', '085938659393', 'Keramikglasirplered.blogspot.com', 'Keramik glasir plered sebuah usaha atau produsen kriya dibidang keramik tanah putih dan stoneware yang memproduksi jenis keramik tableware seperti plate diner,cangkir ,dan yang lainnya .termasuk keramik teknik buat kebutuhan mesin industry ...seperti kalumina keramik', 'https://drive.google.com/uc?export=view&id=1Z4vfseYn0JWyszhL9q1uCJLPo_VEcFYY'),
('63b7f130-70df-11ee-b962-0242ac120002', '3214092303010001', 'Sapphire Industries', '3', '11', 'Kp. Raharja 04/02, Kec. Wanayasa, Kab Purwakarta 41174', 'Wanayasa', '', 'Wahyudin', 'sayuu3818@gmail.com', '083195798997', '', 'Sapphire Industries merupakan perusahaan/startup yang bergerak di bidang perancangan design produk, juga merupakan penyedia layanan bagi pemilik usaha online.', 'https://drive.google.com/uc?export=view&id=1dttJOj1gVWuhmAoLxZ0fJ4AX9Y00UDHg'),
('63b7f266-70df-11ee-b962-0242ac120002', '3214035705710001', 'MKU SAHATE', '1', '1', 'Kp. Mekarsari. Cibinong', 'Jatiluhur', '', 'Titin Martini', 'titinbasreng@gmail.com', '083836213210', '', 'Langka dan unik', 'https://drive.google.com/uc?export=view&id=15w3iu1D7cWGhSQYUB4ukymMS4_5STJGK'),
('63b7f374-70df-11ee-b962-0242ac120002', '3214104108000003', 'Odang odeng korean street food ', '3', '1', 'Dpn Indomaret Margasari', 'Pasawahan', '', 'Nyai siti patimah ', 'sitipatimahh083@gmail.com', '087720361205', '', 'Menjual makanan korea', 'https://drive.google.com/uc?export=view&id=1cojBQS48EHHSruh9uxneGHzB595H8rs-'),
('63b7f48c-70df-11ee-b962-0242ac120002', '3214012908950002', 'AGUSTIANCAS SESERAHAN', '3', '3', 'Jl Kapten Halim No 20 RT 21/ RT 03 Simpang Nagri Kidul Purwakarta', 'Purwakarta', '', 'CHEMMAL AGUSTIAN SYARIF', 'agustiancas.seserahan@gmail.com', '‪+62 857‑5900‑0404‬', '', 'Penyedia Jasa Sewa Dan Hias Seserahan Pernikahan', 'https://drive.google.com/uc?export=view&id=1tPRUcJn9dF7TFP7tYkpgZcrOhof2lWYr');
INSERT INTO `subject_data` (`id_pelaku_usaha`, `nik`, `business_name`, `id_category_business`, `id_sub_sector`, `address_business`, `subdistrict`, `location`, `owner_name`, `email`, `no_telp`, `website`, `description`, `picture`) VALUES
('63b7f59a-70df-11ee-b962-0242ac120002', '3216212610040001', 'LA Visual Project', '3', '9', 'Kp. Cilame, Gang Sate, Rt14/Rw05, Desa Cibening, Kecamatan Bungursari, Kabupaten Purwakarta, Jawa Barat, 41181', 'Bungursari', '', 'Luthfi Nur Syihab', 'luthfi.nursyihab@gmail.com', '085289497329', '', 'Pelaku usaha di bidang jasa fotografi adalah individu atau perusahaan yang memiliki kreativitas tinggi dalam mengabadikan momenNULLmomen berharga. Mereka menawarkan beragam layanan, seperti fotografi pernikahan, potret keluarga, dan fotografi produk, dan menggunakan peralatan fotografi profesional seperti kamera DSLR, lensa berkualitas, serta perangkat lunak pengeditan foto untuk menghasilkan gambar dengan kualitas tinggi. Dengan pemahaman yang mendalam tentang teknik fotografi, pencahayaan, dan komposisi, mereka mampu menciptakan hasil yang memukau. Pelaku usaha fotografi juga bekerja sama erat dengan klien untuk memahami visi mereka dan memberikan saran kreatif. Selain itu, mereka memiliki keterampilan pengeditan yang baik untuk memastikan hasil akhir sesuai dengan harapan. Dengan fokus pada kepuasan pelanggan dan pematuhan hukum yang ketat, pelaku usaha fotografi adalah mitra yang sangat berharga untuk memenuhi kebutuhan fotografi profesional.', 'https://drive.google.com/uc?export=view&id=11Kd_f9jqVp6LmH5fqzX43BYHIihi4ZEn'),
('63b7f6b2-70df-11ee-b962-0242ac120002', '3214040705760001', 'Pengrajin keramik/Gerabah ', '3', '11', 'Kp.anjun Rt 10 Rw 02.Desa:Anjun. kec Plered Kab. Purwakarta', 'Plered', '', 'Dasep sukandar ', 'Baham nya dari Tanah liat .', '0882291882088', '', 'Menerima pesanan Berbagai macam Bentuk pot Bunga Guci,Gentong, dll.', 'https://drive.google.com/uc?export=view&id=1Veq1B0zS6eT5dGRwqcjof2YKYJP4bosL'),
('63b7f7c0-70df-11ee-b962-0242ac120002', '3214012605950004', 'Dapur abah sia', '3', '1', 'Jl ipik gandamana, Gg sahara 1 purwakarta', 'Purwakarta', '', 'Syahrul m insan', 'm.syahrul.insan@gmail.com', '08974843819', '', 'Makanan berat makanan ringan minuman kuliner', 'https://drive.google.com/uc?export=view&id=159fe_0xBlVCSvP4_muSBa31UVLyTdNI6'),
('63b7f8ce-70df-11ee-b962-0242ac120002', '3214012106940002', 'Bina Muda', '2', '13', 'Kampung Babakan pasar rt23 rw06 kelurahan Cipaisan', 'Purwakarta', '', 'Yushlih El amal ', 'yushlihelamal@gmail.com', '085952829298', '', 'Usaha kontruksi dan pembinaan pemuda', 'https://drive.google.com/uc?export=view&id=1iLvdYDzfhI2WlgTU_zaoYXmP3dHbeV2P'),
('63b7fbb2-70df-11ee-b962-0242ac120002', '3214080901900001', 'Idena interior ', '1', '13', 'Kp. Pondokbungur RT05 RW02, desa pondokbungur', 'Pondoksalam', '', 'Ujang sohibul fikri', 'ratukamilah1@gmail.com', '087834393808', '', 'Interior design contractor, melayani jasa/pabrikasi furniture custom (kitchen set, kamar set, lemari, meja perkantoran, dekorasi ruangan full interior dll)', 'https://drive.google.com/uc?export=view&id=1VeZ2HYX3o7dnKmMFGg3pkDSQFaGPob4e'),
('63b7fcd4-70df-11ee-b962-0242ac120002', '3214016209990002', 'Dimsum ID', '3', '1', 'Perum Panorama Indah Ciseureuh Purwakarta', 'Purwakarta', '', 'Annisa Putri&Nazri Nasier', 'anisaicha751@gmail.com', '085953247201', '', 'Dimsum ID adalah salah satu dimsum yg menyediakan berbagai inovasi jenis olahan dimsum diantaranya Dimsum Kukus, Dimsum Goreng, Dimsum Mentai, Dimsum Bakar, Dimsum Kuah. Cocok untuk cemilan di segala moment dan pastinya Harga Murah Rasa Istimewa', 'https://drive.google.com/uc?export=view&id=13LTyKyoy7M7Axgw488CqQm0jjlARPBJE'),
('63b7fdf6-70df-11ee-b962-0242ac120002', '3214095305930001', 'Basreng Merecon', '1', '1', 'Kp.Pagkalan Rt008 Rw003, Ds.Babakan, Kec.Wanayasa, Kab.Purwakarta', 'Wanayasa', '', 'Sri Mulyani Putri', 'mulyaniputrican@gmail.com', '083843157474', '', 'Nama usaha kami Basreng Merecon Teh Kawaii, atau lebih sering orang orang menyebutnya Basreng Merecon. Nama tersebut dipilih sesuai dengan produk basreng yang kami jual, yang mana basreng yang kami jual memiliki rasa yang khas, mantap, unik dengan bumbu racikan rahasia kami. Basreng yang kami jual merupakan basreng yang berkualitas. Kami mengedepankan cita rasa yang mungkin berbeda dari basreng basreng yang lain nya, kami menggunakan bumbu rempahNULLrempah hasil dari bumi tempat kami berasal, yang mungkin tidak terpikirkan oleh orangNULLorang. Produk yang kami jual sudah memiliki legalitas seperti : NIB, PIRT dan sudah bersertifikat HALAL MUI.', 'https://drive.google.com/uc?export=view&id=1HSV5P2sGj3N055OFpH384d6e85DoOTgf'),
('63b7ff0e-70df-11ee-b962-0242ac120002', '3214025402710002', 'Keripik kelapa ', '1', '1', 'Kp :babakan bandung rt 06/03Ds:kertamukti.', 'Campaka', '', 'Yayan ruhyani', 'campakapwk8@gmail.com', '083816239471', '', 'Membuat usaha dagangan, kuliner,', 'https://drive.google.com/uc?export=view&id=1nEUiC9-1vH0w941lowlfBVz39BGanFt6'),
('63b80026-70df-11ee-b962-0242ac120002', '3214042603910001', 'Jasa Undangan Digital (Web/Video)', '3', '14', 'Kp. Anjun Rt. 10 Rw. 02 No. 30', 'Plered', '', 'Dheri Rama Permadhi', 'dheradhi26@ymail.com', '087879770780', 's.id/rzweb', 'Jasa Undangan Digital, Perbaikan Laptop', 'https://drive.google.com/uc?export=view&id=1jECyDHWlzm-RFAY8P8DZ4AyvqI8PeSZ4'),
('63b80148-70df-11ee-b962-0242ac120002', '3211112406000002', 'Inovasky ', '3', '16', 'Jl Veteran Gg Anggrek Nagri Kaler Purwakarta', 'Purwakarta', '', 'Farhan Yudhi Fatah', 'farhan.yudhi1199@gmail.com', '082145676379', 'inovasky.com', 'Jasa pembuatan software', 'https://drive.google.com/uc?export=view&id=1xXbtuC8qnAIFqwZSIdzivUD8mHytZaDA'),
('63b80256-70df-11ee-b962-0242ac120002', '3214016308970002', 'Dyyns.art', '3', '9', 'jl ipik gandamana 243 munjul jaya', 'Purwakarta', '', 'dini aulia', 'auliadhini04@gmail.com', '083101135864', '', 'jasa foto produk', 'https://drive.google.com/uc?export=view&id=1QtaPDWnt_0tpHs6-w8HAJI-LgNqoUj_u'),
('63b80652-70df-11ee-b962-0242ac120002', '3214150206700002', 'Indung Kopi', '1', '1', 'Kp.cisaat Rt012 Rw006 Ds.Sukasari Kec.Sukasari Kab.Purwakarta', 'Sukasari', '', 'KOMAR', 'komarajadeh2021@gmail.com', '081386742457', '', 'Usaha ini bergerak di bidang kopi yang di hasilkan oleh petani kopi sukasari', 'https://drive.google.com/uc?export=view&id=1qhCRaAakezIfr5TNSXdfw9j9ajV1gzZR'),
('63b80788-70df-11ee-b962-0242ac120002', '3275096803820017', 'Defa', '1', '1', 'Perum kota baru blok c5/21 rt 12 rw 4 campaka purwakarta', 'Campaka', '', 'Neneng susanti', 'susantineneng010@gmail.com', '082122466048', '', 'Makanan', 'https://drive.google.com/uc?export=view&id=1XJpO4D67gOH3OdMGqK5KJnM6aUzuSDcA'),
('63b808a0-70df-11ee-b962-0242ac120002', '3214052602960003', 'Jajanan unik', '2', '1', 'Kp Sindang Rt 09 Rw 03 desa Cijantung kec Sukatani kab Purwakarta', 'Sukatani', '', 'Muhamad Fajri Al husaeni ', 'Fazrymuham@gmail.com', '085722066443', '', 'Usaha yang kami dirikan bergerak di bidang kekinian yang sehat dan dapat di nikmati beberapa kalangan .', 'https://drive.google.com/uc?export=view&id=1rEtTtYg8soVf59sdYO1LavJkldDSQxWh'),
('63b809c2-70df-11ee-b962-0242ac120002', '3214090908920002', 'Barbershop', '3', '12', 'Kp krajan desa taringgul tonggoh rt 06/ rw02 kecamatan wanayasa kabupaten purwakarta', 'Wanayasa', '', 'Muhamad sopyan', 'Dosensusi@gmail.com', '081389704787', '', 'Dosen art', 'https://drive.google.com/uc?export=view&id=1MwLHYS7gCmJaUmKdofIAp_2jqpVDQbJx'),
('63b80ad0-70df-11ee-b962-0242ac120002', '3214014302890002', 'Oleh\" khas purwakarta semprong', '1', '1', 'Kaum kaler rt3 rw1 cipaisan purwakarta', 'Purwakarta', '', 'Asti Febrianty', 'Febriantyasti7@gmail.com', '081915224064', '', 'Saya mendirikan usaha ini tahun 2000', 'https://drive.google.com/uc?export=view&id=1oOsJYSihtAInps5EhTYIqR0yp4FLqy13'),
('63b80bde-70df-11ee-b962-0242ac120002', '32401', 'Rumah kemasan purwakarta', '3', '11', 'Jln Terusan singadilaga no.68 purwakarta jawabarat', 'Purwakarta', '', 'Cris Febriana MK', 'Rumahkemmmasan@gmail.com', '+62 878-7999-3789', '', 'Your packaging solutions', 'https://drive.google.com/uc?export=view&id=1w9P1LA-8dcCFWRs-CUg7FvkZr-21JNLn'),
('63b80cec-70df-11ee-b962-0242ac120002', '3214014201920003', 'Jajanan Teh Dian', '3', '1', 'Jl.ibrahim singadilaga Rt 06 Rw 01 kel.nagri kaler purwakarta', 'Purwakarta', '', 'Dian yustika', 'Diandindra90@gmail.com', '087805416665', '', 'Jualan es buah/es gayung,sosis bakar,ayam geprek', 'https://drive.google.com/uc?export=view&id=1otGNBITo0iyxxcxzKHiA0zivmi4J0i2L'),
('63b81016-70df-11ee-b962-0242ac120002', '3214025308720001', 'Ghalnza', '1', '2', 'Kp kaum RT 10/02 desa campakasari', 'Campaka', '', 'Mamay Nurhelawati,S,Pd', 'mamaycampaka@gmail.com', '081909386094', '', 'Menjual pakaian jadi', 'https://drive.google.com/uc?export=view&id=1oTCZb-KW_6uoLhpw9gEb71e8V01hJbJQ'),
('63b81138-70df-11ee-b962-0242ac120002', '3213225503870001', 'Aqmalia cake & cookies', '3', '1', 'Kp/Ds.Darangdan RT 024 RW.007. Kec.Darangdan Kab.Purwakarta', 'Darangdan', '', 'Eva Yunita', 'eyunita834@gmail.com', '081317899601', '', 'Usaha di bidang kuliner. seperti aneka macam cake & cookies', 'https://drive.google.com/uc?export=view&id=1jG6ew3dYFceTEhtw1ROeJAtVWhC1o59M'),
('63b81250-70df-11ee-b962-0242ac120002', '3214022609970001', 'Agen ppob', '1', '16', 'Kp citenjo rt. 04 rw. 02 desa. Cimahi', 'Campaka', '', 'Supriadi', 'yadibondan97@gmail.com', '083138310526', '', 'Pulsa paket data PembayaranTransferDana digitalVocher dataService handphone', 'https://drive.google.com/uc?export=view&id=1PBPvHjd6yUqtjfhXI8VFimeD7QcN2u-P'),
('63b8135e-70df-11ee-b962-0242ac120002', '3214015606660005', 'Berjualan es buah', '1', '1', 'simpang rt 22/03 nagri kidul purwakarta', 'Purwakarta', '', 'E yuniar NS', 'noerlizatyp@gmail.com', '08886232303', '', 'modal usaha : 1.sewa tempat atau tanah rp.3,5/tahun 4x62.modal bangunan 4x6 dari kayu dan bambu rp.8,5jt 3.modal bahan rp.150rb untuk 4 varian rasa', 'https://drive.google.com/uc?export=view&id=1_-u1gyRwdamdKE4CuL3PnE4yy_lk1ZHn'),
('63b81476-70df-11ee-b962-0242ac120002', '3214034808010004', 'Mochinara', '3', '1', 'Kp. Cinangka Atas Rt.06/Rw.03 Ds. Jatiluhur Kec. Jatiluhur Kab. Purwakarta', 'Jatiluhur', '', 'Tiara Damayanti', 'tdamayanti077@gmail.com', '085171644928', '', 'Tiara adalah penyuka makanan manis dan suka sekali jajan, dan motivasi jualan mochi karena penasaran dengan mochi daifuku jakarta namun harganya mahal dan jauh. jadi bikin sendiri dan kemudian dijual sendiri.', 'https://drive.google.com/uc?export=view&id=1_SfuLbitkKsimm7U8Rls5XdJ8fHTXwei'),
('63b81584-70df-11ee-b962-0242ac120002', '3214041804760004', 'pengrajin gerabah', '3', '11', 'kp cijambu rt 011 rw 004 desa linggarsari', 'Plered', '', 'ading saripudin', 'ading saripudin@gml.com', '087866841755', '', 'Ading saripudin', 'https://drive.google.com/uc?export=view&id=1BUFmhmp5wE9qUBZFtxl0x_0y6eeL9rN6'),
('63b81692-70df-11ee-b962-0242ac120002', '3571025509750005', 'Brownies Kering Thumbelina', '3', '1', 'Perum Pondok Jaya Indah Blok G3 No 9a RT/RW 51/13 Kec/Kab Purwakarta', 'Purwakarta', '', 'Eko Sugiati', 'ekosugiatigavaisa@gmail.cim', '08997262382', '', '', 'https://drive.google.com/uc?export=view&id=1k3P-ep36bMeR1Kgc7Kqd-hWJjot5Su3H'),
('63b817a0-70df-11ee-b962-0242ac120002', '3214010410960002', 'Es teh dandang', '1', '1', 'Citalang Purwakarta', 'Purwakarta', '', 'Risky Widya tama', 'riskycau030314@gmail.com', '087748768038', '', 'Ingin Maju', 'https://drive.google.com/uc?export=view&id=1kg6FUeAaVGU3FC8jsY5DQlUyi4k_2H4j'),
('63b81dfe-70df-11ee-b962-0242ac120002', '3215036008760005', 'Rumah Kreatif Ufaira', '3', '3', 'Jl. Ahmad Yani Gang Pemuda no.83 rt/rw.015/05 Cipaisan, Purwakarta 41113', 'Purwakarta', '', 'Reika Agustina', 'rumah.kreatif.ufaira@gmail.com', '081387096628', 'www.ufairacreativehouse.com', 'Produsen tas kanvas, kerajinan kain perca dan anyaman lintingan koran', 'https://drive.google.com/uc?export=view&id=1ShHxnni97ql3OynXQRU99lziN5Fs8140'),
('63b81f48-70df-11ee-b962-0242ac120002', '3214011907950001', 'Pengrajin rangginang super ', '3', '1', 'Karang Anyar RT 007 RW 002', 'Purwakarta', '', 'Masnagara putra dewa ', 'masnagaraputradewa@gmail.com', '08996283119', '', 'Pembuat Rangginang', 'https://drive.google.com/uc?export=view&id=1T9Y5Rul6lMdeXN_WJSvsqW8Ifyw2Cw0N'),
('63b82042-70df-11ee-b962-0242ac120002', '3214125205910003', 'Nasisae (kimbab) ', '3', '1', 'Kp. Citrasari rt. 01 rw. 04 ciwareng babakancikao', 'Babakancika', '', 'Rika fitriani', 'rikadarmawan1144@gmail.com', '085797888009', '', 'Nasisae adalah Kimbab yang merupakan makanan khas Korea dengan berbagai olahan isian yg disesuaikan dengan lidah Indonesia tentunya dengan olahan halal.', 'https://drive.google.com/uc?export=view&id=1pDfGEZ1GqKPzdr-GiV0s_aWouv56Mzv3'),
('63b82132-70df-11ee-b962-0242ac120002', '3214012511920004', 'Warung Pelopor', '3', '1', 'Jl. SMP 5 Gg. Remaja Ciseureuh RT.002 RW.007 Kel.Ciseureuh', 'Purwakarta', '', 'RABANI AKBAR', 'rabaniakbar7@gmail.com', '087779913377', '', 'Warung Pelopor', 'https://drive.google.com/uc?export=view&id=1kdbFtjnxfvrfJdqW3uwC-eGoQSxYC434'),
('63b82218-70df-11ee-b962-0242ac120002', '3214025105750002', 'Si_Mbok', '1', '1', 'Kp. Cimahi 2 Rt. 011/004 desa. Cimahi', 'Campaka', '', 'Sugian', 'Srimlyt02495@gmail.com', '083148254758', '', 'Pedagang', 'https://drive.google.com/uc?export=view&id=1qqdz30bV__wrno4wWoivBc5ftS3e5VMw'),
('63b822fe-70df-11ee-b962-0242ac120002', '3214016209970003', 'Dapur Tisha', '1', '1', 'Jl Gelatik samping DISTARKIM', 'Purwakarta', '', 'Nurul Mutia Pratiwi', 'nurmut97@gmail.com', '089699171945', '', 'Menjual aneka masakan, catering, prasmanan dan aneka kue basah', 'https://drive.google.com/uc?export=view&id=1wqnG-VrhPU6cB_QF7b9i2LRhOWCvcrfb'),
('63b82498-70df-11ee-b962-0242ac120002', '3214011904610001', 'Gorengan', '3', '1', 'Jl. Veteran Gg. Tritura no. 32 RT 02 / RW 01 Kel. Ciseureuh Kab/Kec. Purwakarta', 'Purwakarta', '', 'Ade Suryadi', 'suryadiade002001@gmail.com', '081211876595', '', 'Menjual aneka gorengan', 'https://drive.google.com/uc?export=view&id=1qdQdKcA_NNhmMiXAJBZqcva3TZJGYk1o'),
('63b825b0-70df-11ee-b962-0242ac120002', '3214032802930004', 'Ramah Teknologi', '3', '16', 'Jatiluhur', 'Jatiluhur', '', 'Feby A. Dzuhri, S.Si.Kom', 'Febyadzuhri@gmail.com', '085722170064', 'Ramahteknologi.com', 'Konsultan IT', 'https://drive.google.com/uc?export=view&id=1XP9TqKfOlt8mQGNH3ynOmMrUx8Q7ogG4'),
('63b829f2-70df-11ee-b962-0242ac120002', '3214014406900003', 'Zatara Shop', '3', '17', 'Jl. Veteran no 148 rt 04 rw 01 ciseureuh purwakarta', 'Purwakarta', '', 'Yosi susilowati', 'ysbpgp@gmail.com ', '089604189966', '', 'Menjual aksesories dan maianan', 'https://drive.google.com/uc?export=view&id=1DXJoFSsVp0CwS_JuiW0WnViDTlvgkZZz'),
('63b82bc8-70df-11ee-b962-0242ac120002', '3521022605850005', 'Makanan ringan/snack', '3', '1', 'Ciseureuh rt02 rw01 nomor22 Purwakarta Jawa Barat', 'Purwakarta', '', 'Suharmoko ', 'Warbek85@gmail.com ', '85722515994', '', 'Usaha rumahan', 'https://drive.google.com/uc?export=view&id=1nYC7Uq3IJ5qoxtxhhfboEZQA9VQ3LAV1'),
('63b82d94-70df-11ee-b962-0242ac120002', '3214012010790002', 'Warung klontong', '3', '1', 'Jl.kopi Rt 04/01 ciseureuh', 'Purwakarta', '', 'Nanang Suryana', 'Dens.79ns7@gmail.com', '081387445745', '', 'Perseorangan', 'https://drive.google.com/uc?export=view&id=1fnxljFre5c8k7um2_6PvkZkOm2yJOPCL'),
('63b82f74-70df-11ee-b962-0242ac120002', '3214015704730005', 'Jualan seblak dan pop ice', '3', '1', 'Jl.kopi no.60 rt.04/01', 'Purwakarta', '', 'Siti Hani Sobariah', 'hanysiti299', '087779764063', '', 'Ingin membuat lesehan buat pelanggan', 'https://drive.google.com/uc?export=view&id=1hTxDvuCAFU9QkmkV5R-Xi3WJOmwWdX5r'),
('63b8319a-70df-11ee-b962-0242ac120002', '3214014512640001', 'Warung ', '3', '1', 'Jl Jend Ahmad Yani GG mushola 1 RT 12/04 Cipaisan', 'Purwakarta', '', 'Yoyoh Yohana', 'yohanah5555@gmail.com', '087778603025', '', '', 'https://drive.google.com/uc?export=view&id=1UMM434h9SFaYWd8JARARqVj71hblYo_H'),
('63b83410-70df-11ee-b962-0242ac120002', '3214015212730011', 'Kedai jajanan', '1', '1', 'Wiskul', 'Purwakarta', '', 'Hesti herawati', 'naupaljizdan@gmail.com', '082211414851', '', 'Jualan makanan dan minuman', 'https://drive.google.com/uc?export=view&id=16qyZzKLtzgUB0orh5OcoDnHelWuuowAK'),
('63b835be-70df-11ee-b962-0242ac120002', '3214024705020001', 'Daifuku Mochi', '3', '1', 'Kp.mekar sari rt007/rw003 desa cikumpay kab. Purwakarta', 'Purwakarta', '', 'Elis Melisa ', 'elismelisa007@gmail.com', '085860115070', '', 'Usaha Daifuku mochi yang saya bangun sekitar 3 bulanan yang lalu ini berjualan mochi yang di dalam nya ada stoberi asli nya perpaduan antara mochi yang kenyal dan pasta kacang merah/coklat/cream di padukan dengan stoberi asli di dalam nya menciptakan rasa yang sangat enak, belakangan ini juga mochi menjadi trend lagi di kalangan masyaratkan bahanNULLbahan nya yang simpel membuat banyak orang yang mencoba bisnis mochi juga, tapi', 'https://drive.google.com/uc?export=view&id=1i8TVuH10Ow3FGFN4CVwmmhIVvedIPi_a'),
('63b83a00-70df-11ee-b962-0242ac120002', '3214023011020001', 'toko sembako', '1', '1', 'kp.citenjo desa.cimahi kec.campaka purwakarta', 'Maniis', '', 'MUHAMAD AKPA RIZKI', 'muhamadaalfarizki30@gmail.com', '083135168093', '', '', 'https://drive.google.com/uc?export=view&id=1Ojrwpi_gM0eRTce0pXQgZ88O1WNxIEc3'),
('63b83bc2-70df-11ee-b962-0242ac120002', '3214016010790006', 'Nasi uduk dan gorengan', '3', '1', 'Ko.cihideung rt05/03 Ciseureuh Purwakarta', 'Purwakarta', '', 'Santi Susilawati ', 'sanjayarobby070@gmail.com', '085863074385', '', 'Perseorangan', 'https://drive.google.com/uc?export=view&id=1kGke_yrPDsi4cY3FG2R_sAZNkGKwoZgB');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `tanggal`) VALUES
(4, 'Rezki Cakep', 'rramadhan1818@gmail.com', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', NULL, 'whatsapp-image-2023-05-07-at-003929-1685465377.jpg', '2023-05-30 16:49:37');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `bahasa` varchar(20) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `bahasa`, `gambar`, `id_user`, `tanggal`) VALUES
(66, 'Komunitas Pena dan Lensa', 'Homepage', 'Sesi 2a Penggunaan Mendeley (Praktek dan Langkah-langkah Pengerjaannya)', 'F3Oo7JFXwys', 1, 'Indonesia', 'whatsapp-image-2023-05-28-at-122738-1685632491.jpg', 4, '2023-06-01 15:14:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `heading`
--
ALTER TABLE `heading`
  ADD PRIMARY KEY (`id_heading`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indexes for table `kategori_agenda`
--
ALTER TABLE `kategori_agenda`
  ADD PRIMARY KEY (`id_kategori_agenda`);

--
-- Indexes for table `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indexes for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mt_category_business`
--
ALTER TABLE `mt_category_business`
  ADD PRIMARY KEY (`id_category_business`);

--
-- Indexes for table `mt_sub_sektor`
--
ALTER TABLE `mt_sub_sektor`
  ADD PRIMARY KEY (`id_sub_sektor`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `subject_data`
--
ALTER TABLE `subject_data`
  ADD PRIMARY KEY (`id_pelaku_usaha`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `heading`
--
ALTER TABLE `heading`
  MODIFY `id_heading` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori_agenda`
--
ALTER TABLE `kategori_agenda`
  MODIFY `id_kategori_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mt_category_business`
--
ALTER TABLE `mt_category_business`
  MODIFY `id_category_business` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mt_sub_sektor`
--
ALTER TABLE `mt_sub_sektor`
  MODIFY `id_sub_sektor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
