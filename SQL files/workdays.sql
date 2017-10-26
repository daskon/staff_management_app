-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2017 at 09:12 PM
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
-- Table structure for table `workdays`
--

CREATE TABLE `workdays` (
  `id` int(10) UNSIGNED NOT NULL,
  `StaffID` int(20) UNSIGNED NOT NULL,
  `Date` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Time` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workdays`
--

INSERT INTO `workdays` (`id`, `StaffID`, `Date`, `Time`, `created_at`, `updated_at`) VALUES
(4, 2, '2017-10-25', '04:00:25pm', '2017-10-25 10:30:25', '2017-10-25 10:30:25'),
(5, 1, '2017-10-25', '04:01:07pm', '2017-10-25 10:31:07', '2017-10-25 10:31:07'),
(6, 3, '2017-10-25', '04:01:15pm', '2017-10-25 10:31:15', '2017-10-25 10:31:15'),
(7, 2, '2017-05-25', '05:24:41pm', '2017-10-25 11:54:41', '2017-10-25 11:54:41'),
(8, 2, '2017-10-10', '05:33:10pm', '2017-10-25 12:03:10', '2017-10-25 12:03:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `workdays`
--
ALTER TABLE `workdays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `StaffID` (`StaffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `workdays`
--
ALTER TABLE `workdays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `workdays`
--
ALTER TABLE `workdays`
  ADD CONSTRAINT `workdays_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
