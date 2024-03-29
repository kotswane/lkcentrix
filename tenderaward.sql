-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2023 at 06:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lkcentrixreports`
--

-- --------------------------------------------------------

--
-- Table structure for table `tenderaward`
--

CREATE TABLE `tenderaward` (
  `Id` bigint(20) NOT NULL,
  `ocid` varchar(140) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenderaward`
--

INSERT INTO `tenderaward` (`Id`, `ocid`, `name`) VALUES
(1, 'ocds-0E7232F7-67EC-42BD-B081-3370171F20B7', 'Instalek (pTY)ltd'),
(2, 'ocds-0E7232F7-67EC-42BD-B081-3370171F20B7', 'Jefferson Sewing(PTY)ltd'),
(3, 'ocds-0881B3B5-B645-4B36-BFAB-5E54D45EE395', 'STEVEN HAPPIE'),
(4, 'ocds-9AEA5D81-0CEE-48DB-A9A9-6754A9C44BA5', 'METROFILE (PTY) LTD'),
(5, 'ocds-E0A3AFB2-DFFD-4B20-9D8F-5B5F753B42DE', 'SANKOFA INSURANCE BROKERS '),
(6, 'ocds-2279F8DB-7443-44AF-B171-7A53B19DED7F', 'SYNERGETIC CONSULTING'),
(7, 'ocds-36FCF4BA-E912-4440-B24C-DA6D92F751C1', 'SHAR CIVILS'),
(8, 'ocds-9FF9B26E-F7BB-45FC-B4DF-E6D79AC38934', 'XHUMANA FLEET SOLUTIONS'),
(9, 'ocds-8CB400F2-F02A-40C9-97F6-7672D32D0142', 'S24 Business Group'),
(10, 'ocds-DAE71AF4-845C-40B0-A245-195BA9E17059', 'Dynamic SA (Pty) Ltd'),
(11, 'ocds-AD233389-E088-4950-B00B-2F1C9B778397', 'Mars Technologies (Pty) Ltd'),
(12, 'ocds-AE5E0EDD-2C76-454B-A809-0ABFD8ABEF6D', 'Wenzile Phaphama ss'),
(13, 'ocds-724F5356-7B0F-4EFA-BB32-FD74F85902BB', 'TAKE NOTE TRADING 245'),
(14, 'ocds-F9A3DD34-BF92-4AA3-AD70-810660CFFE19', 'Chemoquip (Pty) Ltd'),
(15, 'ocds-F9A3DD34-BF92-4AA3-AD70-810660CFFE19', 'ChemoQuip'),
(16, 'ocds-BD46F469-00E1-4A61-8C66-A731BE64CACA', 'C&M Consulting Engineers (Pty) Ltd'),
(17, 'ocds-9DCA7F13-6226-4219-818A-8355702C25E0', 'Rakoma and Associated Inc'),
(18, 'ocds-9DCA7F13-6226-4219-818A-8355702C25E0', 'Fleet Horizon Solutions (Pty) Ltd'),
(19, 'ocds-ED9CFE64-5566-48C0-9338-77C5534D44C7', 'Non-Award'),
(20, 'ocds-0EF6416C-C8CB-47DC-B150-31CE3A4CCA6B', 'LMC ENTERPRISES (PTY) LTD'),
(21, 'ocds-A46CEDD4-5EC2-4CB1-A6F6-75D6DF5DCCB3', 'MUKULU LIBRARY FURNITURE CC'),
(22, 'ocds-A46CEDD4-5EC2-4CB1-A6F6-75D6DF5DCCB3', 'MUKULU LIBRARY FURNITURE CC'),
(23, 'ocds-25ACB040-AB04-41B1-B633-82545E53C3D6', 'Campbell Scientific South Africa (Pty) Ltd'),
(24, 'ocds-9EE161AA-C05B-4407-AD2A-D07E91631C14', 'Memotek Trading CC'),
(25, 'ocds-006107DA-D8CF-4F88-B040-98978710F910', 'Blue Mountain Side'),
(26, 'ocds-0A33BB8F-9B6C-488D-ADC4-E91209584A35', 'Unified Risk Management CC'),
(27, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Cliffe Dekker Hofmeyr Incorporated'),
(28, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Adams & Adams'),
(29, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Timothy & Timothy Inc'),
(30, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'ZM Zuma & Company'),
(31, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'HM Chaane Attorneys'),
(32, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Mamatela Attorneys Inc.'),
(33, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Popela Maake Incorporated'),
(34, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Werksmans Incorporated'),
(35, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Ismail & Dahya Attorneys'),
(36, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Macbeth Incorporated'),
(37, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Cheadle Thompson & Haysom Inc. Attorneys'),
(38, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Gunston Strandvik Incorporated'),
(39, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Majang & Associates Inc'),
(40, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Taleni Godi Kupiso Inc.'),
(41, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Magqabi Seth Zitha Incorporated'),
(42, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Obert Ntuli Inc.'),
(43, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Miller Bosman Le Roux Inc.'),
(44, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', '18.	Madiba Motsai Masitenyane & Githiri Attorneys '),
(45, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Wesley Pretorius & Associates Inc.'),
(46, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Robert Charles Attorneys & Conveyancers'),
(47, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Ighsaan Sadien Attorneys'),
(48, 'ocds-DCD00DE5-43DA-4F71-AC3F-598A5F3435DC', 'Tshisevhe Gwina Ratshimbilani Inc. (TGR Attorneys)'),
(49, 'ocds-D58EECA1-79AC-4C00-A010-F536164EB71C', 'RISC TECHNOLOGY INTEGRATION'),
(50, 'ocds-3A1D3899-E3FA-4205-AAE7-433B96113001', 'ONTEC SYSTEMS'),
(51, 'ocds-8666EA81-91D7-43E0-865A-32BAE7B297F9', 'ANDRE FOURIE TRUST'),
(52, 'ocds-C0A3CD15-BA56-4C5D-B1CB-14A8A58FC2D9', 'Smart Ergonomics JV'),
(53, 'ocds-B3353381-8AFF-400F-85DB-C4128E77A9AE', 'Kunene Makopo Risk Solutions '),
(54, 'ocds-DD4976BA-6A0C-46F4-AD65-EEA110B9A348', 'CT LAB (PTY) LTD'),
(55, 'ocds-7DE82B37-5319-4081-9804-591AE04B211E', 'TRACKOS PROJECTS (PTY) LTD'),
(56, 'ocds-845169D0-4746-46BA-94F2-B976BB992186', 'DEON FERRIER & ASSOCIATES (PTY) LTD'),
(57, 'ocds-266A4018-4148-49F3-836B-F81E60C19908', 'Eyabantu Professional Services '),
(58, 'ocds-B11A9E8C-845D-4A26-8C04-2AD2251FD8E8', 'Adjuvo Enterprises'),
(59, 'ocds-A94CA3F1-8E2C-4960-8127-1690815C8DBF', 'MASANA INDUSTRIAL SERVICES'),
(60, 'ocds-FE832B45-6B24-4C2A-993F-7BB29A1FD347', 'DIMENSION DATA'),
(61, 'ocds-6FAA8CCC-E521-41E3-B302-9F3FA842D9C2', 'PHD POWERHOUSE DISTRIBUTIONS'),
(62, 'ocds-6FAA8CCC-E521-41E3-B302-9F3FA842D9C2', 'MTNA ENGINEERING'),
(63, 'ocds-6FAA8CCC-E521-41E3-B302-9F3FA842D9C2', 'KAM COMPUTING'),
(64, 'ocds-6FAA8CCC-E521-41E3-B302-9F3FA842D9C2', 'ACTOM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tenderaward`
--
ALTER TABLE `tenderaward`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tenderaward`
--
ALTER TABLE `tenderaward`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
