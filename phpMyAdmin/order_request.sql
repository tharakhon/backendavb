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
-- Table structure for table `order_request`
--

CREATE TABLE `order_request` (
  `order_request_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `userbank_email` varchar(100) NOT NULL,
  `order_quantity` double NOT NULL,
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
(69, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, '2024-04-01', '2024-04-12', 'อนุมัติให้ทำรายการ', 'รับทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อเช่าหรือยืม', '2024-04-01 14:22:18', 'รีวิวทรัพยากรเรียบร้อย', 'รีวิวผู้ใช้เรียบร้อย'),
(70, 70, 'ชาวสวนชาวไร่', 'njanpitak@gmail.com', 1, '2024-03-31', '2024-03-30', 'อนุมัติให้ทำรายการ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อเช่าหรือยืม', '2024-04-01 18:04:43', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้ '),
(71, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, '2024-04-01', '2024-04-03', 'อนุมัติให้ทำรายการ', 'รับทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อเช่าหรือยืม', '2024-04-01 21:40:46', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้ '),
(82, 70, 'ชาวสวนชาวไร่', 'noppanund@gmail.com', 0.1, '2024-04-03', '2024-04-11', 'อนุมัติให้ทำรายการ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อเช่าหรือยืม', '2024-04-02 13:51:16', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้ '),
(83, 69, 'สวัสดีชาวไร่', 'tharakhon.r@ku.th', 0.5, '2024-04-03', '2024-04-11', 'อนุมัติให้ทำรายการ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อเช่าหรือยืม', '2024-04-02 13:53:44', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้ ');

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
  MODIFY `order_request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
