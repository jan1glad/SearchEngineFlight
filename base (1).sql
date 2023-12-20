-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 01:27 AM
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
-- Database: `base`
--

-- --------------------------------------------------------

--
-- Table structure for table `carsclients`
--

CREATE TABLE `carsclients` (
  `id` int(11) NOT NULL,
  `Imie` varchar(55) NOT NULL,
  `Nazwisko` varchar(55) NOT NULL,
  `Telefon` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `Start` date DEFAULT NULL,
  `End` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carsclients`
--

INSERT INTO `carsclients` (`id`, `Imie`, `Nazwisko`, `Telefon`, `Email`, `Start`, `End`) VALUES
(1, 'Jan', 'GÅadykowski', '+48 423 223 646', 'JanGladykowski@gmail.com', NULL, NULL),
(2, 'Jan', 'd', '+48 231 111 222', 'JanGladykowski@das.com', NULL, NULL),
(3, 'asdasdsa', 'dasdas', '+48adsasdasd', 'dsadsa', NULL, NULL),
(4, 's', 'krakowak', '230200500', 's@gmail.com', NULL, NULL),
(5, 'Jan', 'krakowak', '112', 'JanGladykowski@gmail.com', '2023-05-17', '2023-05-17'),
(6, 'a', 'krakowak', '110', 'JanGladykowski@gmail.com', '2023-06-01', '2023-06-10'),
(7, 'b', 'krakowak', '48423223646', 'JanGladykowski@gmail.com', '2023-06-14', '2023-06-23'),
(8, 'Jan', 'cokolwiek', '48423223646', 'JanGladykowski@gmail.com', '2023-06-10', '2023-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `flightclients`
--

CREATE TABLE `flightclients` (
  `id` int(11) NOT NULL,
  `Imie` varchar(55) NOT NULL,
  `Nazwisko` varchar(55) NOT NULL,
  `Telefon` varchar(55) NOT NULL,
  `Email` varchar(55) NOT NULL,
  `IloscPasazerow` int(55) NOT NULL,
  `CenaLotu` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flightclients`
--

INSERT INTO `flightclients` (`id`, `Imie`, `Nazwisko`, `Telefon`, `Email`, `IloscPasazerow`, `CenaLotu`) VALUES
(1, 'dsa', 'adsasd', '214312 123123', 'dsa', 0, 0),
(2, 'asd', 'sda', '21 22', 'dsasdd', 0, 0),
(3, '', '', '', '', 0, 0),
(4, '', '', '21 22', '', 0, 0),
(5, 'dsa', 'adsasd', '214312 123123', 'JanGladykowski@gmail.com', 0, 0),
(6, 'a', 'sdasad', '1916', '@gmail.com', 0, 0),
(7, 'dsadsad', 'siup', '112', 'chleb', 0, 0),
(8, 'k', 'd', '112', 'monkey@gmail.com', 0, 0),
(9, 'g', 'a', '506', '@gmail.com', -1, 1),
(10, 'tomy', 'ten', '10', 'd@gmnai.com', 4, 840),
(11, 'b', 'd', '21', '@gmail.com', 2, 260),
(12, 'a', 'c', '231', '@gmail.com', 1, 330),
(13, 'Janusz', 'Cokolwiek', '112112112', 'JanGladykowski@gmail.com', 7, 3080);

-- --------------------------------------------------------

--
-- Table structure for table `modele`
--

CREATE TABLE `modele` (
  `Identyfikator` int(1) NOT NULL,
  `Model` varchar(255) NOT NULL,
  `Rocznik` int(4) DEFAULT NULL,
  `Typ` varchar(255) DEFAULT NULL,
  `Paliwo` varchar(20) DEFAULT NULL,
  `Cena` int(11) NOT NULL,
  `City` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `modele`
--

INSERT INTO `modele` (`Identyfikator`, `Model`, `Rocznik`, `Typ`, `Paliwo`, `Cena`, `City`) VALUES
(1, 'Tiguan', 2019, 'SUV', 'Diesel', 250, 'Rome'),
(2, 'Passat', 2021, 'Kombi', 'Diesel', 400, 'Lisbon'),
(3, 'Golf', 2020, 'Hatchback', 'Diesel', 300, 'Madrid'),
(4, 'Polo', 2022, 'Kompakt', 'Benzyna', 260, 'Lisbon'),
(5, 'Eos', 2017, 'Kabriolet', 'Benzyna', 500, 'Rome'),
(6, 'Compact', 2018, 'Sedan', 'Benzyna', 360, 'Madrid'),
(7, 'Vitara', 2019, 'SUV', 'Hybryda', 450, 'Lisbon'),
(8, 'Civic', 2021, 'Hatchback', 'Benzyna', 270, 'Madrid'),
(9, 'Astra', 2020, 'Sedan', 'Diesel', 330, 'Rome'),
(10, 'Renegade', 2017, 'SUV', 'Benzyna', 290, 'Madrid'),
(11, 'Megane', 2022, 'Cabriolet', 'Benzyna', 590, 'Lisbon'),
(12, 'Clio', 2018, 'Hatchback', 'Benzyna', 220, 'Rome');

-- --------------------------------------------------------

--
-- Table structure for table `warsaw`
--

CREATE TABLE `warsaw` (
  `ID` int(11) NOT NULL,
  `Country` varchar(55) NOT NULL,
  `FirstFlight` varchar(55) NOT NULL,
  `LandingCountry` varchar(55) NOT NULL,
  `Landing` varchar(55) NOT NULL,
  `Hour` time NOT NULL,
  `Cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `warsaw`
--

INSERT INTO `warsaw` (`ID`, `Country`, `FirstFlight`, `LandingCountry`, `Landing`, `Hour`, `Cena`) VALUES
(1, 'Poland', 'Warsaw', 'Germany', 'Berlin', '12:10:00', 300),
(2, 'Poland', 'Warsaw', 'UK', 'London', '15:30:00', 250),
(3, 'Poland', 'Warsaw', 'Netherlands', 'Amsterdam', '18:00:00', 450),
(4, 'Poland', 'Warsaw', 'Spain', 'Madrid', '20:20:00', 650),
(5, 'Poland', 'Warsaw', 'Italy', 'Rome', '23:00:00', 120),
(6, 'France', 'Paris', 'Netherlands', 'Amsterdam', '11:20:00', 200),
(7, 'Poland', 'Warsaw', 'Netherlands', 'Amsterdam', '06:20:00', 280),
(8, 'Poland', 'Gdansk', 'Poland', 'Warsaw', '10:15:00', 99),
(9, 'Poland', 'Gdansk', 'Germany', 'Berlin', '12:00:00', 140),
(10, 'Poland', 'Wroclaw', 'Czech Republic', 'Praga', '08:45:00', 65),
(11, 'Poland', 'Krakow', 'UK', 'London', '17:15:00', 110),
(12, 'Poland', 'Poznan', 'Portugal', 'Lisbon', '09:30:00', 199),
(13, 'Poland', 'Poznan', 'Italy', 'Rome', '19:25:00', 320),
(14, 'France', 'Paris', 'UK', 'London', '20:40:00', 170),
(15, 'Germany', 'Warsaw', 'Poland', 'Warsaw', '21:15:00', 120),
(16, 'UK', 'London', 'Poland', 'Warsaw', '22:30:00', 79),
(17, 'Netherlands', 'Amsterdam', 'Poland', 'Warsaw', '13:00:00', 230),
(18, 'Spain', 'Madrid', 'Poland', 'Warsaw', '12:20:00', 500),
(19, 'Italy', 'Rome', 'Poland', 'Warsaw', '11:00:00', 90),
(20, 'Poland', 'Warsaw', 'Poland', 'Gdansk', '20:15:00', 64),
(21, 'Germany', 'Berlin', 'Poland', 'Gdansk', '21:00:00', 100),
(22, 'Czech Republic', 'Praga', 'Poland', 'Wroclaw', '19:45:00', 80),
(23, 'UK', 'London', 'Poland', 'Krakow', '09:15:00', 70),
(24, 'Portugal', 'Lisbon', 'Poland', 'Poznan', '23:45:00', 360),
(25, 'Italy', 'Rome', 'Poland', 'Poznan', '10:20:00', 100),
(26, 'UK', 'London', 'France', 'Paris', '13:40:00', 160),
(27, 'Spain', 'Barcelona', 'UK', 'London', '13:00:00', 300),
(28, 'UK', 'London', 'Spain', 'Barcelona', '21:30:00', 420),
(29, 'Czech Republic', 'Praga', 'Italy', 'Rome', '13:00:00', 199),
(30, 'Italy', 'Rome', 'Czech Republic', 'Praga', '21:00:00', 135),
(31, 'Italy', 'Rome', 'Spain', 'Barcelona', '20:45:00', 70),
(32, 'Spain', 'Barcelona', 'Italy', 'Rome', '16:00:00', 60),
(33, 'UK ', 'London', 'Italy', 'Rome', '17:00:00', 130),
(34, 'Italy', 'Rome', 'UK ', 'London', '21:00:00', 170),
(35, 'France', 'Paris', 'Czech Republic', 'Praga', '14:30:00', 300),
(36, 'Czech Republic', 'Praga', 'France', 'Paris', '22:30:00', 270),
(37, 'Poland', 'Gdansk', 'Spain', 'Barcelona', '20:00:00', 220),
(38, 'Spain', 'Barcelona', 'Poland', 'Gdansk', '09:00:00', 230),
(39, 'Poland', 'Poznan', 'UK', 'London', '17:40:00', 90),
(40, 'UK', 'London', 'Poland', 'Poznan', '23:00:00', 90),
(41, 'Poland', 'Wroclaw', 'France', 'Paris', '08:50:00', 190),
(42, 'France', 'Paris', 'Poland', 'Wroclaw', '17:00:00', 250),
(43, 'Germany', 'Berlin', 'Netherlands', 'Amsterdam', '20:00:00', 199),
(44, 'Netherlands', 'Amsterdam', 'Germany', 'Berlin', '06:40:00', 350),
(45, 'Netherlands', 'Amsterdam', 'Czech Republic', 'Praga', '13:35:00', 110),
(46, 'Czech Republic', 'Praga', 'Netherlands', 'Amsterdam', '18:45:00', 290),
(47, 'Germany', 'Berlin', 'Portugal', 'Lisbon', '11:40:00', 580),
(48, 'Portugal', 'Lisbon', 'Germany', 'Berlin', '23:45:00', 430),
(49, 'Poland', 'Krakow', 'Spain', 'Madrid', '19:00:00', 85),
(50, 'Spain', 'Madrid', 'Poland', 'Krakow', '12:10:00', 175),
(51, 'Poland', 'Poznan', 'Turkey', 'Istanbul', '18:00:00', 700),
(52, 'Turkey', 'Istanbul', 'Poland', 'Poznan', '10:40:00', 620),
(53, 'Italy', 'Rome', 'Poland', 'Gdansk', '08:55:00', 140),
(54, 'Poland', 'Gdansk', 'Italy', 'Rome', '21:55:00', 170),
(55, 'Czech Republic', 'Praga', 'Portugal', 'Lisbon', '20:00:00', 300),
(56, 'Portugal', 'Lisbon', 'Czech Republic', 'Praga', '07:00:00', 470),
(57, 'UK ', 'London', 'Turkey', 'Istanbul', '18:00:00', 780),
(58, 'Turkey', 'Istanbul', 'UK ', 'London', '23:00:00', 640);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carsclients`
--
ALTER TABLE `carsclients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flightclients`
--
ALTER TABLE `flightclients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modele`
--
ALTER TABLE `modele`
  ADD PRIMARY KEY (`Identyfikator`),
  ADD KEY `Model` (`Model`),
  ADD KEY `City` (`City`);

--
-- Indexes for table `warsaw`
--
ALTER TABLE `warsaw`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Country` (`Country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carsclients`
--
ALTER TABLE `carsclients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `flightclients`
--
ALTER TABLE `flightclients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `modele`
--
ALTER TABLE `modele`
  MODIFY `Identyfikator` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `warsaw`
--
ALTER TABLE `warsaw`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
