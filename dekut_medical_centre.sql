-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2023 at 05:49 AM
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
-- Database: `dekut medical centre`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('MAGGIESIMON', 'FREDMARY');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `License` varchar(255) NOT NULL,
  `telno` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`name`, `email`, `License`, `telno`, `specialization`) VALUES
('Fred Maina', 'fred@gmail.com', 'ph-02/8007', '0735198264', 'physician');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_response`
--

CREATE TABLE `doctor_response` (
  `License` varchar(255) NOT NULL,
  `Regno` varchar(255) NOT NULL,
  `Diagnosis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_response`
--

INSERT INTO `doctor_response` (`License`, `Regno`, `Diagnosis`) VALUES
('op-01/009', 'c456-34', 'hisadahil'),
('op-01/009', '123_456', 'take panadol'),
('op-01/009', '123_456', 'Sleep!');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Regno` varchar(255) NOT NULL,
  `EmailAddress` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Regno`, `EmailAddress`, `password`) VALUES
('1234-5678', 'mary@gmail.com', 'wanjiku22'),
('123_456', 'melinda@gmail.com', 'chebet'),
('3433-05', 'fred@gmail.com', '3433'),
('c456-34', 'meii@gmail.com', '22'),
('s9-763/89', 'kayu@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `Specialisation` varchar(255) NOT NULL,
  `Symptoms` varchar(255) NOT NULL,
  `Regno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`Specialisation`, `Symptoms`, `Regno`) VALUES
('physician', 'fsfdgfjgj', ''),
('physician', 'gsadae', 'c456-34'),
('physician', 'Slight headache', '123_456'),
('physician', 'tb', '3433-05'),
('psychiatrist', 'Quick anger', '123_456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`License`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Regno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
