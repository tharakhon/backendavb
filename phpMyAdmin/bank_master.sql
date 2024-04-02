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
-- Table structure for table `bank_master`
--

CREATE TABLE `bank_master` (
  `bank_id` int(11) NOT NULL,
  `bank_codename` varchar(10) NOT NULL,
  `bank_name` varchar(20) NOT NULL,
  `bank_email` varchar(50) NOT NULL,
  `bank_telephone` varchar(11) NOT NULL,
  `bank_address` varchar(255) NOT NULL,
  `bank_latitude` double NOT NULL,
  `bank_longitude` double NOT NULL,
  `rank_id` int(11) NOT NULL,
  `bank_image` varchar(250) NOT NULL,
  `bank_bronze` int(11) NOT NULL,
  `bank_silver` int(11) NOT NULL,
  `bank_gold` int(11) NOT NULL,
  `bank_platinum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bank_master`
--

INSERT INTO `bank_master` (`bank_id`, `bank_codename`, `bank_name`, `bank_email`, `bank_telephone`, `bank_address`, `bank_latitude`, `bank_longitude`, `rank_id`, `bank_image`, `bank_bronze`, `bank_silver`, `bank_gold`, `bank_platinum`) VALUES
(60, 'AVB', 'สวัสดีชาวไร่', 'earth0981234@gmail.com', '0638758608', '89/78 จ.สมุทรปราการ อ.เมืองสมุทรปราการ', 13.753958, 100.502243, 1, 'AVB_background.jpg', 1, 2, 3, 4),
(61, 'AVB 2', 'ชาวสวนชาวไร่', 'tharakhon.r@ku.th', '0896457354', '55/235 จ.ชลบุรี ต.เมือง อ.เมือง', 13.753958, 100.502243, 1, 'AVB 2_R.jfif', 2, 3, 4, 5),
(62, 'AVB 3', 'ชาวบ้านอันแสนอบอุ่น', 'tharakhon555@gmail.com', '0354845135', '351/65 จ.ร้อยเอ็ด ต.เชียงขวัญ อ.เชียงขวัญ', 13.753958, 100.502243, 1, 'AVB 3_maxresdefault.jpg', 1, 2, 3, 4),
(65, 'AVB 4', 'ชุมชนเพื่อเกษตรกร', '6330300437tharakhon@gmail.com', '0645678976', 'จ.กรุงเทพมหานคร อ.บางนา ต.สำโรงเหนือ', 13.7451, 100.5106, 1, 'AVB 4_maxresdefault.jpg', 2, 3, 4, 5),
(67, 'AOM', 'RayongRich', 'njanpitak@gmail.com', '0810016767', 'เกษตรศาสตร์ ศรีราชา', 13.120226, 100.920446, 1, 'AOM_à¸à¸¥à¹à¸§à¸¢.jpg', 1, 2, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_master`
--
ALTER TABLE `bank_master`
  ADD PRIMARY KEY (`bank_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_master`
--
ALTER TABLE `bank_master`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
