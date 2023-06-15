-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 14, 2023 at 08:18 PM
-- Server version: 10.5.20-MariaDB-cll-lve-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `badeknka_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(11) NOT NULL,
  `scid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `ttype` varchar(13) NOT NULL,
  `tid` varchar(12) NOT NULL,
  `month` varchar(3) NOT NULL,
  `year` int(4) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `scid`, `amount`, `ttype`, `tid`, `month`, `year`, `date`, `status`) VALUES
(1, 1, 50000, 'Bank Transfer', '4646546464', 'May', 2023, '2023-05-17 11:20:24', 'Verified');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `scid` int(11) NOT NULL,
  `apply_for` varchar(9) NOT NULL,
  `demand` varchar(50) NOT NULL,
  `app_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `expected_amount` int(11) NOT NULL,
  `approved_amount` int(11) NOT NULL,
  `visit_date` date NOT NULL,
  `remarks` text NOT NULL,
  `year` int(4) NOT NULL,
  `month` varchar(3) NOT NULL,
  `qat_status` varchar(7) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `scid`, `apply_for`, `demand`, `app_date`, `expected_amount`, `approved_amount`, `visit_date`, `remarks`, `year`, `month`, `qat_status`, `status`) VALUES
(1, 1, 'IDP', 'Renovation of Room', '2023-05-17 06:19:42', 70000, 0, '0000-00-00', 'Waiting for visit', 2023, '', 'Pass', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `cnic` text NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `qual` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `dist` varchar(15) NOT NULL,
  `prog` varchar(7) NOT NULL,
  `strg` text NOT NULL,
  `buld` varchar(13) NOT NULL,
  `qatr` varchar(7) NOT NULL,
  `password` text NOT NULL,
  `status` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `fname`, `cnic`, `contact`, `email`, `qual`, `address`, `sname`, `dist`, `prog`, `strg`, `buld`, `qatr`, `password`, `status`) VALUES
(1, 'Godwin Aifuwa', 'Godwin', '36303-1234567-8', '0345-7111102', 'dewyn63@gmail.com', 'Masters', 'Loother', 'OdunamenPublic School', 'ATTOCK', 'NSP', 'Below-100', 'Rented', 'Pass', 'shahg', 'Active'),
(3, 'Oluwole Eesuola', 'Oluwole', '36303-9876558-2', '0345-7111102', 'dewyn63@gmail.com', 'Masters', 'Loother', 'OdunamenPublic School', 'ATTOCK', 'NSP', 'Below-100', 'Rented', 'Pass', 'password', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
