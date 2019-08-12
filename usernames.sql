-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 06:39 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usernames`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin`, `password`) VALUES
('rakesh', 'rakesh');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cust_uname` varchar(100) NOT NULL,
  `prod_id` int(50) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cust_uname`, `prod_id`, `qty`, `price`) VALUES
('rakesh', 6, 1, 400);

-- --------------------------------------------------------

--
-- Table structure for table `orders_placed`
--

CREATE TABLE `orders_placed` (
  `cust_uname` varchar(50) NOT NULL,
  `prod_id` int(50) NOT NULL,
  `qty` int(50) NOT NULL,
  `price` int(50) NOT NULL,
  `date` date NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `transaction_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_placed`
--

INSERT INTO `orders_placed` (`cust_uname`, `prod_id`, `qty`, `price`, `date`, `order_status`, `transaction_id`) VALUES
('rakesh', 1, 1, 15000, '2019-04-10', '1', '84d0e6c0-5b5d-11e9-bab9-4db0ce173e91');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_cat` varchar(50) NOT NULL,
  `prod_image` varchar(50) NOT NULL,
  `prod_price` int(10) NOT NULL,
  `prod_qty` int(50) NOT NULL,
  `prod_discription` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_cat`, `prod_image`, `prod_price`, `prod_qty`, `prod_discription`) VALUES
(1, 'MOTO-G5S-PLUS', 'mobilecharger', 'p1.jpg', 15000, 7, 'testing description'),
(2, 'SONY-XB75B-EARPHONES', 'headphones', 'p1.jpg', 3300, 10, 'testing description'),
(3, 'MOTOROLA-CHARGER', 'mobilecharger', 'p1.jpg', 1000, 10, 'testing description'),
(4, 'PHILIPS-SPEAKER', 'headphones', 'p1.jpg', 1200, 10, 'testing description'),
(5, 'POCO-F1-SCREENGAURD', 'screengaurd', 'p1.jpg', 200, 9, 'testing description'),
(6, 'SANDISK-MEMORYCARD-32GB', 'mobilecharger', 'p1.jpg', 400, 9, 'testing description'),
(7, 'SANDISK-PENDRIVE-32GB', 'mobilecharger', 'p1.jpg', 600, 10, 'testing description'),
(8, 'SONY-PENDRIVE-32GB', 'mobilecharger', 'p1.jpg', 800, 10, 'testing description'),
(9, 'MOTO-G5S-PLUS-CASE', 'case', 'p1.jpg', 600, 10, 'testing description'),
(10, 'MI-10000mAH-POWER BANK', 'power bank', 'p1.jpg', 899, 10, 'KJHJ'),
(11, 'LENOVO-10400-POWER BANK', 'power bank', 'p1.jpg', 750, 10, 'LENOVO 10400 mAH POWER BANK.\r\nITS MADE OF LITHIUM BATTERIES.'),
(12, 'INTEX-12500mAH-POWER BANK', 'power bank', 'p1.jpg', 850, 10, 'INTEX 12500 mAH POWER BANK.\r\nITS MADE OF LITHIUM BATTERIES.'),
(13, 'AMBRANE-10000mAH-POWER BANK', 'power bank', 'p1.jpg', 799, 10, 'AMBRANE 10000 mAH POWER BANK.\r\nITS MADE OF LITHIUM BATTERIES.'),
(14, 'JBL-C100SI-EARPHONES', 'headphones', 'p1.jpg', 650, 10, 'JBL C100SI EARPHONES.\r\nTHE BEST QUALITY IN-EAR HEAD PHONES.'),
(15, 'JBL-GO-2-BLUETOOTH-SPEAKER', 'speaker and mic', 'p1.jpg', 2399, 10, 'JBL GO 2 BLUETOOTH SPEAKER.\r\nITS WATERPROOF.'),
(16, 'REDMI-NOTE-6-SCREENGUARD', 'screen gaurd', 'p1.jpg', 279, 10, 'REDMI-NOTE-6-SCREENGUARD.\r\nITS 6D SCREEN GUARD.\r\nTHE BEST AND LATEST.'),
(17, 'SAMSUNG-GALAXY-J5-BATTERY', 'battery', 'p1.jpg', 529, 10, 'SAMSUNG-GALAXY-J5-BATTERY.\r\nITS 2600 mAH BATTERY.'),
(18, 'TRANSCEND-MULTI-CARD READER', 'card reader', 'p1.jpg', 1000, 10, 'TRANSCEND-MULTI-CARD READER.\r\nITS HAS THE LATEST USB3 PORT ADDED.');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `sno` int(50) NOT NULL,
  `prod_id` int(50) NOT NULL,
  `prod_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`sno`, `prod_id`, `prod_image`) VALUES
(35, 1, 'p1.jpg'),
(36, 1, 'p2.jpg'),
(37, 1, 'p3.jpg'),
(38, 1, 'p4.jpg'),
(39, 1, 'p5.jpg'),
(40, 1, 'p6.jpg'),
(41, 2, 'p1.jpg'),
(42, 2, 'p2.jpg'),
(43, 2, 'p3.jpg'),
(44, 2, 'p4.jpg'),
(45, 2, 'p5.jpg'),
(46, 2, 'p6.jpg'),
(47, 3, 'p1.jpg'),
(48, 3, 'p2.jpg'),
(49, 3, 'p3.jpg'),
(50, 3, 'p4.jpg'),
(51, 4, 'p1.jpg'),
(52, 4, 'p2.jpg'),
(53, 4, 'p3.jpg'),
(54, 4, 'p4.jpg'),
(55, 4, 'p5.jpg'),
(56, 4, 'p6.jpg'),
(57, 5, 'p1.jpg'),
(58, 5, 'p2.jpg'),
(59, 5, 'p3.jpg'),
(60, 5, 'p4.jpg'),
(61, 5, 'p5.jpg'),
(62, 5, 'p6.jpg'),
(81, 6, 'p1.jpg'),
(82, 6, 'p2.jpg'),
(83, 6, 'p3.jpg'),
(84, 6, 'p4.jpg'),
(85, 6, 'p5.jpg'),
(86, 6, 'p6.jpg'),
(87, 7, 'p1.jpg'),
(88, 7, 'p2.jpg'),
(89, 7, 'p3.jpg'),
(90, 7, 'p4.jpg'),
(91, 7, 'p5.jpg'),
(92, 7, 'p6.jpg'),
(93, 8, 'p1.jpg'),
(94, 8, 'p2.jpg'),
(95, 8, 'p3.jpg'),
(96, 8, 'p4.jpg'),
(97, 9, 'p1.jpg'),
(98, 9, 'p2.jpg'),
(99, 9, 'p3.jpg'),
(100, 9, 'p4.jpg'),
(101, 9, 'p5.jpg'),
(102, 9, 'p6.jpg'),
(103, 10, 'p1.jpg'),
(104, 10, 'p2.jpg'),
(105, 10, 'p3.jpg'),
(106, 10, 'p4.jpg'),
(107, 10, 'p5.jpg'),
(108, 10, 'p6.jpg'),
(109, 10, 'p1.jpg'),
(110, 10, 'p2.jpg'),
(111, 10, 'p3.jpg'),
(112, 10, 'p4.jpg'),
(113, 10, 'p5.jpg'),
(114, 10, 'p6.jpg'),
(115, 10, 'p1.jpg'),
(116, 10, 'p2.jpg'),
(117, 10, 'p3.jpg'),
(118, 10, 'p4.jpg'),
(119, 10, 'p5.jpg'),
(120, 10, 'p6.jpg'),
(121, 10, 'p1.jpg'),
(122, 10, 'p2.jpg'),
(123, 10, 'p3.jpg'),
(124, 10, 'p4.jpg'),
(125, 10, 'p5.jpg'),
(126, 10, 'p6.jpg'),
(127, 10, 'p1.jpg'),
(128, 10, 'p2.jpg'),
(129, 10, 'p3.jpg'),
(130, 10, 'p4.jpg'),
(131, 10, 'p5.jpg'),
(132, 10, 'p6.jpg'),
(133, 11, 'p1.jpg'),
(134, 11, 'p2.jpg'),
(135, 11, 'p3.jpg'),
(136, 11, 'p4.jpg'),
(137, 11, 'p5.jpg'),
(138, 12, 'p1.jpg'),
(139, 12, 'p2.jpg'),
(140, 12, 'p3.jpg'),
(141, 12, 'p4.jpg'),
(142, 13, 'p1.jpg'),
(143, 13, 'p2.jpg'),
(144, 13, 'p3.jpg'),
(145, 13, 'p4.jpg'),
(146, 13, 'p5.jpg'),
(147, 13, 'p6.jpg'),
(148, 14, 'p1.jpg'),
(149, 14, 'p2.jpg'),
(150, 14, 'p3.jpg'),
(151, 14, 'p4.jpg'),
(152, 14, 'p5.jpg'),
(153, 14, 'p6.jpg'),
(154, 15, 'p1.jpg'),
(155, 15, 'p2.jpg'),
(156, 15, 'p3.jpg'),
(157, 15, 'p4.jpg'),
(158, 15, 'p5.jpg'),
(159, 16, 'p1.jpg'),
(160, 16, 'p2.jpg'),
(161, 16, 'p3.jpg'),
(162, 16, 'p4.jpg'),
(163, 16, 'p5.jpg'),
(164, 16, 'p6.jpg'),
(165, 17, 'p1.jpg'),
(166, 17, 'p2.jpg'),
(167, 17, 'p3.jpg'),
(168, 17, 'p4.jpg'),
(169, 18, 'p1.jpg'),
(170, 18, 'p2.jpg'),
(171, 18, 'p3.jpg'),
(172, 18, 'p4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `username` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `phoneno` int(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`username`, `pass`, `phoneno`, `gender`, `email`) VALUES
('rakesh', 'rakesh', 2147483647, 'male', 'rakesh.dharshanam@gmail.com'),
('harshitkumar725', '123456', 2147483647, 'male', 'harshitkumar.mnnit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`username`, `password`, `fullname`, `email`, `phone`, `address`) VALUES
('rakesh', 'rakesh', 'dharshanam rakesh', 'rakesh.dharshanam@gmail.com', 987654321, 'not entered'),
('rakesh', 'rakesh', 'dharshanam rakesh', 'rakesh.dharshanam@gmail.com', 987654321, 'not entered'),
('rakesh', 'rakesh', 'dharshanam rakesh', 'rakesh.dharshanam@gmail.com', 987654321, 'not entered'),
('nitish', '123', 'nitish', 'nitish@gmail.com', 98746325, 'not entered'),
('nitish', '123', 'nitish', 'nitish@gmail.com', 98965565, 'not entered'),
('nitin', '123', 'nitin', 'nitin@gmail.com', 56468465, 'not entered'),
('harshit.mnnit', '123456', 'Harshit', 'harshitkumar.mnnit@gmail.com', 2147483647, 'not entered'),
('harshit.mnnit1', '123456', 'Harshit', 'harshitkumar.mnnit@gmail.com', 2147483647, 'not entered'),
('rakesh', 'rakesh', 'dharshanam rakesh', 'rakesh.dharshanam@gmail.com', 2147483647, 'not entered'),
('harshitkumar725', '123456', 'Harshit Kumar', 'harshitkumar.mnnit@gmail.com', 2147483647, 'not entered');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `payment_id` varchar(100) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `cust_acct` int(50) NOT NULL,
  `amount` int(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usernames`
--

CREATE TABLE `usernames` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usernames`
--

INSERT INTO `usernames` (`username`, `password`) VALUES
('67a05e3822ce48a6386746388e6c81f5', '67a05e3822ce48a6386746388e6c81f5'),
('f334358a2c608f2f4dad541bb8681240', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(100) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`username`, `password`, `fullname`, `email`, `phone`, `gender`) VALUES
('rakesh', 'rakesh', 'dharshanam rakesh', 'rakesh.dharshanam@gmail.com', 2147483647, 'male'),
('harshitkumar725', '123456', 'Harshit Kumar', 'harshitkumar.mnnit@gmail.com', 2147483647, 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
