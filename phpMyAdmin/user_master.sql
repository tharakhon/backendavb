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
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `email` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `statused` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`email`, `image`, `fullname`, `tel`, `rank_id`, `statused`) VALUES
('6330300437tharakhon@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocIWcmIRy5Sla-Gq_D8Iwqj8vJqBuWain4CKALHPh5XX=s96-c', 'ชาวโลกสวัสดี', '0638758608', 1, 'Active'),
('earth0981234@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKT1OpaNfY_h2-Fjeafn0lXGDBg34CII392EfKeKVdg=s96-c', 'เอิร์ธ ระดาชัย', '0638758608', 1, 'Active'),
('njanpitak@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocK6GXAF0pfs1docGsnPX1JFDwGD6nyLajOCMlqPVtYbtl8=s96-c', 'Nanta Janpitak', '0810016767', 1, 'Active'),
('noppanund@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocJ-Xyc-LWxQSqyxaM1FKO20R6zwxrFQCuDHlz-d0zecOUQ=s96-c', 'noppanun tohmee', '0000000000', 1, 'Active'),
('tharakhon.r@ku.th', 'https://lh3.googleusercontent.com/a/ACg8ocJKC5r7avVQBQ8dakulUY7fOpOFqjSnek-TD1h9vxW6=s96-c', 'ธรากร ระดาชัย', '0213467864', 1, 'Active'),
('tharakhon555@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocLYbkEA55z-D-lM0jsLHsAWk2zlI71mkyW7Xdc-4nbR=s96-c', 'ปอน ฐิติพงษ์', '0654233845', 1, 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
