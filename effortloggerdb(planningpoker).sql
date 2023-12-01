-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2023 at 10:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `effortloggerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dc_table`
--

CREATE TABLE `dc_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `defect_table`
--

CREATE TABLE `defect_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `Detail` text NOT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `defect_table`
--

INSERT INTO `defect_table` (`ID`, `Name`, `Detail`, `Status`) VALUES
(1, 'Cannot save a file', 'Failed to open destination folder', 1),
(2, 'asd', 'asd', 1),
(3, 'qwr', 'asdf', 1),
(4, '4321', '12345', 1),
(5, '5431212', '543121', 1),
(6, '54321', '123456', 1),
(7, '5431212', '543121', 1),
(8, 'new defect', 'here is its description', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deliverable_table`
--

CREATE TABLE `deliverable_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ec_table`
--

CREATE TABLE `ec_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ec_table`
--

INSERT INTO `ec_table` (`ID`, `Name`) VALUES
(1, 'Plans'),
(2, 'Deliverables'),
(3, 'Interruptions'),
(4, 'Defects'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `effort_table`
--

CREATE TABLE `effort_table` (
  `ID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Start` time NOT NULL,
  `Stop` time NOT NULL,
  `Time` double NOT NULL,
  `LCS` int(11) NOT NULL,
  `EC` int(11) NOT NULL,
  `DI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `effort_table`
--

INSERT INTO `effort_table` (`ID`, `Date`, `Start`, `Stop`, `Time`, `LCS`, `EC`, `DI`) VALUES
(1, '2023-11-01', '19:00:40', '19:00:50', 10, 2, 3, 4),
(33, '2023-11-12', '16:38:23', '16:38:26', 2, 1, 3, 5),
(34, '2023-11-12', '16:42:02', '16:42:04', 1, 1, 3, 5),
(35, '2023-11-12', '20:48:49', '20:48:51', 1, 1, 3, 5),
(36, '2023-11-12', '20:53:16', '20:53:21', 5, 1, 3, 5),
(37, '2023-11-12', '21:05:09', '21:05:13', 3, 1, 3, 5),
(38, '2023-11-12', '21:18:36', '21:18:38', 3, 1, 3, 5),
(39, '2023-11-12', '21:22:05', '21:22:11', 5, 1, 3, 5),
(40, '2023-11-29', '10:44:48', '10:44:50', 2, 1, 3, 5),
(41, '2023-11-30', '00:33:30', '00:33:30', 0, 1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `interruption_table`
--

CREATE TABLE `interruption_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LCS_table`
--

CREATE TABLE `LCS_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `EC` int(11) NOT NULL,
  `D` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `LCS_table`
--

INSERT INTO `LCS_table` (`ID`, `Name`, `EC`, `D`) VALUES
(1, 'Problem Understanding', 2, 1),
(2, 'Conceptual Design Plan', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `plan_table`
--

CREATE TABLE `plan_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pp_table`
--

CREATE TABLE `pp_table` (
  `ID` int(11) NOT NULL,
  `Story` varchar(256) NOT NULL,
  `LCS` int(11) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pp_table`
--

INSERT INTO `pp_table` (`ID`, `Story`, `LCS`, `Description`) VALUES
(1, 'Implement the timer', 2, 'The timer calculate the duration of the activity');

-- --------------------------------------------------------

--
-- Table structure for table `project_table`
--

CREATE TABLE `project_table` (
  `ID` int(11) NOT NULL,
  `Name` varchar(256) NOT NULL,
  `LCS1` int(11) NOT NULL,
  `LCS2` int(11) NOT NULL,
  `LCS3` int(11) NOT NULL,
  `LCS4` int(11) NOT NULL,
  `LCS5` int(11) NOT NULL,
  `LCS6` int(11) NOT NULL,
  `LCS7` int(11) NOT NULL,
  `LCS8` int(11) NOT NULL,
  `LCS9` int(11) NOT NULL,
  `LCS10` int(11) NOT NULL,
  `LCS11` int(11) NOT NULL,
  `LCS12` int(11) NOT NULL,
  `LCS13` int(11) NOT NULL,
  `LCS14` int(11) NOT NULL,
  `LCS15` int(11) NOT NULL,
  `LCS16` int(11) NOT NULL,
  `LCS17` int(11) NOT NULL,
  `LCS18` int(11) NOT NULL,
  `LCS19` int(11) NOT NULL,
  `LCS20` int(11) NOT NULL,
  `LCS21` int(11) NOT NULL,
  `LCS22` int(11) NOT NULL,
  `LCS23` int(11) NOT NULL,
  `LCS24` int(11) NOT NULL,
  `LCS25` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_table`
--

INSERT INTO `project_table` (`ID`, `Name`, `LCS1`, `LCS2`, `LCS3`, `LCS4`, `LCS5`, `LCS6`, `LCS7`, `LCS8`, `LCS9`, `LCS10`, `LCS11`, `LCS12`, `LCS13`, `LCS14`, `LCS15`, `LCS16`, `LCS17`, `LCS18`, `LCS19`, `LCS20`, `LCS21`, `LCS22`, `LCS23`, `LCS24`, `LCS25`) VALUES
(1, 'Planning Poker', 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dc_table`
--
ALTER TABLE `dc_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `defect_table`
--
ALTER TABLE `defect_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `deliverable_table`
--
ALTER TABLE `deliverable_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_table`
--
ALTER TABLE `ec_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `effort_table`
--
ALTER TABLE `effort_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `interruption_table`
--
ALTER TABLE `interruption_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `LCS_table`
--
ALTER TABLE `LCS_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `plan_table`
--
ALTER TABLE `plan_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `pp_table`
--
ALTER TABLE `pp_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project_table`
--
ALTER TABLE `project_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `defect_table`
--
ALTER TABLE `defect_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `effort_table`
--
ALTER TABLE `effort_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pp_table`
--
ALTER TABLE `pp_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
