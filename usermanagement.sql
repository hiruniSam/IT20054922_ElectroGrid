-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 06:33 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usermanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `CustomerFirstName` varchar(200) NOT NULL,
  `CustomerLastName` varchar(200) NOT NULL,
  `HomeNo` varchar(300) NOT NULL,
  `Street` varchar(300) NOT NULL,
  `HomeCity` varchar(300) NOT NULL,
  `CustomerPhone` int(10) NOT NULL,
  `AccountNo` varchar(6) NOT NULL,
  `Password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `NIC`, `CustomerFirstName`, `CustomerLastName`, `HomeNo`, `Street`, `HomeCity`, `CustomerPhone`, `AccountNo`, `Password`) VALUES
(1, '637894567V', 'Kalpana', 'Jayasuriya', 'No100', 'Nuwara', 'Kurunagela', 788987676, 'EG1010', 'kalp1234'),
(2, '199985911271', 'Hiruni', 'Samarawickrama', 'No10', 'Malabe', 'Kaduwela', 760063517, 'EG1011', 'hiru456'),
(3, '934556678V', 'Sanduni', 'Samarawickrama', 'No11', 'Colombo', 'Updated', 778146483, 'EG1012', 'sandy123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`,`AccountNo`) USING BTREE,
  ADD UNIQUE KEY `NIC` (`NIC`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
