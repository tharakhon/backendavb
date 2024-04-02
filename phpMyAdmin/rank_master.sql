-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 02, 2024 at 09:15 AM
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
-- Table structure for table `rank_master`
--

CREATE TABLE `rank_master` (
  `rank_id` int(11) NOT NULL,
  `rank_name` varchar(10) NOT NULL,
  `rank_image` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank_master`
--

INSERT INTO `rank_master` (`rank_id`, `rank_name`, `rank_image`) VALUES
(1, 'bronze', 'ribbon1.png'),
(2, 'silver', 'ribbon2.png'),
(3, 'gold', 'ribbon3.png'),
(4, 'platinum', 'ribbon4.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rank_master`
--
ALTER TABLE `rank_master`
  ADD PRIMARY KEY (`rank_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rank_master`
--
ALTER TABLE `rank_master`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
