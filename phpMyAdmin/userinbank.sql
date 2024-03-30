-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 30, 2024 at 09:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webavb`
--

-- --------------------------------------------------------

--
-- Table structure for table `userinbank`
--

CREATE TABLE `userinbank` (
  `userBank_id` int(11) NOT NULL,
  `userBank_email` varchar(50) NOT NULL,
  `userBank_bankName` varchar(20) NOT NULL,
  `rank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userinbank`
--

INSERT INTO `userinbank` (`userBank_id`, `userBank_email`, `userBank_bankName`, `rank_id`) VALUES
(28, 'earth0981234@gmail.com', 'สวัสดีชาวไร่', 3),
(29, 'tharakhon.r@ku.th', 'สวัสดีชาวไร่', 2),
(30, 'earth0981234@gmail.com', 'ชาวสวนชาวไร่', 3),
(31, 'earth0981234@gmail.com', 'ชาวบ้านอันแสนอบอุ่น', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userinbank`
--
ALTER TABLE `userinbank`
  ADD PRIMARY KEY (`userBank_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userinbank`
--
ALTER TABLE `userinbank`
  MODIFY `userBank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
