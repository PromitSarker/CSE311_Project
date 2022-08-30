-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 03:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicines`
--

-- --------------------------------------------------------

--
-- Table structure for table `companylist`
--

CREATE TABLE `companylist` (
  `CompanyName` varchar(100) NOT NULL,
  `RepresentativeName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companylist`
--

INSERT INTO `companylist` (`CompanyName`, `RepresentativeName`) VALUES
('Acme Laboratories Limited', 'Jalil Uddin'),
('Apollo Pharmaceuticlas Ltd.', 'Nabila Rahman'),
('Bengal Drugs Ltd.', 'Hajari Nag'),
('Eskayef Pharmaceuticals Ltd. ', 'Sadman Sprosho '),
('Ibn Sina Pharmaceuticals Ltd.', 'Joshim Uddin'),
('MST Pharma', 'Promit Sarker'),
('Opsonin Pharma Ltd.', 'Jillur Hossain'),
('Pharmasia Limited', 'Azmi Rahman'),
('Synovia Pharma Plc', 'Akash Ahmed'),
('The White Horse Pharma', 'Abdur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `generic`
--

CREATE TABLE `generic` (
  `generic_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generic`
--

INSERT INTO `generic` (`generic_name`) VALUES
('Aceclofenac'),
('Acetylecysteine'),
('Amoxicillin Trihydrate'),
('Atenolol'),
('Azilsartan Medoxomil'),
('Baclofen'),
('Bisoprolol Hemifumerate'),
('Calcium Carbonate'),
('Calcium Orotate'),
('Captopril'),
('Cefpodoxime Proxetil'),
('Ceftibuten Dihydrate'),
('Cetitrizine Hydrochloride'),
('Chlorpheniramine Meleate'),
('Ciprofloxacin'),
('Clarithromycin'),
('Clinidipine'),
('Clobazam '),
('Clonazepam'),
('Clozapine'),
('Dabigatran Etexilate Mesylate'),
('Deflazacort'),
('Desloratadine '),
('Dexamethasone'),
('Dicycloverine Hydrochloride'),
('Diloxanide Furoate'),
('Doxophylline'),
('Drotaverine'),
('Etoricoxib'),
('Glimepiride'),
('Isosorbide Mononitrate'),
('Ivermectin'),
('Ketorolac Tromethamine'),
('Mebeverine Hydrochloride'),
('Mefenamic Acid '),
('Misoprostol'),
('Naproxen Sodium'),
('Pioglitazone '),
('Ramipril'),
('Ranitidine Hydrochloride'),
('Rupatadine Fumarate'),
('Tadalafil'),
('Vitamic B Complex');

-- --------------------------------------------------------

--
-- Table structure for table `medicinelist`
--

CREATE TABLE `medicinelist` (
  `medicineId` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `generic` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicinelist`
--

INSERT INTO `medicinelist` (`medicineId`, `name`, `generic`, `company`) VALUES
(1, 'A-Card 20 mg', 'Aceclofenac', 'Acme Laboratories Limited'),
(2, 'Acepro 100 mg', 'Aceclofenac', 'The White Horse Pharma'),
(3, 'Aceril  2.5 mg', 'Acetylecysteine', 'Bengal Drugs Ltd.'),
(4, 'Amocil 250 mg ', 'Cetitrizine Hydrochloride', 'Ibn Sina Pharmaceuticals Ltd.'),
(5, 'Acflam 100 mg ', 'Chlorpheniramine Meleate', 'MST Pharma'),
(6, 'Amifen 500 mg ', 'Cetitrizine Hydrochloride', 'The White Horse Pharma'),
(7, 'Aceten 600 mg ', 'Cefpodoxime Proxetil', 'Eskayef Pharmaceuticals Ltd. '),
(8, 'Acflam 100 mg ', 'Ceftibuten Dihydrate', 'Bengal Drugs Ltd.'),
(9, 'Aclonac 100 mg ', 'Cefpodoxime Proxetil', 'Bengal Drugs Ltd.'),
(10, 'Bacofen 10 mg ', 'Cetitrizine Hydrochloride', 'Synovia Pharma Plc');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `MedicineName` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`MedicineName`, `Quantity`) VALUES
('A-Card 20 mg', 10),
('Acepro 100 mg', 20),
('Aceril  2.5 mg', 35),
('Aceril  5 mg', 60),
('Aceten 600 mg ', 30),
('Acflam 100 mg ', 54),
('Aclonac 100 mg ', 1),
('Amifen 500 mg ', 15),
('Amocil 250 mg ', 12),
('Bacofen 10 mg ', 15);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companylist`
--
ALTER TABLE `companylist`
  ADD PRIMARY KEY (`CompanyName`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `generic`
--
ALTER TABLE `generic`
  ADD PRIMARY KEY (`generic_name`);

--
-- Indexes for table `medicinelist`
--
ALTER TABLE `medicinelist`
  ADD PRIMARY KEY (`medicineId`),
  ADD KEY `company` (`company`),
  ADD KEY `name` (`name`),
  ADD KEY `generic` (`generic`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`MedicineName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicinelist`
--
ALTER TABLE `medicinelist`
  MODIFY `medicineId` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicinelist`
--
ALTER TABLE `medicinelist`
  ADD CONSTRAINT `medicinelist_ibfk_1` FOREIGN KEY (`company`) REFERENCES `companylist` (`CompanyName`),
  ADD CONSTRAINT `medicinelist_ibfk_2` FOREIGN KEY (`name`) REFERENCES `stock` (`MedicineName`),
  ADD CONSTRAINT `medicinelist_ibfk_3` FOREIGN KEY (`generic`) REFERENCES `generic` (`generic_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
