-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2019 at 03:07 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbarinea_OrthoSC`
--

-- --------------------------------------------------------

--
-- Table structure for table `PatientInfo`
--

CREATE TABLE `PatientInfo` (
  `PatientInfoId` int(10) NOT NULL,
  `PatientInfoFirstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PatientInfoLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PatientInfoPhone` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `PatientInfoBirthDay` date DEFAULT NULL,
  `PatientInfoStreet` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PatientInfoCity` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PatientInfoState` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PatientInfoZip` int(5) DEFAULT NULL,
  `PatientInfoSex` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PatientInfoMailing` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PatientInfo`
--
ALTER TABLE `PatientInfo`
  ADD PRIMARY KEY (`PatientInfoId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PatientInfo`
--
ALTER TABLE `PatientInfo`
  MODIFY `PatientInfoId` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
