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
-- Table structure for table `userbank_exchange`
--

CREATE TABLE `userbank_exchange` (
  `exchange_id` int(11) NOT NULL,
  `orderExchange_id` int(11) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `userbank_email` varchar(50) NOT NULL,
  `userbank_productname` varchar(20) NOT NULL,
  `userbank_productimage` varchar(255) NOT NULL,
  `userbank_producttype1` varchar(70) NOT NULL,
  `userbank_productquantity` double NOT NULL,
  `userbank_unit` varchar(20) NOT NULL,
  `userbank_productdetails` varchar(200) NOT NULL,
  `userbank_status` varchar(50) NOT NULL,
  `userbank_borrowdate` date NOT NULL,
  `userbank_status_getproduct` varchar(50) NOT NULL,
  `order_exchange` varchar(50) NOT NULL,
  `exchange_date` datetime NOT NULL DEFAULT current_timestamp(),
  `order_exchange_pickup` varchar(50) NOT NULL,
  `customer_status_exchange` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userbank_exchange`
--

INSERT INTO `userbank_exchange` (`exchange_id`, `orderExchange_id`, `bank_name`, `userbank_email`, `userbank_productname`, `userbank_productimage`, `userbank_producttype1`, `userbank_productquantity`, `userbank_unit`, `userbank_productdetails`, `userbank_status`, `userbank_borrowdate`, `userbank_status_getproduct`, `order_exchange`, `exchange_date`, `order_exchange_pickup`, `customer_status_exchange`) VALUES
(45, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', '1', 'AVB 2_R (3).jfif', 'อุปกรณ์หรือเครื่องมือทางการเกษตรขนาดเล็ก', 1, 'เครื่อง', '1', 'อนุมัติให้ทำรายการ', '2024-04-23', 'ส่งทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อแลกเปลี่ยน', '2024-04-01 21:41:59', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้'),
(46, 70, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', '2', 'AVB 2_R (3).jfif', 'อุปกรณ์หรือเครื่องมือทางการเกษตรขนาดเล็ก', 2, 'เครื่อง', '2', 'อนุมัติให้ทำรายการ', '2024-04-02', 'รับทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อแลกเปลี่ยน', '2024-04-01 21:53:13', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userbank_exchange`
--
ALTER TABLE `userbank_exchange`
  ADD PRIMARY KEY (`exchange_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `userbank_exchange`
--
ALTER TABLE `userbank_exchange`
  MODIFY `exchange_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
