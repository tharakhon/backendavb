-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 30, 2024 at 09:02 AM
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
(81, 'earth0981234@gmail.com', 'AVB 2', 4.5, 'ดีมากก', 70, 'AVB 2_1e633faf4f96b9d3c62c21e05bc61e9c.jfif', '2024-03-26 19:22:10'),
(82, 'earth0981234@gmail.com', 'AVB 2', 4.5, 'ดีมากกก', 70, 'AVB 2_1e633faf4f96b9d3c62c21e05bc61e9c.jfif', '2024-03-26 19:22:53'),
(83, 'earth0981234@gmail.com', 'AVB 2', 5, 'ดีเกินนน', 70, 'AVB 2_R (3).jfif', '2024-03-26 19:23:20'),
(84, 'earth0981234@gmail.com', 'AVB 2', 4.5, 'ดีๆ', 70, 'AVB 2_1e633faf4f96b9d3c62c21e05bc61e9c.jfif', '2024-03-28 13:20:12'),
(85, 'earth0981234@gmail.com', 'AVB 2', 5, 'ดีๆ', 71, 'AVB 2_R (5).jfif', '2024-03-28 16:02:19');

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
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
