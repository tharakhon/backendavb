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
-- Table structure for table `bank_product`
--

CREATE TABLE `bank_product` (
  `product_id` int(11) NOT NULL,
  `bank_codename` varchar(10) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `product_type2` varchar(50) NOT NULL,
  `product_type3` varchar(50) NOT NULL,
  `product_type4` varchar(50) NOT NULL,
  `product_quantity` double NOT NULL,
  `product_unit` varchar(20) NOT NULL,
  `product_details` varchar(100) NOT NULL,
  `product_price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bank_product`
--

INSERT INTO `bank_product` (`product_id`, `bank_codename`, `product_name`, `product_image`, `product_type`, `product_type2`, `product_type3`, `product_type4`, `product_quantity`, `product_unit`, `product_details`, `product_price`) VALUES
(68, 'AVB', 'พั่ว', 'AVB_OIP.jfif', '', 'ทรัพยากรเพื่อการซื้อขาย', '', 'อุปกรณ์หรือเครื่องมือทางการเกษตรขนาดเล็ก', 35, 'ชิ้น', 'ไม่มี', '200'),
(69, 'AVB', 'ปุ๋ยหมัก', 'AVB_OIP (1).jfif', 'ทรัพยากรเพื่อเช่าหรือยืม', '', 'ทรัพยากรเพื่อแลกเปลี่ยน', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 35.5, 'กิโลกรัม', 'ไม่มี', ''),
(70, 'AVB 2', 'เครื่องพ่นยา', 'AVB 2_1e633faf4f96b9d3c62c21e05bc61e9c.jfif', 'ทรัพยากรเพื่อเช่าหรือยืม', '', 'ทรัพยากรเพื่อแลกเปลี่ยน', 'อุปกรณ์หรือเครื่องมือทางการเกษตรขนาดใหญ่', 23, 'ชิ้น', 'ไม่มี', '150'),
(71, 'AVB 2', 'รถไถ', 'AVB 2_R (5).jfif', '', 'ทรัพยากรเพื่อการซื้อขาย', '', 'อุปกรณ์หรือเครื่องมือทางการเกษตรขนาดใหญ่', 35, 'คัน', 'ไม่มี', '25500'),
(72, 'AVB 3', 'แตงโม', 'AVB 3_R (2).jfif', '', 'ทรัพยากรเพื่อการซื้อขาย', '', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 37, 'ลูก', 'ไม่มี', '300'),
(73, 'AVB 3', 'เชอรี่', 'AVB 3_maxresdefault (1).jpg', '', 'ทรัพยากรเพื่อการซื้อขาย', 'ทรัพยากรเพื่อแลกเปลี่ยน', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 37, 'กิโลกรัม', 'ไม่มี', '120'),
(74, 'AVB 4', 'ส้มจี๊ด', 'AVB 4_220524-Content-à¸ªà¹à¸¡à¸à¸µà¹à¸-à¸à¸£à¸°à¹à¸¢à¸à¸à¹à¸¡à¸²à¸à¸¡à¸²à¸¢-à¸à¸¥à¸¹à¸à¸à¹à¸²à¸¢-à¸­à¸­à¸à¸à¸¥à¸à¸¸à¸à¸¤à¸à¸¹01.jpg', '', 'ทรัพยากรเพื่อการซื้อขาย', 'ทรัพยากรเพื่อแลกเปลี่ยน', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 37, 'กิโลกรัม', 'ไม่มี', '60'),
(75, 'AVB 4', 'ปุ๋ยเรือในไข่มุก', 'AVB 4_d1fd0d04b43a8d769ce4f99e8f1dfacc.jpg', 'ทรัพยากรเพื่อเช่าหรือยืม', '', 'ทรัพยากรเพื่อแลกเปลี่ยน', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 37, 'กระสอบ', 'ไม่มี', ''),
(80, 'undefined', 'ไอม่อน', 'undefined_lovepik-farmers-png-image_401319883_wh860.png', 'ทรัพยากรเพื่อเช่าหรือยืม', '', '', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 1, 'ถุง', 'ไม่มีอะไร', ''),
(81, '555', 'ไอม่อน', '555_8472e5b9-da3a-4e71-987b-6111af1c76b5.jfif', 'ทรัพยากรเพื่อเช่าหรือยืม', '', '', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 0, 'ถุง', 'ไม่มีอะไร', ''),
(82, '555', 'ไอเต๋า', '555_2f1003b3-d1c8-42ad-91e8-02b0a8924c7e.jfif', '', '', 'ทรัพยากรเพื่อแลกเปลี่ยน', 'อุปกรณ์หรือเครื่องมือทางการเกษตรขนาดเล็ก', 559, 'กิโลกรัม', '1', ''),
(83, 'AOM', 'AB fertilizer', 'AOM_ec6482aa9ea5434805c6b8cfde378384.jfif', 'ทรัพยากรเพื่อเช่าหรือยืม', 'ทรัพยากรเพื่อการซื้อขาย', 'ทรัพยากรเพื่อแลกเปลี่ยน', 'ทรัพยากรทางการเกษตรใช้แล้วหมด เช่น ปุ๋ย ดิน', 4, 'ชิ้น', 'ไม่มีอะไร', '250');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_product`
--
ALTER TABLE `bank_product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_product`
--
ALTER TABLE `bank_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
