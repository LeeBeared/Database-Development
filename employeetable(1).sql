-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2020 at 07:58 AM
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
-- Database: `jcarman1_cpt262`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeetable`
--

CREATE TABLE `employeetable` (
  `dbemployeekey` int(11) NOT NULL,
  `dbemployeeid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dbemployeename` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dbemployeeemail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dbemployeephone` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `dbemployeesalary` double(10,2) NOT NULL,
  `dbemployeemailer` tinyint(1) NOT NULL,
  `dbemployeetype` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employeetable`
--

INSERT INTO `employeetable` (`dbemployeekey`, `dbemployeeid`, `dbemployeename`, `dbemployeeemail`, `dbemployeephone`, `dbemployeesalary`, `dbemployeemailer`, `dbemployeetype`) VALUES
(14, 'ZxZx', 'ZxZx', 'ZxZx', 'ZxZx@asddfas', 12.00, 1, 1),
(23, 'zzzzzzzzzz', 'aaaaaaaaaaaa', 'phone4', 'email1@amil.', 12.00, 0, 1),
(22, 'hello111', 'name1111', 'mmmmmmmf', 'email1@amil.', 1400.00, 0, 2),
(15, 'test', 'test2', '123456789', 'test@test.co', 9999.99, 0, 2),
(16, 'The ID', 'The Name', 'thephone', 'Theemail@ema', 9999.99, 0, 2),
(17, 'newid', 'newname', 'new@email.com', '123456789', 12345678.00, 0, 2),
(21, 'sdfsdffsd', 'name1sas', 'phone1', 'email1@amil.', 1200.00, 1, 1),
(24, 'Jsmith21', 'John smith', '8675309', 'john@smith.c', 24265.00, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employeetable`
--
ALTER TABLE `employeetable`
  ADD PRIMARY KEY (`dbemployeekey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employeetable`
--
ALTER TABLE `employeetable`
  MODIFY `dbemployeekey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
