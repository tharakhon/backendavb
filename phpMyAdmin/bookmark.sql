-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 02, 2024 at 09:14 AM
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
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `bookmark_id` int(11) NOT NULL,
  `bookmark_email` varchar(50) NOT NULL,
  `bookmark_bankname` varchar(20) NOT NULL,
  `bookmark_members` int(11) NOT NULL,
  `bookmark_codename` varchar(10) NOT NULL,
  `bookmark_image` varchar(250) NOT NULL,
  `bookmark_lat` varchar(50) NOT NULL,
  `bookmark_lon` varchar(50) NOT NULL,
  `bookmark_rank` varchar(50) NOT NULL,
  `bookmark_rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`bookmark_id`, `bookmark_email`, `bookmark_bankname`, `bookmark_members`, `bookmark_codename`, `bookmark_image`, `bookmark_lat`, `bookmark_lon`, `bookmark_rank`, `bookmark_rating`) VALUES
(31, 'tharakhon.r@ku.th', 'ชาวสวนชาวไร่', 1, 'AVB 2', 'AVB 2_R.jfif', '13.753958', '100.502243', 'ribbon1.png', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`bookmark_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `bookmark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
