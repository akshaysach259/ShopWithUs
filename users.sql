-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2018 at 11:08 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin123@shopwithus.com', 'admin@123'),
(2, 'admin', 'admin123@shopwithus.com', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `pPrice` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `product_id`, `pName`, `pPrice`) VALUES
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 11, 'Red Top', 300),
(1, 11, 'Red Top', 300),
(1, 11, 'Red Top', 300),
(1, 11, 'Red Top', 300),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599),
(1, 8, 'Jacket', 1500),
(1, 8, 'Jacket', 1500),
(1, 8, 'Jacket', 1500),
(1, 10, 'Shirt blue', 800),
(1, 13, 'T-shirt', 599),
(1, 13, 'T-shirt', 599);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `oid` int(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `street1` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`oid`, `full_name`, `street1`, `city`, `zip`) VALUES
(1, 'Akshay', 'B676', 'Delhi', 110085),
(2, 'Akshay', 'B676', 'Delhi', 110085),
(3, 'Akshay', 'B676', 'Delhi', 110088);

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `card_no` int(100) NOT NULL,
  `mm` int(100) NOT NULL,
  `yy` int(100) NOT NULL,
  `dd` int(100) NOT NULL,
  `cvv` int(100) NOT NULL,
  `name_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pId` int(11) NOT NULL,
  `pName` varchar(70) NOT NULL,
  `pPrice` int(10) NOT NULL,
  `pDiscription` varchar(100) NOT NULL,
  `pCategories` varchar(10) NOT NULL,
  `pSize` int(5) NOT NULL,
  `pImage` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pId`, `pName`, `pPrice`, `pDiscription`, `pCategories`, `pSize`, `pImage`) VALUES
(6, 'Red Top Large', 1755, 'Red Top Large Large Size Blackberry', 'TOP', 48, '4.png'),
(7, 'Jacket', 1500, 'Jacket Blue Medium', 'Jacket', 36, 'hooded.jpg'),
(8, 'Jacket', 1500, 'Jacket Blue Medium', 'Jacket', 36, 'hooded.jpg'),
(10, 'Shirt blue', 800, 'blue', 'shirt', 25, '2.png'),
(11, 'Red Top', 300, 'Red Top Large Large Size Blackberry', 'TOP', 85, '5.png'),
(13, 'T-shirt', 599, 'T-shirts With', 'T-shirts', 32, 'hooded.jpg'),
(14, 'Top Red', 599, 'Top Red', 'Top', 32, '5.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Akshay', 'akshaysach259@gmail.com', '8447711265'),
(2, 'abcd', 'abcd@gmail.com', '2525');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `oid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
