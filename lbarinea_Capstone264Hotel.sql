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
-- Database: `lbarinea_Capstone264Hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `EmployeeID` int(11) NOT NULL,
  `EmployeeLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeFirstName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeEmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeePassword` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `EmployeeAdmin` tinyint(1) NOT NULL,
  `EmployeeDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`EmployeeID`, `EmployeeLastName`, `EmployeeFirstName`, `EmployeeEmail`, `EmployeePassword`, `EmployeeAdmin`, `EmployeeDeleted`) VALUES
(1, 'Barrineausdsd', 'Leewayne', 'CAP264HOTEL@gmail.com', '$2b$10$HA8Mx/TM0CYlmyYrnLi6yeL2KnE/gIuQXqeuwsA9aOBV7o3Tv6U8G', 0, 0),
(3, 'asda', 'asda', 'jcarman@asdads.com', '$2b$10$Ru87bNutdOIthha037BaCudEQMTK2kT3C2mtZNFiVrQXfSfKxmUq.', 0, 0),
(4, 'test', 'test', 'test@test.com', '$2b$10$IIFJZuRBtrRUfoI0HXKCFOfjTbsN2B.KuSvKwgHNYoUEzwkOCrzp2', 1, 0),
(7, 'asdad', 'ddsd', 'sds@gmail.com', '$2b$10$nBw8Tmug/RLOFYKHhkWQZed1yZZWtKi0hi86IyiFLka2i9dDGwbwi', 1, 1),
(8, 'sdsdsd', 'sdsdsd', 'sdsd@gmail.com', '$2b$10$Y5aq9oyDwwdPoer18.WgD.3WOJUpq36psGRi5UmvR7OU7.K13yktO', 1, 0),
(9, 'sdsd', 'sdsadwwdwddwdw', 'sdsd@gmail.com', '$2b$10$pC/DiJLJs7hJmkXssbo8NO535M4LoQpKo2IHdqdKZ7PwBLP56HZuW', 1, 1),
(10, 'zz', 'zz', 'z@z.com', '$2b$10$QbY.n1Yo1YePs19ZGQiviOj/MeLpD9DjRhSpjmO42i9IcObUiJg/K', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Inventory`
--

CREATE TABLE `Inventory` (
  `InventoryID` int(11) NOT NULL,
  `InventoryName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `InventoryQuantity` int(11) NOT NULL,
  `InventoryPrice` decimal(10,2) NOT NULL DEFAULT '99999.99',
  `InventoryDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Inventory`
--

INSERT INTO `Inventory` (`InventoryID`, `InventoryName`, `InventoryQuantity`, `InventoryPrice`, `InventoryDeleted`) VALUES
(11, 'Water', 12, 25.00, 0),
(10, 'Catfish', 10, 12.00, 0),
(12, 'Baja', 10, 20.00, 0),
(13, 'Hgfds', 12, 15.36, 0),
(14, 'water', 12, 5.99, 0),
(15, 'Blackberries', 1245, 45.54, 0),
(16, 'sdsd', 44, 142.00, 0),
(17, 'fgfg', 10, 45.00, 0),
(18, 'dfdf', 11, 45.00, 0),
(19, 'sdsd', 14, 10.00, 0),
(20, 'ddfdf', 12, 10.00, 0),
(21, 'ffgfg', 20, 30.00, 0),
(22, 'dfd', 10, 45.23, 0),
(23, 'z', 11, 1.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Log`
--

CREATE TABLE `Log` (
  `LogID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `LogDate` date NOT NULL,
  `LogTime` time NOT NULL,
  `LogType` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MenuCategory`
--

CREATE TABLE `MenuCategory` (
  `MenuCategoryID` int(11) NOT NULL,
  `MenuCategoryType` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MenuCategoryDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuCategory`
--

INSERT INTO `MenuCategory` (`MenuCategoryID`, `MenuCategoryType`, `MenuCategoryDeleted`) VALUES
(1, 'Appetizers', 0),
(2, 'Salad', 0),
(6, 'Sides', 0),
(5, 'Entrees', 0),
(7, 'Lunch', 0),
(8, 'Beverages', 0),
(9, 'Desserts', 0),
(10, 'Wine', 0);

-- --------------------------------------------------------

--
-- Table structure for table `MenuItem`
--

CREATE TABLE `MenuItem` (
  `MenuItemID` int(11) NOT NULL,
  `MenuItemName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MenuItemPrice` decimal(10,2) NOT NULL DEFAULT '9999999.99',
  `MenuItemDescription` text COLLATE utf8_unicode_ci,
  `MenuItemAvialable` tinyint(1) NOT NULL DEFAULT '0',
  `MenuCategoryID` int(11) NOT NULL,
  `MenuItemDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `MenuItem`
--

INSERT INTO `MenuItem` (`MenuItemID`, `MenuItemName`, `MenuItemPrice`, `MenuItemDescription`, `MenuItemAvialable`, `MenuCategoryID`, `MenuItemDeleted`) VALUES
(11, 'sdsd', 10.00, 'sdsd', 1, 7, 1),
(12, 'fg', 10.00, 'Drink of the Gods', 1, 8, 0),
(13, 'Bone Marrow', 10.00, 'Marrow from a Calf Bone from an Angus Calf Cow', 0, 1, 0),
(14, 'Blood Wine', 120.00, 'Blood Wine 12 years aged', 1, 10, 0),
(15, 'Blue Slad', 0.30, 'It\'s Green eggs and Ham but it is blue and a salad and not eggs and ham', 1, 2, 0),
(16, 'As', 10.00, 'Blue Balls', 0, 1, 0),
(17, 'caca', 10.00, '', 1, 8, 0),
(18, 'dfef', 10.00, 'sdsd', 1, 1, 0),
(19, 'Hello', 1.00, '', 1, 1, 1),
(20, 'asdasd', 12.00, 'asdaasd', 1, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MenuItemIngredient`
--

CREATE TABLE `MenuItemIngredient` (
  `MenuItemIngredientID` int(11) NOT NULL,
  `MenuItemID` int(11) NOT NULL,
  `InventoryID` int(11) NOT NULL,
  `MenuItemIngredientQuantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OpsHours`
--

CREATE TABLE `OpsHours` (
  `OpsHoursId` int(11) NOT NULL,
  `OpsHoursType` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `OpsHoursStart` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `OpsHoursEnd` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `OpsHours`
--

INSERT INTO `OpsHours` (`OpsHoursId`, `OpsHoursType`, `OpsHoursStart`, `OpsHoursEnd`) VALUES
(2, 'Dinner', '12:12', '16:05'),
(3, 'Lunch', '12:30', '15:30'),
(4, 'Lunch', '12:30', '18:30'),
(5, 'Dinner', '16:30', '19:30'),
(6, 'Dinner', '16:30', '22:30'),
(7, 'Lunch', '11:15', '14:30'),
(10, 'Breakfast', '08:00', '10:00');

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetail`
--

CREATE TABLE `OrderDetail` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `MenuItemID` int(11) NOT NULL,
  `OrderDetailQuantity` int(11) NOT NULL,
  `OrderDetailDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `OrderDetail`
--

INSERT INTO `OrderDetail` (`OrderDetailID`, `OrderID`, `MenuItemID`, `OrderDetailQuantity`, `OrderDetailDeleted`) VALUES
(1, 0, 1, 2, 0),
(2, 3, 1, 0, 0),
(3, 0, 0, 1, 0),
(4, 0, 0, 0, 0),
(5, 4, 1, 12, 0),
(6, 5, 1, 10, 0),
(7, 6, 2, 12, 0),
(8, 7, 2, 2, 0),
(9, 7, 3, 4, 0),
(11, 14, 11, 101, 0),
(12, 16, 15, 10, 0),
(13, 17, 13, 1, 0),
(14, 17, 11, 12, 0),
(15, 17, 14, 1, 0),
(16, 19, 15, 10, 0),
(17, 19, 17, 10, 1),
(18, 19, 17, 2, 0),
(19, 19, 12, 1, 1),
(20, 19, 11, 1, 1),
(21, 21, 15, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `OrderTrans`
--

CREATE TABLE `OrderTrans` (
  `OrderID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `OrderStatus` tinyint(1) NOT NULL,
  `OrderType` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `OrderCharged` decimal(10,2) NOT NULL DEFAULT '999999.99',
  `OrderTableNumber` int(11) DEFAULT NULL,
  `OrderRoomNumber` int(11) DEFAULT NULL,
  `orderDaily` int(5) NOT NULL,
  `orderDate` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `OrderTime` time NOT NULL,
  `OrderTransDeleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `OrderTrans`
--

INSERT INTO `OrderTrans` (`OrderID`, `EmployeeID`, `OrderStatus`, `OrderType`, `OrderCharged`, `OrderTableNumber`, `OrderRoomNumber`, `orderDaily`, `orderDate`, `OrderTime`, `OrderTransDeleted`) VALUES
(16, 1, 0, 'dine-in', 25.00, 1, 0, 1, '2020-04-26', '20:08:07', 0),
(11, 3, 0, 'dine-in', 0.00, 1, 0, 1, '2020-04-23', '11:28:14', 0),
(17, 3, 1, 'dine-in', 50.00, 1, 0, 1, '2020-04-27', '16:08:45', 0),
(14, 1, 1, 'dine-in', 0.00, 1, 0, 4, '2020-04-23', '11:33:22', 0),
(15, 4, 0, 'dine-in', 10.00, 1, 0, 5, '2020-04-23', '11:35:07', 0),
(18, 5, 0, 'dine-in', 10.30, 1, 0, 2, '2020-04-27', '19:01:45', 0),
(19, 8, 1, 'dine-in', 100.00, 1, 0, 3, '2020-04-27', '19:30:57', 0),
(20, 9, 1, 'take-out', 10.00, 1, 0, 4, '2020-04-27', '20:56:36', 0),
(21, 3, 1, 'dine', 1.00, 1, 1, 1, '2020-04-29', '12:50:38', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `Inventory`
--
ALTER TABLE `Inventory`
  ADD PRIMARY KEY (`InventoryID`);

--
-- Indexes for table `Log`
--
ALTER TABLE `Log`
  ADD PRIMARY KEY (`LogID`);

--
-- Indexes for table `MenuCategory`
--
ALTER TABLE `MenuCategory`
  ADD PRIMARY KEY (`MenuCategoryID`);

--
-- Indexes for table `MenuItem`
--
ALTER TABLE `MenuItem`
  ADD PRIMARY KEY (`MenuItemID`);

--
-- Indexes for table `MenuItemIngredient`
--
ALTER TABLE `MenuItemIngredient`
  ADD PRIMARY KEY (`MenuItemIngredientID`);

--
-- Indexes for table `OpsHours`
--
ALTER TABLE `OpsHours`
  ADD PRIMARY KEY (`OpsHoursId`);

--
-- Indexes for table `OrderDetail`
--
ALTER TABLE `OrderDetail`
  ADD PRIMARY KEY (`OrderDetailID`);

--
-- Indexes for table `OrderTrans`
--
ALTER TABLE `OrderTrans`
  ADD PRIMARY KEY (`OrderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Inventory`
--
ALTER TABLE `Inventory`
  MODIFY `InventoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `Log`
--
ALTER TABLE `Log`
  MODIFY `LogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MenuCategory`
--
ALTER TABLE `MenuCategory`
  MODIFY `MenuCategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `MenuItem`
--
ALTER TABLE `MenuItem`
  MODIFY `MenuItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `MenuItemIngredient`
--
ALTER TABLE `MenuItemIngredient`
  MODIFY `MenuItemIngredientID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `OpsHours`
--
ALTER TABLE `OpsHours`
  MODIFY `OpsHoursId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `OrderDetail`
--
ALTER TABLE `OrderDetail`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `OrderTrans`
--
ALTER TABLE `OrderTrans`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
