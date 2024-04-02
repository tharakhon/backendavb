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
-- Table structure for table `orderexchage_request`
--

CREATE TABLE `orderexchage_request` (
  `orderExchage_request_id` int(11) NOT NULL,
  `orderExchange_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `userbank_email` varchar(100) NOT NULL,
  `orderExchange_quantity` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orderexchage_request`
--

INSERT INTO `orderexchage_request` (`orderExchage_request_id`, `orderExchange_id`, `bank_name`, `userbank_email`, `orderExchange_quantity`) VALUES
(52, 82, 'ตะวันกระจอก', 'earth0981234@gmail.com', 300),
(54, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 2),
(55, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderexchage_request`
--
ALTER TABLE `orderexchage_request`
  ADD PRIMARY KEY (`orderExchage_request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderexchage_request`
--
ALTER TABLE `orderexchage_request`
  MODIFY `orderExchage_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
