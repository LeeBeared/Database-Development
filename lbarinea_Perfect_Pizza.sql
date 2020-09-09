-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2019 at 03:06 PM
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
-- Database: `lbarinea_Perfect_Pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer`
--

CREATE TABLE `Customer` (
  `CustomerPhoneKey` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CustomerLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CustomerFirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerAddress1` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerAddress2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CustomerCity` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerState` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CustomerZip` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Customer`
--

INSERT INTO `Customer` (`CustomerPhoneKey`, `CustomerLastName`, `CustomerFirstName`, `CustomerAddress1`, `CustomerAddress2`, `CustomerCity`, `CustomerState`, `CustomerZip`) VALUES
('2065552123', 'Lamount', NULL, NULL, '161 South Western Ave', NULL, NULL, 98001),
('2065553252', 'Johnston', NULL, 'Apt. 304', '1215 Terrace Avenue', 'Seattle', 'WA', 98001),
('2065552963', 'Lewis', NULL, NULL, '520 East Lake Way', NULL, NULL, 98002),
('2065553213', 'Andreson', NULL, 'Apt 10', '222 SouthernStreet', NULL, NULL, 98001),
('2065552217', 'Wong', NULL, NULL, '2832 Washington Ave', 'Seattle', 'WA', 98002),
('2065556623', 'Jimenez', NULL, 'Apt 13 B', '1200 Norton Way', NULL, NULL, 98003),
('1478523691', 'Wayne', 'Lee', NULL, '213 South Blvd.', 'Andrews', 'SC', 74589);

-- --------------------------------------------------------

--
-- Table structure for table `CustomerOrder`
--

CREATE TABLE `CustomerOrder` (
  `OrderKey` int(4) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderTime` time NOT NULL,
  `CustomerPhoneKey` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeKey` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `CustomerOrder`
--

INSERT INTO `CustomerOrder` (`OrderKey`, `OrderDate`, `OrderTime`, `CustomerPhoneKey`, `EmployeeKey`) VALUES
(1000, '2014-10-08', '14:15:00', '2065552963', 'cmanning'),
(1001, '2014-10-08', '14:25:00', '2065556623', 'cmanning'),
(1002, '2014-10-08', '14:30:00', '2065552963', 'cmanning'),
(1003, '2014-10-08', '15:15:00', '2065552123', 'skristoph'),
(1004, '2014-10-10', '11:15:00', '2065552217', 'btaylor'),
(1005, '2014-10-10', '12:02:00', '2065556623', 'btaylor'),
(1006, '2014-11-08', '01:00:00', '1478523691', 'cmanning');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Daily_Total`
-- (See below for the actual view)
--
CREATE TABLE `Daily_Total` (
`OrderDate` date
,`Daily_Total` double
);

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `EmployeeKey` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeFirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmployeeHireDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`EmployeeKey`, `EmployeeLastName`, `EmployeeFirstName`, `EmployeeHireDate`) VALUES
('cmanning', 'Manning', 'Carol', '2012-03-12'),
('btaylor', 'Taylor', 'Bob', '2010-04-16'),
('skristoph', 'Kristopherson', 'Stephen', '2014-06-02');

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetail`
--

CREATE TABLE `OrderDetail` (
  `OrderDetailKey` int(4) NOT NULL,
  `OrderKey` int(4) NOT NULL,
  `ProductKey` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `OrderDetailQuantity` int(2) NOT NULL,
  `OrderDetailPriceCharged` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `OrderDetail`
--

INSERT INTO `OrderDetail` (`OrderDetailKey`, `OrderKey`, `ProductKey`, `OrderDetailQuantity`, `OrderDetailPriceCharged`) VALUES
(1, 1000, 'soda', 2, 7.25),
(2, 1000, 'brdstks', 1, 2.5),
(3, 1000, 'specialM', 1, 7.35),
(4, 1001, 'specialL', 1, 15),
(5, 1002, 'soda', 2, 7.25),
(6, 1002, 'basicM', 3, 20),
(7, 1003, 'basicM', 1, 7.35),
(8, 1003, 'top', 4, 4),
(9, 1004, 'basicL', 1, 13.5),
(10, 1005, 'basicM', 2, 14.7),
(11, 1006, 'soda', 1, 3.75);

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE `Product` (
  `ProductKey` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ProductName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ProductUnitSize` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ProductUnitPrice` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`ProductKey`, `ProductName`, `ProductUnitSize`, `ProductUnitPrice`) VALUES
('soda', 'Soda Bottle', '2 Liter Bottle', 3.75),
('brdstks', 'Breadsticks', '8 per pack', 3),
('basicS', 'Basic Pizza Small', '8 inch', 5.35),
('basicM', 'Basic Pizza Medium', '12 inch', 7.35),
('basicL', 'Basic Pizza Large', '18 inch', 13.5),
('specialS', 'Specialty Small', '8 inch', 6.35),
('specialM', 'Specialty Medium', '12 inch', 9.25),
('specialL', 'Specialty Large', '18 inch', 15),
('top', 'Additional Toppings', '1 cup', 1);

-- --------------------------------------------------------

--
-- Structure for view `Daily_Total`
--
DROP TABLE IF EXISTS `Daily_Total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`lbarinea`@`localhost` SQL SECURITY DEFINER VIEW `Daily_Total`  AS  select `CustomerOrder`.`OrderDate` AS `OrderDate`,sum(`OrderDetail`.`OrderDetailPriceCharged`) AS `Daily_Total` from (`CustomerOrder` join `OrderDetail` on((`OrderDetail`.`OrderKey` = `CustomerOrder`.`OrderKey`))) group by `CustomerOrder`.`OrderDate` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Customer`
--
ALTER TABLE `Customer`
  ADD PRIMARY KEY (`CustomerPhoneKey`);

--
-- Indexes for table `CustomerOrder`
--
ALTER TABLE `CustomerOrder`
  ADD PRIMARY KEY (`OrderKey`);

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`EmployeeKey`);

--
-- Indexes for table `OrderDetail`
--
ALTER TABLE `OrderDetail`
  ADD PRIMARY KEY (`OrderDetailKey`);

--
-- Indexes for table `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`ProductKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CustomerOrder`
--
ALTER TABLE `CustomerOrder`
  MODIFY `OrderKey` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1007;

--
-- AUTO_INCREMENT for table `OrderDetail`
--
ALTER TABLE `OrderDetail`
  MODIFY `OrderDetailKey` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
