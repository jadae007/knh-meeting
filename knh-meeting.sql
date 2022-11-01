-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 10:06 AM
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
(43, 1, 'ทดสอบ', '2022-07-07 08:30:00', '2022-07-07 12:00:00', 0, 1, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 2, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 0, 1),
(45, 1, 'ทดสอบ', '2022-07-11 08:30:00', '2022-07-11 12:00:00', 0, 12, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 2, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 2, 1),
(47, 1, 'ทดสอบ', '2022-10-07 08:00:00', '2022-10-07 23:00:00', 1, 10, 'ศูนย์คอมพิวเตอร์', '4530', 'ธนพงศ์', '0970616129', 2, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '', 'ธนพงศ์', '0970616129', 1, 1),
(48, 1, 'ทดสอบ', '2022-11-02 08:00:00', '2022-11-02 23:00:00', 1, 12, 'หอผู้ป่วยพิเศษชั้น 6 อาคาร 8 ชั้น', '4530', 'ธนพงศ์', '0970616129', 2, 'a:4:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;}', '213123123213', 'ธนพงศ์', '0970616129', 4, 1);

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
(3, '', '', 'ห้องประชุมราชพฤกษ์.jpg'),
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
  `department` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `department`, `role`, `active`) VALUES
(1, 'it18@local.knh', 'ศูนย์คอมพิวเตอร์', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์คอมพิวเตอร์', 0, 1),
(2, 'jadae2225@gmail.com', 'เด้ ศูนย์คอม', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์คอมพิวเตอร์ 2', 1, 1),
(3, 'c019@knh.local', 'c019@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษชั้น 5 อาคาร 8 ชั้น', 1, 1),
(4, 'c020@knh.local', 'c020@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษชั้น 6 อาคาร 8 ชั้น', 1, 1),
(5, 'c021@knh.local', 'c021@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยหนักศัลกรรมทั่วไป', 1, 1),
(6, 'c022@knh.local', 'c022@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องฉีดยาทำแผล', 1, 1),
(7, 'd001@knh.local', 'd001@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยศัลกรรมชาย', 1, 1),
(8, 'd002@knh.local', 'd002@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยศัลกรรมหญิง', 1, 1),
(9, 'd003@knh.local', 'd003@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยศัลกรรมชั้น4', 1, 1),
(10, 'd004@knh.local', 'd004@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษศัลกรรมกระดูก', 1, 1),
(11, 'd005@knh.local', 'd005@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยศัลกรรมชั้น5', 1, 1),
(12, 'd006@knh.local', 'd006@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยศัลกรรมกระดูกชาย', 1, 1),
(13, 'd007@knh.local', 'd007@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยศัลกรรมกระดูกหญิง-เมตตาล่าง', 1, 1),
(14, 'd008@knh.local', 'd008@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยนรีเวช', 1, 1),
(15, 'd009@knh.local', 'd009@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยหลังคลอด', 1, 1),
(16, 'd010@knh.local', 'd010@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษสูติ-นรีเวช', 1, 1),
(17, 'd011@knh.local', 'd011@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยหนักอายุรกรรม1', 1, 1),
(18, 'd012@knh.local', 'd012@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วย ICU NEURO&TRaUMA', 1, 1),
(20, 'd014@knh.local', 'd014@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยอายุรกรรมหญิง ชั้น 3', 1, 1),
(21, 'd015@knh.local', 'd015@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยอายุรกรรมหญิง ชั้น 4', 1, 1),
(22, 'd016@knh.local', 'd016@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษชั้น 7 อาคาร 8 ชั้น', 1, 1),
(23, 'd017@knh.local', 'd017@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษชั้น 8 อาคาร 8 ชั้น', 1, 1),
(24, 'd018@knh.local', 'd018@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยอายุรกรรมชายชั้น 1', 1, 1),
(25, 'd019@knh.local', 'd019@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยอายุรกรรมชายชั้น 2', 1, 1),
(26, 'd020@knh.local', 'd020@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยสงฆ์บน', 1, 1),
(27, 'd021@knh.local', 'd021@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษ ตา หู คอ จมูก', 1, 1),
(28, 'd022@knh.local', 'd022@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วย ตา หู คอ จมูก', 1, 1),
(29, 'd023@knh.local', 'd023@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยสงฆ์ล่าง(เด็ก)', 1, 1),
(30, 'd024@knh.local', 'd024@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยทารกป่วย', 1, 1),
(31, 'd025@knh.local', 'd025@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยพิเศษ กุมารเวชกรรม', 1, 1),
(32, 'd026@knh.local', 'd026@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องผ่าตัด', 1, 1),
(33, 'd027@knh.local', 'd027@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วย STROKE UNIT', 1, 1),
(34, 'd028@knh.local', 'd028@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องคลอด', 1, 1),
(35, 'd029@knh.local', 'd029@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องวิสัญญี', 1, 1),
(36, 'd030@knh.local', 'd030@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยหนักอายุรกรรม2', 1, 1),
(37, 'd031@knh.local', 'd031@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หอผู้ป่วยศัลกรรมกระดูกชาย ทีม 2', 1, 1),
(38, 'opd001@knh.local', 'opd001@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจอายุรกรรม', 1, 1),
(39, 'opd002@knh.local', 'opd002@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจหูคอจมูก', 1, 1),
(40, 'opd003@knh.local', 'opd003@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจสูงอายุ', 1, 1),
(41, 'opd004@knh.local', 'opd004@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจศัลยกรรมกระดูก', 1, 1),
(42, 'opd005@knh.local', 'opd005@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจศัลยกรรม', 1, 1),
(43, 'opd006@knh.local', 'opd006@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจผิวหนัง', 1, 1),
(44, 'opd007@knh.local', 'opd007@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจประกันสังคม', 1, 1),
(45, 'opd008@knh.local', 'opd008@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจนรีเวช', 1, 1),
(46, 'opd009@knh.local', 'opd009@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจทางเดินปัสสาวะ', 1, 1),
(47, 'opd010@knh.local', 'opd010@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจทั่วไป', 1, 1),
(48, 'opd011@knh.local', 'opd011@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจตา', 1, 1),
(49, 'opd012@knh.local', 'opd012@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจเด็ก', 1, 1),
(50, 'opd013@knh.local', 'opd013@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องฉุกเฉิน (ER)', 1, 1),
(51, 'opd014@knh.local', 'opd014@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องกระตุ้นพัฒนาการ', 1, 1),
(52, 'opd015@knh.local', 'opd015@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องฝากครรภ์', 1, 1),
(53, 'opd016@knh.local', 'opd016@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องตรวจพิเศษ / คลินิกโรคหัวใจ', 1, 1),
(54, 'opd017@knh.local', 'opd017@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องฉีดยา - ทำแผล', 1, 1),
(55, 'opd018@knh.local', 'opd018@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์แปล', 1, 1),
(56, 'opd019@knh.local', 'opd019@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์นำส่ง', 1, 1),
(57, 'opd020@knh.local', 'opd020@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ไตเทียม', 1, 1),
(58, 'opd021@knh.local', 'opd021@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'คลินิกปรึกษา', 1, 1),
(59, 'opd022@knh.local', 'opd022@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กิจกรรมบำบัด', 1, 1),
(60, 'xray001@knh.local', 'xray001@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'Xray', 1, 1),
(61, 'lab001@knh.local', 'lab001@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'Lab', 1, 1),
(62, 'ems@knh.local', 'ems@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์นำส่ง(EMS)', 1, 1),
(64, 'it1@knh.local', 'it1@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานวิชาการ', 1, 1),
(65, 'it2@knh.local', 'it2@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ซักฟอก', 1, 1),
(66, 'it3@knh.local', 'it3@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ทีมวิชาการรพ.', 1, 1),
(67, 'it4@knh.local', 'it4@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มการพยาบาล', 1, 1),
(68, 'it5@knh.local', 'it5@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานจิตเวช', 1, 1),
(69, 'it6@knh.local', 'it6@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานทันตกรรม', 1, 1),
(70, 'it7@knh.local', 'it7@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานพยาธิวิทยากายวิภาค', 1, 1),
(71, 'it8@knh.local', 'it8@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานพยาธิวิทยาคลินิก', 1, 1),
(72, 'it9@knh.local', 'it9@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานรังสีการแพทย์', 1, 1),
(73, 'it10@knh.local', 'it10@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานสุขศึกษา', 1, 1),
(74, 'it11@knh.local', 'it11@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานอาชีวเวชกรรม', 1, 1),
(75, 'it12@knh.local', 'it12@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานเวชกรรมฟื้นฟู', 1, 1),
(76, 'it13@knh.local', 'it13@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานเวชกรรมสังคม', 1, 1),
(77, 'it14@knh.local', 'it14@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานกายอุปกรณ์', 1, 1),
(78, 'it15@knh.local', 'it15@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานซ่อมบำรุง', 1, 1),
(79, 'it16@knh.local', 'it16@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานห้องสมุด', 1, 1),
(80, 'it17@knh.local', 'it17@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานเวชนิทัศน์และโสตทัศนศึกษา', 1, 1),
(81, 'it18@knh.local', 'it18@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานแพทย์แผนไทยและการแพทย์ทางเลือก', 1, 1),
(82, 'it19@knh.local', 'it19@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายการเงิน', 1, 1),
(83, 'it20@knh.local', 'it20@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายการเจ้าหน้าที่', 1, 1),
(84, 'it21@knh.local', 'it21@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายบริหารงานทั่วไป', 1, 1),
(85, 'it22@knh.local', 'it22@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายพัสดุ', 1, 1),
(86, 'it23@knh.local', 'it23@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายสวัสดิการสังคม', 1, 1),
(87, 'it24@knh.local', 'it24@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายสารสนเทศทางการแพทย์', 1, 1),
(88, 'it25@knh.local', 'it25@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายโภชนาการ', 1, 1),
(89, 'it26@knh.local', 'it26@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ธุรการยานพาหนะ', 1, 1),
(90, 'it27@knh.local', 'it27@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'วิชาการ', 1, 1),
(91, 'it28@knh.local', 'it28@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์คอมพิวเตอร์', 1, 1),
(92, 'it29@knh.local', 'it29@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ธุรการศูนย์คุณภาพ', 1, 1),
(93, 'it30@knh.local', 'it30@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานเภสัชกรรม', 1, 1),
(94, 'it31@knh.local', 'it31@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายบริหารทั่วไป', 1, 1),
(95, 'it32@knh.local', 'it32@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ฝ่ายพัฒนาทรัพยากรบุคคล', 1, 1),
(96, 'it33@knh.local', 'it33@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์เรียกเก็บ', 1, 1),
(97, 'it34@knh.local', 'it34@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานห้องสมุด', 1, 1),
(98, 'it35@knh.local', 'it35@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'องค์กรแพทย์', 1, 1),
(99, 'plan@knh.local', 'plan@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'งานยุทธศาสตร์และแผนงาน', 1, 1),
(100, 'it36@knh.local', 'it36@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานเวชศาสตร์การกีฬา', 1, 1),
(101, 'it37@knh.local', 'it37@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์สุขภาพชุมชนเมือง', 1, 1),
(102, 'it38@knh.local', 'it38@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์แพทย์ท่าศาลา', 1, 1),
(103, 'it39@knh.local', 'it39@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'กลุ่มงานพยาบาลชุมชน ', 1, 1),
(104, 'it40@knh.local', 'it40@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องส่องกล้อง ชั้น 4 ', 1, 1),
(105, 'it41@knh.local', 'it41@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'จ่ายกลาง', 1, 1),
(106, 'it42@knh.local', 'it42@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'สำนักงานจ่ายกลาง', 1, 1),
(107, 'risk@knh.local', 'risk@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ความเสี่ยง', 1, 1),
(108, 'pr@knh.local', 'pr@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ประชาสัมพันธ์', 1, 1),
(109, 'capd@knh.local', 'capd@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'capd (ล้างช่องท้อง)', 1, 1),
(110, 'it43@knh.local', 'it43@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ศูนย์เครื่องมือแพทย์', 1, 1),
(111, 'er@knh.local', 'er@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'ห้องฉุกเฉิน (ER)', 1, 1),
(112, 'it44@knh.local', 'it44@knh.local', '0de3d5bb16a3d62d35756117c8d23d6810787ec3461412b04d631053571fb31d', 'หน่วยจัดส่งกลาง', 1, 1);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

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
