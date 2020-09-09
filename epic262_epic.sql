-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2020 at 06:27 AM
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
-- Database: `epic262_epic`
--

-- --------------------------------------------------------

--
-- Table structure for table `epiccourses`
--

CREATE TABLE `epiccourses` (
  `courseid` int(11) NOT NULL,
  `courseprefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `coursenumber` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `coursesection` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `coursesemester` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `courseyear` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `coursestarted` tinyint(4) NOT NULL,
  `courseentered` tinyint(4) NOT NULL,
  `courseinstructor` int(11) NOT NULL,
  `courseassignment` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epiccourses`
--

INSERT INTO `epiccourses` (`courseid`, `courseprefix`, `coursenumber`, `coursesection`, `coursesemester`, `courseyear`, `coursestarted`, `courseentered`, `courseinstructor`, `courseassignment`) VALUES
(5, 'ACC', '101', 'I01', 'Fall', '2019', 0, 1, 7, 'The students had to write a letter to a client explaining the different financial statements and how they benefit the business.'),
(6, 'HUS', '250', 'ZZZ', 'Fall', '2019', 0, 1, 6, 'HUS 250 Final Presentation'),
(4, 'ACC', '101', 'C01', 'Fall', '2019', 0, 1, 11, 'Students responded to a client by email on the connection between the financial statements.'),
(2, 'CPT', '162', 'H50', 'Fall', '2019', 0, 1, 1, 'Students were tasked with presenting a redesigned website for gathering prospective patients for a local health care provider. The EPIC assignment was to present this website and all it\'s features to the class, as well as a representative of the provider, as well as answer any questions directed by the representative.'),
(3, 'CPT', '162', 'H01', 'Fall', '2019', 0, 1, 1, 'Students were tasked with presenting a redesigned website for gathering prospective patients for a local health care provider.  The EPIC assignment was to present this website and all it\'s features to the class, as well as a representative of the provider, as well as answer any questions directed by the representative.'),
(9, 'ACC', '101', 'I02', 'Fall', '2019', 0, 1, 7, 'The students had to write a letter to a client explaining the different financial statements and how they benefit the business.'),
(10, 'ACC', '101', 'S01', 'Fall', '2019', 0, 1, 8, ''),
(11, 'BIO', '225', 'H01', 'Fall', '2019', 0, 1, 9, ''),
(12, 'BIO', '225', 'H51', 'Fall', '2019', 0, 0, 9, ''),
(13, 'ACC', '101', 'C02', 'Fall', '2019', 0, 1, 8, ''),
(14, 'ACC', '101', 'I03', 'Fall', '2019', 0, 1, 11, 'Students responded to a client by email that described the connection between the financial statements.'),
(15, 'BIO', '225', 'C01', 'Fall', '2019', 0, 1, 12, 'Kirby Bauer Antibiotic Susceptibility Lab Report (C01 Section)\r\nSLO 1.1 = Formatting\r\nSLO 2.2 = Abstract Section of Paper\r\nSLO 3.2 = Procedure Section of Paper '),
(16, 'BIO', '225', 'C02', 'Fall', '2019', 0, 1, 12, 'Kirby Bauer Antibiotic Susceptibility Lab Report (C02) Section\r\nSLO 1.1= Formatting\r\nSLO 2.2 = Abstract portion of paper\r\nSLO 3.2 = Procedure portion of paper'),
(17, 'BIO', '225', 'G01', 'Fall', '2019', 0, 1, 12, 'Kirby Bauer Antibiotic Susceptibility Lab Report (G01) Section.\r\nSLO 1.1 = Formatting of paper\r\nSLO 2.2 = Abstract section of paper\r\nSLO 3.2 = Procedure section of paper '),
(18, 'RAD', '210', 'S01', 'Fall', '2019', 0, 0, 13, ''),
(19, 'SPT', '102', 'S01', 'Fall', '2019', 0, 1, 14, 'Oral presentations for Sports Tourism 102. Students used Fodors.com and picked any city that are, or could be good, for sports tourism in that city. They had to include the four supply components necessary to make the city a sports tourism destination. These included natural resources, built environment, operating sectors and spirit of hospitality.'),
(20, 'ENG', '241', 'H01', 'Fall', '2019', 0, 1, 15, 'EPIC Research Presentations'),
(21, 'BIO', '225', 'C03', 'Fall', '2019', 0, 0, 16, ''),
(22, 'BIO', '225', 'H50', 'Fall', '2019', 0, 0, 12, ''),
(23, 'BIO', '225', 'S01', 'Fall', '2019', 0, 0, 16, ''),
(24, 'BIO', '225', 'S02', 'Fall', '2019', 0, 0, 16, ''),
(25, 'BIO', '225', 'S03', 'Fall', '2019', 0, 0, 16, ''),
(26, 'CRJ', '130', 'H01', 'Fall', '2019', 0, 1, 18, 'SLO 1 (Indicator 1): Student required to send professional email to class Professor.\r\nSLO 2 (Indicator 1): Student evaluated on the development of a 350 word LE Mission Statement.\r\nSLO 3 (Indicator 2): Student required to present a short oral brief on the Organization of a PD. '),
(27, 'CRJ', '130', 'H02', 'Fall', '2019', 0, 1, 18, 'SLO 1 (Indicator 1): Student required to send professional email to class Professor.\r\nSLO 2 (Indicator 1): Student evaluated on the development of a 350 word LE Mission Statement.\r\nSLO 3 (Indicator 2): Student required to present a short oral brief on the Organization of a PD.    '),
(28, 'CRJ', '130', 'H03', 'Fall', '2019', 0, 0, 18, ''),
(29, 'CPT', '262', 'H01', 'Spring', '2020', 0, 0, 19, ''),
(30, 'CPT', '262', 'H01', 'Spring', '2020', 0, 0, 19, ''),
(31, 'CPT', '202', 'H02', 'Spring', '2020', 0, 0, 19, ''),
(32, 'CPT', '201', 'H02', 'Fall', '2019', 0, 0, 19, ''),
(33, 'SEAN ', 'v', 'TEST', 'Spring', '2020', 0, 0, 23, ''),
(34, 'SEAN', 'v', 'TEST', 'Spring', '2020', 0, 0, 23, ''),
(35, '          ', 'sdfghb', 'TEST', 'Spring', '2020', 0, 0, 1, ''),
(36, 'F99', 'kk99', '78K', 'Summer', '2021', 0, 0, 29, ''),
(37, '544', '535', '453', 'Spring', '2020', 0, 0, 38, ''),
(38, 'TET', 'tes', 'TEST', 'Summer', '2021', 0, 0, 18, ''),
(39, '432', '423', '42', 'Spring', '2019', 0, 0, 22, ''),
(40, 'CPT', '262', 'H01', 'Spring', '2020', 0, 0, 1, ''),
(41, 'CRJ', '130', 'H01', 'Fall', '2019', 0, 0, 1, ''),
(42, 'BIO', '225', 'H50', 'Fall', '2019', 0, 0, 8, ''),
(43, 'CPT', 'aaa', 'H01', 'Spring', '2019', 0, 0, 39, ''),
(44, '101', 'aaa', 'H01', 'Spring', '2019', 0, 0, 41, ''),
(45, 'ENG', '2000', 'I11', 'Spring', '2021', 0, 0, 1, ''),
(46, 'BIO', '225', 'H51', 'Fall', '2019', 0, 0, 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `epicresults`
--

CREATE TABLE `epicresults` (
  `resultid` int(11) NOT NULL,
  `resultslo` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `resultindicator` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `resultthree` int(11) NOT NULL DEFAULT '0',
  `resulttwo` int(11) NOT NULL DEFAULT '0',
  `resultone` int(11) NOT NULL DEFAULT '0',
  `resultcourse` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epicresults`
--

INSERT INTO `epicresults` (`resultid`, `resultslo`, `resultindicator`, `resultthree`, `resulttwo`, `resultone`, `resultcourse`) VALUES
(32, 'SLO 2', '2', 14, 18, 5, 11),
(33, 'SLO 3', '2', 26, 8, 3, 11),
(54, 'SLO 1', '1', 3, 11, 3, 27),
(41, 'SLO 3', '2', 12, 14, 1, 13),
(40, 'SLO 2', '1', 8, 12, 7, 13),
(39, 'SLO 1', '2', 22, 4, 1, 13),
(38, 'SLO 3', '2', 14, 10, 1, 10),
(37, 'SLO 2', '1', 13, 10, 2, 10),
(48, 'SLO 1', '3', 6, 5, 0, 19),
(55, 'SLO 2', '1', 9, 2, 6, 27),
(49, 'SLO 2', '3', 8, 3, 0, 19),
(50, 'SLO 3', '1', 9, 2, 0, 19),
(51, 'SLO 1', '2', 5, 13, 2, 20),
(52, 'SLO 2', '3', 11, 8, 1, 20),
(53, 'SLO 3', '2', 9, 10, 1, 20),
(56, 'SLO 3', '2', 6, 8, 3, 27),
(57, 'SLO 1', '1', 2, 5, 12, 26),
(58, 'SLO 2', '1', 5, 6, 8, 26),
(59, 'SLO 3', '1', 0, 6, 13, 26),
(60, 'SLO 1', '1', 4, 3, 1, 17),
(61, 'SLO 2', '2', 6, 2, 0, 17),
(62, 'SLO 3', '2', 2, 3, 3, 17),
(63, 'SLO 1', '1', 14, 2, 2, 15),
(64, 'SLO 2', '2', 17, 1, 0, 15),
(65, 'SLO 3', '2', 9, 4, 5, 15),
(66, 'SLO 1', '1', 10, 10, 1, 16),
(67, 'SLO 2', '2', 20, 0, 1, 16),
(68, 'SLO 3', '2', 8, 10, 3, 16),
(69, 'SLO 1', '1', 5, 8, 0, 5),
(70, 'SLO 1', '2', 5, 8, 0, 5),
(71, 'SLO 1', '3', 5, 8, 0, 5),
(72, 'SLO 2', '1', 3, 9, 1, 5),
(73, 'SLO 2', '2', 3, 9, 1, 5),
(74, 'SLO 2', '3', 3, 9, 1, 5),
(75, 'SLO 2', '4', 3, 9, 1, 5),
(76, 'SLO 3', '1', 12, 1, 0, 5),
(77, 'SLO 3', '2', 12, 1, 0, 5),
(78, 'SLO 3', '3', 12, 1, 0, 5),
(79, 'SLO 3', '4', 12, 1, 0, 5),
(80, 'SLO 1', '1', 8, 7, 0, 9),
(81, 'SLO 1', '2', 8, 7, 0, 9),
(82, 'SLO 1', '3', 8, 7, 0, 9),
(83, 'SLO 2', '1', 15, 0, 0, 9),
(84, 'SLO 2', '2', 15, 0, 0, 9),
(85, 'SLO 2', '3', 15, 0, 0, 9),
(86, 'SLO 2', '4', 15, 0, 0, 9),
(87, 'SLO 3', '1', 6, 7, 1, 9),
(88, 'SLO 3', '2', 6, 7, 1, 9),
(89, 'SLO 3', '3', 6, 7, 1, 9),
(90, 'SLO 3', '4', 6, 7, 1, 9),
(91, 'SLO 1', '2', 5, 2, 0, 6),
(92, 'SLO 2', '3', 6, 1, 0, 6),
(93, 'SLO 2', '4', 4, 3, 0, 6),
(94, 'SLO 3', '4', 6, 1, 0, 6),
(95, 'SLO 1', '2', 8, 3, 2, 3),
(96, 'SLO 1', '3', 9, 4, 0, 3),
(97, 'SLO 2', '2', 4, 9, 0, 3),
(98, 'SLO 2', '4', 4, 9, 0, 3),
(99, 'SLO 3', '2', 3, 10, 0, 3),
(100, 'SLO 1', '2', 4, 4, 1, 2),
(101, 'SLO 1', '3', 4, 4, 1, 2),
(102, 'SLO 2', '2', 4, 5, 0, 2),
(103, 'SLO 2', '4', 5, 4, 0, 2),
(104, 'SLO 3', '2', 1, 8, 0, 2),
(105, 'SLO 1', '3', 9, 2, 1, 14),
(106, 'SLO 2', '1', 8, 2, 2, 14),
(107, 'SLO 3', '2', 6, 5, 1, 14),
(108, 'SLO 1', '2', 9, 8, 4, 4),
(109, 'SLO 2', '1', 14, 6, 1, 4),
(110, 'SLO 3', '2', 13, 6, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `epicusers`
--

CREATE TABLE `epicusers` (
  `userid` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `useremail` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `userpassword` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `useradmin` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `epicusers`
--

INSERT INTO `epicusers` (`userid`, `username`, `useremail`, `userpassword`, `useradmin`) VALUES
(5, 'Test User 1', 'tu1@hgtc.edu', 'zzzzz', 0),
(1, 'Admin Test', 'admintest@hgtc.edu', '$2y$12$jmpIaw4hARr4gQAQ4/4uSOKBU4oeB7k9Xf4Ntrkxq26KB2t.x62K2', 1),
(19, 'Student Test', 'studenttest@hgtc.edu', '$2y$12$9jcUA.jQZRlENLJbvubq7.bB4eVOTePApq.iG6xABEq.Bh/ytP8Ju', 1),
(6, 'Test User 3', 'Test User 3@hgtc.edu', 'zzzzz', 0),
(7, 'Test User 4', 'Test User 4@hgtc.edu', 'zzzzz', 0),
(8, 'Test User 5', 'Test User 5@hgtc.edu', 'zzzzz', 0),
(9, 'Test User 6', 'Test User 6@hgtc.edu', 'zzzzz', 0),
(12, 'Test User 7', 'Test User7@hgtc.edu', 'zzzzz', 0),
(11, 'Test User 7', 'Test User 7@hgtc.edu', 'zzzzz', 0),
(13, 'Test User8', 'Test User 8@hgtc.edu', 'zzzzz', 0),
(14, 'Test User 9', 'Test User 9@hgtc.edu', 'zzzzz', 0),
(15, 'Test User 10', 'Test User 10@hgtc.edu', 'zzzzz', 0),
(16, 'Test User 11', 'Test User 11@hgtc.edu', 'zzzzz', 0),
(17, 'Test User 1', 'Test User 11@hgtc.edu', 'zzzzz', 0),
(18, 'Test User 12', 'Test User 12@hgtc.edu', 'zzzzz', 0),
(20, 'Test User 13', 'TestUser13@hgtc.edu', 'zzzzz', 0),
(21, 'Test User 13', 'TestUser13@hgtc.edu', 'zzzzz', 0),
(22, 'corey', 'corey@test.hgtc.edu', 'zzzzz', 0),
(23, 'Sean T', 'seat$%^&@testing.ca', 'zzzzz', 0),
(24, 'Sean T', 'sean test2â”€â–€â–@gmail.gov', 'zzzzz', 0),
(25, 'Sean T', 'sean test2â”€â–€â–@gmail.gov', 'zzzzz', 0),
(26, 'Sean', 'lk;j;lkj', 'zzzzz', 0),
(27, 'whitespace             check', 'Sean T', 'zzzzz', 0),
(28, 'whitespace             check', 'Sean                        T', 'zzzzz', 0),
(29, 'faculty 99', 'f99@faculty.hgtc.edu', 'zzzzz', 0),
(30, 'faculty 99', 'f99.fff', 'zzzzz', 0),
(31, 'g', 'f99.fff', 'zzzzz', 0),
(32, '.', '.', 'zzzzz', 0),
(33, 'Test User 14', 'TestUser14@hgtc.edu', 'zzzzz', 0),
(34, 'Test User 14', 'TestUser14@hgtc.edu', 'zzzzz', 0),
(35, 'Test User 15', 'TestUser15@hgtc.edu', 'zzzzz', 0),
(36, 'j', 'd', 'zzzzz', 0),
(37, 'Test User 16', 'TestUser16@hgtc.eduContinuationForTestingPurposesPleaseDon\'t', 'zzzzz', 0),
(38, 'test', 'test', 'zzzzz', 0),
(39, 'Leslie', 'l.com', 'zzzzz', 0),
(40, 'Leslie', 'l@l.com', 'zzzzz', 0),
(41, 'Leslie', 'l@l.com', 'zzzzz', 0),
(42, 'c', 'c', 'zzzzz', 0),
(43, 'Tom', 'Tom@tom.tom.edu', 'zzzzz', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epiccourses`
--
ALTER TABLE `epiccourses`
  ADD PRIMARY KEY (`courseid`);

--
-- Indexes for table `epicresults`
--
ALTER TABLE `epicresults`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `epicusers`
--
ALTER TABLE `epicusers`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epiccourses`
--
ALTER TABLE `epiccourses`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `epicresults`
--
ALTER TABLE `epicresults`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `epicusers`
--
ALTER TABLE `epicusers`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
