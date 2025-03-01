-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 06:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sr_mhs`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama`, `id_user`) VALUES
(51, 'Fahri Setia Darma', 1),
(52, 'Asqina Salsabila', 1),
(53, 'Duwi Anjar Ari Wibowo', 1),
(54, 'Sidikara Hakim', 1),
(55, 'Muhammad Nazhmi Wajih Haq', 1),
(56, 'Ervina Septiana', 1),
(57, 'Farid Irsyad Gunawan', 1),
(59, 'Ikhsan Maulana', 1),
(60, 'Ezza Ezzata', 1),
(63, 'Muhammad Zaki Auzan', 1),
(71, 'Faiq Fawwaz', 1),
(72, 'Firdaus Nandu Aryasetya', 1),
(73, 'Brilian Permata Zulfa', 1),
(74, 'Alfan Raidi Noor', 1),
(75, 'Indra Adityawarman', 1),
(76, 'Khindy Zharifany Fayyadhana Fattah', 1),
(77, 'Muhammad Irfan Arya Syahputra', 1),
(78, 'Ihtiar Nur Furqon', 1),
(79, 'Rauuf Anugerah Akbar', 1),
(80, 'Septania Shalihati', 1),
(81, 'Latifa Riani Dewi', 1),
(82, 'Imamuddin Al Mustaqim', 1),
(83, 'Muhammad Riski', 1),
(84, 'Alif Fianto Ramadhan', 1),
(85, 'Fikri Noor Said', 1),
(86, 'Danial Sahila Amardana', 1),
(87, 'Bayu Ari Sandy', 1),
(88, 'Fakhrir Rahman', 1),
(89, 'Hasany Ibrohim', 1),
(90, 'Riza Fauzil Adzim Manziz', 1),
(91, 'Azizah Rosyida', 1),
(92, 'Pinasti Robi Aulia', 1),
(93, 'Ardy Surya Pratama', 1),
(94, 'Muhammad Nur Ramadhan', 1),
(95, 'Lalu Bagoes Putra Ramadhan', 1),
(96, 'Fajar Al Rahman', 1),
(97, 'Yasir Khoirul Huda', 1),
(98, 'Adika Rais Muhammad Abror', 1),
(99, 'Deny Iqbal Mubarok', 1),
(100, 'Kurnia Agustia Arifin', 1),
(101, 'Eko Rachmat Satriyo', 1),
(102, 'Fahrul Saleh Sanaky', 1),
(103, 'Khaerul Maruf Pratama', 1),
(104, 'Ibnu Zaman', 1),
(105, 'Gagah Aryo Wijoseno', 1),
(106, 'Ibrahim Alfarisi', 1),
(107, 'Dhea Aprila Hi Hakim', 1),
(108, 'Dimas Thaqif Attaulah', 1),
(109, 'Adhika Nugraha Ali', 1),
(110, 'Tiara Salsabila', 1),
(111, 'Arishandhi Wahyu Perdana', 1),
(112, 'Bramono Wangsa Wedono', 1),
(113, 'Muhamad Rizki Fasihullisan Damopolii', 1),
(114, 'Fajar Riansyah Aryda Putra', 1),
(115, 'Oktaria Purnamasari', 1),
(116, 'Muhammad Faris Akbar', 1),
(117, 'Fikriana Tri Agustina', 1),
(118, 'Rizkita Puteri Syaviera', 1),
(119, 'Imroatus Sholihah', 1),
(120, 'Rhizky Dwi Mertani', 1),
(121, 'Qalbi Karunia', 1),
(122, 'Devito Aldiga Fitra', 1),
(123, 'Didik Vinastu', 1),
(124, 'Riski Adi Pangestu', 1),
(125, 'Adnan Fauzan Usman', 1),
(126, 'Florita Cinta Arum Kuncoro', 1),
(127, 'Muhamad Ridho Dwi Putra', 1),
(128, 'Yoga Aditya Mahardika', 1),
(129, 'Ahmad Al-ghazali Shabir', 1),
(130, 'Ferdinan Susanto', 1),
(131, 'Ibnu Jati Kusuma Admiyanto', 1),
(132, 'Maulana Yusuf Habibi', 1),
(133, 'Andika Wijaya', 1),
(134, 'Zulfaa Putri Az Zahra', 1),
(135, 'Indah Nuraini A. M. Djen', 1),
(136, 'Ghaitsa Zahira Rahma', 1),
(137, 'Arrasyid Muhammad Alfath', 1),
(138, 'Muhammad Hafizh Syabana', 1),
(139, 'Aditya Prasetyo Yogatama', 1),
(140, 'Muhammad Sulthon Mufti', 1),
(141, 'Bunga Syahira Najla', 1),
(142, 'Muhamad Adji Sihab Kusuma', 1),
(143, 'Muhammad Yusuf Dwi Hasta Yuda', 1),
(144, 'Bagas Alif Yunus', 1),
(145, 'Muhammad Hillal Nurhansa', 1),
(146, 'Bagas Dwi Kurniawan', 1),
(147, 'Muhammad Azhar', 1),
(148, 'Reza Muchamad Hafis', 1),
(149, 'Shaluna Fasya Elmina', 1),
(150, 'Fauza Radhiya Adriani', 1),
(151, 'Aris Rifaldi', 1),
(152, 'Alfina Amallia', 1),
(153, 'Muhammad Reza Mahendra', 1),
(154, 'Tirtanusa Kurnia Adhi Perdana', 1),
(155, 'Eka Rindiani', 1),
(156, 'Andri Pratama', 1),
(157, 'Raka Fahda Nabila', 1),
(158, 'Sinzi Al-ghafiqi', 1),
(159, 'Mahardiko Cesartista Rasendriya', 1),
(160, 'Dewi Angraini', 1),
(161, 'Rifka Atmajati', 1),
(162, 'M.ragahdo Danurdara Sdj', 1),
(163, 'Dimas Jiyan Pangestu', 1),
(164, 'Adhella Defiani', 1),
(165, 'Jingga Musfita Maharani Rustam', 1),
(166, 'Puspa Zahara Nurafifa', 1),
(167, 'Friska Triandini', 1),
(168, 'Hervia Salsabilla', 1),
(169, 'Muhammad Salman Al Farisy', 1),
(170, 'La Ode Muhammad Rahmatullah Baido', 1),
(171, 'Justin Akira Reswara', 1),
(172, 'Nurul Istiqamah', 1),
(173, 'Hernanda Maulita Dyah Sekararum', 1),
(174, 'Rizka Dianrani', 1),
(175, 'Muhammad Fadjri Ali', 1),
(176, 'Al Kautsar Russetya Tamora', 1),
(177, 'Binti Sholikhah', 1),
(178, 'Yearina Zalzalati Mustika', 1),
(179, 'Bagus Akmal', 1),
(180, 'Arzil Fauzan Nofriansyah', 1),
(181, 'Khulfani Hendrawan', 1),
(182, 'Farah Nur Izzati', 1),
(183, 'Muhammad Rizaldy Alifiansyah', 1),
(184, 'Tata Alyssa', 1),
(185, 'Raju Putra Dermawan', 1),
(186, 'Nur Fitriyani Pangastuti', 1),
(187, 'Muhammad Khysam Firdaus', 1),
(188, 'Muhamad Andhika Satya Azizi', 1),
(189, 'Ahmad Qurniawan', 1),
(190, 'Ahmad Fadli Rismanda', 1),
(191, 'Zakiansyah', 1),
(192, 'Dwi Priambodo Prayoga', 1),
(193, 'Kiqi Safiah Madiyanti', 1),
(194, 'Muhammad Rijalul Awal', 1),
(195, 'Ajeng Dhiyaa Putri Qonita', 1),
(196, 'Muhammad Eska Awali Rizqi', 1),
(197, 'M. Aditya Agustin', 1),
(198, 'Rifal Febiyan', 1),
(199, 'Nanda Arthadya', 1),
(200, 'Mohammad Asyrof Jundullah Rifai', 1),
(201, 'Arrijal Firmansyah', 1),
(202, 'Amaylia Ananda Cinta Naditya', 1),
(203, 'Mohammad Habli Islamy Sholihin', 1),
(204, 'Erlangga Rangga Yudhistira', 1),
(205, 'Regita Nina Andani', 1),
(206, 'Cindy Afiyah Putri', 1),
(207, 'Uswatun Hasanah', 1),
(208, 'Uun Khotimah', 1),
(209, 'Muhammad Faiz Akbar', 1),
(210, 'Rafifah Eka Luthfiana Putri', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alternatif_user`
--

CREATE TABLE `alternatif_user` (
  `id_alternatif_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alternatif_user`
--

INSERT INTO `alternatif_user` (`id_alternatif_user`, `nama`, `id_user`) VALUES
(3, 'Muammar Shaquille', 18),
(4, 'Alviandri Yusuf', 19),
(5, 'Nanda Artadya', 20),
(7, 'Eko Wibowo', 21),
(8, 'Audita Budi', 22),
(9, 'Rafi Anwar', 23),
(10, 'Ahmad Qurniawan', 14),
(11, 'Arrijal Firmansyah', 24);

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 51, 0.575),
(2, 52, 0.241667),
(3, 53, 0.691667),
(4, 54, 0.491667),
(5, 55, 0.691667),
(6, 56, 0.308333),
(7, 57, 1),
(8, 59, 1),
(9, 60, 0.491667),
(10, 63, 0.491667),
(11, 71, 0.241667),
(12, 72, 0.308333),
(13, 73, 0.391667),
(14, 74, 0.391667),
(15, 75, 0.15),
(16, 76, 0.725),
(17, 77, 0.491667),
(18, 78, 0.575),
(19, 79, 0.425),
(20, 80, 0.308333),
(21, 81, 0.391667),
(22, 82, 0.408333),
(23, 83, 0.391667),
(24, 84, 0.308333),
(25, 85, 0.925),
(26, 86, 0.925),
(27, 87, 0.308333),
(28, 88, 0.925),
(29, 89, 0.925),
(30, 90, 0.341667),
(31, 91, 0.925),
(32, 92, 0.841667),
(33, 93, 0.575),
(34, 94, 0.241667),
(35, 95, 0.491667),
(36, 96, 0.725),
(37, 97, 0.425),
(38, 98, 0.841667),
(39, 99, 0.725),
(40, 100, 0.491667),
(41, 101, 0.65),
(42, 102, 0.491667),
(43, 103, 0.341667),
(44, 104, 0.575),
(45, 105, 0.391667),
(46, 106, 0.391667),
(47, 107, 0.391667),
(48, 108, 0.575),
(49, 109, 0.725),
(50, 110, 0.925),
(51, 111, 0.391667),
(52, 112, 0.391667),
(53, 113, 0.391667),
(54, 114, 0.925),
(55, 115, 0.391667),
(56, 116, 0.575),
(57, 117, 0.925),
(58, 118, 0.391667),
(59, 119, 0.475),
(60, 120, 0.925),
(61, 121, 0.925),
(62, 122, 0.925),
(63, 123, 0.391667),
(64, 124, 0.925),
(65, 125, 0.341667),
(66, 126, 0.925),
(67, 127, 0.508333),
(68, 128, 0.925),
(69, 129, 0.308333),
(70, 130, 0.308333),
(71, 131, 0.308333),
(72, 132, 0.9),
(73, 133, 0.308333),
(74, 134, 0.925),
(75, 135, 0.491667),
(76, 136, 1),
(77, 137, 0.308333),
(78, 138, 0.625),
(79, 139, 0.575),
(80, 140, 0.408333),
(81, 141, 0.391667),
(82, 142, 0.775),
(83, 143, 0.158333),
(84, 144, 0.925),
(85, 145, 0.491667),
(86, 146, 0.425),
(87, 147, 0.308333),
(88, 148, 0.925),
(89, 149, 0.925),
(90, 150, 0.491667),
(91, 151, 0.391667),
(92, 152, 0.491667),
(93, 153, 0.925),
(94, 154, 0.841667),
(95, 155, 0.408333),
(96, 156, 1),
(97, 157, 0.358333),
(98, 158, 0.491667),
(99, 159, 0.9),
(100, 160, 0.491667),
(101, 161, 0.491667),
(102, 162, 0.491667),
(103, 163, 0.308333),
(104, 164, 0.491667),
(105, 165, 0.408333),
(106, 166, 0.491667),
(107, 167, 0.491667),
(108, 168, 0.925),
(109, 169, 1),
(110, 170, 0.241667),
(111, 171, 0.391667),
(112, 172, 1),
(113, 173, 0.925),
(114, 174, 0.391667),
(115, 175, 0.925),
(116, 176, 1),
(117, 177, 0.925),
(118, 178, 0.925),
(119, 179, 0.925),
(120, 180, 0.575),
(121, 181, 0.925),
(122, 182, 0.925),
(123, 183, 0.925),
(124, 184, 0.925),
(125, 185, 0.925),
(126, 186, 0.925),
(127, 187, 0.925),
(128, 188, 1),
(129, 189, 1),
(130, 190, 0.925),
(131, 191, 1),
(132, 192, 1),
(133, 193, 0.391667),
(134, 194, 1),
(135, 195, 0.491667),
(136, 196, 0.575),
(137, 197, 0.65),
(138, 198, 0.691667),
(139, 199, 0.925),
(140, 200, 0.8),
(141, 201, 0.491667),
(142, 202, 0.491667),
(143, 203, 0.491667),
(144, 204, 0.491667),
(145, 205, 0.491667),
(146, 206, 0.491667),
(147, 207, 0.308333),
(148, 208, 0.925),
(149, 209, 0.491667),
(150, 210, 0.566667);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_user`
--

CREATE TABLE `hasil_user` (
  `id_hasil_user` int(11) NOT NULL,
  `id_alternatif_user` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil_user`
--

INSERT INTO `hasil_user` (`id_hasil_user`, `id_alternatif_user`, `nilai`) VALUES
(1, 3, 0.05),
(2, 4, 0.4),
(3, 5, 1),
(4, 7, 0.525),
(5, 8, 0.175),
(6, 9, 0.8),
(7, 10, 1),
(8, 11, 0.275);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kode_kriteria` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `type` enum('Benefit','Cost') NOT NULL,
  `bobot` float NOT NULL,
  `ada_pilihan` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kode_kriteria`, `nama`, `type`, `bobot`, `ada_pilihan`) VALUES
(16, 'C1', 'Pengambilan Metopen', 'Benefit', 30, 1),
(17, 'C2', 'Jumlah SKS yang Ditempuh Hingga Semester 6', 'Benefit', 25, 1),
(18, 'C3', 'Pengambilan Mata Kuliah Semester 7', 'Benefit', 20, 1),
(19, 'C4', 'Pengambilan Mata Kuliah Skripsi', 'Benefit', 15, 1),
(20, 'C5', 'Status Kelulusan Mata Kuliah Institusional', 'Benefit', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(200, 36, 16, 17),
(295, 51, 16, 18),
(296, 51, 17, 21),
(297, 51, 18, 26),
(298, 51, 19, 28),
(299, 51, 20, 30),
(300, 52, 16, 19),
(301, 52, 17, 22),
(302, 52, 18, 26),
(303, 52, 19, 28),
(304, 52, 20, 31),
(305, 53, 16, 18),
(306, 53, 17, 22),
(307, 53, 18, 25),
(308, 53, 19, 28),
(309, 53, 20, 30),
(310, 54, 16, 18),
(311, 54, 17, 22),
(312, 54, 18, 26),
(313, 54, 19, 28),
(314, 54, 20, 30),
(315, 55, 16, 18),
(316, 55, 17, 22),
(317, 55, 18, 25),
(318, 55, 19, 28),
(319, 55, 20, 30),
(320, 56, 16, 18),
(321, 56, 17, 23),
(322, 56, 18, 26),
(323, 56, 19, 28),
(324, 56, 20, 31),
(325, 57, 16, 17),
(326, 57, 17, 21),
(327, 57, 18, 25),
(328, 57, 19, 27),
(329, 57, 20, 30),
(330, 59, 16, 17),
(331, 59, 17, 21),
(332, 59, 18, 25),
(333, 59, 19, 27),
(334, 59, 20, 30),
(335, 60, 16, 18),
(336, 60, 17, 22),
(337, 60, 18, 26),
(338, 60, 19, 28),
(339, 60, 20, 30),
(340, 63, 16, 18),
(341, 63, 17, 22),
(342, 63, 18, 26),
(343, 63, 19, 28),
(344, 63, 20, 30),
(345, 71, 16, 19),
(346, 71, 17, 22),
(347, 71, 18, 26),
(348, 71, 19, 28),
(349, 71, 20, 31),
(350, 72, 16, 18),
(351, 72, 17, 23),
(352, 72, 18, 26),
(353, 72, 19, 28),
(354, 72, 20, 31),
(355, 73, 16, 18),
(356, 73, 17, 22),
(357, 73, 18, 26),
(358, 73, 19, 28),
(359, 73, 20, 31),
(360, 74, 16, 18),
(361, 74, 17, 22),
(362, 74, 18, 26),
(363, 74, 19, 28),
(364, 74, 20, 31),
(365, 75, 16, 18),
(366, 75, 17, 24),
(367, 75, 18, 26),
(368, 75, 19, 29),
(369, 75, 20, 31),
(370, 76, 16, 17),
(371, 76, 17, 21),
(372, 76, 18, 26),
(373, 76, 19, 28),
(374, 76, 20, 30),
(375, 77, 16, 18),
(376, 77, 17, 22),
(377, 77, 18, 26),
(378, 77, 19, 28),
(379, 77, 20, 30),
(380, 78, 16, 18),
(381, 78, 17, 21),
(382, 78, 18, 26),
(383, 78, 19, 28),
(384, 78, 20, 30),
(385, 79, 16, 19),
(386, 79, 17, 21),
(387, 79, 18, 26),
(388, 79, 19, 28),
(389, 79, 20, 30),
(390, 80, 16, 18),
(391, 80, 17, 23),
(392, 80, 18, 26),
(393, 80, 19, 28),
(394, 80, 20, 31),
(395, 81, 16, 18),
(396, 81, 17, 22),
(397, 81, 18, 26),
(398, 81, 19, 28),
(399, 81, 20, 31),
(400, 82, 16, 18),
(401, 82, 17, 23),
(402, 82, 18, 26),
(403, 82, 19, 28),
(404, 82, 20, 30),
(410, 83, 16, 18),
(411, 83, 17, 22),
(412, 83, 18, 26),
(413, 83, 19, 28),
(414, 83, 20, 31),
(415, 84, 16, 18),
(416, 84, 17, 23),
(417, 84, 18, 26),
(418, 84, 19, 28),
(419, 84, 20, 31),
(420, 85, 16, 17),
(421, 85, 17, 21),
(422, 85, 18, 25),
(423, 85, 19, 28),
(424, 85, 20, 30),
(425, 86, 16, 17),
(426, 86, 17, 21),
(427, 86, 18, 25),
(428, 86, 19, 28),
(429, 86, 20, 30),
(430, 87, 16, 18),
(431, 87, 17, 23),
(432, 87, 18, 26),
(433, 87, 19, 28),
(434, 87, 20, 31),
(435, 88, 16, 17),
(436, 88, 17, 21),
(437, 88, 18, 25),
(438, 88, 19, 28),
(439, 88, 20, 30),
(440, 89, 16, 17),
(441, 89, 17, 21),
(442, 89, 18, 25),
(443, 89, 19, 28),
(444, 89, 20, 30),
(445, 90, 16, 19),
(446, 90, 17, 22),
(447, 90, 18, 26),
(448, 90, 19, 28),
(449, 90, 20, 30),
(450, 91, 16, 17),
(451, 91, 17, 21),
(452, 91, 18, 25),
(453, 91, 19, 28),
(454, 91, 20, 30),
(455, 92, 16, 17),
(456, 92, 17, 22),
(457, 92, 18, 25),
(458, 92, 19, 28),
(459, 92, 20, 30),
(460, 93, 16, 18),
(461, 93, 17, 21),
(462, 93, 18, 26),
(463, 93, 19, 28),
(464, 93, 20, 30),
(465, 94, 16, 19),
(466, 94, 17, 22),
(467, 94, 18, 26),
(468, 94, 19, 28),
(469, 94, 20, 31),
(470, 95, 16, 18),
(471, 95, 17, 22),
(472, 95, 18, 26),
(473, 95, 19, 28),
(474, 95, 20, 30),
(475, 96, 16, 17),
(476, 96, 17, 21),
(477, 96, 18, 26),
(478, 96, 19, 28),
(479, 96, 20, 30),
(480, 97, 16, 19),
(481, 97, 17, 21),
(482, 97, 18, 26),
(483, 97, 19, 28),
(484, 97, 20, 30),
(490, 99, 16, 17),
(491, 99, 17, 21),
(492, 99, 18, 26),
(493, 99, 19, 28),
(494, 99, 20, 30),
(495, 100, 16, 18),
(496, 100, 17, 22),
(497, 100, 18, 26),
(498, 100, 19, 28),
(499, 100, 20, 30),
(500, 98, 16, 17),
(501, 98, 17, 22),
(502, 98, 18, 25),
(503, 98, 19, 28),
(504, 98, 20, 30),
(505, 101, 16, 18),
(506, 101, 17, 21),
(507, 101, 18, 26),
(508, 101, 19, 27),
(509, 101, 20, 30),
(510, 102, 16, 18),
(511, 102, 17, 22),
(512, 102, 18, 26),
(513, 102, 19, 28),
(514, 102, 20, 30),
(515, 103, 16, 19),
(516, 103, 17, 22),
(517, 103, 18, 26),
(518, 103, 19, 28),
(519, 103, 20, 30),
(520, 104, 16, 18),
(521, 104, 17, 21),
(522, 104, 18, 26),
(523, 104, 19, 28),
(524, 104, 20, 30),
(525, 105, 16, 18),
(526, 105, 17, 22),
(527, 105, 18, 26),
(528, 105, 19, 28),
(529, 105, 20, 31),
(530, 106, 16, 18),
(531, 106, 17, 22),
(532, 106, 18, 26),
(533, 106, 19, 28),
(534, 106, 20, 31),
(535, 107, 16, 18),
(536, 107, 17, 22),
(537, 107, 18, 26),
(538, 107, 19, 28),
(539, 107, 20, 31),
(540, 108, 16, 18),
(541, 108, 17, 21),
(542, 108, 18, 26),
(543, 108, 19, 28),
(544, 108, 20, 30),
(545, 109, 16, 17),
(546, 109, 17, 21),
(547, 109, 18, 26),
(548, 109, 19, 28),
(549, 109, 20, 30),
(550, 110, 16, 17),
(551, 110, 17, 21),
(552, 110, 18, 25),
(553, 110, 19, 28),
(554, 110, 20, 30),
(555, 111, 16, 18),
(556, 111, 17, 22),
(557, 111, 18, 26),
(558, 111, 19, 28),
(559, 111, 20, 31),
(560, 112, 16, 18),
(561, 112, 17, 22),
(562, 112, 18, 26),
(563, 112, 19, 28),
(564, 112, 20, 31),
(565, 113, 16, 18),
(566, 113, 17, 22),
(567, 113, 18, 26),
(568, 113, 19, 28),
(569, 113, 20, 31),
(570, 114, 16, 17),
(571, 114, 17, 21),
(572, 114, 18, 25),
(573, 114, 19, 28),
(574, 114, 20, 30),
(575, 115, 16, 18),
(576, 115, 17, 22),
(577, 115, 18, 26),
(578, 115, 19, 28),
(579, 115, 20, 31),
(580, 116, 16, 18),
(581, 116, 17, 21),
(582, 116, 18, 26),
(583, 116, 19, 28),
(584, 116, 20, 30),
(585, 117, 16, 17),
(586, 117, 17, 21),
(587, 117, 18, 25),
(588, 117, 19, 28),
(589, 117, 20, 30),
(590, 118, 16, 18),
(591, 118, 17, 22),
(592, 118, 18, 26),
(593, 118, 19, 28),
(594, 118, 20, 31),
(595, 119, 16, 18),
(596, 119, 17, 21),
(597, 119, 18, 26),
(598, 119, 19, 28),
(599, 119, 20, 31),
(600, 120, 16, 17),
(601, 120, 17, 21),
(602, 120, 18, 25),
(603, 120, 19, 28),
(604, 120, 20, 30),
(605, 121, 16, 17),
(606, 121, 17, 21),
(607, 121, 18, 25),
(608, 121, 19, 28),
(609, 121, 20, 30),
(610, 122, 16, 17),
(611, 122, 17, 21),
(612, 122, 18, 25),
(613, 122, 19, 28),
(614, 122, 20, 30),
(615, 123, 16, 18),
(616, 123, 17, 22),
(617, 123, 18, 26),
(618, 123, 19, 28),
(619, 123, 20, 31),
(620, 124, 16, 17),
(621, 124, 17, 21),
(622, 124, 18, 25),
(623, 124, 19, 28),
(624, 124, 20, 30),
(625, 125, 16, 19),
(626, 125, 17, 22),
(627, 125, 18, 26),
(628, 125, 19, 28),
(629, 125, 20, 30),
(630, 126, 16, 17),
(631, 126, 17, 21),
(632, 126, 18, 25),
(633, 126, 19, 28),
(634, 126, 20, 30),
(635, 127, 16, 18),
(636, 127, 17, 23),
(637, 127, 18, 25),
(638, 127, 19, 28),
(639, 127, 20, 31),
(640, 128, 16, 17),
(641, 128, 17, 21),
(642, 128, 18, 25),
(643, 128, 19, 28),
(644, 128, 20, 30),
(645, 129, 16, 18),
(646, 129, 17, 23),
(647, 129, 18, 26),
(648, 129, 19, 28),
(649, 129, 20, 31),
(650, 130, 16, 18),
(651, 130, 17, 23),
(652, 130, 18, 26),
(653, 130, 19, 28),
(654, 130, 20, 31),
(655, 131, 16, 18),
(656, 131, 17, 23),
(657, 131, 18, 26),
(658, 131, 19, 28),
(659, 131, 20, 31),
(660, 132, 16, 17),
(661, 132, 17, 21),
(662, 132, 18, 25),
(663, 132, 19, 27),
(664, 132, 20, 31),
(665, 133, 16, 18),
(666, 133, 17, 23),
(667, 133, 18, 26),
(668, 133, 19, 28),
(669, 133, 20, 31),
(670, 134, 16, 17),
(671, 134, 17, 21),
(672, 134, 18, 25),
(673, 134, 19, 28),
(674, 134, 20, 30),
(675, 135, 16, 18),
(676, 135, 17, 22),
(677, 135, 18, 26),
(678, 135, 19, 28),
(679, 135, 20, 30),
(680, 136, 16, 17),
(681, 136, 17, 21),
(682, 136, 18, 25),
(683, 136, 19, 27),
(684, 136, 20, 30),
(685, 137, 16, 18),
(686, 137, 17, 23),
(687, 137, 18, 26),
(688, 137, 19, 28),
(689, 137, 20, 31),
(690, 138, 16, 17),
(691, 138, 17, 21),
(692, 138, 18, 26),
(693, 138, 19, 28),
(694, 138, 20, 31),
(695, 139, 16, 18),
(696, 139, 17, 21),
(697, 139, 18, 26),
(698, 139, 19, 28),
(699, 139, 20, 30),
(700, 140, 16, 18),
(701, 140, 17, 23),
(702, 140, 18, 26),
(703, 140, 19, 28),
(704, 140, 20, 30),
(705, 141, 16, 18),
(706, 141, 17, 22),
(707, 141, 18, 26),
(708, 141, 19, 28),
(709, 141, 20, 31),
(710, 142, 16, 18),
(711, 142, 17, 21),
(712, 142, 18, 25),
(713, 142, 19, 28),
(714, 142, 20, 30),
(715, 143, 16, 19),
(716, 143, 17, 23),
(717, 143, 18, 26),
(718, 143, 19, 28),
(719, 143, 20, 31),
(720, 144, 16, 17),
(721, 144, 17, 21),
(722, 144, 18, 25),
(723, 144, 19, 28),
(724, 144, 20, 30),
(725, 145, 16, 18),
(726, 145, 17, 22),
(727, 145, 18, 26),
(728, 145, 19, 28),
(729, 145, 20, 30),
(730, 146, 16, 19),
(731, 146, 17, 21),
(732, 146, 18, 26),
(733, 146, 19, 28),
(734, 146, 20, 30),
(735, 147, 16, 18),
(736, 147, 17, 23),
(737, 147, 18, 26),
(738, 147, 19, 28),
(739, 147, 20, 31),
(740, 148, 16, 17),
(741, 148, 17, 21),
(742, 148, 18, 25),
(743, 148, 19, 28),
(744, 148, 20, 30),
(745, 149, 16, 17),
(746, 149, 17, 21),
(747, 149, 18, 25),
(748, 149, 19, 28),
(749, 149, 20, 30),
(750, 150, 16, 18),
(751, 150, 17, 22),
(752, 150, 18, 26),
(753, 150, 19, 28),
(754, 150, 20, 30),
(755, 151, 16, 18),
(756, 151, 17, 22),
(757, 151, 18, 26),
(758, 151, 19, 28),
(759, 151, 20, 31),
(760, 152, 16, 18),
(761, 152, 17, 22),
(762, 152, 18, 26),
(763, 152, 19, 28),
(764, 152, 20, 30),
(765, 153, 16, 17),
(766, 153, 17, 21),
(767, 153, 18, 25),
(768, 153, 19, 28),
(769, 153, 20, 30),
(770, 154, 16, 17),
(771, 154, 17, 22),
(772, 154, 18, 25),
(773, 154, 19, 28),
(774, 154, 20, 30),
(775, 155, 16, 18),
(776, 155, 17, 23),
(777, 155, 18, 26),
(778, 155, 19, 28),
(779, 155, 20, 30),
(780, 156, 16, 17),
(781, 156, 17, 21),
(782, 156, 18, 25),
(783, 156, 19, 27),
(784, 156, 20, 30),
(785, 157, 16, 19),
(786, 157, 17, 23),
(787, 157, 18, 25),
(788, 157, 19, 28),
(789, 157, 20, 31),
(790, 158, 16, 18),
(791, 158, 17, 22),
(792, 158, 18, 26),
(793, 158, 19, 28),
(794, 158, 20, 30),
(795, 159, 16, 17),
(796, 159, 17, 21),
(797, 159, 18, 25),
(798, 159, 19, 27),
(799, 159, 20, 31),
(800, 160, 16, 18),
(801, 160, 17, 22),
(802, 160, 18, 26),
(803, 160, 19, 28),
(804, 160, 20, 30),
(805, 161, 16, 18),
(806, 161, 17, 22),
(807, 161, 18, 26),
(808, 161, 19, 28),
(809, 161, 20, 30),
(815, 162, 16, 18),
(816, 162, 17, 22),
(817, 162, 18, 26),
(818, 162, 19, 28),
(819, 162, 20, 30),
(820, 163, 16, 18),
(821, 163, 17, 23),
(822, 163, 18, 26),
(823, 163, 19, 28),
(824, 163, 20, 31),
(825, 164, 16, 18),
(826, 164, 17, 22),
(827, 164, 18, 26),
(828, 164, 19, 28),
(829, 164, 20, 30),
(830, 165, 16, 18),
(831, 165, 17, 23),
(832, 165, 18, 26),
(833, 165, 19, 28),
(834, 165, 20, 30),
(835, 166, 16, 18),
(836, 166, 17, 22),
(837, 166, 18, 26),
(838, 166, 19, 28),
(839, 166, 20, 30),
(840, 167, 16, 18),
(841, 167, 17, 22),
(842, 167, 18, 26),
(843, 167, 19, 28),
(844, 167, 20, 30),
(845, 168, 16, 17),
(846, 168, 17, 21),
(847, 168, 18, 25),
(848, 168, 19, 28),
(849, 168, 20, 30),
(850, 169, 16, 17),
(851, 169, 17, 21),
(852, 169, 18, 25),
(853, 169, 19, 27),
(854, 169, 20, 30),
(855, 170, 16, 19),
(856, 170, 17, 22),
(857, 170, 18, 26),
(858, 170, 19, 28),
(859, 170, 20, 31),
(860, 171, 16, 18),
(861, 171, 17, 22),
(862, 171, 18, 26),
(863, 171, 19, 28),
(864, 171, 20, 31),
(865, 172, 16, 17),
(866, 172, 17, 21),
(867, 172, 18, 25),
(868, 172, 19, 27),
(869, 172, 20, 30),
(870, 173, 16, 17),
(871, 173, 17, 21),
(872, 173, 18, 25),
(873, 173, 19, 28),
(874, 173, 20, 30),
(875, 174, 16, 18),
(876, 174, 17, 22),
(877, 174, 18, 26),
(878, 174, 19, 28),
(879, 174, 20, 31),
(880, 175, 16, 17),
(881, 175, 17, 21),
(882, 175, 18, 25),
(883, 175, 19, 28),
(884, 175, 20, 30),
(885, 176, 16, 17),
(886, 176, 17, 21),
(887, 176, 18, 25),
(888, 176, 19, 27),
(889, 176, 20, 30),
(890, 177, 16, 17),
(891, 177, 17, 21),
(892, 177, 18, 25),
(893, 177, 19, 28),
(894, 177, 20, 30),
(895, 178, 16, 17),
(896, 178, 17, 21),
(897, 178, 18, 25),
(898, 178, 19, 28),
(899, 178, 20, 30),
(900, 179, 16, 17),
(901, 179, 17, 21),
(902, 179, 18, 25),
(903, 179, 19, 28),
(904, 179, 20, 30),
(905, 180, 16, 18),
(906, 180, 17, 21),
(907, 180, 18, 26),
(908, 180, 19, 28),
(909, 180, 20, 30),
(910, 181, 16, 17),
(911, 181, 17, 21),
(912, 181, 18, 25),
(913, 181, 19, 28),
(914, 181, 20, 30),
(915, 182, 16, 17),
(916, 182, 17, 21),
(917, 182, 18, 25),
(918, 182, 19, 28),
(919, 182, 20, 30),
(920, 183, 16, 17),
(921, 183, 17, 21),
(922, 183, 18, 25),
(923, 183, 19, 28),
(924, 183, 20, 30),
(925, 184, 16, 17),
(926, 184, 17, 21),
(927, 184, 18, 25),
(928, 184, 19, 28),
(929, 184, 20, 30),
(930, 185, 16, 17),
(931, 185, 17, 21),
(932, 185, 18, 25),
(933, 185, 19, 28),
(934, 185, 20, 30),
(935, 186, 16, 17),
(936, 186, 17, 21),
(937, 186, 18, 25),
(938, 186, 19, 28),
(939, 186, 20, 30),
(940, 187, 16, 17),
(941, 187, 17, 21),
(942, 187, 18, 25),
(943, 187, 19, 28),
(944, 187, 20, 30),
(945, 188, 16, 17),
(946, 188, 17, 21),
(947, 188, 18, 25),
(948, 188, 19, 27),
(949, 188, 20, 30),
(950, 189, 16, 17),
(951, 189, 17, 21),
(952, 189, 18, 25),
(953, 189, 19, 27),
(954, 189, 20, 30),
(955, 190, 16, 17),
(956, 190, 17, 21),
(957, 190, 18, 25),
(958, 190, 19, 28),
(959, 190, 20, 30),
(960, 191, 16, 17),
(961, 191, 17, 21),
(962, 191, 18, 25),
(963, 191, 19, 27),
(964, 191, 20, 30),
(965, 192, 16, 17),
(966, 192, 17, 21),
(967, 192, 18, 25),
(968, 192, 19, 27),
(969, 192, 20, 30),
(970, 193, 16, 18),
(971, 193, 17, 22),
(972, 193, 18, 26),
(973, 193, 19, 28),
(974, 193, 20, 31),
(975, 194, 16, 17),
(976, 194, 17, 21),
(977, 194, 18, 25),
(978, 194, 19, 27),
(979, 194, 20, 30),
(980, 195, 16, 18),
(981, 195, 17, 22),
(982, 195, 18, 26),
(983, 195, 19, 28),
(984, 195, 20, 30),
(985, 196, 16, 18),
(986, 196, 17, 21),
(987, 196, 18, 26),
(988, 196, 19, 28),
(989, 196, 20, 30),
(990, 197, 16, 18),
(991, 197, 17, 21),
(992, 197, 18, 26),
(993, 197, 19, 27),
(994, 197, 20, 30),
(995, 198, 16, 18),
(996, 198, 17, 22),
(997, 198, 18, 25),
(998, 198, 19, 28),
(999, 198, 20, 30),
(1000, 199, 16, 17),
(1001, 199, 17, 21),
(1002, 199, 18, 25),
(1003, 199, 19, 28),
(1004, 199, 20, 30),
(1005, 200, 16, 17),
(1006, 200, 17, 21),
(1007, 200, 18, 26),
(1008, 200, 19, 27),
(1009, 200, 20, 30),
(1010, 201, 16, 18),
(1011, 201, 17, 22),
(1012, 201, 18, 26),
(1013, 201, 19, 28),
(1014, 201, 20, 30),
(1015, 202, 16, 18),
(1016, 202, 17, 22),
(1017, 202, 18, 26),
(1018, 202, 19, 28),
(1019, 202, 20, 30),
(1020, 203, 16, 18),
(1021, 203, 17, 22),
(1022, 203, 18, 26),
(1023, 203, 19, 28),
(1024, 203, 20, 30),
(1025, 204, 16, 18),
(1026, 204, 17, 22),
(1027, 204, 18, 26),
(1028, 204, 19, 28),
(1029, 204, 20, 30),
(1030, 205, 16, 18),
(1031, 205, 17, 22),
(1032, 205, 18, 26),
(1033, 205, 19, 28),
(1034, 205, 20, 30),
(1035, 206, 16, 18),
(1036, 206, 17, 22),
(1037, 206, 18, 26),
(1038, 206, 19, 28),
(1039, 206, 20, 30),
(1040, 207, 16, 18),
(1041, 207, 17, 23),
(1042, 207, 18, 26),
(1043, 207, 19, 28),
(1044, 207, 20, 31),
(1045, 208, 16, 17),
(1046, 208, 17, 21),
(1047, 208, 18, 25),
(1048, 208, 19, 28),
(1049, 208, 20, 30),
(1050, 209, 16, 18),
(1051, 209, 17, 22),
(1052, 209, 18, 26),
(1053, 209, 19, 28),
(1054, 209, 20, 30),
(1055, 210, 16, 18),
(1056, 210, 17, 22),
(1057, 210, 18, 26),
(1058, 210, 19, 27),
(1059, 210, 20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian_user`
--

CREATE TABLE `penilaian_user` (
  `id_penilaian_user` int(11) NOT NULL,
  `id_alternatif_user` int(10) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penilaian_user`
--

INSERT INTO `penilaian_user` (`id_penilaian_user`, `id_alternatif_user`, `id_kriteria`, `nilai`) VALUES
(6, 3, 16, 20),
(7, 3, 17, 23),
(8, 3, 18, 26),
(9, 3, 19, 29),
(10, 3, 20, 31),
(16, 4, 16, 19),
(17, 4, 17, 23),
(18, 4, 18, 25),
(19, 4, 19, 29),
(20, 4, 20, 30),
(26, 5, 16, 17),
(27, 5, 17, 21),
(28, 5, 18, 25),
(29, 5, 19, 27),
(30, 5, 20, 30),
(31, 7, 16, 18),
(32, 7, 17, 23),
(33, 7, 18, 25),
(34, 7, 19, 28),
(35, 7, 20, 31),
(41, 8, 16, 19),
(42, 8, 17, 23),
(43, 8, 18, 26),
(44, 8, 19, 28),
(45, 8, 20, 32),
(56, 9, 16, 17),
(57, 9, 17, 21),
(58, 9, 18, 26),
(59, 9, 19, 27),
(60, 9, 20, 30),
(66, 10, 16, 17),
(67, 10, 17, 21),
(68, 10, 18, 25),
(69, 10, 19, 27),
(70, 10, 20, 30),
(76, 11, 16, 19),
(77, 11, 17, 23),
(78, 11, 18, 26),
(79, 11, 19, 28),
(80, 11, 20, 30);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `nama`, `nilai`) VALUES
(17, 16, 'Semester 6 dan lulus sempro dan matkul yang diambil pada semester 6 lulus minimal C', 4),
(18, 16, 'Semester 7 dan lulus sempro dan matkul yang diambil pada semester 7 lulus minimal C', 3),
(19, 16, 'Semester 7, tetapi metopen mengulang', 2),
(20, 16, '>Semester 7 ', 1),
(21, 17, '> 130 SKS sudah lulus dengan minimal C hingga semester 6', 4),
(22, 17, '125-130 SKS sudah lulus dengan minimal C hingga semester 6', 3),
(23, 17, '120-124 SKS sudah lulus dengan minimal C hingga semester 6', 2),
(24, 17, '<120 SKS sudah lulus dengan minimal C hingga semester 6', 1),
(25, 18, 'Matkul teori sudah selesai, tinggal magang dan skripsi saja', 2),
(26, 18, 'Matkul teori ada yang belum selesai + magang dan skripsi', 1),
(27, 19, 'Semester 7 dan penulisan skripsi 4-6 bulan', 3),
(28, 19, 'Semester 8 dan penulisan skripsi 4-6 bulan', 2),
(29, 19, '> Semester 8 ', 1),
(30, 20, 'Matkul institusional semua lulus dengan nilai min C', 3),
(31, 20, 'Matkul institusional beberapa nilai kurang dari C', 2),
(32, 20, 'belum semua mengambil matkul institusional', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `email`, `role`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', 'admin@gmail.com', '1'),
(8, 'user', '12dea96fec20593566ab75692c9949596833adc9', 'User', 'user@gmail.com', '2'),
(10, 'zaki', 'cf9dcdb74ac6eeb803c1b4e769a84291ab7e3828', 'zakiansyah', 'zaki@gmail.com', '2'),
(11, 'zakiansyah', '9eb2afdc91f1ff322d68aba22db55c7e4cb7acf0', 'zakiansyah', 'zakiansyah@gmail.com', '2'),
(12, 'adit', '2e445949d370543ad32c166c38b1278d67316509', 'adit', 'adit@gmail.com', '2'),
(13, 'dika', 'f9c22e5c8b56ff08487e9a8e727df2a752438222', 'Muhamad Andhika Satya Azizi', 'dika@gmail.com', '2'),
(14, 'Iwan', '68fcc569df41e83e465820932dd3c12546fe0fc1', 'Ahmad Qurniawan', 'iwan@gmail.com', '2'),
(15, 'Galih', 'faf875372b44501083e1cb16ea07ce72ef9cf100', 'Galih Wahyu Satrio', 'galih@gmail.com', '2'),
(16, 'asyrof', '85d7197811a5550c6897fc223d06cc8973882410', 'Asyrof Jundullah', 'asyrof@gmail.com', '2'),
(17, 'rijal', '240e88b1ee9152e49a1bcb4649c43e79054fc872', 'Muhammad Rijalul Awal', 'rijal@gmail.com', '2'),
(18, 'Ammar', 'bb0a882c09a5db39d7fbe6d926886751028cd54d', 'Muammar Shaquille', 'ammar@gmail.com', '2'),
(19, 'alvi', '1439cb63656cd931957fcca93e49f6d7b3b9ffd9', 'Alviandri Yusuf', 'alvi@gmail.com', '2'),
(20, 'nanda', '16e8b7d240c81a0cbc6c0d5dcf00ef946b771823', 'Nanda Artadya', 'nanda@gmail.com', '2'),
(21, 'eko', '4c25daf72606acd7f827a2c9272f39f57c1d280b', 'Eko Wibowo', 'eko@gmail.com', '2'),
(22, 'budi', '83161a62f22277c65a6cdb7ebc314f218c376c63', 'Audita Budi', 'budi@gmail.com', '2'),
(23, 'rafi', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', 'Rafi Anwar', 'rafi@gmail.com', '2'),
(24, 'arrijal', '30744fc33f09703ad8e393d0d9719762d4718aa0', 'Arrijal Firmansyah', 'arrijal@gmail.com', '2'),
(25, 'rafly', '2fea5b462ccbac532d13d6a9ae774a6d04c833fb', 'Rafly Bramantyo', 'rafly@gmail.com', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `alternatif_user`
--
ALTER TABLE `alternatif_user`
  ADD PRIMARY KEY (`id_alternatif_user`),
  ADD KEY `fk_user_alternatif_user` (`id_user`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `hasil_user`
--
ALTER TABLE `hasil_user`
  ADD PRIMARY KEY (`id_hasil_user`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `penilaian_user`
--
ALTER TABLE `penilaian_user`
  ADD PRIMARY KEY (`id_penilaian_user`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `alternatif_user`
--
ALTER TABLE `alternatif_user`
  MODIFY `id_alternatif_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `hasil_user`
--
ALTER TABLE `hasil_user`
  MODIFY `id_hasil_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1060;

--
-- AUTO_INCREMENT for table `penilaian_user`
--
ALTER TABLE `penilaian_user`
  MODIFY `id_penilaian_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `alternatif_user`
--
ALTER TABLE `alternatif_user`
  ADD CONSTRAINT `fk_user_alternatif_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
