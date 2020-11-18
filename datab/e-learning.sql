-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2020 at 08:07 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `el_absen`
--

CREATE TABLE `el_absen` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `mapel_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `el_absen`
--

INSERT INTO `el_absen` (`id`, `kelas_id`, `mapel_id`, `pengajar_id`, `tanggal`, `jam_mulai`, `jam_selesai`) VALUES
(3, 2, 2, 2, '2020-05-04', '11:00:00', '13:00:00'),
(4, 7, 2, 2, '2020-05-02', '12:15:00', '02:16:00'),
(5, 22, 37, 7, '2020-11-18', '07:00:00', '08:00:00'),
(6, 22, 36, 7, '2020-11-18', '10:00:00', '11:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `el_absen_siswa`
--

CREATE TABLE `el_absen_siswa` (
  `id` int(11) NOT NULL,
  `absen_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT '0 = alpha, 1 = masuk, 2 = izin,3 = sakit'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `el_absen_siswa`
--

INSERT INTO `el_absen_siswa` (`id`, `absen_id`, `siswa_id`, `status`) VALUES
(1, 3, 11, 1),
(2, 4, 2, 1),
(3, 5, 12, 1),
(4, 5, 13, 1),
(5, 5, 14, 2),
(6, 5, 15, 3),
(7, 5, 16, 0),
(8, 5, 17, 0),
(9, 5, 18, 0),
(10, 5, 19, 0),
(11, 5, 20, 0),
(12, 5, 21, 0),
(13, 5, 22, 0),
(14, 5, 23, 0),
(15, 5, 24, 0),
(16, 5, 25, 0),
(17, 5, 26, 0),
(18, 5, 27, 0),
(19, 5, 28, 0),
(20, 5, 29, 0),
(21, 5, 30, 0),
(22, 5, 31, 0),
(23, 5, 32, 0),
(24, 5, 33, 0),
(25, 5, 34, 0),
(26, 5, 35, 0),
(27, 5, 36, 0),
(28, 5, 37, 0),
(29, 5, 38, 0),
(30, 5, 39, 0),
(31, 5, 40, 0),
(32, 5, 41, 0),
(33, 5, 42, 0),
(34, 5, 43, 0),
(35, 5, 44, 0),
(36, 5, 45, 0),
(37, 5, 46, 0),
(38, 5, 47, 0),
(39, 5, 48, 0),
(40, 6, 12, 0),
(41, 6, 13, 0),
(42, 6, 14, 0),
(43, 6, 15, 0),
(44, 6, 16, 0),
(45, 6, 17, 0),
(46, 6, 18, 0),
(47, 6, 19, 0),
(48, 6, 20, 0),
(49, 6, 21, 0),
(50, 6, 22, 0),
(51, 6, 23, 0),
(52, 6, 24, 0),
(53, 6, 25, 0),
(54, 6, 26, 0),
(55, 6, 27, 0),
(56, 6, 28, 0),
(57, 6, 29, 0),
(58, 6, 30, 0),
(59, 6, 31, 0),
(60, 6, 32, 0),
(61, 6, 33, 0),
(62, 6, 34, 0),
(63, 6, 35, 0),
(64, 6, 36, 0),
(65, 6, 37, 0),
(66, 6, 38, 0),
(67, 6, 39, 0),
(68, 6, 40, 0),
(69, 6, 41, 0),
(70, 6, 42, 0),
(71, 6, 43, 0),
(72, 6, 44, 0),
(73, 6, 45, 0),
(74, 6, 46, 0),
(75, 6, 47, 0),
(76, 6, 48, 0);

-- --------------------------------------------------------

--
-- Table structure for table `el_field_tambahan`
--

CREATE TABLE `el_field_tambahan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_field_tambahan`
--

INSERT INTO `el_field_tambahan` (`id`, `nama`, `value`) VALUES
('check-urgent-info', 'Check Urgent Info', '{\"info\":\"\",\"last_check\":\"2020-04-30 00:45:10\"}'),
('history-mengerjakan-3-2', 'History pengerjaan tugas', '{\"mulai\":\"2019-12-20 13:33:38\",\"selesai\":\"2019-12-20 14:03:38\",\"uri_string\":\"tugas\\/kerjakan\\/2\",\"valid_route\":[\"\\/tugas\\/kerjakan\",\"\\/tugas\\/finish\",\"\\/tugas\\/submit_essay\",\"\\/tugas\\/submit_upload\"],\"tugas\":{\"id\":\"2\",\"mapel_id\":\"6\",\"pengajar_id\":\"2\",\"type_id\":\"3\",\"judul\":\"SISTEM GERAK PADA MANUSIA\",\"durasi\":\"30\",\"info\":\"<p>KERJAKAN SOAL DENGAN BAIK DAN BENAR<\\/p>\\r\\n\",\"aktif\":\"1\",\"tgl_buat\":\"2019-12-20 13:30:29\",\"tampil_siswa\":\"1\"},\"unix_id\":\"bfb0f813ef2c997245f7651a0cd45fba701601\",\"ip\":\"::1\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"pertanyaan_id\":[\"2\"],\"jawaban\":{\"2\":\"7\"},\"nilai\":100,\"jml_benar\":1,\"jml_salah\":0,\"tgl_submit\":\"2019-12-20 13:41:15\",\"total_waktu\":\"7 menit 37 detik\"}');

-- --------------------------------------------------------

--
-- Table structure for table `el_jawaban`
--

CREATE TABLE `el_jawaban` (
  `id_jawaban` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `jawaban` text NOT NULL,
  `nilai_pg` int(11) NOT NULL,
  `nilai_essay` int(11) DEFAULT NULL,
  `nilai_total` double DEFAULT NULL,
  `jumlah_soal` int(11) NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `el_jawaban`
--

INSERT INTO `el_jawaban` (`id_jawaban`, `id_ujian`, `id_siswa`, `jawaban`, `nilai_pg`, `nilai_essay`, `nilai_total`, `jumlah_soal`, `tgl`) VALUES
(2, 1, 2, '1:C,3:aaa', 1, 2, 83.333333333333, 2, '0000-00-00 00:00:00'),
(3, 1, 2, '1:C,3:asdsdasdsa', 3, 3, 100, 2, '0000-00-00 00:00:00'),
(4, 3, 2, '1:C,3:adasd,5:B,6:adasdas', 3, 5, 66.666666666667, 4, '2020-05-02 05:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `el_kelas`
--

CREATE TABLE `el_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=aktif 0=tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_kelas`
--

INSERT INTO `el_kelas` (`id`, `nama`, `parent_id`, `urutan`, `aktif`) VALUES
(23, 'KELAS I a', NULL, 22, 0),
(17, 'KELAS  I', NULL, 16, 1),
(18, 'KELAS II', NULL, 17, 1),
(19, 'KELAS III', NULL, 18, 1),
(20, 'KELAS IV', NULL, 19, 1),
(21, 'KELAS V', NULL, 20, 1),
(22, 'KELAS VI', NULL, 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_kelas_siswa`
--

CREATE TABLE `el_kelas_siswa` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL COMMENT '0 jika bukan, 1 jika ya'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_kelas_siswa`
--

INSERT INTO `el_kelas_siswa` (`id`, `kelas_id`, `siswa_id`, `aktif`) VALUES
(1, 3, 1, 0),
(2, 2, 1, 0),
(3, 7, 2, 1),
(4, 7, 3, 0),
(5, 12, 4, 1),
(6, 8, 3, 1),
(7, 2, 11, 1),
(9, 4, 1, 1),
(10, 22, 12, 1),
(11, 22, 13, 1),
(12, 22, 14, 1),
(13, 22, 15, 1),
(14, 22, 16, 1),
(15, 22, 17, 1),
(16, 22, 18, 1),
(17, 22, 19, 1),
(18, 22, 20, 1),
(19, 22, 21, 1),
(20, 22, 22, 1),
(21, 22, 23, 1),
(22, 22, 24, 1),
(23, 22, 25, 1),
(24, 22, 26, 1),
(25, 22, 27, 1),
(26, 22, 28, 1),
(27, 22, 29, 1),
(28, 22, 30, 1),
(29, 22, 31, 1),
(30, 22, 32, 1),
(31, 22, 33, 1),
(32, 22, 34, 1),
(33, 22, 35, 1),
(34, 22, 36, 1),
(35, 22, 37, 1),
(36, 22, 38, 1),
(37, 22, 39, 1),
(38, 22, 40, 1),
(39, 22, 41, 1),
(40, 22, 42, 1),
(41, 22, 43, 1),
(42, 22, 44, 1),
(43, 22, 45, 1),
(44, 22, 46, 1),
(45, 22, 47, 1),
(46, 22, 48, 1),
(47, 17, 49, 1),
(48, 17, 50, 1),
(49, 17, 51, 1),
(50, 17, 52, 1),
(51, 17, 53, 1),
(52, 17, 54, 1),
(53, 17, 55, 1),
(54, 17, 56, 1),
(55, 17, 57, 1),
(56, 17, 58, 1),
(57, 17, 59, 1),
(58, 17, 60, 1),
(59, 17, 61, 1),
(60, 17, 62, 1),
(61, 17, 63, 1),
(62, 17, 64, 1),
(63, 17, 65, 1),
(64, 17, 66, 1),
(65, 17, 67, 1),
(66, 17, 68, 1),
(67, 17, 69, 1),
(68, 17, 70, 1),
(69, 17, 71, 1),
(70, 17, 72, 1),
(71, 17, 73, 1),
(72, 17, 74, 1),
(73, 17, 75, 1),
(74, 17, 76, 1),
(75, 19, 77, 1),
(76, 21, 78, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_komentar`
--

CREATE TABLE `el_komentar` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `tampil` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=tidak,1=tampil',
  `konten` text DEFAULT NULL,
  `tgl_posting` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `el_login`
--

CREATE TABLE `el_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(225) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL COMMENT '0=tidak,1=ya',
  `reset_kode` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_login`
--

INSERT INTO `el_login` (`id`, `username`, `password`, `siswa_id`, `pengajar_id`, `is_admin`, `reset_kode`) VALUES
(91, '5murid1@gmail.com', '8779fd433a4bbdf35442d79476edafac', 78, NULL, 0, NULL),
(90, '3siswa4@gmail.com', 'bcd724d15cde8c47650fda962968f102', 77, NULL, 0, NULL),
(15, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', NULL, 6, 1, NULL),
(16, '6siswa1@gmail.com', 'bcd724d15cde8c47650fda962968f102', 12, NULL, 0, NULL),
(17, '6siswa2@gmail.com', 'bcd724d15cde8c47650fda962968f102', 13, NULL, 0, NULL),
(18, '6siswa3@gmail.com', 'bcd724d15cde8c47650fda962968f102', 14, NULL, 0, NULL),
(19, '6siswa4@gmail.com', 'bcd724d15cde8c47650fda962968f102', 15, NULL, 0, NULL),
(20, '6siswa5@gmail.com', 'bcd724d15cde8c47650fda962968f102', 16, NULL, 0, NULL),
(21, '6siswa6@gmail.com', 'bcd724d15cde8c47650fda962968f102', 17, NULL, 0, NULL),
(22, '6siswa7@gmail.com', 'bcd724d15cde8c47650fda962968f102', 18, NULL, 0, NULL),
(23, '6siswa8@gmail.com', 'bcd724d15cde8c47650fda962968f102', 19, NULL, 0, NULL),
(24, '6siswa9@gmail.com', 'bcd724d15cde8c47650fda962968f102', 20, NULL, 0, NULL),
(25, '6siswa10@gmail.com', 'bcd724d15cde8c47650fda962968f102', 21, NULL, 0, NULL),
(26, '6siswa11@gmail.com', 'bcd724d15cde8c47650fda962968f102', 22, NULL, 0, NULL),
(27, '6siswa12@gmail.com', 'bcd724d15cde8c47650fda962968f102', 23, NULL, 0, NULL),
(28, '6siswa13@gmail.com', 'bcd724d15cde8c47650fda962968f102', 24, NULL, 0, NULL),
(29, '6siswa14@gmail.com', 'bcd724d15cde8c47650fda962968f102', 25, NULL, 0, NULL),
(30, '6siswa15@gmail.com', 'bcd724d15cde8c47650fda962968f102', 26, NULL, 0, NULL),
(31, '6siswa16@gmail.com', 'bcd724d15cde8c47650fda962968f102', 27, NULL, 0, NULL),
(32, '6siswa17@gmail.com', 'bcd724d15cde8c47650fda962968f102', 28, NULL, 0, NULL),
(33, '6siswa18@gmail.com', 'bcd724d15cde8c47650fda962968f102', 29, NULL, 0, NULL),
(34, '6siswa19@gmail.com', 'bcd724d15cde8c47650fda962968f102', 30, NULL, 0, NULL),
(35, '6siswa20@gmail.com', 'bcd724d15cde8c47650fda962968f102', 31, NULL, 0, NULL),
(36, '6siswa21@gmail.com', 'bcd724d15cde8c47650fda962968f102', 32, NULL, 0, NULL),
(37, '6siswa22@gmail.com', 'bcd724d15cde8c47650fda962968f102', 33, NULL, 0, NULL),
(38, '6siswa23@gmail.com', 'bcd724d15cde8c47650fda962968f102', 34, NULL, 0, NULL),
(39, '6siswa24@gmail.com', 'bcd724d15cde8c47650fda962968f102', 35, NULL, 0, NULL),
(40, '6siswa25@gmail.com', 'bcd724d15cde8c47650fda962968f102', 36, NULL, 0, NULL),
(41, '6siswa26@gmail.com', 'bcd724d15cde8c47650fda962968f102', 37, NULL, 0, NULL),
(42, '6siswa27@gmail.com', 'bcd724d15cde8c47650fda962968f102', 38, NULL, 0, NULL),
(43, '6siswa28@gmail.com', 'bcd724d15cde8c47650fda962968f102', 39, NULL, 0, NULL),
(44, '6siswa29@gmail.com', 'bcd724d15cde8c47650fda962968f102', 40, NULL, 0, NULL),
(45, '6siswa30@gmail.com', 'bcd724d15cde8c47650fda962968f102', 41, NULL, 0, NULL),
(46, '6siswa31@gmail.com', 'bcd724d15cde8c47650fda962968f102', 42, NULL, 0, NULL),
(47, '6siswa32@gmail.com', 'bcd724d15cde8c47650fda962968f102', 43, NULL, 0, NULL),
(48, '6siswa33@gmail.com', 'bcd724d15cde8c47650fda962968f102', 44, NULL, 0, NULL),
(49, '6siswa34@gmail.com', 'bcd724d15cde8c47650fda962968f102', 45, NULL, 0, NULL),
(50, '6siswa35@gmail.com', 'bcd724d15cde8c47650fda962968f102', 46, NULL, 0, NULL),
(51, '6siswa36@gmail.com', 'bcd724d15cde8c47650fda962968f102', 47, NULL, 0, NULL),
(52, '6siswa37@gmail.com', 'bcd724d15cde8c47650fda962968f102', 48, NULL, 0, NULL),
(53, '1siswa1@gmail.com', 'bcd724d15cde8c47650fda962968f102', 49, NULL, 0, NULL),
(54, '1siswa2@gmail.com', 'bcd724d15cde8c47650fda962968f102', 50, NULL, 0, NULL),
(55, '1siswa3@gmail.com', 'bcd724d15cde8c47650fda962968f102', 51, NULL, 0, NULL),
(56, '1siswa4@gmail.com', 'bcd724d15cde8c47650fda962968f102', 52, NULL, 0, NULL),
(57, '1siswa5@gmail.com', 'bcd724d15cde8c47650fda962968f102', 53, NULL, 0, NULL),
(58, '1siswa6@gmail.com', 'bcd724d15cde8c47650fda962968f102', 54, NULL, 0, NULL),
(59, '1siswa7@gmail.com', 'bcd724d15cde8c47650fda962968f102', 55, NULL, 0, NULL),
(60, '1siswa8@gmail.com', 'bcd724d15cde8c47650fda962968f102', 56, NULL, 0, NULL),
(61, '1siswa9@gmail.com', 'bcd724d15cde8c47650fda962968f102', 57, NULL, 0, NULL),
(62, '1siswa10@gmail.com', 'bcd724d15cde8c47650fda962968f102', 58, NULL, 0, NULL),
(63, '1siswa11@gmail.com', 'bcd724d15cde8c47650fda962968f102', 59, NULL, 0, NULL),
(64, '1siswa12@gmail.com', 'bcd724d15cde8c47650fda962968f102', 60, NULL, 0, NULL),
(65, '1siswa13@gmail.com', 'bcd724d15cde8c47650fda962968f102', 61, NULL, 0, NULL),
(66, '1siswa14@gmail.com', 'bcd724d15cde8c47650fda962968f102', 62, NULL, 0, NULL),
(67, '1siswa15@gmail.com', 'bcd724d15cde8c47650fda962968f102', 63, NULL, 0, NULL),
(68, '1siswa16@gmail.com', 'bcd724d15cde8c47650fda962968f102', 64, NULL, 0, NULL),
(69, '1siswa17@gmail.com', 'bcd724d15cde8c47650fda962968f102', 65, NULL, 0, NULL),
(70, '1siswa18@gmail.com', 'bcd724d15cde8c47650fda962968f102', 66, NULL, 0, NULL),
(71, '1siswa19@gmail.com', 'bcd724d15cde8c47650fda962968f102', 67, NULL, 0, NULL),
(72, '1siswa20@gmail.com', 'bcd724d15cde8c47650fda962968f102', 68, NULL, 0, NULL),
(73, '1siswa21@gmail.com', 'bcd724d15cde8c47650fda962968f102', 69, NULL, 0, NULL),
(74, '1siswa22@gmail.com', 'bcd724d15cde8c47650fda962968f102', 70, NULL, 0, NULL),
(75, '1siswa23@gmail.com', 'bcd724d15cde8c47650fda962968f102', 71, NULL, 0, NULL),
(76, '1siswa24@gmail.com', 'bcd724d15cde8c47650fda962968f102', 72, NULL, 0, NULL),
(77, '1siswa25@gmail.com', 'bcd724d15cde8c47650fda962968f102', 73, NULL, 0, NULL),
(78, '1siswa26@gmail.com', 'bcd724d15cde8c47650fda962968f102', 74, NULL, 0, NULL),
(79, '1siswa27@gmail.com', 'bcd724d15cde8c47650fda962968f102', 75, NULL, 0, NULL),
(80, '1siswa28@gmail.com', 'bcd724d15cde8c47650fda962968f102', 76, NULL, 0, NULL),
(81, 'pengajar1@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 7, 0, NULL),
(82, 'pengajar2@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 8, 0, NULL),
(83, 'pengajar3@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 9, 0, NULL),
(84, 'pengajar4@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 10, 0, NULL),
(85, 'pengajar5@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 11, 0, NULL),
(86, 'pengajar6@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 12, 0, NULL),
(87, 'pengajar6@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 13, 0, NULL),
(88, 'pengajar7@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 14, 0, NULL),
(89, 'pengajar8@gmail.com', '696ed7534349804cf5050ae88bc994ba', NULL, 15, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `el_login_log`
--

CREATE TABLE `el_login_log` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `lasttime` datetime NOT NULL,
  `agent` text NOT NULL,
  `last_activity` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_login_log`
--

INSERT INTO `el_login_log` (`id`, `login_id`, `lasttime`, `agent`, `last_activity`) VALUES
(1, 1, '2019-12-14 00:05:18', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576256924),
(2, 2, '2019-12-14 00:24:52', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576257844),
(3, 1, '2019-12-14 00:26:23', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576257967),
(4, 3, '2019-12-14 00:28:23', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576260424),
(5, 1, '2019-12-14 00:40:18', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576259433),
(6, 1, '2019-12-14 00:53:02', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576259641),
(7, 1, '2019-12-14 00:58:43', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576260072),
(8, 1, '2019-12-14 01:05:59', '{\"is_mobile\":0,\"browser\":\"Chrome 78.0.3904.108\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/78.0.3904.108 Safari\\/537.36\",\"ip\":\"::1\"}', 1576260409),
(9, 1, '2019-12-14 01:32:20', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576261830),
(10, 2, '2019-12-14 01:32:50', '{\"is_mobile\":0,\"browser\":\"Chrome 70.0.3538.102\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/70.0.3538.102 Safari\\/537.36 Edge\\/18.18362\",\"ip\":\"::1\"}', 1576261880),
(11, 1, '2019-12-14 01:34:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576261954),
(12, 2, '2019-12-14 01:34:52', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262031),
(13, 1, '2019-12-14 01:36:13', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262248),
(14, 1, '2019-12-14 01:40:12', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262408),
(15, 3, '2019-12-14 01:42:39', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262709),
(16, 2, '2019-12-14 01:47:27', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262792),
(17, 1, '2019-12-14 01:48:47', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576262868),
(18, 1, '2019-12-14 18:42:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576323947),
(19, 1, '2019-12-14 18:52:48', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576325407),
(20, 1, '2019-12-14 19:27:29', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326435),
(21, 2, '2019-12-14 19:29:32', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326543),
(22, 1, '2019-12-14 19:31:19', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326603),
(23, 2, '2019-12-14 19:32:22', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576326828),
(24, 1, '2019-12-14 19:36:03', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576327415),
(25, 1, '2019-12-18 03:40:38', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576615488),
(26, 1, '2019-12-18 03:53:17', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616158),
(27, 1, '2019-12-18 03:56:56', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616218),
(28, 1, '2019-12-18 03:57:45', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616267),
(29, 1, '2019-12-18 04:01:14', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576616617),
(30, 1, '2019-12-18 04:04:42', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576617133),
(31, 1, '2019-12-20 10:13:59', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.79\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.79 Safari\\/537.36\",\"ip\":\"::1\"}', 1576812841),
(32, 1, '2019-12-20 11:49:12', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576820379),
(33, 1, '2019-12-20 12:42:23', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576820456),
(34, 1, '2019-12-20 13:10:57', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823044),
(35, 5, '2019-12-20 13:26:20', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823085),
(36, 1, '2019-12-20 13:27:03', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823134),
(37, 1, '2019-12-20 13:28:29', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823243),
(38, 3, '2019-12-20 13:29:43', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823454),
(39, 5, '2019-12-20 13:33:28', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1576823972),
(40, 1, '2019-12-23 15:16:39', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577088930),
(41, 5, '2019-12-23 15:17:47', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577089249),
(42, 1, '2019-12-28 19:11:44', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577535120),
(43, 1, '2020-01-01 21:52:00', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1577890379),
(44, 1, '2020-01-03 20:04:32', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578056697),
(45, 1, '2020-01-04 01:54:09', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578077878),
(46, 1, '2020-01-04 02:08:50', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578078774),
(47, 1, '2020-01-06 10:49:53', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578282656),
(48, 1, '2020-01-06 10:52:34', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578282662),
(49, 1, '2020-01-06 10:53:34', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578282720),
(50, 4, '2020-01-06 10:54:10', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.88\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.88 Safari\\/537.36\",\"ip\":\"::1\"}', 1578283968),
(51, 1, '2020-01-19 18:54:48', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.130\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.130 Safari\\/537.36\",\"ip\":\"::1\"}', 1579434841),
(52, 1, '2020-01-19 18:56:12', '{\"is_mobile\":0,\"browser\":\"Chrome 79.0.3945.130\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/79.0.3945.130 Safari\\/537.36\",\"ip\":\"::1\"}', 1579435070),
(53, 1, '2020-02-11 21:10:32', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581430464),
(54, 1, '2020-02-11 21:16:39', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581430612),
(55, 1, '2020-02-11 21:19:05', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581430668),
(56, 3, '2020-02-11 21:20:03', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581431017),
(57, 1, '2020-02-11 21:25:48', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581431115),
(58, 5, '2020-02-11 21:27:25', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581431236),
(59, 1, '2020-02-11 21:29:49', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581431290),
(60, 1, '2020-02-11 21:30:43', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581431343),
(61, 3, '2020-02-11 21:31:12', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581432654),
(62, 1, '2020-02-11 21:53:04', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581437682),
(63, 1, '2020-02-12 20:44:05', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581515023),
(64, 3, '2020-02-12 20:46:13', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.87\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.87 Safari\\/537.36\",\"ip\":\"::1\"}', 1581515214),
(65, 3, '2020-02-12 20:57:17', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581516744),
(66, 3, '2020-02-12 21:19:10', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581517429),
(67, 3, '2020-02-12 21:26:02', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581517685),
(68, 1, '2020-02-12 21:42:13', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581518498),
(69, 1, '2020-02-12 21:46:00', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581518745),
(70, 3, '2020-02-12 21:48:00', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581520422),
(71, 1, '2020-02-12 22:15:55', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581520769),
(72, 3, '2020-02-12 22:24:57', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581524667),
(73, 3, '2020-02-12 23:25:51', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581525372),
(74, 3, '2020-02-12 23:38:26', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581525436),
(75, 3, '2020-02-12 23:39:40', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581525500),
(76, 3, '2020-02-12 23:40:30', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581525739),
(77, 1, '2020-02-12 23:44:29', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581525805),
(78, 1, '2020-02-12 23:46:22', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581525886),
(79, 2, '2020-02-12 23:47:00', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581526569),
(80, 3, '2020-02-13 15:14:08', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581582147),
(81, 1, '2020-02-13 15:24:40', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581582305),
(82, 2, '2020-02-13 15:27:17', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581582328),
(83, 3, '2020-02-13 15:27:42', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581587630),
(84, 3, '2020-02-14 06:53:02', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.100\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.100 Safari\\/537.36\",\"ip\":\"::1\"}', 1581639068),
(85, 3, '2020-02-19 17:04:54', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.106\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.106 Safari\\/537.36\",\"ip\":\"::1\"}', 1582106756),
(86, 1, '2020-03-17 21:32:29', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584455632),
(87, 5, '2020-03-17 21:36:06', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584455693),
(88, 3, '2020-03-17 21:37:03', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584456085),
(89, 5, '2020-03-17 21:43:40', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584456218),
(90, 1, '2020-03-17 21:45:50', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584456819),
(91, 1, '2020-03-18 22:12:28', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584544948),
(92, 5, '2020-03-18 22:24:40', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584634524),
(93, 1, '2020-03-20 00:41:44', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584662465),
(94, 5, '2020-03-20 10:27:10', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.132\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.132 Safari\\/537.36\",\"ip\":\"::1\"}', 1584686722),
(95, 1, '2020-03-23 20:15:13', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"::1\"}', 1584969544),
(96, 5, '2020-03-23 20:21:08', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Unknown Windows OS\",\"agent_string\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"::1\"}', 1584983830),
(97, 1, '2020-04-02 00:18:26', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"192.168.64.3\"}', 1585768800),
(98, 1, '2020-04-02 02:30:31', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"192.168.64.3\"}', 1585772472),
(99, 3, '2020-04-02 03:23:20', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"192.168.64.3\"}', 1585772840),
(100, 3, '2020-04-02 14:48:50', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1585813772),
(101, 2, '2020-04-02 14:51:41', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1585813818),
(102, 3, '2020-04-02 14:52:25', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1585820538),
(103, 3, '2020-04-02 16:42:34', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1585830681),
(104, 2, '2020-04-02 19:31:35', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.149\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.149 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1585846552),
(105, 2, '2020-04-09 23:22:46', '{\"is_mobile\":0,\"browser\":\"Chrome 80.0.3987.163\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/80.0.3987.163 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1586461954),
(106, 2, '2020-04-25 12:43:36', '{\"is_mobile\":0,\"browser\":\"Chrome 81.0.4044.122\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1587799345),
(107, 1, '2020-04-25 14:22:48', '{\"is_mobile\":0,\"browser\":\"Chrome 81.0.4044.122\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1587799268),
(108, 2, '2020-04-25 14:23:41', '{\"is_mobile\":0,\"browser\":\"Chrome 81.0.4044.122\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1587801740),
(109, 1, '2020-04-25 15:04:32', '{\"is_mobile\":0,\"browser\":\"Chrome 81.0.4044.122\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1587802159),
(110, 1, '2020-04-28 10:31:02', '{\"is_mobile\":0,\"browser\":\"Chrome 81.0.4044.122\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1588064587),
(111, 1, '2020-04-28 22:03:55', '{\"is_mobile\":0,\"browser\":\"Safari 605.1.15\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14) AppleWebKit\\/605.1.15 (KHTML, like Gecko) Version\\/12.0 Safari\\/605.1.15\",\"ip\":\"127.0.0.1\"}', 1588099308),
(112, 1, '2020-04-30 00:45:09', '{\"is_mobile\":0,\"browser\":\"Chrome 81.0.4044.122\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1588187992),
(113, 3, '2020-04-30 02:22:00', '{\"is_mobile\":0,\"browser\":\"Chrome 81.0.4044.122\",\"platform\":\"Mac OS X\",\"agent_string\":\"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/81.0.4044.122 Safari\\/537.36\",\"ip\":\"127.0.0.1\"}', 1588189086);

-- --------------------------------------------------------

--
-- Table structure for table `el_mapel`
--

CREATE TABLE `el_mapel` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `info` text DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = ya, 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_mapel`
--

INSERT INTO `el_mapel` (`id`, `nama`, `info`, `aktif`) VALUES
(11, 'Tema 1 Diriku', 'kelas 1', 1),
(12, 'Tema 2 Kegemaranku', 'kelas 1', 1),
(13, 'Tema 3 Kegiatanku', 'kelas 1', 1),
(14, 'Tema 1 Diriku', 'kelas 1', 1),
(15, 'Tema 2 Kegemaranku', 'kelas 2', 1),
(16, 'Tema 3 Kegiatanku', 'kelas 1', 1),
(17, 'Tema 4 Keluargaku', 'kelas 1', 1),
(18, 'Tema 5 Pengalamanku', 'kelas 1', 1),
(19, 'Tema 6 Lingkungan Bersih, Sehat, dan Asri', 'kelas 1', 1),
(20, 'Tema 7 Benda, Hewan dan Tanaman di Sekitarku', 'kelas 1', 1),
(21, 'Tema 8 Peristiwa Alam', 'kelas 1', 1),
(22, 'Tema 1 Selamatkan Makhluk Hidup', 'kelas 6', 1),
(23, 'Tema 2 Persatuan dan Perbedaan', 'kelas 6', 1),
(24, 'Tema 3 Tokoh dan Penemuan', 'kelas 6', 1),
(25, 'Tema 4 Globalisasi', 'kelas 6', 1),
(26, 'Tema 5 Wirausaha', 'kelas 6', 1),
(27, 'Tema 6 Menuju Masyarakat Sejahtera', 'kelas 6', 1),
(28, 'Tema 7 Kepemimpinan', 'kelas 6', 1),
(29, 'Tema 8 Bumiku', 'kelas 6', 1),
(30, 'Tema 9 Menjelajah Angkasa Luar', 'kelas 6', 1),
(32, 'Matematika', 'kelas 6', 1),
(33, 'PJOK', 'kelas 6', 1),
(34, 'PAI dan Budi Pekerti', 'seluruh kelas', 1),
(35, 'Bahasa Jawa', 'seluruh kelas', 1),
(36, 'Bahasa Inggris', 'seluruh kelas', 1),
(37, 'TIK', 'seluruh kelas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_mapel_ajar`
--

CREATE TABLE `el_mapel_ajar` (
  `id` int(11) NOT NULL,
  `hari_id` tinyint(1) NOT NULL COMMENT '1=senin,2=selasa,3=rabu,4=kamis,5=jum''at,6=sabtu,7=minggu',
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `mapel_kelas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = aktif 0 = tidak'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_mapel_ajar`
--

INSERT INTO `el_mapel_ajar` (`id`, `hari_id`, `jam_mulai`, `jam_selesai`, `pengajar_id`, `mapel_kelas_id`, `aktif`) VALUES
(1, 1, '08:00:00', '10:30:00', 2, 11, 1),
(2, 3, '11:00:00', '13:00:00', 2, 11, 1),
(3, 1, '12:33:00', '01:36:00', 3, 3, 1),
(4, 1, '14:00:00', '15:00:00', 0, 4, 1),
(5, 1, '12:50:00', '12:45:00', 0, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_mapel_kelas`
--

CREATE TABLE `el_mapel_kelas` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_mapel_kelas`
--

INSERT INTO `el_mapel_kelas` (`id`, `kelas_id`, `mapel_id`, `aktif`) VALUES
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 2, 3, 1),
(4, 2, 4, 1),
(5, 2, 5, 1),
(6, 2, 6, 1),
(7, 2, 7, 1),
(8, 2, 8, 1),
(9, 2, 9, 1),
(10, 2, 10, 1),
(11, 7, 6, 1),
(12, 1, 1, 0),
(13, 1, 2, 0),
(16, 7, 2, 1),
(17, 7, 3, 1),
(18, 7, 4, 1),
(19, 22, 22, 1),
(20, 22, 23, 1),
(21, 22, 24, 1),
(22, 22, 25, 1),
(23, 22, 26, 1),
(24, 22, 27, 1),
(25, 22, 28, 1),
(26, 22, 29, 1),
(27, 22, 30, 1),
(28, 22, 32, 1),
(29, 22, 33, 1),
(30, 22, 34, 1),
(31, 22, 35, 1),
(32, 22, 36, 1),
(33, 22, 37, 1),
(34, 17, 11, 1),
(35, 17, 12, 1),
(36, 17, 13, 1),
(37, 17, 14, 1),
(38, 17, 15, 1),
(39, 17, 16, 1),
(40, 17, 17, 1),
(41, 17, 18, 1),
(42, 17, 19, 1),
(43, 17, 20, 1),
(44, 17, 21, 1),
(45, 17, 34, 1),
(46, 17, 35, 1),
(47, 17, 36, 1),
(48, 17, 37, 0);

-- --------------------------------------------------------

--
-- Table structure for table `el_materi`
--

CREATE TABLE `el_materi` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `tgl_posting` datetime NOT NULL,
  `publish` tinyint(1) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_materi`
--

INSERT INTO `el_materi` (`id`, `mapel_id`, `pengajar_id`, `siswa_id`, `judul`, `konten`, `file`, `tgl_posting`, `publish`, `views`) VALUES
(1, 1, 2, NULL, 'skuy living', NULL, 'skuy_living_1581519810.docx', '2020-02-12 22:03:30', 1, 1),
(4, 2, 2, NULL, 'opening', 'data fill', 'catatan7.txt', '2020-05-01 06:52:13', 1, 1),
(5, 33, 6, NULL, 'Berlari', 'mohon dibaca dengan baik', 'PJOK_Lari_jarak_pendek.docx', '2020-11-16 04:04:28', 1, 1),
(6, 36, 7, NULL, 'Animals', 'look at the picture', 'panda.jpg', '2020-11-16 04:07:33', 1, 1),
(7, 12, 6, NULL, 'Tema 2 Kegemaranku', 'dibaca halaman 50-55', 'Kelas_01_SD_Tematik_2_Kegemaranku_Siswa_2017.pdf', '2020-11-18 04:23:08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_materi_kelas`
--

CREATE TABLE `el_materi_kelas` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_materi_kelas`
--

INSERT INTO `el_materi_kelas` (`id`, `materi_id`, `kelas_id`) VALUES
(1, 1, 11),
(2, 4, 2),
(3, 5, 22),
(4, 6, 22),
(5, 7, 17);

-- --------------------------------------------------------

--
-- Table structure for table `el_messages`
--

CREATE TABLE `el_messages` (
  `id` int(11) NOT NULL,
  `type_id` tinyint(1) NOT NULL COMMENT '1=inbox,2=outbox',
  `content` text NOT NULL,
  `owner_id` int(11) NOT NULL,
  `sender_receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=belum,1=sudah'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_messages`
--

INSERT INTO `el_messages` (`id`, `type_id`, `content`, `owner_id`, `sender_receiver_id`, `date`, `opened`) VALUES
(1, 2, '<p>saya sangat senang belajar e-learning</p>\r\n', 2, 1, '2019-12-14 19:30:49', 1),
(8, 1, '<p>cgcgcgcgcg</p>\r\n', 5, 1, '2020-01-04 02:11:39', 1),
(5, 2, '<p>ok bos&nbsp;</p>\r\n', 2, 1, '2019-12-14 19:32:37', 1),
(16, 1, 'opo le', 3, 2, '2020-04-02 19:30:44', 0),
(20, 1, 'Nuhun euy!', 1, 2, '2020-04-29 19:43:15', 0),
(23, 1, 'Maap bu tugas bu\r\ntugasnya belum paham', 17, 81, '2020-11-17 13:02:10', 0),
(24, 1, 'jangan lupa absen yaa', 15, 16, '2020-11-17 07:04:13', 0),
(25, 1, 'yang kelas 3 semua siswa segera mengumpulkan foto', 15, 90, '2020-11-17 16:11:56', 0),
(26, 1, 'Segera mengerjakan tugas', 81, 16, '2020-11-17 16:18:49', 0),
(27, 1, 'Jangan lupa membawa buku Bahasa Inggris', 15, 91, '2020-11-18 04:18:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `el_nilai_tugas`
--

CREATE TABLE `el_nilai_tugas` (
  `id` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_nilai_tugas`
--

INSERT INTO `el_nilai_tugas` (`id`, `nilai`, `tugas_id`, `siswa_id`) VALUES
(2, 100, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `el_pengajar`
--

CREATE TABLE `el_pengajar` (
  `id` int(11) NOT NULL,
  `nip` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL COMMENT '0=pending, 1=aktif, 2=blok',
  `id_mapel` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_pengajar`
--

INSERT INTO `el_pengajar` (`id`, `nip`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`, `foto`, `status_id`, `id_mapel`) VALUES
(6, '18510001', 'Vita', 'Perempuan', 'Malang', '0000-00-00', 'Jl. MT. Haryono VIIIB/1051 Dinoyo', NULL, 1, '12'),
(7, '9843 7616 6230 0082', 'INNUR EFFIANA', 'Perempuan', 'TULUNGAGUNG', NULL, 'JL. Joyo Suko Blok A/27 Merjosari', NULL, 1, '36'),
(8, '19610928 198303 2 012', 'ISTIROHAH', 'Perempuan', 'MALANG', NULL, 'JL.Joyo Mulyo I/384', NULL, 1, NULL),
(9, '19680604 199304 2 001', 'NURUL LESTARI', 'Perempuan', 'BLITAR', NULL, 'Perum Joyo Grand G1 / 3', NULL, 1, NULL),
(10, '19750810 200501 2 003', 'NIKEN SUMARWATI', 'Perempuan', 'TRENGGALEK', NULL, 'JL. Sunan Kalijaga Dalam A/15', NULL, 1, NULL),
(11, '19611003 198504 1 003', 'SURATNO', 'Perempuan', 'MADIUN', NULL, 'JL. Simpang K.H Yusuf Kav.3', NULL, 1, NULL),
(12, '19650824 199308 2 002', 'WIDAYATI', 'Perempuan', 'MALANG', NULL, 'JL. Tlogo Indah IV/65  Tlogomas', NULL, 1, NULL),
(13, '19701222 199807 1 001', 'JONI LUFIJANTO', 'Laki-laki', 'MALANG', NULL, 'JL. Joyo Suko No.61 A', NULL, 1, NULL),
(14, '19630910 200801 2 002', 'FITRI SUSIANI', 'Perempuan', 'BLITAR', NULL, 'JL.Terminal Gadang IV/27 Sukun', NULL, 1, NULL),
(15, '19870322 201309 2 001', 'EKA NURWAHYUNITA', 'Perempuan', 'BLITAR', NULL, 'Jl. Tirto Utomo Gg. IV/ 42 C Landungsari', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `el_pengaturan`
--

CREATE TABLE `el_pengaturan` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_pengaturan`
--

INSERT INTO `el_pengaturan` (`id`, `nama`, `value`) VALUES
('email-server', 'Email server', 'dicky@domain.com'),
('email-template-approve-pengajar', 'Approve pengajar (email pengajar)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai pengajar pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-approve-siswa', 'Approve siswa (email siswa)', '{\"subject\":\"Pengaktifan Akun\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Anda telah diterima sebagai siswa pada {$nama_sekolah}, berikut informasi data diri anda:<\\/p>\\n<p>{$tabel_profil}<\\/p>\\n<p>Anda dapat login ke sistem E-Learning menggunakan username dan password yang telah anda buat saat pendaftaran, login pada url berikut : {$url_login}<\\/p>\"}'),
('email-template-link-reset', 'Link Reset Password', '{\"subject\":\"Reset Password\",\"body\":\"<p>Hai,<\\/p>\\n<p>Anda mengirimkan permintaan untuk reset password anda, klik link berikut untuk memulai reset password : {$link_reset}<\\/p>\"}'),
('email-template-register-pengajar', 'Register pengajar (email pengajar)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai pengajar di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('email-template-register-siswa', 'Register siswa (email siswa)', '{\"subject\":\"Registrasi Berhasil\",\"body\":\"<p>Hai {$nama},<\\/p>\\n<p>Terimakasih telah melakukan pendaftaran sebagai siswa di E-Learning {$nama_sekolah}. Akun anda akan segera diaktifkan oleh admin.<\\/p>\"}'),
('info-registrasi', 'Info Registrasi', '<p>Silakan mendaftar sebagai siswa atau pengajar (jika anda sebagai pengajar) dengan memilih sesuai tab berikut :</p>\r\n'),
('peraturan-elearning', 'Peraturan E-learning', ''),
('registrasi-pengajar', 'Registrasi Pengajar', '1'),
('registrasi-siswa', 'Registrasi Siswa', '1'),
('versi', 'Versi', '2.0'),
('jenjang', 'jenjang', 'SMA'),
('nama-sekolah', 'nama-sekolah', 'SMA SINT CAROLUS BENGKULU'),
('alamat', 'alamat', 'Jalan Kapuas Raya no.22'),
('telp', 'telp', '081367783246'),
('install-success', 'install-success', '1'),
('status-registrasi-siswa', 'status-registrasi-siswa', '0'),
('status-registrasi-pengajar', 'status-registrasi-pengajar', '0'),
('smtp-host', 'smtp-host', ''),
('smtp-username', 'smtp-username', ''),
('smtp-pass', 'smtp-pass', ''),
('smtp-port', 'smtp-port', ''),
('edit-username-siswa', 'edit-username-siswa', '1'),
('edit-foto-siswa', 'edit-foto-siswa', '1'),
('info-slide-1', 'info-slide-1', ''),
('info-slide-2', 'info-slide-2', ''),
('info-slide-3', 'info-slide-3', ''),
('info-slide-4', 'info-slide-4', ''),
('logo-sekolah', 'logo-sekolah', 'logo-sekolah.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `el_pengumuman`
--

CREATE TABLE `el_pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `tgl_tampil` date NOT NULL,
  `tgl_tutup` date NOT NULL,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 1,
  `tampil_pengajar` tinyint(1) NOT NULL DEFAULT 1,
  `pengajar_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_pengumuman`
--

INSERT INTO `el_pengumuman` (`id`, `judul`, `konten`, `tgl_tampil`, `tgl_tutup`, `tampil_siswa`, `tampil_pengajar`, `pengajar_id`) VALUES
(4, 'Tugas Kelompok', 'carilah 4 kelompok untuk mengerjakan tugas kelompok yang ada di buku Tematik', '2020-11-17', '2020-11-17', 1, 0, 6),
(2, 'Lomba Online Dai Cilik', 'Jangan Lupa daftarkan diri yaa', '2020-11-16', '2020-11-16', 1, 1, 6),
(3, 'Penilaian harian', 'besok jangan lupa untuk mempersiapkan PH', '2020-11-16', '2020-11-16', 1, 0, 6),
(5, 'Belajar Menghitung', 'diwajibkan untuk kelas 1 membawa buku untuk belajar menghitung', '2020-11-18', '2020-11-18', 1, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `el_pilihan`
--

CREATE TABLE `el_pilihan` (
  `id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `konten` text NOT NULL,
  `kunci` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=tidak',
  `urutan` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_pilihan`
--

INSERT INTO `el_pilihan` (`id`, `pertanyaan_id`, `konten`, `kunci`, `urutan`, `aktif`) VALUES
(1, 1, '<p>otot</p>\r\n', 1, 1, 1),
(2, 1, '<p>rangka</p>\r\n', 0, 2, 1),
(3, 1, '<p>saraf</p>\r\n', 0, 3, 1),
(4, 1, '<p>pencernaan</p>\r\n', 0, 4, 1),
(5, 1, '<p>anjai</p>\r\n', 0, 5, 0),
(6, 2, '<p>rangka</p>\r\n', 0, 4, 1),
(7, 2, '<p>otot</p>\r\n', 1, 1, 1),
(8, 2, '<p>saraf</p>\r\n', 0, 2, 1),
(9, 2, '<p>pencernaan</p>\r\n', 0, 3, 1),
(10, 3, '<p>sapanich</p>\n', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_siswa`
--

CREATE TABLE `el_siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(45) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(9) NOT NULL COMMENT 'Laki-laki dan Perempuan',
  `tempat_lahir` varchar(45) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` char(7) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `foto` text DEFAULT NULL,
  `status_id` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=aktif, 2=blok, 3=alumni, 4=deleted'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_siswa`
--

INSERT INTO `el_siswa` (`id`, `nis`, `nama`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `tahun_masuk`, `foto`, `status_id`) VALUES
(78, '001234567', 'Noviya', 'Perempuan', 'Jakarta', '2004-09-15', 'ISLAM', 'Jl. Gajayana', 2015, NULL, 1),
(77, '009876549', 'maya agem', 'Perempuan', 'Malang', '2002-12-09', 'ISLAM', 'Jl. Joyo Tambaksari 90', 2016, NULL, 1),
(12, '0087817052', 'ACHMAD JULIANSYAH AMIR RAHMATULLAH', 'Laki-laki', 'MALANG', '2008-07-02', 'ISLAM', 'JL. JOYO MULYO NO. 316', 2014, NULL, 1),
(13, '0083588410', 'ATHA ANIF FAIZAH', 'Perempuan', 'MALANG', '2008-07-27', 'ISLAM', 'JL. TIRTO AGUNG 63', 2014, NULL, 1),
(14, '0088992377', 'DAFINA MARVELYAN KHENZA', 'Perempuan', 'MALANG', '2008-06-11', 'ISLAM', 'PERUM VILLA BUKIT TIDAR A1/ 158', 2014, NULL, 1),
(15, '0082208242', 'DALILAH SAFA AGUILA RAMADHANI', 'Perempuan', 'MALANG', '2008-09-01', 'ISLAM', 'JL. JOYO RAHARJO IV/ 216 B', 2014, NULL, 1),
(16, '0082365709', 'DANANG PRIAMBODO', 'Laki-laki', 'MALANG', '2008-12-20', 'ISLAM', 'JL. JOYO RAHARJO NO. 276', 2014, NULL, 1),
(17, '0086479335', 'DI QORINAH ISTIFADAH AQILAH', 'Perempuan', 'MALANG', '2008-04-22', 'ISLAM', 'JL. JOYO UTOMO Gg. II No. 26 A', 2014, NULL, 1),
(18, '0094716939', 'GALANG HADI ZANUARTA', 'Laki-laki', 'MALANG', '2009-01-25', 'ISLAM', 'JL. JOYO PRANOTO 601 F', 2014, NULL, 1),
(19, '0095905814', 'GILANG PUTRA RAHMADANU', 'Laki-laki', 'MALANG', '2009-04-11', 'ISLAM', 'Jl. Joyo Suko No. 42', 2014, NULL, 1),
(20, '0081867883', 'IRHAM MAULANA NURFIRANSYAH', 'Laki-laki', 'MALANG', '2008-05-21', 'ISLAM', 'Jl. Joyo Suko No. 20 A', 2014, NULL, 1),
(21, '0087833582', 'MOCH ASYRAFI SUNU', 'Laki-laki', 'MALANG', '2008-04-25', 'ISLAM', 'Jl. Joyo Pranoto 674', 2014, NULL, 1),
(22, '0094996494', 'MOCH. HAFIZH RAMADHAN', 'Laki-laki', 'MALANG', '2009-09-02', 'ISLAM', 'Jl. Joyo Utomo Gg. I/1', 2014, NULL, 1),
(23, '0089861806', 'MOCHAMAD NAZARUDIN MALIK', 'Laki-laki', 'MALANG', '2008-11-19', 'ISLAM', 'JL. Joyo Utomo Gg. I/1', 2014, NULL, 1),
(24, '0085882556', 'MUHAMMAD ANGGA RAFIANSYAH', 'Laki-laki', 'MALANG', '2008-08-27', 'ISLAM', 'Jl. Joyo Pranoto No.601 H', 2014, NULL, 1),
(25, '0091938997', 'MUHAMMAD HILMI PALUPI', 'Laki-laki', 'MALANG', '2009-02-09', 'ISLAM', 'Jl. Joyo Utomo Gg. V Blok G/ 11', 2014, NULL, 1),
(26, '0097228080', 'NAIA GARINI ANINDYA SUBEKTI', 'Perempuan', 'MALANG', '2009-10-20', 'ISLAM', 'JL. JOYO UTOMO Gg. V Blok F/ 11 B', 2014, NULL, 1),
(27, '0085348222', 'NASWA AZKYA AURELLA', 'Perempuan', 'MALANG', '2008-08-01', 'ISLAM', 'Jl. Joyo Sari 26', 2014, NULL, 1),
(28, '0098444801', 'NEISYA AYU AVRILIA PUTRI', 'Perempuan', 'MALANG', '2009-04-28', 'ISLAM', 'JL. Joyo Tambaksari No. 01', 2014, NULL, 1),
(29, '0081728060', 'NESYA TARISTANIA AYUQI', 'Perempuan', 'BATU', '2008-06-25', 'ISLAM', 'JL. Joyo Pranoto 601 B', 2014, NULL, 1),
(30, '0089994234', 'NOVAN AKBAR AMINULLAH', 'Laki-laki', 'MALANG', '2008-12-18', 'ISLAM', 'JL. Mertojoyo Selatan Blok C/ 15', 2014, NULL, 1),
(31, '0094086025', 'RAIHAN FADHILAH SAJID', 'Laki-laki', 'MALANG', '2009-01-19', 'ISLAM', 'Jl. Joyo Utomo A 518', 2014, NULL, 1),
(32, '0089987546', 'RAKHA RADITYA AJI', 'Laki-laki', 'MALANG', '2008-10-05', 'ISLAM', 'Jl. Joyo Mulyo No. 335', 2014, NULL, 1),
(33, '0082433201', 'RANGGA AHMAD FAQIH', 'Laki-laki', 'MALANG', '2008-07-18', 'ISLAM', 'Jl. Joyo Raharjo IX/1-B No. 8', 2014, NULL, 1),
(34, '0089490818', 'RIZKY MAULIDAN SAPUTRA', 'Laki-laki', 'MALANG', '2008-04-01', 'ISLAM', 'Jl. Joyo Suko 53 B', 2014, NULL, 1),
(35, '0083526867', 'SALSABILLA NUR SAFITRI', 'Perempuan', 'MALANG', '2008-08-30', 'ISLAM', 'Jl. Tlogo Sari No. 37', 2014, NULL, 1),
(36, '0089647314', 'SARAH AZZAHRA', 'Perempuan', 'MALANG', '2008-08-20', 'ISLAM', 'Jl. Tlogo Suryo Gg. V/ 27 B', 2014, NULL, 1),
(37, '0083082624', 'SATRIA BINTANG SAGITA HERIKA PRATAMA', 'Laki-laki', 'MALANG', '2008-12-12', 'ISLAM', 'Jl. Joyo Mulyo No. 358', 2014, NULL, 1),
(38, '0083237407', 'SATRIA RIVIAN ABDILLAH', 'Laki-laki', 'MALANG', '2008-08-10', 'ISLAM', 'JL. Joyo Utomo No. 46', 2014, NULL, 1),
(39, '0084922262', 'SHAFIRA AULIA PRABOWO', 'Perempuan', 'MALANG', '2008-08-29', 'ISLAM', 'Jl. Joyo Sari No. 16', 2014, NULL, 1),
(40, '0099689785', 'SIVA HYANG PARAMUDITA', 'Perempuan', 'MALANG', '2009-04-02', 'ISLAM', 'Jl. Joyo Utomo II/ 436', 2014, NULL, 1),
(41, '0081702776', 'SOLIKHA ALFINA ROSVANISA', 'Perempuan', 'MALANG', '2008-07-16', 'ISLAM', 'Jl. Joyo Utomo VIII/ 29', 2014, NULL, 1),
(42, '0083641981', 'SURYA ALAM', 'Laki-laki', 'PEKALONGAN', '2008-11-28', 'ISLAM', 'Jl. Mertojoyo Blok M/ 1', 2014, NULL, 1),
(43, '0083201701', 'TIARA BUNGA OKTAVIA', 'Perempuan', 'MALANG', '2008-10-15', 'ISLAM', 'Jl. Joyo Suko Metro No. 41 H', 2014, NULL, 1),
(44, '0084565080', 'TIYAS VADHILAH RAMADHANI', 'Perempuan', 'MALANG', '2008-09-12', 'ISLAM', 'Jl. Joyo sari 33', 2014, NULL, 1),
(45, '0082556431', 'UMY KHORY KAESTY', 'Perempuan', 'MALANG', '2008-10-04', 'ISLAM', 'JL. Joyo Tambaksari 38 A', 2014, NULL, 1),
(46, '0098235943', 'VANYA VIRGINIRA CRUSTY PUTRI', 'Perempuan', 'MALANG', '2009-03-05', 'ISLAM', 'Jl. Joyo Taman Rejo 62', 2014, NULL, 1),
(47, '0095843243', 'YASMIN ANJANI RATU BALQIS', 'Perempuan', 'MALANG', '2010-03-22', 'ISLAM', 'Jl. Mertojoyo Selatan Blok B/17', 2014, NULL, 1),
(48, '0082373094', 'ZAHRA LAILATUSSHOLIHAH', 'Perempuan', 'MALANG', '2008-12-28', 'ISLAM', 'Jl. Tlogosari 645', 2014, NULL, 1),
(49, '0131332596', 'Abbad Naylun Nabhan Laksana', 'Laki-laki', 'MALANG', '2013-10-09', 'ISLAM', 'Jl.Tlogo Suryo no.7 ', 2019, NULL, 0),
(50, '0000000000', 'AHMAD AQHAR JAMALUL KATSIR', 'Laki-laki', 'MALANG', '2013-04-08', 'ISLAM', 'Perum Bukit Cemara Tidar C5/26', 2019, NULL, 0),
(51, '0139880649', 'AHMAD DANIEL ANDRIAS SAPUTRA', 'Laki-laki', 'MALANG', '2013-08-29', 'ISLAM', 'JLTLOGOSARI 285', 2019, NULL, 0),
(52, '0131454242', 'ALISHA KHAIRA WILDAN SAPUTRO', 'Perempuan', 'MALANG', '2013-10-14', 'ISLAM', 'JL KOMPLEK UNIGA 53', 2019, NULL, 0),
(53, '0136968129', 'AMIRA ASKANA SAKY', 'Perempuan', 'MALANG', '2013-08-31', 'ISLAM', 'JL. JOYO SARI NO. 56', 2019, NULL, 0),
(54, '0149879689', 'ANINDHITA BILQIS AZAHRA', 'Perempuan', 'MALANG', '2014-03-26', 'ISLAM', 'JL. JOYO TAMBAKSARI 36', 2019, NULL, 0),
(55, '0135596672', 'Aqila Wikko Adelia', 'Perempuan', 'MALANG', '2013-11-15', 'ISLAM', 'Jl. Joyo Suko 38 A', 2019, NULL, 0),
(56, '0131066096', 'Aulia Oktafianda', 'Perempuan', 'MALANG', '2013-10-10', 'ISLAM', 'Jl. Joyosuko 42', 2019, NULL, 0),
(57, '0131571212', 'FAREZA AUFAR MARENDRA', 'Laki-laki', 'MALANG', '2013-03-05', 'ISLAM', 'JL. JOYO RAHARJO I-A/224', 2019, NULL, 0),
(58, '0137114806', 'Firdiana Az Zarin Qotrunnada', 'Perempuan', 'MALANG', '2013-04-25', 'ISLAM', 'Jl. Joyo Utomo IX/A1-5 Puri Nirwana Mertojoyo', 2019, NULL, 0),
(59, '0132839565', 'FITRI KHUMAIRAH AZ ZAHRA', 'Perempuan', 'MALANG', '2013-01-27', 'ISLAM', 'JL. JOYO UTOMO V BLOK F', 2019, NULL, 0),
(60, '0134881920', 'Gaby Octaviana', 'Perempuan', 'MALANG', '2013-10-28', 'ISLAM', 'Joyosuko 41-i', 2019, NULL, 0),
(61, '0133952680', 'Hana Mogajatra', 'Perempuan', 'MALANG', '2013-03-29', 'ISLAM', 'Perum Vila Bukit Tidar A4-528', 2019, NULL, 0),
(62, '0131341210', 'HARIS AKBAR AL FAUZI', 'Laki-laki', 'MALANG', '2013-10-05', 'ISLAM', 'JL JOYO SURYO 624 B', 2019, NULL, 0),
(63, '0137136246', 'MF.RIZVAN KHALFANI', 'Laki-laki', 'PROBOLINGGO', '2013-05-19', 'ISLAM', 'PERUM VILLA BUKIT TIDAR A-1 /157', 2019, NULL, 0),
(64, '0138054427', 'MF.ZHAFIF KHALFANI', 'Laki-laki', 'PROBOLINGGO', '0000-00-00', 'ISLAM', 'PERUM VILLA BUKIT TIDAR A-1 /157', 2019, NULL, 0),
(65, '0142512928', 'MUCHAMMAD FAIZ ILMAWAN', 'Laki-laki', 'MALANG', '2014-01-17', 'ISLAM', 'JL.JOYO TAMBAKSARI 26', 2019, NULL, 0),
(66, '0147856096', 'MUHAMAD HAFIDZ NURHABIBI', 'Laki-laki', 'MALANG', '2014-01-24', 'ISLAM', 'JL JOYO UTOMO', 2019, NULL, 0),
(67, '000000000000', 'MUHAMMAD ALTAF AL \'AZZAM', 'Laki-laki', 'MALANG', '2013-03-25', 'ISLAM', 'Perum Villa Bukit Tidar A1-173', 2019, NULL, 0),
(68, '0135638856', 'NAWANG WULAN', 'Perempuan', 'MALANG', '2013-11-28', 'ISLAM', 'JL. Joyo suko 45', 2019, NULL, 0),
(69, '0139498678', 'NIZAM RIZKY RACHMANSHA', 'Laki-laki', 'MALANG', '2013-09-08', 'ISLAM', 'JL. JOYO UTOMO', 2019, NULL, 0),
(70, '0138745340', 'PRISSA ALFATHIN MASAYU', 'Perempuan', 'MALANG', '2013-08-21', 'ISLAM', 'JL. JOYO SUKO 28', 2019, NULL, 0),
(71, '0138001796', 'Queena Shakiya Dini Tsurayya', 'Perempuan', 'MALANG', '2013-03-01', 'ISLAM', 'Jl. Joyo Utomo 46', 2019, NULL, 0),
(72, '0134913382', 'RAISA BERLIAN DWI PUTRANTI', 'Perempuan', 'MALANG', '2013-02-16', 'ISLAM', 'JL. Joyo Suko No.44', 2019, NULL, 0),
(73, '3138087499', 'RHEA RADITYA AJI', 'Perempuan', 'MALANG', '2013-07-26', 'ISLAM', 'Jl. Joyo Mulyo 335', 2019, NULL, 0),
(74, '0137058613', 'ROSLIA RISKI KANIA ZILFI', 'Perempuan', 'MALANG', '2013-07-02', 'ISLAM', 'JL JOYO SURYO 633 A', 2019, NULL, 0),
(75, '0145832913', 'Salsabil Hauraa Putri', 'Perempuan', 'MALANG', '2014-06-13', 'ISLAM', 'Jl. Joyo Tambaksari no. 6', 2019, NULL, 0),
(76, '0131249878', 'Samara Citra Anindiya', 'Perempuan', 'MALANG', '2013-03-27', 'ISLAM', 'Jl. Joyo Utomo 35', 2019, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `el_soal`
--

CREATE TABLE `el_soal` (
  `id_soal` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `pg_a` text DEFAULT NULL,
  `pg_b` text DEFAULT NULL,
  `pg_c` text DEFAULT NULL,
  `jawaban_pg` varchar(32) DEFAULT NULL,
  `tipe` int(11) NOT NULL COMMENT '1=pg,2=essay',
  `pengajar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `el_soal`
--

INSERT INTO `el_soal` (`id_soal`, `pertanyaan`, `pg_a`, `pg_b`, `pg_c`, `jawaban_pg`, `tipe`, `pengajar_id`) VALUES
(1, '1+1=0 ?', 'A.Ya', 'B.Tidak', 'C.Pertanyaan macam apa ini', 'C', 1, 2),
(3, 'Jelaskan menurut anda bumi bulat atau datar?', NULL, NULL, NULL, NULL, 2, 2),
(5, 'aasdasd', 'A.a', 'B.d', 'C.s', 'C', 1, 2),
(6, 'dasdasdasd??', NULL, NULL, NULL, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `el_tugas`
--

CREATE TABLE `el_tugas` (
  `id` int(11) NOT NULL,
  `mapel_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `info` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `tgl_buat` datetime DEFAULT NULL,
  `durasi` datetime DEFAULT NULL COMMENT 'lama pengerjaan dalam menit',
  `aktif` tinyint(1) NOT NULL DEFAULT 0,
  `tampil_siswa` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=tidak tampil di siswa, 1=tampil siswa'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_tugas`
--

INSERT INTO `el_tugas` (`id`, `mapel_id`, `pengajar_id`, `judul`, `info`, `file`, `tgl_buat`, `durasi`, `aktif`, `tampil_siswa`) VALUES
(4, 2, 2, 'Tugas WFH', 'COBA kerjakan selama korona', 'catatan9.txt', '2020-05-01 09:39:19', '2020-05-14 13:00:00', 1, 1),
(5, 2, 2, 'tugas wfh', 'kerjain sampai korona', 'catatan10.txt', '2020-05-01 09:48:50', '2020-05-04 07:48:00', 1, 1),
(6, 11, 6, 'Membaca Buku Tema', 'Setelah dibaca jangan lupa dirangkum yaa, dibaca halaman 60-65', 'DAFTAR_NILAI_PJOK.xlsx', '2020-11-17 16:12:20', '2020-11-18 08:15:00', 1, 1),
(7, 37, 7, 'TIK', 'Penilaian Harian sekolah \r\njangan lupa belajar', 'JUARA-1-PA.jpg', '2020-11-17 16:20:28', '2020-11-18 07:00:00', 1, 1),
(8, 12, 6, 'Tema 2 Kegemaranku', 'Dipahami untuk halaman 50-55', 'Kelas_01_SD_Tematik_2_Kegemaranku_Siswa_2017.pdf', '2020-11-18 04:19:27', '2020-11-19 10:19:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_tugas_kelas`
--

CREATE TABLE `el_tugas_kelas` (
  `id` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_tugas_kelas`
--

INSERT INTO `el_tugas_kelas` (`id`, `tugas_id`, `kelas_id`) VALUES
(5, 5, 7),
(4, 4, 2),
(6, 6, 17),
(7, 7, 22),
(8, 8, 17);

-- --------------------------------------------------------

--
-- Table structure for table `el_tugas_kumpul`
--

CREATE TABLE `el_tugas_kumpul` (
  `id` int(11) NOT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `tugas_id` int(11) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `nilai` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `el_tugas_kumpul`
--

INSERT INTO `el_tugas_kumpul` (`id`, `kelas_id`, `siswa_id`, `tugas_id`, `file`, `nilai`) VALUES
(2, 7, 2, 5, 'catatan12.txt', '22');

-- --------------------------------------------------------

--
-- Table structure for table `el_tugas_pertanyaan`
--

CREATE TABLE `el_tugas_pertanyaan` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `urutan` int(11) NOT NULL,
  `tugas_id` int(11) NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `el_tugas_pertanyaan`
--

INSERT INTO `el_tugas_pertanyaan` (`id`, `pertanyaan`, `urutan`, `tugas_id`, `aktif`) VALUES
(1, '<p>sistem tubuh yang berfungsi sebagai penyangga, pemberi bentuk tubuh, dan alat gerak pasif adalah &hellip;</p>\r\n', 1, 1, 1),
(2, '<p>sistem tubuh yang berfungsi sebagai penyangga, pemberi bentuk tubuh, dan alat gerak pasif adalah &hellip;</p>\r\n', 1, 2, 1),
(3, '<p>Siapa nama Bapak Saya?</p>\n', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `el_ujian`
--

CREATE TABLE `el_ujian` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `tgl_dibuat` date NOT NULL,
  `tgl_expired` date NOT NULL,
  `waktu` int(11) NOT NULL,
  `mapel_kelas_id` int(11) NOT NULL,
  `pengajar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `el_ujian`
--

INSERT INTO `el_ujian` (`id`, `judul`, `tgl_dibuat`, `tgl_expired`, `waktu`, `mapel_kelas_id`, `pengajar_id`) VALUES
(1, 'Testingg', '2020-04-30', '2020-05-02', 30, 11, 2),
(2, 'coba lagi dong', '2020-04-29', '2020-05-02', 20, 3, 2),
(3, 'asdasdasd', '2020-05-01', '2020-05-04', 10, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `el_ujian_soal`
--

CREATE TABLE `el_ujian_soal` (
  `id_ujian_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `aktif` int(11) NOT NULL COMMENT '1=aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `el_ujian_soal`
--

INSERT INTO `el_ujian_soal` (`id_ujian_soal`, `id_ujian`, `id_soal`, `aktif`) VALUES
(1, 2, 1, 1),
(2, 2, 3, 0),
(3, 1, 1, 1),
(5, 1, 3, 1),
(6, 3, 1, 1),
(7, 3, 3, 1),
(8, 3, 5, 1),
(9, 3, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `el_absen`
--
ALTER TABLE `el_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_absen_siswa`
--
ALTER TABLE `el_absen_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_field_tambahan`
--
ALTER TABLE `el_field_tambahan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_jawaban`
--
ALTER TABLE `el_jawaban`
  ADD PRIMARY KEY (`id_jawaban`);

--
-- Indexes for table `el_kelas`
--
ALTER TABLE `el_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `parent_id_2` (`parent_id`);

--
-- Indexes for table `el_kelas_siswa`
--
ALTER TABLE `el_kelas_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`siswa_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`siswa_id`);

--
-- Indexes for table `el_komentar`
--
ALTER TABLE `el_komentar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`,`materi_id`),
  ADD KEY `login_id_2` (`login_id`,`materi_id`),
  ADD KEY `login_id_3` (`login_id`,`materi_id`);

--
-- Indexes for table `el_login`
--
ALTER TABLE `el_login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`siswa_id`,`pengajar_id`),
  ADD KEY `username_2` (`username`,`siswa_id`,`pengajar_id`);

--
-- Indexes for table `el_login_log`
--
ALTER TABLE `el_login_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `login_id_2` (`login_id`),
  ADD KEY `login_id_3` (`login_id`);

--
-- Indexes for table `el_mapel`
--
ALTER TABLE `el_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_mapel_ajar`
--
ALTER TABLE `el_mapel_ajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hari_id` (`hari_id`,`pengajar_id`,`mapel_kelas_id`),
  ADD KEY `hari_id_2` (`hari_id`,`pengajar_id`,`mapel_kelas_id`);

--
-- Indexes for table `el_mapel_kelas`
--
ALTER TABLE `el_mapel_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id` (`kelas_id`,`mapel_id`),
  ADD KEY `kelas_id_2` (`kelas_id`,`mapel_id`);

--
-- Indexes for table `el_materi`
--
ALTER TABLE `el_materi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`,`siswa_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`,`siswa_id`);

--
-- Indexes for table `el_materi_kelas`
--
ALTER TABLE `el_materi_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`,`kelas_id`),
  ADD KEY `materi_id_2` (`materi_id`,`kelas_id`);

--
-- Indexes for table `el_messages`
--
ALTER TABLE `el_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`,`owner_id`,`sender_receiver_id`),
  ADD KEY `type_id_2` (`type_id`,`owner_id`,`sender_receiver_id`);

--
-- Indexes for table `el_nilai_tugas`
--
ALTER TABLE `el_nilai_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`siswa_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`siswa_id`);

--
-- Indexes for table `el_pengajar`
--
ALTER TABLE `el_pengajar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nip` (`nip`),
  ADD KEY `nip_2` (`nip`);

--
-- Indexes for table `el_pengaturan`
--
ALTER TABLE `el_pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_pengumuman`
--
ALTER TABLE `el_pengumuman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengajar_id` (`pengajar_id`),
  ADD KEY `pengajar_id_2` (`pengajar_id`),
  ADD KEY `pengajar_id_3` (`pengajar_id`);

--
-- Indexes for table `el_pilihan`
--
ALTER TABLE `el_pilihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pertanyaan_id` (`pertanyaan_id`),
  ADD KEY `pertanyaan_id_2` (`pertanyaan_id`,`kunci`);

--
-- Indexes for table `el_siswa`
--
ALTER TABLE `el_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nis` (`nis`,`nama`,`status_id`),
  ADD KEY `nis_2` (`nis`,`nama`,`status_id`);

--
-- Indexes for table `el_soal`
--
ALTER TABLE `el_soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `el_tugas`
--
ALTER TABLE `el_tugas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mapel_id` (`mapel_id`,`pengajar_id`),
  ADD KEY `mapel_id_2` (`mapel_id`,`pengajar_id`);

--
-- Indexes for table `el_tugas_kelas`
--
ALTER TABLE `el_tugas_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`,`kelas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`,`kelas_id`);

--
-- Indexes for table `el_tugas_kumpul`
--
ALTER TABLE `el_tugas_kumpul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_tugas_pertanyaan`
--
ALTER TABLE `el_tugas_pertanyaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tugas_id` (`tugas_id`),
  ADD KEY `tugas_id_2` (`tugas_id`);

--
-- Indexes for table `el_ujian`
--
ALTER TABLE `el_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `el_ujian_soal`
--
ALTER TABLE `el_ujian_soal`
  ADD PRIMARY KEY (`id_ujian_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `el_absen`
--
ALTER TABLE `el_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `el_absen_siswa`
--
ALTER TABLE `el_absen_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `el_jawaban`
--
ALTER TABLE `el_jawaban`
  MODIFY `id_jawaban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `el_kelas`
--
ALTER TABLE `el_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `el_kelas_siswa`
--
ALTER TABLE `el_kelas_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `el_komentar`
--
ALTER TABLE `el_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `el_login`
--
ALTER TABLE `el_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `el_login_log`
--
ALTER TABLE `el_login_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `el_mapel`
--
ALTER TABLE `el_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `el_mapel_ajar`
--
ALTER TABLE `el_mapel_ajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `el_mapel_kelas`
--
ALTER TABLE `el_mapel_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `el_materi`
--
ALTER TABLE `el_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `el_materi_kelas`
--
ALTER TABLE `el_materi_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `el_messages`
--
ALTER TABLE `el_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `el_nilai_tugas`
--
ALTER TABLE `el_nilai_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `el_pengajar`
--
ALTER TABLE `el_pengajar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `el_pengumuman`
--
ALTER TABLE `el_pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `el_pilihan`
--
ALTER TABLE `el_pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `el_siswa`
--
ALTER TABLE `el_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `el_soal`
--
ALTER TABLE `el_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `el_tugas`
--
ALTER TABLE `el_tugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `el_tugas_kelas`
--
ALTER TABLE `el_tugas_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `el_tugas_kumpul`
--
ALTER TABLE `el_tugas_kumpul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `el_tugas_pertanyaan`
--
ALTER TABLE `el_tugas_pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `el_ujian`
--
ALTER TABLE `el_ujian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `el_ujian_soal`
--
ALTER TABLE `el_ujian_soal`
  MODIFY `id_ujian_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
