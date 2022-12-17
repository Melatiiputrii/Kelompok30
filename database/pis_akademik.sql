-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 05:18 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pis_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `import_data_2`
--

CREATE TABLE `import_data_2` (
  `COL 1` varchar(1) DEFAULT NULL,
  `COL 2` varchar(1) DEFAULT NULL,
  `COL 3` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_data_2`
--

INSERT INTO `import_data_2` (`COL 1`, `COL 2`, `COL 3`) VALUES
('A', 'L', NULL),
('B', 'L', 'k'),
('V', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `import_data__3_`
--

CREATE TABLE `import_data__3_` (
  `COL 1` varchar(1) DEFAULT NULL,
  `COL 2` varchar(1) DEFAULT NULL,
  `COL 3` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `import_data__3_`
--

INSERT INTO `import_data__3_` (`COL 1`, `COL 2`, `COL 3`) VALUES
('A', 'L', NULL),
('B', 'L', 'k'),
('V', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_menu`
--

CREATE TABLE `tabel_menu` (
  `id` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL,
  `icon` varchar(25) NOT NULL,
  `is_main_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_menu`
--

INSERT INTO `tabel_menu` (`id`, `nama_menu`, `link`, `icon`, `is_main_menu`) VALUES
(1, 'Data Siswa', 'siswa', 'fa fa-users', 0),
(2, 'Data Guru', 'guru', 'fa fa-user-circle', 0),
(3, 'Data Admin', '#', 'fa fa-bars', 0),
(4, 'Mata Pelajaran', 'mapel', 'fa fa-book', 3),
(5, 'Ruangan Kelas', 'ruangan', 'fa fa-building', 3),
(6, 'Tingkatan Kelas', 'tingkatan', 'fa fa-sitemap', 3),
(7, 'Jurusan', 'jurusan', 'fa fa-th-large', 3),
(8, 'Tahun Akademik', 'tahunakademik', 'fa fa-calendar-check-o', 3),
(9, 'Kelas', 'kelas', 'fa fa-cubes', 3),
(10, 'Kurikulum', 'kurikulum', 'fa fa-list', 3),
(11, 'Jadwal Pelajaran', 'jadwal', 'fa fa-calendar-plus-o', 0),
(12, 'Peserta Didik', 'siswa/siswa_aktif', 'fa fa-users', 0),
(14, 'Forum Diskusi', 'diskusi', 'fa fa-id-badge', 0),
(16, 'Form Pembayaran', 'pembayaran', 'fa fa-dollar', 0),
(17, 'Nilai', 'nilai', 'fa fa-archive', 0),
(18, 'Laporan Nilai', 'laporan_nilai', 'fa fa-file-pdf-o', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `kd_agama` int(2) NOT NULL,
  `nama_agama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`kd_agama`, `nama_agama`) VALUES
(1, 'ISLAM'),
(2, 'KRISTEN/ PROTESTAN'),
(3, 'KATHOLIK'),
(4, 'HINDU'),
(5, 'BUDHA'),
(6, 'KHONG HU CHU'),
(7, 'LAIN LAIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diskusi`
--

CREATE TABLE `tbl_diskusi` (
  `id_diskusi` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `forum_diskusi` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_diskusi`
--

INSERT INTO `tbl_diskusi` (`id_diskusi`, `nama`, `forum_diskusi`) VALUES
(10, 'Melati Putri Ambarini', 'Kapan Pr dikumpul?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `nuptk` varchar(11) NOT NULL,
  `nama_guru` varchar(40) NOT NULL,
  `gender` enum('P','W') NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`nuptk`, `nama_guru`, `gender`, `username`, `password`, `id_guru`) VALUES
('00000000003', 'Oki Hermawan, S.Pd.I', 'P', 'Kelompok30', '14e1b600b1fd579f47433b88e8d85291', 1),
('00000000001', 'Melati Putri Ambarini, S.Pd.I', 'W', 'Melati', 'c56d0e9a7ccec67b4ea131655038d604', 2),
('00000000002', 'Afrida Purnasari Gea, S.Pd.I', 'W', 'Kelompok30', '14e1b600b1fd579f47433b88e8d85291', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `jam` varchar(30) NOT NULL,
  `kd_ruangan` varchar(10) NOT NULL,
  `hari` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`id_jadwal`, `id_tahun_akademik`, `semester`, `kd_jurusan`, `kd_tingkatan`, `kd_kelas`, `kd_mapel`, `id_guru`, `jam`, `kd_ruangan`, `hari`) VALUES
(1, 1, 'ganjil', 'IPA', '7', '7-A1', 'BID1', 1, '', 'VIIA1', ''),
(2, 1, 'ganjil', 'IPA', '7', '7-B1', 'BID1', 0, '', '000', ''),
(3, 1, 'ganjil', 'IPA', '8', '8-A1', 'BID2', 0, '', '000', ''),
(4, 1, 'ganjil', 'IPA', '8', '8-B1', 'BID2', 2, '', 'VIIIA1', ''),
(5, 1, 'ganjil', 'IPA', '9', '9-A1', 'BID3', 0, '', '000', ''),
(6, 1, 'ganjil', 'IPA', '9', '9-B1', 'BID3', 0, '', '000', ''),
(7, 1, 'ganjil', 'IPA', '7', '7-A1', 'BIO1', 2, '', 'VIIA1', 'Selasa'),
(8, 1, 'ganjil', 'IPA', '7', '7-B1', 'BIO1', 0, '', '000', ''),
(9, 1, 'ganjil', 'IPA', '8', '8-A1', 'BIO2', 0, '', '000', ''),
(10, 1, 'ganjil', 'IPA', '8', '8-B1', 'BIO2', 1, '', 'VIIIA1', ''),
(11, 1, 'ganjil', 'IPA', '9', '9-A1', 'BIO3', 0, '', '000', ''),
(12, 1, 'ganjil', 'IPA', '9', '9-B1', 'BIO3', 0, '', '000', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `kd_jurusan` varchar(5) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`kd_jurusan`, `nama_jurusan`) VALUES
('IPA', 'IPA'),
('IPS', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kd_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kd_kelas`, `nama_kelas`, `kd_tingkatan`, `kd_jurusan`) VALUES
('7-A1', 'Kelas 7-A IPA', '7', 'IPA'),
('7-A2', 'Kelas 7-A IPS', '7', 'IPS'),
('7-B1', 'Kelas 7-B IPA', '7', 'IPA'),
('7-B2', 'Kelas 7-B IPS', '7', 'IPS'),
('8-A1', 'Kelas 8-A IPA', '8', 'IPA'),
('8-A2', 'Kelas 8-A IPS', '8', 'IPS'),
('8-B1', 'Kelas 8-B IPA', '8', 'IPA'),
('8-B2', 'Kelas 8-B IPS', '8', 'IPS'),
('9-A1', 'Kelas 9-A IPA', '9', 'IPA'),
('9-A2', 'Kelas 9-A IPS', '9', 'IPS'),
('9-B1', 'Kelas 9-B IPA', '9', 'IPA'),
('9-B2', 'Kelas 9-B IPS', '9', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum`
--

CREATE TABLE `tbl_kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `nama_kurikulum` varchar(30) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum`
--

INSERT INTO `tbl_kurikulum` (`id_kurikulum`, `nama_kurikulum`, `is_aktif`) VALUES
(0, 'Kurikulum 2022 (Merdeka)', 'Y'),
(1, 'Kurikulum 2013 (K13)', 'N'),
(2, 'Kurikulum 2006 (KTSP)', 'N'),
(3, 'Kurikulum 2004 (KBK)', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kurikulum_detail`
--

CREATE TABLE `tbl_kurikulum_detail` (
  `id_kurikulum_detail` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `kd_mapel` varchar(5) NOT NULL,
  `kd_jurusan` varchar(5) NOT NULL,
  `kd_tingkatan` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kurikulum_detail`
--

INSERT INTO `tbl_kurikulum_detail` (`id_kurikulum_detail`, `id_kurikulum`, `kd_mapel`, `kd_jurusan`, `kd_tingkatan`) VALUES
(1, 1, 'BID1', 'IPA', '7'),
(2, 1, 'BID2', 'IPA', '8'),
(3, 1, 'BID3', 'IPA', '9'),
(4, 1, 'BIO1', 'IPA', '7'),
(5, 1, 'BIO2', 'IPA', '8'),
(6, 1, 'BIO3', 'IPA', '9');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `nama_level`) VALUES
(1, 'Admin'),
(2, 'Walikelas'),
(3, 'Guru'),
(4, 'Keuangan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `kd_mapel` varchar(5) NOT NULL,
  `nama_mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`kd_mapel`, `nama_mapel`) VALUES
('BID1', 'Bahasa Indonesia '),
('BIO1', 'Biologi '),
('MTK1', 'Matematika '),
('PAI1', 'Pendidikan Agama Islam ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id_nilai`, `id_jadwal`, `nim`, `nilai`) VALUES
(1, 1, '18SI1000', 100),
(2, 1, '18SI1001', 80),
(3, 1, '18SI1002', 75),
(4, 1, '18SI1003', 85),
(5, 1, '18TI2000', 90),
(6, 1, '18TI2001', 100),
(7, 1, '18TI2002', 99),
(8, 1, '18TI2003', 99);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_riwayat_kelas`
--

CREATE TABLE `tbl_riwayat_kelas` (
  `id_riwayat` int(11) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `id_tahun_akademik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_riwayat_kelas`
--

INSERT INTO `tbl_riwayat_kelas` (`id_riwayat`, `kd_kelas`, `nim`, `id_tahun_akademik`) VALUES
(0, '7-A1', '', 1),
(1, '7-A1', '18SI1000', 1),
(2, '7-A1', '18SI1001', 1),
(3, '7-A1', '18SI1002', 1),
(4, '7-A1', '18SI1003', 1),
(5, '7-A1', '18TI2000', 1),
(6, '7-A1', '18TI2001', 1),
(7, '7-A1', '18TI2002', 1),
(8, '7-A1', '18TI2003', 1),
(10, '8-A1', '14.12.8199', 1),
(11, '8-B1', '14.12.8198', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ruangan`
--

CREATE TABLE `tbl_ruangan` (
  `kd_ruangan` varchar(10) NOT NULL,
  `nama_ruangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ruangan`
--

INSERT INTO `tbl_ruangan` (`kd_ruangan`, `nama_ruangan`) VALUES
('VIIA1', 'Ruangan Kelas VII-A IPA'),
('VIIA2', 'Ruangan Kelas VII-A IPS'),
('VIIB1', 'Ruangan Kelas VII-B IPA'),
('VIIB2', 'Ruangan Kelas VII-B IPS'),
('VIIIA1', 'Ruangan Kelas VIII-A IPA'),
('VIIIA2', 'Ruangan Kelas VIII-A IPS'),
('VIIIB1', 'Ruangan Kelas VIII-B IPA'),
('VIIIB2', 'Ruangan Kelas VIII-B IPS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nim` varchar(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `kd_agama` int(2) NOT NULL,
  `foto` text NOT NULL,
  `kd_kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nim`, `nama`, `gender`, `tanggal_lahir`, `tempat_lahir`, `kd_agama`, `foto`, `kd_kelas`) VALUES
('18SI1000', 'Melati Putri Ambarini', 'P', '2003-04-19', 'Palembang', 1, 'user-siluet.jpg', '7-A1'),
('18SI1001', 'Afrida Purnasari Gea', 'P', '2002-03-14', 'Bandung', 1, 'user-siluet1.jpg', '8-A1'),
('18SI1002', 'Oki Hermawan', 'L', '2002-07-24', 'Malang', 1, 'user-siluet2.jpg', '9-A1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun_akademik`
--

CREATE TABLE `tbl_tahun_akademik` (
  `id_tahun_akademik` int(11) NOT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `is_aktif` enum('Y','N') NOT NULL,
  `semester` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tahun_akademik`
--

INSERT INTO `tbl_tahun_akademik` (`id_tahun_akademik`, `tahun_akademik`, `is_aktif`, `semester`) VALUES
(1, '2021/2022', 'Y', 'ganjil'),
(2, '2020/2021', 'N', ''),
(5, '2019/2020', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tingkatan_kelas`
--

CREATE TABLE `tbl_tingkatan_kelas` (
  `kd_tingkatan` varchar(5) NOT NULL,
  `nama_tingkatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tingkatan_kelas`
--

INSERT INTO `tbl_tingkatan_kelas` (`kd_tingkatan`, `nama_tingkatan`) VALUES
('7', 'Tingkat Kelas 7 (VII)'),
('8', 'Tingkat Kelas 8 (VIII)'),
('9', 'Tingkat Kelas 9 (IX)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `foto` text NOT NULL,
  `nama_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`, `nama_level`) VALUES
(1, 'Kelompok30', 'Kelompok30', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Admin2.png', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_rule`
--

CREATE TABLE `tbl_user_rule` (
  `id_rule` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `id_level_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_rule`
--

INSERT INTO `tbl_user_rule` (`id_rule`, `id_menu`, `id_level_user`) VALUES
(1, 16, 4),
(2, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 5, 1),
(7, 7, 1),
(8, 8, 1),
(9, 11, 1),
(10, 6, 1),
(11, 14, 1),
(12, 15, 1),
(13, 13, 1),
(14, 12, 1),
(15, 10, 1),
(16, 9, 1),
(17, 11, 3),
(19, 17, 3),
(20, 18, 3),
(21, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `view_kelas`
--

CREATE TABLE `view_kelas` (
  `kd_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(30) DEFAULT NULL,
  `kd_tingkatan` varchar(5) DEFAULT NULL,
  `kd_jurusan` varchar(5) DEFAULT NULL,
  `nama_tingkatan` varchar(30) DEFAULT NULL,
  `nama_jurusan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_kelas`
--

INSERT INTO `view_kelas` (`kd_kelas`, `nama_kelas`, `kd_tingkatan`, `kd_jurusan`, `nama_tingkatan`, `nama_jurusan`) VALUES
('7-A 1', 'IPA', '7', 'IPA', 'Kelas 7 (VII)', 'IPA'),
('7-A 2', 'IPS', '7', 'IPS', 'Kelas 7 (VII)', 'IPS'),
('8-A 1', 'IPA', '8', 'IPA', 'Kelas 8 (VIII)', 'IPA'),
('8-A 2', 'IPS', '8', 'IPS', 'Kelas 8 (VIII)', 'IPS'),
('9-A 1', 'IPA', '9', 'IPA', 'Kelas 9 (IX)', 'IPA'),
('9-A 2', 'IPS', '9', 'IPS', 'Kelas 9 (IX)', 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `view_user`
--

CREATE TABLE `view_user` (
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(40) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `id_level_user` int(11) DEFAULT NULL,
  `foto` text,
  `nama_level` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_user`
--

INSERT INTO `view_user` (`id_user`, `nama_lengkap`, `username`, `password`, `id_level_user`, `foto`, `nama_level`) VALUES
(1, 'Kelompok30', 'Kelompok30', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Admin2.png', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `view_walikelas`
--

CREATE TABLE `view_walikelas` (
  `nama_guru` varchar(40) NOT NULL,
  `nama_kelas` varchar(30) DEFAULT NULL,
  `id_walikelas` int(11) DEFAULT NULL,
  `id_tahun_akademik` int(11) DEFAULT NULL,
  `nama_jurusan` varchar(30) DEFAULT NULL,
  `nama_tingkatan` varchar(30) DEFAULT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `view_walikelas`
--

INSERT INTO `view_walikelas` (`nama_guru`, `nama_kelas`, `id_walikelas`, `id_tahun_akademik`, `nama_jurusan`, `nama_tingkatan`, `tahun_akademik`) VALUES
('Melati Putri Ambarini, S.Pd.I', 'Kelas VII-A IPA', 1, 22, 'IPA', 'Kelas 7 (VII)', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `worksheet`
--

CREATE TABLE `worksheet` (
  `NIM` varchar(10) DEFAULT NULL,
  `SISWA` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `worksheet`
--

INSERT INTO `worksheet` (`NIM`, `SISWA`) VALUES
('18SI1000', 'Muhammad A'),
('18SI1001', 'Rian Arman'),
('18SI1002', 'Rezha Sept'),
('18SI1003', 'Ovillia Dy'),
('18TI2000', 'Hadi Luthf'),
('18TI2001', 'Muhammad F'),
('18TI2002', 'Bagus Widi'),
('18TI2003', 'Aris Harwa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_menu`
--
ALTER TABLE `tabel_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`kd_agama`);

--
-- Indexes for table `tbl_diskusi`
--
ALTER TABLE `tbl_diskusi`
  ADD PRIMARY KEY (`id_diskusi`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`kd_jurusan`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tbl_kurikulum`
--
ALTER TABLE `tbl_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`);

--
-- Indexes for table `tbl_kurikulum_detail`
--
ALTER TABLE `tbl_kurikulum_detail`
  ADD PRIMARY KEY (`id_kurikulum_detail`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`kd_mapel`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `tbl_riwayat_kelas`
--
ALTER TABLE `tbl_riwayat_kelas`
  ADD PRIMARY KEY (`id_riwayat`);

--
-- Indexes for table `tbl_ruangan`
--
ALTER TABLE `tbl_ruangan`
  ADD PRIMARY KEY (`kd_ruangan`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_tahun_akademik`
--
ALTER TABLE `tbl_tahun_akademik`
  ADD PRIMARY KEY (`id_tahun_akademik`);

--
-- Indexes for table `tbl_tingkatan_kelas`
--
ALTER TABLE `tbl_tingkatan_kelas`
  ADD PRIMARY KEY (`kd_tingkatan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_rule`
--
ALTER TABLE `tbl_user_rule`
  ADD PRIMARY KEY (`id_rule`);

--
-- Indexes for table `view_kelas`
--
ALTER TABLE `view_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `view_user`
--
ALTER TABLE `view_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `view_walikelas`
--
ALTER TABLE `view_walikelas`
  ADD PRIMARY KEY (`nama_guru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_diskusi`
--
ALTER TABLE `tbl_diskusi`
  MODIFY `id_diskusi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
