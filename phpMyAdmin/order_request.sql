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
-- Table structure for table `order_request`
--

CREATE TABLE `order_request` (
  `order_request_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `userbank_email` varchar(100) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `order_borrowDate` date NOT NULL,
  `order_returnDate` date NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `order_status_getproduct` varchar(50) NOT NULL,
  `order_rental` varchar(50) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `order_rental_pickup` varchar(50) NOT NULL,
  `customer_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_request`
--

INSERT INTO `order_request` (`order_request_id`, `order_id`, `bank_name`, `userbank_email`, `order_quantity`, `order_borrowDate`, `order_returnDate`, `order_status`, `order_status_getproduct`, `order_rental`, `order_date`, `order_rental_pickup`, `customer_status`) VALUES
(57, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, '2024-03-27', '2024-03-29', 'อนุมัติให้ทำรายการ', 'รับทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อเช่าหรือยืม', '2024-03-26 19:10:26', 'รีวิวทรัพยากรเรียบร้อย', 'รอธนาคารรีวิวผู้ใช้ '),
(58, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, '2024-03-27', '2024-03-29', 'อนุมัติให้ทำรายการ', 'รับทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อเช่าหรือยืม', '2024-03-26 19:10:54', 'รีวิวทรัพยากรเรียบร้อย', 'รอธนาคารรีวิวผู้ใช้ '),
(59, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, '2024-03-28', '2024-03-29', 'อนุมัติให้ทำรายการ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อเช่าหรือยืม', '2024-03-28 13:47:41', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้ '),
(60, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, '2024-03-26', '2024-03-29', 'อนุมัติให้ทำรายการ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อเช่าหรือยืม', '2024-03-28 15:11:26', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้ ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_request`
--
ALTER TABLE `order_request`
  ADD PRIMARY KEY (`order_request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_request`
--
ALTER TABLE `order_request`
  MODIFY `order_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
