-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 03:24 PM
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
-- Table structure for table `auditlog`
--

CREATE TABLE `auditlog` (
  `auditlog_id` bigint(20) NOT NULL,
  `auditlog_reportname` varchar(45) NOT NULL,
  `auditlog_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auditlog_userId` int(11) NOT NULL,
  `auditlog_reporttype` varchar(45) NOT NULL,
  `auditlog_searchdata` text NOT NULL,
  `auditlog_fnexecuted` varchar(80) NOT NULL,
  `auditlog_issuccess` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auditlog`
--
-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL,
  `supplier` varchar(200) NOT NULL,
  `registrationno` varchar(45) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `authorizeby` varchar(200) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blacklist`
--

INSERT INTO `blacklist` (`id`, `supplier`, `registrationno`, `reason`, `startdate`, `enddate`, `authorizeby`, `created`) VALUES
(1, 'Anande Trading CC', '2005/029541/23', 'Failure to return undue payment', '2013-10-21', '2023-10-22', 'National Treasury', '2023-02-08 14:21:02'),
(2, 'Ankeli (Pty) Ltd', '2012/137565/07', 'Submission of Fraudulent Health Certificate', '2016-12-08', '2026-12-07', 'South African Police Services (SAPS)', '2023-02-08 14:21:02'),
(3, 'Aubrey Siyanda Khuzwayo', '7508315278080', 'Submission of Fraudulent Health Certificate', '2016-12-08', '2026-12-07', 'South African Police Services (SAPS)', '2023-02-08 14:21:02'),
(4, 'Bain & Company South Africa Incorporated', '1996/000558/10', 'Engaged in corrupt and fraudulent practices in competing for SARS contract', '2022-09-05', '2032-09-04', 'South African Revenue Service', '2023-02-08 14:21:02'),
(5, 'K2011142624 (South Africa) (PTY)LTD', '2011/142624/07', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(6, 'Bankuna Engineering and Construction (Pty) Ltd', '2014/051256/07', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(7, 'Bianca Mari Mackay', '8811270119086', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(8, 'Bonwelong Skills Development cc T/A LP Hospitality Youth Training Programme', '2004/029186/23', 'Non-performance', '2018-02-13', '2028-12-02', 'National: Department of Tourism', '2023-02-08 14:21:02'),
(9, 'BULUMKO QUMBA', '9112066033089', 'Misrepresentation of information', '2022-12-09', '2027-11-30', 'National Economic Development and Labour Council', '2023-02-08 14:21:02'),
(10, 'Cecil E Calvert', '6804245177083', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(11, 'Charles Adrien Hofman', '5110185075084', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(12, 'Clay Distribution cc', '2004/084869/23', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(13, 'Digital Audio Recording Transcriptions (Pty) Ltd', '1997/009323/07', 'Supplier submitted a fraudulent BBBEE Certificate', '2018-09-01', '2028-08-31', 'Department of Justice and Constitutional Development', '2023-02-08 14:21:02'),
(14, 'Ditsebi Solutions (Pty) Ltd', '2004/0352276/07', 'Non-performance and Fraud', '2020-07-07', '2031-06-08', 'DTIC', '2023-02-08 14:21:02'),
(15, 'supplier', 'registrationno', 'reason', '0000-00-00', '0000-00-00', 'authorizeby', '2023-02-08 14:21:02'),
(16, 'Dorothy Dolly Mofomme', '7803210374088', 'Non and Poor Perfomance', '2021-05-17', '2028-05-15', 'Modimolle-Mookgophong Local Municipality', '2023-02-08 14:21:02'),
(17, 'Dr Agnes Mangaka Maharaswa', '6602120535080', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(18, 'Eden Medical Enterprise (Pty) Ltd', '2012/051618/07', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(19, 'EMMARENTHEA MAGRIETHA HORN', '8202250066085', 'Unethical behavior', '2022-09-14', '2032-09-13', 'State Information Technology Agency', '2023-02-08 14:21:02'),
(20, 'Ensemble Trading 2053 CC', '1999/046261/23', 'Non-delivery', '2022-05-15', '2027-05-14', 'Midvaal Local Municipality', '2023-02-08 14:21:02'),
(21, 'Felicia Sekete', '8905240807083', 'Supplier submitted a fraudulent BBBEE Certificate', '2018-12-13', '2028-12-13', 'NPA', '2023-02-08 14:21:02'),
(22, 'Feliham (Pty) Ltd', '2016/185263/07', 'Supplier submitted a fraudulent BBBEE Certificate', '2018-12-13', '2028-12-13', 'NPA', '2023-02-08 14:21:02'),
(23, 'Guarantee Trust Corporate Support Services Proprietary Limited (GTCSS)', '1999/008375/07', 'Impropriety', '2017-12-01', '2027-11-30', 'Finance and Accounting Services Sector Education and Training Authority (FASSET)', '2023-02-08 14:21:02'),
(24, 'Hallmark Technologies CC', '2005/056247/23', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(25, 'Hendry Mohale November', '6711225649082', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(26, 'Imvusa Trading 1559 CC', '2007/048552/23', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(27, 'INANDA TECHNOLOGIES', '2015/194761/07', 'Unethical behavior', '2022-09-14', '2032-09-13', 'State Information Technology Agency', '2023-02-08 14:21:02'),
(28, 'Janton Trading CC', '2011/082244/23', 'Failue to deliver as per the contractual obligations', '2013-08-07', '2023-08-08', 'Agribusiness Development Agency: KZN', '2023-02-08 14:21:02'),
(29, 'John Mackay', '5403175086082', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(30, 'supplier', 'registrationno', 'reason', '0000-00-00', '0000-00-00', 'authorizeby', '2023-02-08 14:21:02'),
(31, 'Judith Anne Mackay', '5608160103185', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(32, 'Keren Kula Construction (Pty) Ltd', '2005/030907/07', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(33, 'KHOSI TECHNOLOGIES', '2020/937200/07', 'Unethical behavior', '2022-09-14', '2032-09-13', 'State Information Technology Agency', '2023-02-08 14:21:02'),
(34, 'Khoza G.E', '6302040763082', 'Failure to return undue payment.', '2013-10-21', '2023-10-22', 'National Treasury', '2023-02-08 14:21:02'),
(35, 'Lylacorp (Pty) Ltd', '2011/145067/07', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(36, 'Maboyane M', '7402250557080', 'Fraud', '2013-07-23', '2023-07-22', 'National Library of South Africa', '2023-02-08 14:21:02'),
(37, 'Mafale Joseph Mfonyane', '6410045943086', 'Non-delivery', '2022-05-15', '2027-05-14', 'Midvaal Local Municipality', '2023-02-08 14:21:02'),
(38, 'Magogane Lefatla', '6607030708081', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(39, 'Makhaye M.L.', '8612045812082', 'Failed to deliver as per the contractual obligations', '2013-08-07', '2023-08-08', 'Agribusiness Development Agency: KZN', '2023-02-08 14:21:02'),
(40, 'Malikonopo Jeanette Motuba', '7109290683087', 'Fraudulent B-BBEE Certificate', '2021-09-29', '2031-09-28', 'Department of Public Works and Infrastructure', '2023-02-08 14:21:02'),
(41, 'Maria Johanna Catharina Gibb', '6004250130081', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(42, 'MARTHA MANFOLO KUTU', '6302070651082', 'Unethical behavior', '2022-09-14', '2032-09-13', 'State Information Technology Agency', '2023-02-08 14:21:02'),
(43, 'Matias P.G.', '8509130845086', 'Failure to return undue payment.', '2013-10-21', '2023-10-22', 'National Treasury', '2023-02-08 14:21:02'),
(44, 'MATSOBANE JOSEPH RAMOKOLO', '8105166008085', 'Unethical behavior', '2022-09-14', '2032-09-13', 'State Information Technology Agency', '2023-02-08 14:21:02'),
(45, 'Mayet Zunaid', '6610205161086', 'Failure to deliver per contractual obligations', '2021-05-17', '2031-05-15', 'Modimolle-Mookgophong Local Municipality', '2023-02-08 14:21:02'),
(46, 'supplier', 'registrationno', 'reason', '0000-00-00', '0000-00-00', 'authorizeby', '2023-02-08 14:21:02'),
(47, 'McGross Logistics and General Trading', '2008/167942/23', 'Submission of Fraudulent Invoices for good never received by the department', '2017-07-07', '2027-07-06', 'South African Police Services (SAPS)', '2023-02-08 14:21:02'),
(48, 'Michael John Hofman', '5702155037084', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(49, 'Mmaseiso Monica Molaudi', '7609070453080', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(50, 'Motlapele Alfred Manyane', '7707175951089', 'Fraudulent B-BBEE Certificate', '2021-09-29', '2031-09-28', 'Department of Public Works and Infrastructure', '2023-02-08 14:21:02'),
(51, 'Mphenama Jerry Nkuna', '6703056279089', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(52, 'Mr Alois Thamsanga Ndlela', '5309095160081', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(53, 'Mr Clement Viljoen', '8612105040087', 'Poor performance overcharging and taking assets of the SEDA: Limpopo.', '2018-06-15', '2028-06-14', 'Small Enterprise Development Agency (SEDA)', '2023-02-08 14:21:02'),
(54, 'Mr J.M Mathibela', '6811275534083', 'Failure to deposit proceeds of the auction', '2017-10-16', '2027-09-15', 'Limpopo Department of Agriculture and Rural Development', '2023-02-08 14:21:02'),
(55, 'Mr Khoaripe John Modiko', '6607285454084', 'Non-performance and Fraud', '2020-07-07', '2031-06-08', 'DTIC', '2023-02-08 14:21:02'),
(56, 'Mr Onkgopotse Kenridge Mogorosi', '7609175561084', 'Submission of Fraudulent Invoices for good never received by the department', '2017-07-07', '2027-07-06', 'South African Police Services (SAPS)', '2023-02-08 14:21:02'),
(57, 'Mr Pierre Nel', '5508155172080', 'Supplier submitted a fraudulent BBBEE Certificate', '2018-09-01', '2028-08-31', 'Department of Justice and Constitutional Development', '2023-02-08 14:21:02'),
(58, 'Mr Zabilon Inama', '7504065418083', 'Non-performance', '2018-02-13', '2028-12-02', 'National: Department of Tourism', '2023-02-08 14:21:02'),
(59, 'Mr. Alan Murray', '4910305038081', 'Impropriety', '2017-12-01', '2027-11-30', 'Finance and Accounting Services Sector Education and Training Authority (FASSET)', '2023-02-08 14:21:02'),
(60, 'Mr. Franklin Bielh', '9005145152088', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(61, 'supplier', 'registrationno', 'reason', '0000-00-00', '0000-00-00', 'authorizeby', '2023-02-08 14:21:02'),
(62, 'Mr. Kevin Wakely-Smith', '5701105003089', 'Impropriety', '2017-12-01', '2027-11-30', 'Finance and Accounting Services Sector Education and Training Authority (FASSET)', '2023-02-08 14:21:02'),
(63, 'Mr. Wendell Louw', '7411075204083', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(64, 'Ms Elizabeth Makhosazana Mhlambi', '5911110666081', 'Submission of Fraudulent Competency Certificate and Sales of Vehicles', '2018-03-01', '2028-02-28', 'Midvaal Local Municipality', '2023-02-08 14:21:02'),
(65, 'Ms J.N Ledwaba', '7404080373084', 'Failure to deposit proceeds of the auction', '2017-10-16', '2027-09-15', 'Limpopo Department of Agriculture and Rural Development', '2023-02-08 14:21:02'),
(66, 'Ms Magdeline Mohlala', '7706230426087', 'Supplier submitted a fraudulent BBBEE Certificate', '2018-09-01', '2028-08-31', 'Department of Justice and Constitutional Development', '2023-02-08 14:21:02'),
(67, 'Ms Nicole Anastacia Hankey', '8707210056083', 'Non - Declaration of Interest', '2018-03-09', '2023-03-08', 'Drakenstein Local Municipality', '2023-02-08 14:21:02'),
(68, 'Ms Nomathamnsanqa Doris Modiko', '6809040609081', 'Non-performance and Fraud', '2020-07-07', '2031-06-08', 'DTIC', '2023-02-08 14:21:02'),
(69, 'Ms Nomfundo Molefe', '7704030319082', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(70, 'Ms Petronelle Magdalene Ferreira', '6002240090084', 'Submission of Fraudulent Competency Certificate and Sales of Vehicles', '2018-03-01', '2028-02-28', 'Midvaal Local Municipality', '2023-02-08 14:21:02'),
(71, 'Ms. Jacinda Louw', '7603310060086', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(72, 'Ms. Rosinda Louw', '6708230006084', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(73, 'Mzamo Denley Siyimba', '7312205897087', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(74, 'Ndlovu  T.A', '8608015684089', 'Failed to deliver as per the contractual obligations', '2013-08-07', '2023-08-08', 'Agribusiness Development Agency: KZN', '2023-02-08 14:21:02'),
(75, 'supplier', 'registrationno', 'reason', '0000-00-00', '0000-00-00', 'authorizeby', '2023-02-08 14:21:02'),
(76, 'Network Infraco (Pty) Ltd', '2011/141402/07', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(77, 'Nextec Advisory Pty Ltd', '1999/023679/07', 'Failure to deliver per contractual obligations', '2021-05-17', '2031-05-15', 'Modimolle-Mookgophong Local Municipality', '2023-02-08 14:21:02'),
(78, 'Ngcobo B.R', '6906066157084', 'Claimed VAT whilst not a VAT vendor', '2013-08-07', '2023-08-08', 'Department of Trade and Industry', '2023-02-08 14:21:02'),
(79, 'Northern Lights Trading 371 (Pty) Ltd', '2011/003764/07', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(80, 'Ntombizandile Keren Hofman', '6106080651085', 'Non-performance', '2018-11-21', '2028-11-20', 'Johannesburg Water', '2023-02-08 14:21:02'),
(81, 'Precy Construction Catering and Cleaning Services CC', '2006/024132/23', 'Fraudulent B-BBEE Certificate', '2021-09-29', '2031-09-28', 'Department of Public Works and Infrastructure', '2023-02-08 14:21:02'),
(82, 'Prezys 011 (Pty) Ltd', '2014/181397/07', 'Fraudulent B-BBEE Certificate', '2021-09-29', '2031-09-28', 'Department of Public Works and Infrastructure', '2023-02-08 14:21:02'),
(83, 'Pyk Salvage / Mahave Trading cc', '2007/04329/23', 'Fraud', '2013-07-23', '2023-07-22', 'National Library of South Africa', '2023-02-08 14:21:02'),
(84, 'Ramoo Dion Dominic', '65011251186081', 'Failure to deliver per contractual obligations', '2021-05-17', '2031-05-15', 'Modimolle-Mookgophong Local Municipality', '2023-02-08 14:21:02'),
(85, 'Scarlet Dawn Trading 282 CC t/a Devco Electrical and Medical Wholesales', '2007/144756/23', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(86, 'Shatadi Auctioneers and Asset Disposal cc', '2005/166336/23', 'Failure to deposit proceeds of the auction', '2017-10-16', '2027-09-15', 'Limpopo Department of Agriculture and Rural Development', '2023-02-08 14:21:02'),
(87, 'Siyakhula Property Valuers', '6904160271083', 'Non-performance and poor performance', '2022-03-30', '2027-03-29', 'Theewaterskloof Municipality', '2023-02-08 14:21:02'),
(88, 'Southern Cape Health Care CC', '2009/209099/23', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(89, 'Terence Tebogo Tshimangatso Mashigwane', '8805305387080', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
(90, 'supplier', 'registrationno', 'reason', '0000-00-00', '0000-00-00', 'authorizeby', '2023-02-08 14:21:02'),
(91, 'The Business Zone 2154 CC t/a Uni-Trade', '2008/060917/23', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(92, 'The Delphic Oracle 80 CC t/a Promac Trading', '2002/076333/23', 'Misrepresentation of information', '2018-09-04', '2028-09-03', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(93, 'Tiragatso Trading 6 cc trading as Compafrique', '2008/037508/23', 'Poor performance overcharging and taking assets of the SEDA: Limpopo.', '2018-06-15', '2028-06-14', 'Small Enterprise Development Agency (SEDA)', '2023-02-08 14:21:02'),
(94, 'ULUNDI SOLUTIONS', '2020/937272/07', 'Unethical behavior', '2022-09-14', '2032-09-13', 'State Information Technology Agency', '2023-02-08 14:21:02'),
(95, 'Valotec 228', '2017/125620/07', 'Non and Poor Perfomance', '2021-05-17', '2028-05-15', 'Modimolle-Mookgophong Local Municipality', '2023-02-08 14:21:02'),
(96, 'Victor Signs (Pty) Ltd', '2016/164666/07', 'Non - Declaration of Interest', '2018-03-09', '2023-03-08', 'Drakenstein Local Municipality', '2023-02-08 14:21:02'),
(97, 'WESBOUND', '2015/252978/07', 'Misrepresentation of information', '2022-12-09', '2027-11-30', 'National Economic Development and Labour Council', '2023-02-08 14:21:02'),
(98, 'WJ Medical Suppliers CC', '2009/025124/23', 'Fraud and conflict of interest', '2017-08-10', '2027-08-09', 'Western Cape: Department of Health', '2023-02-08 14:21:02'),
(99, 'Zwangavho Trading 6 cc', '2006/181516/23', 'Submission of Fraudulent Competency Certificate and Sales Contract of Vehicles', '2018-03-01', '2028-02-28', 'Midvaal Local Municipality', '2023-02-08 14:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_Id` bigint(20) NOT NULL,
  `client_Name` varchar(60) NOT NULL,
  `client_Email` varchar(60) NOT NULL,
  `client_Address` varchar(140) NOT NULL,
  `client_Contact` varchar(45) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_Id`, `client_Name`, `client_Email`, `client_Address`, `client_Contact`, `isactive`) VALUES
(1, 'City Of Johannesburg', 'joburgconnect@joburg.org.za', 'PO Box 1049, JOHANNESBURG, 2000 ,158 Civic Boulevard, Braamfontein', '0860562874', 1),
(2, 'Black Point', 'moeketsi.kotswane@net1.com', '161 natalie street dawn park ', '0632864787', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deedoffice`
--

CREATE TABLE `deedoffice` (
  `deedoffice_id` bigint(20) NOT NULL,
  `deedoffice_description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deedoffice`
--

INSERT INTO `deedoffice` (`deedoffice_id`, `deedoffice_description`) VALUES
(1, 'ALL'),
(2, 'BLOEMFONTEIN'),
(3, 'CAPE TOWN'),
(4, 'JOHANNESBURG'),
(5, 'KING WILLIAMS TOWN'),
(6, 'MPUMALANGA'),
(7, 'PIETERMARITZBURG'),
(8, 'PRETORIA'),
(9, 'UMTATA'),
(10, 'VRYBURG'),
(11, 'LIMPOPO');

-- --------------------------------------------------------

--
-- Table structure for table `deviation`
--

CREATE TABLE `deviation` (
  `deviation_id` bigint(20) NOT NULL,
  `deviation_description` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deviation`
--

INSERT INTO `deviation` (`deviation_id`, `deviation_description`) VALUES
(1, 0),
(2, 1),
(3, 2),
(4, 3),
(5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` bigint(20) NOT NULL,
  `province_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`) VALUES
(1, 'Eastern Cape'),
(2, 'Free State'),
(3, 'Gauteng'),
(4, 'KwaZulu-Natal'),
(5, 'Limpopo'),
(6, 'Mpumalanga'),
(7, 'Northern Cape'),
(8, 'North West'),
(9, 'Eastern Cape');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `report_id` bigint(20) NOT NULL,
  `report_name` varchar(45) NOT NULL,
  `report_link` varchar(45) NOT NULL,
  `icon` varchar(45) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`report_id`, `report_name`, `report_link`, `icon`, `active`) VALUES
(1, 'Trace Report', 'tracereport', 'fa fa-unlock', 1),
(2, 'Deed Report', 'deedreport', 'fa fa-home', 0),
(3, 'Verification Report', 'verificationreport', 'fa fa-check-square-o', 0),
(4, 'Procurement Report', 'procurementreport', 'fa fa-ship', 1),
(5, 'Indigent Report', 'indigentreport', 'fa fa-unlock', 1),
(6, 'Search History', 'searchhistory', 'fa fa-unlock', 1),
(7, 'Roles', 'role', 'fa fa-check-square-o', 1),
(8, 'Role Resources', 'roleresource', 'fa fa-check-square-o', 1),
(9, 'Role Resources Access', 'roleresourceaccess', 'fa fa-check-square-o', 1),
(10, 'User', 'user', 'fa fa-check-square-o', 1),
(11, 'Use Role', 'userrole', 'fa fa-check-square-o', 1),
(12, 'Blacklist', 'blacklist', 'fa fa-check-square-o', 1),
(13, 'Client', 'client', 'fa fa-user-o', 1);

-- --------------------------------------------------------

--
-- Table structure for table `report_type`
--

CREATE TABLE `report_type` (
  `report_type_id` bigint(20) NOT NULL,
  `report_type_description` varchar(45) NOT NULL,
  `report_type_report_id` bigint(20) NOT NULL,
  `report_type_link` varchar(45) NOT NULL,
  `icon` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report_type`
--

INSERT INTO `report_type` (`report_type_id`, `report_type_description`, `report_type_report_id`, `report_type_link`, `icon`) VALUES
(1, 'ID Search', 1, 'idsearch', 'fa fa-key'),
(2, 'Address Search', 1, 'addresssearch', 'fa fa-address-book'),
(3, 'Telephone Search', 1, 'telephonesearch', 'fa fa-phone-square'),
(5, 'Individual Search', 2, 'individualsearch', 'fa fa-key'),
(6, 'ID Verification', 3, 'idverification', 'fa fa-id-card'),
(7, 'ID Facial Verification', 3, 'idphotoverification', 'fa fa-id-badge'),
(8, 'Company Name', 4, 'companyname', 'fa-houzz'),
(9, 'Company Registration number', 4, 'companyregistrationno', 'fa-sort-numeric-asc'),
(10, 'ID Search', 5, 'idsearch', 'fa fa-search'),
(11, 'View History', 6, 'view', 'fa fa-search'),
(12, 'Create', 7, 'create', 'fa fa-id-card'),
(13, 'Create', 8, 'create', 'fa fa-id-card'),
(14, 'Create', 9, 'create', 'fa fa-upload'),
(15, 'Create', 10, 'create', 'fa fa-upload'),
(16, 'Create', 11, 'create', 'fa fa-upload'),
(17, 'View list', 12, 'view', 'fa fa-id-badge'),
(18, 'View', 10, 'view', 'fa fa-search'),
(19, 'Update', 10, 'update', 'fa fa-upload'),
(20, 'Create', 13, 'create', 'fa fa-search'),
(21, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Administrator'),
(2, 'Tracer');

-- --------------------------------------------------------

--
-- Table structure for table `roleresource`
--

CREATE TABLE `roleresource` (
  `id` int(11) NOT NULL,
  `resourceid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roleresource`
--

INSERT INTO `roleresource` (`id`, `resourceid`, `roleid`) VALUES
(1, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 1, 2),
(8, 6, 1),
(9, 7, 1),
(10, 8, 1),
(11, 9, 1),
(12, 10, 1),
(13, 11, 1),
(16, 13, 1),
(17, 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `roleresourcereport`
--

CREATE TABLE `roleresourcereport` (
  `id` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `reportid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roleresourcereporttype`
--

CREATE TABLE `roleresourcereporttype` (
  `id` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `reportid` int(11) NOT NULL,
  `reporttypeid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roleresourcereporttype`
--

INSERT INTO `roleresourcereporttype` (`id`, `roleid`, `reportid`, `reporttypeid`) VALUES
(1, 1, 1, 1),
(2, 1, 4, 8),
(4, 1, 1, 2),
(5, 1, 5, 10),
(6, 2, 1, 1),
(7, 1, 6, 11),
(8, 1, 7, 12),
(9, 1, 8, 13),
(10, 1, 9, 14),
(11, 1, 10, 15),
(12, 1, 11, 16),
(13, 1, 4, 9),
(14, 1, 1, 3),
(15, 1, 12, 17),
(17, 2, 10, 18),
(18, 1, 10, 18),
(19, 1, 11, 19),
(20, 1, 13, 20);

-- --------------------------------------------------------

--
-- Table structure for table `searchtype`
--

CREATE TABLE `searchtype` (
  `search_type_id` bigint(20) NOT NULL,
  `search_type_description` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searchtype`
--

INSERT INTO `searchtype` (`search_type_id`, `search_type_description`) VALUES
(1, 'Exact Search'),
(2, 'Deviation');

-- --------------------------------------------------------

--
-- Table structure for table `search_history`
--

CREATE TABLE `search_history` (
  `id` bigint(20) NOT NULL,
  `reportname` varchar(45) NOT NULL,
  `reporttype` varchar(45) NOT NULL,
  `userId` int(11) NOT NULL,
  `searchdata` text NOT NULL,
  `outputdata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`outputdata`)),
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search_history`
--

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`id`, `userid`, `roleid`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `isactive` int(11) DEFAULT 1,
  `clientid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `name`, `surname`, `contact`, `isactive`, `clientid`) VALUES
(1, 'tester1@gmail.com', 'test', '2023-01-11 09:35:57', 'yasvanth', 'kotswane', 'singh', 1, 1),
(3, 'kotswane@gmail.com', 'M03k3t5!', '2023-01-26 00:03:46', 'moeketsi', 'kotswane', '0632864787', 1, 1),
(4, 'test@gmail.com', 'test', '2023-01-29 16:09:51', 'Thabo', 'mofokeng', '063286479', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditlog`
--
ALTER TABLE `auditlog`
  ADD PRIMARY KEY (`auditlog_id`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_Id`);

--
-- Indexes for table `deedoffice`
--
ALTER TABLE `deedoffice`
  ADD PRIMARY KEY (`deedoffice_id`);

--
-- Indexes for table `deviation`
--
ALTER TABLE `deviation`
  ADD PRIMARY KEY (`deviation_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`report_id`);

--
-- Indexes for table `report_type`
--
ALTER TABLE `report_type`
  ADD PRIMARY KEY (`report_type_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roleresource`
--
ALTER TABLE `roleresource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roleresourcereport`
--
ALTER TABLE `roleresourcereport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roleresourcereporttype`
--
ALTER TABLE `roleresourcereporttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searchtype`
--
ALTER TABLE `searchtype`
  ADD PRIMARY KEY (`search_type_id`);

--
-- Indexes for table `search_history`
--
ALTER TABLE `search_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auditlog`
--
ALTER TABLE `auditlog`
  MODIFY `auditlog_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1680;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deedoffice`
--
ALTER TABLE `deedoffice`
  MODIFY `deedoffice_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deviation`
--
ALTER TABLE `deviation`
  MODIFY `deviation_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `report_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `report_type`
--
ALTER TABLE `report_type`
  MODIFY `report_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roleresource`
--
ALTER TABLE `roleresource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `roleresourcereport`
--
ALTER TABLE `roleresourcereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roleresourcereporttype`
--
ALTER TABLE `roleresourcereporttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `searchtype`
--
ALTER TABLE `searchtype`
  MODIFY `search_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `userrole`
--
ALTER TABLE `userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
