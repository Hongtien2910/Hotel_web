-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 07:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tdt_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `senderName` varchar(20) NOT NULL,
  `senderEmail` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `senderName`, `senderEmail`) VALUES
(1, 'Khach san co cho mang thu cung vao khong', 'user1', 'vandung17022003@gmail.com'),
(2, 'Dich vu khach san co ho boi khong', 'dung123', 'dung123');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `CheckIn` varchar(20) NOT NULL,
  `CheckOut` varchar(20) NOT NULL,
  `Adults` int(11) NOT NULL,
  `Kids` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `RoomNo` int(20) DEFAULT NULL,
  `RequestMadeBy` varchar(30) NOT NULL,
  `dateNtime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `CheckIn`, `CheckOut`, `Adults`, `Kids`, `Status`, `RoomNo`, `RequestMadeBy`, `dateNtime`) VALUES
(3, '2023-12-21', '2023-12-23', 1, 1, 1, 102, 'user1', '2023-12-11 08:42:36'),
(4, '2023-12-13', '2023-12-14', 1, 1, 1, 104, 'dung123', '2023-12-12 17:27:55'),
(7, '2023-12-20', '2023-12-25', 1, 0, 0, NULL, 'dung123', '2023-12-12 17:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `type`) VALUES
(1, 'dung123', '12345678', 'dung123@gmail.com', 'user'),
(2, 'user1', '12345678', 'user1@gmail.com', 'user'),
(3, 'manager', '12345678', 'manager@gmail.com', 'manager'),
(4, 'owner', '12345678', 'owner@gmail.com', 'owner'),
(5, 'tien123', '12345678', 'tien123@gmail.com', 'user'),
(6, 'tin123', '12345678', 'tin123@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
