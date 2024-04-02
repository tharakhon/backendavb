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
-- Table structure for table `bank_review`
--

CREATE TABLE `bank_review` (
  `review_id` int(11) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `bank_codename` varchar(10) NOT NULL,
  `rating` float NOT NULL,
  `detail` varchar(200) NOT NULL,
  `product_id` int(11) NOT NULL,
  `bank_review_image` varchar(250) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_review`
--

INSERT INTO `bank_review` (`review_id`, `user_email`, `bank_codename`, `rating`, `detail`, `product_id`, `bank_review_image`, `date`) VALUES
(86, 'earth0981234@gmail.com', '555', 5, 'เทแล้วต้นไม้โตไวมาก', 81, '555_8472e5b9-da3a-4e71-987b-6111af1c76b5.jfif', '2024-04-01 13:43:36'),
(87, 'earth0981234@gmail.com', '555', 5, 'ใช้ทุบพื่้นดีมาก', 82, '555_2f1003b3-d1c8-42ad-91e8-02b0a8924c7e.jfif', '2024-04-01 13:46:14'),
(88, 'earth0981234@gmail.com', 'AVB 2', 5, '5555', 70, 'AVB 2_1e633faf4f96b9d3c62c21e05bc61e9c.jfif', '2024-04-01 14:35:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_review`
--
ALTER TABLE `bank_review`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_review`
--
ALTER TABLE `bank_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
