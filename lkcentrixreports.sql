-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 08:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

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

INSERT INTO `auditlog` (`auditlog_id`, `auditlog_reportname`, `auditlog_datetime`, `auditlog_userId`, `auditlog_reporttype`, `auditlog_searchdata`, `auditlog_fnexecuted`, `auditlog_issuccess`) VALUES
(1, 'tracereport', '2023-01-18 20:47:13', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(2, 'tracereport', '2023-01-18 20:47:24', 1, 'id-search', '{\"EnquiryID\":\"57840637\",\"EnquiryResultID\":\"59587923\",\"ProductID\":2}', 'ConnectGetResult', 1),
(3, 'procurementreport', '2023-01-19 07:41:01', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c8f3dc40a12-97\"}', 'ConnectBusinessMatch', 1),
(4, 'procurementreport', '2023-01-19 07:41:53', 1, 'companyname', '{\"EnquiryID\":\"57840899\",\"EnquiryResultID\":\"59588242\",\"ProductID\":41}', 'ConnectGetResult', 1),
(5, 'procurementreport', '2023-01-19 07:45:47', 1, 'companyname', '{\"EnquiryID\":\"57840899\",\"EnquiryResultID\":\"59588242\",\"ProductID\":41}', 'ConnectGetResult', 1),
(6, 'procurementreport', '2023-01-19 07:47:08', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c8f559c91fc-10\"}', 'ConnectBusinessMatch', 1),
(7, 'procurementreport', '2023-01-19 08:14:25', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c8fbb13c8f6-86\"}', 'ConnectBusinessMatch', 1),
(8, 'procurementreport', '2023-01-19 08:44:27', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c902b976c62-10\"}', 'ConnectBusinessMatch', 1),
(9, 'procurementreport', '2023-01-19 08:51:43', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c9046e162ec-68\"}', 'ConnectBusinessMatch', 1),
(10, 'procurementreport', '2023-01-19 08:58:24', 1, 'companyname', '{\"EnquiryID\":\"57841034\",\"EnquiryResultID\":\"59588599\",\"ProductID\":41}', 'ConnectGetResult', 1),
(11, 'procurementreport', '2023-01-19 08:59:34', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c9064edda00-17\"}', 'ConnectBusinessMatch', 1),
(12, 'procurementreport', '2023-01-19 09:00:32', 1, 'companyname', '{\"EnquiryID\":\"57841049\",\"EnquiryResultID\":\"59588664\",\"ProductID\":41}', 'ConnectGetResult', 1),
(13, 'tracereport', '2023-01-19 11:04:10', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(14, 'tracereport', '2023-01-19 11:04:24', 1, 'id-search', '{\"EnquiryID\":\"57841325\",\"EnquiryResultID\":\"59589084\",\"ProductID\":2}', 'ConnectGetResult', 1),
(15, 'tracereport', '2023-01-19 11:08:13', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(16, 'tracereport', '2023-01-19 11:08:26', 1, 'id-search', '{\"EnquiryID\":\"57841329\",\"EnquiryResultID\":\"59589087\",\"ProductID\":2}', 'ConnectGetResult', 1),
(17, 'tracereport', '2023-01-19 11:14:48', 1, 'telephonesearch', '{\"TelephoneCode\":\"063\",\"TelephoneNo\":\"2864787\"}', 'ConnectTelephoneMatch', 1),
(18, 'tracereport', '2023-01-19 11:14:49', 1, 'telephonesearch', '{\"EnquiryResultID\":\"59589103\"}', 'AdminEnquiryResult', 1),
(19, 'tracereport', '2023-01-19 11:14:49', 1, 'telephonesearch', '{\"EnquiryResultID\":\"59589104\"}', 'AdminEnquiryResult', 1),
(20, 'tracereport', '2023-01-19 11:14:50', 1, 'telephonesearch', '{\"EnquiryResultID\":\"59589105\"}', 'AdminEnquiryResult', 1),
(21, 'tracereport', '2023-01-19 11:15:15', 1, 'id-search', '{\"EnquiryID\":\"57841345\",\"EnquiryResultID\":\"59589105\",\"ProductID\":2}', 'ConnectGetResult', 1),
(22, 'tracereport', '2023-01-19 11:16:33', 1, 'addresssearch', '{\"Province\":\"Gauteng\",\"Suburb\":\"Dawn Park\",\"City\":\"Dawn Park\",\"PostalMatch\":true,\"StreetName_PostalNo\":\"161\",\"PostalCode\":\"1459\",\"StreetNo\":\"161\"}', 'ConnectAddressMatch', 1),
(23, 'tracereport', '2023-01-19 11:16:34', 1, 'addresssearch', '{\"EnquiryResultID\":\"59589107\"}', 'AdminEnquiryResult', 1),
(24, 'tracereport', '2023-01-19 11:16:35', 1, 'addresssearch', '{\"EnquiryResultID\":\"59589108\"}', 'AdminEnquiryResult', 1),
(25, 'tracereport', '2023-01-19 11:16:36', 1, 'addresssearch', '{\"EnquiryResultID\":\"59589109\"}', 'AdminEnquiryResult', 1),
(26, 'tracereport', '2023-01-19 11:16:54', 1, 'id-search', '{\"EnquiryID\":\"57841347\",\"EnquiryResultID\":\"59589108\",\"ProductID\":2}', 'ConnectGetResult', 1),
(27, 'indigentreport', '2023-01-19 11:19:22', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(28, 'indigentreport', '2023-01-19 11:22:41', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(29, 'procurementreport', '2023-01-19 11:43:24', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesedi\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c92cb4d04f7-28\"}', 'ConnectBusinessMatch', 1),
(30, 'procurementreport', '2023-01-19 11:48:13', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c92dcb52fbe-50\"}', 'ConnectBusinessMatch', 1),
(31, 'procurementreport', '2023-01-19 11:48:53', 1, 'companyname', '{\"EnquiryID\":\"57841400\",\"EnquiryResultID\":\"59589194\",\"ProductID\":41}', 'ConnectGetResult', 1),
(32, 'procurementreport', '2023-01-19 13:58:30', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c94c51e7df0-80\"}', 'ConnectBusinessMatch', 1),
(33, 'procurementreport', '2023-01-19 13:59:25', 1, 'companyname', '{\"EnquiryID\":\"57841597\",\"EnquiryResultID\":\"59589688\",\"ProductID\":41}', 'ConnectGetResult', 1),
(34, 'procurementreport', '2023-01-19 14:01:26', 1, 'companyname', '{\"EnquiryID\":\"57841597\",\"EnquiryResultID\":\"59589688\",\"ProductID\":41}', 'ConnectGetResult', 1),
(35, 'procurementreport', '2023-01-19 14:02:22', 1, 'companyname', '{\"EnquiryID\":\"57841597\",\"EnquiryResultID\":\"59589688\",\"ProductID\":41}', 'ConnectGetResult', 1),
(36, 'procurementreport', '2023-01-19 14:56:27', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c959f1a64ce-33\"}', 'ConnectBusinessMatch', 1),
(37, 'procurementreport', '2023-01-19 14:56:46', 1, 'companyname', '{\"EnquiryID\":\"57841643\",\"EnquiryResultID\":\"59589906\",\"ProductID\":41}', 'ConnectGetResult', 1),
(38, 'procurementreport', '2023-01-19 20:10:10', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63c9a36ec5aa7-12\"}', 'ConnectBusinessMatch', 1),
(39, 'procurementreport', '2023-01-19 20:11:05', 1, 'companyname', '{\"EnquiryID\":\"57841783\",\"EnquiryResultID\":\"59590477\",\"ProductID\":41}', 'ConnectGetResult', 1),
(40, 'procurementreport', '2023-01-19 20:13:35', 1, 'companyname', '{\"EnquiryID\":\"57841783\",\"EnquiryResultID\":\"59590477\",\"ProductID\":41}', 'ConnectGetResult', 1),
(41, 'procurementreport', '2023-01-20 07:14:43', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ca3f1bbd1f4-89\"}', 'ConnectBusinessMatch', 1),
(42, 'procurementreport', '2023-01-20 07:15:43', 1, 'companyname', '{\"EnquiryID\":\"57842027\",\"EnquiryResultID\":\"59590832\",\"ProductID\":41}', 'ConnectGetResult', 1),
(43, 'tracereport', '2023-01-20 07:20:34', 1, 'id-search', '{\"IdNumber\":\"9007255620086\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(44, 'tracereport', '2023-01-20 07:20:43', 1, 'id-search', '{\"EnquiryID\":\"57842038\",\"EnquiryResultID\":\"59590896\",\"ProductID\":2}', 'ConnectGetResult', 1),
(45, 'procurementreport', '2023-01-20 09:41:14', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ca61726a1b7-57\"}', 'ConnectBusinessMatch', 1),
(46, 'procurementreport', '2023-01-20 09:43:02', 1, 'companyname', '{\"EnquiryID\":\"57842392\",\"EnquiryResultID\":\"59591869\",\"ProductID\":41}', 'ConnectGetResult', 1),
(47, 'procurementreport', '2023-01-20 09:46:00', 1, 'companyname', '{\"EnquiryID\":\"57842392\",\"EnquiryResultID\":\"59591869\",\"ProductID\":41}', 'ConnectGetResult', 1),
(48, 'procurementreport', '2023-01-20 09:47:54', 1, 'companyname', '{\"EnquiryID\":\"57842392\",\"EnquiryResultID\":\"59591869\",\"ProductID\":41}', 'ConnectGetResult', 1),
(49, 'procurementreport', '2023-01-20 09:51:33', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ca63ea5c46a-63\"}', 'ConnectBusinessMatch', 1),
(50, 'procurementreport', '2023-01-20 09:51:53', 1, 'companyname', '{\"EnquiryID\":\"57842424\",\"EnquiryResultID\":\"59591957\",\"ProductID\":41}', 'ConnectGetResult', 1),
(51, 'procurementreport', '2023-01-20 10:04:27', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ca66f741697-43\"}', 'ConnectBusinessMatch', 1),
(52, 'procurementreport', '2023-01-20 10:04:44', 1, 'companyname', '{\"EnquiryID\":\"57842464\",\"EnquiryResultID\":\"59592051\",\"ProductID\":41}', 'ConnectGetResult', 1),
(53, 'procurementreport', '2023-01-20 10:19:42', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ca6a89c532b-47\"}', 'ConnectBusinessMatch', 1),
(54, 'procurementreport', '2023-01-20 10:19:53', 1, 'companyname', '{\"EnquiryID\":\"57842518\",\"EnquiryResultID\":\"59592160\",\"ProductID\":41}', 'ConnectGetResult', 1),
(55, 'procurementreport', '2023-01-20 10:20:58', 1, 'companyname', '{\"EnquiryID\":\"57842518\",\"EnquiryResultID\":\"59592160\",\"ProductID\":41}', 'ConnectGetResult', 1),
(56, 'procurementreport', '2023-01-20 10:22:21', 1, 'companyname', '{\"EnquiryID\":\"57842518\",\"EnquiryResultID\":\"59592160\",\"ProductID\":41}', 'ConnectGetResult', 1),
(57, 'procurementreport', '2023-01-20 10:24:24', 1, 'companyname', '{\"EnquiryID\":\"57842518\",\"EnquiryResultID\":\"59592160\",\"ProductID\":41}', 'ConnectGetResult', 1),
(58, 'procurementreport', '2023-01-20 10:32:56', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ca6da4a8c83-22\"}', 'ConnectBusinessMatch', 1),
(59, 'procurementreport', '2023-01-20 10:33:07', 1, 'companyname', '{\"EnquiryID\":\"57842565\",\"EnquiryResultID\":\"59592250\",\"ProductID\":41}', 'ConnectGetResult', 1),
(60, 'procurementreport', '2023-01-20 10:38:10', 1, 'companyname', '{\"EnquiryID\":\"57842565\",\"EnquiryResultID\":\"59592250\",\"ProductID\":41}', 'ConnectGetResult', 1),
(61, 'procurementreport', '2023-01-20 10:39:07', 1, 'companyname', '{\"EnquiryID\":\"57842565\",\"EnquiryResultID\":\"59592250\",\"ProductID\":41}', 'ConnectGetResult', 1),
(62, 'procurementreport', '2023-01-20 11:06:33', 1, 'companyname', '{\"EnquiryID\":\"57842565\",\"EnquiryResultID\":\"59592250\",\"ProductID\":41}', 'ConnectGetResult', 1),
(63, 'procurementreport', '2023-01-20 15:16:20', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caafffbc2f0-77\"}', 'ConnectBusinessMatch', 1),
(64, 'procurementreport', '2023-01-20 15:16:41', 1, 'companyname', '{\"EnquiryID\":\"57843287\",\"EnquiryResultID\":\"59593031\",\"ProductID\":41}', 'ConnectGetResult', 1),
(65, 'procurementreport', '2023-01-20 15:27:06', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cab29ee2bc1-42\"}', 'ConnectBusinessMatch', 1),
(66, 'procurementreport', '2023-01-20 15:27:20', 1, 'companyname', '{\"EnquiryID\":\"57843306\",\"EnquiryResultID\":\"59593104\",\"ProductID\":41}', 'ConnectGetResult', 1),
(67, 'tracereport', '2023-01-20 15:36:33', 1, 'telephonesearch', '{\"TelephoneCode\":\"083\",\"TelephoneNo\":\"6263072\"}', 'ConnectTelephoneMatch', 1),
(68, 'tracereport', '2023-01-20 15:36:34', 1, 'telephonesearch', '{\"EnquiryResultID\":\"59593175\"}', 'AdminEnquiryResult', 1),
(69, 'tracereport', '2023-01-20 15:36:36', 1, 'telephonesearch', '{\"EnquiryResultID\":\"59593176\"}', 'AdminEnquiryResult', 1),
(70, 'tracereport', '2023-01-20 15:36:53', 1, 'id-search', '{\"EnquiryID\":\"57843322\",\"EnquiryResultID\":\"59593175\",\"ProductID\":2}', 'ConnectGetResult', 1),
(71, 'indigentreport', '2023-01-20 15:37:45', 1, 'id-search', '{\"IdNumber\":\"7301290169080\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(72, 'indigentreport', '2023-01-20 15:38:50', 1, 'id-search', '{\"EnquiryID\":\"57843325\",\"EnquiryResultID\":\"59593179\",\"ProductID\":132}', 'ConnectGetResult', 1),
(73, 'indigentreport', '2023-01-20 15:39:32', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7301290169080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(74, 'indigentreport', '2023-01-20 15:39:37', 1, 'id-search', '{\"IdNumber\":\"7301290169080\"}', 'ConnectDirectorMatch', 0),
(75, 'procurementreport', '2023-01-20 15:42:16', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cab6329ecd5-61\"}', 'ConnectBusinessMatch', 1),
(76, 'procurementreport', '2023-01-20 15:44:01', 1, 'companyname', '{\"EnquiryID\":\"57843333\",\"EnquiryResultID\":\"59593192\",\"ProductID\":41}', 'ConnectGetResult', 1),
(77, 'procurementreport', '2023-01-20 15:44:21', 1, 'companyname', '{\"EnquiryID\":\"57843333\",\"EnquiryResultID\":\"59593194\",\"ProductID\":41}', 'ConnectGetResult', 1),
(78, 'procurementreport', '2023-01-20 18:21:26', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"POPPY ICE TRADING 10 (PTY)LTD\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cadb7dc81ff-97\"}', 'ConnectBusinessMatch', 1),
(79, 'procurementreport', '2023-01-20 18:22:06', 1, 'companyname', '{\"EnquiryID\":\"57843525\",\"EnquiryResultID\":\"59593413\",\"ProductID\":41}', 'ConnectGetResult', 1),
(80, 'procurementreport', '2023-01-20 18:29:24', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"DIGITAL ARCHIVING SYSTEMS (PTY)LTD\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cadd620a004-68\"}', 'ConnectBusinessMatch', 1),
(81, 'procurementreport', '2023-01-20 18:29:51', 1, 'companyname', '{\"EnquiryID\":\"57843535\",\"EnquiryResultID\":\"59593445\",\"ProductID\":41}', 'ConnectGetResult', 1),
(82, 'procurementreport', '2023-01-20 18:42:39', 1, 'companyregistrationno', '{\"Reg1\":\"0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cae0998c806-36\"}', 'ConnectBusinessMatch', 1),
(83, 'procurementreport', '2023-01-20 18:42:50', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843558\",\"EnquiryResultID\":\"59593488\",\"ProductID\":41}', 'ConnectGetResult', 1),
(84, 'procurementreport', '2023-01-20 19:18:10', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cae8eb7b278-88\"}', 'ConnectBusinessMatch', 1),
(85, 'procurementreport', '2023-01-20 19:18:25', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843602\",\"EnquiryResultID\":\"59593532\",\"ProductID\":41}', 'ConnectGetResult', 1),
(86, 'procurementreport', '2023-01-20 20:00:32', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"K0000\\/000000\\/07\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caf2c549da6-28\"}', 'ConnectBusinessMatch', 1),
(87, 'procurementreport', '2023-01-20 20:01:37', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"K0000\\/000000\\/07\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caf306cddd3-90\"}', 'ConnectBusinessMatch', 1),
(88, 'procurementreport', '2023-01-20 20:02:59', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"K0000\\/000000\\/07\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caf35a356bd-99\"}', 'ConnectBusinessMatch', 1),
(89, 'procurementreport', '2023-01-20 20:04:57', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caf3c0cc3cc-82\"}', 'ConnectBusinessMatch', 1),
(90, 'procurementreport', '2023-01-20 20:05:28', 1, 'companyname', '{\"EnquiryID\":\"57843667\",\"EnquiryResultID\":\"59593604\",\"ProductID\":41}', 'ConnectGetResult', 1),
(91, 'procurementreport', '2023-01-20 20:07:09', 1, 'companyname', '{\"EnquiryID\":\"57843667\",\"EnquiryResultID\":\"59593604\",\"ProductID\":41}', 'ConnectGetResult', 1),
(92, 'procurementreport', '2023-01-20 20:13:48', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caf5f7e8324-80\"}', 'ConnectBusinessMatch', 1),
(93, 'procurementreport', '2023-01-20 20:14:00', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843670\",\"EnquiryResultID\":\"59593631\",\"ProductID\":41}', 'ConnectGetResult', 1),
(94, 'procurementreport', '2023-01-20 20:15:32', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caf63d1f0b3-67\"}', 'ConnectBusinessMatch', 1),
(95, 'procurementreport', '2023-01-20 20:15:59', 1, 'companyname', '{\"EnquiryID\":\"57843671\",\"EnquiryResultID\":\"59593640\",\"ProductID\":41}', 'ConnectGetResult', 1),
(96, 'procurementreport', '2023-01-20 20:22:32', 1, 'companyname', '{\"EnquiryID\":\"57843671\",\"EnquiryResultID\":\"59593640\",\"ProductID\":41}', 'ConnectGetResult', 1),
(97, 'procurementreport', '2023-01-20 20:25:24', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63caf88c61a05-66\"}', 'ConnectBusinessMatch', 1),
(98, 'procurementreport', '2023-01-20 20:25:46', 1, 'companyname', '{\"EnquiryID\":\"57843675\",\"EnquiryResultID\":\"59593674\",\"ProductID\":41}', 'ConnectGetResult', 1),
(99, 'procurementreport', '2023-01-20 20:27:12', 1, 'companyname', '{\"EnquiryID\":\"57843675\",\"EnquiryResultID\":\"59593674\",\"ProductID\":41}', 'ConnectGetResult', 1),
(100, 'procurementreport', '2023-01-20 20:30:18', 1, 'companyname', '{\"EnquiryID\":\"57843675\",\"EnquiryResultID\":\"59593674\",\"ProductID\":41}', 'ConnectGetResult', 1),
(101, 'procurementreport', '2023-01-20 20:32:40', 1, 'companyname', '{\"EnquiryID\":\"57843675\",\"EnquiryResultID\":\"59593674\",\"ProductID\":41}', 'ConnectGetResult', 1),
(102, 'procurementreport', '2023-01-20 21:04:26', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb01d3083d5-66\"}', 'ConnectBusinessMatch', 1),
(103, 'procurementreport', '2023-01-20 21:04:48', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843695\",\"EnquiryResultID\":\"59593717\",\"ProductID\":41}', 'ConnectGetResult', 1),
(104, 'procurementreport', '2023-01-20 21:06:53', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843695\",\"EnquiryResultID\":\"59593717\",\"ProductID\":41}', 'ConnectGetResult', 1),
(105, 'procurementreport', '2023-01-20 21:16:26', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb04a40e578-67\"}', 'ConnectBusinessMatch', 1),
(106, 'procurementreport', '2023-01-20 21:16:38', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843696\",\"EnquiryResultID\":\"59593718\",\"ProductID\":41}', 'ConnectGetResult', 1),
(107, 'procurementreport', '2023-01-20 21:21:05', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"M2001\\/012258\\/07\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb05a296890-63\"}', 'ConnectBusinessMatch', 1),
(108, 'procurementreport', '2023-01-20 21:21:41', 1, 'companyname', '{\"EnquiryID\":\"57843697\",\"EnquiryResultID\":\"59593720\",\"ProductID\":41}', 'ConnectGetResult', 1),
(109, 'procurementreport', '2023-01-20 21:23:06', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"DIGITAL ARCHIVING SYSTEMS (PTY)LTD\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb06148fdae-12\"}', 'ConnectBusinessMatch', 1),
(110, 'procurementreport', '2023-01-20 21:23:25', 1, 'companyname', '{\"EnquiryID\":\"57843698\",\"EnquiryResultID\":\"59593732\",\"ProductID\":41}', 'ConnectGetResult', 1),
(111, 'procurementreport', '2023-01-20 21:37:59', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb09b332b55-30\"}', 'ConnectBusinessMatch', 1),
(112, 'procurementreport', '2023-01-20 21:38:14', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843704\",\"EnquiryResultID\":\"59593758\",\"ProductID\":41}', 'ConnectGetResult', 1),
(113, 'procurementreport', '2023-01-20 21:54:20', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb0d85ca02e-89\"}', 'ConnectBusinessMatch', 1),
(114, 'procurementreport', '2023-01-20 21:54:32', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843705\",\"EnquiryResultID\":\"59593759\",\"ProductID\":41}', 'ConnectGetResult', 1),
(115, 'procurementreport', '2023-01-20 21:55:50', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843705\",\"EnquiryResultID\":\"59593759\",\"ProductID\":41}', 'ConnectGetResult', 1),
(116, 'procurementreport', '2023-01-20 22:23:33', 1, 'companyregistrationno', '{\"Reg1\":\"0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb1460d70b9-36\"}', 'ConnectBusinessMatch', 1),
(117, 'procurementreport', '2023-01-20 22:23:43', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843706\",\"EnquiryResultID\":\"59593760\",\"ProductID\":41}', 'ConnectGetResult', 1),
(118, 'procurementreport', '2023-01-20 22:26:59', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843706\",\"EnquiryResultID\":\"59593760\",\"ProductID\":41}', 'ConnectGetResult', 1),
(119, 'procurementreport', '2023-01-20 22:49:09', 1, 'companyregistrationno', '{\"Reg1\":\"0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb1a5f6ee66-38\"}', 'ConnectBusinessMatch', 1),
(120, 'procurementreport', '2023-01-20 22:49:33', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843707\",\"EnquiryResultID\":\"59593761\",\"ProductID\":41}', 'ConnectGetResult', 1),
(121, 'procurementreport', '2023-01-20 22:50:50', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843707\",\"EnquiryResultID\":\"59593761\",\"ProductID\":41}', 'ConnectGetResult', 1),
(122, 'procurementreport', '2023-01-20 23:05:53', 1, 'companyregistrationno', '{\"Reg1\":\"0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb1e4bb0fb2-27\"}', 'ConnectBusinessMatch', 1),
(123, 'procurementreport', '2023-01-20 23:06:02', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843712\",\"EnquiryResultID\":\"59593766\",\"ProductID\":41}', 'ConnectGetResult', 1),
(124, 'procurementreport', '2023-01-20 23:19:41', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb218767208-62\"}', 'ConnectBusinessMatch', 1),
(125, 'procurementreport', '2023-01-20 23:19:54', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843715\",\"EnquiryResultID\":\"59593769\",\"ProductID\":41}', 'ConnectGetResult', 1),
(126, 'procurementreport', '2023-01-20 23:21:10', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843715\",\"EnquiryResultID\":\"59593769\",\"ProductID\":41}', 'ConnectGetResult', 1),
(127, 'procurementreport', '2023-01-20 23:22:19', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843715\",\"EnquiryResultID\":\"59593769\",\"ProductID\":41}', 'ConnectGetResult', 1),
(128, 'procurementreport', '2023-01-20 23:22:53', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843715\",\"EnquiryResultID\":\"59593769\",\"ProductID\":41}', 'ConnectGetResult', 1),
(129, 'procurementreport', '2023-01-20 23:23:20', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843715\",\"EnquiryResultID\":\"59593769\",\"ProductID\":41}', 'ConnectGetResult', 1),
(130, 'procurementreport', '2023-01-20 23:25:51', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843715\",\"EnquiryResultID\":\"59593769\",\"ProductID\":41}', 'ConnectGetResult', 1),
(131, 'procurementreport', '2023-01-20 23:30:20', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb24091cce0-15\"}', 'ConnectBusinessMatch', 1),
(132, 'procurementreport', '2023-01-20 23:30:29', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843717\",\"EnquiryResultID\":\"59593771\",\"ProductID\":41}', 'ConnectGetResult', 1),
(133, 'procurementreport', '2023-01-21 04:18:27', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb678d5a853-78\"}', 'ConnectBusinessMatch', 1),
(134, 'procurementreport', '2023-01-21 04:18:45', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843741\",\"EnquiryResultID\":\"59593795\",\"ProductID\":41}', 'ConnectGetResult', 1),
(135, 'procurementreport', '2023-01-21 04:34:20', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb6b4584dae-73\"}', 'ConnectBusinessMatch', 1),
(136, 'procurementreport', '2023-01-21 04:34:30', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843742\",\"EnquiryResultID\":\"59593796\",\"ProductID\":41}', 'ConnectGetResult', 1),
(137, 'procurementreport', '2023-01-21 04:35:35', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843742\",\"EnquiryResultID\":\"59593796\",\"ProductID\":41}', 'ConnectGetResult', 1),
(138, 'procurementreport', '2023-01-21 04:41:02', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843742\",\"EnquiryResultID\":\"59593796\",\"ProductID\":41}', 'ConnectGetResult', 1),
(139, 'procurementreport', '2023-01-21 04:43:57', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843742\",\"EnquiryResultID\":\"59593796\",\"ProductID\":41}', 'ConnectGetResult', 1),
(140, 'procurementreport', '2023-01-21 04:46:02', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb6e0307fe3-17\"}', 'ConnectBusinessMatch', 1),
(141, 'procurementreport', '2023-01-21 04:46:14', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843743\",\"EnquiryResultID\":\"59593797\",\"ProductID\":41}', 'ConnectGetResult', 1),
(142, 'procurementreport', '2023-01-21 04:49:07', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb6ebd9fd76-82\"}', 'ConnectBusinessMatch', 1),
(143, 'procurementreport', '2023-01-21 04:49:32', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843744\",\"EnquiryResultID\":\"59593798\",\"ProductID\":41}', 'ConnectGetResult', 1),
(144, 'procurementreport', '2023-01-21 04:50:48', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843744\",\"EnquiryResultID\":\"59593798\",\"ProductID\":41}', 'ConnectGetResult', 1),
(145, 'procurementreport', '2023-01-21 04:50:54', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843744\",\"EnquiryResultID\":\"59593798\",\"ProductID\":41}', 'ConnectGetResult', 1),
(146, 'procurementreport', '2023-01-21 04:53:56', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843744\",\"EnquiryResultID\":\"59593798\",\"ProductID\":41}', 'ConnectGetResult', 1),
(147, 'procurementreport', '2023-01-21 04:54:52', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843744\",\"EnquiryResultID\":\"59593798\",\"ProductID\":41}', 'ConnectGetResult', 1),
(148, 'procurementreport', '2023-01-21 04:55:58', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843744\",\"EnquiryResultID\":\"59593798\",\"ProductID\":41}', 'ConnectGetResult', 1),
(149, 'procurementreport', '2023-01-21 04:58:10', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843744\",\"EnquiryResultID\":\"59593798\",\"ProductID\":41}', 'ConnectGetResult', 1),
(150, 'procurementreport', '2023-01-21 05:03:23', 1, 'companyregistrationno', '{\"Reg1\":\"K0000\",\"Reg2\":\"000000\",\"Reg3\":\"07\",\"BusinessName\":\"\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb721709d0b-76\"}', 'ConnectBusinessMatch', 1),
(151, 'procurementreport', '2023-01-21 05:03:32', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843745\",\"EnquiryResultID\":\"59593799\",\"ProductID\":41}', 'ConnectGetResult', 1),
(152, 'procurementreport', '2023-01-21 05:05:59', 1, 'companyregistrationno', '{\"EnquiryID\":\"57843745\",\"EnquiryResultID\":\"59593799\",\"ProductID\":41}', 'ConnectGetResult', 1),
(153, 'procurementreport', '2023-01-21 05:07:19', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cb72e262987-42\"}', 'ConnectBusinessMatch', 1),
(154, 'procurementreport', '2023-01-21 05:07:39', 1, 'companyname', '{\"EnquiryID\":\"57843746\",\"EnquiryResultID\":\"59593807\",\"ProductID\":41}', 'ConnectGetResult', 1),
(155, 'procurementreport', '2023-01-21 16:42:59', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cc15d2d6d92-91\"}', 'ConnectBusinessMatch', 1),
(156, 'procurementreport', '2023-01-21 16:44:18', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cc163c9fe2b-46\"}', 'ConnectBusinessMatch', 1),
(157, 'procurementreport', '2023-01-21 16:45:12', 1, 'companyname', '{\"EnquiryID\":\"57843828\",\"EnquiryResultID\":\"59593968\",\"ProductID\":41}', 'ConnectGetResult', 1),
(158, 'procurementreport', '2023-01-21 16:47:20', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"K2019\\/397107\\/07\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cc16cf9663b-78\"}', 'ConnectBusinessMatch', 1),
(159, 'procurementreport', '2023-01-21 16:48:07', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"K2019000278 SOUTH AFRICA (PTY)LTD\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cc17326860c-35\"}', 'ConnectBusinessMatch', 1),
(160, 'procurementreport', '2023-01-21 16:48:27', 1, 'companyname', '{\"EnquiryID\":\"57843830\",\"EnquiryResultID\":\"59594124\",\"ProductID\":41}', 'ConnectGetResult', 1),
(161, 'procurementreport', '2023-01-21 17:15:02', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cc1d6968a0d-48\"}', 'ConnectBusinessMatch', 1),
(162, 'procurementreport', '2023-01-21 17:15:12', 1, 'companyname', '{\"EnquiryID\":\"57843832\",\"EnquiryResultID\":\"59594126\",\"ProductID\":41}', 'ConnectGetResult', 1),
(163, 'procurementreport', '2023-01-21 17:16:43', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cc1dcf5650f-54\"}', 'ConnectBusinessMatch', 1),
(164, 'procurementreport', '2023-01-21 17:17:52', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cc1e1a32ae2-49\"}', 'ConnectBusinessMatch', 1),
(165, 'procurementreport', '2023-01-21 17:18:28', 1, 'companyname', '{\"EnquiryID\":\"57843834\",\"EnquiryResultID\":\"59594245\",\"ProductID\":41}', 'ConnectGetResult', 1),
(166, 'procurementreport', '2023-01-22 13:57:55', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cd40a72d256-79\"}', 'ConnectBusinessMatch', 1),
(167, 'procurementreport', '2023-01-22 13:58:47', 1, 'companyname', '{\"EnquiryID\":\"57853863\",\"EnquiryResultID\":\"59603956\",\"ProductID\":41}', 'ConnectGetResult', 1),
(168, 'procurementreport', '2023-01-22 14:09:08', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cd4363f2e60-24\"}', 'ConnectBusinessMatch', 1),
(169, 'procurementreport', '2023-01-22 14:12:27', 1, 'companyname', '{\"EnquiryID\":\"57853865\",\"EnquiryResultID\":\"59603989\",\"ProductID\":41}', 'ConnectGetResult', 1),
(170, 'procurementreport', '2023-01-22 14:15:49', 1, 'companyname', '{\"EnquiryID\":\"57853865\",\"EnquiryResultID\":\"59603989\",\"ProductID\":41}', 'ConnectGetResult', 1),
(171, 'procurementreport', '2023-01-22 14:40:11', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cd4aa7ad0ac-18\"}', 'ConnectBusinessMatch', 1),
(172, 'procurementreport', '2023-01-22 14:40:23', 1, 'companyname', '{\"EnquiryID\":\"57853869\",\"EnquiryResultID\":\"59604024\",\"ProductID\":41}', 'ConnectGetResult', 1),
(173, 'procurementreport', '2023-01-22 15:01:23', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cd4fa2a1d6a-91\"}', 'ConnectBusinessMatch', 1),
(174, 'procurementreport', '2023-01-22 15:01:54', 1, 'companyname', '{\"EnquiryID\":\"57853874\",\"EnquiryResultID\":\"59604060\",\"ProductID\":41}', 'ConnectGetResult', 1),
(175, 'tracereport', '2023-01-23 13:56:29', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(176, 'tracereport', '2023-01-23 13:56:35', 1, 'id-search', '{\"EnquiryID\":\"57859499\",\"EnquiryResultID\":\"59610540\",\"ProductID\":2}', 'ConnectGetResult', 1),
(177, 'procurementreport', '2023-01-23 14:02:37', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ce9365b9a09-27\"}', 'ConnectBusinessMatch', 1),
(178, 'procurementreport', '2023-01-23 14:02:51', 1, 'companyname', '{\"EnquiryID\":\"57859530\",\"EnquiryResultID\":\"59610580\",\"ProductID\":41}', 'ConnectGetResult', 1),
(179, 'procurementreport', '2023-01-23 14:11:57', 1, 'companyname', '{\"EnquiryID\":\"57859530\",\"EnquiryResultID\":\"59610580\",\"ProductID\":41}', 'ConnectGetResult', 1),
(180, 'procurementreport', '2023-01-23 14:14:22', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ce9611bc821-80\"}', 'ConnectBusinessMatch', 1),
(181, 'procurementreport', '2023-01-23 14:14:41', 1, 'companyname', '{\"EnquiryID\":\"57859576\",\"EnquiryResultID\":\"59610658\",\"ProductID\":41}', 'ConnectGetResult', 1),
(182, 'procurementreport', '2023-01-23 14:15:17', 1, 'companyname', '{\"EnquiryID\":\"57859576\",\"EnquiryResultID\":\"59610658\",\"ProductID\":41}', 'ConnectGetResult', 1),
(183, 'tracereport', '2023-01-23 14:15:25', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(184, 'tracereport', '2023-01-23 14:15:38', 1, 'id-search', '{\"EnquiryID\":\"57859584\",\"EnquiryResultID\":\"59610687\",\"ProductID\":2}', 'ConnectGetResult', 1),
(185, 'procurementreport', '2023-01-23 14:17:04', 1, 'companyname', '{\"EnquiryID\":\"57859576\",\"EnquiryResultID\":\"59610658\",\"ProductID\":41}', 'ConnectGetResult', 1),
(186, 'tracereport', '2023-01-23 14:17:13', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(187, 'tracereport', '2023-01-23 14:17:21', 1, 'id-search', '{\"EnquiryID\":\"57859592\",\"EnquiryResultID\":\"59610695\",\"ProductID\":2}', 'ConnectGetResult', 1),
(188, 'tracereport', '2023-01-23 14:17:27', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(189, 'tracereport', '2023-01-23 14:17:39', 1, 'id-search', '{\"EnquiryID\":\"57859593\",\"EnquiryResultID\":\"59610696\",\"ProductID\":2}', 'ConnectGetResult', 1),
(190, 'tracereport', '2023-01-23 14:17:47', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(191, 'tracereport', '2023-01-23 14:17:56', 1, 'id-search', '{\"EnquiryID\":\"57859595\",\"EnquiryResultID\":\"59610698\",\"ProductID\":2}', 'ConnectGetResult', 1),
(192, 'tracereport', '2023-01-23 14:18:08', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(193, 'tracereport', '2023-01-23 14:18:22', 1, 'id-search', '{\"EnquiryID\":\"57859597\",\"EnquiryResultID\":\"59610700\",\"ProductID\":2}', 'ConnectGetResult', 1),
(194, 'procurementreport', '2023-01-23 14:27:21', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ce9923c6ffb-76\"}', 'ConnectBusinessMatch', 1),
(195, 'procurementreport', '2023-01-23 14:27:33', 1, 'companyname', '{\"EnquiryID\":\"57859638\",\"EnquiryResultID\":\"59610751\",\"ProductID\":41}', 'ConnectGetResult', 1),
(196, 'tracereport', '2023-01-23 14:27:36', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(197, 'tracereport', '2023-01-23 14:27:40', 1, 'id-search', '{\"EnquiryID\":\"57859644\",\"EnquiryResultID\":\"59610778\",\"ProductID\":2}', 'ConnectGetResult', 1),
(198, 'tracereport', '2023-01-23 14:27:44', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(199, 'tracereport', '2023-01-23 14:27:49', 1, 'id-search', '{\"EnquiryID\":\"57859645\",\"EnquiryResultID\":\"59610779\",\"ProductID\":2}', 'ConnectGetResult', 1),
(200, 'tracereport', '2023-01-23 14:27:52', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(201, 'tracereport', '2023-01-23 14:27:56', 1, 'id-search', '{\"EnquiryID\":\"57859647\",\"EnquiryResultID\":\"59610781\",\"ProductID\":2}', 'ConnectGetResult', 1),
(202, 'tracereport', '2023-01-23 14:28:01', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(203, 'tracereport', '2023-01-23 14:28:11', 1, 'id-search', '{\"EnquiryID\":\"57859648\",\"EnquiryResultID\":\"59610782\",\"ProductID\":2}', 'ConnectGetResult', 1),
(204, 'procurementreport', '2023-01-23 14:29:06', 1, 'companyname', '{\"EnquiryID\":\"57859638\",\"EnquiryResultID\":\"59610751\",\"ProductID\":41}', 'ConnectGetResult', 1),
(205, 'tracereport', '2023-01-23 14:29:09', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(206, 'tracereport', '2023-01-23 14:29:14', 1, 'id-search', '{\"EnquiryID\":\"57859654\",\"EnquiryResultID\":\"59610788\",\"ProductID\":2}', 'ConnectGetResult', 1),
(207, 'tracereport', '2023-01-23 14:29:18', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(208, 'tracereport', '2023-01-23 14:29:22', 1, 'id-search', '{\"EnquiryID\":\"57859656\",\"EnquiryResultID\":\"59610790\",\"ProductID\":2}', 'ConnectGetResult', 1),
(209, 'tracereport', '2023-01-23 14:29:25', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(210, 'tracereport', '2023-01-23 14:29:29', 1, 'id-search', '{\"EnquiryID\":\"57859657\",\"EnquiryResultID\":\"59610791\",\"ProductID\":2}', 'ConnectGetResult', 1),
(211, 'tracereport', '2023-01-23 14:29:31', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(212, 'tracereport', '2023-01-23 14:29:36', 1, 'id-search', '{\"EnquiryID\":\"57859659\",\"EnquiryResultID\":\"59610793\",\"ProductID\":2}', 'ConnectGetResult', 1),
(213, 'tracereport', '2023-01-23 14:51:31', 1, 'telephonesearch', '{\"TelephoneCode\":\"073\",\"TelephoneNo\":\"5543953\"}', 'ConnectTelephoneMatch', 1),
(214, 'tracereport', '2023-01-23 14:51:32', 1, 'telephonesearch', '{\"EnquiryResultID\":\"59610977\"}', 'AdminEnquiryResult', 1),
(215, 'tracereport', '2023-01-23 14:51:34', 1, 'telephonesearch', '{\"EnquiryResultID\":\"59610978\"}', 'AdminEnquiryResult', 1),
(216, 'indigentreport', '2023-01-23 14:52:09', 1, 'id-search', '{\"IdNumber\":\"8509231507080\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(217, 'indigentreport', '2023-01-23 14:52:27', 1, 'id-search', '{\"EnquiryID\":\"57859812\",\"EnquiryResultID\":\"59610984\",\"ProductID\":132}', 'ConnectGetResult', 1),
(218, 'indigentreport', '2023-01-23 14:52:47', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8509231507080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(219, 'indigentreport', '2023-01-23 14:52:50', 1, 'id-search', '{\"IdNumber\":\"8509231507080\"}', 'ConnectDirectorMatch', 0),
(220, 'procurementreport', '2023-01-23 15:18:10', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cea506a09b4-34\"}', 'ConnectBusinessMatch', 1),
(221, 'procurementreport', '2023-01-23 15:19:36', 1, 'companyname', '{\"EnquiryID\":\"57860018\",\"EnquiryResultID\":\"59611199\",\"ProductID\":41}', 'ConnectGetResult', 1),
(222, 'tracereport', '2023-01-23 15:19:41', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(223, 'tracereport', '2023-01-23 15:19:50', 1, 'id-search', '{\"EnquiryID\":\"57860034\",\"EnquiryResultID\":\"59611236\",\"ProductID\":2}', 'ConnectGetResult', 1),
(224, 'tracereport', '2023-01-23 15:19:56', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(225, 'tracereport', '2023-01-23 15:20:02', 1, 'id-search', '{\"EnquiryID\":\"57860035\",\"EnquiryResultID\":\"59611237\",\"ProductID\":2}', 'ConnectGetResult', 1),
(226, 'tracereport', '2023-01-23 15:20:08', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(227, 'tracereport', '2023-01-23 15:20:13', 1, 'id-search', '{\"EnquiryID\":\"57860038\",\"EnquiryResultID\":\"59611240\",\"ProductID\":2}', 'ConnectGetResult', 1),
(228, 'tracereport', '2023-01-23 15:20:20', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(229, 'tracereport', '2023-01-23 15:20:24', 1, 'id-search', '{\"EnquiryID\":\"57860041\",\"EnquiryResultID\":\"59611243\",\"ProductID\":2}', 'ConnectGetResult', 1),
(230, 'tracereport', '2023-01-23 18:40:33', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(231, 'tracereport', '2023-01-23 18:40:43', 1, 'id-search', '{\"EnquiryID\":\"57861210\",\"EnquiryResultID\":\"59612413\",\"ProductID\":2}', 'ConnectGetResult', 1),
(232, 'tracereport', '2023-01-23 18:41:45', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(233, 'tracereport', '2023-01-23 18:41:53', 1, 'id-search', '{\"EnquiryID\":\"57861217\",\"EnquiryResultID\":\"59612420\",\"ProductID\":2}', 'ConnectGetResult', 1),
(234, 'tracereport', '2023-01-23 18:43:58', 1, 'id-search', '{\"IdNumber\":\"8209195185086\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(235, 'tracereport', '2023-01-23 18:44:05', 1, 'id-search', '{\"EnquiryID\":\"57861231\",\"EnquiryResultID\":\"59612434\",\"ProductID\":2}', 'ConnectGetResult', 1),
(236, 'indigentreport', '2023-01-23 18:46:24', 1, 'id-search', '{\"IdNumber\":\"8209195185086\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(237, 'indigentreport', '2023-01-23 18:46:39', 1, 'id-search', '{\"EnquiryID\":\"57861248\",\"EnquiryResultID\":\"59612451\",\"ProductID\":132}', 'ConnectGetResult', 1),
(238, 'indigentreport', '2023-01-23 18:47:08', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8209195185086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(239, 'indigentreport', '2023-01-23 18:50:48', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(240, 'indigentreport', '2023-01-23 18:51:08', 1, 'id-search', '{\"EnquiryID\":\"57861274\",\"EnquiryResultID\":\"59612477\",\"ProductID\":132}', 'ConnectGetResult', 1),
(241, 'indigentreport', '2023-01-23 18:51:47', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(242, 'indigentreport', '2023-01-23 19:00:43', 1, 'id-search', '{\"EnquiryID\":\"57861274\",\"EnquiryResultID\":\"59612477\",\"ProductID\":132}', 'ConnectGetResult', 1),
(243, 'indigentreport', '2023-01-23 19:01:23', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(244, 'indigentreport', '2023-01-23 19:01:27', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(245, 'indigentreport', '2023-01-23 19:01:35', 1, 'id-search', '{\"EnquiryID\":\"57861343\",\"EnquiryResultID\":\"59612546\",\"ProductID\":14}', 'ConnectGetResult', 1),
(246, 'indigentreport', '2023-01-23 19:04:02', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(247, 'indigentreport', '2023-01-23 19:04:17', 1, 'id-search', '{\"EnquiryID\":\"57861359\",\"EnquiryResultID\":\"59612562\",\"ProductID\":132}', 'ConnectGetResult', 1),
(248, 'indigentreport', '2023-01-23 19:04:49', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(249, 'indigentreport', '2023-01-23 19:04:55', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(250, 'indigentreport', '2023-01-23 19:05:00', 1, 'id-search', '{\"EnquiryID\":\"57861365\",\"EnquiryResultID\":\"59612568\",\"ProductID\":14}', 'ConnectGetResult', 1),
(251, 'indigentreport', '2023-01-23 19:07:51', 1, 'id-search', '{\"EnquiryID\":\"57861359\",\"EnquiryResultID\":\"59612562\",\"ProductID\":132}', 'ConnectGetResult', 1),
(252, 'indigentreport', '2023-01-23 19:08:13', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(253, 'indigentreport', '2023-01-23 19:08:17', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(254, 'indigentreport', '2023-01-23 19:08:22', 1, 'id-search', '{\"EnquiryID\":\"57861390\",\"EnquiryResultID\":\"59612593\",\"ProductID\":14}', 'ConnectGetResult', 1),
(255, 'indigentreport', '2023-01-23 19:17:59', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(256, 'indigentreport', '2023-01-23 19:18:50', 1, 'id-search', '{\"EnquiryID\":\"57861452\",\"EnquiryResultID\":\"59612655\",\"ProductID\":132}', 'ConnectGetResult', 1),
(257, 'indigentreport', '2023-01-23 19:19:26', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(258, 'indigentreport', '2023-01-23 19:19:31', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(259, 'indigentreport', '2023-01-23 19:19:42', 1, 'id-search', '{\"EnquiryID\":\"57861464\",\"EnquiryResultID\":\"59612667\",\"ProductID\":14}', 'ConnectGetResult', 1),
(260, 'indigentreport', '2023-01-23 19:21:49', 1, 'id-search', '{\"EnquiryID\":\"57861452\",\"EnquiryResultID\":\"59612655\",\"ProductID\":132}', 'ConnectGetResult', 1),
(261, 'indigentreport', '2023-01-23 19:22:26', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(262, 'indigentreport', '2023-01-23 19:22:33', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(263, 'indigentreport', '2023-01-23 19:22:42', 1, 'id-search', '{\"EnquiryID\":\"57861484\",\"EnquiryResultID\":\"59612687\",\"ProductID\":14}', 'ConnectGetResult', 1);
INSERT INTO `auditlog` (`auditlog_id`, `auditlog_reportname`, `auditlog_datetime`, `auditlog_userId`, `auditlog_reporttype`, `auditlog_searchdata`, `auditlog_fnexecuted`, `auditlog_issuccess`) VALUES
(264, 'indigentreport', '2023-01-23 19:23:05', 1, 'id-search', '{\"IdNumber\":\"8509231507080\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(265, 'indigentreport', '2023-01-23 19:23:20', 1, 'id-search', '{\"EnquiryID\":\"57861488\",\"EnquiryResultID\":\"59612691\",\"ProductID\":132}', 'ConnectGetResult', 1),
(266, 'indigentreport', '2023-01-23 19:23:32', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8509231507080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(267, 'indigentreport', '2023-01-23 19:23:38', 1, 'id-search', '{\"IdNumber\":\"8509231507080\"}', 'ConnectDirectorMatch', 0),
(268, 'indigentreport', '2023-01-23 19:25:40', 1, 'id-search', '{\"IdNumber\":\"8509231507080\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(269, 'indigentreport', '2023-01-23 19:27:39', 1, 'id-search', '{\"EnquiryID\":\"57861508\",\"EnquiryResultID\":\"59612711\",\"ProductID\":132}', 'ConnectGetResult', 1),
(270, 'indigentreport', '2023-01-23 19:31:50', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(271, 'indigentreport', '2023-01-23 19:32:11', 1, 'id-search', '{\"EnquiryID\":\"57861544\",\"EnquiryResultID\":\"59612776\",\"ProductID\":132}', 'ConnectGetResult', 1),
(272, 'indigentreport', '2023-01-23 19:32:56', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(273, 'indigentreport', '2023-01-23 19:33:02', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(274, 'indigentreport', '2023-01-23 19:33:10', 1, 'id-search', '{\"EnquiryID\":\"57861553\",\"EnquiryResultID\":\"59612785\",\"ProductID\":14}', 'ConnectGetResult', 1),
(275, 'indigentreport', '2023-01-23 19:37:36', 1, 'id-search', '{\"EnquiryID\":\"57861544\",\"EnquiryResultID\":\"59612776\",\"ProductID\":132}', 'ConnectGetResult', 1),
(276, 'indigentreport', '2023-01-23 19:38:09', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(277, 'indigentreport', '2023-01-23 19:38:16', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(278, 'indigentreport', '2023-01-23 19:38:22', 1, 'id-search', '{\"EnquiryID\":\"57861587\",\"EnquiryResultID\":\"59612848\",\"ProductID\":14}', 'ConnectGetResult', 1),
(279, 'indigentreport', '2023-01-23 19:38:51', 1, 'id-search', '{\"EnquiryID\":\"57861544\",\"EnquiryResultID\":\"59612776\",\"ProductID\":132}', 'ConnectGetResult', 1),
(280, 'indigentreport', '2023-01-23 19:39:27', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8505275937084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(281, 'indigentreport', '2023-01-23 19:39:32', 1, 'id-search', '{\"IdNumber\":\"8505275937084\"}', 'ConnectDirectorMatch', 1),
(282, 'indigentreport', '2023-01-23 19:39:38', 1, 'id-search', '{\"EnquiryID\":\"57861596\",\"EnquiryResultID\":\"59612857\",\"ProductID\":14}', 'ConnectGetResult', 1),
(283, 'procurementreport', '2023-01-23 19:55:19', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cee5fde268d-55\"}', 'ConnectBusinessMatch', 1),
(284, 'procurementreport', '2023-01-23 19:55:40', 1, 'companyname', '{\"EnquiryID\":\"57861682\",\"EnquiryResultID\":\"59612952\",\"ProductID\":41}', 'ConnectGetResult', 1),
(285, 'tracereport', '2023-01-23 19:55:46', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(286, 'tracereport', '2023-01-23 19:55:56', 1, 'id-search', '{\"EnquiryID\":\"57861688\",\"EnquiryResultID\":\"59612980\",\"ProductID\":2}', 'ConnectGetResult', 1),
(287, 'tracereport', '2023-01-23 19:56:02', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(288, 'tracereport', '2023-01-23 19:56:08', 1, 'id-search', '{\"EnquiryID\":\"57861691\",\"EnquiryResultID\":\"59612983\",\"ProductID\":2}', 'ConnectGetResult', 1),
(289, 'tracereport', '2023-01-23 19:56:13', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(290, 'tracereport', '2023-01-23 19:56:23', 1, 'id-search', '{\"EnquiryID\":\"57861694\",\"EnquiryResultID\":\"59612986\",\"ProductID\":2}', 'ConnectGetResult', 1),
(291, 'tracereport', '2023-01-23 19:56:30', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(292, 'tracereport', '2023-01-23 19:56:38', 1, 'id-search', '{\"EnquiryID\":\"57861695\",\"EnquiryResultID\":\"59612987\",\"ProductID\":2}', 'ConnectGetResult', 1),
(293, 'procurementreport', '2023-01-23 19:58:15', 1, 'companyname', '{\"EnquiryID\":\"57861682\",\"EnquiryResultID\":\"59612952\",\"ProductID\":41}', 'ConnectGetResult', 1),
(294, 'tracereport', '2023-01-23 19:58:20', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(295, 'tracereport', '2023-01-23 19:58:27', 1, 'id-search', '{\"EnquiryID\":\"57861708\",\"EnquiryResultID\":\"59613000\",\"ProductID\":2}', 'ConnectGetResult', 1),
(296, 'tracereport', '2023-01-23 19:58:32', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(297, 'tracereport', '2023-01-23 19:58:45', 1, 'id-search', '{\"EnquiryID\":\"57861711\",\"EnquiryResultID\":\"59613003\",\"ProductID\":2}', 'ConnectGetResult', 1),
(298, 'tracereport', '2023-01-23 19:58:52', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(299, 'tracereport', '2023-01-23 19:59:01', 1, 'id-search', '{\"EnquiryID\":\"57861714\",\"EnquiryResultID\":\"59613006\",\"ProductID\":2}', 'ConnectGetResult', 1),
(300, 'tracereport', '2023-01-23 19:59:08', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(301, 'tracereport', '2023-01-23 19:59:15', 1, 'id-search', '{\"EnquiryID\":\"57861716\",\"EnquiryResultID\":\"59613008\",\"ProductID\":2}', 'ConnectGetResult', 1),
(302, 'procurementreport', '2023-01-23 20:13:23', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ceea42453b2-11\"}', 'ConnectBusinessMatch', 1),
(303, 'procurementreport', '2023-01-23 20:14:01', 1, 'companyname', '{\"EnquiryID\":\"57861806\",\"EnquiryResultID\":\"59613109\",\"ProductID\":41}', 'ConnectGetResult', 1),
(304, 'tracereport', '2023-01-23 20:14:06', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(305, 'tracereport', '2023-01-23 20:14:13', 1, 'id-search', '{\"EnquiryID\":\"57861815\",\"EnquiryResultID\":\"59613138\",\"ProductID\":2}', 'ConnectGetResult', 1),
(306, 'procurementreport', '2023-01-23 20:14:45', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7108230085080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(307, 'tracereport', '2023-01-23 20:14:48', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(308, 'tracereport', '2023-01-23 20:14:58', 1, 'id-search', '{\"EnquiryID\":\"57861821\",\"EnquiryResultID\":\"59613144\",\"ProductID\":2}', 'ConnectGetResult', 1),
(309, 'procurementreport', '2023-01-23 20:15:33', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7007025070085\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(310, 'tracereport', '2023-01-23 20:15:38', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(311, 'tracereport', '2023-01-23 20:15:42', 1, 'id-search', '{\"EnquiryID\":\"57861828\",\"EnquiryResultID\":\"59613151\",\"ProductID\":2}', 'ConnectGetResult', 1),
(312, 'procurementreport', '2023-01-23 20:16:14', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7502130173089\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(313, 'tracereport', '2023-01-23 20:16:22', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(314, 'tracereport', '2023-01-23 20:16:32', 1, 'id-search', '{\"EnquiryID\":\"57861834\",\"EnquiryResultID\":\"59613157\",\"ProductID\":2}', 'ConnectGetResult', 1),
(315, 'procurementreport', '2023-01-23 20:16:53', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"6903225072080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(316, 'procurementreport', '2023-01-23 20:29:16', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63ceedf26c9d4-12\"}', 'ConnectBusinessMatch', 1),
(317, 'procurementreport', '2023-01-23 20:29:36', 1, 'companyname', '{\"EnquiryID\":\"57861916\",\"EnquiryResultID\":\"59613248\",\"ProductID\":41}', 'ConnectGetResult', 1),
(318, 'tracereport', '2023-01-23 20:29:42', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(319, 'tracereport', '2023-01-23 20:29:50', 1, 'id-search', '{\"EnquiryID\":\"57861924\",\"EnquiryResultID\":\"59613278\",\"ProductID\":2}', 'ConnectGetResult', 1),
(320, 'procurementreport', '2023-01-23 20:30:09', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7108230085080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(321, 'tracereport', '2023-01-23 20:30:13', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(322, 'tracereport', '2023-01-23 20:30:19', 1, 'id-search', '{\"EnquiryID\":\"57861928\",\"EnquiryResultID\":\"59613282\",\"ProductID\":2}', 'ConnectGetResult', 1),
(323, 'procurementreport', '2023-01-23 20:30:44', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7007025070085\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(324, 'tracereport', '2023-01-23 20:30:49', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(325, 'tracereport', '2023-01-23 20:30:54', 1, 'id-search', '{\"EnquiryID\":\"57861934\",\"EnquiryResultID\":\"59613289\",\"ProductID\":2}', 'ConnectGetResult', 1),
(326, 'procurementreport', '2023-01-23 20:31:29', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7502130173089\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(327, 'tracereport', '2023-01-23 20:31:35', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(328, 'tracereport', '2023-01-23 20:31:43', 1, 'id-search', '{\"EnquiryID\":\"57861942\",\"EnquiryResultID\":\"59613296\",\"ProductID\":2}', 'ConnectGetResult', 1),
(329, 'procurementreport', '2023-01-23 20:32:01', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"6903225072080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(330, 'procurementreport', '2023-01-23 20:35:24', 1, 'companyname', '{\"EnquiryID\":\"57861916\",\"EnquiryResultID\":\"59613248\",\"ProductID\":41}', 'ConnectGetResult', 1),
(331, 'tracereport', '2023-01-23 20:35:29', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(332, 'tracereport', '2023-01-23 20:35:36', 1, 'id-search', '{\"EnquiryID\":\"57861970\",\"EnquiryResultID\":\"59613324\",\"ProductID\":2}', 'ConnectGetResult', 1),
(333, 'procurementreport', '2023-01-23 20:35:59', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7108230085080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(334, 'tracereport', '2023-01-23 20:36:05', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(335, 'tracereport', '2023-01-23 20:36:16', 1, 'id-search', '{\"EnquiryID\":\"57861977\",\"EnquiryResultID\":\"59613331\",\"ProductID\":2}', 'ConnectGetResult', 1),
(336, 'procurementreport', '2023-01-23 20:36:42', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7007025070085\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(337, 'tracereport', '2023-01-23 20:36:46', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(338, 'tracereport', '2023-01-23 20:36:56', 1, 'id-search', '{\"EnquiryID\":\"57861983\",\"EnquiryResultID\":\"59613337\",\"ProductID\":2}', 'ConnectGetResult', 1),
(339, 'procurementreport', '2023-01-23 20:37:29', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7502130173089\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(340, 'tracereport', '2023-01-23 20:37:33', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(341, 'procurementreport', '2023-01-23 20:39:10', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cef04ab55dc-67\"}', 'ConnectBusinessMatch', 1),
(342, 'procurementreport', '2023-01-23 20:39:30', 1, 'companyname', '{\"EnquiryID\":\"57861997\",\"EnquiryResultID\":\"59613360\",\"ProductID\":41}', 'ConnectGetResult', 1),
(343, 'tracereport', '2023-01-23 20:39:35', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(344, 'tracereport', '2023-01-23 20:39:49', 1, 'id-search', '{\"EnquiryID\":\"57862004\",\"EnquiryResultID\":\"59613389\",\"ProductID\":2}', 'ConnectGetResult', 1),
(345, 'procurementreport', '2023-01-23 20:40:13', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7108230085080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(346, 'tracereport', '2023-01-23 20:40:17', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(347, 'tracereport', '2023-01-23 20:40:24', 1, 'id-search', '{\"EnquiryID\":\"57862010\",\"EnquiryResultID\":\"59613395\",\"ProductID\":2}', 'ConnectGetResult', 1),
(348, 'procurementreport', '2023-01-23 20:40:51', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7007025070085\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(349, 'tracereport', '2023-01-23 20:40:57', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(350, 'tracereport', '2023-01-23 20:41:04', 1, 'id-search', '{\"EnquiryID\":\"57862016\",\"EnquiryResultID\":\"59613401\",\"ProductID\":2}', 'ConnectGetResult', 1),
(351, 'procurementreport', '2023-01-23 20:41:38', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7502130173089\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(352, 'tracereport', '2023-01-23 20:41:43', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(353, 'tracereport', '2023-01-23 20:41:54', 1, 'id-search', '{\"EnquiryID\":\"57862023\",\"EnquiryResultID\":\"59613408\",\"ProductID\":2}', 'ConnectGetResult', 1),
(354, 'procurementreport', '2023-01-23 20:42:17', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"6903225072080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(355, 'procurementreport', '2023-01-23 20:44:19', 1, 'companyname', '{\"EnquiryID\":\"57861997\",\"EnquiryResultID\":\"59613360\",\"ProductID\":41}', 'ConnectGetResult', 1),
(356, 'tracereport', '2023-01-23 20:44:27', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(357, 'tracereport', '2023-01-23 20:44:34', 1, 'id-search', '{\"EnquiryID\":\"57862043\",\"EnquiryResultID\":\"59613428\",\"ProductID\":2}', 'ConnectGetResult', 1),
(358, 'procurementreport', '2023-01-23 20:44:52', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7108230085080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(359, 'tracereport', '2023-01-23 20:44:56', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(360, 'tracereport', '2023-01-23 20:45:03', 1, 'id-search', '{\"EnquiryID\":\"57862047\",\"EnquiryResultID\":\"59613432\",\"ProductID\":2}', 'ConnectGetResult', 1),
(361, 'procurementreport', '2023-01-23 20:45:27', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7007025070085\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(362, 'tracereport', '2023-01-23 20:45:31', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(363, 'tracereport', '2023-01-23 20:45:34', 1, 'id-search', '{\"EnquiryID\":\"57862054\",\"EnquiryResultID\":\"59613439\",\"ProductID\":2}', 'ConnectGetResult', 1),
(364, 'procurementreport', '2023-01-23 20:46:05', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"7502130173089\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(365, 'tracereport', '2023-01-23 20:46:13', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(366, 'tracereport', '2023-01-23 20:46:20', 1, 'id-search', '{\"EnquiryID\":\"57862060\",\"EnquiryResultID\":\"59613445\",\"ProductID\":2}', 'ConnectGetResult', 1),
(367, 'procurementreport', '2023-01-23 20:46:40', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"6903225072080\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(368, 'procurementreport', '2023-01-23 20:51:24', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63cef3299ccbc-47\"}', 'ConnectBusinessMatch', 1),
(369, 'procurementreport', '2023-01-23 20:52:01', 1, 'companyname', '{\"EnquiryID\":\"57862090\",\"EnquiryResultID\":\"59613485\",\"ProductID\":41}', 'ConnectGetResult', 1),
(370, 'tracereport', '2023-01-23 20:52:06', 1, 'id-search', '{\"IdNumber\":\"7108230085080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(371, 'tracereport', '2023-01-23 20:52:13', 1, 'id-search', '{\"EnquiryID\":\"57862099\",\"EnquiryResultID\":\"59613515\",\"ProductID\":2}', 'ConnectGetResult', 1),
(372, 'tracereport', '2023-01-23 20:52:20', 1, 'id-search', '{\"IdNumber\":\"7007025070085\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(373, 'tracereport', '2023-01-23 20:52:28', 1, 'id-search', '{\"EnquiryID\":\"57862100\",\"EnquiryResultID\":\"59613516\",\"ProductID\":2}', 'ConnectGetResult', 1),
(374, 'tracereport', '2023-01-23 20:52:33', 1, 'id-search', '{\"IdNumber\":\"7502130173089\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(375, 'tracereport', '2023-01-23 20:52:41', 1, 'id-search', '{\"EnquiryID\":\"57862103\",\"EnquiryResultID\":\"59613519\",\"ProductID\":2}', 'ConnectGetResult', 1),
(376, 'tracereport', '2023-01-23 20:52:47', 1, 'id-search', '{\"IdNumber\":\"6903225072080\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(377, 'tracereport', '2023-01-23 20:52:55', 1, 'id-search', '{\"EnquiryID\":\"57862105\",\"EnquiryResultID\":\"59613520\",\"ProductID\":2}', 'ConnectGetResult', 1),
(378, 'procurementreport', '2023-01-24 20:16:09', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63d03c648abda-43\"}', 'ConnectBusinessMatch', 1),
(379, 'procurementreport', '2023-01-24 20:16:30', 1, 'companyname', '{\"EnquiryID\":\"57869681\",\"EnquiryResultID\":\"59621424\",\"ProductID\":41}', 'ConnectGetResult', 1),
(380, 'procurementreport', '2023-01-24 20:22:51', 1, 'companyname', '{\"EnquiryID\":\"57869681\",\"EnquiryResultID\":\"59621424\",\"ProductID\":41}', 'ConnectGetResult', 1),
(381, 'procurementreport', '2023-01-26 09:17:52', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"striata\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63d244e627a47-52\"}', 'ConnectBusinessMatch', 1),
(382, 'procurementreport', '2023-01-26 09:18:58', 1, 'companyname', '{\"EnquiryID\":\"57874069\",\"EnquiryResultID\":\"59626172\",\"ProductID\":41}', 'ConnectGetResult', 1),
(383, 'indigentreport', '2023-01-26 09:30:03', 1, 'id-search', '{\"IdNumber\":\"8303060318086\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(384, 'indigentreport', '2023-01-26 09:30:16', 1, 'id-search', '{\"EnquiryID\":\"57874114\",\"EnquiryResultID\":\"59626239\",\"ProductID\":132}', 'ConnectGetResult', 1),
(385, 'indigentreport', '2023-01-26 09:31:09', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8303060318086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(386, 'indigentreport', '2023-01-26 09:31:17', 1, 'id-search', '{\"IdNumber\":\"8303060318086\"}', 'ConnectDirectorMatch', 1),
(387, 'indigentreport', '2023-01-26 09:31:22', 1, 'id-search', '{\"EnquiryID\":\"57874129\",\"EnquiryResultID\":\"59626255\",\"ProductID\":14}', 'ConnectGetResult', 1),
(388, 'indigentreport', '2023-01-26 09:36:26', 1, 'id-search', '{\"EnquiryID\":\"57874114\",\"EnquiryResultID\":\"59626239\",\"ProductID\":132}', 'ConnectGetResult', 1),
(389, 'indigentreport', '2023-01-26 09:37:01', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8303060318086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(390, 'indigentreport', '2023-01-26 09:37:04', 1, 'id-search', '{\"IdNumber\":\"8303060318086\"}', 'ConnectDirectorMatch', 1),
(391, 'indigentreport', '2023-01-26 09:37:09', 1, 'id-search', '{\"EnquiryID\":\"57874147\",\"EnquiryResultID\":\"59626273\",\"ProductID\":14}', 'ConnectGetResult', 1),
(392, 'indigentreport', '2023-01-26 09:40:48', 1, 'id-search', '{\"IdNumber\":\"8303060318086\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(393, 'indigentreport', '2023-01-26 09:41:04', 1, 'id-search', '{\"EnquiryID\":\"57874153\",\"EnquiryResultID\":\"59626279\",\"ProductID\":132}', 'ConnectGetResult', 1),
(394, 'indigentreport', '2023-01-26 09:41:29', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8303060318086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(395, 'indigentreport', '2023-01-26 09:41:32', 1, 'id-search', '{\"IdNumber\":\"8303060318086\"}', 'ConnectDirectorMatch', 1),
(396, 'indigentreport', '2023-01-26 09:41:35', 1, 'id-search', '{\"EnquiryID\":\"57874155\",\"EnquiryResultID\":\"59626281\",\"ProductID\":14}', 'ConnectGetResult', 1),
(397, 'procurementreport', '2023-01-26 11:09:52', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"TEST COMPANY (PTY)LTD\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63d25f58e33c2-68\"}', 'ConnectBusinessMatch', 1),
(398, 'procurementreport', '2023-01-26 11:10:09', 1, 'companyname', '{\"EnquiryID\":\"57874263\",\"EnquiryResultID\":\"59626389\",\"ProductID\":41}', 'ConnectGetResult', 1),
(399, 'procurementreport', '2023-01-26 11:11:42', 1, 'companyname', '{\"EnquiryID\":\"57874263\",\"EnquiryResultID\":\"59626389\",\"ProductID\":41}', 'ConnectGetResult', 1),
(400, 'procurementreport', '2023-01-26 11:12:04', 1, 'companyname', '{\"EnquiryID\":\"57874263\",\"EnquiryResultID\":\"59626389\",\"ProductID\":41}', 'ConnectGetResult', 1),
(401, 'indigentreport', '2023-01-26 20:09:34', 1, 'id-search', '{\"IdNumber\":\"8303060318086\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(402, 'indigentreport', '2023-01-26 20:09:44', 1, 'id-search', '{\"EnquiryID\":\"57874806\",\"EnquiryResultID\":\"59627049\",\"ProductID\":132}', 'ConnectGetResult', 1),
(403, 'indigentreport', '2023-01-26 20:10:04', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8303060318086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(404, 'indigentreport', '2023-01-26 20:10:08', 1, 'id-search', '{\"IdNumber\":\"8303060318086\"}', 'ConnectDirectorMatch', 1),
(405, 'indigentreport', '2023-01-26 20:10:12', 1, 'id-search', '{\"EnquiryID\":\"57874808\",\"EnquiryResultID\":\"59627051\",\"ProductID\":14}', 'ConnectGetResult', 1),
(406, 'indigentreport', '2023-01-26 20:11:10', 1, 'id-search', '{\"EnquiryID\":\"57874806\",\"EnquiryResultID\":\"59627049\",\"ProductID\":132}', 'ConnectGetResult', 1),
(407, 'indigentreport', '2023-01-26 20:11:32', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8303060318086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(408, 'indigentreport', '2023-01-26 20:11:35', 1, 'id-search', '{\"IdNumber\":\"8303060318086\"}', 'ConnectDirectorMatch', 1),
(409, 'indigentreport', '2023-01-26 20:11:38', 1, 'id-search', '{\"EnquiryID\":\"57874810\",\"EnquiryResultID\":\"59627053\",\"ProductID\":14}', 'ConnectGetResult', 1),
(410, 'indigentreport', '2023-01-26 20:13:45', 1, 'id-search', '{\"EnquiryID\":\"57874806\",\"EnquiryResultID\":\"59627049\",\"ProductID\":132}', 'ConnectGetResult', 1),
(411, 'indigentreport', '2023-01-26 20:14:02', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8303060318086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(412, 'indigentreport', '2023-01-26 20:14:05', 1, 'id-search', '{\"IdNumber\":\"8303060318086\"}', 'ConnectDirectorMatch', 1),
(413, 'indigentreport', '2023-01-26 20:14:10', 1, 'id-search', '{\"EnquiryID\":\"57874813\",\"EnquiryResultID\":\"59627056\",\"ProductID\":14}', 'ConnectGetResult', 1),
(414, 'indigentreport', '2023-01-26 20:14:56', 1, 'id-search', '{\"EnquiryID\":\"57874806\",\"EnquiryResultID\":\"59627049\",\"ProductID\":132}', 'ConnectGetResult', 1),
(415, 'indigentreport', '2023-01-26 20:15:23', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8303060318086\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(416, 'indigentreport', '2023-01-26 20:15:30', 1, 'id-search', '{\"IdNumber\":\"8303060318086\"}', 'ConnectDirectorMatch', 1),
(417, 'indigentreport', '2023-01-26 20:15:34', 1, 'id-search', '{\"EnquiryID\":\"57874816\",\"EnquiryResultID\":\"59627059\",\"ProductID\":14}', 'ConnectGetResult', 1),
(418, 'indigentreport', '2023-01-26 20:34:58', 1, 'id-search', '{\"IdNumber\":\"4507188290084\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(419, 'indigentreport', '2023-01-26 20:35:11', 1, 'id-search', '{\"EnquiryID\":\"57874830\",\"EnquiryResultID\":\"59627073\",\"ProductID\":132}', 'ConnectGetResult', 1),
(420, 'indigentreport', '2023-01-26 20:35:15', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"4507188290084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(421, 'indigentreport', '2023-01-26 20:36:07', 1, 'id-search', '{\"EnquiryID\":\"57874830\",\"EnquiryResultID\":\"59627073\",\"ProductID\":132}', 'ConnectGetResult', 1),
(422, 'indigentreport', '2023-01-26 20:36:11', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"4507188290084\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(423, 'indigentreport', '2023-01-26 20:36:16', 1, 'id-search', '{\"IdNumber\":\"4507188290084\"}', 'ConnectDirectorMatch', 0),
(424, 'tracereport', '2023-01-26 20:45:27', 1, 'id-search', '{\"IdNumber\":\"4507188290084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(425, 'tracereport', '2023-01-26 20:45:32', 1, 'id-search', '{\"EnquiryID\":\"57874838\",\"EnquiryResultID\":\"59627081\",\"ProductID\":2}', 'ConnectGetResult', 1),
(426, 'tracereport', '2023-01-26 20:53:32', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(427, 'tracereport', '2023-01-26 20:53:40', 1, 'id-search', '{\"EnquiryID\":\"57874839\",\"EnquiryResultID\":\"59627082\",\"ProductID\":2}', 'ConnectGetResult', 1),
(428, 'tracereport', '2023-01-26 20:54:29', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(429, 'tracereport', '2023-01-26 20:54:37', 1, 'id-search', '{\"EnquiryID\":\"57874840\",\"EnquiryResultID\":\"59627083\",\"ProductID\":2}', 'ConnectGetResult', 1),
(430, 'tracereport', '2023-01-27 07:33:14', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(431, 'tracereport', '2023-01-27 07:34:07', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(432, 'tracereport', '2023-01-27 07:35:26', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(433, 'tracereport', '2023-01-27 07:50:23', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(434, 'tracereport', '2023-01-27 07:52:08', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(435, 'tracereport', '2023-01-27 07:52:11', 1, 'id-search', '{\"EnquiryID\":\"57875183\",\"EnquiryResultID\":\"59627477\",\"ProductID\":2}', 'ConnectGetResult', 1),
(436, 'tracereport', '2023-01-27 07:52:16', 1, 'id-search', '{\"EnquiryID\":\"57875183\",\"EnquiryResultID\":\"59627478\",\"ProductID\":2}', 'ConnectGetResult', 1),
(437, 'tracereport', '2023-01-27 07:53:38', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(438, 'tracereport', '2023-01-27 07:53:44', 1, 'id-search', '{\"EnquiryID\":\"57875199\",\"EnquiryResultID\":\"59627494\",\"ProductID\":2}', 'ConnectGetResult', 1),
(439, 'tracereport', '2023-01-27 07:53:49', 1, 'id-search', '{\"EnquiryID\":\"57875199\",\"EnquiryResultID\":\"59627495\",\"ProductID\":2}', 'ConnectGetResult', 1),
(440, 'tracereport', '2023-01-27 08:07:00', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(441, 'tracereport', '2023-01-27 08:07:05', 1, 'id-search', '{\"EnquiryID\":\"57875224\",\"EnquiryResultID\":\"59627519\",\"ProductID\":2}', 'ConnectGetResult', 1),
(442, 'tracereport', '2023-01-27 08:07:11', 1, 'id-search', '{\"EnquiryID\":\"57875224\",\"EnquiryResultID\":\"59627520\",\"ProductID\":2}', 'ConnectGetResult', 1),
(443, 'tracereport', '2023-01-27 08:07:49', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(444, 'tracereport', '2023-01-27 08:07:53', 1, 'id-search', '{\"EnquiryID\":\"57875227\",\"EnquiryResultID\":\"59627523\",\"ProductID\":2}', 'ConnectGetResult', 1),
(445, 'tracereport', '2023-01-27 08:07:56', 1, 'id-search', '{\"EnquiryID\":\"57875227\",\"EnquiryResultID\":\"59627524\",\"ProductID\":2}', 'ConnectGetResult', 1),
(446, 'tracereport', '2023-01-27 08:10:01', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(447, 'tracereport', '2023-01-27 08:10:06', 1, 'id-search', '{\"EnquiryID\":\"57875240\",\"EnquiryResultID\":\"59627537\",\"ProductID\":2}', 'ConnectGetResult', 1),
(448, 'tracereport', '2023-01-27 08:10:11', 1, 'id-search', '{\"EnquiryID\":\"57875240\",\"EnquiryResultID\":\"59627538\",\"ProductID\":2}', 'ConnectGetResult', 1),
(449, 'tracereport', '2023-01-27 08:19:45', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(450, 'tracereport', '2023-01-27 08:19:51', 1, 'id-search', '{\"EnquiryID\":\"57875252\",\"EnquiryResultID\":\"59627550\",\"ProductID\":2}', 'ConnectGetResult', 1),
(451, 'tracereport', '2023-01-27 08:19:58', 1, 'id-search', '{\"EnquiryID\":\"57875252\",\"EnquiryResultID\":\"59627551\",\"ProductID\":2}', 'ConnectGetResult', 1),
(452, 'tracereport', '2023-01-27 08:21:37', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(453, 'tracereport', '2023-01-27 08:21:42', 1, 'id-search', '{\"EnquiryID\":\"57875257\",\"EnquiryResultID\":\"59627585\",\"ProductID\":2}', 'ConnectGetResult', 1),
(454, 'tracereport', '2023-01-27 08:21:47', 1, 'id-search', '{\"EnquiryID\":\"57875257\",\"EnquiryResultID\":\"59627586\",\"ProductID\":2}', 'ConnectGetResult', 1),
(455, 'tracereport', '2023-01-27 08:22:20', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(456, 'tracereport', '2023-01-27 08:22:25', 1, 'id-search', '{\"EnquiryID\":\"57875258\",\"EnquiryResultID\":\"59627587\",\"ProductID\":2}', 'ConnectGetResult', 1),
(457, 'tracereport', '2023-01-27 08:22:30', 1, 'id-search', '{\"EnquiryID\":\"57875258\",\"EnquiryResultID\":\"59627588\",\"ProductID\":2}', 'ConnectGetResult', 1),
(458, 'tracereport', '2023-01-27 08:23:19', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(459, 'tracereport', '2023-01-27 08:23:22', 1, 'id-search', '{\"EnquiryID\":\"57875260\",\"EnquiryResultID\":\"59627590\",\"ProductID\":2}', 'ConnectGetResult', 1),
(460, 'tracereport', '2023-01-27 08:23:25', 1, 'id-search', '{\"EnquiryID\":\"57875260\",\"EnquiryResultID\":\"59627591\",\"ProductID\":2}', 'ConnectGetResult', 1),
(461, 'tracereport', '2023-01-27 08:24:57', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(462, 'tracereport', '2023-01-27 08:25:04', 1, 'id-search', '{\"EnquiryID\":\"57875263\",\"EnquiryResultID\":\"59627593\",\"ProductID\":2}', 'ConnectGetResult', 1),
(463, 'tracereport', '2023-01-27 08:25:10', 1, 'id-search', '{\"EnquiryID\":\"57875263\",\"EnquiryResultID\":\"59627594\",\"ProductID\":2}', 'ConnectGetResult', 1),
(464, 'tracereport', '2023-01-27 08:28:45', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(465, 'tracereport', '2023-01-27 08:28:49', 1, 'id-search', '{\"EnquiryID\":\"57875271\",\"EnquiryResultID\":\"59627602\",\"ProductID\":2}', 'ConnectGetResult', 1),
(466, 'tracereport', '2023-01-27 08:28:52', 1, 'id-search', '{\"EnquiryID\":\"57875271\",\"EnquiryResultID\":\"59627603\",\"ProductID\":2}', 'ConnectGetResult', 1),
(467, 'tracereport', '2023-01-27 08:32:00', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(468, 'tracereport', '2023-01-27 08:32:05', 1, 'id-search', '{\"EnquiryID\":\"57875277\",\"EnquiryResultID\":\"59627609\",\"ProductID\":2}', 'ConnectGetResult', 1),
(469, 'tracereport', '2023-01-27 08:32:09', 1, 'id-search', '{\"EnquiryID\":\"57875277\",\"EnquiryResultID\":\"59627610\",\"ProductID\":2}', 'ConnectGetResult', 1),
(470, 'tracereport', '2023-01-27 08:34:49', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(471, 'tracereport', '2023-01-27 08:34:54', 1, 'id-search', '{\"EnquiryID\":\"57875286\",\"EnquiryResultID\":\"59627619\",\"ProductID\":2}', 'ConnectGetResult', 1),
(472, 'tracereport', '2023-01-27 08:34:58', 1, 'id-search', '{\"EnquiryID\":\"57875286\",\"EnquiryResultID\":\"59627620\",\"ProductID\":2}', 'ConnectGetResult', 1),
(473, 'tracereport', '2023-01-27 08:36:32', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(474, 'tracereport', '2023-01-27 08:36:43', 1, 'id-search', '{\"EnquiryID\":\"57875299\",\"EnquiryResultID\":\"59627633\",\"ProductID\":2}', 'ConnectGetResult', 1),
(475, 'indigentreport', '2023-01-27 08:48:25', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(476, 'indigentreport', '2023-01-27 08:49:56', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(477, 'indigentreport', '2023-01-27 09:03:25', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(478, 'indigentreport', '2023-01-27 09:04:51', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(479, 'indigentreport', '2023-01-27 09:05:06', 1, 'id-search', '{\"EnquiryID\":\"57875411\",\"EnquiryResultID\":\"59627744\",\"ProductID\":132}', 'ConnectGetResult', 1),
(480, 'indigentreport', '2023-01-27 09:05:16', 1, 'id-search', '{\"ProductID\":239,\"IdNumber\":\"8707250265081\"}', 'ConnectGetFamilyIDPhotoVerification', 1),
(481, 'indigentreport', '2023-01-27 09:05:19', 1, 'id-search', '{\"IdNumber\":\"8707250265081\"}', 'ConnectDirectorMatch', 1),
(482, 'indigentreport', '2023-01-27 09:05:22', 1, 'id-search', '{\"EnquiryID\":\"57875414\",\"EnquiryResultID\":\"59627747\",\"ProductID\":14}', 'ConnectGetResult', 1),
(483, 'indigentreport', '2023-01-27 09:07:12', 1, 'id-search', '{\"IdNumber\":\"8707250265081\",\"ProductId\":132,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(484, 'tracereport', '2023-01-27 11:35:05', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(485, 'tracereport', '2023-01-27 11:35:13', 1, 'id-search', '{\"EnquiryID\":\"57875751\",\"EnquiryResultID\":\"59628157\",\"ProductID\":2}', 'ConnectGetResult', 1),
(486, 'tracereport', '2023-01-28 09:41:43', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(487, 'tracereport', '2023-01-28 09:41:54', 1, 'id-search', '{\"EnquiryID\":\"57876564\",\"EnquiryResultID\":\"59628966\",\"ProductID\":2}', 'ConnectGetResult', 1),
(488, 'procurementreport', '2023-01-28 09:44:39', 1, 'companyname', '{\"Reg1\":\"\",\"Reg2\":\"\",\"Reg3\":\"\",\"BusinessName\":\"lesaka\",\"VatNo\":\"\",\"SolePropIDNo\":\"\",\"YourReference\":\"1-63d4edf4a3801-55\"}', 'ConnectBusinessMatch', 1),
(489, 'tracereport', '2023-01-30 12:34:23', 1, 'id-search', '{\"IdNumber\":\"8505275937084\",\"ProductId\":2,\"EnquiryReason\":\"Consumer Trace\"}', 'ConnectConsumerMatch', 1),
(490, 'tracereport', '2023-01-30 12:34:32', 1, 'id-search', '{\"EnquiryID\":\"57887893\",\"EnquiryResultID\":\"59640929\",\"ProductID\":2}', 'ConnectGetResult', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_Id` bigint(20) NOT NULL,
  `client_Name` varchar(60) NOT NULL,
  `client_Email` varchar(60) NOT NULL,
  `client_Address` varchar(140) NOT NULL,
  `client_Contact` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_Id`, `client_Name`, `client_Email`, `client_Address`, `client_Contact`) VALUES
(1, 'City Of Johannesburg', 'joburgconnect@joburg.org.za', 'PO Box 1049, JOHANNESBURG, 2000 ; Street Address: Metropolitan Centre, 1st Floor Council Chamber Wing, 158 Civic Boulevard, Braamfontein', '0860 56 28 74');

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
(11, 'Use Role', 'userrole', 'fa fa-check-square-o', 1);

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
(14, 'Create', 9, 'create', 'fa fa-id-card'),
(15, 'Create', 10, 'create', 'fa fa-id-card'),
(16, 'Create', 11, 'create', 'fa fa-id-card');

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
(13, 11, 1);

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
(12, 1, 11, 16);

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
  `history_Id` bigint(20) NOT NULL,
  `history_userId` int(11) NOT NULL,
  `reportyId` int(11) NOT NULL,
  `reportType` int(11) NOT NULL,
  `search_data` varchar(150) NOT NULL,
  `search_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(4, 'test@gamail.com', 'moeketsi', '2023-01-29 16:09:51', 'Thabo', 'mofokeng', '063286479', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auditlog`
--
ALTER TABLE `auditlog`
  ADD PRIMARY KEY (`auditlog_id`);

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
  ADD PRIMARY KEY (`history_Id`);

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
  MODIFY `auditlog_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `report_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `report_type`
--
ALTER TABLE `report_type`
  MODIFY `report_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roleresource`
--
ALTER TABLE `roleresource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roleresourcereport`
--
ALTER TABLE `roleresourcereport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roleresourcereporttype`
--
ALTER TABLE `roleresourcereporttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `searchtype`
--
ALTER TABLE `searchtype`
  MODIFY `search_type_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `search_history`
--
ALTER TABLE `search_history`
  MODIFY `history_Id` bigint(20) NOT NULL AUTO_INCREMENT;

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
