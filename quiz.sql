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
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `eng6`
--

CREATE TABLE `eng6` (
  `qid` int(11) NOT NULL,
  `chapter_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correctoption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eng6`
--

INSERT INTO `eng6` (`qid`, `chapter_no`, `question`, `option1`, `option2`, `option3`, `option4`, `correctoption`) VALUES
(1, 1, 'What is capital of India ?', 'A', 'B', 'C', 'D', 'B'),
(2, 1, 'What is capital of Maharashtra ?', 'A', 'B', 'C', 'D', 'C'),
(3, 2, 'What is ur MOTHERS name?', 'A', 'B', 'C', 'D', 'A'),
(4, 2, 'How many planets in our Solar System ?', 'A', 'B', 'C', 'D', 'D'),
(5, 1, 'H', 'A', 'B', 'C', 'D', 'B'),
(6, 2, 'HH', 'A', 'B', 'C', 'D', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `eng6subjective`
--

CREATE TABLE `eng6subjective` (
  `qid` int(11) NOT NULL,
  `chapter_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eng6subjective`
--

INSERT INTO `eng6subjective` (`qid`, `chapter_no`, `question`, `answer`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'asasasas');

-- --------------------------------------------------------

--
-- Table structure for table `mat6`
--

CREATE TABLE `mat6` (
  `qid` int(11) NOT NULL,
  `chapter_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correctoption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mat6`
--

INSERT INTO `mat6` (`qid`, `chapter_no`, `question`, `option1`, `option2`, `option3`, `option4`, `correctoption`) VALUES
(1, 1, 'What is ur name?', 'A', 'B', 'C', 'D', 'B'),
(2, 1, 'What is ur FATHERS name?', 'A', 'B', 'C', 'D', 'C'),
(3, 2, 'What is ur MOTHERS name?', 'A', 'B', 'C', 'D', 'A'),
(4, 2, 'What is ur F?', 'A', 'B', 'C', 'D', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `science7`
--

CREATE TABLE `science7` (
  `qid` int(11) NOT NULL,
  `chapter_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correctoption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `science7`
--

INSERT INTO `science7` (`qid`, `chapter_no`, `question`, `option1`, `option2`, `option3`, `option4`, `correctoption`) VALUES
(1, 1, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(2, 2, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(3, 1, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(4, 2, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(5, 1, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(6, 2, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(7, 1, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(8, 2, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(9, 1, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1'),
(10, 2, 'What is your name ?', ' Option1', ' Option2', ' Option3', ' Option4', ' Option1');

-- --------------------------------------------------------

--
-- Table structure for table `science7subjective`
--

CREATE TABLE `science7subjective` (
  `qid` int(11) NOT NULL,
  `chapter_no` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `science7subjective`
--

INSERT INTO `science7subjective` (`qid`, `chapter_no`, `question`, `answer`) VALUES
(1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'asasasas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eng6`
--
ALTER TABLE `eng6`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `eng6subjective`
--
ALTER TABLE `eng6subjective`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `mat6`
--
ALTER TABLE `mat6`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `science7`
--
ALTER TABLE `science7`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `science7subjective`
--
ALTER TABLE `science7subjective`
  ADD PRIMARY KEY (`qid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eng6`
--
ALTER TABLE `eng6`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `eng6subjective`
--
ALTER TABLE `eng6subjective`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mat6`
--
ALTER TABLE `mat6`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `science7`
--
ALTER TABLE `science7`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `science7subjective`
--
ALTER TABLE `science7subjective`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
