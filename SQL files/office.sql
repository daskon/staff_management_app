-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 09:11 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staffinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`id`, `Name`, `Address`, `Description`, `created_at`, `updated_at`) VALUES
(1, 'HR-Recruitment ', 'No 20/1, Cross street, dalas. ', 'New staff recruitment office', '2017-10-23 18:30:00', '2017-10-23 18:30:00'),
(2, 'HR-Strategic Planing ', 'No 20/1, Cross street, dalas. ', 'Future employment planing division ', '2017-10-23 18:30:00', '2017-10-23 18:30:00'),
(3, 'Finance-Payroll ', 'No 20/1, Cross street, dalas, Block A ', 'staff salary division ', '2017-10-23 18:30:00', '2017-10-23 18:30:00'),
(4, 'Finance-Pension ', 'No 20/1, Cross street, dalas. Block A floor 2', 'staff pension related matter handle by this division ', '2017-10-23 18:30:00', '2017-10-23 18:30:00'),
(5, 'Marketing-Promotion ', 'No 20/1, Cross street, dalas. ', 'special offers and event planing office', '2017-10-23 18:30:00', '2017-10-23 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
