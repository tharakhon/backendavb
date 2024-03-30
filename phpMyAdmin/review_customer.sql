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
-- Table structure for table `review_customer`
--

CREATE TABLE `review_customer` (
  `review_customer_id` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `bank_codename` varchar(10) NOT NULL,
  `product_id` int(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `customer_review_image` varchar(250) NOT NULL,
  `rating` float NOT NULL,
  `ratings` float NOT NULL,
  `details` varchar(200) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_customer`
--

INSERT INTO `review_customer` (`review_customer_id`, `user_email`, `bank_codename`, `product_id`, `detail`, `customer_review_image`, `rating`, `ratings`, `details`, `date`) VALUES
(28, 'earth0981234@gmail.com', 'AVB 2', 71, 'ดีมาก', 'AVB 2_R (5).jfif', 4.5, 4.5, 'ดีมาก', '2024-03-28 16:05:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `review_customer`
--
ALTER TABLE `review_customer`
  ADD PRIMARY KEY (`review_customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `review_customer`
--
ALTER TABLE `review_customer`
  MODIFY `review_customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
