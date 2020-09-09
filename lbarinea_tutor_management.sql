-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 02, 2019 at 01:40 PM
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
-- Database: `lbarinea_tutor_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `CourseKey` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `CourseName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CourseDescription` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`CourseKey`, `CourseName`, `CourseDescription`) VALUES
('ITC220    ', 'Introduction to Database', 'Overview of database design and topics'),
('ITC226    ', 'DatabaseAdministration', 'SQL Server Administration'),
('ITC255    ', 'Systems Analysis', 'Systems Analysis and Design'),
('MAT107    ', 'Applied Math', 'Applied Math for Computers'),
('WEB110    ', 'Beginning Web Page Design', 'Basic xhtml'),
('ITC110', 'Beginning Programming', 'Programming using C# '),
(' ENG211', 'Technical Writing', 'Technical writing for information technology');

-- --------------------------------------------------------

--
-- Table structure for table `Ethnicity`
--

CREATE TABLE `Ethnicity` (
  `EthnicityKey` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `EthnicityDescription` char(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Ethnicity`
--

INSERT INTO `Ethnicity` (`EthnicityKey`, `EthnicityDescription`) VALUES
('Caucasian', 'White, European origin'),
('Asian', 'Chinese,Japanese, Korean,Southeast Asian'),
('AfrAmerica', 'African American or of African origin'),
('Hispanic', 'Mexican, Central, or South American, Caribbean'),
('Pacific', 'Pacific islander'),
('Mideast', 'Arabic or Persian'),
('Other', 'Other or not disclosed');

-- --------------------------------------------------------

--
-- Table structure for table `RequestKey`
--

CREATE TABLE `RequestKey` (
  `RequestKey` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `CourseKey` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `RequestDate` date NOT NULL,
  `RequestStatus` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `StudentKey` char(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RequestKey`
--

INSERT INTO `RequestKey` (`RequestKey`, `CourseKey`, `RequestDate`, `RequestStatus`, `StudentKey`) VALUES
('1001', 'ITC226', '2013-01-05', 'Active', '009001010');

-- --------------------------------------------------------

--
-- Table structure for table `RequestNote`
--

CREATE TABLE `RequestNote` (
  `RequestNoteKey` datetime NOT NULL,
  `RequestNoteText` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `RequestKey` char(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `RequestNote`
--

INSERT INTO `RequestNote` (`RequestNoteKey`, `RequestNoteText`, `RequestKey`) VALUES
('2013-01-06 14:00:00', 'Only offered once an year and not a lot of requests for this\r\nclass', '1001'),
('2013-01-10 10:00:00', 'No students available, because a capstone class, would have\r\nto get someone off campus', '1001');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION`
--

CREATE TABLE `SESSION` (
  `SessionDateKey` date NOT NULL,
  `SessionTimeKey` time NOT NULL,
  `TutorKey` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `CourseKey` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `StudentKey` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SessionStatus` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SessionMaterialCovered` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SESSION`
--

INSERT INTO `SESSION` (`SessionDateKey`, `SessionTimeKey`, `TutorKey`, `CourseKey`, `StudentKey`, `SessionStatus`, `SessionMaterialCovered`) VALUES
('2013-10-20', '14:00:00', '980010001', 'WEB110', '990001000', 'C', 'CSS'),
('2013-10-20', '13:00:00', '980010003', 'ITC110', '990001000', 'C', 'For next loop'),
('2013-11-20', '10:30:00', '980010001', 'ITC220', '990001002', 'C', 'Relations'),
('2013-11-05', '10:00:00', '980010001', 'ITC220', NULL, 'NS', NULL),
('2013-11-10', '13:00:00', '980010004', 'MAT107', '990001004', 'C', 'Binary Numbers'),
('2013-11-10', '14:00:00', '980010001', 'WEB110', '990001000', 'C', 'Web Forms'),
('2014-01-15', '09:30:00', '980010002', 'ITC255', '990001000', 'C', 'Use Cases'),
('2014-01-20', '11:00:00', '980010002', 'ENG211', '990001003', 'C', 'Document structure'),
('2014-01-22', '14:00:00', '980010004', 'MAT107', '990001005', 'NS', NULL),
('2014-02-05', '10:30:00', '980010002', 'ITC255', '990001000', 'C', 'Feasibility'),
('2014-02-10', '13:30:00', '980010004', 'MAT107', NULL, NULL, NULL),
('2014-02-10', '14:00:00', '980010004', 'MAT107', NULL, NULL, NULL),
('2014-02-13', '10:00:00', '980010002', 'ITC255', NULL, NULL, NULL),
('2014-02-14', '11:00:00', '980010002', 'ENG211', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `StudentKey` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `StudentLastName` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `StudentFirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StudentEmail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StudentPhone` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StudentGender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `StudentAge` int(11) DEFAULT NULL,
  `StudentCitizen` bit(1) DEFAULT NULL,
  `StudentWorkforceRetraining` bit(1) DEFAULT NULL,
  `EthnicityKey` char(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`StudentKey`, `StudentLastName`, `StudentFirstName`, `StudentEmail`, `StudentPhone`, `StudentGender`, `StudentAge`, `StudentCitizen`, `StudentWorkforceRetraining`, `EthnicityKey`) VALUES
('990001000', 'Peterson', 'Laura', NULL, '2065559318', 'F', 23, b'0', b'0', 'Caucasian'),
('990001002', 'Carter', 'Shannon', 'Shannon@Carter.Org', '2065554301', 'F', 32, b'0', b'0', 'AfrAmer'),
('990001003', 'Martinez', 'Sandy', 'sandym@gmail.com', '2065551158', 'F', 18, b'0', b'0', 'Hispanic'),
('990001004', 'Nguyen', 'Lu', 'lstar@yahoo.com', '2065552938', 'M', 19, b'0', b'0', 'Asian'),
('990001005', 'Zukof', 'Mark', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('990001006', 'Taylor', 'Patty', 'P147@marketplace.com', '2065552076', 'F', 42, b'0', b'0', 'Caucasian'),
('990001007', 'Thomas', 'Lawrence', NULL, NULL, 'M', 24, b'0', b'0', 'Caucasian'),
('980001008', 'Bradbury', 'Ron', 'rbradbury@mars.org', '2065557296', 'M', 53, b'0', b'0', 'Caucasian'),
('980001009', 'Carlos', 'Juan', 'Carlos23@hotmail.com', '2065559134', 'M', 25, b'0', b'0', 'Hispanic'),
('009001010', 'Min', 'Ly', 'lymin@hotmail.com', '9316bb642f', 'F', 20, b'0', b'0', 'Asian');

-- --------------------------------------------------------

--
-- Table structure for table `StudentCourse`
--

CREATE TABLE `StudentCourse` (
  `StudentKey` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `CourseKey` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `StudentCourseQuarter` char(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `StudentCourse`
--

INSERT INTO `StudentCourse` (`StudentKey`, `CourseKey`, `StudentCourseQuarter`) VALUES
('009001010', 'ENG211', 'Winter14'),
('009001010', 'ITC255', 'Winter14'),
('009001010', 'MAT107', 'Winter14'),
('980001009', 'ITC110', 'Fall13'),
('980001009', 'ITC220', 'Fall13'),
('980001009', 'MAT107', 'Fall13'),
('990001000', 'ITC110', 'Fall13'),
('990001000', 'ITC220', 'Fall13'),
('990001000', 'ITC255', 'Winter14'),
('990001000', 'MAT107', 'Winter14'),
('990001000', 'WEB110', 'Fall13'),
('990001002', 'ENG211', 'Winter14'),
('990001002', 'ITC110', 'Fall13'),
('990001002', 'ITC220', 'Fall13'),
('990001002', 'ITC255', 'Winter14'),
('990001003', 'ENG211', 'ITC255'),
('990001003', 'ITC255', 'Winter14'),
('990001004', 'MAT107', 'Fall13'),
('990001004', 'WEB110', 'Fall13'),
('990001005', 'MAT107', 'Winter14'),
('990001007', 'ITC110', 'Fall13');

-- --------------------------------------------------------

--
-- Table structure for table `Tutor`
--

CREATE TABLE `Tutor` (
  `TutorKey` int(11) NOT NULL,
  `TutorLastName` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `TutorFirstName` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TutorPhone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TutorEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TutorHireDate` date NOT NULL,
  `TutorStatus` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Tutor`
--

INSERT INTO `Tutor` (`TutorKey`, `TutorLastName`, `TutorFirstName`, `TutorPhone`, `TutorEmail`, `TutorHireDate`, `TutorStatus`) VALUES
(980010000, 'Roberts', 'Martha', '2065551467', 'mroberts@yahoo.com', '2019-10-15', 'active'),
(980010001, 'Susan', 'Brown', '206553528', 'sb4@hotmail.com', '2013-02-01', 'active'),
(980010002, 'Foster', 'Daniel', '2065553490', 'foster32@aol.com', '2014-03-02', 'active'),
(980010003, 'Anderson', 'Nathan', '3065556320', NULL, '2014-03-02', 'Inactive'),
(980010004, 'Lewis', 'Ginger', '2065552985', 'ginger@hotmail.com', '2014-03-15', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `TutorCourse`
--

CREATE TABLE `TutorCourse` (
  `TutorKey` int(11) NOT NULL,
  `CourseKey` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `TutorCourse`
--

INSERT INTO `TutorCourse` (`TutorKey`, `CourseKey`) VALUES
(980010000, 'WEB110'),
(980010001, 'ITC220'),
(980010001, 'WEB110'),
(980010002, 'ENG211'),
(980010002, 'ITC255'),
(980010003, 'ITC110'),
(980010004, 'MAT107');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`CourseKey`);

--
-- Indexes for table `Ethnicity`
--
ALTER TABLE `Ethnicity`
  ADD PRIMARY KEY (`EthnicityKey`);

--
-- Indexes for table `SESSION`
--
ALTER TABLE `SESSION`
  ADD PRIMARY KEY (`SessionDateKey`,`SessionTimeKey`,`TutorKey`,`CourseKey`) USING BTREE;

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`StudentKey`);

--
-- Indexes for table `StudentCourse`
--
ALTER TABLE `StudentCourse`
  ADD PRIMARY KEY (`StudentKey`,`CourseKey`,`StudentCourseQuarter`);

--
-- Indexes for table `Tutor`
--
ALTER TABLE `Tutor`
  ADD PRIMARY KEY (`TutorKey`);

--
-- Indexes for table `TutorCourse`
--
ALTER TABLE `TutorCourse`
  ADD PRIMARY KEY (`TutorKey`,`CourseKey`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Tutor`
--
ALTER TABLE `Tutor`
  MODIFY `TutorKey` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980010005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
