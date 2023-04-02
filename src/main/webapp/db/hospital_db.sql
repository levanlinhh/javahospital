-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 06:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(255) NOT NULL,
  `userId` int(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `appoinDate` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phNo` varchar(255) NOT NULL,
  `diseases` varchar(255) NOT NULL,
  `doctorId` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `userId`, `fullName`, `gender`, `age`, `appoinDate`, `email`, `phNo`, `diseases`, `doctorId`, `address`, `status`) VALUES
(1, 3, 'Lê Văn Lĩnh', 'Nam', '22', '2023-03-22', 'vanlinh.it.hutech@gmail.com', '0348323280', 'Không', 6, 'KÃ TÃC XÃ KHU B Äáº I Há»C QUá»C GIA Há» CHÃ MINH', 'Pending'),
(2, 3, 'Quynh nhi', 'Nữ', '22', '2023-03-22', 'quynhnhi2002@gmail.com', '0387308987', 'Không', 6, 'KÃ TÃC XÃ KHU B Äáº I Há»C QUá»C GIA Há» CHÃ MINH', 'Pending'),
(3, 3, 'Phan Minh Thuáº­n', 'Nam', '21', '2023-03-06', 'phanminhthuan@gmail.com', '0383434991', 'KhÃ´ng', 6, 'TÃ¢n BÃ¬nh', 'Pending'),
(4, 2, 'Le Van Linhh', 'Nam', '23', '2023-03-29', 'vanlinh.it.open@gmail.com', '0287827238', 'Khong', 6, 'Ho Chi Minh', 'Pending'),
(5, 2, 'Kien To', 'Ná»¯', '22', '2023-03-27', 'kiento@gmail.com', '0387752037', 'khong', 6, 'Viet Nam', 'Pending'),
(6, 2, 'Phan Minh Thuan', 'Nam', '22', '2023-03-21', 'thuanphan@gmail.com', '0398729293', 'khong', 6, 'ho chi minh', 'Chưa giải quyết');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(150) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `specialist` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobno` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `fullname`, `dob`, `qualification`, `specialist`, `email`, `mobno`, `password`) VALUES
(5, 'Phan Minh Thuáº­n', '2023-03-28', 'Phu San', 'Phu San', 'phanminhthuan@gmail.com', '2922222', 'admin123'),
(6, 'Le Van Linh', '2023-03-29', 'VLTL ', 'VLTL&PHCN', 'vanlinh@gmail.com', '19110624754', 'Aa12345');

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(150) NOT NULL,
  `spec_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `spec_name`) VALUES
(1, 'VLTL&PHCN'),
(2, 'Phu San'),
(3, 'Tim'),
(4, 'Chan Thuong Chinh Hinh');

-- --------------------------------------------------------

--
-- Table structure for table `user_dtls`
--

CREATE TABLE `user_dtls` (
  `id` int(150) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_dtls`
--

INSERT INTO `user_dtls` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Le Van Linh', 'vanlinh.it.hutech@gmail.com', 'admin'),
(2, 'Le Van Linh', 'vanlinh.it@gmail.com', 'Aa12345'),
(3, 'Le Quynh Nhi', 'quynhnhi2002@gmail.com', 'a2002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_dtls`
--
ALTER TABLE `user_dtls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_dtls`
--
ALTER TABLE `user_dtls`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
