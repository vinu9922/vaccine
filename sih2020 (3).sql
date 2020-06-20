-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2020 at 09:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sih2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `achild`
--

CREATE TABLE `achild` (
  `srno` bigint(20) NOT NULL,
  `gurdianaadharno` bigint(20) DEFAULT NULL,
  `childaadharno` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `bcg_v1` date DEFAULT NULL,
  `opv0_v1` date DEFAULT NULL,
  `hepb1_v1` date DEFAULT NULL,
  `dtp1_v2` date DEFAULT NULL,
  `ipv1_v2` date DEFAULT NULL,
  `hepb2_v2` date DEFAULT NULL,
  `hib1_v2` date DEFAULT NULL,
  `rotavirus1_v2` date DEFAULT NULL,
  `pcv1_v2` date DEFAULT NULL,
  `dtp2_v3` date DEFAULT NULL,
  `hib2_v3` date DEFAULT NULL,
  `ipv2_v3` date DEFAULT NULL,
  `hepb3_v3` date DEFAULT NULL,
  `rotavirus2_v3` date DEFAULT NULL,
  `pcv2_v3` date DEFAULT NULL,
  `dtp3_v4` date DEFAULT NULL,
  `hib3_v4` date DEFAULT NULL,
  `ipv3_v4` date DEFAULT NULL,
  `hepb4_v4` date DEFAULT NULL,
  `rotavirus3_v4` date DEFAULT NULL,
  `pcv3_v4` date DEFAULT NULL,
  `tcv_v5` date DEFAULT NULL,
  `mmr1_v6` date DEFAULT NULL,
  `hepa1_v7` date DEFAULT NULL,
  `influenza1_v7` date DEFAULT NULL,
  `mmr2_v8` date DEFAULT NULL,
  `varicella1_v8` date DEFAULT NULL,
  `influenza2_v8` date DEFAULT NULL,
  `pcvbooster1_v8` date DEFAULT NULL,
  `dtpb1_v9` date DEFAULT NULL,
  `ipvb1_v9` date DEFAULT NULL,
  `hepa2_v9` date DEFAULT NULL,
  `hipb1_v9` date DEFAULT NULL,
  `dtpb2_v10` date DEFAULT NULL,
  `varicella_v10` date DEFAULT NULL,
  `mmr3_v10` date DEFAULT NULL,
  `tdap1_v11` date DEFAULT NULL,
  `hpv1n2_v11` date DEFAULT NULL,
  `tdap2_v12` date DEFAULT NULL,
  `hpv1n2n3_v12` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achild`
--

INSERT INTO `achild` (`srno`, `gurdianaadharno`, `childaadharno`, `name`, `dob`, `mobno`, `bcg_v1`, `opv0_v1`, `hepb1_v1`, `dtp1_v2`, `ipv1_v2`, `hepb2_v2`, `hib1_v2`, `rotavirus1_v2`, `pcv1_v2`, `dtp2_v3`, `hib2_v3`, `ipv2_v3`, `hepb3_v3`, `rotavirus2_v3`, `pcv2_v3`, `dtp3_v4`, `hib3_v4`, `ipv3_v4`, `hepb4_v4`, `rotavirus3_v4`, `pcv3_v4`, `tcv_v5`, `mmr1_v6`, `hepa1_v7`, `influenza1_v7`, `mmr2_v8`, `varicella1_v8`, `influenza2_v8`, `pcvbooster1_v8`, `dtpb1_v9`, `ipvb1_v9`, `hepa2_v9`, `hipb1_v9`, `dtpb2_v10`, `varicella_v10`, `mmr3_v10`, `tdap1_v11`, `hpv1n2_v11`, `tdap2_v12`, `hpv1n2n3_v12`, `next`) VALUES
(1, 987456321456, 789654123963, 'nik', '2020-01-09', 1234567890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-16'),
(2, 123456789013, 789654123963, 'ak', '2020-01-09', 9130101199, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `awomen`
--

CREATE TABLE `awomen` (
  `aadharno` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `pregdate` date DEFAULT NULL,
  `v1` date DEFAULT NULL,
  `v2` date DEFAULT NULL,
  `v3` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awomen`
--

INSERT INTO `awomen` (`aadharno`, `name`, `mobno`, `pregdate`, `v1`, `v2`, `v3`, `next`) VALUES
(789654123963, 'sak', 9130101199, '2020-01-08', '2020-01-17', NULL, NULL, '2020-05-03'),
(789654123964, 'vinu', 1234567890, '2020-01-15', NULL, NULL, NULL, '2020-01-17');

-- --------------------------------------------------------

--
-- Table structure for table `bchild`
--

CREATE TABLE `bchild` (
  `srno` bigint(20) NOT NULL,
  `gurdianaadharno` bigint(20) DEFAULT NULL,
  `childaadharno` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `bcg_v1` date DEFAULT NULL,
  `opv0_v1` date DEFAULT NULL,
  `hepb1_v1` date DEFAULT NULL,
  `dtp1_v2` date DEFAULT NULL,
  `ipv1_v2` date DEFAULT NULL,
  `hepb2_v2` date DEFAULT NULL,
  `hib1_v2` date DEFAULT NULL,
  `rotavirus1_v2` date DEFAULT NULL,
  `pcv1_v2` date DEFAULT NULL,
  `dtp2_v3` date DEFAULT NULL,
  `hib2_v3` date DEFAULT NULL,
  `ipv2_v3` date DEFAULT NULL,
  `hepb3_v3` date DEFAULT NULL,
  `rotavirus2_v3` date DEFAULT NULL,
  `pcv2_v3` date DEFAULT NULL,
  `dtp3_v4` date DEFAULT NULL,
  `hib3_v4` date DEFAULT NULL,
  `ipv3_v4` date DEFAULT NULL,
  `hepb4_v4` date DEFAULT NULL,
  `rotavirus3_v4` date DEFAULT NULL,
  `pcv3_v4` date DEFAULT NULL,
  `tcv_v5` date DEFAULT NULL,
  `mmr1_v6` date DEFAULT NULL,
  `hepa1_v7` date DEFAULT NULL,
  `influenza1_v7` date DEFAULT NULL,
  `mmr2_v8` date DEFAULT NULL,
  `varicella1_v8` date DEFAULT NULL,
  `influenza2_v8` date DEFAULT NULL,
  `pcvbooster1_v8` date DEFAULT NULL,
  `dtpb1_v9` date DEFAULT NULL,
  `ipvb1_v9` date DEFAULT NULL,
  `hepa2_v9` date DEFAULT NULL,
  `hipb1_v9` date DEFAULT NULL,
  `dtpb2_v10` date DEFAULT NULL,
  `varicella_v10` date DEFAULT NULL,
  `mmr3_v10` date DEFAULT NULL,
  `tdap1_v11` date DEFAULT NULL,
  `hpv1n2_v11` date DEFAULT NULL,
  `tdap2_v12` date DEFAULT NULL,
  `hpv1n2n3_v12` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bwomen`
--

CREATE TABLE `bwomen` (
  `aadharno` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `pregdate` date DEFAULT NULL,
  `v1` date DEFAULT NULL,
  `v2` date DEFAULT NULL,
  `v3` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cchild`
--

CREATE TABLE `cchild` (
  `srno` bigint(20) NOT NULL,
  `gurdianaadharno` bigint(20) DEFAULT NULL,
  `childaadharno` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `bcg_v1` date DEFAULT NULL,
  `opv0_v1` date DEFAULT NULL,
  `hepb1_v1` date DEFAULT NULL,
  `dtp1_v2` date DEFAULT NULL,
  `ipv1_v2` date DEFAULT NULL,
  `hepb2_v2` date DEFAULT NULL,
  `hib1_v2` date DEFAULT NULL,
  `rotavirus1_v2` date DEFAULT NULL,
  `pcv1_v2` date DEFAULT NULL,
  `dtp2_v3` date DEFAULT NULL,
  `hib2_v3` date DEFAULT NULL,
  `ipv2_v3` date DEFAULT NULL,
  `hepb3_v3` date DEFAULT NULL,
  `rotavirus2_v3` date DEFAULT NULL,
  `pcv2_v3` date DEFAULT NULL,
  `dtp3_v4` date DEFAULT NULL,
  `hib3_v4` date DEFAULT NULL,
  `ipv3_v4` date DEFAULT NULL,
  `hepb4_v4` date DEFAULT NULL,
  `rotavirus3_v4` date DEFAULT NULL,
  `pcv3_v4` date DEFAULT NULL,
  `tcv_v5` date DEFAULT NULL,
  `mmr1_v6` date DEFAULT NULL,
  `hepa1_v7` date DEFAULT NULL,
  `influenza1_v7` date DEFAULT NULL,
  `mmr2_v8` date DEFAULT NULL,
  `varicella1_v8` date DEFAULT NULL,
  `influenza2_v8` date DEFAULT NULL,
  `pcvbooster1_v8` date DEFAULT NULL,
  `dtpb1_v9` date DEFAULT NULL,
  `ipvb1_v9` date DEFAULT NULL,
  `hepa2_v9` date DEFAULT NULL,
  `hipb1_v9` date DEFAULT NULL,
  `dtpb2_v10` date DEFAULT NULL,
  `varicella_v10` date DEFAULT NULL,
  `mmr3_v10` date DEFAULT NULL,
  `tdap1_v11` date DEFAULT NULL,
  `hpv1n2_v11` date DEFAULT NULL,
  `tdap2_v12` date DEFAULT NULL,
  `hpv1n2n3_v12` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `child`
--

CREATE TABLE `child` (
  `srno` bigint(20) NOT NULL,
  `gurdianaadharno` bigint(20) DEFAULT NULL,
  `childaadharno` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobno` int(10) DEFAULT NULL,
  `bcg_v1` date DEFAULT NULL,
  `opv0_v1` date DEFAULT NULL,
  `hepb1_v1` date DEFAULT NULL,
  `dtp1_v2` date DEFAULT NULL,
  `ipv1_v2` date DEFAULT NULL,
  `hepb2_v2` date DEFAULT NULL,
  `hib1_v2` date DEFAULT NULL,
  `rotavirus1_v2` date DEFAULT NULL,
  `pcv1_v2` date DEFAULT NULL,
  `dtp2_v3` date DEFAULT NULL,
  `hib2_v3` date DEFAULT NULL,
  `ipv2_v3` date DEFAULT NULL,
  `hepb3_v3` date DEFAULT NULL,
  `rotavirus2_v3` date DEFAULT NULL,
  `pcv2_v3` date DEFAULT NULL,
  `dtp3_v4` date DEFAULT NULL,
  `hib3_v4` date DEFAULT NULL,
  `ipv3_v4` date DEFAULT NULL,
  `hepb4_v4` date DEFAULT NULL,
  `rotavirus3_v4` date DEFAULT NULL,
  `pcv3_v4` date DEFAULT NULL,
  `tcv_v5` date DEFAULT NULL,
  `mmr1_v6` date DEFAULT NULL,
  `hepa1_v7` date DEFAULT NULL,
  `influenza1_v7` date DEFAULT NULL,
  `mmr2_v8` date DEFAULT NULL,
  `varicella1_v8` date DEFAULT NULL,
  `influenza2_v8` date DEFAULT NULL,
  `pcvbooster1_v8` date DEFAULT NULL,
  `dtpb1_v9` date DEFAULT NULL,
  `ipvb1_v9` date DEFAULT NULL,
  `hepa2_v9` date DEFAULT NULL,
  `hipb1_v9` date DEFAULT NULL,
  `dtpb2_v10` date DEFAULT NULL,
  `varicella_v10` date DEFAULT NULL,
  `mmr3_v10` date DEFAULT NULL,
  `tdap1_v11` date DEFAULT NULL,
  `hpv1n2_v11` date DEFAULT NULL,
  `tdap2_v12` date DEFAULT NULL,
  `hpv1n2n3_v12` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cwomen`
--

CREATE TABLE `cwomen` (
  `aadharno` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `pregdate` date DEFAULT NULL,
  `v1` date DEFAULT NULL,
  `v2` date DEFAULT NULL,
  `v3` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dead_child`
--

CREATE TABLE `dead_child` (
  `srno` bigint(20) NOT NULL,
  `gurdianaadharno` bigint(20) DEFAULT NULL,
  `childaadharno` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `bcg_v1` date DEFAULT NULL,
  `opv0_v1` date DEFAULT NULL,
  `hepb1_v1` date DEFAULT NULL,
  `dtp1_v2` date DEFAULT NULL,
  `ipv1_v2` date DEFAULT NULL,
  `hepb2_v2` date DEFAULT NULL,
  `hib1_v2` date DEFAULT NULL,
  `rotavirus1_v2` date DEFAULT NULL,
  `pcv1_v2` date DEFAULT NULL,
  `dtp2_v3` date DEFAULT NULL,
  `hib2_v3` date DEFAULT NULL,
  `ipv2_v3` date DEFAULT NULL,
  `hepb3_v3` date DEFAULT NULL,
  `rotavirus2_v3` date DEFAULT NULL,
  `pcv2_v3` date DEFAULT NULL,
  `dtp3_v4` date DEFAULT NULL,
  `hib3_v4` date DEFAULT NULL,
  `ipv3_v4` date DEFAULT NULL,
  `hepb4_v4` date DEFAULT NULL,
  `rotavirus3_v4` date DEFAULT NULL,
  `pcv3_v4` date DEFAULT NULL,
  `tcv_v5` date DEFAULT NULL,
  `mmr1_v6` date DEFAULT NULL,
  `hepa1_v7` date DEFAULT NULL,
  `influenza1_v7` date DEFAULT NULL,
  `mmr2_v8` date DEFAULT NULL,
  `varicella1_v8` date DEFAULT NULL,
  `influenza2_v8` date DEFAULT NULL,
  `pcvbooster1_v8` date DEFAULT NULL,
  `dtpb1_v9` date DEFAULT NULL,
  `ipvb1_v9` date DEFAULT NULL,
  `hepa2_v9` date DEFAULT NULL,
  `hipb1_v9` date DEFAULT NULL,
  `dtpb2_v10` date DEFAULT NULL,
  `varicella_v10` date DEFAULT NULL,
  `mmr3_v10` date DEFAULT NULL,
  `tdap1_v11` date DEFAULT NULL,
  `hpv1n2_v11` date DEFAULT NULL,
  `tdap2_v12` date DEFAULT NULL,
  `hpv1n2n3_v12` date DEFAULT NULL,
  `next` date DEFAULT NULL,
  `deathcer` bigint(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dead_women`
--

CREATE TABLE `dead_women` (
  `aadharno` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobno` bigint(20) DEFAULT NULL,
  `pregdate` date DEFAULT NULL,
  `v1` date DEFAULT NULL,
  `v2` date DEFAULT NULL,
  `v3` date DEFAULT NULL,
  `next` date DEFAULT NULL,
  `deathcer` bigint(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dead_women`
--

INSERT INTO `dead_women` (`aadharno`, `name`, `mobno`, `pregdate`, `v1`, `v2`, `v3`, `next`, `deathcer`) VALUES
(789654123965, 'sakshi', 9130101199, '2020-01-14', NULL, NULL, NULL, '2020-01-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `instid` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`instid`, `password`) VALUES
('a', 'a@123'),
('b', 'b@345'),
('c', 'c@678'),
('z', 'z@123'),
('z', 'z@123'),
('y', 'y@123'),
('y', 'y@123');

-- --------------------------------------------------------

--
-- Table structure for table `mature_child`
--

CREATE TABLE `mature_child` (
  `srno` bigint(20) NOT NULL,
  `gurdianaadharno` bigint(20) DEFAULT NULL,
  `childaadharno` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobno` int(10) DEFAULT NULL,
  `bcg_v1` date DEFAULT NULL,
  `opv0_v1` date DEFAULT NULL,
  `hepb1_v1` date DEFAULT NULL,
  `dtp1_v2` date DEFAULT NULL,
  `ipv1_v2` date DEFAULT NULL,
  `hepb2_v2` date DEFAULT NULL,
  `hib1_v2` date DEFAULT NULL,
  `rotavirus1_v2` date DEFAULT NULL,
  `pcv1_v2` date DEFAULT NULL,
  `dtp2_v3` date DEFAULT NULL,
  `hib2_v3` date DEFAULT NULL,
  `ipv2_v3` date DEFAULT NULL,
  `hepb3_v3` date DEFAULT NULL,
  `rotavirus2_v3` date DEFAULT NULL,
  `pcv2_v3` date DEFAULT NULL,
  `dtp3_v4` date DEFAULT NULL,
  `hib3_v4` date DEFAULT NULL,
  `ipv3_v4` date DEFAULT NULL,
  `hepb4_v4` date DEFAULT NULL,
  `rotavirus3_v4` date DEFAULT NULL,
  `pcv3_v4` date DEFAULT NULL,
  `tcv_v5` date DEFAULT NULL,
  `mmr1_v6` date DEFAULT NULL,
  `hepa1_v7` date DEFAULT NULL,
  `influenza1_v7` date DEFAULT NULL,
  `mmr2_v8` date DEFAULT NULL,
  `varicella1_v8` date DEFAULT NULL,
  `influenza2_v8` date DEFAULT NULL,
  `pcvbooster1_v8` date DEFAULT NULL,
  `dtpb1_v9` date DEFAULT NULL,
  `ipvb1_v9` date DEFAULT NULL,
  `hepa2_v9` date DEFAULT NULL,
  `hipb1_v9` date DEFAULT NULL,
  `dtpb2_v10` date DEFAULT NULL,
  `varicella_v10` date DEFAULT NULL,
  `mmr3_v10` date DEFAULT NULL,
  `tdap1_v11` date DEFAULT NULL,
  `hpv1n2_v11` date DEFAULT NULL,
  `tdap2_v12` date DEFAULT NULL,
  `hpv1n2n3_v12` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mother`
--

CREATE TABLE `mother` (
  `srno` bigint(20) NOT NULL,
  `aadharno` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobno` int(10) DEFAULT NULL,
  `pregdate` date DEFAULT NULL,
  `v1` date DEFAULT NULL,
  `v2` date DEFAULT NULL,
  `v3` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pregnant_women`
--

CREATE TABLE `pregnant_women` (
  `aadharno` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mobno` int(10) DEFAULT NULL,
  `pregdate` date DEFAULT NULL,
  `v1` date DEFAULT NULL,
  `v2` date DEFAULT NULL,
  `v3` date DEFAULT NULL,
  `next` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pune_city`
--

CREATE TABLE `pune_city` (
  `institute` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pune_city`
--

INSERT INTO `pune_city` (`institute`) VALUES
('a'),
('b'),
('c'),
('y');

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `state` varchar(50) DEFAULT NULL,
  `pwomen` bigint(20) DEFAULT NULL,
  `gchild` bigint(20) DEFAULT NULL,
  `bchild` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stats`
--

INSERT INTO `stats` (`state`, `pwomen`, `gchild`, `bchild`) VALUES
('Andhra Pradesh', 296, 397, 192),
('Arunachal Pradesh', 475, 494, 146),
('Assam', 348, 404, 474),
('Bihar', 255, 158, 324),
('Chandigarh', 245, 152, 327),
('Chhattisgarh', 280, 317, 246),
('Dadra and Nagar Haveli', 180, 464, 477),
('Daman and Diu', 492, 129, 271),
('Delhi', 468, 225, 423),
('Goa', 136, 115, 467),
('Gujarat', 288, 341, 341),
('Haryana', 180, 178, 252),
('Himachal Pradesh', 227, 278, 209),
('Jammu and Kashmir', 111, 229, 314),
('Jharkhand', 381, 464, 273),
('Karnataka', 275, 457, 157),
('Kerala', 117, 417, 430),
('Lakshadweep', 400, 209, 147),
('Madhya Pradesh', 410, 305, 196),
('Maharashtra', 366, 339, 498),
('Manipur', 171, 465, 110),
('Meghalaya', 257, 455, 201),
('Mizoram', 342, 204, 297),
('Nagaland', 374, 476, 358),
('Odisha', 263, 141, 217),
('Puducherry', 160, 451, 474),
('Punjab', 116, 259, 448),
('Rajasthan', 160, 157, 209),
('Sikkim', 471, 429, 228),
('Tamil Nadu', 156, 399, 224),
('Telangana', 223, 342, 143),
('Tripura', 390, 217, 218),
('Uttaranchal', 337, 133, 353),
('Uttar Pradesh', 466, 370, 350),
('West Bengal', 143, 364, 493);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achild`
--
ALTER TABLE `achild`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `awomen`
--
ALTER TABLE `awomen`
  ADD PRIMARY KEY (`aadharno`);

--
-- Indexes for table `bchild`
--
ALTER TABLE `bchild`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `bwomen`
--
ALTER TABLE `bwomen`
  ADD PRIMARY KEY (`aadharno`);

--
-- Indexes for table `cchild`
--
ALTER TABLE `cchild`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `child`
--
ALTER TABLE `child`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `cwomen`
--
ALTER TABLE `cwomen`
  ADD PRIMARY KEY (`aadharno`);

--
-- Indexes for table `dead_child`
--
ALTER TABLE `dead_child`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `dead_women`
--
ALTER TABLE `dead_women`
  ADD PRIMARY KEY (`aadharno`);

--
-- Indexes for table `mature_child`
--
ALTER TABLE `mature_child`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `mother`
--
ALTER TABLE `mother`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `pregnant_women`
--
ALTER TABLE `pregnant_women`
  ADD PRIMARY KEY (`aadharno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achild`
--
ALTER TABLE `achild`
  MODIFY `srno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bchild`
--
ALTER TABLE `bchild`
  MODIFY `srno` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cchild`
--
ALTER TABLE `cchild`
  MODIFY `srno` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `child`
--
ALTER TABLE `child`
  MODIFY `srno` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dead_child`
--
ALTER TABLE `dead_child`
  MODIFY `srno` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mature_child`
--
ALTER TABLE `mature_child`
  MODIFY `srno` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mother`
--
ALTER TABLE `mother`
  MODIFY `srno` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
