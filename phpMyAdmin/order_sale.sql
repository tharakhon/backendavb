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
-- Table structure for table `order_sale`
--

CREATE TABLE `order_sale` (
  `order_sale_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `order_sale_bankname` varchar(20) NOT NULL,
  `userbank_order_sale` varchar(50) NOT NULL,
  `order_product_quantity` double NOT NULL,
  `order_product_unit` varchar(20) NOT NULL,
  `order_product_date` date NOT NULL,
  `order_product_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `order_product_price` int(11) NOT NULL,
  `order_product_status` varchar(50) NOT NULL,
  `order_product_getproduct` varchar(50) NOT NULL,
  `order_sale` varchar(50) NOT NULL,
  `order_sale_pickup` varchar(50) NOT NULL,
  `customer_status_sale` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_sale`
--

INSERT INTO `order_sale` (`order_sale_id`, `order_product_id`, `order_sale_bankname`, `userbank_order_sale`, `order_product_quantity`, `order_product_unit`, `order_product_date`, `order_product_datetime`, `order_product_price`, `order_product_status`, `order_product_getproduct`, `order_sale`, `order_sale_pickup`, `customer_status_sale`) VALUES
(37, 71, 'ชาวสวนชาวไร่', 'njanpitak@gmail.com', 1, 'คัน', '2024-04-01', '2024-04-01 18:05:36', 25500, 'อนุมัติให้ทำรายการ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อการซื้อขาย', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้'),
(38, 71, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, 'คัน', '2024-04-02', '2024-04-01 21:43:01', 25500, 'อนุมัติให้ทำรายการ', 'รับทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อการซื้อขาย', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้'),
(39, 68, 'สวัสดีชาวไร่', 'noppanund@gmail.com', 1, 'ชิ้น', '2024-04-03', '2024-04-02 12:54:45', 200, 'รอการตรวจสอบ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อการซื้อขาย', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_sale`
--
ALTER TABLE `order_sale`
  ADD PRIMARY KEY (`order_sale_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_sale`
--
ALTER TABLE `order_sale`
  MODIFY `order_sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
