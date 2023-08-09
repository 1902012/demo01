-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 04:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blooddonation`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_pac`
--

CREATE TABLE `available_pac` (
  `name` varchar(250) NOT NULL,
  `available` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `available_pac`
--

INSERT INTO `available_pac` (`name`, `available`) VALUES
('A+', 4),
('B+', 4),
('AB+', 2),
('O+', 5),
('A-', 2),
('B-', 3),
('AB-', 1),
('O-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `name` varchar(230) NOT NULL,
  `bloodgroup` varchar(250) DEFAULT NULL,
  `sex` varchar(240) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phoneno` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `name`, `bloodgroup`, `sex`, `age`, `address`, `phoneno`, `date`, `username`, `password`) VALUES
(1, 'Hanium Maria', 'O+', 'Female', 21, 'gazipur', 1564234567, '2023-06-03', 'hanium', '12345'),
(2, 'Nusrat Zahan', 'B+', 'Female', 22, 'gazipur', 1765234589, '2023-06-03', 'nusrat', '12345'),
(3, 'Shamila Rahman', 'A+', 'Female', 26, 'Bogura', 1987236789, '2023-06-03', 'shamila', '12345'),
(4, 'Abdur rahman', 'B+', 'Male', 40, 'gazipur', 1786452389, '2023-06-03', 'abdur', '12345'),
(5, 'Tarif Mahmud', 'B+', 'Male', 23, 'gazipur', 1675234567, '2023-06-03', 'tarif', '12345'),
(6, 'borhan uddin', 'B-', 'Male', 23, 'gazipur', 167534239, '2023-06-03', 'borhan', '12345'),
(7, 'sumona afroz', 'O+', 'Female', 23, 'gazipur', 16753420, '2023-06-03', 'afroz', '12345'),
(8, 'Sabbir Ahmed', 'A+', 'Male', 23, 'gazipur', 16753429, '2023-06-03', 'sabbir', '12345'),
(9, 'Emran Hosain', 'AB-', 'Male', 34, 'Rajshahi', 98376435416, '2023-06-03', 'Emran', '9876'),
(10, 'Rafi Ahamed', 'B+', 'Male', 23, 'Dhaka', 47382568627, '2023-06-03', 'Rafi', '9876'),
(11, 'Fahad Mahmud', 'AB-', 'Male', 24, 'Dhaka', 789682517352, '2023-06-03', 'Fahad', '9876'),
(12, 'Mahin Islam', 'B+', 'Male', 30, 'Rangpur', 879432546, '2023-06-03', 'Mahin', '9876'),
(13, 'Lubaba Sheikh', 'B-', 'Female', 25, 'Bogura', 678456675678, '2023-06-04', 'Lubaba', '12345'),
(14, 'Sumaia Islam', 'B-', 'Female', 24, 'Bogura', 1323545, '2023-06-04', 'Sumaia', '12345'),
(15, 'Mou Rahman', 'AB+', 'Female', 29, 'Bogura', 1564889943, '2023-06-05', 'mou', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `donorhistory`
--

CREATE TABLE `donorhistory` (
  `bloodtype` varchar(250) NOT NULL,
  `user` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `donorhistory`
--

INSERT INTO `donorhistory` (`bloodtype`, `user`, `date`, `time`) VALUES
('O+', 'hanium', '2023-06-03', '15:27:15'),
('B-', 'Sumaia', '2023-06-04', '16:19:22'),
('O+', 'hanium', '2023-06-05', '15:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `donor_reg`
--

CREATE TABLE `donor_reg` (
  `Full Name` varchar(50) NOT NULL,
  `Blood Group` varchar(10) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Age` int(10) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Mobile no` int(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Confirm Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchaser`
--

CREATE TABLE `purchaser` (
  `id` int(11) NOT NULL,
  `name` varchar(260) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `user` varchar(259) NOT NULL,
  `password` varchar(250) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `purchaser`
--

INSERT INTO `purchaser` (`id`, `name`, `mobile`, `address`, `user`, `password`, `date`) VALUES
(1, 'sumona islam', 176543487, 'gazipur', 'sumona', '1234', '2023-06-03'),
(2, 'linza mony ', 17653478, 'gazipur', 'linza', '1234', '2023-06-03'),
(3, 'Ashraf Rahman', 1567349097, 'Dhaka', 'ashraf', '1234', '2023-06-03'),
(4, 'Akash Rahman', 1876450987, 'Dhaka', 'akash', '1234', '2023-06-03'),
(5, 'Naznin nipa', 187645345, 'gazipur', '1234', '1234', '2023-06-03'),
(6, 'Rakib Hossen', 167534904, 'gazipur', 'rakib', '1234', '2023-06-03'),
(7, 'Sumaiya Islam', 17653490, 'Bogura', 'sumaiya', '1234', '2023-06-03'),
(8, 'Nazrul Islam', 17653490, 'Bogura', 'nazrul', '1234', '2023-06-03'),
(9, 'Zillur Rahman', 187654568, 'Bogura', 'zillur', '1234', '2023-06-03'),
(10, 'Nusrat Jahan', 156783459, 'Barisal', 'nusrat', '1234', '2023-06-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchaser`
--
ALTER TABLE `purchaser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `purchaser`
--
ALTER TABLE `purchaser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
