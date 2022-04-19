-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Apr 2022 pada 07.20
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `pk_login_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`pk_login_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `pk_transaksi_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `no_identitas` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `tempat_wisata` int(11) DEFAULT NULL,
  `tanggal_kunjungan` varchar(50) DEFAULT NULL,
  `dewasa` varchar(50) DEFAULT NULL,
  `anak` varchar(50) DEFAULT NULL,
  `qrcode` varchar(25) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`pk_transaksi_id`, `nama_lengkap`, `no_identitas`, `no_hp`, `tempat_wisata`, `tanggal_kunjungan`, `dewasa`, `anak`, `qrcode`, `created_date`, `status`) VALUES
(2, 'Dani', '5665', '23232', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'N'),
(3, 'Andri', '989', '989', 1, '2022-04-17', '1', '1', NULL, '2022-04-17', 'N'),
(7, 'Dini', '3275656565', '08555555', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'N'),
(8, 'Inda', '1212', '085555', 1, '2022-04-17', '1', '2', NULL, '2022-04-17', 'N'),
(9, 'Dini', '121231321231', '089614729915', 2, '2022-04-17', '1', '2', NULL, '2022-04-17', 'N'),
(12, 'Desi', '32132132', '089898', 1, '2022-04-17', '1', '2', '942847204.png', '2022-04-17', 'N'),
(13, 'Femi', '32132132', '089898', 1, '2022-04-17', '1', '2', '941896892.png', '2022-04-17', 'N'),
(14, 'Tina', '32323', '12', 2, '2022-04-17', '2', '3', '470081814.png', '2022-04-17', 'N'),
(15, 'Toni', '2323565', '08999', 2, '2022-04-17', '1', '2', '432131819.png', '2022-04-17', 'N'),
(18, 'Sabrina', '121321321', '123132123', 1, '2022-04-17', '2', '1', '651520538.png', '2022-04-17', 'N'),
(20, 'sandri', '4574879975', '089765466543', 1, '2022-04-18', '2', '1', '683849182.png', '2022-04-18', 'N'),
(21, 'rina', '3464576854', '09877665543', 1, '2022-04-18', '2', '3', '7554718.png', '2022-04-18', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `wisata_id` int(11) NOT NULL,
  `nama_tempat` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `deskripsi` text,
  `foto` varchar(255) DEFAULT NULL,
  `tiket_dewasa` int(11) DEFAULT NULL,
  `tiket_anak` int(11) DEFAULT NULL,
  `embed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`wisata_id`, `nama_tempat`, `lokasi`, `deskripsi`, `foto`, `tiket_dewasa`, `tiket_anak`, `embed`) VALUES
(1, 'Batu Mahpar', 'Kabupaten Tasikmalaya', 'Batu Mahpar merupakan batu yang terhampar kemudian membentuk sebuah sungai. Batu yang terhampar ini pada awalnya merupakan bekas aliran lava yang mengeras menjadi batu. Sungai ini akan teraliri air jika musim penghujan saja dan apabila musim kemarau hanya terdapat genangan air di beberapa titik.', 'https://assets.promediateknologi.com/crop/0x0:0x0/750x500/photo/ayotasik/images/post/articles/2019/04/20/2497/img_20190420_120817.jpg', 15000, 5000, 'https://assets.promediateknologi.com/crop/0x0:0x0/750x500/photo/ayotasik/images/post/articles/2019/0'),
(2, 'Pantai Karang Tawulan', 'Kabupaten Tasikmalaya', 'Salah satu pantai populer dan eksotis di Tasikmalaya adalah Pantai Karang Tawulan yang menawarkan pasir pantai putih dan tersembunyi di balik tebing. Pantai Karang Tawulan yang indah ini terletak di Desa Cimanuk, Kalapagenep, Kecamatan Cikalong, Tasikmalaya.', 'https://4.bp.blogspot.com/-LEV9zokvMC0/WR_B0MK3rHI/AAAAAAAAaBA/jPtHR3iyDokynveyiQjAkacWmhA8B0UbQCLcB/s1600/tawulan.jpg', 20000, 8000, 'https://www.youtube.com/embed/R_MnPwdIh28'),
(3, 'Karaha Bodas', 'Kabupaten Tasikmalaya', 'Karaha Bodas merupakan kawah gunung api muda yang terletak di Desa Kadipaten, Kecamatan Kadipaten, Kabupaten Tasikmalaya. Kawah ini menghasilkan panas bumi, juga fenomena fumarol dan solfatar, sehingga menimbulkan bau belerang.', 'https://imgx.sonora.id/crop/0x0:0x0/360x240/photo/2021/07/03/5f8d5d35605a0jpg-20210703050557.jpg', 20000, 10000, 'https://www.youtube.com/embed/4x6nUOgegaA'),
(4, 'Gunung Galunggung', 'Kabupaten Tasikmalaya', 'Gunung Galunggung merupakan salah satu tempat wisata favorit yang ada di Kabupaten Tasikmalaya. Gunung ini masih aktif dan memiliki ketinggian 2.167 meter di atas permukaan laut (mdpl), sehingga pengunjung dapat merasakan udara yang sangat sejuk. Banyak keindahan yang dapat ditemukan di Gunung Galunggung, seperti Kawah Hijau, pemandian air panas, gardu pandang, sampai Curug Agung yang penuh warna.', 'https://asset.kompas.com/crops/sFdJqzlQ52Z_JGf5nID5u7FQoIw=/0x0:780x390/750x500/data/photo/2013/12/28/1749573galunggungg780x390.jpg', 25000, 12000, 'https://www.youtube.com/embed/8YkIqtmf4EY'),
(5, 'Situ Gede', 'Kota Tasikmalaya', 'Situ Gede merupakan kawasan danau yang telah berdiri sejak zaman kolonial Belanda dengan menyajikan keindahan pemandangan alam, sehingga menarik banyak wisatawan. Di tengah danau, terdapat pulau dengan luas mencapai 1 hektar. Konon, di sana terdapat tiga makam yang juga menjadi asal-usul Situ Gede.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul "25 Wisata Tasikmalaya, Pas Dikunjungi Saat Libur Panjang", Klik untuk baca: https://travel.kompas.com/read/2020/10/24/165141327/25-wisata-tasikmalaya-pas-dikunjungi-saat-libur-panjang?page=all.\r\nPenulis : Lenny Septiani\r\nEditor : Anggara Wikan Prasetya\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'http://mytrip123.com/wp-content/uploads/2015/10/Danau-Situ-Gede-Bogor.jpg', 10000, 5000, 'https://www.youtube.com/embed/fUx2iO45aDI'),
(6, 'Pantai Cipatujah', 'Kabupaten Tasikmalaya', 'Pantai Cipatujah menawarkan pesona alam yang masih sangat asri dan memesona karena dikelilingi tebing-tebing curam. Pantai Cipatujah merupakan pantai berkarang yang ada di kawasan selatan, tepatnya di Desa Cipatujah, Kecamatan Cipatujah, Tasikmalaya.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul "25 Wisata Tasikmalaya, Pas Dikunjungi Saat Libur Panjang", Klik untuk baca: https://travel.kompas.com/read/2020/10/24/165141327/25-wisata-tasikmalaya-pas-dikunjungi-saat-libur-panjang?page=all.\r\nPenulis : Lenny Septiani\r\nEditor : Anggara Wikan Prasetya\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'https://images.genpi.co/resize/1080x720-100/uploads/jabar/arsip/normal/2021/11/24/pantai-cipatujah-foto-disparbud-jabar-mavq.webp', 15000, 6000, 'https://www.youtube.com/embed/GXqWaYkH1yE'),
(7, 'Alun Alun Tasikmalaya', 'Kota Tasikmalaya', 'Tempat yang harus dikunjungi saat berlibur ke Tasikmalaya adalah Alun-alun Tasikmalaya terletak di Jalan Otto Iskandardinata, Empangsari, Tawang, Tasikmalaya. Alun-Alun ini dilengkapi tugu yang menjadi daya tarik tersendiri, yaitu Tugu Mak Eroh dan Abdul Rozak untuk mengenang jasanya bagi lingkungan hidup di Tasikmalaya.', 'https://2.bp.blogspot.com/-zZrSfuhHkEk/XAj-tzAjoUI/AAAAAAAACuM/yHFCgRr17Ug_Ytlm2hOOpRhkBhJ3JjFvgCLcBGAs/s400/AddTextToPhoto_6-12-2018-5-46-50.jpg', 10000, 5000, 'https://www.youtube.com/embed/Tt0T2hg3ybQ'),
(8, 'Pantai Pangandaran', 'Kabupaten Tasikmalaya', 'Aktivitas yang dapat meliputi menikmati pemandanganyang indah, berfoto, hingga berenang jika kondisi air tidak sedang banjir. Di sini, masih belum ada fasilitas karena masih sangat baru dan masih masuk tahap penyadaran kepada warga desa akan potensi wisata yang dimiliki. Tiket masuknya pun masih gratis.', 'https://i0.wp.com/www.ensiklopediaindonesia.com/wp-content/uploads/2013/07/Pangandaran.png?fit=800%2C600&ssl=1', 20000, 10000, 'https://www.youtube.com/embed/dHg7R3ZDWyQ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_login_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`pk_transaksi_id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`wisata_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `pk_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `pk_transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `wisata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
