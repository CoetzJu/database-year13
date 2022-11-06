-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2022 at 03:51 AM
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
-- Database: `13dgm`
--

-- --------------------------------------------------------

--
-- Table structure for table `emailaddress`
--

CREATE TABLE `emailaddress` (
  `Cust_ID` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emailaddress`
--

INSERT INTO `emailaddress` (`Cust_ID`, `email`) VALUES
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(NULL, 'joe@bama.com'),
(28, 'joe@bama.com'),
(29, 'wadawd@bama.com'),
(30, 'wadawd@bama.com'),
(31, 'wadawd@bama.com'),
(33, 'joe@biden.com'),
(34, 'joe@john.com'),
(37, 'carls@gill.com'),
(38, 'carls@gill.com'),
(39, 'carls@gill.com'),
(40, 'carls@gill.com'),
(41, 'carls@gill.com'),
(42, 'carls@gill.com'),
(43, 'carls@gill.com'),
(44, 'carls@gill.com'),
(45, 'carls@gill.com'),
(46, 'carls@gill.com'),
(47, 'carls@gill.com'),
(48, 'carls@gill.com'),
(49, 'carls@gill.com'),
(50, 'carls@gill.com'),
(51, 'carls@gill.com'),
(52, 'carls@gill.com'),
(53, 'carls@gill.com'),
(54, 'carls@gill.com'),
(55, 'carls@gill.com'),
(56, 'carls@gill.com'),
(57, 'carls@gill.com'),
(58, 'carls@gill.com'),
(59, 'carls@gill.com');

-- --------------------------------------------------------

--
-- Table structure for table `mode`
--

CREATE TABLE `mode` (
  `Cust_ID` int(11) DEFAULT NULL,
  `darkmode` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mode`
--

INSERT INTO `mode` (`Cust_ID`, `darkmode`) VALUES
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(28, 'no'),
(29, 'no'),
(30, 'no'),
(31, 'no'),
(33, 'no'),
(34, 'no'),
(37, 'no'),
(38, 'no'),
(39, 'no'),
(40, 'no'),
(41, 'no'),
(42, 'no'),
(43, 'no'),
(44, 'no'),
(45, 'no'),
(46, 'no'),
(47, 'no'),
(48, 'no'),
(49, 'no'),
(50, 'no'),
(51, 'no'),
(52, 'no'),
(53, 'no'),
(54, 'no'),
(55, 'no'),
(56, 'no'),
(57, 'no'),
(58, 'no'),
(59, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `Cust_ID` int(11) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `sdate` date NOT NULL,
  `phonenumber` int(10) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `pronouns` varchar(15) NOT NULL,
  `newsletter` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`Cust_ID`, `firstname`, `lastname`, `sdate`, `phonenumber`, `age`, `gender`, `pronouns`, `newsletter`) VALUES
(8, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(9, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(10, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(11, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(12, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(13, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(14, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(15, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(16, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(17, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(18, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(19, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(20, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(21, 'fgd', 'dgf', '2022-10-16', 354, '354', 'boy', 'he/him', 'yes'),
(28, 'Joe', 'Bama', '2022-10-16', 12, '23', 'boy', 'he/him', 'yes'),
(29, 'wada', 'wadadwa', '2022-10-16', 122, '232', 'ad', 'awd', 'yes'),
(30, 'wada', 'wadadwa', '2022-10-16', 122, '232', 'ad', 'awd', 'yes'),
(31, 'wada', 'wadadwa', '2022-10-16', 122, '232', 'ad', 'awd', 'yes'),
(33, 'Joe', 'Biden', '2022-11-06', 2147483647, '90', 'Male', 'he/him', 'yes'),
(34, 'Joe', 'John', '2022-11-06', 2147483647, '90', 'Male', 'he/him', 'yes'),
(37, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(38, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(39, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(40, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(41, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(42, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(43, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(44, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(45, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(46, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(47, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(48, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(49, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(50, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(51, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(52, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(53, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(54, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(55, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(56, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(57, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(58, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes'),
(59, 'Carl', 'Gill', '2022-11-06', 2147483647, '12', 'Male', 'he/him', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `Cust_ID` int(11) DEFAULT NULL,
  `Purchase_ID` int(11) NOT NULL,
  `purchase-date` date NOT NULL,
  `poster` enum('yes','no') DEFAULT NULL,
  `videos` enum('yes','no') DEFAULT NULL,
  `equipment` enum('yes','no') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`Cust_ID`, `Purchase_ID`, `purchase-date`, `poster`, `videos`, `equipment`) VALUES
(21, 1, '2022-10-16', 'yes', 'no', 'no'),
(37, 4, '2022-11-06', 'yes', 'no', 'no'),
(38, 5, '2022-11-06', 'yes', 'no', 'no'),
(39, 6, '2022-11-06', 'yes', 'no', 'no'),
(40, 7, '2022-11-06', 'yes', 'no', 'no'),
(41, 8, '2022-11-06', 'yes', 'no', 'no'),
(42, 9, '2022-11-06', 'yes', 'no', 'no'),
(43, 10, '2022-11-06', 'yes', 'no', 'no'),
(44, 11, '2022-11-06', 'yes', 'no', 'no'),
(45, 12, '2022-11-06', 'yes', 'no', 'no'),
(46, 13, '2022-11-06', 'yes', 'no', 'no'),
(47, 14, '2022-11-06', 'yes', 'no', 'no'),
(48, 15, '2022-11-06', 'yes', 'no', 'no'),
(49, 16, '2022-11-06', 'yes', 'no', 'no'),
(50, 17, '2022-11-06', 'yes', 'no', 'no'),
(51, 18, '2022-11-06', 'yes', 'no', 'no'),
(52, 19, '2022-11-06', 'yes', 'no', 'no'),
(53, 20, '2022-11-06', 'yes', 'no', 'no'),
(54, 21, '2022-11-06', 'yes', 'no', 'no'),
(55, 22, '2022-11-06', 'yes', 'no', 'no'),
(56, 23, '2022-11-06', 'yes', 'no', 'no'),
(57, 24, '2022-11-06', 'yes', 'no', 'no'),
(58, 25, '2022-11-06', 'yes', 'no', 'no'),
(59, 26, '2022-11-06', 'yes', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `Cust_ID` int(11) DEFAULT NULL,
  `student` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`Cust_ID`, `student`) VALUES
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'no'),
(NULL, 'yes'),
(28, 'yes'),
(29, 'yes'),
(30, 'yes'),
(31, 'yes'),
(33, 'no'),
(34, 'no'),
(37, 'no'),
(38, 'no'),
(39, 'no'),
(40, 'no'),
(41, 'no'),
(42, 'no'),
(43, 'no'),
(44, 'no'),
(45, 'no'),
(46, 'no'),
(47, 'no'),
(48, 'no'),
(49, 'no'),
(50, 'no'),
(51, 'no'),
(52, 'no'),
(53, 'no'),
(54, 'no'),
(55, 'no'),
(56, 'no'),
(57, 'no'),
(58, 'no'),
(59, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `usernametable`
--

CREATE TABLE `usernametable` (
  `Cust_ID` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usernametable`
--

INSERT INTO `usernametable` (`Cust_ID`, `username`) VALUES
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(NULL, 'BamaOfJoe'),
(28, 'BamaOfJoe'),
(29, 'awdadawsdwa'),
(30, 'awdadawsdwa'),
(31, 'awdadawsdwa'),
(33, 'JOEBINE'),
(34, 'JOEBINE'),
(37, 'Carsgill'),
(38, 'Carsgill'),
(39, 'Carsgill'),
(40, 'Carsgill'),
(41, 'Carsgill'),
(42, 'Carsgill'),
(43, 'Carsgill'),
(44, 'Carsgill'),
(45, 'Carsgill'),
(46, 'Carsgill'),
(47, 'Carsgill'),
(48, 'Carsgill'),
(49, 'Carsgill'),
(50, 'Carsgill'),
(51, 'Carsgill'),
(52, 'Carsgill'),
(53, 'Carsgill'),
(54, 'Carsgill'),
(55, 'Carsgill'),
(56, 'Carsgill'),
(57, 'Carsgill'),
(58, 'Carsgill'),
(59, 'Carsgill');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emailaddress`
--
ALTER TABLE `emailaddress`
  ADD KEY `emailid` (`Cust_ID`);

--
-- Indexes for table `mode`
--
ALTER TABLE `mode`
  ADD KEY `modeID` (`Cust_ID`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`Cust_ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`Purchase_ID`),
  ADD KEY `purchaseuser` (`Cust_ID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD KEY `roleID` (`Cust_ID`);

--
-- Indexes for table `usernametable`
--
ALTER TABLE `usernametable`
  ADD KEY `NamesID` (`Cust_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `Cust_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `Purchase_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emailaddress`
--
ALTER TABLE `emailaddress`
  ADD CONSTRAINT `emailid` FOREIGN KEY (`Cust_ID`) REFERENCES `personal` (`Cust_ID`);

--
-- Constraints for table `mode`
--
ALTER TABLE `mode`
  ADD CONSTRAINT `modeID` FOREIGN KEY (`Cust_ID`) REFERENCES `personal` (`Cust_ID`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchaseuser` FOREIGN KEY (`Cust_ID`) REFERENCES `personal` (`Cust_ID`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roleID` FOREIGN KEY (`Cust_ID`) REFERENCES `personal` (`Cust_ID`);

--
-- Constraints for table `usernametable`
--
ALTER TABLE `usernametable`
  ADD CONSTRAINT `NamesID` FOREIGN KEY (`Cust_ID`) REFERENCES `personal` (`Cust_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
