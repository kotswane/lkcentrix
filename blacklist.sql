-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 03:32 PM
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
(5, 'Bandwidth Technologies (Pty) Ltd', '2011/141358/07', 'Fraud and Corruption', '2020-10-26', '2030-10-25', 'MICTSETA', '2023-02-08 14:21:02'),
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
