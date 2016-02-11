-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.9-MariaDB - Source distribution
-- Server OS:                    Linux
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_elearning.tb_admin
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` text NOT NULL,
  `pass` varchar(40) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_admin: ~0 rows (approximately)
DELETE FROM `tb_admin`;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `alamat`, `no_telp`, `email`, `username`, `password`, `pass`) VALUES
	(1, 'Mohammad Nur Fawaiq', 'Desa Gajahmati Rt:03 Rw:02 Kec. Pati Kab. Pati Jawa Tengah', '085786447406', 'nurfawaiq@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_berita
CREATE TABLE IF NOT EXISTS `tb_berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `tgl_posting` date NOT NULL,
  `penerbit` varchar(10) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_berita: ~5 rows (approximately)
DELETE FROM `tb_berita`;
/*!40000 ALTER TABLE `tb_berita` DISABLE KEYS */;
INSERT INTO `tb_berita` (`id_berita`, `judul`, `isi`, `tgl_posting`, `penerbit`, `status`) VALUES
	(1, 'Cara Belajar Mudah, Menyenangkan dan Efektif', 'Hai teman2. djsdnsjdnsdjnsdsds dsjds dsjdbsds dsdgsduui\r\n\r\nKali ini dsdsjdhsd dsjsdbsd\r\n\r\nkita dksnksd dsjdsjd dsusdgyow9weuwr', '2015-08-15', 'admin', 'aktif'),
	(2, 'How to Be Success', 'asdshsuh sdsgdgysgd.\r\n\r\ndfdfdfdfdhfdhfdhfd.\r\nsdsdjd.', '2015-08-16', '1', 'aktif'),
	(4, 'Manfaat Menulis', 'Jadi temen2, manfaat menulis ialah bla bla bla.\r\n\r\ndfdhfhdifd fhdudfdf gfudfhudhf.\r\n\r\nfdfjdfjdf d.d\r\nfd\r\nfdfdfdfdf', '2015-08-16', '10', 'tidak aktif'),
	(5, 'Kenakalan Remaja (Pencarian Jati Diri)', 'Remaja memang identik dengan nakal, tetapi tidaklah benar jika hanya remaja yang selalu di klaim nakal.\r\n\r\nDi Indonesia ini seperti negeri sandiwara, banyak ahli hukum mencederai hukum, banyak ahli ilmu mencederai ilmu, banyak wakil rakyat yang seharusnya mengemban amanah tetapi mereka malah melakukan KKN.\r\n\r\nApakah mereka remaja ? Tentu bukan, mereka sudah dewasa.', '2015-08-16', 'admin', 'aktif'),
	(6, 'The Power of Life', 'The Power of Life jsndjsd sdsdsd sdsyftsas arsduywge rtposfh0a9hqwreb eeuheirer.\r\n\r\ndfdfdfhidf wuuwgyuwwo dsiuhsduishdsds', '2015-08-16', '8', 'aktif');
/*!40000 ALTER TABLE `tb_berita` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_data_sekolah
CREATE TABLE IF NOT EXISTS `tb_data_sekolah` (
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `alamat_sekolah` text,
  `logo_sekolah` varchar(200) DEFAULT NULL,
  `deskrpisi_sekolah` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_data_sekolah: ~0 rows (approximately)
DELETE FROM `tb_data_sekolah`;
/*!40000 ALTER TABLE `tb_data_sekolah` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_data_sekolah` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_file_materi
CREATE TABLE IF NOT EXISTS `tb_file_materi` (
  `id_materi` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(200) NOT NULL,
  `id_kelas` int(4) NOT NULL,
  `id_mapel` int(4) NOT NULL,
  `nama_file` varchar(250) NOT NULL,
  `tgl_posting` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `hits` int(4) NOT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_file_materi: ~3 rows (approximately)
DELETE FROM `tb_file_materi`;
/*!40000 ALTER TABLE `tb_file_materi` DISABLE KEYS */;
INSERT INTO `tb_file_materi` (`id_materi`, `judul`, `id_kelas`, `id_mapel`, `nama_file`, `tgl_posting`, `pembuat`, `hits`) VALUES
	(3, 'Modul Latihan', 3, 2, 'Cetak Soal Tryout P1.pdf', '2015-08-15', 'admin', 0),
	(4, 'Modul 1', 1, 1, 'kumpulan_soal_20152.pdf', '2015-08-15', '1', 7),
	(5, 'Modul 2', 1, 1, '2072-P1-SPK-Rekayasa Perangkat Lunak.doc', '2015-08-15', '1', 3);
/*!40000 ALTER TABLE `tb_file_materi` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_jawaban
CREATE TABLE IF NOT EXISTS `tb_jawaban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tq` int(4) NOT NULL,
  `id_soal` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `jawaban` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_jawaban: ~7 rows (approximately)
DELETE FROM `tb_jawaban`;
/*!40000 ALTER TABLE `tb_jawaban` DISABLE KEYS */;
INSERT INTO `tb_jawaban` (`id`, `id_tq`, `id_soal`, `id_siswa`, `jawaban`) VALUES
	(49, 1, 4, 8, 'Gak tau'),
	(50, 1, 2, 8, 'Gak tau'),
	(54, 2, 6, 2, 'Bengawan Solo'),
	(55, 2, 5, 2, 'Jusuf Kalla'),
	(56, 2, 1, 2, 'Semarang'),
	(57, 1, 2, 1, 'mejikuhibiniu'),
	(58, 1, 4, 1, 'Ir. Soekarno');
/*!40000 ALTER TABLE `tb_jawaban` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_jawaban_pilgan_temp
CREATE TABLE IF NOT EXISTS `tb_jawaban_pilgan_temp` (
  `id_peserta` int(11) DEFAULT NULL,
  `id_tq` int(11) DEFAULT NULL,
  `id_soal` int(11) DEFAULT NULL COMMENT 'id_pilgan/id_essay',
  `jawaban` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_jawaban_pilgan_temp: ~0 rows (approximately)
DELETE FROM `tb_jawaban_pilgan_temp`;
/*!40000 ALTER TABLE `tb_jawaban_pilgan_temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_jawaban_pilgan_temp` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_kelas
CREATE TABLE IF NOT EXISTS `tb_kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `wali_kelas` int(5) NOT NULL,
  `ketua_kelas` int(5) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_kelas: ~4 rows (approximately)
DELETE FROM `tb_kelas`;
/*!40000 ALTER TABLE `tb_kelas` DISABLE KEYS */;
INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `ruang`, `wali_kelas`, `ketua_kelas`) VALUES
	(1, 'SMA', 'G-1', 8, 1),
	(2, 'SMP ', 'G-2', 1, 2),
	(3, 'SD', 'G-3', 10, 3);
/*!40000 ALTER TABLE `tb_kelas` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_kelas_ajar
CREATE TABLE IF NOT EXISTS `tb_kelas_ajar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_kelas_ajar: ~4 rows (approximately)
DELETE FROM `tb_kelas_ajar`;
/*!40000 ALTER TABLE `tb_kelas_ajar` DISABLE KEYS */;
INSERT INTO `tb_kelas_ajar` (`id`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
	(1, 1, 1, 'Halo'),
	(2, 1, 8, 'aaa'),
	(4, 3, 8, 'bbb'),
	(5, 2, 1, 'Halo');
/*!40000 ALTER TABLE `tb_kelas_ajar` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_mapel
CREATE TABLE IF NOT EXISTS `tb_mapel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_mapel` varchar(10) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_mapel: ~4 rows (approximately)
DELETE FROM `tb_mapel`;
/*!40000 ALTER TABLE `tb_mapel` DISABLE KEYS */;
INSERT INTO `tb_mapel` (`id`, `kode_mapel`, `mapel`) VALUES
	(1, 'A1', 'Bahasa Indonesia'),
	(2, 'A2', 'Matematika'),
	(3, 'A3', 'Bahasa Inggris'),
	(4, 'A4', 'TIK');
/*!40000 ALTER TABLE `tb_mapel` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_mapel_ajar
CREATE TABLE IF NOT EXISTS `tb_mapel_ajar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(5) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_mapel_ajar: ~3 rows (approximately)
DELETE FROM `tb_mapel_ajar`;
/*!40000 ALTER TABLE `tb_mapel_ajar` DISABLE KEYS */;
INSERT INTO `tb_mapel_ajar` (`id`, `id_mapel`, `id_kelas`, `id_pengajar`, `keterangan`) VALUES
	(6, 1, 2, 1, 'aaa'),
	(7, 1, 1, 1, 'Kelas baik'),
	(9, 3, 2, 1, '');
/*!40000 ALTER TABLE `tb_mapel_ajar` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_nilai_essay
CREATE TABLE IF NOT EXISTS `tb_nilai_essay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tq` int(5) NOT NULL,
  `id_siswa` int(5) NOT NULL,
  `nilai` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_nilai_essay: ~2 rows (approximately)
DELETE FROM `tb_nilai_essay`;
/*!40000 ALTER TABLE `tb_nilai_essay` DISABLE KEYS */;
INSERT INTO `tb_nilai_essay` (`id`, `id_tq`, `id_siswa`, `nilai`) VALUES
	(4, 2, 2, 90),
	(11, 1, 1, 95);
/*!40000 ALTER TABLE `tb_nilai_essay` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_nilai_pilgan
CREATE TABLE IF NOT EXISTS `tb_nilai_pilgan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tq` int(4) NOT NULL,
  `id_siswa` int(4) NOT NULL,
  `benar` int(4) NOT NULL,
  `salah` int(4) NOT NULL,
  `tidak_dikerjakan` int(4) NOT NULL,
  `presentase` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_nilai_pilgan: ~0 rows (approximately)
DELETE FROM `tb_nilai_pilgan`;
/*!40000 ALTER TABLE `tb_nilai_pilgan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_nilai_pilgan` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_pengajar
CREATE TABLE IF NOT EXISTS `tb_pengajar` (
  `id_pengajar` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `web` varchar(60) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL,
  PRIMARY KEY (`id_pengajar`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_pengajar: ~7 rows (approximately)
DELETE FROM `tb_pengajar`;
/*!40000 ALTER TABLE `tb_pengajar` DISABLE KEYS */;
INSERT INTO `tb_pengajar` (`id_pengajar`, `nip`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_telp`, `email`, `alamat`, `jabatan`, `foto`, `web`, `username`, `password`, `pass`, `status`) VALUES
	(1, '7676656', 'Ahmad', 'Rembang', '1989-06-10', 'L', 'Islam', '0867785365xx', 'hhuh@hd.vom', 'Rembang, Indonesia', 'Guru', '11539603_672029272928710_5015884061222980920_n.jpg', 'http://ilmu-lengkap.com', 'ahmad', '61243c7b9a4022cb3f8dc3106767ed12', 'ahmad', 'aktif'),
	(8, '123', 'Ubab', 'Rembang', '2015-07-03', 'L', 'Islam', '87857565', '', 'Rembang', 'Guru', 'anonim.png', '', 'ubab', '1e71f0128a74222155076585a012cbde', 'ubab', 'aktif'),
	(10, '274378434', 'Jajal', 'London', '1990-07-18', 'P', 'Islam', '089676778xx', 'jajal@yahoo.com', 'London, English', 'Guru', 'anonim.png', '', 'jajal', '0ce39f78d16cab3888366d5f4f5485eb', 'jajal', 'tidak aktif'),
	(11, '898', 'Mbuh', 'Jepara', '2015-07-15', 'P', 'Katholik', '98993', '', 'Jepara', 'Guru', 'anonim.png', '', 'mbuh', '4cb3a57aafa5238fb25202ac75f6944f', 'mbuh', 'aktif'),
	(12, '878', 'Mpok', 'Jakarat', '2015-07-25', 'P', 'Kristen', '7676', '', 'Jakarta', 'Guru', 'anonim.png', '', 'mpok', 'f9cfa808be96e05153f43ee98c51e7cf', 'mpok', 'aktif'),
	(13, '67', 'nnnn', 'jjn', '2015-07-17', 'P', 'Hindu', '76676', '', 'jhjh', 'Guru', 'anonim.png', '', 'bb', '21ad0bd836b90d08f4cf640b4c298e7c', 'bb', 'aktif'),
	(14, '77989', 'Lee Min Ho', 'Korea', '1990-07-16', 'L', 'Konghucu', '089681898xxx', 'leeminho@yahoo.com', 'Seoul, Korea', 'Guru Bahasa Korea', '10672295_1463699220608256_6533316162177641215_n.jpg', 'http://ilmu-lengkap.com', 'lee', 'b0f8b49f22c718e9924f5b1165111a67', 'lee', 'aktif');
/*!40000 ALTER TABLE `tb_pengajar` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_siswa
CREATE TABLE IF NOT EXISTS `tb_siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `nis` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` varchar(5) NOT NULL,
  `thn_masuk` int(5) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL,
  `sekolah` varchar(150) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_siswa: ~6 rows (approximately)
DELETE FROM `tb_siswa`;
/*!40000 ALTER TABLE `tb_siswa` DISABLE KEYS */;
INSERT INTO `tb_siswa` (`id_siswa`, `nis`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `nama_ayah`, `nama_ibu`, `no_telp`, `email`, `alamat`, `id_kelas`, `thn_masuk`, `foto`, `username`, `password`, `pass`, `status`, `sekolah`) VALUES
	(1, '12065', 'Mohammad', 'Tuban', '1996-07-06', 'L', 'Islam', 'Ahmad', 'Wiwik', '085786447xxx', 'mohnurfawaiq@yahoo.com', 'Pati', '1', 2015, 'lucu.jpg', 'moh', '94e510ecc1b1d7a405c0e7aa18db792b', 'moh', 'aktif', ''),
	(2, '1212', 'Rifaatul Firdaus', 'Pati', '1997-08-20', 'P', 'Islam', 'Rifa\'i', 'Basyiroh', '63767343', 'sjdhsjdh@sdjsd.co', 'Pati, Jawa Tengah', '2', 2014, 'lucu2.jpg', 'firda', '5ed291923179b73cbc6ef968b35361ff', 'firda', 'aktif', ''),
	(3, '13', 'Coba User', 'Jakarta', '1997-08-28', 'L', 'Hindu', 'Ayahku', 'Ibuku', '', '', 'Jakarta', '3', 2015, 'anonim.png', 'coba', 'c3ec0f7b054e729c5a716c8125839829', 'coba', 'tidak aktif', ''),
	(7, '776', 'Didik', 'Rembang', '2015-08-01', 'L', 'Konghucu', 'Kamto', 'Rudah', '', '', 'Punjulharjo, Rembang', '3', 2015, 'anonim.png', 'didik', '2ff462bc49e322708a48d3d5e3ca4bab', 'didik', 'aktif', ''),
	(8, '65656', 'Jajang', 'Majalengka', '1996-02-02', 'L', 'Islam', 'Gak Tau', 'Gak Tau', '085454583', '', 'Majalengka', '1', 2015, 'anonim.png', 'jajang', 'b56b57039c86f8626ece5a1a35f86175', 'jajang', 'aktif', ''),
	(9, '2013111025', 'nurhasanah', 'jambi', '0000-00-00', 'P', 'Islam', 'M.Sadri', 'Fatimah', '081276224625', 'nana@ptair.co.id', 'Jl.Bata Perum Nuansa Puri Bestari Blok G,10 Rejosari, Tenayan Raya, Pekanbaru. Riau', '1', 2008, '12348330_10204376113597616_440010273_n.jpg', 'nana', 'fba107d5d0bdefc3ed24b194c4cb966a', 'nuning', 'aktif', 'SMAN 114 Jakarta');
/*!40000 ALTER TABLE `tb_siswa` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_soal_essay
CREATE TABLE IF NOT EXISTS `tb_soal_essay` (
  `id_essay` int(11) NOT NULL AUTO_INCREMENT,
  `id_tq` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tgl_buat` date NOT NULL,
  PRIMARY KEY (`id_essay`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_soal_essay: ~6 rows (approximately)
DELETE FROM `tb_soal_essay`;
/*!40000 ALTER TABLE `tb_soal_essay` DISABLE KEYS */;
INSERT INTO `tb_soal_essay` (`id_essay`, `id_tq`, `pertanyaan`, `gambar`, `tgl_buat`) VALUES
	(1, 2, 'Apa nama ibukota Provinsi Jawa Tengah ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-05'),
	(2, 1, 'Apa warna pelangi ?', '11330004_917546658327011_8090069200033803302_n.jpg', '2015-08-09'),
	(4, 1, 'Siapa presiden pertama Indonesia ?', '', '2015-08-09'),
	(5, 2, 'Siapa wakil presiden Indonesia ?', '', '2015-08-11'),
	(6, 2, 'Apa sungai terpanjang di jawa ?', '', '2015-08-11'),
	(7, 3, 'What is your hobby ?', '', '2015-08-14');
/*!40000 ALTER TABLE `tb_soal_essay` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_soal_pilgan
CREATE TABLE IF NOT EXISTS `tb_soal_pilgan` (
  `id_pilgan` int(11) NOT NULL AUTO_INCREMENT,
  `id_tq` int(5) NOT NULL,
  `id_pengajar` int(5) NOT NULL,
  `pertanyaan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `video` varchar(100) NOT NULL,
  `audio` varchar(100) NOT NULL,
  `pil_a` text NOT NULL,
  `pil_b` text NOT NULL,
  `pil_c` text NOT NULL,
  `pil_d` text NOT NULL,
  `pil_e` text NOT NULL,
  `kunci` enum('A','B','C','D','E') NOT NULL,
  `tgl_buat` date NOT NULL,
  `level_group` varchar(9) NOT NULL COMMENT 'untuk pengelompokan soal berdasarkan level urutan',
  PRIMARY KEY (`id_pilgan`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_soal_pilgan: ~11 rows (approximately)
DELETE FROM `tb_soal_pilgan`;
/*!40000 ALTER TABLE `tb_soal_pilgan` DISABLE KEYS */;
INSERT INTO `tb_soal_pilgan` (`id_pilgan`, `id_tq`, `id_pengajar`, `pertanyaan`, `gambar`, `video`, `audio`, `pil_a`, `pil_b`, `pil_c`, `pil_d`, `pil_e`, `kunci`, `tgl_buat`, `level_group`) VALUES
	(2, 1, 0, 'Apa huruf pertama dalam alphabet ?', 'lucu.jpg', '', '', 'H', 'I', 'O', 'Z', 'A', 'E', '2015-08-05', '1'),
	(3, 1, 0, 'Apa nama ibukota negara Indonesia ?', '', '', '', 'Pati', 'Semarang', 'Surabaya', 'Jakarta', 'Medan', 'D', '2015-08-05', '1'),
	(4, 1, 0, 'Apa arti sinomin ?', '', '', '', 'Perlawanan', 'Persamaan', 'Perbedaan', 'Pertengkaran', 'Persatuan', 'B', '2015-08-06', '2'),
	(5, 2, 0, 'Tanggal berapa Indonesia merdeka ?', '', '', '', '17 Agustus 1965', '17 September 1945', '18 Agustus 1945', '17 Agustus 1995', '17 Agustus 1945', 'E', '2015-08-09', ''),
	(8, 1, 0, 'Apa arti antonim ?', '', '', '', 'Perlawanan', 'Persamaan', 'Kemiripan', 'Pertengkaran', 'Kesejahteraan', 'A', '2015-08-09', '3'),
	(9, 1, 0, 'Siapa presiden ke-7 Negara Indonesia ?', '', '', '', 'Susiso Bambang Yudhoyono', 'Soekarno', 'Soeharto', 'Megawati Soekarno Putri', 'Joko Widodo', 'E', '2015-08-09', '4'),
	(10, 2, 0, 'Apa ibukota Provinsi Jawa Timur ?', '', '', '', 'Surabaya', 'Semarang', 'Bandung', 'Pati', 'Rembang', 'A', '2015-08-11', ''),
	(13, 6, 0, 'Dalam berwirausaha kerap kita menemui kegagalan (lebih banyak) dan keberhasilan, sikap apa yang dapat kita tunjukan sebagai manusia yang beragama, bertuhan jika dalam berwirausaha menemui banyak kegagalan?', '', '', '', 'Tetap berusaha mencari peluang dan banyak belajar dari pengalaman disertai dengan selalu berdoâ€™a.', 'Tetap berusaha dan menjadi kuat, berani untuk menghalalkan segala cara', 'cccc', 'Lebih baik menyendiri dan mendaki gunung untuk mencari inspirasi baru', 'Mengadu kepada teman di media jejaring sosial', 'B', '2016-05-22', ''),
	(14, 6, 0, 'tanya', '', '', '', 'aaaaa', 'bbb', 'cccc', 'ddd', 'eee', 'A', '2016-05-22', ''),
	(15, 1, 0, 'test 6', '', '', '', 'test', 'tes', 'test', 'test', 'settes', 'E', '2016-07-23', '5'),
	(16, 1, 0, 'test 7', '', '', '', 'test', 'edfdsf', 'sdfsdf', 'sdfsdf', 'sdfdsf', 'C', '2016-07-23', '6'),
	(17, 1, 0, 'tanya 8', '', '', '', 'a', 'asas', 'asdsad', 'asd', 'sadasd', 'A', '2016-07-29', '7');
/*!40000 ALTER TABLE `tb_soal_pilgan` ENABLE KEYS */;


-- Dumping structure for table db_elearning.tb_topik_quiz
CREATE TABLE IF NOT EXISTS `tb_topik_quiz` (
  `id_tq` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `tgl_buat` date NOT NULL,
  `pembuat` varchar(10) NOT NULL,
  `waktu_soal` int(8) NOT NULL,
  `info` varchar(250) NOT NULL,
  `status` enum('aktif','tidak aktif') NOT NULL,
  PRIMARY KEY (`id_tq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table db_elearning.tb_topik_quiz: ~5 rows (approximately)
DELETE FROM `tb_topik_quiz`;
/*!40000 ALTER TABLE `tb_topik_quiz` DISABLE KEYS */;
INSERT INTO `tb_topik_quiz` (`id_tq`, `judul`, `id_kelas`, `id_mapel`, `tgl_buat`, `pembuat`, `waktu_soal`, `info`, `status`) VALUES
	(1, 'Ulangan Harian 1', 1, 1, '2015-08-03', '1', 3600, 'Ulangan tanggal 4-8-2015', 'aktif'),
	(2, 'Ulangan Harian 1', 2, 2, '2015-08-05', 'admin', 1200, 'Ulangan hari Kamis', 'aktif'),
	(3, 'Latihan Soal', 3, 3, '2015-08-05', '10', 1500, 'Jangan mencontek', 'aktif'),
	(4, 'Ulangan Tengah Semester 1', 4, 1, '2015-08-07', 'admin', 600, 'Kerjakan dengan teliti', 'aktif'),
	(5, 'Ulangan Remidial 1', 1, 2, '2015-08-11', 'admin', 1200, 'Kerjakan dengan jujur dan teliti', 'tidak aktif'),
	(6, 'ulangan coba', 1, 1, '2016-05-19', 'admin', 3600, 'teast', 'aktif');
/*!40000 ALTER TABLE `tb_topik_quiz` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
