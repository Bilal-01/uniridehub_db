-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 04:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniridehub`
--

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `Id` int(11) NOT NULL,
  `Source` longtext NOT NULL,
  `Destination` longtext NOT NULL,
  `Mid_routes` longtext NOT NULL,
  `Fare` int(11) NOT NULL,
  `Total_Seats` int(11) NOT NULL,
  `Date` longtext NOT NULL,
  `Time` longtext NOT NULL,
  `MapImageFileName` longtext NOT NULL,
  `UserId` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rides`
--

INSERT INTO `rides` (`Id`, `Source`, `Destination`, `Mid_routes`, `Fare`, `Total_Seats`, `Date`, `Time`, `MapImageFileName`, `UserId`) VALUES
(1, 'asd', 'asd', 'asd', 12, 12, 'asd', 'asd', 'map.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `First_name` longtext NOT NULL,
  `Last_name` longtext NOT NULL,
  `Mobile` longtext NOT NULL,
  `Password` longtext NOT NULL,
  `Rides_completed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `First_name`, `Last_name`, `Mobile`, `Password`, `Rides_completed`) VALUES
(1, 'Test', 'User', 'test', 'test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_rides`
--

CREATE TABLE `user_rides` (
  `User_id` int(11) NOT NULL,
  `Ride_id` int(11) NOT NULL,
  `User_type` longtext NOT NULL,
  `Avg_rating` int(11) NOT NULL,
  `Is_Active` tinyint(1) NOT NULL DEFAULT 0,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_rides`
--

INSERT INTO `user_rides` (`User_id`, `Ride_id`, `User_type`, `Avg_rating`, `Is_Active`, `Id`) VALUES
(1, 1, 'driver', 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20231125141944_Initial Setup', '7.0.7'),
('20231125182516_ride-table', '7.0.7'),
('20231130084735_UniRideHubBackend', '7.0.7'),
('20231130165815_UniRideHubBackend2', '7.0.7'),
('20231130184516_UniRideHubBackend4', '7.0.7'),
('20231202120706_ride-table-time-date-added', '7.0.7'),
('20231202235614_Is_Active', '7.0.7'),
('20231203105434_add-image-file', '7.0.7'),
('20231203113315_add-image-path-column', '7.0.7'),
('20231203171306_updated_userride', '7.0.7'),
('20231203180816_image-path', '7.0.7'),
('20231203193231_time-string', '7.0.7'),
('20231204085704_userid-ride', '7.0.7'),
('20231205114758_db5', '7.0.7'),
('20231205133123_5', '7.0.7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user_rides`
--
ALTER TABLE `user_rides`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_rides`
--
ALTER TABLE `user_rides`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
