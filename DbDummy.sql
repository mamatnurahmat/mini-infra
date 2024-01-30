-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Jan 30, 2024 at 10:39 PM
-- Server version: 10.6.16-MariaDB-1:10.6.16+maria~ubu2004
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DbDemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `LastName`, `FirstName`, `Address`, `City`) VALUES
(1, 'Doe', 'John', '123 Main St', 'City1'),
(2, 'Smith', 'Jane', '456 Oak St', 'City2'),
(3, 'Johnson', 'Bob', '789 Pine St', 'City3'),
(4, 'Williams', 'Alice', '101 Elm St', 'City4'),
(5, 'Brown', 'Charlie', '202 Maple St', 'City5'),
(6, 'Davis', 'Emily', '303 Birch St', 'City6'),
(7, 'Miller', 'David', '404 Cedar St', 'City7'),
(8, 'Taylor', 'Eva', '505 Walnut St', 'City8'),
(9, 'Anderson', 'Frank', '606 Chestnut St', 'City9'),
(10, 'Clark', 'Grace', '707 Walnut St', 'City10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
