-- phpMyAdmin SQL Dump
-- version 3.5.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 02, 2012 at 08:34 AM
-- Server version: 5.5.28
-- PHP Version: 5.4.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE IF NOT EXISTS `anak` (
  `id_anak` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) CHARACTER SET utf8 NOT NULL,
  `jk` enum('P','W') CHARACTER SET utf8 NOT NULL,
  `tempat_lahir` varchar(30) CHARACTER SET utf8 NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(30) CHARACTER SET utf8 NOT NULL,
  `keterangan` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_anak`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `anak`
--

INSERT INTO `anak` (`id_anak`, `id_pegawai`, `nama`, `jk`, `tempat_lahir`, `tgl_lahir`, `pekerjaan`, `keterangan`) VALUES
(9, 19, 'dsfds', 'P', 'dsfds', '1982-10-16', 'sdfsd', 'sdfds');

-- --------------------------------------------------------

--
-- Table structure for table `bapak_ibu_kandung`
--

CREATE TABLE IF NOT EXISTS `bapak_ibu_kandung` (
  `id_kandung` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` enum('P','W') NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kandung`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bapak_ibu_kandung`
--

INSERT INTO `bapak_ibu_kandung` (`id_kandung`, `id_pegawai`, `nama`, `tgl_lahir`, `jk`, `pekerjaan`, `keterangan`) VALUES
(9, 19, 'dfdsfsd', '1982-10-05', 'P', 'sdfsd', 'sdfds');

-- --------------------------------------------------------

--
-- Table structure for table `bapak_ibu_mertua`
--

CREATE TABLE IF NOT EXISTS `bapak_ibu_mertua` (
  `id_mertua` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('P','W') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_mertua`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `bapak_ibu_mertua`
--

INSERT INTO `bapak_ibu_mertua` (`id_mertua`, `id_pegawai`, `nama`, `jk`, `tgl_lahir`, `pekerjaan`, `keterangan`) VALUES
(12, 19, 'dsfdsf', 'P', '1982-10-19', 'dsfsd', 'sdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `diklat_penjenjangan`
--

CREATE TABLE IF NOT EXISTS `diklat_penjenjangan` (
  `id_diklat` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `id_jenis_diklat` int(11) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `no_tanda_lulus` varchar(40) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `lama` int(11) NOT NULL,
  `ket` varchar(35) NOT NULL,
  PRIMARY KEY (`id_diklat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `diklat_penjenjangan`
--

INSERT INTO `diklat_penjenjangan` (`id_diklat`, `id_pegawai`, `id_jenis_diklat`, `tgl_awal`, `tgl_akhir`, `no_tanda_lulus`, `tempat`, `lama`, `ket`) VALUES
(10, 19, 0, '1982-10-20', '1982-10-28', 'dsfsdf', 'sdf', 123, 'dfsd');

-- --------------------------------------------------------

--
-- Table structure for table `gaji_golongan`
--

CREATE TABLE IF NOT EXISTS `gaji_golongan` (
  `id_gaji` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `golongan` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `gaji` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id_gaji`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE IF NOT EXISTS `golongan` (
  `id_golongan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `golongan` varchar(20) NOT NULL,
  `ket` varchar(25) NOT NULL,
  `nilai` int(11) NOT NULL,
  PRIMARY KEY (`id_golongan`),
  UNIQUE KEY `golongan` (`golongan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_golongan`, `golongan`, `ket`, `nilai`) VALUES
(24, 'II/C', 'pengatur', 7),
(23, 'II/B', 'pengatur muda tk. 1', 6),
(22, 'II/A', 'pengatur muda', 5),
(21, 'I/D', 'juru tk. 1', 4),
(20, 'I/C', 'juru', 3),
(19, 'I/B', 'juru muda tk. 1', 2),
(18, 'I/A', 'juru muda', 1),
(25, 'II/D', 'pengatur tk. 1', 8),
(26, 'III/A', 'penata muda', 9),
(27, 'III/B', 'penata muda tk. 1', 10),
(28, 'III/C', 'penata', 11),
(29, 'III/D', 'penata tk. 1', 12),
(30, 'IV/A', 'pembina', 13),
(31, 'IV/B', 'pembina tk. 1', 14),
(32, 'IV/C', 'pembina utama muda', 15),
(33, 'IV/D', 'pembina utama madya', 16);

-- --------------------------------------------------------

--
-- Table structure for table `hobi`
--

CREATE TABLE IF NOT EXISTS `hobi` (
  `id_hobi` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `hobi` varchar(20) NOT NULL,
  PRIMARY KEY (`id_hobi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `hobi`
--

INSERT INTO `hobi` (`id_hobi`, `id_pegawai`, `hobi`) VALUES
(22, 19, 'Main Musik'),
(21, 19, 'Ngoding');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_diklat`
--

CREATE TABLE IF NOT EXISTS `jenis_diklat` (
  `id_jenis_diklat` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jenis` enum('Bidang Pertanian','Bidang Industri','Bidang Jasa','Umum') NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jenis_diklat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `jenis_diklat`
--

INSERT INTO `jenis_diklat` (`id_jenis_diklat`, `jenis`, `nama`) VALUES
(25, 'Bidang Pertanian', 'Dwi aksoro');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_jabatan`
--

CREATE TABLE IF NOT EXISTS `jenis_jabatan` (
  `id_jabatan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(80) NOT NULL,
  `seksi` varchar(80) NOT NULL,
  `eselon` varchar(10) NOT NULL,
  `id_unit_kerja` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=179 ;

--
-- Dumping data for table `jenis_jabatan`
--

INSERT INTO `jenis_jabatan` (`id_jabatan`, `jabatan`, `seksi`, `eselon`, `id_unit_kerja`) VALUES
(1, 'Kepala BBPPK Lembang', '', '3', 1),
(157, 'Kepala Bagian tata Usaha', '', '', 1),
(101, 'Kepala', '', '', 11),
(178, 'Bendahara', '', '', 1),
(177, 'Lain-Lain', '', '', 1),
(175, 'Sekertaris', '', '', 1),
(174, 'Kepala Seksi Evaluasi dan Pelaporan', '', '', 1),
(173, 'Kepala Seksi Program', '', '', 1),
(172, 'Kepala Subag Pemberdayaan', '', '', 1),
(171, 'Kepala Subag Penyelenggaraan', '', '', 1),
(170, 'kepala Subag Keuangan', '', '', 1),
(169, 'Kelompok Jabatan Fungsional', '', '', 1),
(168, 'Kepala Seksi Informasi dan Promosi', 'Kepala Bidang dan Kerjasama', '', 1),
(167, 'Kepala Seksi Kelembagaan', 'Kepala Bidang dan Kerjasama', '', 1),
(166, 'Kepala seksi Kelembagaan', 'Kepala Bidang Penyelenggaraan', '', 1),
(163, 'Kepala Seksi Kewirausahaan', 'Kepala Bidang Penyelenggaraan', '', 1),
(164, 'Kepala Bimbingan teknis', 'Kepala Bidang Penyelenggaraan', '', 1),
(165, 'Kepala Bidang dan Kerjasama', '', '', 1),
(158, 'Kepala Bidang Program dan Evaluasi ', '', '', 1),
(159, 'Kepala Bidang Penyelenggaraan dan Pemberdayaan', '', '', 1),
(160, 'Kepala Sub Penyelenggaraan Program dan Anggaran', 'Kepala Bagian tata Usaha', '', 1),
(161, 'Kepala Sub Kepegawaian dan Umum', 'Kepala Bagian tata Usaha', '', 1),
(162, 'Kepala Bidang Penyelenggaraan', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan_luar_negeri`
--

CREATE TABLE IF NOT EXISTS `kunjungan_luar_negeri` (
  `id_kunjungan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `negara` varchar(35) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `pembiaya` varchar(35) NOT NULL,
  PRIMARY KEY (`id_kunjungan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `kunjungan_luar_negeri`
--

INSERT INTO `kunjungan_luar_negeri` (`id_kunjungan`, `id_pegawai`, `negara`, `tujuan`, `tgl_awal`, `tgl_akhir`, `pembiaya`) VALUES
(10, 19, 'dsfdsf', 'sdfsd', '1982-10-13', '1982-10-27', 'dfds');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi_pt`
--

CREATE TABLE IF NOT EXISTS `organisasi_pt` (
  `id_org_pt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kedudukan` varchar(30) NOT NULL,
  `tahun_awal` int(4) NOT NULL,
  `tahun_akhir` int(4) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `nama_pemimpin` varchar(30) NOT NULL,
  PRIMARY KEY (`id_org_pt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `organisasi_pt`
--

INSERT INTO `organisasi_pt` (`id_org_pt`, `id_pegawai`, `nama`, `kedudukan`, `tahun_awal`, `tahun_akhir`, `tempat`, `nama_pemimpin`) VALUES
(15, 19, 'sdfsdsdfds', 'sdfsdfsd', 1232, 1234, 'dsfds', 'dfds');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi_selesai_pendidikan`
--

CREATE TABLE IF NOT EXISTS `organisasi_selesai_pendidikan` (
  `id_org_kerja` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kedudukan` varchar(30) NOT NULL,
  `tahun_awal` int(4) NOT NULL,
  `tahun_akhir` int(4) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `nama_pemimpin` varchar(30) NOT NULL,
  PRIMARY KEY (`id_org_kerja`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `organisasi_selesai_pendidikan`
--

INSERT INTO `organisasi_selesai_pendidikan` (`id_org_kerja`, `id_pegawai`, `nama`, `kedudukan`, `tahun_awal`, `tahun_akhir`, `tempat`, `nama_pemimpin`) VALUES
(10, 19, 'sdfsd', 'sdfdsfdsf', 2342, 3435, 'dfgdfg', 'dfdfgf');

-- --------------------------------------------------------

--
-- Table structure for table `organisasi_sma`
--

CREATE TABLE IF NOT EXISTS `organisasi_sma` (
  `id_org_sma` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kedudukan` varchar(30) NOT NULL,
  `tahun_awal` int(4) NOT NULL,
  `tahun_akhir` int(4) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `nama_pemimpin` varchar(30) NOT NULL,
  PRIMARY KEY (`id_org_sma`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `organisasi_sma`
--

INSERT INTO `organisasi_sma` (`id_org_sma`, `id_pegawai`, `nama`, `kedudukan`, `tahun_awal`, `tahun_akhir`, `tempat`, `nama_pemimpin`) VALUES
(1, 1, 'OSIS SMA N 1 Sukamaju', 'Wakil Ketua 1', 1994, 1995, 'Sukabumi', 'Andi M.'),
(2, 4, 'organisasi sma', 'penanggung jawab', 1990, 2010, 'bandung', 'dr doob'),
(4, 11, 'aaaaaaaaaa', 'aaaaaaaaaa', 0, 2111, 'aaaaaaaaaa', 'aaaaaaaaaa'),
(5, 11, 'aaaaaaaaaa', 'aaaaaaaaaa', 1990, 1998, 'aaaaaaaaaa', 'aaaaaaaaaa'),
(8, 17, 'bbbbbbbbbbbb', 'bbbbbbbbbbbb', 1232, 2000, 'bbbbbbbbbbbb', 'bbbbbbbbbbbb'),
(9, 19, 'sdfsddfsd', 'sdfsd', 1991, 1992, 'sdfssdfsd', 'sdfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `pasangan_hidup`
--

CREATE TABLE IF NOT EXISTS `pasangan_hidup` (
  `id_pasangan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_menikah` date NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pasangan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pasangan_hidup`
--

INSERT INTO `pasangan_hidup` (`id_pasangan`, `id_pegawai`, `nama`, `tempat_lahir`, `tgl_lahir`, `tgl_menikah`, `pekerjaan`, `keterangan`) VALUES
(5, 19, 'dfsd', 'sdfsd', '1982-10-13', '1982-10-28', 'sdfds', 'sdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE IF NOT EXISTS `pelatihan` (
  `id_pelatihan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(60) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `no_tanda_lulus` varchar(40) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `ket` varchar(40) NOT NULL,
  PRIMARY KEY (`id_pelatihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`id_pelatihan`, `id_pegawai`, `nama`, `tgl_awal`, `tgl_akhir`, `no_tanda_lulus`, `tempat`, `ket`) VALUES
(10, 19, 'sdfdssdfs', '1982-10-21', '1982-10-30', 'sdfsdsdfds', 'sdfdsfs', 'sdfsdfdsfsd');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
  `id_pendidikan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `tingkat` varchar(20) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `no_ijazah` varchar(40) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pendidikan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `id_pegawai`, `tingkat`, `nama`, `jurusan`, `no_ijazah`, `tahun`, `tempat`, `kepsek`) VALUES
(29, 19, 'SD', 'dfsddfsdfd', 'sdf', 'sdfsdsdfds', 2342, 'dsfsd', 'dsfs');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman_seminar`
--

CREATE TABLE IF NOT EXISTS `pengalaman_seminar` (
  `id_seminar` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(40) NOT NULL,
  `peranan` varchar(35) NOT NULL,
  `tgl_penyelenggaraan` date NOT NULL,
  `penyelenggara` varchar(35) NOT NULL,
  `tempat` varchar(35) NOT NULL,
  PRIMARY KEY (`id_seminar`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pengalaman_seminar`
--

INSERT INTO `pengalaman_seminar` (`id_seminar`, `id_pegawai`, `nama`, `peranan`, `tgl_penyelenggaraan`, `penyelenggara`, `tempat`) VALUES
(10, 19, 'dsfds', 'sdfsd', '1982-10-25', 'dsfsd', 'sdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `penghargaan`
--

CREATE TABLE IF NOT EXISTS `penghargaan` (
  `id_penghargaan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama_penghargaan` varchar(60) NOT NULL,
  `tahun` int(4) NOT NULL,
  `pihak_pemberi` varchar(60) NOT NULL,
  PRIMARY KEY (`id_penghargaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=17 ;

--
-- Dumping data for table `penghargaan`
--

INSERT INTO `penghargaan` (`id_penghargaan`, `id_pegawai`, `nama_penghargaan`, `tahun`, `pihak_pemberi`) VALUES
(16, 19, 'sadasdas', 1231, 'sds');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_kepangkatan`
--

CREATE TABLE IF NOT EXISTS `riwayat_kepangkatan` (
  `id_kepangkatan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `id_golongan` bigint(20) unsigned NOT NULL,
  `pangkat` varchar(20) NOT NULL,
  `tanggal_berlaku` date NOT NULL,
  `sk_pejabat` varchar(40) NOT NULL,
  `sk_nomor` varchar(40) NOT NULL,
  `sk_tanggal` date NOT NULL,
  `dasar_peraturan` varchar(40) NOT NULL,
  PRIMARY KEY (`id_kepangkatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `riwayat_kepangkatan`
--

INSERT INTO `riwayat_kepangkatan` (`id_kepangkatan`, `id_pegawai`, `id_golongan`, `pangkat`, `tanggal_berlaku`, `sk_pejabat`, `sk_nomor`, `sk_tanggal`, `dasar_peraturan`) VALUES
(12, 19, 18, 'PNS', '1982-10-20', 'wew', '3432', '1982-10-27', '23432');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pekerjaan`
--

CREATE TABLE IF NOT EXISTS `riwayat_pekerjaan` (
  `id_pekerjaan` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `pengalaman` varchar(60) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `id_golongan` bigint(20) NOT NULL,
  `gaji_pokok` varchar(20) NOT NULL,
  `sk_pejabat` varchar(40) NOT NULL,
  `sk_nomor` varchar(40) NOT NULL,
  `sk_tanggal` date NOT NULL,
  PRIMARY KEY (`id_pekerjaan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `riwayat_pekerjaan`
--

INSERT INTO `riwayat_pekerjaan` (`id_pekerjaan`, `id_pegawai`, `pengalaman`, `tgl_mulai`, `tgl_selesai`, `id_golongan`, `gaji_pokok`, `sk_pejabat`, `sk_nomor`, `sk_tanggal`) VALUES
(10, 19, 'sdasd', '1982-10-14', '1982-10-19', 18, '', 'sadas', 'asd', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `saudara_kandung`
--

CREATE TABLE IF NOT EXISTS `saudara_kandung` (
  `id_saudara` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('P','W') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_saudara`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `saudara_kandung`
--

INSERT INTO `saudara_kandung` (`id_saudara`, `id_pegawai`, `nama`, `jk`, `tgl_lahir`, `pekerjaan`, `keterangan`) VALUES
(9, 19, 'sdfsd', 'P', '1982-10-12', 'sdfsd', 'sdfds');

-- --------------------------------------------------------

--
-- Table structure for table `saudara_kandung_pasangan_hidup`
--

CREATE TABLE IF NOT EXISTS `saudara_kandung_pasangan_hidup` (
  `id_saudara` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_pegawai` bigint(20) unsigned NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('P','W') NOT NULL,
  `tgl_lahir` date NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_saudara`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `saudara_kandung_pasangan_hidup`
--

INSERT INTO `saudara_kandung_pasangan_hidup` (`id_saudara`, `id_pegawai`, `nama`, `jk`, `tgl_lahir`, `pekerjaan`, `keterangan`) VALUES
(9, 19, 'sdfsdf', 'P', '1982-10-27', 'dsfsd', 'sdfs');

-- --------------------------------------------------------

--
-- Table structure for table `umum`
--

CREATE TABLE IF NOT EXISTS `umum` (
  `id_pegawai` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_jabatan` bigint(20) unsigned NOT NULL,
  `id_golongan` bigint(20) unsigned NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(35) NOT NULL,
  `jk` enum('P','W') NOT NULL,
  `agama` enum('islam','kristen','katolik','budha','hindu','konghochu') NOT NULL,
  `kepercayaan` varchar(20) NOT NULL,
  `status` enum('CPNS','PNS','mutasi','pensiun','meninggal') NOT NULL,
  `status_kawin` enum('belumkawin','kawin','janda','duda') NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  `notelp` varchar(25) NOT NULL,
  `foto` blob,
  `mime` varchar(15) DEFAULT NULL,
  `tinggi` varchar(4) NOT NULL,
  `berat` varchar(4) NOT NULL,
  `warna_rambut` varchar(30) NOT NULL,
  `bentuk_muka` varchar(30) NOT NULL,
  `warna_kulit` varchar(30) NOT NULL,
  `ciri_khas` varchar(30) NOT NULL,
  `cacat_tubuh` varchar(20) NOT NULL,
  `jalan` varchar(100) NOT NULL,
  `kelurahan` varchar(30) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kabupaten` varchar(30) NOT NULL,
  `propinsi` varchar(30) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `pejabat_skkb` varchar(40) DEFAULT NULL,
  `no_skkb` varchar(30) DEFAULT NULL,
  `tgl_skkb` date DEFAULT NULL,
  `pejabat_ketsehat` varchar(40) DEFAULT NULL,
  `no_ketsehat` varchar(30) DEFAULT NULL,
  `tgl_ketsehat` date DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`),
  UNIQUE KEY `nip` (`nip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `umum`
--

INSERT INTO `umum` (`id_pegawai`, `nip`, `nama`, `id_jabatan`, `id_golongan`, `tgl_lahir`, `tempat_lahir`, `jk`, `agama`, `kepercayaan`, `status`, `status_kawin`, `keterangan`, `notelp`, `foto`, `mime`, `tinggi`, `berat`, `warna_rambut`, `bentuk_muka`, `warna_kulit`, `ciri_khas`, `cacat_tubuh`, `jalan`, `kelurahan`, `kecamatan`, `kabupaten`, `propinsi`, `kode_pos`, `pejabat_skkb`, `no_skkb`, `tgl_skkb`, `pejabat_ketsehat`, `no_ketsehat`, `tgl_ketsehat`) VALUES
(19, '111111', 'Dwiyan Galuh', 1, 19, '1991-10-30', 'Lebak', 'P', 'islam', '-Allah', 'PNS', 'belumkawin', 'sdfsdfsdf', '081911925200', NULL, NULL, '124', '57', 'dfsd', 'dfsd', 'sdfsd', 'sdfs', '-sfsd', 'Kubang Sari 7 No22', 'aa', 'aa', 'aa', 'aa', 12312, 'dfsdfds', '3423423', '1982-10-27', 'dsfsdf', 'dsfds', '1982-10-14');

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE IF NOT EXISTS `unit_kerja` (
  `id_unit_kerja` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id_unit_kerja`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=26 ;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id_unit_kerja`, `nama`) VALUES
(1, 'BBPPK Lembang');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `priv` enum('baca','input','admin') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `priv`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'read', 'ecae13117d6f0584c25a9da6c8f8415e', 'baca'),
(3, 'input', 'a43c1b0aa53a0c908810c06ab1ff3967', 'input');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
