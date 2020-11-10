-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 06:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(8, 'Grand Marble Organ', 'This is an organ built into the wall with marble around it.', '5f945a06be5026.78155009.jpg', '2020-10-24', NULL),
(9, 'Wooden Organ', 'This organ is elegantly built with a wooden design. Also, featuring the tubes allowing for the exit of the sound out the front of the organ.  ', '5f945a4c3ded31.77282125.jpg', '2020-10-24', NULL),
(10, 'Grand Organ', 'This is an organ of grand design and is our most expensive design.', '5f945a7b701093.80348771.jpg', '2020-10-24', NULL),
(11, 'Mobile Organ', 'This organ is one in which like most pianos can be easily relocated as need be, allowing for the renting of this design.', '5f945ab19247b7.39408163.jpg', '2020-10-24', NULL),
(12, 'Standard Organ', 'This is our standard design choice for those new to the field of organs this is the one for you.', '5f945ae6e808c5.96561762.jpg', '2020-10-24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT 'uploads/anon.png',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('tetst', '../uploads/5f78d35e9950e0.05735948.jfif', ''),
('test', '../uploads/5f8330034e9434.04985390.jfif', 'Gandalf here');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `uname` varchar(80) CHARACTER SET utf8mb4 NOT NULL,
  `title` varchar(60) CHARACTER SET utf8mb4 NOT NULL,
  `review_text` text CHARACTER SET utf8mb4 NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(6, 12, 'test', 'Test version 3', 'testing', '2020-10-24 19:41:38', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(4, 'test', 'test', 'test@test.com', 'test', '$2y$10$M7UJCoT1htZMDEkYaCrLr.YWGWAj/UKH5hBctooWzny9/1m1Hm59q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
