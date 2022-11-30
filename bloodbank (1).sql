-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2022 at 08:25 AM
-- Server version: 5.5.16
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `aws`
--

CREATE TABLE `aws` (
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `aws` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aws`
--

INSERT INTO `aws` (`name`, `number`, `email`, `aws`, `status`) VALUES
('Thanh Nghia', '0867469413', 'nghia123.vn15@mail.com', 'Dau rang ', 'pending'),
('Thanh Minh', '123456', 'nghia@example.com', 'toi co the hien mau', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `name` varchar(100) DEFAULT NULL,
  `mobilenumber` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`name`, `mobilenumber`, `email`, `bloodgroup`, `status`) VALUES
('Thanh Nghiaaa', '6356125365', '0939327226@gamil.com', 'B+', 'completed'),
('Thanh Hay', '0147258369', 'nghia123.vn15@mail.com', 'A+', 'completed'),
('Thanh Nghiaaa', '1231231231', 'nghia123.vn12@mail.com', 'O+', 'completed'),
('Thanh Nghia', '0190129012', 'nghia123.vn15@mail.com', 'A+', 'completed'),
('Thanh Nghia', '0190129012', 'nghia123.vn15@mail.com', 'A+', 'completed'),
('Thanh Nghia', '0190129012', 'nghia123.vn15@mail.com', 'O+', 'completed'),
('Thanh Nghia', '0932143529', 'nghia123.vn15@mail.com', 'B+', 'completed'),
('Thanh Nghia', '0932143529', 'nghia123.vn15@mail.com', 'B+', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `father` varchar(200) DEFAULT NULL,
  `mother` varchar(200) DEFAULT NULL,
  `mobilenumber` varchar(10) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `bloodgroup` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `father`, `mother`, `mobilenumber`, `gender`, `email`, `bloodgroup`, `address`) VALUES
(1, 'Thanh Minh', 'Phuoc', 'Xuyen', '6356125365', 'Male', 'nghia123.vn15@mail.com', 'A+', 'CanTho City');

-- --------------------------------------------------------

--
-- Table structure for table `finddoctor`
--

CREATE TABLE `finddoctor` (
  `number` varchar(10) DEFAULT NULL,
  `specialities` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finddoctor`
--

INSERT INTO `finddoctor` (`number`, `specialities`, `status`) VALUES
('21321', 'asdasd', 'completed'),
('123123123', 'jadgasjd', 'completed'),
('12312312', 'asdasd', 'completed'),
('098743458', 'Xuong khop', 'completed'),
('12312312', 'asdasd', 'completed'),
('0867469513', 'Xuong khop ', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`) VALUES
(1, 'Benefits of Donating Blood', 'https://healthmatters.nyp.org/the-surprising-benefits-of-donating-blood/'),
(2, 'Hiem mau ', 'hkahsdks');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `bloodgroup` varchar(100) DEFAULT NULL,
  `units` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`bloodgroup`, `units`) VALUES
('A+', '95'),
('A-', '105'),
('B+', '105'),
('B-', '68'),
('O+', '132'),
('O-', '100'),
('AB+', '56'),
('AB-', '100');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
