-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2022 at 11:45 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_refill`
--

-- --------------------------------------------------------

--
-- Table structure for table `liquid`
--

CREATE TABLE `liquid` (
  `id_barang` int(7) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_barang` int(30) NOT NULL,
  `jumlah_barang` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(7) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `username`, `email`, `password`) VALUES
(4, 'dzikriffa', 'faza13', 'faza@gmail.com', '23'),
(8, 'Fazaa', '2233', '2233', '1'),
(13, 'fifah', 'fifahnh', 'd', 'd3'),
(14, 'dzi', 'dzi', 'di', 'dzi'),
(16, 'dzikri faza', 'dzikrif', 'dzikrif@gmail.com', '1'),
(17, 'dzikr', 'dzik', 'dzik@gmail.com', '1'),
(18, 'aa', 'aa123', 'aa@gmail.com', '2'),
(19, 'faza', 'faza15', 'faza@gmail', '1'),
(20, 'sa', 'sa', 'sa@gmail.com', '1'),
(21, 's', 's', 's', '1'),
(22, 'd1', 'd1', 'd1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `liquid`
--
ALTER TABLE `liquid`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `liquid`
--
ALTER TABLE `liquid`
  MODIFY `id_barang` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
