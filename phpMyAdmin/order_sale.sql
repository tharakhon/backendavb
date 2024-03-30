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
-- Table structure for table `order_sale`
--

CREATE TABLE `order_sale` (
  `order_sale_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `order_sale_bankname` varchar(20) NOT NULL,
  `userbank_order_sale` varchar(50) NOT NULL,
  `order_product_quantity` int(11) NOT NULL,
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
(31, 71, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, 'คัน', '2024-03-26', '2024-03-26 19:18:40', 25500, 'อนุมัติให้ทำรายการ', 'ส่งทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อการซื้อขาย', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้'),
(32, 71, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, 'คัน', '2024-03-26', '2024-03-26 19:18:49', 25500, 'อนุมัติให้ทำรายการ', 'รับทรัพยากรเรียบร้อยแล้ว', 'รายการเพื่อการซื้อขาย', 'รีวิวทรัพยากรเรียบร้อย', 'รีวิวผู้ใช้เรียบร้อย'),
(33, 71, 'ชาวสวนชาวไร่', 'earth0981234@gmail.com', 1, 'คัน', '2024-03-28', '2024-03-28 13:48:17', 25500, 'อนุมัติให้ทำรายการ', 'ยังไม่ได้มารับทรัพยากร', 'รายการเพื่อการซื้อขาย', 'รอการรีวิวทรัพยากร', 'รอธนาคารรีวิวผู้ใช้');

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
  MODIFY `order_sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
