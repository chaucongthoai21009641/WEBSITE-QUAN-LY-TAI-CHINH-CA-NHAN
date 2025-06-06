-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2023 at 01:43 PM
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
-- Database: `expense`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `balance` decimal(11,2) NOT NULL,
  `type` varchar(16) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user`, `name`, `balance`, `type`, `status`, `created_at`, `updated_at`) VALUES
(0, NULL, 'Other', '0.00', 'Bank', 'Active', '2019-02-21 07:21:51', '2019-02-21 13:33:07'),
(1, 1, 'Paypal', '0.00', 'E-Wallet', 'Active', '2019-02-21 07:08:32', '2019-02-22 07:44:49'),
(2, 1, 'My Bank', '5500000.00', 'Bank', 'Active', '2019-02-21 07:21:51', '2023-11-12 14:33:46'),
(3, 1, 'Cash', '0.00', 'Cash', 'Active', '2019-02-22 07:46:08', '2019-08-08 01:41:32'),
(4, 1, 'Credit Card', '0.00', 'Card', 'Active', '2019-02-22 07:46:38', '2019-08-08 01:39:38'),
(13, 5, 'MB Bank', '25001666.67', 'Bank', 'Active', '2023-11-20 14:11:37', '2023-11-20 15:42:14'),
(14, 5, 'VÃ­ momo', '3500375.00', 'E-Wallet', 'Active', '2023-11-20 14:18:09', '2023-11-20 15:17:04'),
(16, 2, 'Tá»« thiá»‡n', '625000000.00', 'E-Wallet', 'Active', '2023-11-21 08:14:55', '2023-11-21 10:55:54'),
(17, 2, 'Bank', '390809500.00', 'Bank', 'Active', '2023-11-21 08:20:49', '2023-11-21 12:42:40'),
(18, 2, 'Äáº§u tÆ°', '927141666.66', 'Cash', 'Active', '2023-11-21 08:21:19', '2023-11-21 10:55:26'),
(19, 2, 'Momo', '-30295000.00', 'E-Wallet', 'Active', '2023-11-21 08:22:02', '2023-11-21 10:28:40'),
(20, 2, 'CÃ¡ nhÃ¢n', '129104500.00', 'Cash', 'Active', '2023-11-21 08:22:29', '2023-11-21 10:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('Income','Expense') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` decimal(11,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user`, `name`, `type`, `budget`, `created_at`, `updated_at`) VALUES
(0, NULL, 'Other', 'Expense', '0.00', '2019-02-21 13:30:59', '2019-02-21 13:32:04'),
(1, 1, 'Food', 'Expense', '0.00', '2019-02-09 10:15:08', '2019-08-07 08:48:05'),
(2, 1, 'Rent', 'Expense', '0.00', '2019-02-19 13:05:06', '2019-08-07 08:48:05'),
(3, 1, 'Leisure', 'Expense', '0.00', '2019-02-19 13:05:17', '2019-08-07 08:48:05'),
(4, 1, 'Living', 'Expense', '0.00', '2019-02-19 13:19:50', '2019-08-07 08:48:05'),
(8, 1, 'Transportation', 'Expense', '0.00', '2019-02-22 07:52:58', '2019-08-07 08:48:05'),
(9, 1, 'Salary', 'Income', '0.00', '2021-03-14 00:41:55', '2021-03-14 00:46:07'),
(10, 1, 'Donations', 'Income', '0.00', '2021-03-14 00:41:55', '2021-03-14 00:46:28'),
(11, 1, 'Investments', 'Income', '0.00', '2021-03-14 00:41:55', '2021-03-14 00:46:20'),
(36, 5, 'Ä‚n uá»‘ng', 'Expense', '0.00', '2023-11-20 14:10:18', '2023-11-20 15:18:45'),
(37, 5, 'Äi láº¡i', 'Expense', '1177381.00', '2023-11-20 14:10:26', '2023-11-20 15:18:45'),
(38, 5, 'Dá»‹ch vá»¥ sinh hoáº¡t', 'Expense', '1844047.00', '2023-11-20 14:10:40', '2023-11-20 15:18:45'),
(39, 5, 'LÆ°Æ¡ng', 'Income', '0.00', '2023-11-20 14:10:48', '2023-11-20 14:10:48'),
(40, 5, 'ThÆ°á»Ÿng', 'Income', '0.00', '2023-11-20 14:10:55', '2023-11-20 14:10:55'),
(41, 5, 'Trang phá»¥c', 'Expense', '1939285.00', '2023-11-20 14:18:35', '2023-11-20 15:18:45'),
(42, 2, 'LÆ°Æ¡ng', 'Income', '0.00', '2023-11-21 08:23:40', '2023-11-21 08:23:40'),
(43, 2, 'ThÆ°á»Ÿng', 'Income', '0.00', '2023-11-21 08:23:49', '2023-11-21 08:23:49'),
(44, 2, 'LÃ£i', 'Income', '0.00', '2023-11-21 08:23:58', '2023-11-21 08:23:58'),
(45, 2, 'Kinh doanh', 'Income', '0.00', '2023-11-21 08:25:02', '2023-11-21 08:25:02'),
(46, 2, 'Ä‚n uá»‘ng', 'Expense', '4149994.00', '2023-11-21 08:25:38', '2023-11-21 10:36:04'),
(47, 2, 'Sinh hoáº¡t', 'Expense', '3149994.00', '2023-11-21 08:25:51', '2023-11-21 10:36:04'),
(48, 2, 'Äi láº¡i', 'Expense', '983327.00', '2023-11-21 08:26:04', '2023-11-21 10:38:24'),
(49, 2, 'Con cÃ¡i', 'Expense', '0.00', '2023-11-21 08:26:13', '2023-11-21 10:43:57'),
(50, 2, 'Trang phá»¥c', 'Expense', '6085711.00', '2023-11-21 08:26:24', '2023-11-21 10:33:25'),
(51, 2, 'Sá»©c khá»e', 'Expense', '4085711.00', '2023-11-21 08:26:42', '2023-11-21 10:33:25'),
(52, 2, 'NhÃ  cá»­a', 'Expense', '4983327.00', '2023-11-21 08:26:53', '2023-11-21 10:38:24'),
(53, 2, 'HÆ°á»Ÿng thá»¥', 'Expense', '0.00', '2023-11-21 08:27:07', '2023-11-21 11:10:02'),
(54, 2, 'Du lá»‹ch', 'Expense', '12149994.00', '2023-11-21 08:27:27', '2023-11-21 10:44:49'),
(55, 2, 'PhÃ¡t triá»ƒn báº£n thÃ¢n', 'Expense', '0.00', '2023-11-21 08:27:42', '2023-11-21 08:27:42'),
(56, 2, 'Giao lÆ°u', 'Expense', '483327.00', '2023-11-21 08:27:57', '2023-11-21 10:47:03'),
(57, 2, 'Tráº£ ná»£', 'Expense', '0.00', '2023-11-21 08:28:32', '2023-11-21 08:28:32'),
(58, 2, 'Lá»‡ phÃ­', 'Expense', '5038092.00', '2023-11-21 08:29:53', '2023-11-21 10:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`) VALUES
(1, 'United Arab Emirates Dirham', 'AED'),
(4, 'Armenia Dram', 'AMD'),
(5, 'Netherlands Antilles Guilder', 'ANG'),
(7, 'Argentina Peso', 'ARS'),
(8, 'Australia Dollar', 'AUD'),
(9, 'Aruba Guilder', 'AWG'),
(11, 'Bosnia and Herzegovina Convertible Marka', 'BAM'),
(13, 'Bangladesh Taka', 'BDT'),
(15, 'Bahrain Dinar', 'BHD'),
(17, 'Bermuda Dollar', 'BMD'),
(18, 'Brunei Darussalam Dollar', 'BND'),
(19, 'Bolivia Boliviano', 'BOB'),
(20, 'Brazil Real', 'BRL'),
(21, 'Bahamas Dollar', 'BSD'),
(24, 'Botswana Pula', 'BWP'),
(26, 'Belize Dollar', 'BZD'),
(27, 'Canada Dollar', 'CAD'),
(29, 'Switzerland Franc', 'CHF'),
(30, 'Chile Peso', 'CLP'),
(31, 'China Yuan Renminbi', 'CNY'),
(32, 'Colombia Peso', 'COP'),
(33, 'Costa Rica Colon', 'CRC'),
(34, 'Cuba Convertible Peso', 'CUC'),
(35, 'Cuba Peso', 'CUP'),
(37, 'Czech ReKoruna', 'CZK'),
(39, 'Denmark Krone', 'DKK'),
(40, 'Dominican RePeso', 'DOP'),
(42, 'Egypt Pound', 'EGP'),
(45, 'Euro Member Countries', 'EUR'),
(48, 'United Kingdom Pound', 'GBP'),
(52, 'Gibraltar Pound', 'GIP'),
(55, 'Guatemala Quetzal', 'GTQ'),
(57, 'Hong Kong Dollar', 'HKD'),
(58, 'Honduras Lempira', 'HNL'),
(59, 'Croatia Kuna', 'HRK'),
(61, 'Hungary Forint', 'HUF'),
(62, 'Indonesia Rupiah', 'IDR'),
(63, 'Israel Shekel', 'ILS'),
(65, 'India Rupee', 'INR'),
(67, 'Iran Rial', 'IRR'),
(68, 'Iceland Krona', 'ISK'),
(70, 'Jamaica Dollar', 'JMD'),
(71, 'Jordan Dinar', 'JOD'),
(72, 'Japan Yen', 'JPY'),
(73, 'Kenya Shilling', 'KES'),
(78, 'Korea (South) Won', 'KRW'),
(79, 'Kuwait Dinar', 'KWD'),
(80, 'Cayman Islands Dollar', 'KYD'),
(83, 'Lebanon Pound', 'LBP'),
(87, 'Lithuania Litas', 'LTL'),
(88, 'Latvia Lat', 'LVL'),
(93, 'Macedonia Denar', 'MKD'),
(98, 'Mauritius Rupee', 'MUR'),
(101, 'Mexico Peso', 'MXN'),
(102, 'Malaysia Ringgit', 'MYR'),
(107, 'Norway Krone', 'NOK'),
(108, 'Nepal Rupee', 'NPR'),
(109, 'New Zealand Dollar', 'NZD'),
(110, 'Oman Rial', 'OMR'),
(112, 'Peru Nuevo Sol', 'PEN'),
(114, 'Philippines Peso', 'PHP'),
(115, 'Pakistan Rupee', 'PKR'),
(116, 'Poland Zloty', 'PLN'),
(119, 'Romania New Leu', 'RON'),
(121, 'Russia Ruble', 'RUB'),
(123, 'Saudi Arabia Riyal', 'SAR'),
(127, 'Sweden Krona', 'SEK'),
(128, 'Singapore Dollar', 'SGD'),
(135, 'El Salvador Colon', 'SVC'),
(137, 'Swaziland Lilangeni', 'SZL'),
(138, 'Thailand Baht', 'THB'),
(142, 'Tonga Paanga', 'TOP'),
(143, 'Turkey Lira', 'TRY'),
(147, 'Tanzania Shilling', 'TZS'),
(148, 'Ukraine Hryvna', 'UAH'),
(150, 'United States Dollar', 'USD'),
(151, 'Uruguay Peso', 'UYU'),
(153, 'Venezuela Bolivar', 'VEF'),
(154, 'Viet Nam Dong', 'VND'),
(155, 'Vanuatu Vatu', 'VUV'),
(158, 'East Caribbean Dollar', 'XCD'),
(163, 'South Africa Rand', 'ZAR'),
(164, 'Zimbabwe Dollar', 'ZWD');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `account` int(11) DEFAULT '0',
  `danhba` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  `expense_date` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user`, `title`, `amount`, `account`, `danhba`, `category`, `expense_date`, `updated_at`) VALUES
(46, 5, 'xÄƒng', '6000000.00', 13, 'Há»¯u Minh', 37, '2023-11-20', '2023-11-20 15:19:32'),
(47, 2, 'Ä‚n cÆ¡m', '35000.00', 20, 'C&ocirc; 6 b&aacute;n cÆ¡m', 46, '2023-11-22', '2023-11-21 08:52:07'),
(48, 2, 'Ä‚n ch&aacute;o', '25000.00', 19, 'b&agrave; b&aacute;n ch&aacute;o', 46, '2023-11-22', '2023-11-21 08:52:46'),
(49, 2, 'Ä‚n b&uacute;n b&ograve;', '45000.00', 19, 'b&agrave; b&uacute;n b&ograve;', 46, '2023-11-22', '2023-11-21 08:53:17'),
(50, 2, 'Ä‚n phá»Ÿ', '45000.00', 20, 'phá»Ÿ 6 lanh', 46, '2023-11-21', '2023-11-21 08:56:07'),
(51, 2, 'xÄƒng xe', '100000.00', 19, 'b&aacute;n xÄƒng', 48, '2023-11-21', '2023-11-21 08:57:20'),
(52, 2, 'Äi Ä&agrave; Láº¡t', '3500000.00', 19, 'xe', 54, '2023-11-22', '2023-11-21 08:58:19'),
(53, 2, 'Ä‘i VÅ©ng T&agrave;u', '2500000.00', 19, 'kh&aacute;ch sáº¡n', 54, '2023-11-21', '2023-11-21 08:59:01'),
(54, 2, 'Äi Huáº¿', '4500000.00', 20, 'xe', 54, '2023-10-19', '2023-11-21 09:00:31'),
(55, 2, 'Ä‘i Sapa', '9000000.00', 20, 'xe', 54, '2023-09-22', '2023-11-21 09:01:17'),
(56, 2, 'Äi H&agrave; Ná»™i', '6800000.00', 19, 'xe', 54, '2023-08-08', '2023-11-21 09:01:47'),
(57, 2, 'Äi Má»™c Ch&acirc;u', '6540000.00', 20, 'xe', 54, '2023-07-09', '2023-11-21 09:02:19'),
(58, 2, 'Äi H&agrave; Giang', '3650000.00', 20, 'xe', 54, '2023-06-02', '2023-11-21 09:02:52'),
(59, 2, 'Äi An Giang', '1500000.00', 20, 'xe', 54, '2023-11-21', '2023-11-21 09:03:19'),
(60, 2, 'Äi Báº¿n Tre', '2600000.00', 19, 'xe', 54, '2023-11-22', '2023-11-21 09:03:42'),
(61, 2, 'Äi VÄ©nh Long', '680000.00', 20, 'xe', 54, '2023-11-21', '2023-11-21 09:04:06'),
(62, 2, 'Quáº§n &Acirc;u nam', '900000.00', 19, 'Shopee', 50, '2023-11-22', '2023-11-21 09:05:51'),
(63, 2, 'Quáº§n short nam', '250000.00', 19, 'Shopee', 50, '2023-11-22', '2023-11-21 09:06:20'),
(64, 2, 'SÆ¡ mi tráº¯ng', '654000.00', 20, 'Lazada', 50, '2023-11-22', '2023-11-21 09:06:50'),
(65, 2, '&Aacute;o kho&aacute;c', '1200000.00', 19, 'shop', 50, '2023-11-21', '2023-11-21 09:07:15'),
(66, 2, 'Gi&agrave;y AF1', '1400000.00', 19, 'Shop gi&agrave;y', 50, '2023-11-21', '2023-11-21 09:07:53'),
(67, 2, 'Quáº§n d&agrave;i', '685000.00', 20, 'Shopee', 50, '2023-11-17', '2023-11-21 09:08:23'),
(68, 2, 'n&oacute;n', '68000.00', 19, 'shop n&oacute;n', 50, '2023-11-13', '2023-11-21 09:08:49'),
(69, 2, 'Quáº§n thun', '365000.00', 19, 'Shopee', 50, '2023-10-19', '2023-11-21 09:09:37'),
(70, 2, '&Aacute;o thun', '745000.00', 20, 'Shopee', 50, '2023-10-21', '2023-11-21 09:09:59'),
(71, 2, '&Aacute;o thun', '482000.00', 20, 'Shopee', 50, '2023-09-12', '2023-11-21 09:10:26'),
(72, 2, 'Quáº§n d&agrave;i', '987000.00', 20, 'Shopee', 50, '2023-08-07', '2023-11-21 09:10:54'),
(73, 2, 'N&oacute;n ', '788000.00', 19, 'Shopee', 50, '2023-06-09', '2023-11-21 09:11:22'),
(74, 2, 'gi&agrave;y', '1680000.00', 20, 'Shopee', 50, '2023-03-15', '2023-11-21 09:11:52'),
(75, 2, 'Táº­p GYM', '2500000.00', 19, 'Gym', 55, '2023-11-22', '2023-11-21 09:27:48'),
(76, 2, 'Táº­p GYM', '2300000.00', 19, 'GYM', 55, '2023-10-20', '2023-11-21 09:28:20'),
(77, 2, 'Táº­p GYM', '2500000.00', 19, 'GYM', 55, '2023-09-21', '2023-11-21 09:28:59'),
(78, 2, 'Táº­p GYM', '2500000.00', 19, 'GYM', 55, '2023-07-13', '2023-11-21 09:29:25'),
(79, 2, 'Táº­p GYM', '1500000.00', 19, 'GYM', 55, '2023-05-09', '2023-11-21 09:30:57'),
(80, 2, 'nghá»‰ m&aacute;t', '1500000.00', 19, 'kh&aacute;ch sáº¡n', 53, '2023-11-22', '2023-11-21 09:31:53'),
(81, 2, 'Sá»­a nh&agrave;', '2600000.00', 20, 'shop', 52, '2023-11-22', '2023-11-21 09:33:17'),
(82, 2, 'sá»­a ph&ograve;ng', '1500000.00', 19, 'shop', 52, '2023-11-21', '2023-11-21 09:33:55'),
(83, 2, 'mua gáº¡ch l&oacute;t s&agrave;n', '4500000.00', 19, 'shop', 52, '2023-11-15', '2023-11-21 09:34:25'),
(84, 2, 'kh&aacute;m sá»©c khá»e', '4500000.00', 17, 'bá»‡nh viá»‡n', 51, '2023-11-22', '2023-11-21 09:35:11'),
(85, 2, 'Chá»¥p X quang', '900000.00', 17, 'bá»‡nh viá»‡n', 51, '2023-11-21', '2023-11-21 09:35:41'),
(86, 2, 'mua thuá»‘c', '150000.00', 17, 'nh&agrave; thuá»‘c', 51, '2023-11-17', '2023-11-21 09:36:12'),
(87, 2, 'kh&aacute;m sá»©c khá»e', '2450000.00', 17, 'bá»‡nh viá»‡n', 51, '2023-11-06', '2023-11-21 09:36:51'),
(88, 2, 'há»c ph&iacute;', '2400000.00', 17, 'trÆ°á»ng há»c', 49, '2023-11-22', '2023-11-21 09:37:32'),
(89, 2, 'Sinh nháº­t cho con', '1240000.00', 17, 'qu&aacute;n', 49, '2023-11-21', '2023-11-21 09:38:21'),
(90, 2, 'mua sá»¯a', '690000.00', 17, 'sá»¯a', 49, '2023-11-13', '2023-11-21 09:38:49'),
(91, 2, 'MÆ°á»£n tiá»n thiá»‡n', '950000.00', 17, 'thiá»‡n', 57, '2023-11-22', '2023-11-21 09:39:26'),
(92, 2, 'Tráº£ tiá»n cho Tiáº¿n', '1200000.00', 17, 'Tiáº¿n', 57, '2023-11-21', '2023-11-21 09:40:03'),
(93, 2, 'Tráº£ tiá»n cho PhÆ°Æ¡ng', '500000.00', 17, 'PhÆ°Æ¡ng', 57, '2023-11-12', '2023-11-21 09:40:38'),
(94, 2, 'cafe vá»›i thiá»‡n', '150000.00', 19, 'qu&aacute;n cafe', 56, '2023-11-22', '2023-11-21 09:41:10'),
(95, 2, 'Äƒn phá»Ÿ', '50000.00', 19, 'phá»Ÿ', 56, '2023-11-21', '2023-11-21 09:41:56'),
(96, 2, 'Ä‘i taxi', '250000.00', 0, 'taxi', 48, '2023-11-13', '2023-11-21 09:42:40'),
(97, 2, 'mua sá»¯a cho con', '4500000.00', 20, 'sá»¯a', 49, '2023-11-20', '2023-11-21 09:46:38'),
(98, 2, 'Äƒn b&uacute;n b&ograve;', '50000.00', 20, 'b&uacute;n b&ograve;', 46, '2023-07-20', '2023-11-21 09:56:12'),
(99, 2, 'b&uacute;n b&ograve;', '45000.00', 20, 'b&uacute;n b&ograve;', 46, '2023-05-24', '2023-11-21 09:56:43'),
(100, 2, 'b&uacute;n b&ograve;', '50000.00', 19, 'b&uacute;n', 58, '2023-03-28', '2023-11-21 09:57:11'),
(101, 2, 'b&uacute;n b&ograve;', '35000.00', 17, 'b&uacute;n', 46, '2023-03-06', '2023-11-21 09:57:39'),
(102, 2, 'phá»Ÿ', '50000.00', 20, 'phá»Ÿ', 46, '2023-11-19', '2023-11-21 09:58:02'),
(103, 2, 'Äƒn phá»Ÿ', '45000.00', 20, 'phá»Ÿ', 46, '2023-11-19', '2023-11-21 09:58:28'),
(104, 2, 'phá»Ÿ', '45000.00', 17, 'phá»Ÿ', 46, '2023-11-06', '2023-11-21 09:58:51'),
(105, 2, 'phá»Ÿ', '45000.00', 17, 'phá»Ÿ', 46, '2023-11-05', '2023-11-21 09:59:13'),
(106, 2, 'phá»Ÿ', '45000.00', 17, 'phá»Ÿ', 46, '2023-10-31', '2023-11-21 09:59:38'),
(107, 2, 'phá»Ÿ', '35000.00', 20, 'phá»Ÿ', 46, '2023-09-04', '2023-11-21 10:00:14'),
(108, 2, 'ph&iacute; giao dá»‹ch', '35000.00', 20, 'MB Bank', 58, '2023-11-12', '2023-11-21 10:16:13'),
(109, 2, 'Ph&iacute; giao dá»‹ch', '45000.00', 19, 'Agribank', 58, '2023-11-14', '2023-11-21 10:16:35'),
(110, 2, 'Ph&iacute; giao dá»‹ch', '680000.00', 19, 'VCB', 58, '2023-11-22', '2023-11-21 10:16:57'),
(111, 2, 'ph&iacute; giao dá»‹ch', '1450000.00', 19, 'SCB', 58, '2023-11-21', '2023-11-21 10:17:22'),
(112, 2, 'Ph&iacute; giao dá»‹ch', '456000.00', 19, 'MB Bank', 58, '2023-10-02', '2023-11-21 10:17:45'),
(113, 2, 'Ph&iacute; giao dá»‹ch', '258000.00', 19, 'BIDV', 58, '2023-08-07', '2023-11-21 10:18:14'),
(114, 2, 'Ph&iacute; giao dá»‹ch', '875000.00', 19, 'SCB', 58, '2023-05-08', '2023-11-21 10:18:46'),
(115, 2, 'Ä‘i há»c tiáº¿ng Anh', '2500000.00', 18, 'Trung t&acirc;m', 55, '2023-11-18', '2023-11-21 10:20:19'),
(116, 2, 'Há»c tiáº¿ng Anh', '578000.00', 17, 'Trung t&acirc;m', 55, '2023-10-27', '2023-11-21 10:20:47'),
(117, 2, 'Há»c Tiáº¿ng Anh', '254000.00', 19, 'Trung t&acirc;m', 55, '2023-08-15', '2023-11-21 10:21:11'),
(118, 2, 'Quáº§n t&acirc;y', '950000.00', 19, 'Shopee', 50, '2023-11-16', '2023-11-21 10:22:06'),
(119, 2, 'Gi&agrave;y', '1450000.00', 20, 'Shopee', 50, '2023-11-11', '2023-11-21 10:22:33'),
(120, 2, 'Äi há»c', '2000000.00', 20, 'trÆ°á»ng há»c', 49, '2023-11-05', '2023-11-21 10:23:07'),
(121, 2, 'taxi', '250000.00', 20, 'taxi', 48, '2023-11-09', '2023-11-21 10:23:44'),
(122, 2, 'Tiá»n Ä‘iá»‡n', '1200000.00', 20, 'VNE', 47, '2023-11-09', '2023-11-21 10:24:19'),
(123, 2, 'Tiá»n nÆ°á»›c', '780000.00', 19, 'c&ocirc;ng ty nÆ°á»›c', 47, '2023-11-03', '2023-11-21 10:25:05'),
(124, 2, 'Tiá»n gas', '450000.00', 19, 'gas', 47, '2023-11-13', '2023-11-21 10:25:33'),
(125, 2, 'Tiá»n wifi', '1050000.00', 19, 'wifi', 47, '2023-11-08', '2023-11-21 10:26:14'),
(126, 2, 'Tiá»n r&aacute;c', '150000.00', 0, 'c&ocirc;ng ty m&ocirc;i trÆ°á»ng', 47, '2023-11-09', '2023-11-21 10:26:59'),
(127, 2, 'Tiá»n Ä‘iá»‡n', '987000.00', 18, 'Ä‘iá»‡n', 47, '2023-10-10', '2023-11-21 10:27:23'),
(128, 2, 'Tiá»n nÆ°á»›c', '458000.00', 18, 'nÆ°á»›c', 47, '2023-10-14', '2023-11-21 10:27:50'),
(129, 2, 'Tiá»n Ä‘iá»‡n', '987500.00', 20, 'nÆ°á»›c', 47, '2023-08-16', '2023-11-21 10:28:14'),
(130, 2, 'Tiá»n wifi', '456000.00', 19, 'wifi', 47, '2023-05-15', '2023-11-21 10:28:40'),
(131, 2, 'buffet', '800000.00', 20, 'buffet', 46, '2023-11-09', '2023-11-21 10:40:47'),
(132, 2, 'Äƒn ch&aacute;o', '35000.00', 20, 'b&aacute;n ch&aacute;o', 46, '2023-11-22', '2023-11-21 10:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `danhba` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `income_group` varchar(255) NOT NULL,
  `category` int(11) DEFAULT '0',
  `income_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `user`, `title`, `amount`, `danhba`, `account`, `income_group`, `category`, `income_date`, `created_at`, `updated_at`) VALUES
(11, 5, 'LÆ°Æ¡ng th&aacute;ng 10', '5000000.00', 'VNG Viá»‡t Nam', 13, '', 39, '2023-11-10', '2023-11-20 14:12:45', '2023-11-20 14:12:45'),
(12, 5, 'Kh&aacute;ch bo', '8000000.00', 'Kh&aacute;ch Ä‘áº¹p trai', 13, '', 40, '2023-11-20', '2023-11-20 14:17:39', '2023-11-20 14:17:39'),
(13, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 10', '25000000.00', 'C&ocirc;ng ty IT', 17, '', 42, '2023-10-14', '2023-11-21 08:31:41', '2023-11-21 08:31:41'),
(14, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 9', '23000000.00', 'C&ocirc;ng ty IT', 17, '', 42, '2023-09-06', '2023-11-21 08:32:32', '2023-11-21 08:32:32'),
(15, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 8', '17000000.00', 'C&ocirc;ng ty IT', 20, '', 45, '2023-08-10', '2023-11-21 08:33:09', '2023-11-21 08:33:09'),
(16, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 7', '30000000.00', 'C&ocirc;ng ty IT', 20, '', 45, '2023-07-11', '2023-11-21 08:33:45', '2023-11-21 08:33:45'),
(17, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 6', '12000000.00', 'C&ocirc;ng ty IT', 20, '', 45, '2023-06-16', '2023-11-21 08:34:29', '2023-11-21 08:34:29'),
(18, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 5', '9000000.00', 'C&ocirc;ng ty truyá»n th&ocirc;ng', 20, '', 42, '2023-05-09', '2023-11-21 08:36:00', '2023-11-21 08:36:00'),
(19, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 4', '9000000.00', 'c&ocirc;ng ty quáº£ng c&aacute;o', 20, '', 42, '2023-04-11', '2023-11-21 08:37:00', '2023-11-21 08:37:00'),
(20, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 3', '5000000.00', 'C&ocirc;ng ty IT', 17, '', 42, '2023-03-24', '2023-11-21 08:37:40', '2023-11-21 08:37:40'),
(21, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 2', '6800000.00', 'C&ocirc;ng ty IT', 20, '', 42, '2023-02-02', '2023-11-21 08:38:10', '2023-11-21 08:38:10'),
(22, 2, 'Tiá»n lÆ°Æ¡ng th&aacute;ng 1', '3550000.00', 'C&ocirc;ng ty IT', 20, '', 42, '2023-01-07', '2023-11-21 08:38:44', '2023-11-21 08:38:44'),
(23, 2, 'ThÆ°á»Ÿng KPI th&aacute;ng 10', '3500000.00', 'C&ocirc;ng ty IT', 17, '', 43, '2023-10-04', '2023-11-21 08:39:44', '2023-11-21 08:39:44'),
(24, 2, 'ThÆ°á»Ÿng k&yacute; Ä‘Æ°á»£c há»£p Ä‘á»“ng', '5000000.00', 'C&ocirc;ng ty IT', 20, '', 43, '2023-09-16', '2023-11-21 08:40:35', '2023-11-21 08:40:35'),
(25, 2, 'ThÆ°á»Ÿng doanh sá»‘ th&aacute;ng 7', '2650000.00', 'C&ocirc;ng ty IT', 20, '', 43, '2023-07-28', '2023-11-21 08:41:18', '2023-11-21 08:41:18'),
(26, 2, 'Tiá»n l&atilde;i gá»­i ng&acirc;n h&agrave;ng th&aacute;ng 10', '6250000.00', 'ng&acirc;n h&agrave;ng MB bank', 18, '', 44, '2023-10-31', '2023-11-21 08:42:24', '2023-11-21 08:42:24'),
(27, 2, 'L&atilde;i th&aacute;ng 1', '230000.00', 'VCB', 18, '', 44, '2023-01-20', '2023-11-21 08:43:19', '2023-11-21 08:43:19'),
(28, 2, 'Báº¥t Ä‘á»™ng sáº£n', '999999999.99', 'Sáº¿p HAGL', 18, '', 45, '2023-05-25', '2023-11-21 08:45:05', '2023-11-21 08:45:05'),
(29, 2, 'Kinh doanh laptop', '350000000.00', 'kh&aacute;ch h&agrave;ng', 18, '', 45, '2023-08-04', '2023-11-21 08:46:26', '2023-11-21 08:46:26'),
(30, 2, 'ThÆ°á»Ÿng doanh sá»‘', '6800000.00', 'C&ocirc;ng ty IT', 20, '', 43, '2023-11-21', '2023-11-21 08:48:18', '2023-11-21 08:48:18'),
(31, 2, 'LÆ°Æ¡ng', '35000000.00', 'C&ocirc;ng ty IT', 20, '', 42, '2023-11-22', '2023-11-21 08:48:43', '2023-11-21 08:48:43'),
(32, 2, 'Kinh doanh laptop', '25000000.00', 'kh&aacute;ch h&agrave;ng', 18, '', 45, '2023-11-14', '2023-11-21 08:49:28', '2023-11-21 08:49:28'),
(33, 2, 'Tiá»n l&atilde;i', '2360000.00', 'Agribank', 18, '', 44, '2023-11-20', '2023-11-21 08:50:31', '2023-11-21 08:50:31'),
(34, 2, 'á»¦ng há»™ miá»n Trung', '500000000.00', 'nh&acirc;n d&acirc;n', 16, '', 0, '2023-09-12', '2023-11-21 09:51:02', '2023-11-21 09:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `sotietkiem`
--

CREATE TABLE `sotietkiem` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `tensotietkiem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodubandau` decimal(11,2) DEFAULT NULL,
  `loaitiente` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nganhang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaygui` date DEFAULT NULL,
  `kyhan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `laisuat` double DEFAULT NULL,
  `laisuatkhongkyhan` double DEFAULT NULL,
  `songaytinhlaitrennam` int(50) DEFAULT NULL,
  `tralai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khidenhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account` int(11) DEFAULT '0',
  `diengiai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sotietkiem`
--

INSERT INTO `sotietkiem` (`id`, `user`, `tensotietkiem`, `sodubandau`, `loaitiente`, `nganhang`, `ngaygui`, `kyhan`, `laisuat`, `laisuatkhongkyhan`, `songaytinhlaitrennam`, `tralai`, `khidenhan`, `account`, `diengiai`) VALUES
(2, 3, 'mua xe 2 b&aacute;nh', '25000000.00', 'VND', 'MB Bank', '2023-11-22', '03', 8, 0.05, 365, '00', '00', 0, 'mua xe Ä‘i chÆ¡i'),
(18, 2, 'Mua xe', '50000000.00', 'VND', 'MB Bank', '2023-11-20', '07', 8, 0.04, 365, '02', '01', 12, ''),
(19, 2, 'Tiá»n Ä‘i Ä‘u lá»‹ch h&egrave; 2024', '10000000.00', 'VND', 'Agribank', '2023-11-20', '06', 6.8, 0.02, 365, '02', '01', 12, ''),
(24, 5, 'Mua nh&agrave;', '5000000.00', 'VND', 'MB Bank', '2023-11-20', '07', 8, 0.05, 365, '02', '01', 13, '');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `id` int(11) NOT NULL,
  `name` varchar(31) NOT NULL,
  `zone` varchar(272) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`id`, `name`, `zone`) VALUES
(1, '(UTC-11:00) Pacific/Pago_Pago', 'Pacific/Pago_Pago'),
(2, '(UTC-11:00) Pacific/Niue', 'Pacific/Niue'),
(3, '(UTC-11:00) Pacific/Midway', 'Pacific/Midway'),
(4, '(UTC-10:00) Pacific/Tahiti', 'Pacific/Tahiti'),
(5, '(UTC-10:00) America/Adak', 'America/Adak'),
(6, '(UTC-10:00) Pacific/Rarotonga', 'Pacific/Rarotonga'),
(7, '(UTC-10:00) Pacific/Honolulu', 'Pacific/Honolulu'),
(8, '(UTC-09:30) Pacific/Marquesas', 'Pacific/Marquesas'),
(9, '(UTC-09:00) Pacific/Gambier', 'Pacific/Gambier'),
(10, '(UTC-09:00) America/Sitka', 'America/Sitka'),
(11, '(UTC-09:00) America/Anchorage', 'America/Anchorage'),
(12, '(UTC-09:00) America/Yakutat', 'America/Yakutat'),
(13, '(UTC-09:00) America/Metlakatla', 'America/Metlakatla'),
(14, '(UTC-09:00) America/Juneau', 'America/Juneau'),
(15, '(UTC-09:00) America/Nome', 'America/Nome'),
(16, '(UTC-08:00) Pacific/Pitcairn', 'Pacific/Pitcairn'),
(17, '(UTC-08:00) America/Tijuana', 'America/Tijuana'),
(18, '(UTC-08:00) America/Vancouver', 'America/Vancouver'),
(19, '(UTC-08:00) America/Los_Angeles', 'America/Los_Angeles'),
(20, '(UTC-08:00) America/Whitehorse', 'America/Whitehorse'),
(21, '(UTC-08:00) America/Dawson', 'America/Dawson'),
(22, '(UTC-07:00) America/Cambridge_B', 'America/Cambridge_Bay'),
(23, '(UTC-07:00) America/Mazatlan', 'America/Mazatlan'),
(24, '(UTC-07:00) America/Boise', 'America/Boise'),
(25, '(UTC-07:00) America/Creston', 'America/Creston'),
(26, '(UTC-07:00) America/Yellowknife', 'America/Yellowknife'),
(27, '(UTC-07:00) America/Phoenix', 'America/Phoenix'),
(28, '(UTC-07:00) America/Chihuahua', 'America/Chihuahua'),
(29, '(UTC-07:00) America/Dawson_Cree', 'America/Dawson_Creek'),
(30, '(UTC-07:00) America/Inuvik', 'America/Inuvik'),
(31, '(UTC-07:00) America/Ojinaga', 'America/Ojinaga'),
(32, '(UTC-07:00) America/Denver', 'America/Denver'),
(33, '(UTC-07:00) America/Edmonton', 'America/Edmonton'),
(34, '(UTC-07:00) America/Hermosillo', 'America/Hermosillo'),
(35, '(UTC-07:00) America/Fort_Nelson', 'America/Fort_Nelson'),
(36, '(UTC-06:00) America/El_Salvador', 'America/El_Salvador'),
(37, '(UTC-06:00) America/Indiana/Tel', 'America/Indiana/Tell_City'),
(38, '(UTC-06:00) America/Costa_Rica', 'America/Costa_Rica'),
(39, '(UTC-06:00) America/Indiana/Kno', 'America/Indiana/Knox'),
(40, '(UTC-06:00) America/Bahia_Bande', 'America/Bahia_Banderas'),
(41, '(UTC-06:00) America/Guatemala', 'America/Guatemala'),
(42, '(UTC-06:00) America/Belize', 'America/Belize'),
(43, '(UTC-06:00) America/Managua', 'America/Managua'),
(44, '(UTC-06:00) America/Swift_Curre', 'America/Swift_Current'),
(45, '(UTC-06:00) America/Mexico_City', 'America/Mexico_City'),
(46, '(UTC-06:00) America/Resolute', 'America/Resolute'),
(47, '(UTC-06:00) America/Regina', 'America/Regina'),
(48, '(UTC-06:00) America/Rankin_Inle', 'America/Rankin_Inlet'),
(49, '(UTC-06:00) America/Rainy_River', 'America/Rainy_River'),
(50, '(UTC-06:00) America/North_Dakot', 'America/North_Dakota/New_Salem'),
(51, '(UTC-06:00) America/North_Dakot', 'America/North_Dakota/Center'),
(52, '(UTC-06:00) America/North_Dakot', 'America/North_Dakota/Beulah'),
(53, '(UTC-06:00) America/Tegucigalpa', 'America/Tegucigalpa'),
(54, '(UTC-06:00) America/Monterrey', 'America/Monterrey'),
(55, '(UTC-06:00) Pacific/Galapagos', 'Pacific/Galapagos'),
(56, '(UTC-06:00) America/Chicago', 'America/Chicago'),
(57, '(UTC-06:00) America/Merida', 'America/Merida'),
(58, '(UTC-06:00) America/Winnipeg', 'America/Winnipeg'),
(59, '(UTC-06:00) America/Menominee', 'America/Menominee'),
(60, '(UTC-06:00) America/Matamoros', 'America/Matamoros'),
(61, '(UTC-05:00) America/Iqaluit', 'America/Iqaluit'),
(62, '(UTC-05:00) America/Rio_Branco', 'America/Rio_Branco'),
(63, '(UTC-05:00) America/Lima', 'America/Lima'),
(64, '(UTC-05:00) America/Kentucky/Mo', 'America/Kentucky/Monticello'),
(65, '(UTC-05:00) America/Kentucky/Lo', 'America/Kentucky/Louisville'),
(66, '(UTC-05:00) America/Cayman', 'America/Cayman'),
(67, '(UTC-05:00) America/Pangnirtung', 'America/Pangnirtung'),
(68, '(UTC-05:00) America/Panama', 'America/Panama'),
(69, '(UTC-05:00) America/Jamaica', 'America/Jamaica'),
(70, '(UTC-05:00) America/Detroit', 'America/Detroit'),
(71, '(UTC-05:00) America/Indiana/Win', 'America/Indiana/Winamac'),
(72, '(UTC-05:00) America/Eirunepe', 'America/Eirunepe'),
(73, '(UTC-05:00) America/Indiana/Vin', 'America/Indiana/Vincennes'),
(74, '(UTC-05:00) America/New_York', 'America/New_York'),
(75, '(UTC-05:00) America/Grand_Turk', 'America/Grand_Turk'),
(76, '(UTC-05:00) America/Nassau', 'America/Nassau'),
(77, '(UTC-05:00) America/Guayaquil', 'America/Guayaquil'),
(78, '(UTC-05:00) America/Havana', 'America/Havana'),
(79, '(UTC-05:00) America/Indiana/Ind', 'America/Indiana/Indianapolis'),
(80, '(UTC-05:00) America/Indiana/Mar', 'America/Indiana/Marengo'),
(81, '(UTC-05:00) America/Indiana/Pet', 'America/Indiana/Petersburg'),
(82, '(UTC-05:00) America/Indiana/Vev', 'America/Indiana/Vevay'),
(83, '(UTC-05:00) America/Nipigon', 'America/Nipigon'),
(84, '(UTC-05:00) America/Port-au-Pri', 'America/Port-au-Prince'),
(85, '(UTC-05:00) America/Thunder_Bay', 'America/Thunder_Bay'),
(86, '(UTC-05:00) America/Cancun', 'America/Cancun'),
(87, '(UTC-05:00) America/Bogota', 'America/Bogota'),
(88, '(UTC-05:00) Pacific/Easter', 'Pacific/Easter'),
(89, '(UTC-05:00) America/Toronto', 'America/Toronto'),
(90, '(UTC-05:00) America/Atikokan', 'America/Atikokan'),
(91, '(UTC-04:00) America/Marigot', 'America/Marigot'),
(92, '(UTC-04:00) America/St_Barthele', 'America/St_Barthelemy'),
(93, '(UTC-04:00) America/St_Kitts', 'America/St_Kitts'),
(94, '(UTC-04:00) America/St_Lucia', 'America/St_Lucia'),
(95, '(UTC-04:00) America/La_Paz', 'America/La_Paz'),
(96, '(UTC-04:00) America/St_Thomas', 'America/St_Thomas'),
(97, '(UTC-04:00) America/St_Vincent', 'America/St_Vincent'),
(98, '(UTC-04:00) America/Lower_Princ', 'America/Lower_Princes'),
(99, '(UTC-04:00) America/Thule', 'America/Thule'),
(100, '(UTC-04:00) America/Manaus', 'America/Manaus'),
(101, '(UTC-04:00) America/Caracas', 'America/Caracas'),
(102, '(UTC-04:00) America/Martinique', 'America/Martinique'),
(103, '(UTC-04:00) America/Antigua', 'America/Antigua'),
(104, '(UTC-04:00) America/Tortola', 'America/Tortola'),
(105, '(UTC-04:00) America/Moncton', 'America/Moncton'),
(106, '(UTC-04:00) America/Montserrat', 'America/Montserrat'),
(107, '(UTC-04:00) Atlantic/Bermuda', 'Atlantic/Bermuda'),
(108, '(UTC-04:00) America/Santo_Domin', 'America/Santo_Domingo'),
(109, '(UTC-04:00) America/Port_of_Spa', 'America/Port_of_Spain'),
(110, '(UTC-04:00) America/Porto_Velho', 'America/Porto_Velho'),
(111, '(UTC-04:00) America/Puerto_Rico', 'America/Puerto_Rico'),
(112, '(UTC-04:00) America/Anguilla', 'America/Anguilla'),
(113, '(UTC-04:00) America/Kralendijk', 'America/Kralendijk'),
(114, '(UTC-04:00) America/Halifax', 'America/Halifax'),
(115, '(UTC-04:00) America/Curacao', 'America/Curacao'),
(116, '(UTC-04:00) America/Barbados', 'America/Barbados'),
(117, '(UTC-04:00) America/Glace_Bay', 'America/Glace_Bay'),
(118, '(UTC-04:00) America/Goose_Bay', 'America/Goose_Bay'),
(119, '(UTC-04:00) America/Grenada', 'America/Grenada'),
(120, '(UTC-04:00) America/Guadeloupe', 'America/Guadeloupe'),
(121, '(UTC-04:00) America/Dominica', 'America/Dominica'),
(122, '(UTC-04:00) America/Blanc-Sablo', 'America/Blanc-Sablon'),
(123, '(UTC-04:00) America/Aruba', 'America/Aruba'),
(124, '(UTC-04:00) America/Guyana', 'America/Guyana'),
(125, '(UTC-04:00) America/Boa_Vista', 'America/Boa_Vista'),
(126, '(UTC-03:30) America/St_Johns', 'America/St_Johns'),
(127, '(UTC-03:00) America/Paramaribo', 'America/Paramaribo'),
(128, '(UTC-03:00) Atlantic/Stanley', 'Atlantic/Stanley'),
(129, '(UTC-03:00) America/Cuiaba', 'America/Cuiaba'),
(130, '(UTC-03:00) America/Santiago', 'America/Santiago'),
(131, '(UTC-03:00) America/Belem', 'America/Belem'),
(132, '(UTC-03:00) America/Miquelon', 'America/Miquelon'),
(133, '(UTC-03:00) America/Campo_Grand', 'America/Campo_Grande'),
(134, '(UTC-03:00) America/Argentina/S', 'America/Argentina/Salta'),
(135, '(UTC-03:00) America/Punta_Arena', 'America/Punta_Arenas'),
(136, '(UTC-03:00) Antarctica/Palmer', 'Antarctica/Palmer'),
(137, '(UTC-03:00) America/Recife', 'America/Recife'),
(138, '(UTC-03:00) America/Bahia', 'America/Bahia'),
(139, '(UTC-03:00) America/Montevideo', 'America/Montevideo'),
(140, '(UTC-03:00) Antarctica/Rothera', 'Antarctica/Rothera'),
(141, '(UTC-03:00) America/Asuncion', 'America/Asuncion'),
(142, '(UTC-03:00) America/Argentina/S', 'America/Argentina/San_Juan'),
(143, '(UTC-03:00) America/Argentina/R', 'America/Argentina/Rio_Gallegos'),
(144, '(UTC-03:00) America/Argentina/M', 'America/Argentina/Mendoza'),
(145, '(UTC-03:00) America/Argentina/L', 'America/Argentina/La_Rioja'),
(146, '(UTC-03:00) America/Argentina/J', 'America/Argentina/Jujuy'),
(147, '(UTC-03:00) America/Argentina/C', 'America/Argentina/Cordoba'),
(148, '(UTC-03:00) America/Argentina/C', 'America/Argentina/Catamarca'),
(149, '(UTC-03:00) America/Argentina/B', 'America/Argentina/Buenos_Aires'),
(150, '(UTC-03:00) America/Araguaina', 'America/Araguaina'),
(151, '(UTC-03:00) America/Argentina/U', 'America/Argentina/Ushuaia'),
(152, '(UTC-03:00) America/Santarem', 'America/Santarem'),
(153, '(UTC-03:00) America/Cayenne', 'America/Cayenne'),
(154, '(UTC-03:00) America/Argentina/S', 'America/Argentina/San_Luis'),
(155, '(UTC-03:00) America/Fortaleza', 'America/Fortaleza'),
(156, '(UTC-03:00) America/Maceio', 'America/Maceio'),
(157, '(UTC-03:00) America/Godthab', 'America/Godthab'),
(158, '(UTC-03:00) America/Argentina/T', 'America/Argentina/Tucuman'),
(159, '(UTC-02:00) America/Noronha', 'America/Noronha'),
(160, '(UTC-02:00) America/Sao_Paulo', 'America/Sao_Paulo'),
(161, '(UTC-02:00) Atlantic/South_Geor', 'Atlantic/South_Georgia'),
(162, '(UTC-01:00) Atlantic/Azores', 'Atlantic/Azores'),
(163, '(UTC-01:00) Atlantic/Cape_Verde', 'Atlantic/Cape_Verde'),
(164, '(UTC-01:00) America/Scoresbysun', 'America/Scoresbysund'),
(165, '(UTC+00:00) Atlantic/St_Helena', 'Atlantic/St_Helena'),
(166, '(UTC+00:00) Africa/Accra', 'Africa/Accra'),
(167, '(UTC+00:00) Atlantic/Reykjavik', 'Atlantic/Reykjavik'),
(168, '(UTC+00:00) Antarctica/Troll', 'Antarctica/Troll'),
(169, '(UTC+00:00) Atlantic/Faroe', 'Atlantic/Faroe'),
(170, '(UTC+00:00) Europe/London', 'Europe/London'),
(171, '(UTC+00:00) Europe/Lisbon', 'Europe/Lisbon'),
(172, '(UTC+00:00) Atlantic/Canary', 'Atlantic/Canary'),
(173, '(UTC+00:00) Europe/Jersey', 'Europe/Jersey'),
(174, '(UTC+00:00) Europe/Isle_of_Man', 'Europe/Isle_of_Man'),
(175, '(UTC+00:00) Europe/Guernsey', 'Europe/Guernsey'),
(176, '(UTC+00:00) Atlantic/Madeira', 'Atlantic/Madeira'),
(177, '(UTC+00:00) Africa/Abidjan', 'Africa/Abidjan'),
(178, '(UTC+00:00) Europe/Dublin', 'Europe/Dublin'),
(179, '(UTC+00:00) Africa/Monrovia', 'Africa/Monrovia'),
(180, '(UTC+00:00) America/Danmarkshav', 'America/Danmarkshavn'),
(181, '(UTC+00:00) Africa/El_Aaiun', 'Africa/El_Aaiun'),
(182, '(UTC+00:00) Africa/Freetown', 'Africa/Freetown'),
(183, '(UTC+00:00) Africa/Dakar', 'Africa/Dakar'),
(184, '(UTC+00:00) Africa/Conakry', 'Africa/Conakry'),
(185, '(UTC+00:00) Africa/Bissau', 'Africa/Bissau'),
(186, '(UTC+00:00) Africa/Lome', 'Africa/Lome'),
(187, '(UTC+00:00) Africa/Banjul', 'Africa/Banjul'),
(188, '(UTC+00:00) Africa/Bamako', 'Africa/Bamako'),
(189, '(UTC+00:00) Africa/Casablanca', 'Africa/Casablanca'),
(190, '(UTC+00:00) Africa/Nouakchott', 'Africa/Nouakchott'),
(191, '(UTC+00:00) Africa/Ouagadougou', 'Africa/Ouagadougou'),
(192, '(UTC+00:00) Africa/Sao_Tome', 'Africa/Sao_Tome'),
(193, '(UTC+01:00) Europe/Rome', 'Europe/Rome'),
(194, '(UTC+01:00) Europe/Budapest', 'Europe/Budapest'),
(195, '(UTC+01:00) Europe/San_Marino', 'Europe/San_Marino'),
(196, '(UTC+01:00) Europe/Sarajevo', 'Europe/Sarajevo'),
(197, '(UTC+01:00) Europe/Skopje', 'Europe/Skopje'),
(198, '(UTC+01:00) Europe/Stockholm', 'Europe/Stockholm'),
(199, '(UTC+01:00) Europe/Belgrade', 'Europe/Belgrade'),
(200, '(UTC+01:00) Europe/Podgorica', 'Europe/Podgorica'),
(201, '(UTC+01:00) Europe/Tirane', 'Europe/Tirane'),
(202, '(UTC+01:00) Europe/Vaduz', 'Europe/Vaduz'),
(203, '(UTC+01:00) Europe/Vatican', 'Europe/Vatican'),
(204, '(UTC+01:00) Europe/Busingen', 'Europe/Busingen'),
(205, '(UTC+01:00) Europe/Vienna', 'Europe/Vienna'),
(206, '(UTC+01:00) Europe/Copenhagen', 'Europe/Copenhagen'),
(207, '(UTC+01:00) Europe/Warsaw', 'Europe/Warsaw'),
(208, '(UTC+01:00) Europe/Prague', 'Europe/Prague'),
(209, '(UTC+01:00) Europe/Monaco', 'Europe/Monaco'),
(210, '(UTC+01:00) Europe/Paris', 'Europe/Paris'),
(211, '(UTC+01:00) Europe/Bratislava', 'Europe/Bratislava'),
(212, '(UTC+01:00) Europe/Amsterdam', 'Europe/Amsterdam'),
(213, '(UTC+01:00) Africa/Algiers', 'Africa/Algiers'),
(214, '(UTC+01:00) Europe/Berlin', 'Europe/Berlin'),
(215, '(UTC+01:00) Europe/Ljubljana', 'Europe/Ljubljana'),
(216, '(UTC+01:00) Africa/Bangui', 'Africa/Bangui'),
(217, '(UTC+01:00) Europe/Luxembourg', 'Europe/Luxembourg'),
(218, '(UTC+01:00) Africa/Brazzaville', 'Africa/Brazzaville'),
(219, '(UTC+01:00) Europe/Oslo', 'Europe/Oslo'),
(220, '(UTC+01:00) Europe/Zurich', 'Europe/Zurich'),
(221, '(UTC+01:00) Africa/Ceuta', 'Africa/Ceuta'),
(222, '(UTC+01:00) Europe/Brussels', 'Europe/Brussels'),
(223, '(UTC+01:00) Europe/Madrid', 'Europe/Madrid'),
(224, '(UTC+01:00) Europe/Malta', 'Europe/Malta'),
(225, '(UTC+01:00) Europe/Andorra', 'Europe/Andorra'),
(226, '(UTC+01:00) Europe/Zagreb', 'Europe/Zagreb'),
(227, '(UTC+01:00) Europe/Gibraltar', 'Europe/Gibraltar'),
(228, '(UTC+01:00) Africa/Ndjamena', 'Africa/Ndjamena'),
(229, '(UTC+01:00) Africa/Libreville', 'Africa/Libreville'),
(230, '(UTC+01:00) Africa/Malabo', 'Africa/Malabo'),
(231, '(UTC+01:00) Africa/Tunis', 'Africa/Tunis'),
(232, '(UTC+01:00) Africa/Kinshasa', 'Africa/Kinshasa'),
(233, '(UTC+01:00) Africa/Luanda', 'Africa/Luanda'),
(234, '(UTC+01:00) Africa/Porto-Novo', 'Africa/Porto-Novo'),
(235, '(UTC+01:00) Africa/Niamey', 'Africa/Niamey'),
(236, '(UTC+01:00) Africa/Douala', 'Africa/Douala'),
(237, '(UTC+01:00) Africa/Lagos', 'Africa/Lagos'),
(238, '(UTC+02:00) Africa/Maputo', 'Africa/Maputo'),
(239, '(UTC+02:00) Asia/Nicosia', 'Asia/Nicosia'),
(240, '(UTC+02:00) Africa/Lusaka', 'Africa/Lusaka'),
(241, '(UTC+02:00) Europe/Tallinn', 'Europe/Tallinn'),
(242, '(UTC+02:00) Africa/Lubumbashi', 'Africa/Lubumbashi'),
(243, '(UTC+02:00) Europe/Sofia', 'Europe/Sofia'),
(244, '(UTC+02:00) Europe/Vilnius', 'Europe/Vilnius'),
(245, '(UTC+02:00) Africa/Blantyre', 'Africa/Blantyre'),
(246, '(UTC+02:00) Africa/Bujumbura', 'Africa/Bujumbura'),
(247, '(UTC+02:00) Africa/Cairo', 'Africa/Cairo'),
(248, '(UTC+02:00) Africa/Kigali', 'Africa/Kigali'),
(249, '(UTC+02:00) Africa/Khartoum', 'Africa/Khartoum'),
(250, '(UTC+02:00) Asia/Amman', 'Asia/Amman'),
(251, '(UTC+02:00) Europe/Riga', 'Europe/Riga'),
(252, '(UTC+02:00) Europe/Mariehamn', 'Europe/Mariehamn'),
(253, '(UTC+02:00) Africa/Gaborone', 'Africa/Gaborone'),
(254, '(UTC+02:00) Europe/Uzhgorod', 'Europe/Uzhgorod'),
(255, '(UTC+02:00) Europe/Kiev', 'Europe/Kiev'),
(256, '(UTC+02:00) Africa/Johannesburg', 'Africa/Johannesburg'),
(257, '(UTC+02:00) Asia/Jerusalem', 'Asia/Jerusalem'),
(258, '(UTC+02:00) Asia/Damascus', 'Asia/Damascus'),
(259, '(UTC+02:00) Africa/Windhoek', 'Africa/Windhoek'),
(260, '(UTC+02:00) Europe/Chisinau', 'Europe/Chisinau'),
(261, '(UTC+02:00) Africa/Tripoli', 'Africa/Tripoli'),
(262, '(UTC+02:00) Asia/Famagusta', 'Asia/Famagusta'),
(263, '(UTC+02:00) Asia/Gaza', 'Asia/Gaza'),
(264, '(UTC+02:00) Asia/Hebron', 'Asia/Hebron'),
(265, '(UTC+02:00) Europe/Bucharest', 'Europe/Bucharest'),
(266, '(UTC+02:00) Europe/Athens', 'Europe/Athens'),
(267, '(UTC+02:00) Africa/Harare', 'Africa/Harare'),
(268, '(UTC+02:00) Europe/Zaporozhye', 'Europe/Zaporozhye'),
(269, '(UTC+02:00) Africa/Mbabane', 'Africa/Mbabane'),
(270, '(UTC+02:00) Europe/Helsinki', 'Europe/Helsinki'),
(271, '(UTC+02:00) Africa/Maseru', 'Africa/Maseru'),
(272, '(UTC+02:00) Asia/Beirut', 'Asia/Beirut'),
(273, '(UTC+02:00) Europe/Kaliningrad', 'Europe/Kaliningrad'),
(274, '(UTC+03:00) Africa/Mogadishu', 'Africa/Mogadishu'),
(275, '(UTC+03:00) Europe/Kirov', 'Europe/Kirov'),
(276, '(UTC+03:00) Africa/Addis_Ababa', 'Africa/Addis_Ababa'),
(277, '(UTC+03:00) Africa/Kampala', 'Africa/Kampala'),
(278, '(UTC+03:00) Europe/Istanbul', 'Europe/Istanbul'),
(279, '(UTC+03:00) Africa/Asmara', 'Africa/Asmara'),
(280, '(UTC+03:00) Africa/Juba', 'Africa/Juba'),
(281, '(UTC+03:00) Europe/Minsk', 'Europe/Minsk'),
(282, '(UTC+03:00) Antarctica/Syowa', 'Antarctica/Syowa'),
(283, '(UTC+03:00) Africa/Nairobi', 'Africa/Nairobi'),
(284, '(UTC+03:00) Indian/Mayotte', 'Indian/Mayotte'),
(285, '(UTC+03:00) Europe/Moscow', 'Europe/Moscow'),
(286, '(UTC+03:00) Asia/Riyadh', 'Asia/Riyadh'),
(287, '(UTC+03:00) Indian/Comoro', 'Indian/Comoro'),
(288, '(UTC+03:00) Indian/Antananarivo', 'Indian/Antananarivo'),
(289, '(UTC+03:00) Africa/Dar_es_Salaa', 'Africa/Dar_es_Salaam'),
(290, '(UTC+03:00) Africa/Djibouti', 'Africa/Djibouti'),
(291, '(UTC+03:00) Europe/Volgograd', 'Europe/Volgograd'),
(292, '(UTC+03:00) Asia/Kuwait', 'Asia/Kuwait'),
(293, '(UTC+03:00) Asia/Aden', 'Asia/Aden'),
(294, '(UTC+03:00) Asia/Baghdad', 'Asia/Baghdad'),
(295, '(UTC+03:00) Asia/Qatar', 'Asia/Qatar'),
(296, '(UTC+03:00) Europe/Simferopol', 'Europe/Simferopol'),
(297, '(UTC+03:00) Asia/Bahrain', 'Asia/Bahrain'),
(298, '(UTC+03:30) Asia/Tehran', 'Asia/Tehran'),
(299, '(UTC+04:00) Europe/Saratov', 'Europe/Saratov'),
(300, '(UTC+04:00) Asia/Baku', 'Asia/Baku'),
(301, '(UTC+04:00) Indian/Reunion', 'Indian/Reunion'),
(302, '(UTC+04:00) Asia/Tbilisi', 'Asia/Tbilisi'),
(303, '(UTC+04:00) Europe/Samara', 'Europe/Samara'),
(304, '(UTC+04:00) Asia/Yerevan', 'Asia/Yerevan'),
(305, '(UTC+04:00) Asia/Muscat', 'Asia/Muscat'),
(306, '(UTC+04:00) Europe/Ulyanovsk', 'Europe/Ulyanovsk'),
(307, '(UTC+04:00) Indian/Mahe', 'Indian/Mahe'),
(308, '(UTC+04:00) Asia/Dubai', 'Asia/Dubai'),
(309, '(UTC+04:00) Indian/Mauritius', 'Indian/Mauritius'),
(310, '(UTC+04:00) Europe/Astrakhan', 'Europe/Astrakhan'),
(311, '(UTC+04:30) Asia/Kabul', 'Asia/Kabul'),
(312, '(UTC+05:00) Indian/Kerguelen', 'Indian/Kerguelen'),
(313, '(UTC+05:00) Asia/Dushanbe', 'Asia/Dushanbe'),
(314, '(UTC+05:00) Indian/Maldives', 'Indian/Maldives'),
(315, '(UTC+05:00) Asia/Tashkent', 'Asia/Tashkent'),
(316, '(UTC+05:00) Asia/Karachi', 'Asia/Karachi'),
(317, '(UTC+05:00) Asia/Samarkand', 'Asia/Samarkand'),
(318, '(UTC+05:00) Asia/Yekaterinburg', 'Asia/Yekaterinburg'),
(319, '(UTC+05:00) Asia/Aqtau', 'Asia/Aqtau'),
(320, '(UTC+05:00) Antarctica/Mawson', 'Antarctica/Mawson'),
(321, '(UTC+05:00) Asia/Oral', 'Asia/Oral'),
(322, '(UTC+05:00) Asia/Atyrau', 'Asia/Atyrau'),
(323, '(UTC+05:00) Asia/Ashgabat', 'Asia/Ashgabat'),
(324, '(UTC+05:00) Asia/Aqtobe', 'Asia/Aqtobe'),
(325, '(UTC+05:30) Asia/Kolkata', 'Asia/Kolkata'),
(326, '(UTC+05:30) Asia/Colombo', 'Asia/Colombo'),
(327, '(UTC+05:45) Asia/Kathmandu', 'Asia/Kathmandu'),
(328, '(UTC+06:00) Indian/Chagos', 'Indian/Chagos'),
(329, '(UTC+06:00) Asia/Almaty', 'Asia/Almaty'),
(330, '(UTC+06:00) Asia/Urumqi', 'Asia/Urumqi'),
(331, '(UTC+06:00) Asia/Bishkek', 'Asia/Bishkek'),
(332, '(UTC+06:00) Asia/Qyzylorda', 'Asia/Qyzylorda'),
(333, '(UTC+06:00) Antarctica/Vostok', 'Antarctica/Vostok'),
(334, '(UTC+06:00) Asia/Dhaka', 'Asia/Dhaka'),
(335, '(UTC+06:00) Asia/Omsk', 'Asia/Omsk'),
(336, '(UTC+06:00) Asia/Thimphu', 'Asia/Thimphu'),
(337, '(UTC+06:30) Indian/Cocos', 'Indian/Cocos'),
(338, '(UTC+06:30) Asia/Yangon', 'Asia/Yangon'),
(339, '(UTC+07:00) Asia/Pontianak', 'Asia/Pontianak'),
(340, '(UTC+07:00) Asia/Phnom_Penh', 'Asia/Phnom_Penh'),
(341, '(UTC+07:00) Indian/Christmas', 'Indian/Christmas'),
(342, '(UTC+07:00) Asia/Novokuznetsk', 'Asia/Novokuznetsk'),
(343, '(UTC+07:00) Asia/Jakarta', 'Asia/Jakarta'),
(344, '(UTC+07:00) Asia/Hovd', 'Asia/Hovd'),
(345, '(UTC+07:00) Asia/Ho_Chi_Minh', 'Asia/Ho_Chi_Minh'),
(346, '(UTC+07:00) Asia/Bangkok', 'Asia/Bangkok'),
(347, '(UTC+07:00) Asia/Krasnoyarsk', 'Asia/Krasnoyarsk'),
(348, '(UTC+07:00) Asia/Novosibirsk', 'Asia/Novosibirsk'),
(349, '(UTC+07:00) Asia/Tomsk', 'Asia/Tomsk'),
(350, '(UTC+07:00) Asia/Vientiane', 'Asia/Vientiane'),
(351, '(UTC+07:00) Antarctica/Davis', 'Antarctica/Davis'),
(352, '(UTC+07:00) Asia/Barnaul', 'Asia/Barnaul'),
(353, '(UTC+08:00) Asia/Irkutsk', 'Asia/Irkutsk'),
(354, '(UTC+08:00) Asia/Hong_Kong', 'Asia/Hong_Kong'),
(355, '(UTC+08:00) Asia/Kuala_Lumpur', 'Asia/Kuala_Lumpur'),
(356, '(UTC+08:00) Asia/Kuching', 'Asia/Kuching'),
(357, '(UTC+08:00) Asia/Macau', 'Asia/Macau'),
(358, '(UTC+08:00) Australia/Perth', 'Australia/Perth'),
(359, '(UTC+08:00) Asia/Makassar', 'Asia/Makassar'),
(360, '(UTC+08:00) Asia/Manila', 'Asia/Manila'),
(361, '(UTC+08:00) Asia/Ulaanbaatar', 'Asia/Ulaanbaatar'),
(362, '(UTC+08:00) Asia/Singapore', 'Asia/Singapore'),
(363, '(UTC+08:00) Asia/Taipei', 'Asia/Taipei'),
(364, '(UTC+08:00) Asia/Choibalsan', 'Asia/Choibalsan'),
(365, '(UTC+08:00) Asia/Brunei', 'Asia/Brunei'),
(366, '(UTC+08:00) Asia/Shanghai', 'Asia/Shanghai'),
(367, '(UTC+08:30) Asia/Pyongyang', 'Asia/Pyongyang'),
(368, '(UTC+08:45) Australia/Eucla', 'Australia/Eucla'),
(369, '(UTC+09:00) Asia/Dili', 'Asia/Dili'),
(370, '(UTC+09:00) Asia/Chita', 'Asia/Chita'),
(371, '(UTC+09:00) Asia/Khandyga', 'Asia/Khandyga'),
(372, '(UTC+09:00) Asia/Jayapura', 'Asia/Jayapura'),
(373, '(UTC+09:00) Asia/Seoul', 'Asia/Seoul'),
(374, '(UTC+09:00) Pacific/Palau', 'Pacific/Palau'),
(375, '(UTC+09:00) Asia/Tokyo', 'Asia/Tokyo'),
(376, '(UTC+09:00) Asia/Yakutsk', 'Asia/Yakutsk'),
(377, '(UTC+09:30) Australia/Darwin', 'Australia/Darwin'),
(378, '(UTC+10:00) Asia/Ust-Nera', 'Asia/Ust-Nera'),
(379, '(UTC+10:00) Pacific/Saipan', 'Pacific/Saipan'),
(380, '(UTC+10:00) Pacific/Guam', 'Pacific/Guam'),
(381, '(UTC+10:00) Antarctica/DumontDU', 'Antarctica/DumontDUrville'),
(382, '(UTC+10:00) Asia/Vladivostok', 'Asia/Vladivostok'),
(383, '(UTC+10:00) Australia/Lindeman', 'Australia/Lindeman'),
(384, '(UTC+10:00) Australia/Brisbane', 'Australia/Brisbane'),
(385, '(UTC+10:00) Pacific/Port_Moresb', 'Pacific/Port_Moresby'),
(386, '(UTC+10:00) Pacific/Chuuk', 'Pacific/Chuuk'),
(387, '(UTC+10:30) Australia/Adelaide', 'Australia/Adelaide'),
(388, '(UTC+10:30) Australia/Broken_Hi', 'Australia/Broken_Hill'),
(389, '(UTC+11:00) Pacific/Guadalcanal', 'Pacific/Guadalcanal'),
(390, '(UTC+11:00) Antarctica/Casey', 'Antarctica/Casey'),
(391, '(UTC+11:00) Antarctica/Macquari', 'Antarctica/Macquarie'),
(392, '(UTC+11:00) Pacific/Kosrae', 'Pacific/Kosrae'),
(393, '(UTC+11:00) Pacific/Norfolk', 'Pacific/Norfolk'),
(394, '(UTC+11:00) Pacific/Noumea', 'Pacific/Noumea'),
(395, '(UTC+11:00) Pacific/Pohnpei', 'Pacific/Pohnpei'),
(396, '(UTC+11:00) Australia/Sydney', 'Australia/Sydney'),
(397, '(UTC+11:00) Pacific/Efate', 'Pacific/Efate'),
(398, '(UTC+11:00) Australia/Melbourne', 'Australia/Melbourne'),
(399, '(UTC+11:00) Australia/Lord_Howe', 'Australia/Lord_Howe'),
(400, '(UTC+11:00) Australia/Hobart', 'Australia/Hobart'),
(401, '(UTC+11:00) Australia/Currie', 'Australia/Currie'),
(402, '(UTC+11:00) Asia/Srednekolymsk', 'Asia/Srednekolymsk'),
(403, '(UTC+11:00) Pacific/Bougainvill', 'Pacific/Bougainville'),
(404, '(UTC+11:00) Asia/Sakhalin', 'Asia/Sakhalin'),
(405, '(UTC+11:00) Asia/Magadan', 'Asia/Magadan'),
(406, '(UTC+12:00) Pacific/Funafuti', 'Pacific/Funafuti'),
(407, '(UTC+12:00) Asia/Kamchatka', 'Asia/Kamchatka'),
(408, '(UTC+12:00) Pacific/Wake', 'Pacific/Wake'),
(409, '(UTC+12:00) Pacific/Tarawa', 'Pacific/Tarawa'),
(410, '(UTC+12:00) Pacific/Wallis', 'Pacific/Wallis'),
(411, '(UTC+12:00) Pacific/Fiji', 'Pacific/Fiji'),
(412, '(UTC+12:00) Pacific/Nauru', 'Pacific/Nauru'),
(413, '(UTC+12:00) Asia/Anadyr', 'Asia/Anadyr'),
(414, '(UTC+12:00) Pacific/Majuro', 'Pacific/Majuro'),
(415, '(UTC+12:00) Pacific/Kwajalein', 'Pacific/Kwajalein'),
(416, '(UTC+13:00) Antarctica/McMurdo', 'Antarctica/McMurdo'),
(417, '(UTC+13:00) Pacific/Enderbury', 'Pacific/Enderbury'),
(418, '(UTC+13:00) Pacific/Tongatapu', 'Pacific/Tongatapu'),
(419, '(UTC+13:00) Pacific/Fakaofo', 'Pacific/Fakaofo'),
(420, '(UTC+13:00) Pacific/Auckland', 'Pacific/Auckland'),
(421, '(UTC+13:45) Pacific/Chatham', 'Pacific/Chatham'),
(422, '(UTC+14:00) Pacific/Apia', 'Pacific/Apia'),
(423, '(UTC+14:00) Pacific/Kiritimati', 'Pacific/Kiritimati');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(16) NOT NULL,
  `lname` varchar(16) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `token` varchar(256) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `monthly_spending` decimal(11,2) NOT NULL,
  `annual_spending` decimal(11,2) NOT NULL,
  `monthly_saving` decimal(11,2) NOT NULL,
  `monthly_earning` decimal(11,2) NOT NULL,
  `lang` varchar(32) NOT NULL DEFAULT 'en_US',
  `timezone` varchar(64) NOT NULL DEFAULT 'Africa/Nairobi',
  `currency` varchar(8) NOT NULL DEFAULT 'VND',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `password`, `avatar`, `token`, `role`, `status`, `monthly_spending`, `annual_spending`, `monthly_saving`, `monthly_earning`, `lang`, `timezone`, `currency`, `created_at`) VALUES
(1, 'Jane', 'Doe', 'demo@simcycreative.com', '+254720783834', 'Nairobi, Kenya.', '4d7c065dc166b84e681641d01211b968c132028751bdc91d60ed13fe8091f4b3', '', '', 'admin', 'Active', '0.00', '0.00', '0.00', '0.00', 'en_US', 'Indian/Mayotte', 'USD', '2019-02-07 12:47:21'),
(2, 'Huá»³nh', 'Tiáº¿n', 'followme403@gmail.com', '', '', '5644338d08dcd6adaa4b35c6e40de89cc8459f8ea6c1365576066a9636456233', 'j0K5xnO9Lsndz6jxuC7QbL5xOvgJTxAL.png', NULL, 'user', 'Active', '70000000.00', '840000000.00', '0.00', '0.00', 'en_US', 'Asia/Ho_Chi_Minh', 'VND', '2023-10-31 01:33:56'),
(3, 'Huá»³nh', 'Tien', 'huynhquoctien.12a3.2017@gmail.com', NULL, NULL, '3f504bf056ed0640034fc9a3c19490c0fa93e042690d04970e3b162d1cc0a6ac', NULL, NULL, 'user', 'Active', '0.00', '0.00', '0.00', '0.00', 'en_US', 'Africa/Nairobi', 'USD', '2023-11-20 17:20:48'),
(4, 'Huynh', 'Tiáº¿n', 'hoatien1201@gmail.com', NULL, NULL, 'da589b5425763a12ea59902642efe1acec9ab75eb52eb9c8d02afef7275de2e1', NULL, NULL, 'user', 'Active', '0.00', '0.00', '0.00', '0.00', 'en_US', 'Africa/Nairobi', 'USD', '2023-11-20 17:22:36'),
(5, 'Huá»³nh', 'Tiáº¿n', 'huynhquoctien.10a3.2017@gmail.com', '', '', '5644338d08dcd6adaa4b35c6e40de89cc8459f8ea6c1365576066a9636456233', 'QKN8SqBOuE0iQgdi011MxpSBdq9UJQ9y.png', NULL, 'user', 'Active', '5000000.00', '60000000.00', '0.00', '0.00', 'en_US', 'Africa/Nairobi', 'VND', '2023-11-20 21:05:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `uploaded_by` (`user`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `budget_category` (`category`),
  ADD KEY `user` (`user`),
  ADD KEY `expenses_ibfk_2` (`account`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `account` (`account`),
  ADD KEY `income_ibfk_3` (`category`);

--
-- Indexes for table `sotietkiem`
--
ALTER TABLE `sotietkiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `account` (`account`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sotietkiem`
--
ALTER TABLE `sotietkiem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=424;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `user` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`account`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `expenses_ibfk_3` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `income`
--
ALTER TABLE `income`
  ADD CONSTRAINT `income_ibfk_1` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `income_ibfk_2` FOREIGN KEY (`account`) REFERENCES `accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `income_ibfk_3` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
