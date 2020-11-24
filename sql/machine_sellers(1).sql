-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 15, 2018 at 09:47 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grp100_IKS`
--

-- --------------------------------------------------------

--
-- Table structure for table `machine_sellers`
--

CREATE TABLE `machine_sellers` (
  `machine_id` int(10) NOT NULL,
  `modell` text COLLATE utf8_german2_ci NOT NULL,
  `location` varchar(30) COLLATE utf8_german2_ci NOT NULL,
  `firstDay` date NOT NULL,
  `status` varchar(30) COLLATE utf8_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Dumping data for table `machine_sellers`
--

INSERT INTO `machine_sellers` (`machine_id`, `modell`, `location`, `firstDay`, `status`) VALUES
(1, 'X2010', 'Kempten-HS', '2017-10-01', 'aktiv'),
(2, 'A2018', 'Kempten', '2018-03-01', 'aktiv'),
(3, 'X2018', 'Memmingen', '2018-03-01', 'aktiv'),
(4, 'A2018', 'Isny', '2018-03-02', 'aktiv'),
(5, 'A2018', 'Marktoberdorf', '2018-03-05', 'aktiv'),
(6, 'A2018', 'Oberstdorf', '2018-03-06', 'aktiv'),
(7, 'A2018', 'Oberstaufen', '2018-03-06', 'aktiv'),
(8, 'A2018', 'Immenstadt', '2018-03-06', 'aktiv'),
(9, 'X2018', 'Fuessen', '2018-03-05', 'aktiv'),
(10, 'X2018', 'Lindau', '2018-03-02', 'aktiv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `machine_sellers`
--
ALTER TABLE `machine_sellers`
  ADD PRIMARY KEY (`machine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `machine_sellers`
--
ALTER TABLE `machine_sellers`
  MODIFY `machine_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
