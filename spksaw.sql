-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 07:19 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spksaw`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `kode_alternatif` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nama_alternatif` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nama_kriteria` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `crisp` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`kode_alternatif`, `nama_alternatif`, `nama_kriteria`, `crisp`) VALUES
('A1C1', 'Korea Selatan', 'Kurs', 4),
('A1C2', 'Korea Selatan', 'Rata-Rata', 2),
('A1C3', 'Korea Selatan', 'Jarak', 3),
('A1C4', 'Korea Selatan', 'Kualitas Barang', 5),
('A2C1', 'Amerika Serikat', 'Kurs', 2),
('A2C2', 'Amerika Serikat', 'Rata-Rata', 1),
('A2C3', 'Amerika Serikat', 'Jarak', 1),
('A2C4', 'Amerika Serikat', 'Kualitas Barang', 4),
('A3C1', 'China', 'Kurs', 4),
('A3C2', 'China', 'Rata-Rata', 3),
('A3C3', 'China', 'Jarak', 3),
('A3C4', 'China', 'Kualitas Barang', 3),
('A4C1', 'Jepang', 'Kurs', 4),
('A4C2', 'Jepang', 'Rata-Rata', 1),
('A4C3', 'Jepang', 'Jarak', 3),
('A4C4', 'Jepang', 'Kualitas Barang', 4),
('A5C1', 'Singapura', 'Kurs', 2),
('A5C2', 'Singapura', 'Rata-Rata', 1),
('A5C3', 'Singapura', 'Jarak', 3),
('A5C4', 'Singapura', 'Kualitas Barang', 5),
('A6C1', 'Australia', 'Kurs', 3),
('A6C2', 'Australia', 'Rata-Rata', 1),
('A6C3', 'Australia', 'Jarak', 3),
('A6C4', 'Australia', 'Kualitas Barang', 4),
('A7C1', 'Jerman', 'Kurs', 1),
('A7C2', 'Jerman', 'Rata-Rata', 1),
('A7C3', 'Jerman', 'Jarak', 1),
('A7C4', 'Jerman', 'Kualitas Barang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `kode_alternatif` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nama_alternatif` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nilai` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`kode_alternatif`, `nama_alternatif`, `nilai`) VALUES
('A1', 'Korea Selatan', 62.50),
('A2', 'Amerika Serikat', 61.33),
('A3', 'China', 58.83),
('A4', 'Jepang', 47.17),
('A5', 'Singapura', 61.67),
('A6', 'Australia', 49.67),
('A7', 'Jerman', 76.33);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `kode_kriteria` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nama_kriteria` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bobot` int(5) NOT NULL,
  `atribut` varchar(7) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`kode_kriteria`, `nama_kriteria`, `bobot`, `atribut`) VALUES
('C1', 'Kurs', 30, 'Cost'),
('C2', 'Rata-Rata', 25, 'Benefit'),
('C3', 'Jarak', 10, ''),
('C4', 'Kualitas Barang', 35, '');

-- --------------------------------------------------------

--
-- Table structure for table `matriks_keputusan`
--

CREATE TABLE `matriks_keputusan` (
  `kode_alternatif` varchar(5) NOT NULL,
  `nama_alternatif` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `C1` int(5) NOT NULL,
  `C2` int(5) NOT NULL,
  `C3` int(5) NOT NULL,
  `C4` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matriks_keputusan`
--

INSERT INTO `matriks_keputusan` (`kode_alternatif`, `nama_alternatif`, `C1`, `C2`, `C3`, `C4`) VALUES
('A1', 'Korea Selatan', 4, 2, 3, 5),
('A2', 'Amerika Serikat', 2, 1, 1, 4),
('A3', 'China', 4, 3, 3, 3),
('A4', 'Jepang', 4, 1, 3, 4),
('A5', 'Singapura', 2, 1, 3, 5),
('A6', 'Australia', 3, 1, 3, 4),
('A7', 'Jerman', 1, 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `matriks_ternormalisasi`
--

CREATE TABLE `matriks_ternormalisasi` (
  `alternatif` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `C1` double(4,2) NOT NULL,
  `C2` double(4,2) NOT NULL,
  `C3` double(4,2) NOT NULL,
  `C4` double(4,2) NOT NULL,
  `total` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matriks_ternormalisasi`
--

INSERT INTO `matriks_ternormalisasi` (`alternatif`, `C1`, `C2`, `C3`, `C4`, `total`) VALUES
('A1', 0.25, 0.67, 0.33, 1.00, 62.50),
('A2', 0.50, 0.33, 1.00, 0.80, 61.33),
('A3', 0.25, 1.00, 0.33, 0.60, 58.83),
('A4', 0.25, 0.33, 0.33, 0.80, 47.17),
('A5', 0.50, 0.33, 0.33, 1.00, 61.67),
('A6', 0.33, 0.33, 0.33, 0.80, 49.67),
('A7', 0.99, 0.33, 1.00, 0.80, 76.33);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `alternatif` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `nilai` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`alternatif`, `nilai`) VALUES
('Amerika Serikat', 61.33),
('Australia', 49.67),
('China', 58.83),
('Jepang', 47.17),
('Jerman', 76.33),
('Korea Selatan', 62.50),
('Singapura', 61.67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `matriks_keputusan`
--
ALTER TABLE `matriks_keputusan`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `matriks_ternormalisasi`
--
ALTER TABLE `matriks_ternormalisasi`
  ADD PRIMARY KEY (`alternatif`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`alternatif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
