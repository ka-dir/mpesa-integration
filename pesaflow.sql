-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 30, 2023 at 01:22 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesaflow`
--

-- --------------------------------------------------------

--
-- Table structure for table `online_checkout`
--

CREATE TABLE `online_checkout` (
  `id` int NOT NULL,
  `apiClientID` varchar(255) NOT NULL COMMENT 'API client ID',
  `secureHash` varchar(255) NOT NULL COMMENT 'This is a SHA256 hmac_hash that signs the\r\npayload.',
  `billDesc` varchar(255) NOT NULL COMMENT 'Description of the Bill ',
  `billRefNumber` varchar(255) NOT NULL COMMENT 'Reference or Invoice Number of The Bill ',
  `currency` varchar(3) NOT NULL DEFAULT 'KES' COMMENT 'Currency (KES or USD) ',
  `serviceID` int NOT NULL COMMENT 'Customer service ID',
  `clientMSISDN` bigint NOT NULL COMMENT 'Mobile Phone Number of the transacting client ',
  `clientName` varchar(255) NOT NULL COMMENT 'Name of the transacting client ',
  `clientIDNumber` varchar(255) NOT NULL COMMENT 'Identification Number of the transacting\r\nclient ',
  `clientEmail` varchar(255) NOT NULL COMMENT 'Email address of the Transacting client ',
  `callBackURLOnSuccess` varchar(255) NOT NULL COMMENT 'Url the client is to be redirected to after\r\nsuccessful payments ',
  `pictureURL` varchar(255) NOT NULL COMMENT 'Clients Image to be shown on the Iframe ',
  `notificationURL` varchar(255) NOT NULL COMMENT 'Url instant payment notifications are sent\r\nafter a successful transaction ',
  `amountExpected` float NOT NULL COMMENT 'Full amount expected from client '
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `online_checkout`
--
ALTER TABLE `online_checkout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_bill_ref_number` (`billRefNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `online_checkout`
--
ALTER TABLE `online_checkout`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
