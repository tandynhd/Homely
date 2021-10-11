-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2021 at 11:12 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `housely_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `AdminFN` varchar(100) NOT NULL,
  `AdminEmail` varchar(100) NOT NULL,
  `AdminUsername` varchar(100) NOT NULL,
  `AdminPass` varchar(100) NOT NULL,
  `AdminUpdationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminFN`, `AdminEmail`, `AdminUsername`, `AdminPass`, `AdminUpdationDate`) VALUES
(1, 'Tandin Dorji', '6222790428@g.siit.tu.ac.th', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '2021-10-11 06:32:07'),
(2, 'Kanokkarn Pinkeaw', '6222790147@g.siit.tu.ac.th', 'Admin2', '21232f297a57a5a743894a0e4a801fc3', '2021-10-10 09:35:17'),
(3, 'Inkies', 'i@gmail.com', 'admin3', '21232f297a57a5a743894a0e4a801fc3', '2021-10-10 09:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `BillID` int(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  `rContID` int(11) NOT NULL,
  `billIssueDate` datetime NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `roomNum` int(11) NOT NULL,
  `PaidStatus` tinyint(1) NOT NULL,
  `evidenceurl` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`BillID`, `staffID`, `rContID`, `billIssueDate`, `Total`, `roomNum`, `PaidStatus`, `evidenceurl`) VALUES
(1, 1, 1, '2021-10-10 20:14:08', '5522.00', 1101, 0, NULL),
(2, 1, 2, '2021-10-10 15:17:33', '7200.00', 1102, 0, NULL),
(3, 1, 3, '2021-10-10 15:19:03', '7068.00', 1103, 0, NULL),
(4, 1, 4, '2021-10-10 15:22:37', '6602.00', 1104, 0, NULL),
(7, 1, 1, '0000-00-00 00:00:00', '0.00', 1101, 0, NULL),
(8, 1, 1, '0000-00-00 00:00:00', '5000.00', 1101, 0, NULL),
(9, 1, 2, '2021-10-11 02:52:29', '6100.00', 1102, 0, NULL),
(10, 1, 3, '2021-10-11 02:58:11', '6600.00', 1103, 0, NULL),
(11, 1, 4, '2021-10-11 03:02:14', '6000.00', 1104, 0, NULL),
(12, 1, 1, '2021-10-11 04:29:05', '6760.00', 1101, 0, NULL),
(13, 1, 1, '2021-10-11 04:32:49', '6760.00', 1101, 0, NULL),
(14, 1, 1, '2021-10-11 04:35:22', '6850.00', 1101, 0, NULL),
(15, 1, 4, '2021-10-11 05:16:44', '9380.00', 1104, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookedservice`
--

CREATE TABLE `bookedservice` (
  `servBookID` int(11) NOT NULL,
  `servID` int(11) NOT NULL,
  `custID` varchar(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  `roomNum` int(11) NOT NULL,
  `servPrice` decimal(10,2) NOT NULL,
  `servStatus` tinyint(1) NOT NULL,
  `servDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookedservice`
--

INSERT INTO `bookedservice` (`servBookID`, `servID`, `custID`, `staffID`, `roomNum`, `servPrice`, `servStatus`, `servDate`) VALUES
(1, 1, 'CID001', 2, 1101, '0.00', 0, '2021-10-04'),
(2, 2, 'CID002', 3, 1102, '500.00', 0, '2021-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `custID` varchar(11) NOT NULL,
  `custName` varchar(100) NOT NULL,
  `custTele` varchar(10) NOT NULL,
  `custEmail` varchar(100) NOT NULL,
  `custPass` varchar(250) NOT NULL,
  `custAddr` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `custID`, `custName`, `custTele`, `custEmail`, `custPass`, `custAddr`) VALUES
(7, 'CID001', 'hong', '0618946633', 't@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Phatumthani,Thailand'),
(8, 'CID002', 'Emotional Oranges', '0976369898', 'k@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Korat,Thailand'),
(9, 'CID003', 'Taylor Swift', '0826218523', 'tyt@g.siit.tu.ac.th', '81dc9bdb52d04dc20036dbd8313ed055', 'Chaingmai,thailand'),
(10, 'CID004', 'Conan Gray', '0973369919', 'hh@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Trang,Thailand'),
(12, 'CID006', 'inkkiew', '0973366359', 'i@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Khonkean,thailand'),
(13, 'CID007', 'dasfjgkhlg', '124356', 'adfgg', '81dc9bdb52d04dc20036dbd8313ed055', 'easrtyru');

-- --------------------------------------------------------

--
-- Table structure for table `roomcontract`
--

CREATE TABLE `roomcontract` (
  `rContID` int(11) NOT NULL,
  `staffID` int(11) NOT NULL,
  `custID` varchar(11) NOT NULL,
  `roomNum` int(11) NOT NULL,
  `contSDate` date NOT NULL,
  `contEDate` date NOT NULL,
  `roomPrice` decimal(10,2) NOT NULL,
  `parkingPrice` decimal(10,2) NOT NULL,
  `InternetPrice` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomcontract`
--

INSERT INTO `roomcontract` (`rContID`, `staffID`, `custID`, `roomNum`, `contSDate`, `contEDate`, `roomPrice`, `parkingPrice`, `InternetPrice`) VALUES
(1, 1, 'CID001', 1101, '2020-11-06', '2021-11-06', '4500.00', '500.00', '0.00'),
(2, 1, 'CID002', 1102, '2020-11-25', '2021-11-25', '5500.00', '0.00', '600.00'),
(3, 1, 'CID003', 1103, '2020-12-25', '2021-12-25', '5500.00', '500.00', '600.00'),
(4, 1, 'CID004', 1104, '2020-12-25', '2021-12-25', '6000.00', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `roomrecord`
--

CREATE TABLE `roomrecord` (
  `roomrecID` int(11) NOT NULL,
  `roomNum` int(11) NOT NULL,
  `electricityUnit` int(11) NOT NULL,
  `waterUnit` int(11) NOT NULL,
  `serviceTotal` int(11) NOT NULL,
  `dRecord` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roomrecord`
--

INSERT INTO `roomrecord` (`roomrecID`, `roomNum`, `electricityUnit`, `waterUnit`, `serviceTotal`, `dRecord`) VALUES
(1, 1101, 32, 3, 0, '2021-09-04'),
(2, 1102, 139, 6, 0, '2021-09-04'),
(3, 1103, 49, 36, 0, '2021-09-04'),
(4, 1104, 56, 10, 0, '2021-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `servID` int(11) NOT NULL,
  `servCataID` varchar(11) NOT NULL,
  `servName` varchar(100) NOT NULL,
  `servDesc` varchar(250) NOT NULL,
  `servthumbnail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`servID`, `servCataID`, `servName`, `servDesc`, `servthumbnail`) VALUES
(1, '1', 'Drywall Repair', 'Cracks from settling, Damage from moisture and Regular wear and tear', 'f2887e554dfd0655877c79e52c7d9efb1633766894jpeg'),
(2, '2', 'Bahtroom Cleaning', 'Includes: Sanitizing Counters and Sinks, Scrubbing Toilets, Cleaning Showers, Mopping Floors, Wiping Down Mirrors', '15e9226f3e918d0de51d9912cea8e9d21633766734jpeg'),
(3, '2', 'Room Cleaning', 'getting your room as clean as it can be', 'fd3a19aa3f3de485a7f628b8aaa4c71e1633766984jpeg'),
(4, '4', 'Market Delivery ', 'Freshly handpicked groceries at your fingertips', '565f28272fc98e0ebb4119182124a54a1633767277jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `servicecatagory`
--

CREATE TABLE `servicecatagory` (
  `servCataID` varchar(11) NOT NULL,
  `servCataName` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `servicecatagory`
--

INSERT INTO `servicecatagory` (`servCataID`, `servCataName`, `status`) VALUES
('1', 'Mechanical Service', 1),
('2', 'Cleaning Service', 1),
('3', 'Moving Service', 1),
('4', 'Delivery Service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `StaffTele` varchar(10) NOT NULL,
  `StaffEmail` varchar(100) NOT NULL,
  `StaffAddr` varchar(250) NOT NULL,
  `StaffSalary` decimal(10,2) NOT NULL,
  `staffContractStart` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `StaffName`, `StaffTele`, `StaffEmail`, `StaffAddr`, `StaffSalary`, `staffContractStart`) VALUES
(1, 'Jay Park', '0614968260', 'JayP@housely.com', '164 Nuzum Court, Arcade, New York, USA, 14009', '30000.00', '2019-10-16'),
(2, 'Groovy Room', '0914942447', 'GroovyEverywhere@housely.com', '575 Lightning Point Drive,Memphis,Tennessee, USA, 38110', '46000.00', '2017-09-29'),
(3, 'LeeHi', '0975239612', 'LeeHi@housely.com', '2637 Shobe Lane, RALEIGH, North Carolina, USA, 27609', '50000.00', '2019-07-04'),
(4, 'Hoody\r\n', '0647121390', 'Hoody@housely.com', '3205 Snyder Avenue, Charlotte, North Carolina, 28273', '18000.00', '2021-10-04'),
(9, 'chacha malone', '0874589632', 'chacha@gmail.com', 'home town cha cha cha', '85410.00', '2021-10-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`BillID`);

--
-- Indexes for table `bookedservice`
--
ALTER TABLE `bookedservice`
  ADD PRIMARY KEY (`servBookID`),
  ADD KEY `fk_10` (`custID`),
  ADD KEY `fk_11` (`servID`),
  ADD KEY `fk_12` (`staffID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roomcontract`
--
ALTER TABLE `roomcontract`
  ADD PRIMARY KEY (`rContID`),
  ADD KEY `fk_1` (`custID`),
  ADD KEY `fk_9` (`staffID`);

--
-- Indexes for table `roomrecord`
--
ALTER TABLE `roomrecord`
  ADD PRIMARY KEY (`roomrecID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`servID`),
  ADD KEY `fk` (`servCataID`);

--
-- Indexes for table `servicecatagory`
--
ALTER TABLE `servicecatagory`
  ADD PRIMARY KEY (`servCataID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `BillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `servID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;