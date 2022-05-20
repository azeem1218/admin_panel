-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 10:06 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpadmintable`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`, `description`, `trending`, `status`, `created_at`) VALUES
(9, 'SHOES', ' All Brands are available here. ', 1, 1, '2022-05-13 09:58:27'),
(10, 'CLOTHS', ' All stuff are available for Men, Women And Kids.  ', 0, 1, '2022-05-13 09:59:54'),
(11, 'BAGS', ' Ladies bag, School bag and all other bads are available. ', 0, 0, '2022-05-13 10:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `long_descpription` longtext NOT NULL,
  `price` varchar(191) NOT NULL,
  `offer_price` varchar(191) NOT NULL,
  `tax` varchar(191) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=show   ,  1=hide',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `small_description`, `long_descpription`, `price`, `offer_price`, `tax`, `quantity`, `image`, `status`, `create_at`) VALUES
(2, 8, 'bata shoes', ' good', 'good', '1800', '1700', '30', 0, '1652435706.jpg', 1, '2022-05-13 09:55:06'),
(3, 8, 'service shoes', ' hggh', 'jhjh', '1900', '1800', '400', 1, '1652435825.jpg', 1, '2022-05-13 09:57:05'),
(4, 11, 'Ladies bad', ' good quality', 'good', '2000', '1900', '50', 2, '1652436213.jpg', 1, '2022-05-13 10:03:33'),
(5, 9, 'xzm', ' nzx', 'nxczn', 'nsdj', '12', '22', 11, '1652441238.jpg', 0, '2022-05-13 11:27:18'),
(6, 9, 'XFXCFVXCZXCCVCV', ' CX', 'NVH', 'JBV', 'BNB', ' B', 0, '1652441760.JPG', 0, '2022-05-13 11:36:00'),
(7, 9, 'bata shoes', ' rfwefgv', 'fccv', 'asdfc', 'sdv', 'csdcfsdvv', 0, '1652441868.JPG', 0, '2022-05-13 11:37:48'),
(8, 9, 'cxv', ' sxc', 'czcc', '', '', '', 0, '1652441954.JPG', 0, '2022-05-13 11:39:14'),
(9, 9, 'sdfvzxc', ' dfc', 'v', '', '', '', 0, '1652442300-JPG', 0, '2022-05-13 11:45:00'),
(10, 9, 'dd', ' cc', 'ccd', 'cc', 'c', 'c', 0, '1652442854.JPG', 0, '2022-05-13 11:54:14'),
(11, 11, 'wssasdxnsazcxb', 'DJWDBSVJB ', 'NS SDNV ', 'NNS XVC ', 'd cnas vn', 'dncs n', 0, '1652443307.JPG', 0, '2022-05-13 12:01:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `create_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phonenumber`, `password`, `role_as`, `create_at`) VALUES
(3, 'azeem ', 'chazeem1218@gmail.com', '03454131619', '12345', 1, NULL),
(8, 'azeem', 'azeem0101', '010101`', '0101', 0, NULL),
(15, 'rgy', 'azeem@gmail.com', '565', '12345', 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
