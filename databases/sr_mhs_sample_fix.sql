-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2025 at 01:54 PM
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
(21, 'Fahri Setia Darma', 1),
(22, 'Ervina Septiana', 1),
(23, 'Indra Adityawarman', 1),
(24, 'Khaerul Ma\'ruf Pratama', 1),
(25, 'Muhamad Andhika Satya Azizi', 1),
(30, 'Aditya Pratama', 1),
(31, 'Siti Nurhaliza', 1),
(32, 'Andi Saputra', 1),
(33, 'Ayu Kartika', 1),
(34, 'Bambang Hermawan', 1);

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
(1, 21, 0.625),
(2, 22, 0.333333),
(3, 23, 0.25),
(4, 24, 0.366667),
(5, 25, 1),
(6, 30, 0.3),
(7, 31, 0),
(8, 32, 0.216667),
(9, 33, 0.358333),
(10, 34, 0.441667);

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
(140, 22, 16, 18),
(141, 22, 17, 23),
(142, 22, 18, 26),
(143, 22, 19, 29),
(144, 22, 20, 31),
(145, 23, 16, 18),
(146, 23, 17, 24),
(147, 23, 18, 26),
(148, 23, 19, 29),
(149, 23, 20, 31),
(150, 24, 16, 19),
(151, 24, 17, 22),
(152, 24, 18, 26),
(153, 24, 19, 29),
(154, 24, 20, 30),
(155, 25, 16, 17),
(156, 25, 17, 21),
(157, 25, 18, 25),
(158, 25, 19, 27),
(159, 25, 20, 30),
(165, 21, 16, 18),
(166, 21, 17, 21),
(167, 21, 18, 26),
(168, 21, 19, 28),
(169, 21, 20, 30),
(170, 30, 16, 19),
(171, 30, 17, 24),
(172, 30, 18, 25),
(173, 30, 19, 29),
(174, 30, 20, 32),
(175, 31, 16, 20),
(176, 31, 17, 24),
(177, 31, 18, 26),
(178, 31, 19, 29),
(179, 31, 20, 32),
(180, 32, 16, 20),
(181, 32, 17, 22),
(182, 32, 18, 26),
(183, 32, 19, 29),
(184, 32, 20, 31),
(185, 33, 16, 20),
(186, 33, 17, 23),
(187, 33, 18, 25),
(188, 33, 19, 28),
(189, 33, 20, 32),
(190, 34, 16, 20),
(191, 34, 17, 22),
(192, 34, 18, 25),
(193, 34, 19, 28),
(194, 34, 20, 32),
(200, 36, 16, 17);

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
(29, 19, '> Semester 8 dan penulisan skripsi > 4 bulan', 1),
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
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `alternatif_user`
--
ALTER TABLE `alternatif_user`
  MODIFY `id_alternatif_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

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
