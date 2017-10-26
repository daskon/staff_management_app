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
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `DeptID` int(10) UNSIGNED NOT NULL,
  `OfficeID` int(10) UNSIGNED NOT NULL,
  `FirstName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DOB` date NOT NULL,
  `IsWorking` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `DeptID`, `OfficeID`, `FirstName`, `LastName`, `DOB`, `IsWorking`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'John', 'Smith', '1970-04-21', 1, '2017-10-22 00:49:36', '2017-10-22 00:49:36'),
(2, 3, 5, 'Brayan', 'Adam', '1980-02-12', 1, '2017-10-22 06:35:34', '2017-10-22 06:35:34'),
(3, 2, 3, 'Loreiya', 'Cheng', '1991-04-02', 1, '2017-10-22 07:37:15', '2017-10-22 07:37:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DeptID` (`DeptID`),
  ADD KEY `OfficeID` (`OfficeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`DeptID`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`OfficeID`) REFERENCES `office` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
