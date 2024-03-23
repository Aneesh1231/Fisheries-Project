-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 04, 2024 at 05:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_info`
--

-- --------------------------------------------------------

--
-- Table structure for table `breeder`
--

CREATE TABLE `breeder` (
  `B_email` varchar(128) NOT NULL,
  `B_name` varchar(128) NOT NULL,
  `B_phone` bigint(10) NOT NULL,
  `B_address` varchar(255) NOT NULL,
  `B_district` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breeder`
--

INSERT INTO `breeder` (`B_email`, `B_name`, `B_phone`, `B_address`, `B_district`) VALUES
('breeder1@gmail.com', 'breeder1', 8762782760, 'hiriadka', 'udupi'),
('breeder@gmail.com', 'breeder', 9211452345, 'perdoor', 'udupi');

-- --------------------------------------------------------

--
-- Table structure for table `breeder_species`
--

CREATE TABLE `breeder_species` (
  `B_email` varchar(128) NOT NULL,
  `S_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breeder_species`
--

INSERT INTO `breeder_species` (`B_email`, `S_id`) VALUES
('breeder1@gmail.com', 1),
('breeder1@gmail.com', 3),
('breeder1@gmail.com', 4),
('breeder@gmail.com', 1),
('breeder@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `O_email` varchar(128) NOT NULL,
  `B_email` varchar(128) NOT NULL,
  `S_id` int(10) NOT NULL,
  `S_quantity` int(255) NOT NULL,
  `requirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`O_email`, `B_email`, `S_id`, `S_quantity`, `requirements`) VALUES
('cajayshetty@gmail.com', 'breeder@gmail.com', 1, 100, 'hii would like to buy a fish'),
('owner1@gmail.com', 'breeder1@gmail.com', 4, 500, 'in urgent need of fish.'),
('owner@gmail.com', 'breeder@gmail.com', 1, 300, 'would like to make a deal.');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `D_email` varchar(128) NOT NULL,
  `D_name` varchar(128) NOT NULL,
  `D_phone` bigint(10) NOT NULL,
  `D_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`D_email`, `D_name`, `D_phone`, `D_address`) VALUES
('dealer1@gmail.com', 'dealer1', 7895423456, 'kaikamba'),
('dealer4@gmail.com', 'dealer4', 9110636477, 'mulki'),
('dealer@gmail.com', 'dealer', 9448205304, 'mulki');

-- --------------------------------------------------------

--
-- Table structure for table `dealer_species`
--

CREATE TABLE `dealer_species` (
  `D_email` varchar(128) NOT NULL,
  `S_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dealer_species`
--

INSERT INTO `dealer_species` (`D_email`, `S_id`) VALUES
('dealer1@gmail.com', 2),
('dealer1@gmail.com', 3),
('dealer1@gmail.com', 4),
('dealer4@gmail.com', 1),
('dealer4@gmail.com', 4),
('dealer@gmail.com', 1),
('dealer@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `info_db`
--

CREATE TABLE `info_db` (
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(8) NOT NULL,
  `designation` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_db`
--

INSERT INTO `info_db` (`name`, `email`, `password`, `designation`) VALUES
('admin', 'admin@gmail.com', 'admin', 'Admin'),
('ajay', 'ajay5@gmail.com', '1234', 'Owner'),
('breeder1', 'breeder1@gmail.com', '1234', 'Breeder'),
('breeder2', 'breeder2@gmail.com', '1234', 'Breeder'),
('breeder', 'breeder@gmail.com', '1234', 'Breeder'),
('Train', 'cajayshetty@gmail.com', '1234', 'Owner'),
('dealer1', 'dealer1@gmail.com', '1234', 'Dealer'),
('dealer2', 'dealer2@gmail.com', '1234', 'Dealer'),
('dealer4', 'dealer4@gmail.com', '1234', 'Dealer'),
('dealer', 'dealer@gmail.com', '1234', 'Dealer'),
('owner1', 'owner1@gmail.com', '1234', 'Owner'),
('owner2', 'owner2@gmail.com', '1234', 'Owner'),
('owner', 'owner@gmail.com', '1234', 'Owner');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `O_email` varchar(128) NOT NULL,
  `O_name` varchar(128) NOT NULL,
  `O_phone` bigint(10) NOT NULL,
  `O_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`O_email`, `O_name`, `O_phone`, `O_address`) VALUES
('ajay3@gmail.com', 'ajay', 9110636477, 'mulki'),
('ajay5@gmail.com', 'ajay', 9110636477, 'udupi'),
('cajayshetty@gmail.com', 'Ajay', 9110636477, 'perdoor'),
('owner1@gmail.com', 'owner1', 8745678901, 'mijar'),
('owner@gmail.com', 'owner', 8745678901, 'santyar');

-- --------------------------------------------------------

--
-- Table structure for table `owner_add`
--

CREATE TABLE `owner_add` (
  `O_email` varchar(128) NOT NULL,
  `S_id` int(10) NOT NULL,
  `P_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `owner_add`
--

INSERT INTO `owner_add` (`O_email`, `S_id`, `P_id`) VALUES
('ajay5@gmail.com', 1, 1),
('cajayshetty@gmail.com', 1, 2),
('owner@gmail.com', 1, 1),
('owner@gmail.com', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pond`
--

CREATE TABLE `pond` (
  `P_id` int(10) NOT NULL,
  `P_type` varchar(128) NOT NULL,
  `P_temp` varchar(10) NOT NULL,
  `P_species` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pond`
--

INSERT INTO `pond` (`P_id`, `P_type`, `P_temp`, `P_species`) VALUES
(1, 'Earthen Pond', '24-32 C', 'Catla'),
(2, 'Earthen Pond', '24-30 C', 'Rohu'),
(3, 'Concrete Pond', '26-34 C', 'Nile Tilapia'),
(4, 'Plastic Pond', '23-27 C', 'Catfish');

-- --------------------------------------------------------

--
-- Table structure for table `queries`
--

CREATE TABLE `queries` (
  `Name` varchar(128) NOT NULL,
  `Email` varchar(128) NOT NULL,
  `Message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `queries`
--

INSERT INTO `queries` (`Name`, `Email`, `Message`) VALUES
('breeder2', 'breeder2@gmail.com', 'we are feeling comfort in using your your website.'),
('owner', 'owner@gmail.com', 'hii its a good website');

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `O_email` varchar(128) NOT NULL,
  `D_email` varchar(128) NOT NULL,
  `S_id` int(10) NOT NULL,
  `S_quantity` int(255) NOT NULL,
  `S_rate` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`O_email`, `D_email`, `S_id`, `S_quantity`, `S_rate`) VALUES
('owner@gmail.com', 'dealer1@gmail.com', 2, 200, '1500rs'),
('owner@gmail.com', 'dealer4@gmail.com', 2, 300, '2000rs'),
('owner@gmail.com', 'dealer@gmail.com', 3, 400, '2000rs');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `S_id` int(10) NOT NULL,
  `S_name` varchar(128) NOT NULL,
  `S_food` varchar(255) NOT NULL,
  `S_size` varchar(255) NOT NULL,
  `S_grade` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`S_id`, `S_name`, `S_food`, `S_size`, `S_grade`) VALUES
(1, 'Catla', 'Catla Feed', '38.6kg', 'Good'),
(2, 'Rohu', 'Dry Pellet', '45kg', 'Good'),
(3, 'Nile Tilapia', 'Extruded feed', '7kg', 'Average'),
(4, 'Red Tilapia', 'Extruded feed', '4.3kg', 'Average'),
(5, 'Tor Mahseer', 'Wet Pellet', '57kg', 'Excellent'),
(6, 'Catfish', 'Moong Feed', '67kg', 'Excellent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breeder`
--
ALTER TABLE `breeder`
  ADD PRIMARY KEY (`B_email`);

--
-- Indexes for table `breeder_species`
--
ALTER TABLE `breeder_species`
  ADD PRIMARY KEY (`B_email`,`S_id`),
  ADD KEY `breed_ibfk_2` (`S_id`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`O_email`,`B_email`,`S_id`),
  ADD KEY `buy_ibfk_1` (`B_email`),
  ADD KEY `buy_ibfk_3` (`S_id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`D_email`);

--
-- Indexes for table `dealer_species`
--
ALTER TABLE `dealer_species`
  ADD PRIMARY KEY (`D_email`,`S_id`),
  ADD KEY `deal_ibfk_2` (`S_id`);

--
-- Indexes for table `info_db`
--
ALTER TABLE `info_db`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`O_email`);

--
-- Indexes for table `owner_add`
--
ALTER TABLE `owner_add`
  ADD PRIMARY KEY (`O_email`,`S_id`,`P_id`),
  ADD KEY `own_ibfk_2` (`P_id`),
  ADD KEY `own_ibfk_3` (`S_id`);

--
-- Indexes for table `pond`
--
ALTER TABLE `pond`
  ADD PRIMARY KEY (`P_id`);

--
-- Indexes for table `queries`
--
ALTER TABLE `queries`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`O_email`,`D_email`,`S_id`),
  ADD KEY `sell_ibfk_1` (`D_email`),
  ADD KEY `sell_ibfk_3` (`S_id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`S_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `breeder_species`
--
ALTER TABLE `breeder_species`
  ADD CONSTRAINT `breed_ibfk_1` FOREIGN KEY (`B_email`) REFERENCES `breeder` (`B_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `breed_ibfk_2` FOREIGN KEY (`S_id`) REFERENCES `species` (`S_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`B_email`) REFERENCES `breeder` (`B_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buy_ibfk_2` FOREIGN KEY (`O_email`) REFERENCES `owner` (`O_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `buy_ibfk_3` FOREIGN KEY (`S_id`) REFERENCES `species` (`S_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dealer_species`
--
ALTER TABLE `dealer_species`
  ADD CONSTRAINT `deal_ibfk_1` FOREIGN KEY (`D_email`) REFERENCES `dealer` (`D_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deal_ibfk_2` FOREIGN KEY (`S_id`) REFERENCES `species` (`S_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `owner_add`
--
ALTER TABLE `owner_add`
  ADD CONSTRAINT `own_ibfk_1` FOREIGN KEY (`O_email`) REFERENCES `owner` (`O_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `own_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `pond` (`P_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `own_ibfk_3` FOREIGN KEY (`S_id`) REFERENCES `species` (`S_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`D_email`) REFERENCES `dealer` (`D_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sell_ibfk_2` FOREIGN KEY (`O_email`) REFERENCES `owner` (`O_email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sell_ibfk_3` FOREIGN KEY (`S_id`) REFERENCES `species` (`S_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
