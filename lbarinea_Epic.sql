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
-- Database: `lbarinea_Epic`
--

-- --------------------------------------------------------

--
-- Table structure for table `epicadmin`
--

CREATE TABLE `epicadmin` (
  `admin_id` int(11) NOT NULL,
  `admin_user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `admin_inactive` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epicadmin`
--

INSERT INTO `epicadmin` (`admin_id`, `admin_user_name`, `admin_email`, `admin_password`, `admin_inactive`) VALUES
(22, 'asdasd', 'a@a.com', '$2b$10$.Vcd5uByptCkxqGfasH5kuRUUoI9Uq3CHtNHqG1Vz6nDTUvWAHdDq', b'0'),
(21, 'Admin', 'Admin23@ep.com', '$2b$10$SPhl7T6LB6eDvQg71Iuz1.0ANGhiAOecJyd8ojlqkILGu02VXmheC', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `epiccourses`
--

CREATE TABLE `epiccourses` (
  `course_id` int(11) NOT NULL,
  `course_prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `course_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `course_section` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `semester_id` int(11) NOT NULL,
  `course_started` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `course_entered` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `course_completed` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `course_assignment` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epiccourses`
--

INSERT INTO `epiccourses` (`course_id`, `course_prefix`, `course_number`, `course_section`, `semester_id`, `course_started`, `course_entered`, `course_completed`, `faculty_id`, `course_assignment`) VALUES
(1, 'CRT', '405', 'HJ67', 1, 'YES', 'NO', 'YES', 1, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `epicfaculty`
--

CREATE TABLE `epicfaculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_first` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `faculty_preferred` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `faculty_last` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `faculty_email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `faculty_inactive` varchar(3) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epicfaculty`
--

INSERT INTO `epicfaculty` (`faculty_id`, `faculty_first`, `faculty_preferred`, `faculty_last`, `faculty_email`, `faculty_inactive`) VALUES
(1, 'fef', '', 'bear', 'sdd@.csom', 'YES'),
(2, 'wwd', 'wd', 'dwd', 'DSFDDWD@s.com', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `epicsemster`
--

CREATE TABLE `epicsemster` (
  `semster_id` int(11) NOT NULL,
  `semster_semster` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `semster_year` varchar(9) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epicsemster`
--

INSERT INTO `epicsemster` (`semster_id`, `semster_semster`, `semster_year`) VALUES
(1, 'SPRING', '2019-2020');

-- --------------------------------------------------------

--
-- Table structure for table `epicslo`
--

CREATE TABLE `epicslo` (
  `slo_id` int(11) NOT NULL,
  `slo_type` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `slo_indicator` int(11) NOT NULL,
  `slo_amount_3` int(11) DEFAULT NULL,
  `slo_amount_2` int(11) DEFAULT NULL,
  `slo_amount_1` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epicslo`
--

INSERT INTO `epicslo` (`slo_id`, `slo_type`, `slo_indicator`, `slo_amount_3`, `slo_amount_2`, `slo_amount_1`, `course_id`) VALUES
(139, '2', 2, 0, 0, 0, 1),
(140, '2', 4, 0, 0, 0, 1),
(141, '3', 2, 0, 0, 0, 1),
(142, '1', 1, 1, 2, 3, 1),
(143, '1', 2, 0, 0, 0, 1),
(144, '2', 1, 4, 5, 6, 1),
(138, '2', 1, 2, 2, 2, 1),
(137, '1', 2, 0, 0, 0, 1),
(136, '1', 1, 1, 1, 1, 1),
(145, '2', 2, 0, 0, 0, 1),
(146, '2', 4, 0, 0, 0, 1),
(147, '3', 2, 0, 0, 0, 1),
(148, '1', 1, 3, 4, 1, 1),
(149, '1', 2, 0, 0, 0, 1),
(150, '2', 1, 6, 5, 4, 1),
(151, '2', 2, 0, 0, 0, 1),
(152, '2', 4, 0, 0, 0, 1),
(153, '3', 2, 0, 0, 0, 1),
(154, '1', 1, 3, 2, 1, 1),
(155, '1', 2, 0, 0, 0, 1),
(156, '2', 1, 5, 4, 3, 1),
(157, '2', 2, 0, 0, 0, 1),
(158, '2', 4, 0, 0, 0, 1),
(159, '3', 2, 0, 0, 0, 1),
(160, '1', 1, 3, 2, 1, 1),
(161, '1', 2, 0, 0, 0, 1),
(162, '1', 1, 2, 1, 3, 1),
(163, '1', 1, 0, 0, 1, 1),
(164, '2', 1, 2, 4, 5, 1),
(165, '2', 3, 0, 0, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epicadmin`
--
ALTER TABLE `epicadmin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `epiccourses`
--
ALTER TABLE `epiccourses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `semesterid` (`semester_id`),
  ADD UNIQUE KEY `userid` (`faculty_id`);

--
-- Indexes for table `epicfaculty`
--
ALTER TABLE `epicfaculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `epicsemster`
--
ALTER TABLE `epicsemster`
  ADD PRIMARY KEY (`semster_id`);

--
-- Indexes for table `epicslo`
--
ALTER TABLE `epicslo`
  ADD PRIMARY KEY (`slo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epicadmin`
--
ALTER TABLE `epicadmin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `epiccourses`
--
ALTER TABLE `epiccourses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `epicfaculty`
--
ALTER TABLE `epicfaculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `epicsemster`
--
ALTER TABLE `epicsemster`
  MODIFY `semster_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `epicslo`
--
ALTER TABLE `epicslo`
  MODIFY `slo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
