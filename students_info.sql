-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 06:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `students_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `class6`
--

CREATE TABLE `class6` (
  `Enrollment_ID` bigint(20) NOT NULL,
  `Roll_No` int(11) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Mobile_No` bigint(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Fathers_Name` varchar(50) DEFAULT NULL,
  `Mothers_Name` varchar(50) DEFAULT NULL,
  `Parents_contact_no` bigint(20) NOT NULL,
  `Email_Address` varchar(256) DEFAULT NULL,
  `Password` varchar(256) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class6`
--

INSERT INTO `class6` (`Enrollment_ID`, `Roll_No`, `Name`, `Mobile_No`, `Address`, `Gender`, `Fathers_Name`, `Mothers_Name`, `Parents_contact_no`, `Email_Address`, `Password`, `dateofbirth`) VALUES
(74920030, 1, 'rehan', 9511927355, '583', 'male', 'Bashir Husain', 'Saleha', 1234567890, 'rehan.br.10@gmail.com', 'Abcd@123', '2021-02-22'),
(74920031, 2, 'rahul', 1234567890, '583', 'male', 'Bashir Husain', 'Saleha', 1234567890, 'rahul@gmail.com', 'Rahul@123', '2021-02-26'),
(74920033, 12, 'onkar', 7385307930, '583', 'male', 'Bashir Husain', 'Saleha', 1234567890, 'onkar@gmail.com', 'Onkar@123', '2021-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `class6result`
--

CREATE TABLE `class6result` (
  `Enrollment_ID` bigint(20) NOT NULL,
  `test1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class6result`
--

INSERT INTO `class6result` (`Enrollment_ID`, `test1`) VALUES
(74920030, NULL),
(74920031, NULL),
(74920033, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class7`
--

CREATE TABLE `class7` (
  `Enrollment_ID` bigint(20) NOT NULL,
  `Roll_No` int(11) DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Mobile_No` bigint(20) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Fathers_Name` varchar(50) DEFAULT NULL,
  `Mothers_Name` varchar(50) DEFAULT NULL,
  `Parents_contact_no` bigint(20) NOT NULL,
  `Email_Address` varchar(256) DEFAULT NULL,
  `Password` varchar(256) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `class7result`
--

CREATE TABLE `class7result` (
  `Enrollment_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class6`
--
ALTER TABLE `class6`
  ADD PRIMARY KEY (`Enrollment_ID`);

--
-- Indexes for table `class6result`
--
ALTER TABLE `class6result`
  ADD PRIMARY KEY (`Enrollment_ID`);

--
-- Indexes for table `class7`
--
ALTER TABLE `class7`
  ADD PRIMARY KEY (`Enrollment_ID`);

--
-- Indexes for table `class7result`
--
ALTER TABLE `class7result`
  ADD KEY `Enrollment_ID` (`Enrollment_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class6`
--
ALTER TABLE `class6`
  MODIFY `Enrollment_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74920034;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class6`
--
ALTER TABLE `class6`
  ADD CONSTRAINT `class6_ibfk_1` FOREIGN KEY (`Enrollment_ID`) REFERENCES `project`.`registered_students` (`enrollement_no`);

--
-- Constraints for table `class6result`
--
ALTER TABLE `class6result`
  ADD CONSTRAINT `class6result_ibfk_1` FOREIGN KEY (`Enrollment_ID`) REFERENCES `class6` (`Enrollment_ID`),
  ADD CONSTRAINT `class6result_ibfk_2` FOREIGN KEY (`Enrollment_ID`) REFERENCES `class6` (`Enrollment_ID`);

--
-- Constraints for table `class7result`
--
ALTER TABLE `class7result`
  ADD CONSTRAINT `class7result_ibfk_1` FOREIGN KEY (`Enrollment_ID`) REFERENCES `class7` (`Enrollment_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
