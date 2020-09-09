-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 03, 2020 at 01:54 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lbarinea_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `cartinfo`
--

CREATE TABLE `cartinfo` (
  `dbcartid` int(11) NOT NULL,
  `dbcartemp` int(11) NOT NULL,
  `dbcartdate` datetime NOT NULL,
  `dbcartdailyid` int(11) NOT NULL,
  `dbcartpickup` int(11) NOT NULL,
  `dbcartmade` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cartinfo`
--

INSERT INTO `cartinfo` (`dbcartid`, `dbcartemp`, `dbcartdate`, `dbcartdailyid`, `dbcartpickup`, `dbcartmade`) VALUES
(28, 22, '2020-03-24 11:04:58', 2, 0, 0),
(29, 25, '2020-03-23 11:10:12', 3, 0, 0),
(30, 27, '2020-03-24 11:17:59', 4, 0, 0),
(31, 38, '2020-03-23 11:18:49', 4, 0, 0),
(33, 14, '2020-03-25 11:48:09', 2, 0, 0),
(34, 14, '2020-03-25 11:48:14', 3, 0, 0),
(35, 14, '2020-03-25 11:48:14', 4, 0, 0),
(36, 14, '2020-03-25 11:48:15', 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customertable`
--

CREATE TABLE `customertable` (
  `dbcustomerid` int(11) NOT NULL,
  `dbcustomername` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dbcustomeraddress` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dbcustomerzip` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dbcustomercredit` decimal(6,2) NOT NULL,
  `dbcustomeremail` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customertable`
--

INSERT INTO `customertable` (`dbcustomerid`, `dbcustomername`, `dbcustomeraddress`, `dbcustomerzip`, `dbcustomercredit`, `dbcustomeremail`) VALUES
(1, '1', '1', '1', 1.00, '1');

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

-- --------------------------------------------------------

--
-- Table structure for table `employeetypes`
--

CREATE TABLE `employeetypes` (
  `dbemptypeid` int(11) NOT NULL,
  `dbemptypename` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employeetypes`
--

INSERT INTO `employeetypes` (`dbemptypeid`, `dbemptypename`) VALUES
(1, 'Manager'),
(2, 'Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartinfo`
--
ALTER TABLE `cartinfo`
  ADD PRIMARY KEY (`dbcartid`);

--
-- Indexes for table `customertable`
--
ALTER TABLE `customertable`
  ADD PRIMARY KEY (`dbcustomerid`);

--
-- Indexes for table `employeetable`
--
ALTER TABLE `employeetable`
  ADD PRIMARY KEY (`dbemployeekey`);

--
-- Indexes for table `employeetypes`
--
ALTER TABLE `employeetypes`
  ADD PRIMARY KEY (`dbemptypeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartinfo`
--
ALTER TABLE `cartinfo`
  MODIFY `dbcartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `customertable`
--
ALTER TABLE `customertable`
  MODIFY `dbcustomerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employeetable`
--
ALTER TABLE `employeetable`
  MODIFY `dbemployeekey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employeetypes`
--
ALTER TABLE `employeetypes`
  MODIFY `dbemptypeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
