-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 08:43 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT 'admin',
  `password` varchar(255) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Id`, `username`, `password`) VALUES
(1, 'admin', 'admintest'),
(3, 'sss', 'zzz');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin_tbl`
--

CREATE TABLE `adminlogin_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin_tbl`
--

INSERT INTO `adminlogin_tbl` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(3, 'sss', 'suyogsabale717@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(5, 'janak bista', 'bistajanak303@gmail.com', '$2y$10$fAYZ4i4Ozhe2NOX.sc3dhuOc3XAmnFHyptgRCFQIm6IHt6FvKz9ou', 0, 'verified'),
(12, 'admin', 'admin@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(13, 'zzz', 'zzz@gmail.com', '$2y$10$.F6ko68HJlISxu0tpaWyiOl5WqD60M0l0ccGb6nNuZN.0sNPrZ8tu', 0, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `agriwaste_info`
--

CREATE TABLE `agriwaste_info` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL DEFAULT 'E-Waste',
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agriwaste_info`
--

INSERT INTO `agriwaste_info` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`) VALUES
(102, 'ASC FOR AGRO & ENVIRONMENT', '9822855758', '-', 'Agricultral-waste', 'Pune', '131, 1, Sinhgad Rd, Panmala Vasahat, Dattawadi, Pune, Maharashtra 411030'),
(103, 'Vivam Agrotech\r\n', '9423781303', '-', 'Agricultral-waste', 'Pune , Goa and nearby areas\r\n', 'Baner, Pune, Maharashtra 411045'),
(105, 'Bounty In Waste', '9850289885', '-', 'Agricultral-waste', 'Pune', 'Manas Sarovar Housing Society, RH-32, Lane B-10, Dhayari, Pune, Maharashtra 411041'),
(106, 'ProEarth Ecosystems Private Limited', '8007011414', '-', 'Agricultral-waste', 'Baner and nearby areas', ' Building S. No. 264, Office 202, Santkrupa, 6, Baner Rd, above Citibank ATM, Pune, Maharashtra 411045'),
(110, 'MG Green Solutions', '9848726051', '-', 'Agricultral-waste', 'Pune', 'Sarai Kunj, Chaitanya Chowk, Warje Malwadi Rd, Pune, Maharashtra 411058'),
(111, 'GREEN IT RECYCLING CENTER PVT. LTD.', '20 2445 6382', '-', 'Agricultral-waste', 'Pune and nearby areas', ' 5 Ganeshprasad IInd Floor, 890, Sadashiv Peth, Pune, Maharashtra 411030'),
(114, 'Wintech Square Pvt Ltd', '7898050021', '-', 'Agricultral-waste', 'Pimpri Chinchwad and nearby areas', 'Sr.No. 29, Shantiniketan, 11, Vishal Nagar, Pimple Nilakh, Pimpri-Chinchwad, Maharashtra 411027'),
(115, 'Daily Dump', '9766644735', '-', 'Agricultral-waste', ' Pimpri-Chinchwad, Maharashtra', 'GreenCom Solutions, H901, Palash Society, 187 Green Drive, Near Datta Mandir, Wakad, Pune, Maharashtra 411057');

-- --------------------------------------------------------

--
-- Table structure for table `construction_waste_info`
--

CREATE TABLE `construction_waste_info` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL DEFAULT 'E-Waste',
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `construction_waste_info`
--

INSERT INTO `construction_waste_info` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`) VALUES
(102, 'JN Scrap & E waste management', '9922763959', '-', 'Construction-waste', 'Pune', 'Hare Krishna, Model Colony, Apt, Pune, Maharashtra 411045'),
(103, 'Adarsh construction, ramtekadi', '9765999500', '-', 'Construction-waste', ' Pune', 'GW29+586, Ramtekdi Industrial Area, Hadapsar, Pune, Maharashtra 411040'),
(105, 'Swach Waste Collection Service', '7030902010', '-', 'Construction-waste', 'Pune', 'GRMQ+F3C, Model Colony, Shivajinagar, Pune, Maharashtra 411016'),
(106, 'Swamini Associate', '8007980877', '-', 'Construction-waste', 'pune', '3, 1st Floor, Matoshree, SN =, 36/11, Kale Padal, Hadapsar, Pune, Maharashtra 411028'),
(110, 'SWaCH Pune Seva Sahakari Sanstha Ltd. Waste Collection Services', '7030902010', '-', 'Construction-waste', 'Pune', '64, Shiv Darshan Rd, Parvati, Anurag Society, Sivadarshan Poorgrasta Vasahat, Parvati Paytha, Pune, Maharashtra 411009');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `contactEmail` varchar(20) NOT NULL,
  `contactPhone` varchar(10) NOT NULL,
  `comment` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`fname`, `lname`, `contactEmail`, `contactPhone`, `comment`) VALUES
('mark', 'Zukerberg', 'janak@gmail.com', '1234', 'Hello wms!'),
('mark', 'bista', 'janak@gmail.com', '1234', 'hello'),
('Janak', 'Bista', 'janak@gmail.com', '8747832827', 'Hello!'),
('John', 'Doe', 'bistajanak303@gmail.', '9828912874', 'nice app!'),
('mark', 'Zukerberg', 'janak@gmail.com', '1234', 'Hello wms!'),
('mark', 'bista', 'janak@gmail.com', '1234', 'hello'),
('Janak', 'Bista', 'janak@gmail.com', '8747832827', 'Hello!'),
('John', 'Doe', 'bistajanak303@gmail.', '9828912874', 'nice app!');

-- --------------------------------------------------------

--
-- Table structure for table `ewaste_info`
--

CREATE TABLE `ewaste_info` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL DEFAULT 'E-Waste',
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ewaste_info`
--

INSERT INTO `ewaste_info` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`) VALUES
(102, 'Sayma E-waste Pune', '9922763959', '-', 'E-waste', 'Ganesh Peth, Pune', 'Chandraprakash Apt. Shop No.6, 252, Ganesh Peth Rd, Bodke Wada, New Nana Peth, Ganesh Peth, Pune, Maharashtra 411002\r\n'),
(103, 'E-Waste Collection Point', '9765999500', '-', 'E-Waste', 'Navi Peth, Dattawadi, Pune', ' Anant Kanhere Path, opposite Tendulkar Jogging Park, Rajendra Nagar, Navi Peth, Dattawadi, Pune, Maharashtra 411030'),
(105, 'Kuldeep E-Waste Disposals', '9850289885', '-', 'E-Waste', 'Pune - Satara Rd,Katraj', 'Manikmoti Complex, Office No.13, Katraj, Off, Pune - Satara Rd, opp. Kanchan Hp Gas Agency, Pune, Maharashtra 411046'),
(106, 'Ewaste Global Collection Centre', '8007980877', '-', 'E-Waste', 'Sadashiv Peth', '1729, Sadashiv Peth, Tilak Road Opp. Akkalkot, Madiwale Colony, Swami Math, Pune, Maharashtra 411030\r\n'),
(110, 'Siya e-waste Recycling', '9848726051', '-', 'E-Waste', 'Sadashiv Peth, Pune', '1475, Lokmanya Bal Gangadhar Tilak Rd, Perugate, Sadashiv Peth, Pune, Maharashtra 411030'),
(111, 'GREEN IT RECYCLING CENTER PVT. LTD.', '20 2445 6382', '-', 'E-Waste', 'Pune and nearby areas', ' 5 Ganeshprasad IInd Floor, 890, Sadashiv Peth, Pune, Maharashtra 411030'),
(114, 'Ewaste Global', '8007980877', '-', 'E-Waste', 'Pune and nearby areas', 'A. J Riverview, 33/34, Shamsundar Society, near Mhatre Bridge, Pune, Maharashtra 411030'),
(115, 'SWaCH E-Waste Collection Center', '9765999500', '-', 'E-Waste', 'Dhankawadi, Pune', '32/1, Dhankawadi Rd, Saragam Society 1, Anant Nagar, Kala Nagar, Dhankawadi, Pune, Maharashtra 411043');

-- --------------------------------------------------------

--
-- Table structure for table `garbageinfo`
--

CREATE TABLE `garbageinfo` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `Vender_Id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garbageinfo`
--

INSERT INTO `garbageinfo` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`, `file`, `date`, `status`, `Vender_Id`) VALUES
(105, 'suyog sabale', '9848726051', 'suyogsabale717@gmail.com', 'inorganic,', 'pimpri-chinchwad', 'friends corner', 'ktmwaste.jpg', '7:50pm ,\r\n Friday 23rd July 2021', 'Completed', 102),
(106, 'dnyanesh', '9828912874', 'dnyanesh69@gmail.com', 'inorganic,', 'pune', 'thankot road', 'waste1.jpg', '8:50pm ,\r\n Friday 23rd July 2021', 'Pending', 105),
(110, 'dnyanesh', '9848726051', 'dnyanesh69@gmail.com', 'mixed,', 'lohegaon', 'pulchowk campus', 'waste.jpg', '9:11pm ,\r\n Friday 23rd July 2021', 'Pending', 106),
(115, 'raj', '9808713012', 'rj7@gmail.com', 'organic,mixed,', 'pune', 'collect the waste nerar Mahendra Ratna Campus gate, around 40 kg waste is available there', 'wasteimg.jpg', '8:40am ,\r\n Saturday 24th July 2021', 'Pending', 112),
(116, 'akanksha', '9848726051', 'ak717@gmail.com', 'Household,', 'kothrud', 'near durbar square', 'kalankiwaste.jpg', '9:44am ,\r\n Saturday 24th July 2021', 'Completed', 103),
(117, 'sakshi', '9848726051', 'sakshi123@gmail.com', 'mixed,', 'pune', 'aakkksa', 'benjamin.jpg', '5:17pm ,\r\n Thursday 26th August 2021', 'Pending', 122),
(121, 'naynesh12', '1234567899', 'zzz@gmail.com', 'mixed,', 'pune', 'hgcgcgchg', 'WhatsApp Image 2022-05-05 at 7.52.40 AM.jpeg', '8:18pm ,\r\n Friday 6th May 2022', 'Pending', 102),
(126, 'users', '4455112277', 'zzz@gmail.com', 'Household,', 'pune', 'home', 'icon1.png', '9:20am ,\r\n Sunday 8th May 2022', 'Pending', 111);

-- --------------------------------------------------------

--
-- Table structure for table `homewaste_info`
--

CREATE TABLE `homewaste_info` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL DEFAULT 'E-Waste',
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homewaste_info`
--

INSERT INTO `homewaste_info` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`) VALUES
(102, 'SWaCH Pune Seva Sahakari Sanstha Ltd. Waste Collection Services', '7030902010', '-', 'House-waste', 'Ganesh Peth, Pune', '64, Shiv Darshan Rd, Parvati, Anurag Society, Sivadarshan Poorgrasta Vasahat, Parvati Paytha, Pune, Maharashtra 411009'),
(103, 'Swach Waste Collection Service', '7030902010', '-', 'House-waste', 'Pune', ' GRMQ+F3C, Model Colony, Shivajinagar, Pune, Maharashtra 411016'),
(105, 'Garbage Collection Center', '9850289885', '-', 'House-waste', 'Pune', 'N Main Rd, Liberty Phase 2, Ragvilas Society, Koregaon Park, Pune, Maharashtra 411001'),
(106, 'Daily Dump', '9766644735', '-', 'House-waste', 'pune', 'GreenCom Solutions, H901, Palash Society, 187 Green Drive, Near Datta Mandir, Wakad, Pune, Maharashtra 411057'),
(110, 'Agarwal Waste Paper', '9850845485', '-', 'House-waste', 'Pune', '563, Sachapir Street, MG Road, Camp, Pune, Maharashtra 411001'),
(111, 'Sayma waste Pune', '9922763959', '-', 'House-waste', 'Pune and nearby areas', 'Chandraprakash Apt. Shop No.6, 252, Ganesh Peth Rd, Bodke Wada, New Nana Peth, Ganesh Peth, Pune, Maharashtra 411002');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalwaste_info`
--

CREATE TABLE `hospitalwaste_info` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL DEFAULT 'E-Waste',
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitalwaste_info`
--

INSERT INTO `hospitalwaste_info` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`) VALUES
(102, 'PASSCO ENVIRONMENTAL SOLUTIONS PVT.LTD', '20 2546 7096', '-', 'Hospital-waste', 'Pune', 'Narayani, Apartment,, Pandurang Colony, Erandwane, Pune, Maharashtra 411004'),
(103, 'SWaCH Pune Seva Sahakari Sanstha Ltd. Waste Collection Services', '7030902010', '-', 'Hospital-waste', 'Pune', '64, Shiv Darshan Rd, Parvati, Anurag Society, Sivadarshan Poorgrasta Vasahat, Parvati Paytha, Pune, Maharashtra 411009'),
(105, 'SWaCH Pune', '97659 99500', '-', 'Hospital-waste', 'Pune', '3rd Floor, Old Tilak Road Ward Office, near Hirabag Ganpati Mandal, Shukrawar Peth, Pe, Maharashtra 411042'),
(106, 'ProEarth Ecosystems Private Limited', '80070 11414', '-', 'Hospital-waste', 'Baner and nearby areas', 'Building S. No. 264, Office 202, Santkrupa, 6, Baner Rd, above Citibank ATM, Pune, Maharashtra 411045'),
(110, 'Mailhem Ikos PMC Biogas Plant - 5 TPD', '93735 97455', '-', 'Hospital-waste', 'Pune', '29/3/2, Katraj - Kondhwa Rd, Rajas Society, Katraj, Pune, Maharashtra 411046');

-- --------------------------------------------------------

--
-- Table structure for table `industrial_waste_info`
--

CREATE TABLE `industrial_waste_info` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL DEFAULT 'E-Waste',
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industrial_waste_info`
--

INSERT INTO `industrial_waste_info` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`) VALUES
(102, 'Sayma E-waste Pune', '9922763959', '-', 'E-waste', 'Ganesh Peth, Pune', 'Chandraprakash Apt. Shop No.6, 252, Ganesh Peth Rd, Bodke Wada, New Nana Peth, Ganesh Peth, Pune, Maharashtra 411002\r\n'),
(103, 'E-Waste Collection Point', '9765999500', '-', 'E-Waste', 'Navi Peth, Dattawadi, Pune', ' Anant Kanhere Path, opposite Tendulkar Jogging Park, Rajendra Nagar, Navi Peth, Dattawadi, Pune, Maharashtra 411030'),
(105, 'Kuldeep E-Waste Disposals', '9850289885', '-', 'E-Waste', 'Pune - Satara Rd,Katraj', 'Manikmoti Complex, Office No.13, Katraj, Off, Pune - Satara Rd, opp. Kanchan Hp Gas Agency, Pune, Maharashtra 411046'),
(106, 'Ewaste Global Collection Centre', '8007980877', '-', 'E-Waste', 'Sadashiv Peth', '1729, Sadashiv Peth, Tilak Road Opp. Akkalkot, Madiwale Colony, Swami Math, Pune, Maharashtra 411030\r\n'),
(110, 'Siya e-waste Recycling', '9848726051', '-', 'E-Waste', 'Sadashiv Peth, Pune', '1475, Lokmanya Bal Gangadhar Tilak Rd, Perugate, Sadashiv Peth, Pune, Maharashtra 411030'),
(111, 'GREEN IT RECYCLING CENTER PVT. LTD.', '20 2445 6382', '-', 'E-Waste', 'Pune and nearby areas', ' 5 Ganeshprasad IInd Floor, 890, Sadashiv Peth, Pune, Maharashtra 411030'),
(114, 'Ewaste Global', '8007980877', '-', 'E-Waste', 'Pune and nearby areas', 'A. J Riverview, 33/34, Shamsundar Society, near Mhatre Bridge, Pune, Maharashtra 411030'),
(115, 'SWaCH E-Waste Collection Center', '9765999500', '-', 'E-Waste', 'Dhankawadi, Pune', '32/1, Dhankawadi Rd, Saragam Society 1, Anant Nagar, Kala Nagar, Dhankawadi, Pune, Maharashtra 411043');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(29, 'zzz', 'zzz@gmail.com', '$2y$10$J2tIF0pwxv13IZ3GfjKVcugl6yHiXou6Mgb1BQD1MJwjyDEuzB7Pm', 0, 'verified'),
(30, 'suyog', 'sss1@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(31, 'test1', 'test1@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(32, 'test2', 'test2@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(33, 'zzz2', 'zzz2@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(34, 'suyog sabale', 'suyogsabale717@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(35, 'dnyanesh', 'dnyanesh69@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(36, 'raj', 'rj7@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(37, 'akanksha', 'ak717@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(38, 'sakshi', 'sakshi123@gmail.com', '$2y$10$O9KSNHDx5a1u2emwnQyaQecyWeo25LOX80tlILbNGLIvlbE8YJtMi', 0, 'verified'),
(39, 'yash jadhav', 'yash567@gmail.com', '$2y$10$mF/lRABkKg44GKUXDpIgW.6eT5WWjHVCoIjv8wxwF6mkl9eDBBkPK', 0, 'verified'),
(40, 'kranti shinde', 'kranti123@gmail.com', '$2y$10$komKmpAqb2yDRy4rG0PpAO4z7PeCppRfZvAJFfXYEvRHiTimB1El2', 0, 'verified'),
(41, 'om', 'om123@gmail.com', '$2y$10$0r0Jfw1tZ1sBv9GAIKBgi.nm6fl7bAwXWC9odJg7ldSvEGvgbw7WW', 0, 'verified'),
(42, 'jay', 'j1@gmail.com', '$2y$10$9dmfFTxWA0dY5mde1OsHrum2joqelsP8l4SC80Uo6495nwbNuY.0O', 0, 'verified'),
(43, 'nihar', 'nihar@gmail.com', '$2y$10$3Z/U7G4dznzR6d7SGUEJOOq0x9dJ4MtAGDcTmFquXPq5eD2QSEMF.', 0, 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `waste`
--

CREATE TABLE `waste` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `wastetype` varchar(255) NOT NULL DEFAULT 'E-Waste',
  `location` varchar(255) NOT NULL,
  `locationdescription` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `waste`
--

INSERT INTO `waste` (`Id`, `name`, `mobile`, `email`, `wastetype`, `location`, `locationdescription`) VALUES
(102, 'SWaCH Pune Seva Sahakari Sanstha Ltd. Waste Collection Services', '7030902010', '-', 'House-waste', 'Ganesh Peth, Pune', '64, Shiv Darshan Rd, Parvati, Anurag Society, Sivadarshan Poorgrasta Vasahat, Parvati Paytha, Pune, Maharashtra 411009'),
(103, 'Swach Waste Collection Service', '7030902010', '-', 'House-waste', 'Pune', ' GRMQ+F3C, Model Colony, Shivajinagar, Pune, Maharashtra 411016'),
(105, 'Garbage Collection Center', '9850289885', '-', 'House-waste', 'Pune', 'N Main Rd, Liberty Phase 2, Ragvilas Society, Koregaon Park, Pune, Maharashtra 411001'),
(106, 'Daily Dump', '9766644735', '-', 'House-waste', 'pune', 'GreenCom Solutions, H901, Palash Society, 187 Green Drive, Near Datta Mandir, Wakad, Pune, Maharashtra 411057'),
(111, 'Sayma waste Pune', '9922763959', '-', 'House-waste', 'Pune and nearby areas', 'Chandraprakash Apt. Shop No.6, 252, Ganesh Peth Rd, Bodke Wada, New Nana Peth, Ganesh Peth, Pune, Maharashtra 411002'),
(118, 'GREEN IT RECYCLING CENTER PVT. LTD.', '20 2445 6382', '-', 'E-Waste', 'Pune and nearby areas', ' 5 Ganeshprasad IInd Floor, 890, Sadashiv Peth, Pune, Maharashtra 411030'),
(120, 'SWaCH Pune Seva Sahakari Sanstha Ltd. Waste Collection Services', '7030902010', '-', 'Construction-waste', 'Pune', '64, Shiv Darshan Rd, Parvati, Anurag Society, Sivadarshan Poorgrasta Vasahat, Parvati Paytha, Pune, Maharashtra 411009'),
(122, 'JN Scrap & E waste management', '9922763959', '-', 'Construction-waste', 'Pune', 'Hare Krishna, Model Colony, Apt, Pune, Maharashtra 411045'),
(125, 'Swach Waste Collection Service', '7030902010', '-', 'Construction-waste', 'Pune', 'GRMQ+F3C, Model Colony, Shivajinagar, Pune, Maharashtra 411016'),
(126, 'Swamini Associate', '8007980877', '-', 'Construction-waste', 'pune', '3, 1st Floor, Matoshree, SN =, 36/11, Kale Padal, Hadapsar, Pune, Maharashtra 411028'),
(140, 'Mailhem Ikos PMC Biogas Plant - 5 TPD', '93735 97455', '-', 'Hospital-waste', 'Pune', '29/3/2, Katraj - Kondhwa Rd, Rajas Society, Katraj, Pune, Maharashtra 411046'),
(142, 'PASSCO ENVIRONMENTAL SOLUTIONS PVT.LTD', '20 2546 7096', '-', 'Hospital-waste', 'Pune', 'Narayani, Apartment,, Pandurang Colony, Erandwane, Pune, Maharashtra 411004'),
(143, 'SWaCH Pune Seva Sahakari Sanstha Ltd. Waste Collection Services', '7030902010', '-', 'Hospital-waste', 'Pune', '64, Shiv Darshan Rd, Parvati, Anurag Society, Sivadarshan Poorgrasta Vasahat, Parvati Paytha, Pune, Maharashtra 411009'),
(145, 'SWaCH Pune', '97659 99500', '-', 'Hospital-waste', 'Pune', '3rd Floor, Old Tilak Road Ward Office, near Hirabag Ganpati Mandal, Shukrawar Peth, Pe, Maharashtra 411042'),
(146, 'ProEarth Ecosystems Private Limited', '80070 11414', '-', 'Hospital-waste', 'Baner and nearby areas', 'Building S. No. 264, Office 202, Santkrupa, 6, Baner Rd, above Citibank ATM, Pune, Maharashtra 411045'),
(161, 'GREEN IT RECYCLING CENTER PVT. LTD.', '20 2445 6382', '-', 'E-Waste', 'Pune and nearby areas', ' 5 Ganeshprasad IInd Floor, 890, Sadashiv Peth, Pune, Maharashtra 411030');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `adminlogin_tbl`
--
ALTER TABLE `adminlogin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agriwaste_info`
--
ALTER TABLE `agriwaste_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `construction_waste_info`
--
ALTER TABLE `construction_waste_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `ewaste_info`
--
ALTER TABLE `ewaste_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `garbageinfo`
--
ALTER TABLE `garbageinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `homewaste_info`
--
ALTER TABLE `homewaste_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hospitalwaste_info`
--
ALTER TABLE `hospitalwaste_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `industrial_waste_info`
--
ALTER TABLE `industrial_waste_info`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waste`
--
ALTER TABLE `waste`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminlogin_tbl`
--
ALTER TABLE `adminlogin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `agriwaste_info`
--
ALTER TABLE `agriwaste_info`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `construction_waste_info`
--
ALTER TABLE `construction_waste_info`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `ewaste_info`
--
ALTER TABLE `ewaste_info`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `garbageinfo`
--
ALTER TABLE `garbageinfo`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `homewaste_info`
--
ALTER TABLE `homewaste_info`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `hospitalwaste_info`
--
ALTER TABLE `hospitalwaste_info`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `industrial_waste_info`
--
ALTER TABLE `industrial_waste_info`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `waste`
--
ALTER TABLE `waste`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
