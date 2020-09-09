-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 05, 2019 at 10:44 AM
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
-- Database: `lbarinea_wildwoods_apartments`
--

-- --------------------------------------------------------

--
-- Table structure for table `Apartment`
--

CREATE TABLE `Apartment` (
  `ApartmentKey` int(4) NOT NULL,
  `ApartmentRooms` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `BuildingKey` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Apartment`
--

INSERT INTO `Apartment` (`ApartmentKey`, `ApartmentRooms`, `BuildingKey`) VALUES
(5001, '1 Bath 3 1/2 Beds', 101),
(5002, '3 Beds 2 Baths', 103),
(5003, '4 Beds 2 Baths', 102),
(5004, 'Studio', 102);

-- --------------------------------------------------------

--
-- Table structure for table `Building`
--

CREATE TABLE `Building` (
  `BuildingKey` int(3) NOT NULL,
  `BuildingName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BuildingAddress` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `BuildingCity` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `BuildingState` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `BuildingPostalCode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `BuildingManagerPhone` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Building`
--

INSERT INTO `Building` (`BuildingKey`, `BuildingName`, `BuildingAddress`, `BuildingCity`, `BuildingState`, `BuildingPostalCode`, `BuildingManagerPhone`) VALUES
(101, 'Western Apartments at the Boulevard', '1365 Western Boulevard', 'Boise', 'ID', '1589-83729', '1245894568'),
(102, 'Coastal SuperSize Apartments', '4356 East Street', 'Seattle', 'WA', '98105', '1245853458'),
(103, 'BlueStar Housing Projects', '563 Luther Drive', 'Redmond', 'WA', '5648-98052', '6428753951');

-- --------------------------------------------------------

--
-- Table structure for table `Lease`
--

CREATE TABLE `Lease` (
  `LeaseKey` int(5) NOT NULL,
  `LeaseMonthlyRent` double NOT NULL,
  `LeaseDeposit` double NOT NULL,
  `LeaseStartDate` date NOT NULL,
  `LeaseEndDate` date NOT NULL,
  `ApartmentKey` int(4) NOT NULL,
  `TenantKey` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Lease`
--

INSERT INTO `Lease` (`LeaseKey`, `LeaseMonthlyRent`, `LeaseDeposit`, `LeaseStartDate`, `LeaseEndDate`, `ApartmentKey`, `TenantKey`) VALUES
(10001, 5000, 1500, '2019-01-01', '2019-07-01', 5001, 1001),
(10002, 2500, 750, '2019-01-01', '2020-01-01', 5002, 1002),
(10003, 850, 2000, '2016-01-01', '2017-01-01', 5003, 1003),
(10004, 1425, 3200, '2018-01-01', '2018-07-01', 5004, 1004);

-- --------------------------------------------------------

--
-- Table structure for table `MaintenanceRequest`
--

CREATE TABLE `MaintenanceRequest` (
  `MaintenanceRequestKey` int(4) NOT NULL,
  `MaintenanceRequestDate` date NOT NULL,
  `MaintenanceRequestType` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `MaintenanceRequestDescription` text COLLATE utf8_unicode_ci NOT NULL,
  `LeaseKey` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MaintenanceRequest`
--

INSERT INTO `MaintenanceRequest` (`MaintenanceRequestKey`, `MaintenanceRequestDate`, `MaintenanceRequestType`, `MaintenanceRequestDescription`, `LeaseKey`) VALUES
(7001, '2019-10-15', 'Lighting', 'There seems to be a hole in my ceiling allowing light in where it should not be. I have already sent multiple request before this one please hurry up and fix this problem', 10001),
(7003, '2020-02-04', 'Sound', 'Please fix this problem', 10002);

-- --------------------------------------------------------

--
-- Table structure for table `MaintenanceRequestDetail`
--

CREATE TABLE `MaintenanceRequestDetail` (
  `MaintenanceRequestDetailKey` int(4) NOT NULL,
  `MaintenanceRequestKey` int(4) NOT NULL,
  `MaintenanceRequestDetailAction` text COLLATE utf8_unicode_ci NOT NULL,
  `MaintenanceRequestDetailCost` double NOT NULL,
  `MaintenanceRequestDetailBuildingCost` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MaintenanceRequestDetail`
--

INSERT INTO `MaintenanceRequestDetail` (`MaintenanceRequestDetailKey`, `MaintenanceRequestKey`, `MaintenanceRequestDetailAction`, `MaintenanceRequestDetailCost`, `MaintenanceRequestDetailBuildingCost`) VALUES
(9001, 7001, 'It was fixed by filling in the hole', 100, 250),
(9003, 7003, '*', 250, 800);

-- --------------------------------------------------------

--
-- Table structure for table `RentPayment`
--

CREATE TABLE `RentPayment` (
  `RentPaymentKey` int(4) NOT NULL,
  `RentPaymentDate` date NOT NULL,
  `RentPaymentAmount` double NOT NULL,
  `LeaseKey` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RentPayment`
--

INSERT INTO `RentPayment` (`RentPaymentKey`, `RentPaymentDate`, `RentPaymentAmount`, `LeaseKey`) VALUES
(8001, '2019-02-01', 5000, 10001),
(8002, '2019-03-01', 2500, 10002),
(8003, '2016-02-01', 850, 10003);

-- --------------------------------------------------------

--
-- Table structure for table `Tenant`
--

CREATE TABLE `Tenant` (
  `TenantKey` int(11) NOT NULL,
  `TenantLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenantFirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenantPhone` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tenant`
--

INSERT INTO `Tenant` (`TenantKey`, `TenantLastName`, `TenantFirstName`, `TenantPhone`) VALUES
(1001, 'Bester', NULL, '4523695236'),
(1002, 'Chester', 'Ed', '7458963219'),
(1003, 'Bueford', 'Bear', '8523697418'),
(1004, 'BlueStar', NULL, '8452179630');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Apartment`
--
ALTER TABLE `Apartment`
  ADD PRIMARY KEY (`ApartmentKey`);

--
-- Indexes for table `Building`
--
ALTER TABLE `Building`
  ADD PRIMARY KEY (`BuildingKey`);

--
-- Indexes for table `Lease`
--
ALTER TABLE `Lease`
  ADD PRIMARY KEY (`LeaseKey`);

--
-- Indexes for table `MaintenanceRequest`
--
ALTER TABLE `MaintenanceRequest`
  ADD PRIMARY KEY (`MaintenanceRequestKey`);

--
-- Indexes for table `MaintenanceRequestDetail`
--
ALTER TABLE `MaintenanceRequestDetail`
  ADD PRIMARY KEY (`MaintenanceRequestDetailKey`);

--
-- Indexes for table `RentPayment`
--
ALTER TABLE `RentPayment`
  ADD PRIMARY KEY (`RentPaymentKey`);

--
-- Indexes for table `Tenant`
--
ALTER TABLE `Tenant`
  ADD PRIMARY KEY (`TenantKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Apartment`
--
ALTER TABLE `Apartment`
  MODIFY `ApartmentKey` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5005;

--
-- AUTO_INCREMENT for table `Building`
--
ALTER TABLE `Building`
  MODIFY `BuildingKey` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `Lease`
--
ALTER TABLE `Lease`
  MODIFY `LeaseKey` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- AUTO_INCREMENT for table `MaintenanceRequest`
--
ALTER TABLE `MaintenanceRequest`
  MODIFY `MaintenanceRequestKey` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7005;

--
-- AUTO_INCREMENT for table `MaintenanceRequestDetail`
--
ALTER TABLE `MaintenanceRequestDetail`
  MODIFY `MaintenanceRequestDetailKey` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9004;

--
-- AUTO_INCREMENT for table `RentPayment`
--
ALTER TABLE `RentPayment`
  MODIFY `RentPaymentKey` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8004;

--
-- AUTO_INCREMENT for table `Tenant`
--
ALTER TABLE `Tenant`
  MODIFY `TenantKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
