-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 11:07 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knh-meeting`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `roomId` int(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `allDay` tinyint(1) DEFAULT 0,
  `participants` int(11) NOT NULL,
  `departmentName` varchar(100) NOT NULL,
  `departmentTel` varchar(4) NOT NULL,
  `coordinatorName` varchar(200) NOT NULL,
  `coordinatorTel` varchar(10) NOT NULL,
  `formatId` int(3) NOT NULL,
  `food` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `bookerName` varchar(200) NOT NULL,
  `bookerTel` varchar(10) NOT NULL,
  `bookerUser` int(11) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `roomId`, `title`, `start`, `end`, `allDay`, `participants`, `departmentName`, `departmentTel`, `coordinatorName`, `coordinatorTel`, `formatId`, `food`, `comment`, `bookerName`, `bookerTel`, `bookerUser`, `status`) VALUES
(36, 1, 'ทดสอบ เช้าเย็น', '2022-07-08 08:30:00', '2022-07-08 12:00:00', 0, 10, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 3, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(37, 1, 'ทดสอบ เช้าเย็น', '2022-07-08 18:00:00', '2022-07-08 23:00:00', 0, 10, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 3, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(38, 3, 'ทดสอบเช้าบ่าย', '2022-07-09 08:30:00', '2022-07-09 12:00:00', 0, 10, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(39, 3, 'ทดสอบเช้าบ่าย', '2022-07-09 13:00:00', '2022-07-09 16:30:00', 0, 10, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(40, 3, 'ทดสอบ', '2022-07-08 00:00:00', '2022-07-08 00:00:00', 1, 11, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 3, 'a:4:{i:0;s:2:\"10\";i:1;s:2:\"10\";i:2;s:2:\"10\";i:3;s:2:\"10\";}', '', 'ธนพงศ์', '0970616129', 0, 1),
(41, 3, 'ทดสอบ', '2022-07-10 08:00:00', '2022-07-10 23:00:00', 1, 123, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(42, 1, 'ทดสอบ', '2022-07-07 08:30:00', '2022-07-07 12:00:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 2, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(43, 1, 'ทดสอบ', '2022-07-07 08:30:00', '2022-07-07 12:00:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 2, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(44, 1, 'ทดสอบ user', '2022-07-09 18:00:00', '2022-07-09 23:00:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `format`
--

CREATE TABLE `format` (
  `id` int(3) NOT NULL,
  `formatName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `format`
--

INSERT INTO `format` (`id`, `formatName`) VALUES
(1, 'แบบแถวหน้ากระดาน'),
(2, 'แบบนิเทศงานฯ'),
(3, 'แบบทำกลุ่มกิจกรรม'),
(4, 'งานเลี้ยงกลางคืน');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`, `description`, `image`) VALUES
(1, 'ห้องประชุมสาระ', 'มีเวที', '1.jpg'),
(2, 'ห้องทดสอบ 1', 'Lorem ipsum dolor sit amet', NULL),
(3, 'ห้องประชุมราชพฤกษ์', 'ชั้น 6 ตึกใหม่', 'ห้องประชุมราชพฤกษ์.jpg'),
(4, 'ห้องประชุม 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam libero est, euismod sit amet felis at, aliquam consectetur eros. In tincidunt turpis et sapien viverra, eu rhoncus elit efficitur. Nunc.', '3.jpg'),
(5, 'ห้องประชุม 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit et augue sed ultrices. Nunc at libero justo. Donec feugiat orci id ipsum pharetra, et bibendum turpis consequat. Donec ac diam luctus massa placerat consectetur eget consectetur feli', '4.jpg'),
(7, 'ห้องประชุมทดสอบ2', 'ทดสอบ', 'ห้องประชุมทดสอบ2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `role`, `active`) VALUES
(1, 'it18@local.knh', 'ศูนย์คอมพิวเตอร์', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 0, 1),
(2, 'jadae2225@gmail.com', 'เด้ ศูนย์คอม', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to room` (`roomId`);

--
-- Indexes for table `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `format`
--
ALTER TABLE `format`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `to room` FOREIGN KEY (`roomId`) REFERENCES `room` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
