-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 09:47 AM
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
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `roomId`, `title`, `start`, `end`, `allDay`, `participants`, `departmentName`, `departmentTel`, `coordinatorName`, `coordinatorTel`, `formatId`, `food`, `comment`, `bookerName`, `bookerTel`, `status`) VALUES
(1, 1, 'ทดสอบประชุม', '2022-06-21 08:30:00', '2022-06-21 12:00:00', 0, 30, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์ เขียวโพธิ์', '0970616129', 3, NULL, 'จัดโต๊ะ 4 โต๊ะ', 'ธนพงศ์ เขียวโพธิ์', '4530', 0),
(2, 1, 'ทดสอบ2', '2022-06-21 13:00:00', '2022-06-21 16:30:00', 0, 60, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์ เขียวโพธิ์', '0970616129', 1, NULL, NULL, 'ธนพงศ์ เขียวโพธิ์', '4530', 1),
(3, 1, 'ทดสอบ 1', '2022-06-24 08:30:00', '2022-06-24 12:00:00', 0, 10, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 3, NULL, NULL, 'ธนพงศ์', '4530', 1),
(4, 1, 'ทดสอบ 2 ', '2022-06-24 13:00:00', '2022-06-24 16:30:00', 0, 5, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, NULL, NULL, 'ธนพงศ์', '4530', 1),
(5, 1, 'ทดสอบ 3', '2022-06-24 18:00:00', '2022-06-24 23:00:00', 0, 3, 'IT Center', '4530', 'Tanapong', '0970616129', 2, NULL, NULL, 'Tanapong Keawpho', '0970616129', 1),
(6, 1, 'ทดสอบ 23 เย็น', '2022-06-23 18:00:00', '2022-06-23 23:00:00', 1, 11, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, NULL, 'กกกก', 'ธนพงศ์', '0970616129', 1),
(9, 1, 'title', '2022-06-21 00:00:00', '2022-06-21 23:00:00', 0, 123, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', 'comment', 'ธนพงศ์', '0970616129', 1),
(16, 1, 'เช้า', '2022-06-22 08:30:00', '2022-06-22 12:00:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', 'd', 'ธนพงศ์', '0970616129', 1),
(17, 1, 'เช้า', '2022-06-22 13:00:00', '2022-06-22 16:30:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', 'd', 'ธนพงศ์', '0970616129', 1),
(18, 1, 'ทดสอบ', '2022-06-22 18:00:00', '2022-06-22 23:00:00', 0, 12, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 1),
(19, 1, 'title', '2022-06-25 08:30:00', '2022-06-25 12:00:00', 0, 11, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', 'dd', 'ธนพงศ์', '0970616129', 1),
(20, 1, 'test', '2022-06-25 13:00:00', '2022-06-25 16:30:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '33', 'ธนพงศ์', '0970616129', 1),
(21, 1, 'title', '2022-06-25 18:00:00', '2022-06-25 23:00:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', 'ddd', 'ธนพงศ์', '0970616129', 1),
(22, 1, 'title', '2022-06-26 08:30:00', '2022-06-26 12:00:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;s:1:\"5\";i:1;s:2:\"20\";i:2;s:2:\"10\";i:3;s:2:\"13\";}', 'ddddd', 'ธนพงศ์', '0970616129', 1),
(23, 1, 'จองทั้งวัน', '2022-06-27 00:00:00', '2022-06-27 00:00:00', 1, 10, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 1, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '5555', 'ธนพงศ์', '0970616129', 1);

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
(2, 'ห้องทดสอบ 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at vestibulum velit, sit amet rutrum dui. Vivamus euismod tortor libero, vitae imperdiet dui consectetur ut. Pellentesque quis egestas tortor. Nam commodo aliquet consectetur. Phasellus sit ame', NULL),
(3, 'ห้องประชุมราชพฤกษ์', 'ชั้น 6 ตึกใหม่', '2.jpg'),
(4, 'ห้องประชุม 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam libero est, euismod sit amet felis at, aliquam consectetur eros. In tincidunt turpis et sapien viverra, eu rhoncus elit efficitur. Nunc.', '3.jpg'),
(5, 'ห้องประชุม 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit et augue sed ultrices. Nunc at libero justo. Donec feugiat orci id ipsum pharetra, et bibendum turpis consequat. Donec ac diam luctus massa placerat consectetur eget consectetur feli', '4.jpg'),
(7, 'ห้องประชุมทดสอบ2', 'ทดสอบ', 'ห้องประชุมทดสอบ2.jpg');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

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
