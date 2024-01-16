-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2024 at 02:39 PM
-- Server version: 8.0.35
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rbzaspiorid_db_sispi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cas`
--

CREATE TABLE `cas` (
  `id` bigint UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_issuer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_ca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cas`
--

INSERT INTO `cas` (`id`, `waktu_assign_project`, `status`, `nama_issuer`, `bin`, `reg_ca`, `added_by`, `modified_by`) VALUES
(1, '2020-10-21 00:00:00', 'Done', 'PT Bank Jago Tbk', '488950', '20CA-1021001', 'RBB', NULL),
(2, '2020-11-03 00:00:00', 'Done', 'Bank of China (Hong Kong) Limited Jakarta Branch', '56143200, 6212248', '20CA-1103002', 'RBB', NULL),
(3, '2020-11-04 00:00:00', 'Done', 'PT. Bank Sinarmas Tbk.', '621445, 639687, 484777', '20CA-1104003', 'RBB', NULL),
(4, '2020-11-05 00:00:00', 'Done', 'PT Bank Jabar Banten Syariah', '504182', '20CA-1105004', 'RBB', NULL),
(5, '2020-11-05 00:00:00', 'Done', 'PT Bank Pembangunan Daerah Bali', '622024', '20CA-1105005', 'RBB', NULL),
(6, '2020-11-06 00:00:00', 'Done', 'PT. Bank QNB Indonesia', '476827,  62749', '20CA-1106006', 'RBB', NULL),
(7, '2020-11-06 00:00:00', 'Done', 'PT. Bank Ganesha Tbk', '636184, 93600161', '20CA-1106007', 'RBB', NULL),
(8, '2020-11-09 00:00:00', 'Done', 'PT Bank Negara Indonesia Tbk', '517863, 517885, 517892, 519893, 526422, 526423, 526921, 532668, 537176, 524559, 222945, 222938, 194634, 194680, 194681, 194683, 194690, 194698, 601004, 194686, 194632, 557577', '20CA-1109008', 'RBB', NULL),
(9, '2020-11-11 00:00:00', 'Done', 'PT. Bank ICBC Indonesia', '621240, 582982', '20CA-1110009', 'RBB', NULL),
(10, '2020-11-12 00:00:00', 'Done', 'PT. Bank Pembangunan Daerah Banten', '628173', '20CA-1112010', 'RBB', NULL),
(11, '2020-11-12 00:00:00', 'Done', 'PT. Bank Mestika Dharma TBK', '505820', '20CA-1112011', 'RBB', NULL),
(12, '2020-11-12 00:00:00', 'Done', 'PT. Bank Commonwealth', '523987, 513831, 603634', '20CA-1112012', 'RBB', NULL),
(13, '2020-11-17 00:00:00', 'Done', 'PT. Bank Mega Syariah', '601923, 498864, 489025', '20CA-1117013', 'RBB', NULL),
(14, '2020-11-17 00:00:00', 'Done', 'PT Bank Muamalat Indonesia, Tbk', '601923, 498864, 489025', '20CA-1117014', 'RBB', NULL),
(15, '2020-11-18 00:00:00', 'Done', 'PT. BCA Syariah', '502995', '20CA-1118015', 'RBB', NULL),
(16, '2020-11-20 00:00:00', 'Done', 'PT. Bank Mayora', '639298', '20CA-1120016', 'RBB', NULL),
(17, '2020-11-20 00:00:00', 'Done', 'PT BPR Eka Bumi Artha', '628105', '20CA-1120017', 'RBB', NULL),
(18, '2020-11-24 00:00:00', 'Done', 'PT. Bank Victoria International Tbk', '628106', '20CA-1124018', 'RBB', NULL),
(19, '2020-11-24 00:00:00', 'Done', 'PT. Bank Mayapada Internasional, Tbk', '504972', '20CA-1124019', 'RBB', NULL),
(20, '2020-11-24 00:00:00', 'Done', 'PT Bank Oke Indonesia, Tbk', '506946', '20CA-1124020', 'RBB', NULL),
(21, '2020-11-24 00:00:00', 'Done', 'PT Bank Central Asia, Tbk', '601900, 537941, 530795, 526051, 513458, 93600014', '20CA-1124021', 'RBB', NULL),
(22, '2020-11-26 00:00:00', 'Done', 'PT. Bank Danamon Indonesia', '557791, 589587', '20CA-1126022', 'RBB', NULL),
(23, '2020-12-03 00:00:00', 'Done', 'PT. Bank Panin Tbk', '601874', '20CA-1203023', 'RBB', NULL),
(24, '2020-12-04 00:00:00', 'Done', 'PT Bank Index Selindo', '628148', '20CA-1204024', 'RBB', NULL),
(25, '2020-12-10 00:00:00', 'Done', 'PT. Bank Pembangunan Daerah Papua', '603844', '20CA-1210025', 'RBB', NULL),
(26, '2020-12-10 00:00:00', 'Done', 'PT Bank Pembangunan Daerah Kalimantan Timur dan Kalimantan Utara', '622004', '20CA-1210026', 'RBB', NULL),
(27, '2020-12-14 00:00:00', 'Done', 'PT Bank CTBC Indonesia', '505799', '20CA-1214027', 'RBB', NULL),
(28, '2020-12-16 00:00:00', 'Done', 'Badan Usaha Tetap (BUT) Standard Chartered Bank', '539927, 552355, 589798', '20CA-1216028', 'RBB', NULL),
(29, '2020-12-17 00:00:00', 'Done', 'PT. Bank Sulutgo', '6271009', '20CA-1217029', 'RBB', NULL),
(30, '2020-12-17 00:00:00', 'Done', 'PT Bank KEB Hana Indonesia', '460221,  606420', '20CA-1217030', 'RBB', NULL),
(31, '2020-12-18 00:00:00', 'Done', 'PT Bank Maybank Indonesia Tbk', '510481, 531810, 559751, 589450', '20CA-1218031', 'RBB', NULL),
(32, '2021-01-08 00:00:00', 'Done', 'PT. Bank Kalbar', '627761', '21CA-0108001', 'RBB', NULL),
(33, '2021-01-15 00:00:00', 'Done', 'PT. Bank BTPN, Tbk', '466160, 603515', '21CA-0115002', 'RBB', NULL),
(34, '2021-01-19 00:00:00', 'Done', 'PT. Bank Tabungan Negara (Persero), Tbk.', '421570, 462436, 485447, 469345, 622100, 478701', '21CA-0119003', 'RBB', NULL),
(35, '2021-01-20 00:00:00', 'Done', 'PT. Bank Pembangunan Daerah Jawa Barat dan Banten, Tbk.', '622011, 462040', '21CA-0120004', 'RBB', NULL),
(36, '2021-01-21 00:00:00', 'Done', 'PT. Prima Master Bank', '581680', '21CA-0121005', 'RBB', NULL),
(37, '2021-01-22 00:00:00', 'Done', 'PT Bank HSBC Indonesia', '601303, 483577, 464993, 459870, 470585', '21CA-0122006', 'RBB', NULL),
(38, '2021-01-27 00:00:00', 'Done', 'Bank Shinhan Indonesia', '507967', '21CA-0127007', 'RBB', NULL),
(39, '2021-02-03 00:00:00', 'Done', 'PT Bank Mega Tbk,', '421408, 421407, 601714', '21CA-0203008', 'RBB', NULL),
(40, '2021-02-05 00:00:00', 'Done', 'PT Bank Net Indonesia Syariah TBK', '5644 1700', '21CA-0205009', 'RBB', NULL),
(41, '2021-02-11 00:00:00', 'Done', 'PT. Bank Pembangunan Daerah Daerah Istimewa Yogyakarta', '627427', '21CA-0211010', 'RBB', NULL),
(42, '2021-02-11 00:00:00', 'Done', 'PT. Bank Bumi Arta Tbk.', '504978', '21CA-0211011', 'RBB', NULL),
(43, '2021-02-16 00:00:00', 'Done', 'PT. Bank China Construction Bank Indonesia Tbk.', '606437', '21CA-0216012', 'RBB', NULL),
(44, '2021-02-19 00:00:00', 'Done', 'PT Bank UOB Indonesia', '421445, 601758', '21CA-0219013', 'RBB', NULL),
(45, '2021-02-25 00:00:00', 'Done', 'PT BANK JASA JAKARTA', '627899', '21CA-0225014', 'RBB', NULL),
(46, '2022-02-25 00:00:00', 'Done', 'PT Bank SBI Indonesia', '606261', '21CA-0225016', 'RBB', NULL),
(47, '2021-03-01 00:00:00', 'Done', 'PT Bank DBS Indonesia', '460238, 56143300, 510249', '21CA-0201017', 'RBB', NULL),
(48, '2021-03-03 00:00:00', 'Done', 'PT. Bank Pembangunan Daerah Sumatra Selatan dan Bangka Belitung', '470670, 413510, 413511, 627452', '21CA-0303018', 'RBB', NULL),
(49, '2021-03-10 00:00:00', 'Done', 'PT. Bank DKI', '504948', '21CA-0310019', 'RBB', NULL),
(50, '2021-03-16 00:00:00', 'Done', 'PT. BPD Sulawesi Tenggara', '627661, 627662', '21CA-0316020', 'RBB', NULL),
(51, '2021-03-19 00:00:00', 'Done', 'BPD Jawa Timur', '6036 05', '21CA-0319021', 'RBB', NULL),
(52, '2021-03-26 00:00:00', 'Done', 'PT. Bank Woori Saudara Indonesia 1906, Tbk', '605768, 628002', '21CA-0326022', 'RBB', NULL),
(53, '2021-03-31 00:00:00', 'Done', 'PT Bank J Trust Indonesia Tbk.', '601733', '21CA-0331023', 'RBB', NULL),
(54, '2021-04-12 00:00:00', 'Done', 'PT Bank Sahabat Sampoerna', '581807', '21CA-0412025', 'RBB', NULL),
(55, '2021-04-13 00:00:00', 'Done', 'PT. Bank OCBC NISP', '603439, 537940, 531928', '21CA-0413026', 'RBB', NULL),
(56, '2021-04-20 00:00:00', 'Done', 'PT. Bank Aceh Syariah', '627370', '21CA-0420027', 'RBB', NULL),
(57, '2021-04-21 00:00:00', 'Done', 'PT. Bank Pembangunan Daerah Sulawesi Tengah', '606058', '21CA-0421028', 'RBB', NULL),
(58, '2021-04-22 00:00:00', 'Done', 'PT Bank CIMB Niaga', '557692, 517417, 532713, 530487, 521102, 589929, 547292, 536612, 537656', '21CA-0422029', 'RBB', NULL),
(59, '2021-04-28 00:00:00', 'Done', 'PT. BPR PALU LOKADANA UTAMA', '561427', '21CA-0428030', 'RBB', NULL),
(60, '2021-04-29 00:00:00', 'Done', 'BPR Hasamitra', '637232', '21CA-0429031', 'RBB', NULL),
(61, '2021-05-03 00:00:00', 'Done', 'PT. BPR MODERN EXPRESS', '561428', '21CA-0503032', 'RBB', NULL),
(62, '2021-05-04 00:00:00', 'Done', 'PT BANK PEMBANGUNAN DAERAH KALIMANTAN TENGAH', '627405', '21CA-0504033', 'RBB', NULL),
(63, '2021-05-11 00:00:00', 'Done', 'PT. Bank Capital Indonesia', '604844', '21CA-0511034', 'RBB', NULL),
(64, '2021-05-18 00:00:00', 'Done', 'PT Bank Amar Indonesia Tbk', '507755', '21CA-0518035', 'RBB', NULL),
(65, '2021-05-27 00:00:00', 'Done', 'PT. BPD Bank Jateng', '627451', '21CA-0527036', 'RBB', NULL),
(66, '2021-05-28 00:00:00', 'Done', 'PT. BANK MANDIRI (Persero)Tbk', '409766, 461699, 461700, 483795, 483796, 603298', '21CA-0528037', 'RBB', NULL),
(67, '2021-06-17 00:00:00', 'Done', 'PT Bank Maspion Indonesia, Tbk', '601899', '21CA-0617038', 'RBB', NULL),
(68, '2021-06-30 00:00:00', 'Done', 'PT. National Nobu Bank', '504710, 536897', '21CA-0630039', 'RBB', NULL),
(69, '2021-06-30 00:00:00', 'Done', 'PT Bank Pembangunan Daerah Nusa Tenggara Timur', '627653', '21CA-0630040', 'RBB', NULL),
(70, '2021-07-28 00:00:00', 'Done', 'PT. Bank Perkreditan Rakyat Dana Nusantara', '504023', '21CA-0728041', 'RBB', NULL),
(71, '2021-08-06 00:00:00', 'Done', 'PT. BPR Irian Sentosa', '609749', '21CA-0806042', 'RBB', NULL),
(72, '2021-08-06 00:00:00', 'Done', 'PT Bank Woori Saudara Indonesia 1906, Tbk.', '628002', '21CA-0806043', 'RBB', NULL),
(73, '2021-08-12 00:00:00', 'Done', 'PT Bank Mega Tbk.', '601714', '21CA-0812044', 'RBB', NULL),
(74, '2021-08-31 00:00:00', 'Done', 'PT. Bank Neo Commerce', '585945', '21CA-0831045', 'RBB', NULL),
(75, '2021-09-10 00:00:00', 'Done', 'PT. BPR Modern Makassar', '639808', '21CA-0910046', 'RBB', NULL),
(76, '2021-09-10 00:00:00', 'Done', 'PT. BPR Modern Papua', '639813', '21CA-0910047', 'RBB', NULL),
(77, '2021-09-13 00:00:00', 'Done', 'PT. BPR Modern Ternate', '639816', '21CA-0913048', 'RBB', NULL),
(78, '2021-09-16 00:00:00', 'Done', 'PT. Rintis Sejahtera', '888888', '21CA-0916049', 'RBB', NULL),
(79, '2021-09-22 00:00:00', 'Done', 'PT Bank Artha Graha Internasional, Tbk', '589875', '21CA-0922050', 'RBB', NULL),
(80, '2021-09-22 00:00:00', 'Done', 'PT. Bank Rakyat Indonesia (Persero) Tbk.', '601301, 522184, 532659', '21CA-0922051', 'RBB', NULL),
(81, '2021-09-28 00:00:00', 'Done', 'PT. JASUINDO TIGA PERKASA Tbk', '112233', '21CA-0928052', 'RBB', NULL),
(82, '2021-09-29 00:00:00', 'Done', 'PT Bank Permata', '464005, 471295, 426254, 476334, 589385', '21CA-0929053', 'RBB', NULL),
(83, '2021-09-30 00:00:00', 'Done', 'PT. BPD Jambi', '627932', '21CA-0930054', 'RBB', NULL),
(84, '2021-10-26 00:00:00', 'Done', 'PT Artajasa Pembayaran Eleketronis', '445566', '21CA-1026055', 'RBB', NULL),
(85, '2021-11-18 00:00:00', 'Done', 'PT BPR Bank Sleman (Perseroda)', '507994', '21CA-1118056', 'RBB', NULL),
(86, '2021-12-20 00:00:00', 'Done', 'PT BANK DIGITAL BCA', '539371', '21CA-1220058', 'RBB', NULL),
(87, '2021-12-22 00:00:00', 'Done', 'PT BPR DANA RAYA', '639845', '21CA-1222059', 'RBB', NULL),
(88, '2021-12-30 00:00:00', 'New', 'PT. Bank NTB Syariah', '627142', '21CA-1230060', 'RBB', NULL),
(89, '2022-01-13 00:00:00', 'Done', 'PT. Bank Sumut', '627486', '22CA-0113001', 'RBB', NULL),
(90, '2022-01-17 00:00:00', 'Done', 'PT. Bank Sulselbar', '504986', '22CA-0117002', 'RBB', NULL),
(91, '2022-01-31 00:00:00', 'Done', 'PT. BPR LESTARI BALI', '605960', '22CA-0131003', 'RBB', NULL),
(92, '2022-02-16 00:00:00', 'New', 'PT Bank Pembangunan Daerah Kalimantan Selatan', '627110', '22CA-0216004', 'RBB', NULL),
(93, '2022-03-02 00:00:00', 'New', 'PT.BANK LAMPUNG', '627791', '22CA-0302005', 'RBB', NULL),
(94, '2022-03-02 00:00:00', 'New', 'PT BPR SURYA YUDHAKENCANA', '608614', '22CA-0302006', 'RBB', NULL),
(95, '2022-03-10 00:00:00', 'New', 'PT. BPR Surya Yudha', '608615', '22CA-0310007', 'RBB', NULL),
(96, '2022-04-05 00:00:00', 'New', 'PT BANK VICTORIA SYARIAH', '581873', '22CA-0405008', 'RBB', NULL),
(97, '2022-04-27 00:00:00', 'New', 'PT. BPR Barelang Mandiri', '56142600', '22CA-0427009', 'RBB', NULL),
(98, '2022-05-18 00:00:00', 'New', 'PT. Bank Multiarta Sentosa', '585970', '22CA-0518010', 'RBB', NULL),
(99, '2022-05-25 00:00:00', 'Done', 'PT Bank Riau Kepri', '627492', '22CA-0525011', 'RBB', NULL),
(100, '2022-06-09 00:00:00', 'Done', 'PT Bank Nagari', '601592', '22CA-0609012', 'RBB', 'ENP'),
(101, '2022-06-09 00:00:00', 'Done', 'PT BANK BENGKULU', '627934', '22CA-0609013', 'RBB', 'ENP'),
(102, '2022-07-13 00:00:00', 'Done', 'PT BPR Karyajatnika Sadaya', '627879', '22CA-0713014', 'RBB', 'ENP'),
(103, '2022-08-04 00:00:00', 'Done', 'PT Bank KB Bukopin', '517415, 532595, 537689, 601378', '22CA-0804015', 'ENP', 'ENP'),
(104, '2022-08-16 00:00:00', 'Done', 'PT Bank MNC Internasional Tbk', '511875, 601780', '22CA-0826016', 'ENP', 'ENP'),
(105, '2022-08-29 00:00:00', 'Done', 'PT Bank BTPN Syariah Tbk', '506947', '22CA-0829018', 'ENP', 'ENP'),
(106, '2022-08-29 00:00:00', '', 'PT Bank Panin Dubai Syariah', '503576', '22CA-0829017', 'ENP', 'ENP'),
(107, '2022-10-11 00:00:00', 'Done', 'PT BPR Bhakti Daya Ekonomi', '507975', '22CA-1011020', 'ENP', 'ENP'),
(108, '2023-12-30 00:00:00', 'Done', 'PT BANK OF INDIA INDONESIA, TBK', '593600', '23CA-0103001', 'ENP', 'ENP');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `id_project` bigint UNSIGNED NOT NULL,
  `id_dtype` bigint UNSIGNED NOT NULL,
  `nama_document` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direktori_document` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `softcopy_status` tinyint(1) NOT NULL DEFAULT '0',
  `hardcopy_status` tinyint(1) NOT NULL DEFAULT '0',
  `uploaded_by` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_categories`
--

CREATE TABLE `documents_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_dcategory` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_types`
--

CREATE TABLE `documents_types` (
  `id` bigint UNSIGNED NOT NULL,
  `id_dcategory` bigint UNSIGNED NOT NULL,
  `nama_dtype` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_folder` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ipkcs`
--

CREATE TABLE `ipkcs` (
  `id` bigint UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `id_pstat` bigint UNSIGNED NOT NULL,
  `id_ca` bigint UNSIGNED NOT NULL,
  `bin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_ipkc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_ipkc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stats_temp` bigint UNSIGNED DEFAULT NULL,
  `notes_project` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ipkcs`
--

INSERT INTO `ipkcs` (`id`, `waktu_assign_project`, `id_pstat`, `id_ca`, `bin`, `jenis_ipkc`, `no_ipkc`, `stats_temp`, `notes_project`, `last_updated`) VALUES
(1, '2022-01-04 00:00:00', 16, 18, '628106', 'IPKC Live', '22IPKCL-0104001', NULL, NULL, NULL),
(2, '2022-01-07 00:00:00', 16, 18, '628106', 'IPKC Live', '22IPKCL-0107002', NULL, '', NULL),
(3, '2020-11-09 00:00:00', 16, 5, '622024', 'IPKC Test', '20IPKC-1109001', NULL, '', NULL),
(4, '2022-01-11 00:00:00', 16, 69, '627653', 'IPKC Live', '22IPKCL-0111003', NULL, NULL, NULL),
(5, '2022-01-12 00:00:00', 16, 62, '627405', 'Pilih IPKC', '22IPKCL-0112004', NULL, '', NULL),
(6, '2022-01-24 00:00:00', 16, 14, '601923', 'IPKC Live', '22IPKCL-0124005', NULL, '', NULL),
(7, '2022-01-24 00:00:00', 16, 14, '498864', 'IPKC Live', '22IPKCL-0124006', NULL, '', NULL),
(8, '2022-01-24 00:00:00', 16, 14, '489025', 'IPKC Live', '22IPKCL-0124007', NULL, '', NULL),
(9, '2022-01-24 00:00:00', 16, 24, '628148', 'IPKC Live', '22IPKCL-0124008', NULL, '', NULL),
(10, '2022-01-24 00:00:00', 16, 62, '627405', 'IPKC Live', '22IPKCL-0124009', NULL, '', NULL),
(11, '2022-02-14 00:00:00', 16, 32, '627761', 'IPKC Live', '22IPKCL-0214010', NULL, '', NULL),
(12, '2022-02-14 00:00:00', 16, 41, '627427', 'IPKC Live', '22IPKCL-0214012', NULL, '', NULL),
(13, '2022-02-14 00:00:00', 16, 41, '627427', 'IPKC Live', '22IPKCL-0214013', NULL, '', NULL),
(14, '2022-02-16 00:00:00', 16, 32, '627761', 'IPKC Live', '22IPKCL-0216014', NULL, '', NULL),
(15, '2022-02-25 00:00:00', 16, 88, '627142', 'Pilih IPKC', '22IPKCL-0225015', NULL, '', NULL),
(16, '2022-02-25 00:00:00', 16, 88, '627142', 'IPKC Live', '22IPKCL-0225015', NULL, '', NULL),
(17, '2022-03-02 00:00:00', 16, 22, '557791', 'IPKC Live', '22IPKCL-0302016', NULL, '', NULL),
(18, '2022-03-02 00:00:00', 16, 41, '627427', 'IPKC Live', '22IPKCL-0302018', NULL, '', NULL),
(19, '2022-03-02 00:00:00', 23, 22, '589587', 'IPKC Live', '22IPKCL-0302017', NULL, '', NULL),
(20, '2022-03-02 00:00:00', 16, 41, '627427', 'IPKC Live', '22IPKCL-0302018', NULL, '', NULL),
(21, '2022-03-04 00:00:00', 16, 57, '606058', 'IPKC Live', '22IPKCL-0304020', NULL, '', NULL),
(22, '2022-03-04 00:00:00', 16, 85, '507994', 'IPKC Live', '22IPKCL-0304019', NULL, '', NULL),
(23, '2022-03-04 00:00:00', 16, 30, '460221', 'IPKC Live', '22IPKCL-0304021', NULL, '', NULL),
(24, '2022-03-04 00:00:00', 16, 30, '606420', 'IPKC Live', '22IPKCL-0304022', NULL, '', NULL),
(25, '2022-03-04 00:00:00', 16, 30, '460221', 'IPKC Live', '22IPKCL-0304023', NULL, '', NULL),
(26, '2022-03-04 00:00:00', 16, 30, '606420', 'IPKC Test', '22IPKCL-0304024', NULL, '', NULL),
(27, '2022-03-08 00:00:00', 16, 10, '628173', 'IPKC Live', '22IPKCL-0308025', NULL, '', NULL),
(28, '2022-03-10 00:00:00', 16, 94, '608614', 'IPKC Live', '22IPKCL-0310026', NULL, '', NULL),
(29, '2022-03-16 00:00:00', 16, 25, '603844', 'IPKC Live', '22IPKCL-0316027', NULL, '', NULL),
(30, '2022-03-17 00:00:00', 16, 89, '627486', 'IPKC Live', '22IPKCL-0317028', NULL, '', NULL),
(31, '2022-03-21 00:00:00', 16, 95, '608615', 'IPKC Live', '22IPKCL-0321029', NULL, '', NULL),
(32, '2022-03-24 00:00:00', 16, 18, '628106', 'IPKC Live', '22IPKCL-0324030', NULL, '', NULL),
(33, '2022-03-29 00:00:00', 16, 56, '627370', 'IPKC Live', '22IPKCL-0329031', NULL, '', NULL),
(34, '2022-03-30 00:00:00', 16, 92, '627110', 'IPKC Live', '22IPKCL-0330032', NULL, '', NULL),
(35, '2022-04-04 00:00:00', 16, 93, '627791', 'IPKC Live', '22IPKCL-0404033', NULL, '', NULL),
(36, '2022-04-05 00:00:00', 16, 96, '581873', 'IPKC Live', '22IPKCL-0405034', NULL, '', NULL),
(37, '2022-04-07 00:00:00', 16, 29, '627109', 'IPKC Live', '22IPKCL-0407035', NULL, '', NULL),
(38, '2022-04-11 00:00:00', 16, 2, '56143200', 'IPKC Live', '22IPKCL-0411036', NULL, '', NULL),
(39, '2022-04-11 00:00:00', 16, 2, '56143200', 'IPKC Live', '22IPKCL-0411037', NULL, '', NULL),
(40, '2022-04-12 00:00:00', 16, 79, '589875', 'IPKC Live', '22IPKCL-0412038', NULL, '', NULL),
(41, '2022-12-04 00:00:00', 16, 48, '413510', 'IPKC Live', '22IPKCL-0413039', NULL, '', NULL),
(42, '2022-04-13 00:00:00', 16, 48, '413511', 'IPKC Live', '22IPKCL-0413040', NULL, '', NULL),
(43, '2022-04-13 00:00:00', 16, 48, '470670', 'IPKC Live', '22IPKCL-0413041', NULL, '', NULL),
(44, '2022-04-19 00:00:00', 16, 19, '504972', 'IPKC Live', '22IPKCL-0419043', NULL, '', NULL),
(45, '2022-04-20 00:00:00', 16, 5, '622024', 'IPKC Live', '22IPKCL-0420044', NULL, '', NULL),
(46, '2022-04-21 00:00:00', 16, 79, '589875', 'IPKC Live', '22IPKCL-0421045', NULL, '', NULL),
(47, '2022-04-25 00:00:00', 16, 4, '504182', 'IPKC Live', '22IPKCL-0425046', NULL, '', NULL),
(48, '2022-04-26 00:00:00', 16, 54, '581807', 'IPKC Live', '22IPKCL-0426047', NULL, '', NULL),
(49, '2022-04-26 00:00:00', 16, 54, '581807', 'IPKC Live', '22IPKCL-0426048', NULL, '', NULL),
(50, '2022-04-27 00:00:00', 16, 2, '621248', 'IPKC Live', '22IPKCL-0427049', NULL, '', NULL),
(51, '2022-04-27 00:00:00', 16, 2, '621248', 'IPKC Live', '22IPKCL-0427050', NULL, '', NULL),
(52, '2022-04-28 00:00:00', 16, 91, '605960', 'IPKC Live', '22IPKCL-0428051', NULL, '', NULL),
(53, '2022-05-09 00:00:00', 16, 53, '601733', 'IPKC Live', '22IPKCL-0509052', NULL, '', NULL),
(54, '2022-05-12 00:00:00', 16, 83, '627932', 'IPKC Live', '22IPKCL-0512053', NULL, '', NULL),
(55, '2022-05-20 00:00:00', 16, 23, '526414', 'IPKC Live', '22IPKCL-0520054', NULL, '', NULL),
(56, '2022-05-23 00:00:00', 16, 51, '603605', 'IPKC Live', '22IPKCL-0523055', NULL, '', NULL),
(57, '2022-05-24 00:00:00', 16, 99, '627492', 'IPKC Live', '22IPKCL-0524056', NULL, '', NULL),
(58, '2022-05-31 00:00:00', 16, 53, '601733', 'IPKC Live', '22IPKCL-0531057', NULL, '', NULL),
(59, '2022-05-31 00:00:00', 16, 53, '601733', 'IPKC Live', '22IPKCL-0531058', NULL, '', NULL),
(60, '2022-06-03 00:00:00', 16, 98, '585970', 'IPKC Live', '22IPKCL-0603059', NULL, '', NULL),
(61, '2022-06-09 00:00:00', 16, 15, '502995', 'IPKC Live', '22IPKCL-0609060', NULL, '', NULL),
(62, '2022-06-09 00:00:00', 16, 15, '502995', 'IPKC Live', '22IPKCL-0609061', NULL, '', NULL),
(63, '2022-06-09 00:00:00', 16, 100, '601592', 'IPKC Live', '22IPKCL-0609062', NULL, '', NULL),
(64, '2022-06-13 00:00:00', 16, 87, '63984500', 'IPKC Live', '22IPKCL-0613063', NULL, '', NULL),
(65, '2022-06-16 00:00:00', 16, 1, '639169', 'IPKC Live', '22IPKCL-0616064', NULL, '', NULL),
(66, '2022-06-17 00:00:00', 16, 65, '627451', 'IPKC Live', '22IPKCL-0617065', NULL, '', NULL),
(67, '2022-06-22 00:00:00', 16, 101, '627934', 'IPKC Live', '22IPKCL-0622066', NULL, '', NULL),
(68, '2022-06-23 00:00:00', 23, 2, '56143200', 'IPKC Live', '22IPKCL-0623067', NULL, '', NULL),
(69, '2022-06-23 00:00:00', 23, 2, '56143200', 'IPKC Live', '22IPKCL-0623068', NULL, '', NULL),
(70, '2022-06-23 00:00:00', 16, 82, '426254', 'IPKC Live', '22IPKCL-0623069', NULL, '', NULL),
(71, '2022-06-23 00:00:00', 16, 82, '464005', 'IPKC Live', '22IPKCL-0623070', NULL, '', NULL),
(72, '2022-06-23 00:00:00', 16, 82, '471295', 'IPKC Live', '22IPKCL-0623071', NULL, '', NULL),
(73, '2022-06-23 00:00:00', 16, 82, '476334', 'IPKC Live', '22IPKCL-0623072', NULL, '', NULL),
(74, '2022-06-23 00:00:00', 16, 82, '589385', 'IPKC Live', '22IPKCL-0623073', NULL, '', NULL),
(75, '2022-06-23 00:00:00', 16, 23, '601874', 'IPKC Live', '22IPKCL-0623074', NULL, '', NULL),
(76, '2022-06-28 00:00:00', 16, 68, '504710', 'IPKC Live', '22IPKCL-0628075', NULL, '', NULL),
(77, '2022-06-29 00:00:00', 23, 2, '621248', 'IPKC Live', '22IPKCL-0629076', NULL, '', NULL),
(78, '2022-06-29 00:00:00', 23, 2, '621248', 'IPKC Live', '22IPKCL-0629077', NULL, '', NULL),
(79, '2022-06-29 00:00:00', 16, 8, '194632', 'IPKC Live', '22IPKCL-0629078', NULL, '', NULL),
(80, '2022-06-29 00:00:00', 16, 8, '194634', 'IPKC Live', '22IPKCL-0629079', NULL, '', NULL),
(81, '2022-06-29 00:00:00', 16, 8, '194680', 'IPKC Live', '22IPKCL-0629080', NULL, '', NULL),
(82, '2022-06-29 00:00:00', 16, 8, '194681', 'IPKC Live', '22IPKCL-0629081', NULL, '', NULL),
(83, '2022-06-29 00:00:00', 16, 8, '194683', 'IPKC Live', '22IPKCL-0629082', NULL, '', NULL),
(84, '2022-06-29 00:00:00', 16, 8, '194686', 'IPKC Live', '22IPKCL-0629083', NULL, '', NULL),
(85, '2022-06-29 00:00:00', 16, 8, '194687', 'IPKC Live', '22IPKCL-0629084', NULL, '', NULL),
(86, '2022-06-29 00:00:00', 16, 8, '194690', 'IPKC Live', '22IPKCL-0629085', NULL, '', NULL),
(87, '2022-06-29 00:00:00', 16, 8, '194698', 'IPKC Live', '22IPKCL-0629086', NULL, '', NULL),
(88, '2022-06-29 00:00:00', 16, 8, '222938', 'IPKC Live', '22IPKCL-0629087', NULL, '', NULL),
(89, '2022-06-29 00:00:00', 16, 8, '222945', 'IPKC Live', '22IPKCL-0629088', NULL, '', NULL),
(90, '2022-06-29 00:00:00', 16, 8, '510142', 'IPKC Live', '22IPKCL-0629089', NULL, '', NULL),
(91, '2022-06-29 00:00:00', 16, 8, '510663', 'IPKC Live', '22IPKCL-0629090', NULL, '', NULL),
(92, '2022-06-29 00:00:00', 16, 8, '513718', 'IPKC Live', '22IPKCL-0629091', NULL, '', NULL),
(93, '2022-06-29 00:00:00', 16, 8, '517678', 'IPKC Live', '22IPKCL-0629092', NULL, '', NULL),
(94, '2022-06-29 00:00:00', 16, 8, '517863', 'IPKC Live', '22IPKCL-0629093', NULL, '', NULL),
(95, '2022-06-29 00:00:00', 16, 8, '517885', 'IPKC Live', '22IPKCL-0629094', NULL, '', NULL),
(96, '2022-06-29 00:00:00', 16, 8, '517892', 'IPKC Live', '22IPKCL-0629095', NULL, '', NULL),
(97, '2022-06-29 00:00:00', 16, 8, '518679', 'IPKC Live', '22IPKCL-0629096', NULL, '', NULL),
(98, '2022-06-29 00:00:00', 16, 8, '519730', 'IPKC Live', '22IPKCL-0629097', NULL, '', NULL),
(99, '2022-06-29 00:00:00', 16, 8, '519893', 'IPKC Live', '22IPKCL-0629098', NULL, '', NULL),
(100, '2022-06-29 00:00:00', 16, 8, '524511', 'IPKC Test', '22IPKCL-0629099', NULL, '', NULL),
(101, '2022-06-29 00:00:00', 16, 8, '524559', 'IPKC Live', '22IPKCL-0629100', NULL, '', NULL),
(102, '2022-06-29 00:00:00', 16, 8, '526422', 'IPKC Live', '22IPKCL-0629101', NULL, '', NULL),
(103, '2022-06-29 00:00:00', 16, 8, '526423', 'IPKC Live', '22IPKCL-0629102', NULL, '', NULL),
(104, '2022-06-29 00:00:00', 16, 8, '526921', 'IPKC Live', '22IPKCL-0629103', NULL, '', NULL),
(105, '2022-06-29 00:00:00', 16, 8, '532668', 'IPKC Live', '22IPKCL-0629104', NULL, '', NULL),
(106, '2022-06-29 00:00:00', 16, 8, '537176', 'IPKC Live', '22IPKCL-0629105', NULL, '', NULL),
(107, '2022-06-29 00:00:00', 16, 8, '557577', 'IPKC Live', '22IPKCL-0629106', NULL, '', NULL),
(108, '2022-06-29 00:00:00', 16, 8, '601004', 'IPKC Live', '22IPKCL-0629107', NULL, '', NULL),
(109, '2022-06-29 00:00:00', 16, 8, '999460', 'IPKC Live', '22IPKCL-0629108', NULL, '', NULL),
(110, '2022-07-01 00:00:00', 16, 62, '627405', 'IPKC Live', '22IPKCL-0701109', NULL, '', NULL),
(111, '2022-07-11 00:00:00', 16, 31, '510481', 'IPKC Live', '22IPKCL-0711110', NULL, '', NULL),
(112, '2022-07-11 00:00:00', 16, 31, '531810', 'IPKC Live', '22IPKCL-0711111', NULL, '', NULL),
(113, '2022-07-11 00:00:00', 16, 31, '559751', 'IPKC Live', '22IPKCL-0711112', NULL, '', NULL),
(114, '2022-07-11 00:00:00', 16, 31, '589450', 'IPKC Live', '22IPKCL-0711113', NULL, '', NULL),
(115, '2022-07-12 00:00:00', 16, 7, '636184', 'IPKC Live', '22IPKCL-0712114', NULL, '', NULL),
(116, '2022-07-19 00:00:00', 16, 102, '627879', 'IPKC Live', '22IPKCL-0719115', NULL, '', NULL),
(117, '2022-07-20 00:00:00', 16, 56, '627370', 'IPKC Live', '22IPKCL-0720116', NULL, '', NULL),
(119, '2022-08-26 00:00:00', 16, 104, '511875', 'IPKC Test', '22IPKCT-0826139', NULL, '', NULL),
(120, '2022-08-26 00:00:00', 16, 104, '601780', 'IPKC Test', '22IPKCT-0826140', NULL, '', NULL),
(121, '2022-07-27 00:00:00', 16, 54, '581807', 'IPKC Live', '22IPKCL-0727117', NULL, '', NULL),
(122, '2022-07-27 00:00:00', 16, 54, '581807', 'IPKC Live', '22IPKCL-0727118', NULL, '', NULL),
(123, '2022-07-29 00:00:00', 16, 86, '539371', 'IPKC Live', '22IPKCL-0729119', NULL, '', NULL),
(124, '2022-08-11 00:00:00', 16, 41, '627427', 'IPKC Live', '22IPKCL-0801120', NULL, '', NULL),
(125, '2022-08-03 00:00:00', 23, 54, '581807', 'IPKC Live', '22IPKCL-0803121', NULL, '', NULL),
(126, '2022-08-03 00:00:00', 16, 54, '581807', 'IPKC Live', '22IPKCL-0803122', NULL, '', NULL),
(127, '2022-08-04 00:00:00', 16, 103, '517415', 'IPKC Live', '22IPKCL-0804123', NULL, '', NULL),
(128, '2022-08-04 00:00:00', 16, 103, '532595', 'IPKC Live', '22IPKCL-0804124', NULL, '', NULL),
(129, '2022-08-04 00:00:00', 16, 103, '537689', 'IPKC Live', '22IPKCL-0804125', NULL, '', NULL),
(130, '2022-08-04 00:00:00', 16, 103, '601378', 'IPKC Live', '22IPKCL-0804126', NULL, '', NULL),
(131, '2022-08-04 00:00:00', 16, 103, '517415', 'IPKC Live', '22IPKCL-0804127', NULL, '', NULL),
(132, '2022-08-04 00:00:00', 16, 103, '532595', 'IPKC Live', '22IPKCL-0804128', NULL, '', NULL),
(133, '2022-08-04 00:00:00', 16, 103, '537689', 'IPKC Live', '22IPKCL-0804129', NULL, '', NULL),
(134, '2022-08-04 00:00:00', 16, 103, '601378', 'IPKC Live', '22IPKCL-0804130', NULL, '', NULL),
(135, '2022-08-10 00:00:00', 16, 1, '493828', 'IPKC Live', '22IPKCL-0810131', NULL, '', NULL),
(136, '2022-08-10 00:00:00', 16, 32, '627761', 'IPKC Live', '22IPKCL-0810132', NULL, '', NULL),
(137, '2022-08-11 00:00:00', 16, 97, '56142600', 'IPKC Live', '22IPKCL-0811133', NULL, '', NULL),
(138, '2022-08-29 00:00:00', 16, 105, '506947', 'IPKC Live', '22IPKCL-0829134', NULL, '', NULL),
(139, '2022-08-29 00:00:00', 16, 105, '506947', 'IPKC Test', '22IPKCT-0829141', NULL, '', NULL),
(140, '2022-08-30 00:00:00', 23, 106, '503576', 'IPKC Live', '22IPKCL-0830135', NULL, '', NULL),
(142, '2022-09-01 00:00:00', 16, 1, '493828', 'IPKC Live', '22IPKCL-0901136', NULL, '', NULL),
(143, '2022-09-01 00:00:00', 16, 1, '493828', 'IPKC Test', '22IPKCT-0901142', NULL, '', NULL),
(144, '2022-01-03 00:00:00', 16, 78, '180581', 'IPKC Test', '22IPKCT-0103001', NULL, '', NULL),
(145, '2022-01-07 00:00:00', 16, 86, '539371', 'IPKC Test', '22IPKCT-0107002', NULL, '', NULL),
(146, '2022-01-11 00:00:00', 16, 5, '622024', 'IPKC Test', '22IPKCT-0111003', NULL, '', NULL),
(147, '2022-01-12 00:00:00', 16, 62, '627405', 'IPKC Test', '22IPKCT-0112004', NULL, '', NULL),
(148, '2022-01-18 00:00:00', 16, 78, '180581', 'IPKC Test', '22IPKCT-0118005', NULL, '', NULL),
(149, '2022-01-24 00:00:00', 16, 14, '601923', 'IPKC Test', '22IPKCT-0124006', NULL, '', NULL),
(150, '2022-01-24 00:00:00', 16, 14, '498864', 'IPKC Test', '22IPKCT-0124007', NULL, '', NULL),
(151, '2022-01-24 00:00:00', 16, 14, '489025', 'IPKC Test', '22IPKCT-0124008', NULL, '', NULL),
(152, '2022-01-24 00:00:00', 16, 62, '627405', 'IPKC Test', '22IPKCT-0124009', NULL, '', NULL),
(153, '2022-01-26 00:00:00', 16, 90, '504986', 'IPKC Test', '22IPKCT-0126010', NULL, '', NULL),
(154, '2022-01-26 00:00:00', 16, 3, '484777', 'IPKC Test', '22IPKCT-0126011', NULL, '', NULL),
(155, '2022-01-26 00:00:00', 16, 3, '621445', 'IPKC Test', '22IPKCT-0126012', NULL, '', NULL),
(156, '2022-01-26 00:00:00', 16, 3, '639687', 'IPKC Test', '22IPKCT-0126013', NULL, '', NULL),
(157, '2022-01-26 00:00:00', 16, 83, '627932', 'IPKC Test', '22IPKCT-0126014', NULL, '', NULL),
(158, '2022-01-27 00:00:00', 23, 69, '627653', 'IPKC Test', '22IPKCT-0127015', NULL, '', NULL),
(159, '2022-02-20 00:00:00', 16, 25, '603844', 'Pilih IPKC', '22IPKCT-0202016', NULL, '', NULL),
(160, '2022-09-01 00:00:00', 16, 28, '539927', 'IPKC Live', '22IPKCL-0901637', NULL, '', NULL),
(161, '2022-09-01 00:00:00', 16, 28, '552355', 'IPKC Live', '22IPKCL-0901638', NULL, '', NULL),
(162, '2022-09-01 00:00:00', 16, 28, '589798', 'IPKC Live', '22IPKCL-0901639', NULL, '', NULL),
(163, '2022-02-02 00:00:00', 16, 25, '603844', 'IPKC Test', '22IPKCT-0202016', NULL, '', NULL),
(164, '2022-02-03 00:00:00', 16, 48, '413510', 'IPKC Test', '22IPKCT-0203017', NULL, '', NULL),
(165, '2022-02-03 00:00:00', 16, 48, '413511', 'IPKC Test', '22IPKCT-0203018', NULL, '', NULL),
(166, '2022-02-03 00:00:00', 16, 48, '470670', 'IPKC Test', '22IPKCT-0203019', NULL, '', NULL),
(167, '2022-02-03 00:00:00', 16, 48, '627452', 'IPKC Test', '22IPKCT-0203020', NULL, '', NULL),
(168, '2022-02-04 00:00:00', 16, 87, '63984500', 'IPKC Test', '22IPKCT-0204021', NULL, '', NULL),
(169, '2022-02-11 00:00:00', 16, 58, '517417', 'IPKC Test', '22IPKCT-0211022', NULL, '', NULL),
(170, '2022-02-11 00:00:00', 16, 58, '521102', 'IPKC Test', '22IPKCT-0211023', NULL, '', NULL),
(171, '2022-02-11 00:00:00', 16, 58, '530487', 'IPKC Test', '22IPKCT-0211024', NULL, '', NULL),
(172, '2022-02-11 00:00:00', 16, 58, '532713', 'IPKC Test', '22IPKCT-0211025', NULL, '', NULL),
(173, '2022-02-11 00:00:00', 16, 58, '557692', 'IPKC Test', '22IPKCT-0211026', NULL, '', NULL),
(174, '2022-02-11 00:00:00', 16, 58, '589929', 'IPKC Test', '22IPKCT-0211027', NULL, '', NULL),
(175, '2022-02-14 00:00:00', 16, 32, '627761', 'IPKC Test', '22IPKCT-0214028', NULL, '', NULL),
(176, '2022-02-14 00:00:00', 16, 41, '627427', 'IPKC Test', '22IPKCT-0214029', NULL, '', NULL),
(177, '2022-02-14 00:00:00', 16, 41, '627427', 'IPKC Test', '22IPKCT-0214030', NULL, '', NULL),
(178, '2022-02-14 00:00:00', 16, 41, '627427', 'IPKC Test', '22IPKCT-0214031', NULL, '', NULL),
(179, '2022-02-16 00:00:00', 16, 32, '627761', 'IPKC Test', '22IPKCT-0216032', NULL, '', NULL),
(180, '2022-02-16 00:00:00', 16, 92, '627110', 'IPKC Test', '22IPKCT-0216033', NULL, '', NULL),
(182, '2022-02-17 00:00:00', 16, 92, '627109', 'IPKC Test', '22IPKCT-0217034', NULL, '', NULL),
(183, '2022-02-18 00:00:00', 16, 89, '627486', 'IPKC Test', '22IPKCT-0218035', NULL, '', NULL),
(184, '2022-02-22 00:00:00', 16, 91, '605960', 'IPKC Test', '22IPKCT-0222036', NULL, '', NULL),
(185, '2022-03-02 00:00:00', 16, 22, '557791', 'IPKC Test', '22IPKCT-0302037', NULL, '', NULL),
(186, '2022-03-02 00:00:00', 16, 93, '627791', 'IPKC Test', '22IPKCT-0302040', NULL, '', NULL),
(187, '2022-03-04 00:00:00', 16, 57, '606058', 'IPKC Test', '22IPKCT-0304041', NULL, '', NULL),
(188, '2023-01-02 00:00:00', 16, 49, '504948', 'IPKC Test', '23IPKCT-0102001', NULL, 'KKPD', NULL),
(189, '2023-01-02 00:00:00', 16, 25, '603844', 'IPKC Test', '23IPKCT-0102002', NULL, 'KKPD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_07_10_000001_create_documents_types_table', 1),
(2, '2020_07_10_000001_create_products_table', 1),
(3, '2020_07_10_000001_create_projects_keterangan_table', 1),
(4, '2020_07_10_000001_create_projects_stats_table', 1),
(5, '2020_07_10_000001_create_projects_types_table', 1),
(6, '2020_07_10_000001_create_users_levels_table', 1),
(7, '2020_07_13_000003_create_users_table', 1),
(8, '2020_07_14_044241_create_mitras_table', 1),
(9, '2020_07_14_044807_create_projects_table', 1),
(10, '2020_07_14_045611_create_documents_table', 1),
(11, '2020_07_14_090455_create_foreign_keys_for_users_table', 1),
(12, '2020_07_14_100023_create_foreign_keys_for_projects_table', 1),
(13, '2020_07_14_100308_create_foreign_keys_for_documents_table', 1),
(14, '2021_11_03_074750_create_documents_categories_table', 1),
(15, '2021_11_03_075345_create_foreign_keys_for_documents_types_table', 1),
(16, '2022_06_29_085732_create_qrisspeks_table', 1),
(17, '2022_06_29_085806_create_qris_table', 1),
(18, '2022_06_29_085850_create_foreign_keys_for_qris_table', 1),
(19, '2022_06_29_085914_create_foreign_keys_for_qrisspeks_table', 1),
(20, '2022_07_08_134638_create_cas_table', 1),
(21, '2022_07_08_134716_create_ipkcs_table', 1),
(22, '2022_07_08_134754_create_foreign_keys_for_ipkcs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_mitra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keanggotaan` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pic` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_agreement` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_numb` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_anggota` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mitras`
--

INSERT INTO `mitras` (`id`, `nama_mitra`, `jenis`, `keanggotaan`, `alamat`, `nama_pic`, `email`, `data_agreement`, `reg_numb`, `no_anggota`, `added_by`, `modified_by`) VALUES
(1, 'Datecs Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0524007', '180312001', NULL, 'RBB', NULL),
(2, 'Beijing Weipass Panorama Information Technology Co.,Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906003', '180312002', NULL, 'RBB', NULL),
(3, 'NXP Semiconductors Netherlands B.V.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906002', '180314003', NULL, 'RBB', NULL),
(4, 'PT Bank DBS Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180409001', NULL, 'RBB', NULL),
(5, 'PT Bank KB Bukopin Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180410001', NULL, 'RBB', NULL),
(6, 'Sunmi Technology', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0311003', '180412001', NULL, 'RBB', NULL),
(7, 'PT Bank KEB Hana Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180416001', NULL, 'RBB', NULL),
(8, 'PT Bank Mandiri (Persero) Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180416009', NULL, 'RBB', NULL),
(9, 'BANK OF CHINA(BOC)', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180424010', NULL, 'RBB', NULL),
(10, 'PT BPD Riau Kepri.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180427011', NULL, 'RBB', 'RBB'),
(11, 'BBPOS', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1019009', '180502012', NULL, 'RBB', NULL),
(12, 'PT. Bank Commonwealth', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180503013', NULL, 'RBB', NULL),
(13, 'GRG Banking Equipment Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906001', '180503014', NULL, 'RBB', NULL),
(14, 'Bluebird Inc.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906004', '180507015', NULL, 'RBB', NULL),
(15, 'Gemalto', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1211016', '180508016', NULL, 'RBB', NULL),
(16, 'PT Bank Tabungan Negara (Persero) Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180515017', NULL, 'RBB', NULL),
(17, 'PT. Bank ICBC Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180516018', NULL, 'RBB', NULL),
(18, 'PT BPD Sumatera Selatan dan Bangka Belitung', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180517019', NULL, 'RBB', 'RBB'),
(19, 'PAX Computer Technology (Shenzhen) Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906005', '180521020', NULL, 'RBB', NULL),
(20, 'Hengbao International Pte Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-1212009', '180521021', NULL, 'RBB', NULL),
(21, 'PT BANK SYARIAH MANDIRI', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180521022', NULL, 'RBB', NULL),
(22, 'PT Bank Permata Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180521023', NULL, 'RBB', NULL),
(23, 'PT Bank Tabungan Pensiunan Nasional Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180522024', NULL, 'RBB', 'RBB'),
(24, 'Cynovo Inc', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1019008', '180523025', NULL, 'RBB', NULL),
(25, 'PT Bank BTPN Syariah Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180524026', NULL, 'RBB', NULL),
(26, 'PT BPD NUSA TENGGARA BARAT', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180530027', NULL, 'RBB', 'RBB'),
(27, 'PT. Bank Neo Commerce TBK (Yuda Bhakti)', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180530028', NULL, 'RBB', NULL),
(28, 'OKI Electic Industry Co', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1005006', '180622029', NULL, 'RBB', 'RBB'),
(29, 'Worldline', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1128014', '180702030', NULL, 'RBB', NULL),
(30, 'PT BPD Kalimantan Selatan', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180704031', NULL, 'RBB', 'RBB'),
(31, 'PT BPD DKI JAKARTA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180704032', NULL, 'RBB', 'RBB'),
(32, 'PT. Bank Panin Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180706033', NULL, 'RBB', NULL),
(33, 'Shenzhen Xinguodu Technology Co.,Ltd (Nexgo)', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0813007', '180711034', NULL, 'RBB', NULL),
(34, 'Jayasmart Technology', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '180711035', NULL, 'RBB', NULL),
(35, 'PT BPD Kalimantan Timur dan Kalimantan Utara', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180716036', NULL, 'RBB', 'RBB'),
(36, 'Poynt Co.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '180723037', NULL, 'RBB', NULL),
(37, 'PT. Bank Nationalnobu Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180724038', NULL, 'RBB', NULL),
(38, 'Korala Associated Limited', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1024010', '180807039', NULL, 'RBB', NULL),
(39, 'PT. Bank Central Asia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180807040', NULL, 'RBB', NULL),
(40, 'Castles Technology Singapore Pte Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0326005', '180807041', NULL, 'RBB', NULL),
(41, 'Hitachi-Omron Terminal Solutions, Corp/Hitachi Channel Solutions Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0131001', '180807042', NULL, 'RBB', NULL),
(42, 'PT. Idemia Technologies Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1126013', '180808043', NULL, 'RBB', NULL),
(43, 'PT BPD Aceh Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180824044', NULL, 'RBB', 'RBB'),
(44, 'PT BANK MANDIRI TASPEN', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180827045', NULL, 'RBB', NULL),
(45, 'PT BPD Jambi', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180829046', NULL, 'RBB', 'RBB'),
(46, 'PT. Bank Rakyat Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180830047', NULL, 'RBB', NULL),
(47, 'PT BPD Bali', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180830048', NULL, 'RBB', 'RBB'),
(48, 'Verifone System International Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1106012', '180831049', NULL, 'RBB', NULL),
(49, 'PT BPD Bengkulu', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180903050', NULL, 'RBB', 'RBB'),
(50, 'PT. BPR Semoga Jaya Artha', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180904051', NULL, 'RBB', NULL),
(51, 'PT BPD SUMATERA BARAT', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180907052', NULL, 'RBB', 'RBB'),
(52, 'WizarPOS International Co., Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1214017', '180910053', NULL, 'RBB', NULL),
(53, 'PT. Bank Woori Saudara Indonesia 1906, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180914054', NULL, 'RBB', NULL),
(54, 'PT. Cardsindo Tiga Perkasa', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '180924055', NULL, 'RBB', NULL),
(55, 'PT. Bank OCBC NISP, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180925056', NULL, 'RBB', NULL),
(56, 'PT BPD SUMATERA UTARA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180925057', NULL, 'RBB', 'RBB'),
(57, 'Shenzhen Yihua Computer Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1214018', '180925058', NULL, 'RBB', NULL),
(58, 'PT BPD Jawa Barat dan Banten, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180927059', NULL, 'RBB', 'RBB'),
(59, 'PT Bank UOB Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181003060', NULL, 'RBB', NULL),
(60, 'PT VALID TECHNOLOGIES INDONESIA', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1026011', '181005061', NULL, 'RBB', NULL),
(61, 'NEW POS Technology Limited', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1017007', '181011062', NULL, 'RBB', NULL),
(62, 'PT Bank Muamalat Indonesisa, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181015063', NULL, 'RBB', NULL),
(63, 'PT BPD BANTEN, TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181015064', NULL, 'RBB', 'RBB'),
(64, 'PT. Bank SBI Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181018065', NULL, 'RBB', NULL),
(65, 'PT. JASUINDO TIGA PERKASA, TBK.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '181023066', NULL, 'RBB', NULL),
(66, 'PT. Bank Rakyat Indonesia Agroniaga, Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181024067', NULL, 'RBB', NULL),
(67, 'PT. Bank Bukopin, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181024068', NULL, 'RBB', 'RBB'),
(68, 'PT. BPR Sri Artha Lestari', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181026069', NULL, 'RBB', NULL),
(69, 'PT BPD KALIMANTAN BARAT', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181030070', NULL, 'RBB', 'RBB'),
(70, 'PT. Cipta Srigati Lestari', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '181105071', NULL, 'RBB', NULL),
(71, 'PT. Bank Danamon Indonesia, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181105072', NULL, 'RBB', NULL),
(72, 'PT. BPR LESTARI BALI', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181113073', NULL, 'RBB', NULL),
(73, 'PT. BPR Hasamitra', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123074', NULL, 'RBB', NULL),
(74, 'PT. BPR Barelang Mandiri', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123075', NULL, 'RBB', NULL),
(75, 'PT BPD Sulawesi Tenggara', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123076', NULL, 'RBB', 'RBB'),
(76, 'PT. Bank QNB Indonesia Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123077', NULL, 'RBB', NULL),
(77, 'PT. WAHYU KARTUMASINDO INTERNATIONAL', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1130015', '181126078', NULL, 'RBB', NULL),
(78, 'PT. BPR Jatim', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181129079', NULL, 'RBB', NULL),
(79, 'PT. Bank Mega Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181204080', NULL, 'RBB', NULL),
(80, 'Shanghai Smartpeak Technology Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0507006', '181204081', NULL, 'RBB', NULL),
(81, 'PT BPD MALUKU DAN MALUKU UTARA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181205082', NULL, 'RBB', 'RBB'),
(82, 'Fujian Landi Commercial Equipment Co., Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0827008', '181214083', NULL, 'RBB', NULL),
(83, 'Fujian Centerm Information Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0701002', '181217084', NULL, 'RBB', NULL),
(84, 'PT BPD Kalimantan Tengah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190109085', NULL, 'RBB', 'RBB'),
(85, 'PT. Bank Multiarta Sentosa', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190111001', NULL, 'RBB', NULL),
(86, 'PT. BANK INA PERDANA TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190119002', NULL, 'RBB', NULL),
(87, 'UL Verification Services Pte Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0206001', '190206003', NULL, 'RBB', NULL),
(88, 'PT BPD JAWA TENGAH', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190218004', NULL, 'RBB', 'RBB'),
(89, 'PT. BPR Danagung Ramulti', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190222005', NULL, 'RBB', NULL),
(90, 'PT. BPR Danagung Abadi', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190222006', NULL, 'RBB', NULL),
(91, 'PT. BPR Danagung Bakti', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190222007', NULL, 'RBB', NULL),
(92, 'Kona I Co. Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0314004', '190314004', NULL, 'RBB', NULL),
(93, 'PT. Bank Amar Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190326008', NULL, 'RBB', NULL),
(94, 'Feitian Technologies Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0114003', '190401009', NULL, 'RBB', NULL),
(95, 'PT BPD Papua', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190418009', NULL, 'RBB', 'RBB'),
(96, 'PT. Bank Negara Indonesia (Persero) Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190422010', NULL, 'RBB', NULL),
(97, 'PT. Bank Agris', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190503011', NULL, 'RBB', NULL),
(98, 'PT. BPR Surya Yudhakencana', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190528012', NULL, 'RBB', NULL),
(99, 'PT BPD Jabar Banten Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190614013', NULL, 'RBB', 'RBB'),
(100, 'PT. BPR Surya Yudha', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190618014', NULL, 'RBB', NULL),
(101, 'Shenzhen ZCS Technology Co.,Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '190719015', NULL, 'RBB', NULL),
(102, 'PT. Bank Ganesha Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190723016', NULL, 'RBB', NULL),
(103, 'PT Bank Maybank Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190729017', NULL, 'RBB', NULL),
(104, 'PT Bank Dinar Indonesia Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190806018', NULL, 'RBB', NULL),
(105, 'Standard Chartered Bank', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190814019', NULL, 'RBB', NULL),
(106, 'Cashway Fintech Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0412011', '190816020', NULL, 'RBB', NULL),
(107, 'PT Bank Sinarmas Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190819021', NULL, 'RBB', 'RBB'),
(108, 'PT. Bank Oke Indonesia Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190826022', NULL, 'RBB', NULL),
(109, 'PT Bank HSBC Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190828028', NULL, 'RBB', NULL),
(110, 'PT BPD SULAWESI SELATAN DAN SULAWESI BARAT', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190905029', NULL, 'RBB', 'RBB'),
(111, 'PT. BPR Surya Yudha.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190911030', NULL, 'RBB', NULL),
(112, 'Ubivelox Inc.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0701001', '190918031', NULL, 'RBB', NULL),
(113, 'PT LEN INDUSTRI', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '191001032', NULL, 'RBB', NULL),
(114, 'PT Bank Mega', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '191023033', NULL, 'RBB', NULL),
(115, 'Fujian Newland Payment Technology Co. Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0608005', '191106034', NULL, 'RBB', NULL),
(116, 'Shenzhen Topwise Communication Co. Ltd,', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-1210008', '191107035', NULL, 'RBB', NULL),
(117, 'Wuhan Tianyu Information Industry Co. Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '22CON-0302001', '191107036', NULL, 'RBB', NULL),
(118, 'PT. Pura Barutama', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '191125037', NULL, 'RBB', NULL),
(119, 'Citibank, N.A.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '191126038', NULL, 'RBB', NULL),
(120, 'Dspread Technology (Beijing) Inc.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0212004', '200212001', NULL, 'RBB', NULL),
(121, 'PT. Watchdata Technologies Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0611006', '200604002', NULL, 'RBB', NULL),
(122, 'PT Bank Bumi Arta Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200605003', NULL, 'RBB', 'RBB'),
(123, 'PT Bank Jago TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200619004', NULL, 'RBB', NULL),
(124, 'Hyosung TNS Inc', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0415013', '200630005', NULL, 'RBB', NULL),
(125, 'PT BPD Yogyakarta', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200727006', NULL, 'RBB', 'RBB'),
(126, 'PT Bank Panin Dubai Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200828007', NULL, 'RBB', NULL),
(127, 'PT. NCR INDONESIA', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-1105007', '200918008', NULL, 'RBB', NULL),
(128, 'Fujian Morefun Electronic Technology Co. Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-1221009', '201106009', NULL, 'RBB', NULL),
(129, 'Vanstone Electronic (Beijing) Co, Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0412012', '201106010', NULL, 'RBB', NULL),
(130, 'PT. Bank Perkreditan Rakyat Dana Nusantara', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '201106011', NULL, 'RBB', NULL),
(131, 'PT BANK MAYORA (HIBANK)', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '201120012', NULL, 'RBB', 'RBB'),
(132, 'PT. BPR PALU LOKADANA UTAMA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '201204013', NULL, 'RBB', NULL),
(133, 'PT BANK NET INDONESIA SYARIAH TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210104001', NULL, 'RBB', NULL),
(134, 'PT Ingenico International Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0412010', '210104002', NULL, 'RBB', NULL),
(135, 'PT Bank BCA Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210104003', NULL, 'RBB', NULL),
(136, 'PT Bank CTBC Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210208004', NULL, 'RBB', NULL),
(137, 'PT. BPR MODERN EXPRESS', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210215005', NULL, 'RBB', NULL),
(138, 'PT BANK JASA JAKARTA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210323006', NULL, 'RBB', NULL),
(139, 'PT BANK MAYAPADA INTERNASIONAL TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210326007', NULL, 'RBB', NULL),
(140, 'PT Diebold Nixdorf Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0810014', '210329008', NULL, 'RBB', NULL),
(141, 'PT BANK SHINHAN INDONESIA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210331009', NULL, 'RBB', NULL),
(142, 'PT BPD Sulawesi Tengah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210407010', NULL, 'RBB', 'RBB'),
(143, 'PT Bank Sahabat Sampoerna', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210407011', NULL, 'RBB', NULL),
(144, 'PT. BANK INDEX SELINDO', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210528012', NULL, 'RBB', NULL),
(145, 'PT Bank Maspion Indonesia, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210608013', NULL, 'RBB', NULL),
(146, 'PT Bank CIMB Niaga Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210609014', NULL, 'RBB', NULL),
(147, 'PT Bank Syariah Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210614015', NULL, 'RBB', NULL),
(148, 'PT. BPR IRIAN SENTOSA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210729016', NULL, 'RBB', NULL),
(149, 'PT. Bank Capital Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210816017', NULL, 'RBB', NULL),
(150, 'PT. BPR Modern Makassar', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210913018', NULL, 'RBB', NULL),
(151, 'PT. BPR Modern Ternate', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210914019', NULL, 'RBB', NULL),
(152, 'PT. BPR Modern Papua', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210914020', NULL, 'RBB', NULL),
(153, 'PT Bank Victoria International Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '211006021', NULL, 'RBB', NULL),
(154, 'PT BPR DANA RAYA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '211006022', NULL, 'RBB', NULL),
(155, 'Urovo Technology Co. Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '211021023', NULL, 'RBB', NULL),
(156, 'PT BPR BANK SLEMAN (PERSERODA)', 'Bank', 'Non Anggota', NULL, NULL, NULL, NULL, '211021024', NULL, 'RBB', 'RBB'),
(157, 'PT BANK DIGITAL BCA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '211109025', NULL, 'RBB', NULL),
(158, 'PT Verifone Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-1130015', '211122026', NULL, 'RBB', NULL),
(159, 'Alioth Limited Liability Company', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '211202027', NULL, 'RBB', NULL),
(160, 'PT Bank Lampung', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '211210028', NULL, 'RBB', NULL),
(161, 'PT BANK SULUTGO', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220103001', NULL, 'RBB', NULL),
(162, 'PT BPD NUSA TENGGARA TIMUR', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220222002', NULL, 'RBB', 'RBB'),
(163, 'SZZT Electronics Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '220225003', NULL, 'RBB', NULL),
(164, 'PT BPD JAWA TIMUR, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220308004', NULL, 'RBB', 'RBB'),
(165, 'PT Bank J Trust Indonesia Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220314005', NULL, 'RBB', NULL),
(166, 'PT Bank SeaBank Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220408006', NULL, 'RBB', NULL),
(167, 'PT Norxel Teknologi Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '220411007', NULL, 'RBB', NULL),
(168, 'PT Espay Debit Indonesia Koe (DANA)', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(169, 'PT ALTO NETWORK', 'Switching', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', 'RBB'),
(170, 'PT ARTAJASA PEMBAYARAN ELEKTRONIS', 'Switching', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', 'RBB'),
(171, 'PT JALIN PEMBAYARAN NUSANTARA', 'Switching', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(172, 'PT RINTIS SEJAHTERA', 'Switching', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(173, 'PT AIRPAY INTERNASIONAL INDONESIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(174, 'PT ASTRA DIGITAL ARTHA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(175, 'PT BIMASAKTI MULTI SINERGI', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(176, 'PT BLUEPAY DIGITAL INTERNASIONAL', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(177, 'PT BUANA MEDIA TEKNOLOGI', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(178, 'PT CAKRA ULTIMA SEJAHTERA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(179, 'PT DATACELL INFOMEDIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(180, 'PT DOMPET ANAK BANGSA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(181, 'PT E2PAY GLOBAL UTAMA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(182, 'PT EZEELINK INDONESIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(183, 'PT FINNET INDONESIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(184, 'PT FINTEK KARYA NUSANTARA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(185, 'PT INTI DUNIA SUKSES', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(186, 'PT MAX INTERACTIVES TECHNOLOGIES (Zipay)', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(187, 'PT MNC TEKNOLOGI NUSANTARA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(188, 'PT NETZME KREASI INDONESIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(189, 'PT NUSA SATU INTI ARTHA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(190, 'PT PAPRIKA MULTI MEDIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(191, 'PT RPAY FINANSIAL DIGITAL INDONESIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(192, 'PT SARANA PACTINDO', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(193, 'PT SOLUSI PASTI INDONESIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(194, 'PT TRANSAKSI ARTHA GEMILANG', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(195, 'PT VERITRA SENTOSA INTERNASIONAL', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(196, 'PT VISIONET INTERNASIONAL', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(197, 'PT WITAMI TUNAI MANDIRI', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(198, 'PT Akar Transaksi Masyarakat', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(199, 'PT Gpay Digital Asia', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(200, 'PT Yukk Kreasi Indonesia', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(201, 'PT Mareco Prima Mandiri', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(202, 'PT Sprint Asia Technology', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(203, 'PT Visi Jaya Indonesia', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(204, 'PT Pembayaran Lintas Usaha (Espay)', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(205, 'PT Digital Solusi Pratama', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(206, 'PT Jatelindo Perkasa Abadi', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(207, 'PT Mitra Pembayaran Elektronik (Saldomu)', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(208, 'PT Pos Indonesia', 'Non Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(209, 'PT SMARTFREN TELECOM', 'Telekomunikasi', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(210, 'PT TELEKOMUNIKASI INDONESIA', 'Telekomunikasi', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(212, 'PT BANK SYARIAH BRI', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(213, 'PT BNI SYARIAH', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(214, 'PT BANK ARTHA GRAHA INTERNASIONAL', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(215, 'PT BANK CHINA CONSTRUCTION INDONESIA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(216, 'PT BANK MESTIKA DHARMA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(217, 'PT INDOSAT', 'Telekomunikasi', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(218, 'PT. Allo Bank Indonesia Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(219, 'PT. Prima Vista Solusi', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(220, 'PT. Indonesia Comnets Plus', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(221, 'PT. Fasa Centra Artajaya', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(222, 'PT. Prismalink International', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(223, 'PT. Cashfazz Teknologi Nusantara', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(224, 'PT. Usaha Kreatif Pembayaran', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(225, 'PT Bank Aladin Syariah Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(226, 'PT Sinar Digital Terdepan (Xendit)', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(227, 'PT Capital Net Indonesia', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(228, 'PT NUSAPAY SOLUSI INDONESIA', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(229, 'PT Akasanet Bumi Nusantara', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(230, 'PT Qoin Digital Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(231, 'PT Bank MNC Internasional Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(233, 'PT Payquest Network Indonesia', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(234, 'PT Duta Teknologi Kreatif', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(235, 'PT BPR Eka Bumi Artha', 'Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(236, 'PT GDC Multi Sarana', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(237, 'PT Inacash Lentera Teknologi', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(238, 'Advance Intelligence Group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(239, 'PT. Bank IBK Indonesia Tbk', 'Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(240, 'PT Traveloka Indonesia', 'Fintek', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(241, 'PT BPR Bhakti Daya Ekonomi', 'Bank', 'Non Anggota', NULL, NULL, NULL, NULL, '220902010', NULL, 'ENP', NULL),
(242, 'PT Cashlez Worldwide Indonesia Tbk', 'Non Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(243, 'PT. Unique Teknologi Pembayaran.', 'Non Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(244, 'PT MCP Indo Utama', 'Non Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(245, 'PT Ionpay Networks (NICEPAY)', 'Non Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(246, 'PT Indivara Sejahtera Sukses Makmur', 'Non Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(247, 'PT Mobivision Teknologi Inno (KilatPay)', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(248, 'PT Honest Financial Technologies', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(249, 'PT Harsya Remitindo', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', 'AUF'),
(250, 'PT Jasamarga Tollroad Operator', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', NULL),
(251, 'PT Global Pay Indonesia', 'Fintek', 'Non Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', NULL),
(252, 'FlashPay Indonesia', 'Fintek', 'Non Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', NULL),
(253, 'PT BPR Karyajatnika Sadaya', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', NULL),
(254, 'PT BPRS Hijra Alami', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', NULL),
(255, 'PT Indo Sukses Mandiri', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', NULL),
(256, 'PT Reka Multi Aptika', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'AUF', NULL),
(257, 'PT Wahana Pembayaran Digital', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(258, 'BPR Supra Artapersada', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(259, 'PT Midazpay Digital Indonesia', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(260, 'PT Krom Bank', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'RBB', NULL),
(261, 'PT Module Intracs Yasatama', 'Non Bank', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'IDR', NULL),
(262, 'PT Ayopop Teknologi Indonesia', 'Fintek', 'Anggota', NULL, NULL, NULL, NULL, NULL, NULL, 'IDR', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_product` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nama_product`, `added_by`, `modified_by`) VALUES
(1, 'ATM', 'ASPI', NULL),
(2, 'CARD', 'ASPI', NULL),
(3, 'CPT', 'ASPI', NULL),
(4, 'EDC', 'ASPI', NULL),
(5, 'PERSO', 'ASPI', NULL),
(6, 'QRIS CPM', 'ASPI', NULL),
(7, 'QRIS MPM', 'ASPI', NULL),
(8, 'QRIS Tuntas', 'ASPI', 'RBB'),
(9, 'QRIS Antarnegara THB', 'ASPI', 'RBB'),
(11, 'QRIS KKP', 'RBB', NULL),
(12, 'QRIS Antarnegara MYR', 'RBB', NULL),
(13, 'KKP Domestik', 'RBB', NULL),
(14, 'QRIS Antarnegara SGD', 'RBB', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `id_pketerangan` bigint UNSIGNED DEFAULT NULL,
  `id_pstat` bigint UNSIGNED NOT NULL,
  `id_product` bigint UNSIGNED NOT NULL,
  `id_mitra` bigint UNSIGNED NOT NULL,
  `number_special` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_prod` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typereg_numb` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_lab` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pif` datetime DEFAULT NULL,
  `ctf` datetime DEFAULT NULL,
  `report_lab` datetime DEFAULT NULL,
  `complience_req` datetime DEFAULT NULL,
  `loa_new` datetime DEFAULT NULL,
  `loa_sent` datetime DEFAULT NULL,
  `stats_temp` bigint UNSIGNED DEFAULT NULL,
  `pketerangan_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes_project` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identification_num` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification_no` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `waktu_assign_project`, `id_pketerangan`, `id_pstat`, `id_product`, `id_mitra`, `number_special`, `nama_prod`, `typereg_numb`, `security_lab`, `lab`, `pif`, `ctf`, `report_lab`, `complience_req`, `loa_new`, `loa_sent`, `stats_temp`, `pketerangan_status`, `notes_project`, `identification_num`, `certification_no`, `last_updated`) VALUES
(1, '2018-04-10 00:00:00', NULL, 16, 2, 3, '54- chawan', 'I-J3H0XX-MVA3-2.1-PL6-CBI', 'ASPI-18PRN-0410001', NULL, 'Rintis', NULL, '2018-04-10 16:45:41', '2018-04-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '2.7.0.22.0.13', 'ASPI-18APP-1204054', '2022-07-25 16:15:50'),
(2, '2018-04-20 00:00:00', NULL, 16, 1, 13, '', 'DT-7000', 'ASPI-18PRN-0420002', '', 'Rintis', NULL, '2018-06-08 16:48:59', '2018-07-10 16:49:19', '2018-09-10 16:49:45', NULL, NULL, NULL, NULL, '', '', '', NULL),
(3, '2018-05-22 00:00:00', NULL, 16, 4, 19, '', 'Q20', 'ASPI-18PRN-0522003', '', 'Artajasa', NULL, '2018-07-11 16:53:09', '2018-07-17 16:53:21', '2018-09-12 16:53:36', NULL, NULL, NULL, NULL, '', '', '', NULL),
(4, '2018-05-09 00:00:00', NULL, 16, 4, 2, '', 'WPOS-3', 'ASPI-18PRN-0509004', '', 'Rintis', NULL, '2018-07-11 16:54:17', '2018-08-13 00:00:00', '2018-09-12 16:53:46', '2022-07-25 18:58:09', '2022-07-25 18:58:21', NULL, NULL, '', '', '', NULL),
(5, '2018-06-22 00:00:00', NULL, 16, 1, 28, '', 'OKI', 'ASPI-18PRN-0622005', '', 'Rintis', '2018-07-16 16:55:51', '2018-07-17 00:00:00', '2018-08-13 16:56:09', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(6, '2018-07-20 00:00:00', NULL, 16, 4, 29, '', 'Valina', 'ASPI-18PRN-0720006', '', 'Artajasa', NULL, '2018-09-26 16:57:41', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(7, '2018-08-01 00:00:00', NULL, 16, 2, 15, '', 'FXR5 v1.0', 'ASPI-18PRN-0801007', '', 'Artajasa', '2018-08-07 16:58:50', '2018-08-16 16:58:57', '2018-11-23 16:59:14', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(8, '2018-08-09 00:00:00', NULL, 16, 1, 38, '', 'The Kalignite Software Platform on Microsoft Windows', 'ASPI-18PRN-0809007', '', 'Rintis', '2018-08-23 17:00:11', '2018-08-23 17:00:23', '2018-10-16 17:00:40', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(9, '2018-08-09 00:00:00', NULL, 16, 4, 14, '', 'MT280, CT280; Bluebird Payment EMV Kernel 3.0', 'ASPI-18PRN-0809008', '', 'Rintis', '2018-08-12 17:01:17', '2018-08-13 17:01:30', '2018-09-14 17:01:42', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(10, '2018-09-05 00:00:00', NULL, 12, 4, 1, '', 'BluePad-55', 'ASPI-18PRN-0905010', '', 'Artajasa', '2018-09-05 17:03:12', '2018-09-06 17:03:22', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(11, '2018-09-27 00:00:00', NULL, 12, 4, 24, '', 'PAR6', 'ASPI-18PRN-0927011', '', 'Artajasa', NULL, '2018-10-23 17:03:34', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(12, '2018-09-27 00:00:00', NULL, 16, 4, 48, '', 'X990', 'ASPI-18PRN-0927012', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(13, '2018-10-17 00:00:00', NULL, 16, 4, 11, '', 'WisePad 2', 'ASPI-18PRN-1017013', '', 'Artajasa', NULL, '2018-10-25 17:05:31', '2018-11-21 17:05:41', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(14, '2018-10-29 00:00:00', NULL, 16, 4, 19, '', 'A930', 'ASPI-18PRN-1029014', '', 'Artajasa', NULL, '2018-11-09 17:07:21', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(15, '2018-11-05 00:00:00', NULL, 16, 4, 52, '', 'WIZARHAND Q1', 'ASPI-18PRN-1105015', '', 'Artajasa', NULL, '2018-11-16 17:07:37', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(16, '2018-11-05 00:00:00', NULL, 16, 4, 52, '', 'WIZARPOS Q2', 'ASPI-18PRN-1105016', '', 'Artajasa', NULL, '2018-11-16 17:07:56', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(17, '2018-12-05 00:00:00', NULL, 16, 2, 60, '', 'Exolvo M/Chip NSICCS SDA v1.0', 'ASPI-18RRN-1205017', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(18, '2018-12-05 00:00:00', NULL, 16, 1, 57, '', 'Yihua ATM', 'ASPI-18PRN-1205018', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(19, '2018-12-13 00:00:00', NULL, 16, 4, 6, '', 'W6900', 'ASPI-18PRN-1213019', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(20, '2019-01-09 00:00:00', NULL, 16, 2, 42, '', 'Solvo Evolution 21 NSICCS No OffPIN DDA 02', 'ASPI-19PRN-0109020', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(21, '2019-01-09 00:00:00', NULL, 16, 2, 42, '', 'Solvo Evolution 21 NSICCS No OffPIN SDA 02', 'ASPI-19PRN-0109021', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(22, '2019-01-22 00:00:00', NULL, 16, 2, 77, '', 'UCard UBJ21-G22 Profile 8, Version 1.0', 'ASPI-19RRN-0122001', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(23, '2019-01-31 00:00:00', NULL, 15, 4, 61, NULL, 'NEW9210', 'ASPI-19PRN-0131002', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 10:41:50'),
(24, '2019-02-01 00:00:00', NULL, 16, 2, 15, '', 'FXR5 (profile 5) v1.0', 'ASPI-19PRN-0201003', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(25, '2019-03-15 00:00:00', NULL, 16, 2, 92, '', 'KONA2 C2200S V1.00 Profile 7', 'ASPI-19RRN-0315004', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(26, '2019-03-28 00:00:00', NULL, 16, 2, 60, '', 'Exolvo VSDC NSICCS SDA v1.0', 'ASPI-19RRN-0328005', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(27, '2019-03-28 00:00:00', NULL, 16, 4, 80, '', 'P1000', 'ASPI-19PRN-0328006', '', 'Artajasa', NULL, NULL, '2019-08-14 17:23:58', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(28, '2019-03-28 00:00:00', NULL, 16, 1, 41, '', 'TS-EA (SR-ATM) - DUPICDST 40000005', 'ASPI-19PRN-0328007', '', 'Rintis', NULL, NULL, '2019-07-29 17:24:11', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(29, '2019-03-28 00:00:00', NULL, 16, 1, 41, '', 'TS-EA (SR-ATM) - DUPICDST 40000100', 'ASPI-19PRN-0328008', '', 'Rintis', NULL, NULL, '2019-07-29 17:24:22', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(30, '2019-04-04 00:00:00', NULL, 16, 4, 19, '', 'IM500', 'ASPI-19PRN-0404009', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(31, '2019-05-03 00:00:00', NULL, 16, 4, 82, '', 'APOS A8', 'ASPI-19PRN-0503010', '', 'Artajasa', NULL, NULL, '2019-07-30 17:25:11', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(32, '2019-05-28 00:00:00', NULL, 16, 2, 3, '', 'I-J3RXXX-2.0 Profile 7', 'ASPI-19PRN-0528011', '', 'Rintis', '2019-06-26 17:25:47', '2019-07-02 17:26:35', '2019-08-15 17:26:46', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(33, '2019-06-18 00:00:00', NULL, 16, 2, 3, '', 'I-J3RXXX-2.0 Profile 5', 'ASPI-19PRN-0618012', '', 'Rintis', '2019-06-26 17:26:53', '2019-07-02 17:27:04', '2019-08-15 17:27:17', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(34, '2019-09-09 00:00:00', NULL, 16, 4, 61, '', 'NEW8210/NEW7210/NEW6210', 'ASPI-19PRN-0909013', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(35, '2019-09-19 00:00:00', NULL, 15, 4, 40, '', 'Vega3000, MP200, UPT1000, UPT1000F, Saturn1000', 'ASPI-19RRN-0919014', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(36, '2019-10-07 00:00:00', NULL, 16, 4, 40, '', 'Vega3000, MP200, UPT1000, UPT1000F, Saturn1000', 'ASPI-19PRN-1007015', '', 'Artajasa', NULL, '2019-10-22 17:29:11', '2019-11-27 17:29:30', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(37, '2019-10-09 00:00:00', NULL, 16, 2, 94, '', '-', 'ASPI-19PRN-1009016', '', 'Artajasa', NULL, '2019-11-21 17:31:15', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(38, '2019-10-23 00:00:00', NULL, 16, 4, 83, '', 'K9', 'ASPI-19PRN-1023017', '', 'Artajasa', NULL, '2019-11-21 00:00:00', '2020-01-02 17:31:40', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(39, '2019-11-06 00:00:00', NULL, 16, 4, 19, '', 'A910', 'ASPI-19PRN-1106018', '', 'Artajasa', NULL, '2019-12-16 17:31:51', '2020-01-15 17:32:03', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(40, '2019-11-25 00:00:00', NULL, 16, 4, 48, '', 'V200c Plus', 'ASPI-19PRN-1125019', '', 'Rintis', NULL, '2019-12-26 17:32:22', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(41, '2019-12-18 00:00:00', NULL, 16, 2, 112, '', 'Ucard UBJ21-G26, v1.0 Profile 7', 'ASPI-19PRN-1218020', '', 'Rintis', NULL, '2020-01-08 17:32:41', '2020-06-20 17:32:54', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(42, '2020-01-13 00:00:00', NULL, 16, 4, 6, '', 'T6800/T6900/T6920', 'ASPI-20PRN-011301/2/3', '', 'Artajasa', NULL, '2020-02-10 17:33:16', '2020-12-18 17:33:26', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(43, '2020-01-23 00:00:00', NULL, 16, 2, 42, '', 'Solvo Fly 10 NSICCS No OffPIN SDA 02', 'ASPI-20PRN-0123004', '', 'Rintis', NULL, NULL, '2020-02-14 00:00:00', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(44, '2020-01-23 00:00:00', NULL, 16, 2, 42, '', 'Solvo Fly 10 NSICCS No OffPIN DDA 01', 'ASPI-20PRN-0123005', '', 'Rintis', NULL, NULL, '2020-02-14 00:00:00', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(45, '2020-01-30 00:00:00', NULL, 16, 4, 33, '', 'N3,N5', 'ASPI-20PRN-0130006', '', 'Artajasa', NULL, NULL, '2020-02-26 17:37:47', '2020-07-30 17:37:55', NULL, NULL, NULL, NULL, '', '', '', NULL),
(46, '2020-01-30 00:00:00', NULL, 16, 4, 33, '', 'N6', 'ASPI-20PRN-0130007', '', 'Artajasa', NULL, NULL, '2020-02-26 00:00:00', '2020-11-02 17:38:14', NULL, NULL, NULL, NULL, '', '', '', NULL),
(47, '2020-02-21 00:00:00', NULL, 16, 1, 106, '', 'CASH80', 'ASPI-20PRN-0221008', '', 'Artajasa', NULL, NULL, '2020-03-06 17:38:29', '2020-03-12 00:00:00', NULL, NULL, NULL, NULL, '', '', '', NULL),
(48, '2020-03-09 00:00:00', NULL, 16, 2, 42, '', 'Solvo Fly 10 R3 NSICCS No OffPIN DDA 01', 'ASPI-20PRN-0309009', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(49, '2020-03-09 00:00:00', NULL, 16, 2, 42, '', 'Solvo Fly 10 R3 NSICCS No OffPIN SDA 02', 'ASPI-20PRN-0309010', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(50, '2020-03-09 00:00:00', NULL, 16, 1, 13, '', 'DT-7000 Windows 10', 'ASPI-20PRN-0309011', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(51, '2020-04-22 00:00:00', NULL, 16, 4, 19, '', 'IM30', 'ASPI-20PRN-0422012', '', 'Artajasa', NULL, NULL, '2020-05-15 00:00:00', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(52, '2020-04-24 00:00:00', NULL, 15, 2, 15, '', 'GFX5 v1.0', 'ASPI-20PRN-0424013', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(53, '2020-05-20 00:00:00', NULL, 16, 4, 115, '', 'N910', 'ASPI-20PRN-0520014', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(54, '2020-05-20 00:00:00', NULL, 15, 4, 101, '', '-', 'ASPI-20PRN-0520015', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(55, '2020-05-20 00:00:00', NULL, 8, 4, 117, '', 'MP45', 'ASPI-20PRN-0520016', '', 'Rintis', NULL, NULL, '2020-02-26 00:00:00', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(56, '2020-06-09 00:00:00', NULL, 16, 2, 112, '', 'Ucard UBJ21-G26, v1.0 Profile 5', 'ASPI-20PRN-0609017', '', 'Rintis', NULL, NULL, '2020-07-20 17:46:47', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(57, '2020-06-29 00:00:00', NULL, 16, 4, 48, '', 'C680', 'ASPI-20PRN-0629018', '', 'Rintis', NULL, NULL, '2021-01-11 17:46:59', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(58, '2020-07-06 00:00:00', NULL, 16, 4, 61, '', 'NEW9220/NEW9210', 'ASPI-20PRN-0706019', '', 'Artajasa', NULL, NULL, '2020-09-21 00:00:00', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(59, '2020-07-06 00:00:00', NULL, 16, 2, 112, '', 'Ucard UBJ31-G29, v1.0 Profile 5', 'ASPI-20PRN-0706020', '', 'Rintis', NULL, '2020-09-17 17:47:51', '2020-09-29 17:48:00', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(60, '2020-07-06 00:00:00', NULL, 16, 2, 112, '', 'Ucard UBJ31-G29, v1.0 Profile 7', 'ASPI-20PRN-0706021', '', 'Rintis', NULL, '2020-09-17 00:00:00', '2020-09-29 00:00:00', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(61, '2020-07-06 00:00:00', NULL, 16, 2, 112, '', 'Ucard UBJ31-G29, v1.0 Profile 8', 'ASPI-20PRN-0706022', '', 'UL', NULL, '2020-09-17 00:00:00', '2020-06-16 17:48:36', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(62, '2020-07-14 00:00:00', NULL, 16, 2, 92, '', 'KONA2 D2350 V1.0 Profile 5', 'ASPI-20PRN-0714023', '', 'Artajasa', NULL, '2020-08-28 17:48:50', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(63, '2020-07-14 00:00:00', NULL, 16, 2, 92, '', 'KONA2 D2350 V1.0 Profile 7', 'ASPI-20PRN-0714024', '', 'Artajasa', NULL, '2020-08-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(64, '2020-07-14 00:00:00', NULL, 16, 2, 121, '', 'TimeCOS ePay_C v1.0 Profile 5', 'ASPI-20RRN-0714025', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(65, '2020-07-14 00:00:00', NULL, 16, 2, 121, '', 'TimeCOS ePay_C v1.0 Profile 7', 'ASPI-20RRN-0714026', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(66, '2020-07-16 00:00:00', NULL, 16, 1, 124, '', 'Hyosung ATM', 'ASPI-20PRN-0716027', '', 'Artajasa', NULL, '2020-08-27 18:41:28', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(67, '2020-07-30 00:00:00', NULL, 16, 2, 92, '', 'KONA2 C2200S V1.00 Profile 5', 'ASPI-20RRN-0730028', '', 'Artajasa', NULL, '2020-08-28 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(68, '2020-08-04 00:00:00', NULL, 16, 2, 42, '', 'Solvo Fly 30 NSICCS No OffPIN DDA 01', 'ASPI-20PRN-0804029', '', 'Rintis', NULL, '2020-09-22 18:41:46', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(69, '2020-08-04 00:00:00', NULL, 16, 2, 42, '', 'Solvo Fly 30 NSICCS No OffPIN SDA 02', 'ASPI-20PRN-0804030', '', 'Rintis', NULL, '2020-09-22 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(70, '2020-08-05 00:00:00', NULL, 16, 4, 33, '', 'N86', 'ASPI-20PRN-0805031', '', 'Artajasa', NULL, '2020-08-27 18:42:06', '2020-11-02 18:42:18', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(71, '2020-08-21 00:00:00', NULL, 16, 2, 20, '', 'UranusMVP NSICCS V1.1 Profile 7', 'ASPI-20PRN-0821032', '', 'Rintis', NULL, '2020-08-31 18:42:30', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(72, '2020-09-17 00:00:00', NULL, 16, 4, 116, '', 'T1', 'ASPI-20PRN-0917033', '', 'Artajasa', NULL, '2020-09-24 18:42:36', NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(73, '2020-10-15 00:00:00', NULL, 15, 2, 121, '', 'TimeCOS-JC-DI-T0-6 V1.0 Profile 5', 'ASPI-20RRN-1015034', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(74, '2020-10-15 00:00:00', NULL, 15, 2, 121, '', 'TimeCOS-JC-DI-T0-6 V1.0 Profile 7', 'ASPI-20RRN-1015035', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(75, '2020-10-16 00:00:00', NULL, 16, 4, 116, '', 'MP35', 'ASPI-20PRN-1016036', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(76, '2020-10-21 00:00:00', NULL, 16, 4, 94, '', 'F20', 'ASPI-20PRN-1021037', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(77, '2020-11-11 00:00:00', NULL, 16, 2, 15, '', 'GFCX11 v1.0', 'ASPI-20PRN-1111038', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(78, '2020-11-18 00:00:00', NULL, 16, 2, 60, '', 'Valid  Exolvo B2- v1.0 Card Profile 5 and 1.0', 'ASPI-20PRN-1118039', '', 'Rintis', NULL, NULL, NULL, '2021-05-11 18:43:26', NULL, NULL, NULL, NULL, '', '', '', NULL),
(79, '2020-11-18 00:00:00', NULL, 16, 2, 60, '', 'Exolvo B2-1 v1.0 & Exolvo B2-2 v1.0 Profile 7', 'ASPI-20PRN-1118040', '', 'Rintis', NULL, NULL, NULL, '2021-05-11 00:00:00', NULL, NULL, NULL, NULL, '', '', '', NULL),
(80, '2020-11-23 00:00:00', NULL, 16, 4, 128, '', 'MF919', 'ASPI-20PRN-1123041', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(81, '2020-11-24 00:00:00', NULL, 16, 2, 121, '', 'TimeCOS ePay_D V1.0 Profile 5', 'ASPI-20PRN-1124042', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(82, '2020-11-24 00:00:00', NULL, 16, 2, 121, '', 'TimeCOS ePay_D V1.0 Profile 7', 'ASPI-20PRN-1124043', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(83, '2020-12-16 00:00:00', NULL, 16, 1, 127, '', '-', 'ASPI-20PRN-1216044', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(84, '2020-12-22 00:00:00', NULL, 16, 4, 129, '', 'A90', 'ASPI-20PRN-1222045', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(85, '2021-01-18 00:00:00', NULL, 16, 4, 134, '', 'AXIUM DX8000', 'ASPI-21PRN-0118001', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(86, '2021-01-22 00:00:00', NULL, 16, 4, 129, '', 'V71', 'ASPI-21PRN-0122002', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(87, '2021-01-22 00:00:00', NULL, 7, 4, 129, '', 'V37', 'ASPI-21PRN-0122003', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(88, '2021-02-22 00:00:00', NULL, 16, 2, 92, '', 'KONA2 C2201S V1.0 Profile 5', 'ASPI-21PRN-0226004', '', 'Artajasa', NULL, NULL, '2021-06-08 19:25:45', NULL, NULL, '2022-07-25 18:45:27', NULL, NULL, '', '', '', NULL),
(89, '2021-02-26 00:00:00', NULL, 16, 2, 92, '', 'KONA2 C2201S V1.0 Profile 7', 'ASPI-21PRN-0226005', '', 'Artajasa', NULL, NULL, '2021-06-08 00:00:00', NULL, NULL, '2022-07-25 18:46:48', NULL, NULL, '', '', '', NULL),
(90, '2021-05-03 00:00:00', NULL, 16, 4, 115, '', 'SPXXX', 'ASPI-21PRN-0503006', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:46:52', NULL, NULL, '', '', '', NULL),
(91, '2021-06-17 00:00:00', NULL, 16, 2, 42, '', 'SOLVO Evolution 30 NSICCS No OffPIN DDA 01', 'ASPI-21PRN-0617007', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:49:44', NULL, NULL, '', '', '', NULL),
(92, '2021-06-17 00:00:00', NULL, 16, 2, 42, '', 'SOLVO Evolution 30 NSICCS No OffPIN SDA 02', 'ASPI-21PRN-0617008', '', 'Rintis', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:49:40', NULL, NULL, '', '', '', NULL),
(93, '2021-06-22 00:00:00', NULL, 16, 4, 94, '', 'F300', 'ASPI-21PRN-0622009', '', 'Artajasa', NULL, NULL, '2021-09-27 19:26:24', NULL, NULL, '2022-07-25 18:49:36', NULL, NULL, '', '', '', NULL),
(94, '2021-08-10 00:00:00', NULL, 16, 1, 41, NULL, 'TS-EA (SR-ATM)', 'ASPI-21PRN-0810010', NULL, 'Rintis', NULL, NULL, NULL, NULL, '2022-07-25 18:49:31', NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0408034', '2022-11-07 14:27:26'),
(95, '2021-08-16 00:00:00', NULL, 7, 1, 140, '', 'DN Series, Prochip/EMV D/C Version V4.0', 'ASPI-21PRN-0816011', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(96, '2021-08-16 00:00:00', NULL, 15, 1, 140, '', 'Procash 280N, Prochip/EMV D/C Version V3.2', 'ASPI-21PRN-0816012', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(97, '2021-08-24 00:00:00', NULL, 16, 1, 28, '', 'OKI ATM', 'ASPI-21RRN-0824013', '', '', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:53:19', NULL, NULL, '', '', '', NULL),
(98, '2021-09-08 00:00:00', NULL, 16, 4, 19, '', 'D210', 'ASPI-21PRN-0908014', '', 'Artajasa', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:53:35', NULL, NULL, '', '', '', NULL),
(99, '2021-09-16 00:00:00', NULL, 16, 4, 19, '', 'A930', 'ASPI-21PRN-0916015', '', '', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:53:39', NULL, NULL, '', '', '', NULL),
(100, '2021-10-27 00:00:00', NULL, 15, 4, 129, '', 'A75', 'ASPI-21PRN-1027016', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(101, '2021-10-27 00:00:00', NULL, 16, 2, 15, '', 'FXR5 v1.0 Profile 7', 'ASPI-21RRN-1027017', '', '', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:56:12', NULL, NULL, '', '', '', NULL),
(102, '2021-12-06 00:00:00', NULL, 16, 2, 42, NULL, 'SOLVO FLY 30 SC V01.03.00 DDA', 'ASPI-21PRN-1206018', NULL, 'Rintis', NULL, NULL, NULL, NULL, '2022-07-25 18:58:05', NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0517043', '2022-11-07 14:18:34'),
(103, '2021-12-06 00:00:00', NULL, 16, 2, 42, NULL, 'SOLVO FLY 30 SC V01.03.00 SDA', 'ASPI-21PRN-1206019', NULL, 'Rintis', NULL, NULL, NULL, NULL, '2022-07-25 18:58:38', NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0517044', '2022-11-07 14:19:20'),
(104, '2021-12-24 00:00:00', NULL, 16, 2, 42, '', 'Solvo Evolution 21 NSICCS v2 No OffPIN DDA 02', 'ASPI-21PRN-1224020', '', '', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:58:45', NULL, NULL, '', '', '', NULL),
(105, '2021-12-24 00:00:00', NULL, 16, 2, 42, '', 'Solvo Evolution 21 NSICCS v2 No OffPIN SDA 02', 'ASPI-21PRN-1224021', '', '', NULL, NULL, NULL, NULL, NULL, '2022-07-25 18:58:52', NULL, NULL, '', '', '', NULL),
(106, '2022-01-06 00:00:00', NULL, 16, 1, 57, '', 'Yihua ATM', 'ASPI-22RRN-0106001', '', '', NULL, NULL, '2022-07-25 19:01:52', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(107, '2022-01-11 00:00:00', NULL, 16, 4, 158, NULL, 'X990', 'ASPI-22PRN-0113002', NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-25 19:02:30', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-11 13:56:38'),
(108, '2022-01-13 00:00:00', NULL, 8, 4, 52, '', 'WIZARHAND Q1', 'ASPI-22RRN-0113003', '', '', NULL, NULL, '2022-07-25 19:04:01', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(109, '2022-01-13 00:00:00', NULL, 8, 4, 52, '', 'WIZARPOS Q2', 'ASPI-22RRN-0113004', '', '', NULL, NULL, '2022-07-25 19:04:09', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(110, '2022-01-19 00:00:00', NULL, 8, 4, 52, '', 'WIZARPOS Q3', 'ASPI-22PRN-0119005', '', '', NULL, NULL, '2022-07-25 19:03:54', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(111, '2022-01-28 00:00:00', NULL, 15, 4, 19, '', 'IM500', 'ASPI-22PRN-0128006', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(112, '2022-02-25 00:00:00', NULL, 7, 2, 112, '', 'Ucard UBJ31-G33, v1.0 Profile 8', 'ASPI-22PRN-0225007', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(113, '2022-02-25 00:00:00', NULL, 16, 2, 112, NULL, 'Ucard UBJ31-G33, v1.0 Profile 7', 'ASPI-22PRN-0225008', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0923092', '2022-11-07 14:25:07'),
(114, '2022-02-25 00:00:00', NULL, 16, 2, 112, NULL, 'Ucard UBJ31-G33, v1.0 Profile 5', 'ASPI-22PRN-0225009', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0923093', '2022-11-07 14:24:18'),
(115, '2022-03-01 00:00:00', NULL, 7, 2, 15, '', 'FXR5 v1.0 Profile 5', 'ASPI-22RRN-0301010', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(116, '2022-03-21 00:00:00', NULL, 7, 4, 11, '', 'WisePad 2', 'ASPI-22RRN-0321011', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(117, '2022-03-22 00:00:00', NULL, 16, 2, 42, NULL, 'Solvo Evolution 30 NSICCS v2 No OffPIN DDA 01', 'ASPI-22PRN-0322012', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0620061', '2022-11-07 14:20:49'),
(118, '2022-03-22 00:00:00', NULL, 16, 2, 42, NULL, 'Solvo Evolution 30 NSICCS v2 No OffPIN SDA 02', 'ASPI-22PRN-0322013', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0620062', '2022-11-07 14:21:34'),
(119, '2022-04-06 00:00:00', NULL, 16, 2, 3, '', 'I-J3RXXX-2.0 Profile 7', 'ASPI-22RRN-0406014', '', '', NULL, NULL, '2022-11-07 14:23:11', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(120, '2022-04-06 00:00:00', NULL, 16, 2, 3, '', 'I-J3RXXX-2.0 Profile 5', 'ASPI-22RRN-0406015', '', '', NULL, NULL, '2022-11-07 14:23:20', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(121, '2022-04-18 00:00:00', NULL, 16, 4, 155, NULL, 'i2000', 'ASPI-22PRN-0418016', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0617060', '2022-11-21 14:36:41'),
(122, '2022-04-18 00:00:00', NULL, 16, 4, 155, NULL, 'i9100', 'ASPI-22PRN-0418017', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0620063', '2022-11-21 14:37:46'),
(123, '2022-04-18 00:00:00', NULL, 16, 4, 80, '', 'P1000', 'ASPI-22RRN-0418018', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(124, '2022-04-18 00:00:00', NULL, 16, 4, 80, NULL, 'P600', 'ASPI-22PRN-0418019', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0812080', '2022-11-21 14:33:05'),
(125, '2022-05-09 00:00:00', NULL, 16, 4, 19, NULL, 'A920', 'ASPI-22PRN-0509020', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0810076', '2022-11-21 14:39:12'),
(126, '2022-05-12 00:00:00', NULL, 16, 4, 117, NULL, 'P30', 'ASPI-22PRN-0512021', NULL, 'Artajasa', NULL, '2022-07-25 19:16:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0718067', '2022-11-21 14:41:16'),
(127, '2022-05-23 00:00:00', NULL, 16, 2, 117, NULL, 'Jhestia/DP/D43,V1.0  T=0', 'ASPI-22PRN-0523022', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AJR22REP09-23-01', '2022-11-07 13:54:12'),
(128, '2022-05-23 00:00:00', NULL, 7, 2, 117, '', 'Jhestia/DP/D43,V1.0  T=1', 'ASPI-22PRN-0523023', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(130, '2022-01-03 00:00:00', NULL, 16, 3, 98, NULL, '-', 'ASPI-22CPTTN-0103001', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22CPTTN-0103001', '2022-07-29 16:33:56'),
(131, '2022-01-07 00:00:00', NULL, 15, 3, 72, NULL, '-', 'ASPI-22CPTTN-0107002', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(132, '2022-01-10 00:00:00', NULL, 16, 3, 144, NULL, '-', 'ASPI-22CPTTN-0110003', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0131008', '2022-07-29 16:42:06'),
(133, '2022-01-11 00:00:00', NULL, 16, 3, 47, NULL, '-', 'ASPI-22CPTTN-0111004', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0331028', '2022-07-29 16:45:46'),
(134, '2022-01-21 00:00:00', NULL, 7, 3, 18, NULL, '-', 'ASPI-22CPTTN-0121005', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 11:25:48'),
(135, '2022-01-21 00:00:00', NULL, 7, 3, 18, NULL, '-', 'ASPI-22CPTTN-0121006', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 11:27:19'),
(136, '2022-01-27 00:00:00', NULL, 16, 3, 95, NULL, '-', 'ASPI-22CPTTN-0127007', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'ASPI-22COM-0310013', NULL),
(137, '2022-01-31 00:00:00', NULL, 7, 3, 161, NULL, '-', 'ASPI-22CPTTN-0131008', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 11:32:46'),
(138, '2022-02-09 00:00:00', NULL, 7, 3, 71, NULL, '-', 'ASPI-22CPTTN-0209009', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 11:35:19'),
(139, '2022-02-10 00:00:00', NULL, 3, 3, 146, NULL, '-', 'ASPI-22CPTTN-0210010', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(140, '2022-02-15 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0215011', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0316017', '2022-08-01 11:44:38'),
(141, '2022-02-15 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0215012', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0316018', '2022-08-01 11:48:04'),
(142, '2022-02-16 00:00:00', NULL, 7, 3, 30, NULL, '-', 'ASPI-22CPTTN-0216013', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 14:10:00'),
(143, '2022-02-18 00:00:00', NULL, 3, 3, 32, NULL, '-', 'ASPI-22CPTTN-0218014', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(144, '2022-02-22 00:00:00', NULL, 16, 3, 142, NULL, '-', 'ASPI-22CPTTN-0222015', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0404029', '2022-08-01 14:16:28'),
(145, '2022-03-10 00:00:00', NULL, 16, 3, 162, NULL, '-', 'ASPI-22CPTTN-0301016', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0411035', '2022-08-01 14:18:32'),
(146, '2022-03-08 00:00:00', NULL, 16, 3, 69, NULL, '-', 'ASPI-22CPTTN-0308018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-01 14:21:04'),
(147, '2022-03-08 00:00:00', NULL, 16, 3, 45, NULL, '-', 'ASPI-22CPTTN-0308019', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22CPTTN-0308019', '2022-08-02 14:13:24'),
(148, '2022-03-09 00:00:00', NULL, 16, 3, 69, NULL, '-', 'ASPI-22CPTTN-0309020', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0610056', '2022-08-02 14:19:09'),
(149, '2022-03-09 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0309021', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0329026', '2022-08-02 14:55:09'),
(150, '2022-03-10 00:00:00', NULL, 16, 3, 84, NULL, '-', 'ASPI-22CPTTN-0310022', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0527046', '2022-08-02 14:57:38'),
(151, '2022-03-10 00:00:00', NULL, 16, 3, 56, NULL, '-', 'ASPI-22CPTTN-0310023', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0406032', '2022-08-02 15:19:13'),
(152, '2022-03-15 00:00:00', NULL, 16, 3, 110, NULL, '-', 'ASPI-22CPTTN-0315024', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASP1-22COM-0908089', '2022-09-13 11:41:16'),
(153, '2022-03-16 00:00:00', NULL, 16, 3, 164, NULL, '-', 'ASPI-22CPTTN-0316025', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0524045', '2022-08-02 15:44:56'),
(154, '2022-03-23 00:00:00', NULL, 16, 3, 125, NULL, '-', 'ASPI-22CPTTN-0323026', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0509038', '2022-08-04 08:50:49'),
(155, '2022-03-24 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0324027', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0531049', '2022-08-04 08:52:08'),
(156, '2022-03-29 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0329028', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0531050', '2022-08-04 08:53:51'),
(157, '2022-03-29 00:00:00', NULL, 16, 3, 43, NULL, '-', 'ASPI-22CPTTN-0329029', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0426037', '2022-08-04 08:55:59'),
(158, '2022-04-05 00:00:00', NULL, 16, 3, 16, NULL, '-', 'ASPI-22CPTTN-0405030', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0608054', '2022-08-04 08:57:34'),
(159, '2022-04-05 00:00:00', NULL, 16, 3, 16, NULL, '-', 'ASPI-22CPTTN-0405031', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0608055', '2022-08-04 08:58:52'),
(160, '2022-04-06 00:00:00', NULL, 16, 3, 143, NULL, '-', 'ASPI-22CPTTN-0406032', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0615059', '2022-08-04 09:10:54'),
(161, '2022-04-06 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0406033', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0531051', '2022-08-04 09:14:29'),
(162, '2022-05-31 00:00:00', NULL, 16, 3, 72, NULL, '-', 'ASPI-22COM-0531051', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0425036', '2022-08-04 09:16:49'),
(163, '2022-04-06 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0406035', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0531052', '2022-08-04 09:21:48'),
(164, '2022-04-08 00:00:00', NULL, 7, 3, 49, NULL, '-', 'ASPI-22CPTTN-0408036', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 09:23:16'),
(165, '2022-04-11 00:00:00', NULL, 9, 3, 88, NULL, '-', 'ASPI-22CPTTN-0411037', NULL, 'Rintis', NULL, NULL, NULL, '2023-09-13 10:12:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 09:43:02'),
(166, '2022-04-13 00:00:00', NULL, 3, 3, 18, NULL, '-', 'ASPI-22CPTTN-0413038', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(167, '2022-04-18 00:00:00', NULL, 7, 3, 99, NULL, '-', 'ASPI-22CPTTN-0418039', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 09:47:00'),
(168, '2022-04-18 00:00:00', NULL, 16, 3, 96, NULL, '-', 'ASPI-22CPTTN-0418040', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0527047', '2022-08-04 09:49:06'),
(169, '2022-04-18 00:00:00', NULL, 16, 3, 96, NULL, '-', 'ASPI-22CPTTN-0418041', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0527048', '2022-08-04 10:11:58'),
(170, '2022-05-11 00:00:00', NULL, 16, 3, 32, NULL, '-', 'ASPI-22CPTTN-0511043', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0628065', '2022-08-04 10:25:06'),
(171, '2022-08-04 00:00:00', NULL, 7, 3, 56, NULL, '-', 'ASPI-22CPTTN-0804072', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(172, '2022-05-12 00:00:00', NULL, 16, 3, 85, NULL, '-', 'ASPI-22CPTTN-0512044', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0608053', '2022-08-04 10:48:47'),
(173, '2022-05-18 00:00:00', NULL, 10, 3, 7, NULL, '-', 'ASPI-22CPTTN-0518045', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 10:51:12'),
(174, '2022-05-18 00:00:00', NULL, 10, 3, 7, NULL, '-', 'ASPI-22CPTTN-0518046', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 10:52:34'),
(175, '2022-05-23 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-22CPTTN-0523047', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0905088', '2022-09-07 14:35:02'),
(176, '2022-05-23 00:00:00', NULL, 16, 3, 51, NULL, '-', 'ASPI-22CPTTN-0523047', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0725072', '2022-08-04 10:55:06'),
(177, '2022-05-25 00:00:00', NULL, 16, 3, 74, NULL, '-', 'ASPI-22CPTTN-0525049', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0728074', '2022-08-04 10:56:45'),
(178, '2022-05-30 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0530050', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0718069', '2022-08-04 11:02:16'),
(179, '2022-06-06 00:00:00', NULL, 16, 3, 71, NULL, '-', 'ASPI-22CPTTN-0606051', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0706066', '2022-08-04 11:03:51'),
(180, '2022-06-13 00:00:00', NULL, 7, 3, 69, NULL, '-', 'ASPI-22CPTTN-0613052', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 11:16:33'),
(181, '2022-06-14 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0614053', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0718070', '2022-08-04 11:19:11'),
(182, '2022-06-16 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0616054', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0718071', '2022-08-04 11:20:32'),
(183, '2022-06-22 00:00:00', NULL, 16, 3, 7, NULL, '-', 'ASPI-22CPTTN-0622055', NULL, 'Rintis', NULL, NULL, NULL, '2022-08-09 11:24:20', NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0812079', '2022-08-18 09:38:47'),
(184, '2022-06-22 00:00:00', NULL, 9, 3, 147, NULL, '-', 'ASPI-22CPTTN-0622056', NULL, 'Artajasa', NULL, NULL, NULL, '2022-08-26 10:19:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 10:24:39'),
(185, '2022-06-22 00:00:00', NULL, 16, 3, 10, NULL, '-', 'ASPI-22CPTTN-0622057', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0718068', '2022-08-05 10:26:12'),
(186, '2022-06-23 00:00:00', NULL, 9, 3, 147, NULL, '-', 'ASPI-22CPTTN-0623058', NULL, 'Artajasa', NULL, NULL, NULL, '2022-08-26 10:19:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-05 10:27:19'),
(187, '2022-07-01 00:00:00', NULL, 16, 3, 143, NULL, '-', 'ASPI-22CPTTN-0701059', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1013097', '2022-10-19 10:45:12'),
(188, '2022-07-05 00:00:00', NULL, 16, 3, 123, NULL, '-', 'ASPI-22CPTTN-0705060', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0725073', '2022-08-05 10:38:52'),
(189, '2022-07-13 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-0713061', NULL, 'Rintis', NULL, NULL, NULL, '2022-08-05 10:55:21', NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0809075', '2022-08-10 13:05:18'),
(190, '2022-07-14 00:00:00', NULL, 16, 3, 85, NULL, '-', 'ASPI-22CPTTN-0714062', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1010094', '2022-10-11 15:32:31'),
(191, '2022-07-15 00:00:00', NULL, 16, 3, 43, NULL, '-', 'ASPI-22CPTTN-0715063', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0812078', '2022-08-18 09:30:57'),
(192, '2022-07-20 00:00:00', NULL, 16, 3, 69, NULL, '-', 'ASPI-22CPTTN-0720064', NULL, 'Rintis', NULL, NULL, NULL, NULL, '2022-08-10 15:26:50', NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0810077', '2022-08-11 15:48:33'),
(193, '2022-07-21 00:00:00', NULL, 16, 3, 102, NULL, '-', 'ASPI-22CPTTN-0721065', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0815081', '2022-08-18 09:36:13'),
(194, '2022-08-02 00:00:00', NULL, 16, 3, 125, NULL, '-', 'ASPI-22CPTTN-0802066', NULL, 'Rintis', NULL, NULL, NULL, '2022-08-29 13:58:43', '2022-08-31 13:47:25', NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0831085', '2022-09-02 09:57:49'),
(195, '2022-08-02 00:00:00', NULL, 16, 3, 125, NULL, '-', 'ASPI-22CPTTN-0802067', NULL, 'Rintis', NULL, NULL, NULL, '2022-08-29 13:58:53', '2022-08-31 13:47:36', NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0831086', '2022-09-02 09:58:24'),
(196, '2022-08-03 00:00:00', NULL, 16, 3, 143, NULL, '-', 'ASPI-22CPTTN-0803070', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1103102', '2022-11-09 14:58:10'),
(197, '2022-08-03 00:00:00', NULL, 16, 3, 96, NULL, '-', 'ASPI-22CPTTN-0803071', NULL, 'Artajasa', NULL, '2022-08-10 13:04:43', NULL, '2022-08-23 13:38:30', '2022-08-25 13:34:12', NULL, NULL, NULL, NULL, NULL, 'ASPI-22APP-0830084', '2022-08-31 10:50:08'),
(198, '2022-08-02 00:00:00', NULL, 16, 3, 231, NULL, '-', 'ASPI-22CPTTN-0802068', NULL, 'Artajasa', NULL, NULL, NULL, NULL, '2022-12-01 08:48:43', NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1129104', '2022-12-02 11:05:51'),
(199, '2022-08-02 00:00:00', NULL, 7, 3, 231, NULL, '-', 'ASPI-22CPTTN-0802069', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(200, '2022-09-05 00:00:00', NULL, 7, 4, 167, NULL, 'NORXEL iX 1000', 'ASPI-22PRN-0905038', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-21 14:40:13'),
(201, '2022-09-14 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-22CPTTN-0914073', NULL, 'Rintis', NULL, NULL, NULL, '2022-10-24 11:31:03', '2023-01-02 15:25:18', NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0103001', '2023-01-24 15:46:10'),
(203, '2022-09-19 00:00:00', NULL, 7, 3, 22, NULL, '-', 'ASPI-22CPTTN-0919074', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 11:32:39'),
(204, '2022-09-28 00:00:00', NULL, 7, 3, 241, NULL, '-', 'ASPI-22CPTTN-0928075', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-24 11:40:04'),
(205, '2022-09-29 00:00:00', NULL, 7, 3, 143, NULL, '-', 'ASPI-22CPTTN-0929076', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(206, '2022-10-10 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-22CPTTN-1010077', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1021098', '2022-10-27 10:58:29'),
(207, '2021-01-20 00:00:00', NULL, 9, 3, 76, NULL, '-', 'ASPI-21CPTTN-0120001', NULL, 'Artajasa', NULL, NULL, NULL, '2022-10-27 14:17:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 14:17:18'),
(208, '2021-01-26 00:00:00', NULL, 16, 3, 107, NULL, '-', 'ASPI-21CPTTN-0126002', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0219007', '2022-10-27 14:18:45'),
(209, '2021-03-02 00:00:00', NULL, 16, 3, 136, NULL, '-', 'ASPI-21CPTTN-0302006', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0317011', '2022-10-27 14:21:11'),
(210, '2021-03-08 00:00:00', NULL, 16, 3, 31, NULL, '-', 'ASPI-21CPTTN-0308008', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0721033', '2022-10-27 14:22:33'),
(211, '2021-03-10 00:00:00', NULL, 16, 3, 133, NULL, '-', 'ASPI-21CPTTN-0310010', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0330015', '2022-10-27 14:24:01'),
(212, '2021-04-21 00:00:00', NULL, 16, 3, 142, NULL, '-', 'ASPI-21CPTTN-0421016', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0910055', '2022-10-27 16:13:05'),
(213, '2021-04-30 00:00:00', NULL, 16, 3, 142, NULL, '-', 'ASPI-21CPTTN-0430017', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0705031', '2022-11-01 14:06:56'),
(214, '2021-05-03 00:00:00', NULL, 16, 3, 132, NULL, '-', 'ASPI-21CPTTN-0503022', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0609029', '2022-11-01 14:29:08'),
(215, '2021-05-17 00:00:00', NULL, 16, 3, 137, NULL, '-', 'ASPI-21CPTTN-0517023', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1214078', '2022-11-01 14:31:24'),
(216, '2021-05-19 00:00:00', NULL, 16, 3, 143, NULL, '-', 'ASPI-21CPTTN-0519028', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'ASPI-23COM-0124006', NULL),
(217, '2021-05-20 00:00:00', NULL, 16, 3, 109, NULL, '-', 'ASPI-21CPTTN-0520029', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0809043', '2022-11-01 14:34:05'),
(218, '2021-05-28 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-21CPTTN-0528032', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0316020', '2022-11-01 14:43:54'),
(219, '2021-06-08 00:00:00', NULL, 16, 3, 144, NULL, '-', 'ASPI-21CPTTN-0608033', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0727038', '2022-11-01 14:44:48'),
(220, '2021-06-16 00:00:00', NULL, 16, 3, 75, NULL, '-', 'ASPI-21CPTTN-0616035', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0802039', '2022-11-01 14:48:12'),
(221, '2021-06-16 00:00:00', NULL, 16, 3, 75, NULL, '-', 'ASPI-21CPTTN-0616036', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0802040', '2022-11-01 14:49:14'),
(222, '2021-06-17 00:00:00', NULL, 16, 3, 32, NULL, '-', 'ASPI-21CPTTN-0617037', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1001061', '2022-11-01 14:50:14'),
(223, '2021-06-25 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-21CPTTN-0625041', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0316021', '2022-11-01 14:52:36'),
(224, '2021-06-25 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-21CPTTN-0625042', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-0316022', '2022-11-01 14:53:37'),
(225, '2021-07-01 00:00:00', NULL, 16, 3, 107, NULL, '-', 'ASPI-21CPTTN-0701046', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0923058', '2022-11-03 10:38:41'),
(226, '2021-07-06 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-21CPTTN-0706047', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1001059', '2022-11-03 10:40:14'),
(227, '2021-07-06 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-21CPTTN-0706048', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0812044', '2022-11-03 14:16:10'),
(228, '2021-07-07 00:00:00', NULL, 16, 3, 105, NULL, '-', 'ASPI-21CPTTN-0707050', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1015067', '2022-11-03 14:16:43'),
(229, '2021-07-14 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-21CPTTN-0714052', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0812045', '2022-11-03 14:18:08'),
(230, '2021-07-14 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-21CPTTN-0714053', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1001060', '2022-11-03 14:19:54'),
(231, '2021-07-14 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-21CPTTN-0714054', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0812046', '2022-11-03 14:22:15'),
(232, '2021-07-14 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-21CPTTN-0714055', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0812047', '2022-11-03 14:23:49'),
(233, '2021-07-26 00:00:00', NULL, 16, 3, 145, NULL, '-', 'ASPI-21CPTTN-0726057', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0818048', '2022-11-03 14:25:17'),
(234, '2021-07-30 00:00:00', NULL, 16, 3, 148, NULL, '-', 'ASPI-21CPTTN-0730058', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-0910054', '2022-11-03 14:27:13'),
(235, '2021-08-16 00:00:00', NULL, 16, 3, 12, NULL, '-', 'ASPI-21CPTTN-0816060', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1015064', '2022-11-08 09:29:26'),
(236, '2022-10-27 00:00:00', NULL, 16, 3, 123, NULL, '-', 'ASPI-22CPTTN-1027078', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1116103', '2022-11-18 12:25:21'),
(237, '2021-08-23 00:00:00', NULL, 16, 3, 84, NULL, '-', 'ASPI-21CPTTN-0823062', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1213077', '2022-11-10 11:26:03'),
(238, '2021-09-09 00:00:00', NULL, 16, 3, 4, NULL, '-', 'ASPI-21CPTTN-0909063', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1012066', '2022-11-10 11:27:38'),
(239, '2021-09-09 00:00:00', NULL, 16, 3, 4, NULL, '-', 'ASPI-21CPTTN-0909064', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-21COM-1012065', '2022-11-10 11:29:02'),
(240, '2022-11-15 00:00:00', NULL, 2, 3, 165, NULL, '-', 'ASPI-22CPTTN-1115079', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(241, '2022-12-07 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-22CPTTN-1207081', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1223104', '2022-12-23 15:28:07'),
(242, '2022-12-02 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-1202080', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0126007', '2023-01-27 09:42:34'),
(243, '2023-01-02 00:00:00', NULL, 7, 3, 46, NULL, '-', 'ASPI-23CPTTN-0102001', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(244, '2023-01-02 00:00:00', NULL, 7, 3, 46, NULL, '-', 'ASPI-23CPTTN-0102002', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(245, '2023-02-01 00:00:00', NULL, 7, 3, 46, NULL, '-', 'ASPI-23CPTTN-0102003', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(246, '2023-02-01 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-23CPTTN-0102004', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0222017', '2023-03-02 10:21:35'),
(247, '2023-02-01 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-23CPTTN-0102005', NULL, 'Rintis', NULL, NULL, NULL, NULL, '2023-01-24 15:46:37', NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0120005', '2023-03-02 10:23:47'),
(248, '2023-01-06 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-23CPTTN-0106006', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0228021', '2023-03-02 10:25:18'),
(249, '2023-01-06 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-23CPTTN-0106007', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0222018', '2023-03-02 10:22:22'),
(250, '2023-01-09 00:00:00', NULL, 7, 3, 96, NULL, '-', 'ASPI-23CPTTN-0109008', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 15:57:33'),
(251, '2023-01-11 00:00:00', NULL, 16, 3, 71, NULL, '-', 'ASPI-23CPTTN-0111009', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0308024', '2023-03-14 10:56:17'),
(252, '2023-01-11 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-23CPTTN-0111010', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0222019', '2023-03-02 10:22:50'),
(253, '2023-01-11 00:00:00', NULL, 7, 3, 46, NULL, '-', 'ASPI-23CPTTN-0111011', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(254, '2023-01-11 00:00:00', NULL, 7, 3, 46, NULL, '-', 'ASPI-23CPTTN-0111012', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(255, '2023-01-12 00:00:00', NULL, 7, 3, 31, NULL, '-', 'ASPI-23CPTTN-0112013', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 10:19:44'),
(256, '2023-01-12 00:00:00', NULL, 7, 3, 31, NULL, '-', 'ASPI-23CPTTN-0112014', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 10:20:58');
INSERT INTO `projects` (`id`, `waktu_assign_project`, `id_pketerangan`, `id_pstat`, `id_product`, `id_mitra`, `number_special`, `nama_prod`, `typereg_numb`, `security_lab`, `lab`, `pif`, `ctf`, `report_lab`, `complience_req`, `loa_new`, `loa_sent`, `stats_temp`, `pketerangan_status`, `notes_project`, `identification_num`, `certification_no`, `last_updated`) VALUES
(257, '2023-01-12 00:00:00', NULL, 7, 3, 31, NULL, '-', 'ASPI-23CPTTN-0112015', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 10:22:05'),
(258, '2023-01-16 00:00:00', NULL, 7, 3, 31, NULL, '-', 'ASPI-23CPTTN-0112016', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 10:23:09'),
(259, '2023-01-12 00:00:00', NULL, 7, 3, 31, NULL, '-', 'ASPI-23CPTTN-0112017', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 10:23:42'),
(260, '2023-01-12 00:00:00', NULL, 7, 3, 31, NULL, '-', 'ASPI-23CPTTN-0112018', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-26 10:25:06'),
(261, '2023-01-19 00:00:00', NULL, 16, 3, 46, NULL, '-', 'ASPI-23CPTTN-0119019', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(262, '2023-01-24 00:00:00', NULL, 16, 3, 96, NULL, '-', 'ASPI-23CPTTN-0124020', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKP', NULL, 'ASPI-23COM-0314013', '2023-02-14 14:10:48'),
(263, '2023-01-24 00:00:00', NULL, 3, 3, 46, NULL, '-', 'ASPI-23CPTTN-0124021', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(265, '2023-01-24 00:00:00', NULL, 16, 3, 58, NULL, '-', 'ASPI-23CPTTN-0124022', 'AJ23REP02-8-01', 'Artajasa', NULL, NULL, NULL, '2023-02-10 11:35:54', NULL, NULL, NULL, NULL, 'KKP BJB', NULL, 'ASPI-23COM-0224020', '2023-03-02 10:00:12'),
(266, '2022-12-02 00:00:00', NULL, 16, 3, 39, NULL, '-', 'ASPI-22CPTTN-1202080', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0126007', '2023-02-07 15:37:46'),
(267, '2022-12-07 00:00:00', NULL, 16, 3, 146, NULL, '-', 'ASPI-22CPTTN-1207081', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-22COM-1223104', '2023-02-07 15:40:39'),
(268, '2022-12-08 00:00:00', NULL, 3, 3, 9, NULL, '-', 'ASPI-22CPTTN-1208082', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(269, '2022-12-09 00:00:00', NULL, 16, 3, 47, NULL, '-', 'ASPI-22CPTTN-1209083', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKP', NULL, 'ASPI-23COM-0127008', '2023-02-07 15:43:37'),
(270, '2022-12-22 00:00:00', NULL, 16, 3, 95, NULL, '-', 'ASPI-22CPTTN-1222084', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKP', NULL, 'ASPI-23COM-0203011', '2023-02-07 15:44:54'),
(271, '2022-12-23 00:00:00', NULL, 16, 3, 31, NULL, '-', 'ASPI-22CPTTN-1230085', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKP', NULL, 'ASPI-23COM-0203012', '2023-02-07 15:46:18'),
(272, '2023-01-30 00:00:00', NULL, 6, 3, 141, NULL, '-', 'ASPI-23CPTTN-0130023', '', '', NULL, '2023-02-07 15:52:59', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(273, '2023-02-01 00:00:00', NULL, 3, 3, 108, NULL, '-', 'ASPI-23CPTTN-0201024', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(274, '2023-02-07 00:00:00', NULL, 7, 3, 39, NULL, '-', 'ASPI-23CPTTN-0207025', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(275, '2023-02-07 00:00:00', NULL, 7, 3, 39, NULL, '-', 'ASPI-23CPTTN-0207026', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(276, '2023-02-08 00:00:00', NULL, 7, 3, 46, NULL, 'KKP BRI', 'ASPI-23CPTTN-0208027', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(277, '2023-02-08 00:00:00', NULL, 15, 3, 46, NULL, 'KKP BRI', 'ASPI-23CPTTN-0208028', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(278, '2023-02-14 00:00:00', NULL, 16, 3, 139, NULL, 'Kartu ATM NSICCS', 'ASPI-23CPTTN-0214029', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0309025', '2023-03-14 11:06:41'),
(279, '2023-03-13 00:00:00', NULL, 16, 13, 170, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rekomendasi KKPD\r\nTerima Dokumen, 03/13/2023\r\nPemeriksaan 1,  03/20/23\r\nPerbaikan 1, 03/21/23\r\nPemeriksaan 1, 03/20/23\r\nPerbaikan 2, 03/21/23\r\nPemeriksaan 2, 03/24/23 - Done', NULL, 'Sek.ASPI/043/IV/2023', '2023-04-10 17:52:10'),
(280, '2023-03-28 00:00:00', NULL, 16, 13, 171, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKPD, \r\nTerima Dokumen, 03/28/23\r\nPemeriksaan 1, 03/30/23\r\nPerbaikan 1, 04/05/23\r\nPemeriksaan 2, 04/06/23\r\nPerbaikan 2, 04/16/23\r\nPemeriksaan 3, 04/17/23 -Done', NULL, 'Sek.ASPI/108/IV/2023', '2023-04-26 08:10:20'),
(281, '2023-03-28 00:00:00', NULL, 16, 13, 169, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-28 00:00:00', NULL, NULL, NULL, 'Terima Dokumen, 03/28/23\r\nPemeriksaan 1, 03/30/23 -done', NULL, 'Sek.ASPl/073/IV/2023', '2023-04-17 08:13:55'),
(282, '2023-03-29 00:00:00', NULL, 16, 13, 47, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 03/29/23\r\nPemeriksaan 1, 03/30/23\r\nPerbaikan 1, 04/17/23\r\nPemeriksaan 2, 04/18/23', NULL, 'Sek.ASPI/110/IV/2023', '2023-04-26 08:10:07'),
(283, '2023-03-31 00:00:00', NULL, 16, 13, 96, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rekomendasi KKPD, 03/31/23\r\nPemeriksaan 1, 04/03/23\r\nPerbaikan 1, 04/04/23\r\nPemeriksaan 2, 04/04/23 -Done', NULL, 'Sek.ASPI/074/IV/2023', '2023-04-10 17:52:37'),
(284, '2023-04-12 00:00:00', NULL, 16, 13, 8, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima dokumen, 04/12/23\r\nPemeriksaan 1, 04/18/23\r\nPerbaikan 1, 04/18/23\r\nPemeriksaan 2, 04/26/23 -Done', NULL, 'Sek.ASPI/113/IV/2023', '2023-05-03 10:23:38'),
(285, '2023-04-17 00:00:00', NULL, 16, 13, 95, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'terima dokumen, 04/17/23\r\nPemeriksaan 1, 04/18/23\r\nPerbaikan 1, 04/18/23\r\nPemeriksaan 2, 04/26/23 - Done', NULL, 'Sek.ASPI/115/IV/2023', '2023-04-28 07:59:52'),
(286, '2023-04-18 00:00:00', NULL, 16, 13, 58, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/18/23\r\nPemeriksaan 1, 04/26/23 - Done', NULL, 'Sek.ASPI/114/IV/2023', '2023-04-28 07:59:24'),
(287, '2023-04-18 00:00:00', NULL, 16, 13, 147, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/18/23\r\nPemeriksaan 1, 04/26/23', NULL, 'Sek.ASPI/139/V/2023', '2023-05-05 15:41:01'),
(288, '2023-04-18 00:00:00', NULL, 16, 13, 172, NULL, 'Rekomendasi KKPD', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima dokumen, 04/18/23\r\nPemeriksaan 1, 04/26/23\r\nPerbaikan 1, 05/03/23\r\nPemeriksaan 2, 05/03/23', NULL, 'Sek.ASPI/131/V/2023', '2023-05-04 18:01:55'),
(289, '2023-05-04 00:00:00', NULL, 16, 13, 46, NULL, 'Rekomendasi KKP Domestik', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 05/04/23\r\nPemeriksaan 1, 05/04/23', NULL, 'Sek.ASPI/137/V/2023', '2023-05-05 15:40:52'),
(290, '2023-02-14 00:00:00', NULL, 16, 3, 139, NULL, 'Kartu ATM NSICCS', 'ASPI-23CPTTN-0214029', 'RS23CPG02-21-1', 'Rintis', NULL, NULL, NULL, NULL, '2023-03-14 00:00:00', NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0309025', '2023-05-22 12:58:41'),
(291, '2023-02-15 00:00:00', NULL, 16, 3, 8, NULL, 'KKP Domestik', 'ASPI-23CPTTN-0215030', 'AJ23REP03-01-01', 'Artajasa', NULL, NULL, NULL, NULL, '2023-04-10 00:00:00', NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0405035', '2023-05-22 13:02:16'),
(292, '2023-02-14 00:00:00', NULL, 16, 2, 139, NULL, '-', 'ASPI-23CPTTN-0214029', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0309025', '2023-06-09 15:39:37'),
(293, '2023-02-15 00:00:00', NULL, 16, 2, 8, NULL, '-', 'ASPI-23CPTTN-0215030', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0405035', '2023-06-09 15:42:03'),
(294, '2023-02-17 00:00:00', NULL, 8, 2, 146, NULL, '-', 'ASPI-23CPTTN-0217031', NULL, 'Rintis', NULL, NULL, '2023-08-02 09:15:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:43:00'),
(295, '2023-02-17 00:00:00', NULL, 16, 2, 46, NULL, '-', 'ASPI-23CPTTN-0217032', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0324028', '2023-06-09 15:43:51'),
(296, '2023-02-23 00:00:00', NULL, 16, 2, 4, NULL, '-', 'ASPI-23CPTTN-0223033', NULL, 'Artajasa', NULL, NULL, NULL, '2023-06-09 15:44:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:44:30'),
(297, '2023-02-23 00:00:00', NULL, 16, 2, 46, NULL, '-', 'ASPI-23CPTTN-0223034', NULL, 'Rintis', NULL, NULL, NULL, '2023-06-09 15:45:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:45:22'),
(298, '2023-02-23 00:00:00', NULL, 16, 2, 39, NULL, '-', 'ASPI-23CPTTN-0223035', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0426044', '2023-06-09 15:46:22'),
(299, '2023-02-23 00:00:00', NULL, 16, 2, 9, NULL, '-', 'ASPI-23CPTTN-0223036', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:47:11'),
(300, '2023-02-24 00:00:00', NULL, 16, 2, 147, NULL, '-', 'ASPI-23CPTTN-0224037', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:47:55'),
(301, '2023-02-27 00:00:00', NULL, 8, 2, 146, NULL, '-', 'ASPI-23CPTTN-0227038', NULL, 'Rintis', NULL, NULL, '2023-08-02 09:16:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:48:45'),
(302, '2023-02-27 00:00:00', NULL, 16, 2, 162, NULL, '-', 'ASPI-23CPTTN-0227039', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:49:33'),
(303, '2023-02-28 00:00:00', NULL, 7, 2, 96, NULL, '-', 'ASPI-23CPTTN-0228040', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:50:21'),
(304, '2023-03-08 00:00:00', NULL, 16, 2, 56, NULL, '-', 'ASPI-23CPTTN-0308041', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:51:14'),
(305, '2023-03-09 00:00:00', NULL, 16, 2, 9, NULL, '-', 'ASPI-23CPTTN-0309042', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0502045', '2023-06-09 15:51:50'),
(306, '2023-03-10 00:00:00', NULL, 9, 2, 137, NULL, '-', 'ASPI-23CPTTN-0310043', NULL, 'Artajasa', NULL, NULL, NULL, '2023-06-09 15:52:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:52:30'),
(307, '2023-03-16 00:00:00', NULL, 16, 2, 214, NULL, '-', 'ASPI-23CPTTN-0316044', NULL, 'Rintis', NULL, NULL, NULL, '2023-07-11 08:55:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:53:13'),
(308, '2023-03-16 00:00:00', NULL, 16, 2, 214, NULL, '-', 'ASPI-23CPTTN-0316045', NULL, 'Rintis', NULL, NULL, NULL, '2023-07-11 08:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:53:41'),
(309, '2023-03-17 00:00:00', NULL, 16, 2, 105, NULL, '-', 'ASPI-23CPTTN-0317046', NULL, 'Artajasa', NULL, NULL, NULL, '2023-06-09 15:54:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 15:54:15'),
(310, '2023-03-17 00:00:00', NULL, 16, 2, 235, NULL, '-', 'ASPI-23CPTTN-0317047', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0511049', '2023-06-09 15:54:46'),
(311, '2023-03-24 00:00:00', NULL, 16, 2, 64, NULL, '-', 'ASPI-23CPTTN-0324048', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0530054', '2023-06-09 15:55:28'),
(312, '2023-03-27 00:00:00', NULL, 16, 2, 31, NULL, '-', 'ASPI-23CPTTN-0327049', NULL, 'Rintis', NULL, NULL, NULL, '2023-06-09 15:56:06', NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0607060', '2023-06-09 16:16:56'),
(313, '2023-03-27 00:00:00', NULL, 16, 2, 31, NULL, '-', 'ASPI-23CPTTN-0327050', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0418041', '2023-06-09 15:56:41'),
(314, '2023-03-27 00:00:00', NULL, 16, 2, 31, NULL, '-', 'ASPI-23CPTTN-0327051', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0418042', '2023-06-09 15:57:21'),
(315, '2023-03-27 00:00:00', NULL, 16, 2, 31, NULL, '-', 'ASPI-23CPTTN-0327052', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0418043', '2023-06-09 15:57:51'),
(316, '2023-03-27 00:00:00', NULL, 16, 2, 31, NULL, '-', 'ASPI-23CPTTN-0327053', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0523050', '2023-06-09 15:58:27'),
(317, '2023-03-27 00:00:00', NULL, 16, 2, 31, NULL, '-', 'ASPI-23CPTTN-0327054', NULL, 'Rintis', NULL, NULL, NULL, '2023-06-09 16:17:23', NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0607061', '2023-06-09 16:17:17'),
(318, '2023-04-04 00:00:00', NULL, 16, 2, 71, NULL, '-', 'ASPI-23CPTTN-0404055', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0525051', '2023-06-09 15:59:38'),
(319, '2023-04-04 00:00:00', NULL, 16, 2, 96, NULL, '-', 'ASPI-23CPTTN-0404056', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0502047', '2023-06-09 16:00:13'),
(320, '2023-04-04 00:00:00', NULL, 16, 2, 51, NULL, '-', 'ASPI-23CPTTN-0404057', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0530055', '2023-06-09 16:01:10'),
(321, '2023-04-10 00:00:00', NULL, 16, 2, 32, NULL, '-', 'ASPI-23CPTTN-0410058', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 16:03:28'),
(322, '2023-04-14 00:00:00', NULL, 9, 2, 7, NULL, '-', 'ASPI-23CPTTN-0414059', NULL, 'Rintis', NULL, NULL, NULL, '2023-06-09 16:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 16:04:10'),
(323, '2023-04-14 00:00:00', NULL, 16, 2, 12, NULL, '-', 'ASPI-23CPTTN-0414060', NULL, 'Rintis', NULL, NULL, '2023-06-14 20:48:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0620066', '2023-06-21 12:01:39'),
(324, '2023-04-14 00:00:00', NULL, 16, 2, 12, NULL, '-', 'ASPI-23CPTTN-0414061', NULL, 'Rintis', NULL, NULL, '2023-06-14 20:48:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0620067', '2023-06-21 12:01:47'),
(325, '2023-04-14 00:00:00', NULL, 16, 2, 12, NULL, '-', 'ASPI-23CPTTN-0414062', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0607058', '2023-06-09 16:16:28'),
(326, '2023-04-18 00:00:00', NULL, 16, 2, 138, NULL, '-', 'ASPI-23CPTTN-0418063', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0525053', '2023-06-09 16:06:32'),
(327, '2023-04-27 00:00:00', NULL, 7, 2, 27, NULL, '-', 'ASPI-23CPTTN-0427064', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 16:07:11'),
(328, '2023-04-27 00:00:00', NULL, 16, 2, 84, NULL, '-', 'ASPI-23CPTTN-0427065', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0607057', '2023-06-09 16:15:35'),
(329, '2023-04-27 00:00:00', NULL, 16, 2, 35, NULL, '-', 'ASPI-23CPTTN-0427066', NULL, 'Rintis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23CPTTN-0102002', '2023-06-09 16:16:01'),
(330, '2023-04-28 00:00:00', NULL, 9, 2, 88, NULL, '-', 'ASPI-23CPTTN-0428067', '', '', NULL, '2023-08-29 13:42:32', NULL, '2023-08-30 11:18:11', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(331, '2023-05-05 00:00:00', NULL, 16, 2, 17, NULL, '-', 'ASPI-23CPTTN-0505068', NULL, 'Artajasa', NULL, NULL, '2023-06-12 15:53:13', '2023-06-12 15:53:27', NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0615062', '2023-06-21 12:08:22'),
(332, '2023-05-05 00:00:00', NULL, 16, 2, 17, NULL, '-', 'ASPI-23CPTTN-0505069', NULL, 'Artajasa', NULL, NULL, '2023-06-12 15:53:17', '2023-06-12 15:53:31', NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0615063', '2023-06-21 12:08:30'),
(333, '2023-05-05 00:00:00', NULL, 16, 2, 126, NULL, '-', 'ASPI-23CPTTN-0505070', NULL, 'Artajasa', NULL, NULL, NULL, '2023-06-12 13:54:54', NULL, NULL, NULL, NULL, NULL, NULL, 'ASPI-23COM-0616064', '2023-06-21 12:04:04'),
(334, '2023-05-09 00:00:00', NULL, 16, 2, 107, NULL, '-', 'ASPI-23CPTTN-0509071', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(335, '2023-05-19 00:00:00', NULL, 16, 2, 71, NULL, '-', 'ASPI-23CPTTN-0519072', NULL, 'Rintis', NULL, NULL, '2023-06-09 16:24:50', '2023-06-09 17:37:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 16:12:26'),
(336, '2023-05-30 00:00:00', NULL, 16, 2, 58, NULL, '-', 'ASPI-23CPTTN-0530073', NULL, 'Artajasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 16:13:35'),
(337, '2023-05-31 00:00:00', NULL, 16, 2, 216, NULL, '-', 'ASPI-23CPTTN-0531074', NULL, 'Rintis', NULL, NULL, '2023-09-29 16:42:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-09 16:14:55'),
(338, '2023-06-12 00:00:00', NULL, 16, 2, 22, NULL, 'PermataDebit', 'ASPI-23CPTTN-0612075', '', '', '2023-07-31 10:16:15', NULL, NULL, '2023-08-22 11:57:44', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(339, '2023-06-20 00:00:00', NULL, 16, 2, 9, NULL, 'UNIONPAY GOLD DEBIT CARD', 'ASPI-23CPTTN-0620076', '', '', NULL, '2023-06-22 13:34:11', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(340, '2023-06-20 00:00:00', NULL, 16, 2, 9, NULL, 'NPG Debit Card', 'ASPI-23CPTTN-0620077', '', '', NULL, '2023-06-22 13:34:16', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(341, '2023-06-30 00:00:00', NULL, 16, 2, 27, NULL, 'BNC GPN Debit Card', 'ASPI-23CPTTN-0630078', '', '', NULL, '2023-07-07 15:21:48', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(342, '2023-06-30 00:00:00', NULL, 16, 2, 27, NULL, 'BNC VISA Debit Card', 'ASPI-23CPTTN-0630079', '', '', NULL, '2023-07-07 15:21:16', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(343, '2023-06-30 00:00:00', NULL, 8, 2, 146, NULL, 'KARTU DEBIT CIMB', 'ASPI-23CPTTN-0630080', '', '', NULL, '2023-07-14 13:17:08', '2023-08-02 09:16:23', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(344, '2023-07-05 00:00:00', NULL, 16, 2, 122, NULL, 'Kartu ATM Debit BBA', 'ASPI-23CPTTN-0705081', '', '', NULL, NULL, '2023-07-28 13:12:22', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(345, '2023-07-24 00:00:00', NULL, 7, 3, 81, NULL, 'ATM / DEBIT NSICCS', 'ASPI-23CPTTN-0724082', '', '', '2023-08-07 15:42:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(346, '2023-07-24 00:00:00', NULL, 16, 3, 81, NULL, 'ATM / DEBIT NSICCS', 'ASPI-23CPTTN-0724083', '', '', '2023-08-07 15:42:07', NULL, NULL, '2023-10-12 09:43:11', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(347, '2023-07-28 00:00:00', NULL, 16, 3, 44, NULL, 'KARTU DEBIT BANK MANTAP', 'ASPI-23CPTTN-0731084', '', '', '2023-08-04 14:43:59', NULL, NULL, '2023-09-04 13:40:04', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(348, '2023-08-02 00:00:00', NULL, 16, 3, 225, NULL, 'Kartu Debit GPN', 'ASPI-23CPTTN-0802085', '', '', NULL, '2023-08-02 15:57:22', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(349, '2023-08-03 00:00:00', NULL, 9, 3, 146, NULL, 'KARTU DEBIT CIMB', 'ASPI-23CPTTN-0804086', '', '', '2023-08-11 16:20:42', '2023-08-22 11:19:33', NULL, '2023-08-22 15:12:55', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(350, '2023-08-18 00:00:00', NULL, 16, 3, 164, NULL, 'DEBIT NSICCS', 'ASPI-23CPTTN-0818087', '', '', '2023-08-18 13:14:55', NULL, NULL, '2023-10-12 09:24:38', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(351, '2023-08-23 00:00:00', NULL, 16, 3, 258, NULL, 'KARTU DEBIT BPR SUPRA ARTAPERSADA', 'ASPI-23CPTTN-0823088', '', '', NULL, '2023-08-24 10:43:46', NULL, '2023-12-01 14:44:01', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(352, '2023-08-29 00:00:00', NULL, 9, 3, 96, NULL, 'Kartu Debit NSICCS BNI', 'ASPI-23CPTTN-0829089', '', '', NULL, '2023-09-06 14:52:00', NULL, '2023-10-25 15:56:31', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(353, '2023-09-07 00:00:00', NULL, 16, 3, 71, NULL, 'Kartu Debit Danamon', 'ASPI-23CPTTN-0907090', NULL, NULL, '2023-09-12 11:03:55', NULL, NULL, '2023-10-10 09:51:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-09-07 17:29:31'),
(354, '2023-09-12 00:00:00', NULL, 16, 3, 7, NULL, 'Corporate Debit Card', 'ASPI-23CPTTN-0912091', '', '', NULL, '2023-09-13 09:48:19', NULL, '2023-09-26 13:35:23', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(355, '2023-09-14 00:00:00', NULL, 16, 3, 146, NULL, 'KARTU DEBIT CIMB', 'ASPI-23CPTTN-0914092', '', '', NULL, NULL, '2023-09-29 16:43:09', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(356, '2023-09-18 00:00:00', NULL, 3, 3, 109, NULL, 'HSBC VISA Debit', 'ASPI-23CPTTN-0918093', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(357, '2023-10-02 00:00:00', NULL, 16, 3, 39, NULL, 'BCA ATM Debit Contactless Chip Card', 'ASPI-23CPTTN-1002094', '', '', NULL, '2023-10-04 09:41:31', NULL, '2023-10-13 16:03:57', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(358, '2023-10-06 00:00:00', NULL, 16, 3, 16, NULL, 'BTN Visa Debit Contactless', 'ASPI-23CPTTN-1006095', '', '', NULL, NULL, '2023-11-20 14:43:16', '2023-11-20 14:50:43', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(359, '2023-10-06 00:00:00', NULL, 8, 3, 16, NULL, 'BTN Visa Debit Contactless', 'ASPI-23CPTTN-1006096', '', '', NULL, NULL, '2024-01-10 10:23:31', '2023-10-11 11:21:55', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(360, '2023-10-09 00:00:00', NULL, 16, 3, 53, NULL, 'KARTU DEBIT BERCHIP', 'ASPI-23CPTTN-1009097', '', '', NULL, '2023-10-10 09:29:43', NULL, '2023-10-16 11:42:02', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(361, '2023-10-11 00:00:00', NULL, 16, 3, 58, NULL, 'bjb Debit NXP P71', 'ASPI-23CPTTN-1011098', '', '', NULL, '2023-10-26 09:16:40', NULL, '2023-11-07 09:27:35', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(362, '2023-10-11 00:00:00', NULL, 16, 3, 58, NULL, 'bjb Debit Visa Dual Applet UBJ WKI', 'ASPI-23CPTTN-1011099', '', '', NULL, '2023-10-26 09:16:34', NULL, '2023-11-07 09:27:40', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(363, '2023-10-12 00:00:00', NULL, 16, 3, 44, NULL, 'KARTU DEBIT BANK MANTAP', 'ASPI-23CPTTN-1012100', '', '', NULL, '2023-10-13 15:56:39', NULL, '2023-11-14 10:49:20', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(364, '2023-10-17 00:00:00', NULL, 16, 3, 96, NULL, 'Kartu Debit NSICCS BNI', 'ASPI-23CPTTN-1017101', '', '', NULL, '2023-10-18 15:42:51', NULL, '2023-11-24 14:32:55', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(365, '2023-10-18 00:00:00', NULL, 9, 3, 63, NULL, 'Kartu Bank Debit BANTEN', 'ASPI-23CPTTN-1018102', '', '', NULL, '2023-10-25 14:01:13', '2024-01-09 09:26:27', '2024-01-09 10:27:09', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(366, '2023-10-18 00:00:00', NULL, 16, 3, 91, NULL, 'Kartu Debit NSICCS BPR Danagung Bakti', 'ASPI-23CPTTN-1018103', '', '', NULL, '2023-10-19 11:02:01', NULL, '2023-11-06 14:51:52', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(367, '2023-10-18 00:00:00', NULL, 16, 3, 89, NULL, 'Kartu Debit NSICCS BPR Danagung Ramulti', 'ASPI-23CPTTN-1018104', '', '', NULL, '2023-10-19 11:02:06', NULL, '2023-11-06 14:55:20', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(368, '2023-10-27 00:00:00', NULL, 16, 3, 75, NULL, 'DEBIT NSICCS BANK SULTRA GOLD', 'ASPI-23CPTTN-1027105', '', '', NULL, '2023-11-02 15:01:31', NULL, '2023-11-27 15:52:47', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(369, '2023-10-30 00:00:00', NULL, 9, 3, 67, NULL, 'Debit Card', 'ASPI-23CPTTN-1030106', '', '', NULL, '2023-10-31 08:58:41', NULL, '2023-11-07 09:21:39', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(370, '2023-10-30 00:00:00', NULL, 16, 3, 157, NULL, 'Blu Debit Card', 'ASPI-23CPTTN-1102107', '', '', NULL, '2023-11-03 09:37:38', NULL, '2023-11-14 09:24:02', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(371, '2023-11-06 00:00:00', NULL, 9, 3, 146, NULL, 'KARTU DEBIT CIMB', 'ASPI-23CPTTN-1106108', '', '', NULL, '2023-11-10 10:16:59', NULL, '2023-11-27 09:36:58', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(372, '2023-11-06 00:00:00', NULL, 9, 3, 146, NULL, 'KARTU DEBIT CIMB', 'ASPI-23CPTTN-1106109', '', '', NULL, '2023-11-10 10:16:54', NULL, '2023-11-29 12:10:29', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(373, '2023-11-09 00:00:00', NULL, 7, 3, 43, NULL, 'ATM Debit Card', 'ASPI-23CPTTN-1109110', '', '', NULL, '2023-11-13 10:58:34', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(374, '2023-11-09 00:00:00', NULL, 7, 3, 43, NULL, 'ATM Debit Card', 'ASPI-23CPTTN-1109111', '', '', NULL, '2023-11-13 10:58:39', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(375, '2023-11-28 00:00:00', NULL, 8, 3, 86, NULL, 'Kartu ATM Debit Bank INA', 'ASPI-23CPTTN-1128112', '', '', NULL, '2023-11-30 11:21:05', '2024-01-05 10:50:27', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(376, '2023-11-29 00:00:00', NULL, 7, 3, 96, NULL, 'Kartu Debit NSICCS BNI', 'ASPI-23CPTTN-1129113', '', '', NULL, '2023-12-01 16:11:49', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(377, '2023-12-06 00:00:00', NULL, 7, 3, 18, NULL, 'Kartu Kredit Indonesia', 'ASPI-23CPTTN-1206114', '', '', NULL, '2023-12-22 09:53:30', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(378, '2023-12-15 00:00:00', NULL, 16, 3, 43, NULL, 'ATM Debit Card', 'ASPI-23CPTTN-1512003', '', '', NULL, '2023-12-19 11:09:02', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(379, '2023-12-22 00:00:00', NULL, 7, 3, 62, NULL, 'Kartu Shar-E Debit Bank Muamalat', 'ASPI-23CPTTN-2212004', '', '', NULL, '2024-01-04 11:11:20', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(380, '2024-01-05 00:00:00', NULL, 7, 3, 43, NULL, 'ATM Debit Card', 'ASPI-24CPTTN-0501004', '', '', NULL, '2024-01-05 15:43:43', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects_keterangans`
--

CREATE TABLE `projects_keterangans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pketerangan` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_keterangans`
--

INSERT INTO `projects_keterangans` (`id`, `nama_pketerangan`) VALUES
(1, 'Approved By Manager'),
(2, 'Approved By Admin, Menunggu Approval Manager'),
(3, 'Declined By Manager'),
(4, 'Menunggu Approval Admin'),
(5, 'Declined By Admin');

-- --------------------------------------------------------

--
-- Table structure for table `projects_stats`
--

CREATE TABLE `projects_stats` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pstat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_stats`
--

INSERT INTO `projects_stats` (`id`, `nama_pstat`) VALUES
(1, 'Reserve'),
(2, 'PIF-Review'),
(3, 'PIF to be signed'),
(4, 'Qoutation'),
(5, 'PIF-Received'),
(6, 'CTF-New'),
(7, 'CTF-Sent to Lab'),
(8, 'Report Received'),
(9, 'Compliance Request New'),
(10, 'Compliance Request Signed'),
(11, 'Reviewed'),
(12, 'Loa-New'),
(13, 'Loa-Sent'),
(14, 'Invoice Sent'),
(15, 'Cancel'),
(16, 'Done'),
(17, 'Terima Dokumen'),
(18, 'Perbaikan'),
(19, 'Pengajuan Persetujuan'),
(20, 'Surat Rekomendasi'),
(21, 'Formulir Permohonan'),
(22, 'Surat Persetujuan'),
(23, 'Formulir Sent'),
(24, 'Formulir Received'),
(25, 'IPK Modulus Received'),
(26, 'IPKC Sent');

-- --------------------------------------------------------

--
-- Table structure for table `projects_types`
--

CREATE TABLE `projects_types` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ptype` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects_types`
--

INSERT INTO `projects_types` (`id`, `nama_ptype`) VALUES
(1, 'Internal Test'),
(2, 'Sertifikasi'),
(3, 'Internal Project'),
(4, 'UAT Internal'),
(5, 'Support');

-- --------------------------------------------------------

--
-- Table structure for table `qris`
--

CREATE TABLE `qris` (
  `id` bigint UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `id_pketerangan` bigint UNSIGNED DEFAULT NULL,
  `id_pstat` bigint UNSIGNED NOT NULL,
  `id_product` bigint UNSIGNED NOT NULL,
  `id_mitra` bigint UNSIGNED NOT NULL,
  `surat_rekomendasi` datetime DEFAULT NULL,
  `no_rekomendasi` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_qrisbi` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijin_qrisbi` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_ijinbi` datetime DEFAULT NULL,
  `stats_temp` bigint UNSIGNED DEFAULT NULL,
  `pketerangan_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes_project` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qris`
--

INSERT INTO `qris` (`id`, `waktu_assign_project`, `id_pketerangan`, `id_pstat`, `id_product`, `id_mitra`, `surat_rekomendasi`, `no_rekomendasi`, `jenis_qrisbi`, `ijin_qrisbi`, `tgl_ijinbi`, `stats_temp`, `pketerangan_status`, `notes_project`, `last_updated`) VALUES
(1, '2022-07-28 00:00:00', NULL, 16, 9, 107, '2022-08-04 12:28:23', 'Sek.ASPI/139/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 29 Juli 2022\r\n- Pemeriksaan ke-2 tanggal 29 Juli 2022\r\n- Pemeriksaan ke-3 tanggal 29 Juli 2022 - Done', '2022-08-16 15:41:37'),
(2, '2022-07-28 00:00:00', NULL, 16, 9, 168, '2022-08-09 14:19:56', 'Sek.ASPI/149/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 29 Juli 2022\r\n- Pemeriksaan 2, 05/8/2022\r\n- Pemeriksaan 3, 08/8/2022', '2022-08-16 15:41:40'),
(3, '2022-07-28 00:00:00', NULL, 16, 9, 169, '2022-08-04 12:27:31', 'Sek.ASPI/136/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 29 Juli 2022\r\n- Pemeriksaan ke-2 tanggal 01 Agustus 2022\r\n- Pemeriksaan ke-3 tanggal 01 Agustus 2022 \r\n- Pemeriksaan ke-4 tanggal 03 Agustus 2022 - done', '2022-08-16 15:41:43'),
(4, '2022-07-28 00:00:00', NULL, 16, 9, 22, '2022-08-04 12:26:14', 'Sek.ASPI/140/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 29 Juli 2022\r\n- Pemeriksaan 2, 2/8/2022\r\n- Pemeriksaan 3, 3/8/2022 - Done', '2022-08-16 15:41:49'),
(5, '2022-07-29 00:00:00', NULL, 16, 9, 114, '2022-08-04 12:27:56', 'Sek.ASPI/138/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 01 Agustus 2022\r\n- Pemeriksaan ke-2 tanggal 01 Agustus 2022 - done', '2022-08-16 15:41:21'),
(6, '2022-07-29 00:00:00', NULL, 16, 9, 146, '2022-08-04 12:29:28', 'Sek.ASPI/142/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 01 Agustus 2022\r\n- Pemeriksaan 2, 2/8/2022\r\n- Pemeriksaan 3, 4/8/2022 - Done', '2022-08-16 15:41:25'),
(7, '2022-07-29 00:00:00', NULL, 16, 9, 170, '2022-08-04 12:26:56', 'Sek.ASPI/137/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 01 Agustus 2022\r\n- Pemeriksaan ke-2 tanggal 01 Agustus 2022\r\n- Pemeriksaan ke-3 tanggal 02 Agustus 2022 - done', '2022-08-16 15:41:28'),
(8, '2022-07-29 00:00:00', NULL, 16, 9, 47, '2022-08-09 14:21:25', 'Sek.ASPI/148/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan ke-1 tanggal 01 Agustus 2022\r\n- Pemeriksaan 2, 04/8/2022', '2022-08-16 15:41:33'),
(9, '2021-09-21 00:00:00', NULL, 16, 6, 8, NULL, 'Sek-ASPI/208/IX/2021', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan -1, 21/09/2021\r\n- Pemeriksaan-2, 22/09/2021\r\n- Pemeriksaan-3, 23/09/2022 - done', '2022-08-01 15:41:22'),
(10, '2021-10-13 00:00:00', NULL, 18, 6, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen 13/10/21\r\n- Pemeriksaan 1, 05/01/22', '2023-07-04 14:45:19'),
(11, '2021-11-17 00:00:00', NULL, 16, 6, 114, '2022-05-13 00:00:00', 'Sek.ASPI/088/V/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 29/11/21\r\n- Pemeriksaan 2, 04/4/22\r\n- Pemeriksaan 3, 21/4/22\r\n- Pemeriksaan 4, 27/4/22\r\n- Pemeriksaan 5, 9/5/22\r\n- Pemeriksaan 6, 13/5/22 - done', '2022-08-01 15:51:00'),
(12, '2022-02-14 00:00:00', NULL, 16, 6, 107, '2022-06-13 00:00:00', 'Sek.ASPI/110/VI/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 1/3/22\r\n- Pemeriksaan 2, 14/3/22\r\n- Pemeriksaan 3, 21/3/2022\r\n- Pemeriksaan 4, 13/6/2022 - done', '2022-08-01 15:52:30'),
(13, '2022-02-17 00:00:00', NULL, 16, 6, 146, '2022-12-16 11:25:58', 'Sek.ASPI/250/XII/2022', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 4/4/22\r\nPerbaikan 1, 20/4/22\r\nPemeriksaan 2, 21/4/22\r\nPerbaikan 2, 16/6/22\r\nPemeriksaan 3, 21/6/22 Perbaikan 3, xx/9/22 Pemeriksaan 4, 03/10/22 Perbaikan 4, 24/11/22 Pemeriksaan 5, 28/11/22, Perbaikan 5, 12/5/22, Pemeriksaan  6 12/06/22, Perbaikan 6 12/13/22, Pemeriksaan 7 12/14/22', '2022-12-16 11:26:04'),
(14, '2022-02-22 00:00:00', NULL, 16, 6, 170, '2022-06-27 00:00:00', 'Sek.ASPI/119/VI/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 2/3/22\r\n- Pemeriksaan 2, 24/6/22\r\n- Pemeriksaan 3, 27/6/22 - done', '2022-08-01 15:54:52'),
(15, '2022-02-21 00:00:00', NULL, 16, 6, 147, '2022-03-11 00:00:00', 'Sek.ASPI/033/III/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaann 1, 2/3/22\r\n- Pemeriksaann 2, 11/3/22 - done', '2022-08-01 15:56:28'),
(16, '2022-03-18 00:00:00', NULL, 16, 6, 180, '2022-03-23 00:00:00', 'Sek.ASPI/047/III/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 21 Maret 2022\r\n- Pemeriksaan 2, 21/3/22 - done', '2022-08-01 15:57:53'),
(17, '2022-04-04 00:00:00', NULL, 16, 6, 96, '2022-12-23 14:42:55', 'Sek.ASPI/252/XII/2022', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen 04/04/22\r\nPemeriksaan 1, 11/4/22\r\nPerbaikan 1, 12/05/22\r\nPemeriksaan 2, 12/06/22\r\nPerbaikan 2, 12/16/22\r\nPemeriksaan 3, 12/20/22\r\nPerbaikan 3, 12/21/22\r\nPemeriksaan 4, 12/22/22 - Done', '2022-12-23 14:43:00'),
(18, '2022-04-26 00:00:00', NULL, 16, 6, 39, '2022-05-11 00:00:00', 'Sek.ASPI/087/V/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 27 April 2022 - done', '2022-08-01 16:00:16'),
(19, '2022-06-09 00:00:00', NULL, 16, 6, 171, '2022-07-18 00:00:00', 'Sek.ASPI/124/VII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 16/6/22\r\n- Pemeriksaan 2, 22/6/22\r\n- Pemeriksaan 3, 24/6/22\r\n- Pemeriksaan 4, 8/7/22 – done', '2022-08-01 16:01:26'),
(20, '2022-06-17 00:00:00', NULL, 16, 6, 172, '2022-06-27 00:00:00', 'Sek.ASPI/120/VI/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 22/6/22\r\n- Pemeriksaan 2, 24/6/22 - done', '2022-08-01 16:02:21'),
(21, '2022-07-11 00:00:00', NULL, 16, 6, 169, '2022-07-27 00:00:00', 'Sek.ASPI/133/VII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 19/7/22\r\n- Pemeriksaan 2, 26/7/22 - done', '2022-08-03 17:20:02'),
(22, '2022-07-08 00:00:00', NULL, 16, 6, 168, '2022-08-16 15:47:15', 'Sek.ASPI/135/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 19/7/22\r\n- Perbaikan 1, 30/7/22\r\n- Pemeriksaan 2, 2/8/22 - done', '2022-08-16 15:47:21'),
(23, '2022-08-01 00:00:00', NULL, 16, 9, 172, '2022-08-04 12:29:00', 'Sek.ASPI/141/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 1/8/2022\r\n- Pemeriksaan 2, 2/8/2022\r\n- Pemeriksaan 3, 3/8/2022', '2022-08-16 15:41:11'),
(24, '2022-08-01 00:00:00', NULL, 16, 9, 171, '2022-08-09 00:00:00', 'Sek.ASPI/153/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 1/8/2022\r\n- Pemeriksaan 2, 05/8/2022\r\n- Pemeriksaan 3, 08/8/2022\r\n- Pemeriksaan 4, 09/8/2022\r\n- Pemeriksaan 5, 10/8/2022 - Done', '2022-08-16 15:41:16'),
(25, '2022-08-02 00:00:00', NULL, 16, 9, 194, '2022-09-13 00:00:00', 'Sek.ASPI/184/IX/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 2/8/2022\r\n- Pemeriksaan 2, 31/8/2022\r\n- Pemeriksaan 3, 01/9/2022\r\n- Pemeriksaan 4, 12/9/2022 - Done', '2022-09-14 09:39:26'),
(26, '2022-08-04 00:00:00', NULL, 16, 9, 39, '2022-08-12 13:10:58', 'Sek.ASPI/155/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 04/8/2022\r\n- Pemeriksaan 2, 09/8/2022\r\n- Pemeriksaan 3, 11/8/2022 - Done', '2022-08-16 15:41:06'),
(27, '2022-08-05 00:00:00', NULL, 16, 9, 147, '2022-08-09 14:22:54', 'Sek.ASPI/147/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 05/8/2022 -Done', '2022-08-16 15:41:00'),
(28, '2020-03-27 00:00:00', NULL, 16, 7, 193, '2020-04-23 00:00:00', 'Sek.ASPI/127/IV/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 3/4/20\r\nReview selesai 18/4/20\r\n•	Minta Rencana bisnis dan akan buat Analisa pengajuan persetujuan ke Ibu Susie\r\n•	Pengajuan Surat Rekomendasi ke Bu Susie 23/4/20', '2022-08-16 15:46:30'),
(29, '2020-03-27 00:00:00', NULL, 16, 7, 202, '2020-04-27 00:00:00', 'Sek.ASPI/134/IV/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 6 April\r\nReview 2, 19/4/20\r\nDone, minta rencana bisnis untuk pengajuan surat rekomendasi ASPI', '2022-08-16 15:46:33'),
(30, '2020-03-08 00:00:00', NULL, 16, 7, 18, '2020-04-23 00:00:00', 'Sek.ASPI/119/IV/2020', NULL, NULL, NULL, NULL, NULL, '•	Review 1, 9 Maret\r\n•	Review 2, 3 April\r\n•	Review 3, 13 April\r\n•	Surat Rekomendasi 16/4/20 – menunggu persetujuan,ttd Ibu Susie', '2022-08-16 15:46:40'),
(31, '2020-03-30 00:00:00', NULL, 16, 7, 62, '2020-04-07 00:00:00', 'Sek.ASPI/113/IV/2020', NULL, NULL, NULL, NULL, NULL, '•	Review 2, 6 April\r\n•	Done\r\n•	Surat rekomendasi 7/4/20', '2022-08-16 15:46:27'),
(32, '2020-04-02 00:00:00', NULL, 16, 7, 188, '2020-04-23 00:00:00', 'Sek.ASPI/125/IV/2020', NULL, NULL, NULL, NULL, NULL, '•	Hasil review 6 April\r\n•	response email tanggal 7 April minta informasi mengenai rencana bisnis dan manajemen risiko\r\n•	Pengajuan Surat Rekomendasi ke Bu Susie 23/4/20', '2022-08-16 15:46:24'),
(33, '2020-04-16 00:00:00', NULL, 16, 7, 185, '2020-04-23 00:00:00', 'Sek.ASPI/072/III/2020', NULL, NULL, NULL, NULL, NULL, '•	Pengajuan Surat Rekomendasi ke Bu Susie 23/4/20', '2022-08-16 15:46:06'),
(34, '2020-04-14 00:00:00', NULL, 16, 7, 179, '2020-04-27 00:00:00', 'Sek.ASPI/131/IV/2020', NULL, NULL, NULL, NULL, NULL, '•	Buat Review\r\n•	Pengajuan Surat Rekomendasi ke Bu Susie 24/4/20', '2022-08-16 15:46:09'),
(35, '2020-04-06 00:00:00', NULL, 16, 7, 139, '2020-07-01 00:00:00', 'Sek.ASPI/170/VII/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 15/4/20\r\nReview 2, 29/4/20\r\nReview 3, 10/5/20', '2022-08-16 15:46:17'),
(36, '2020-04-14 00:00:00', NULL, 16, 7, 8, '2020-06-06 00:00:00', 'Sek.ASPI/160/VI/2020', NULL, NULL, NULL, NULL, NULL, 'QRIS MPM Acquirer\r\nReview 1, 24/4/20', '2022-08-16 15:46:14'),
(37, '2020-03-18 00:00:00', NULL, 16, 7, 110, '2020-05-26 00:00:00', 'Sek.ASPI/154/V/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 6 April 2020\r\nReview 2, 20 Mei 2020 - done', '2022-08-16 15:46:36'),
(38, '2020-04-06 00:00:00', NULL, 16, 7, 76, '2020-05-26 00:00:00', 'Sek.ASPI/155/V/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 15/4/20\r\nReview 2, 13/5/20 - done', '2022-08-16 15:46:21'),
(39, '2020-04-27 00:00:00', NULL, 16, 7, 53, '2021-05-24 00:00:00', 'Sek.ASPI/102/V/2021', NULL, NULL, NULL, NULL, NULL, 'Review 1, 10/5/20 \r\nReview 2, 12/5/21 - done', '2022-08-16 15:46:02'),
(40, '2020-05-04 00:00:00', NULL, 16, 7, 131, '2020-09-15 00:00:00', 'SEk.ASPI/233/IX/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 10/5/20\r\nReview 2, 04/06/20\r\nReview 3, 17/06/20', '2022-08-16 15:45:58'),
(41, '2020-05-13 00:00:00', NULL, 16, 7, 16, '2020-08-28 00:00:00', 'Sek.ASPI/213/VIII/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 10/5/20\r\nReview 2, 04/06/20\r\nReview 3, 17/06/20', '2022-08-16 15:45:55'),
(42, '2020-05-14 00:00:00', NULL, 16, 7, 217, '2020-05-28 00:00:00', 'Sek.ASPI/156/V/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 26/5/20\r\nReview 2, 28/5/20', '2022-08-16 15:45:52'),
(43, '2020-05-29 00:00:00', NULL, 16, 7, 214, '2020-11-02 00:00:00', 'Sek.ASPI/256/XI/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 5/6/20\r\nReview 2, 23/6/20\r\nReview 3, 1/7/20\r\nSiapkan surat rekomendasi, 2/11/20', '2022-08-16 15:45:48'),
(44, '2020-06-18 00:00:00', NULL, 16, 7, 22, '2020-07-13 00:00:00', 'Sek.ASPI/182/VII/2020', NULL, NULL, NULL, NULL, NULL, 'Bank Permata sebagai Acquirer\r\nReview 1, 24/6/20\r\nReview 2, Juli 2020 - done\r\nReview 2, Juli/2020 - done', '2022-08-16 15:45:45'),
(45, '2020-06-26 00:00:00', NULL, 16, 7, 67, '2020-10-06 00:00:00', 'SEk.ASPI/244/X/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 2/7/20\r\nReview 2, 13/7/20\r\nReview 3, 9/9/20\r\nReview 4, 22/9/20\r\nReview 5, 05/10/20 - done', '2022-08-16 15:45:31'),
(46, '2020-07-02 00:00:00', NULL, 16, 7, 125, '2020-08-19 00:00:00', 'Sek.ASPI/208/VIII/2020', NULL, NULL, NULL, NULL, NULL, 'Review 1, 7/7/20\r\nReview 2, 13/7/20\r\nReview 3, 24/07/20\r\nReview 4, 12/8/20 - done', '2022-08-16 15:45:26'),
(47, '2020-06-20 00:00:00', NULL, 16, 7, 143, '2020-09-04 00:00:00', 'Sek.ASPI/214/IX/2020', NULL, NULL, NULL, NULL, NULL, 'Review 24/7/20\r\nTunggu perbaikan\r\nPemeriksaan ke-2, 28/8/20\r\nPemeriksaan 3, 4/9/20', '2022-08-16 15:45:36'),
(48, '2020-06-20 00:00:00', NULL, 16, 7, 45, '2020-08-11 00:00:00', 'Sek.ASPI/206/VIII/2020', NULL, NULL, NULL, NULL, NULL, 'Hasil Pemeriksaan 1, 7/8/20\r\nhasil pemeriksaan 2, 10/8/20', '2022-08-16 15:45:40'),
(49, '2020-07-27 00:00:00', NULL, 16, 7, 12, '2020-09-30 00:00:00', 'Sek.ASPI/243/IX/2020', NULL, NULL, NULL, NULL, NULL, 'Hasil pemerikasaan 1, 24 Agustus \r\nHasil pemerikasaan 2, 25 Agustus', '2022-08-16 15:45:22'),
(50, '2020-07-01 00:00:00', NULL, 16, 7, 85, '2020-09-11 00:00:00', 'Sek.ASPI/230/IX/2020', NULL, NULL, NULL, NULL, NULL, 'Hasil pemerikasaan 1, 24 Agustus\r\nPemeriksaan 2, 10/9/20  - done', '2022-08-18 15:26:53'),
(51, '2020-08-07 00:00:00', NULL, 16, 7, 193, '2020-09-01 00:00:00', 'Sek.ASPI/215/IX/2020', NULL, NULL, NULL, NULL, NULL, 'Hasil Pemeriksaan 1, 23/8/20\r\nHasil Pemeriksaan 2, 26/8/20', '2022-08-16 15:45:16'),
(52, '2020-08-07 00:00:00', NULL, 16, 7, 122, '2020-09-02 00:00:00', 'Sek.ASPI/219/IX/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 23/8/20\r\nPemeriksaan 2, 24/8/20 - done', '2022-08-16 15:45:19'),
(53, '2020-08-12 00:00:00', NULL, 16, 7, 32, '2021-03-17 00:00:00', 'Sek.ASPI/055/III/2021', NULL, NULL, NULL, NULL, NULL, 'Hasil Pemeriksaan ke-2, 17/9/20\r\nPemeriksaan 2, 26/1/21\r\nPemeriksaan 3, 15/3/21 - done', '2022-08-16 15:45:12'),
(54, '2020-08-19 00:00:00', NULL, 16, 7, 86, '2022-08-07 16:40:16', 'Sek.ASPI/223/IX/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 31/8/20\r\nPemeriksaan 2, 1/9/20 - done', '2022-08-16 15:45:09'),
(55, '2020-08-29 00:00:00', NULL, 16, 7, 200, '2020-11-13 00:00:00', 'Sek.ASPI/275/XI/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 29/9/30\r\nPemeriksaan 2, 25/10/20\r\nPemeriksaan 3, 3/11/20 - done', '2022-08-16 15:45:05'),
(56, '2020-08-31 00:00:00', NULL, 16, 7, 99, '2020-12-17 00:00:00', 'Sek.ASPI/308/XII/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 7/9/20\r\nPemerriksaan 2, 22/9/20\r\nPemeriksaan ke 3, 1/6/20 - done', '2022-08-16 15:45:02'),
(57, '2020-09-03 00:00:00', NULL, 16, 7, 95, '2021-06-04 00:00:00', 'Sek.ASPI/110/VI/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 9/9/20\r\nPemeriksaan 2, 25/10/20\r\nPemeriksaan 3, 20/1/21\r\nPemeriksaan 4, 18/2/21\r\nPemeriksaan 5,  1/6/201 - done', '2022-08-16 15:44:59'),
(58, '2020-09-21 00:00:00', NULL, 16, 7, 135, '2020-10-20 00:00:00', 'Sek.ASPI/249/X/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 22/9/20\r\nPemeriksaan 2, 20/10/20', '2022-08-16 15:44:55'),
(59, '2020-09-24 00:00:00', NULL, 16, 7, 69, '2021-02-18 00:00:00', 'Sek.ASPI/032/II/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 25/9/20\r\nPemeriksaan 2, 05/11/20\r\nPemeriksaan 3, 19/11/20\r\nPemeriksaan 4, 25/11/20\r\nPemeriksaan 5, 9/2/21 - done', '2022-08-16 15:44:52'),
(60, '2020-10-19 00:00:00', NULL, 16, 7, 198, '2021-03-24 00:00:00', 'Sek.ASPI/063/III/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 3/11/20\r\nPemeriksaan 2, 4/1/21\r\nPemeriksaan 3, 28/1/21\r\nPemeriksaan 4, 5/3/21 - done', '2022-08-16 15:44:42'),
(61, '2020-10-06 00:00:00', NULL, 16, 7, 43, '2021-04-26 00:00:00', 'Sek.ASPI/084/IV/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 25/10/20\r\nBPD Aceh \r\nPemerikasan 2, 5/4/21\r\nPemeriksaan 3, 21/4/21\r\nPemeriksaan 4, 23/4/21 - done', '2022-08-16 15:44:49'),
(62, '2020-10-21 00:00:00', NULL, 16, 7, 201, '2021-02-10 00:00:00', 'Sek.ASPI/20/I/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 2/11/20\r\nPemeriksaan 2, 17/12/20\r\nPemeriksaan 3, 7/1/21 – done', '2022-08-16 15:44:32'),
(63, '2020-10-20 00:00:00', NULL, 16, 7, 157, '2020-12-04 00:00:00', 'Sek.ASPI/302/XII/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 25/10/20\r\nPemeriksaan 2, 4/11/20\r\nPemeriksaan 3, 6/11/20', '2022-08-16 15:44:35'),
(64, '2020-10-20 00:00:00', NULL, 16, 7, 10, '2020-11-09 00:00:00', 'Sek.ASPI/271/XI/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 25/10/20\r\nPemeriksaan 2, 4/11/20\r\nPemeriksaan 3, 6/11/20 - done', '2022-08-16 15:44:39'),
(65, '2020-09-28 00:00:00', NULL, 16, 7, 215, '2020-11-20 00:00:00', 'Sek.ASPI/284/XI/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 25/10/20\r\nHasil screen shot terlalu kecil\r\nPemeriksaan 2, 5/11/20\r\nPemeriksaan 3, 9/11/20\r\nPemeriksaan 4, 13/11/20\r\nPemeriksaan 5, 18/11/20', '2022-08-16 15:44:46'),
(66, '2020-11-05 00:00:00', NULL, 16, 7, 174, '2020-11-20 00:00:00', 'Sek.ASPI/283/XI/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 13/11/20\r\nPemeriksaan 2, 18/11/20 - done', '2022-08-16 15:44:29'),
(67, '2020-11-09 00:00:00', NULL, 16, 7, 162, '2020-12-08 00:00:00', 'Sek.ASPI/297/XII/2020', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 16/11/20\r\nPemeriksaan 2, 30/11/20\r\nPemeriksaan 3, 5/12/20', '2022-08-16 15:44:24'),
(68, '2020-11-09 00:00:00', NULL, 16, 7, 144, '2021-04-29 00:00:00', 'Sek.ASPI/086/IV/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 17/11/20\r\nPemeriksaan 2, 20/11/20\r\nPemeriksaan 3, 28/4/21 - done', '2022-08-16 15:44:26'),
(69, '2020-11-13 00:00:00', NULL, 16, 7, 205, '2021-03-08 00:00:00', 'Sek.ASPI/042/III/2021', NULL, NULL, NULL, NULL, NULL, 'Sceen capture terlalu kecil\r\nPemeriksaan 1, 22/12/220\r\nPemeriksaan 2, 20/1/21\r\nPemeriksaan 3, 28/1/21\r\nPemeriksaan 4, 15/2/21\r\nPemeriksaan 5, 17/2/21', '2022-08-16 15:44:20'),
(70, '2020-12-11 00:00:00', NULL, 16, 7, 102, '2021-03-12 00:00:00', 'Sek.ASPI/054/III/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 17/12/20\r\nPemeriksaan 2, 12/3/21\r\nPemeriksaan 3, 13/3/21 - done', '2022-08-16 15:44:16'),
(71, '2020-12-23 00:00:00', NULL, 16, 7, 192, '2021-01-18 00:00:00', 'Sek.ASPI/03/I/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan1, 7/1/21\r\nPemeriksaan2, 18/1/21', '2022-08-16 15:44:10'),
(72, '2020-12-23 00:00:00', NULL, 16, 7, 203, '2021-07-26 00:00:00', 'Sek.ASPI/151/VII/2021', NULL, NULL, NULL, NULL, NULL, 'Laporan terlalu kecil untuk diperiksa\r\nPemeriksaan 1, 26/1/21\r\nPemeriksaan 2, 25/2/21\r\nPemeriksaan 3, 26/3/21\r\nPemeriksaan 4, 7/5/21\r\nPemeriksaan 5, 31/5/21\r\nPemeriksaan 6, 2/7/21\r\nPemeriksaan 7, 21/7/21 - done', '2022-08-16 15:44:13'),
(73, '2020-12-28 00:00:00', NULL, 16, 7, 4, '2021-03-24 00:00:00', 'Sek.ASPI/062/III/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 11/1/21\r\nPemeriksaan 2, 18/1/21\r\nPemeriksaan 3, 28/1/21\r\nPemeriksaan 4, 16/2/21\r\nPemeriksaan 5, 4/3/21\r\nPemeriksaan 6, 9/3/21 - done', '2022-08-16 15:44:06'),
(74, '2021-01-08 00:00:00', NULL, 16, 7, 170, '2021-04-07 00:00:00', 'Sek.ASPI/069/IV/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 18/1/21\r\nPemeriksaan 2, 8/2/21\r\nPemeriksaan 3, 17/2/21\r\nPemeriksaan 4, 9/3/21', '2022-08-16 15:44:01'),
(75, '2021-01-14 00:00:00', NULL, 16, 7, 79, '2021-06-02 00:00:00', 'Sek.ASPI/111/VI/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 20/1/21\r\nPemeriksaan 2, 27/4/21\r\nPemeriksaan 3, 25/5/21\r\nPemeriksaan 4, 31/5/21 - Done', '2022-08-16 15:43:58'),
(76, '2021-01-26 00:00:00', NULL, 16, 7, 49, '2021-03-23 00:00:00', 'Sek.ASPI/061/III/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 5/2/21\r\nPemeriksaan 2, 2/3/21\r\nPemeriksaan 3, 15/3/21 - done', '2022-08-16 15:43:55'),
(77, '2021-01-28 00:00:00', NULL, 16, 7, 26, '2021-03-16 00:00:00', 'Sek.ASPI/053/III/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 8/2/21\r\nPemeriksaan 2, 24/2/21\r\nPemeriksaan 3, 12/3/21\r\nPemeriksaan 4, 15/3/21 - done', '2022-08-16 15:43:52'),
(78, '2021-02-08 00:00:00', NULL, 16, 7, 56, '2021-05-03 00:00:00', 'Sek.ASPI/093/V/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 19/2/21\r\nPemeriksaan 2, 02//3/21\r\nPemeriksaan 3, 3/3/21\r\nPemeriksaan 4, 8/3/21\r\nPemeriksaan 5, 30/4/21 - done', '2022-08-16 15:43:49'),
(79, '2021-03-11 00:00:00', NULL, 16, 7, 145, '2021-04-14 00:00:00', 'Sek.ASPI/072/IV/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 22/3/21\r\nPemeriksaan 2, 7/4/21\r\nPemeriksaan 3, 13/4/21\r\nPemeriksaan 3, 13/4/21 - done', '2022-08-16 15:43:41'),
(80, '2021-03-09 00:00:00', NULL, 16, 7, 197, '2021-07-27 00:00:00', 'Sek.ASPI/152/VII/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 19/3/21\r\nPemeriksaan 2, 20/4/21\r\nPemeriksaan 3, 28/4/21\r\nPemeriksaan 4, 5/7/21\r\nPemeriksaan 5, 21/7/21\r\nPemeriksaan 6, 23/7/21', '2022-08-16 15:43:45'),
(81, '2021-03-18 00:00:00', NULL, 16, 7, 27, '2021-06-02 00:00:00', 'Sek.ASPI/112/VI/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 25/3/21\r\nPemeriksaan 2, 3/5/21\r\nPemeriksaan 3, 25/5/21\r\nPemeriksaan 4, 31/5/21 - done', '2022-08-16 15:43:38'),
(82, '2021-04-05 00:00:00', NULL, 16, 7, 208, '2021-05-06 00:00:00', 'Sek.ASPI/095/V/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 12/4/21\r\nPemeriksaan 2, 3/5/21 - done', '2022-08-16 15:43:28'),
(83, '2021-04-01 00:00:00', NULL, 16, 7, 119, '2021-10-11 00:00:00', 'Sek.ASPI/227/X/2021', NULL, NULL, NULL, NULL, NULL, 'Sumber dana rekening simpanan\r\nPemeriksaan 1, 9/4/21\r\nPemeriksaan 2, 14/4/21\r\nPemeriksaan 3, 27/4/21\r\nPemeriksaan 4, 6/10/21 - done', '2022-08-16 15:43:35'),
(84, '2021-04-05 00:00:00', NULL, 16, 7, 35, '2021-05-17 00:00:00', 'Sek.ASPI/100/V/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 13/4/21\r\nPemeriksaan 2, 27/4/21\r\nPermeriksaan 3, 7/5/21 - done', '2022-08-16 15:43:32'),
(85, '2021-04-30 00:00:00', NULL, 16, 7, 66, '2021-07-05 00:00:00', 'Sek.ASPI/130/VII/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 20/5/21\r\nPemeriksaan 2, 14/6/21\r\nPemeriksaan 3, 28/6/21 - done', '2022-08-16 15:43:23'),
(86, '2021-05-10 00:00:00', NULL, 16, 7, 206, '2021-07-19 00:00:00', 'Sek.ASPI/144/VII/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 18/5/21\r\nPemeriksaan 2, 25/6/21\r\nPemeriksaan 3, 15/7/21 - done', '2022-08-16 15:43:19'),
(87, '2021-05-17 00:00:00', NULL, 16, 7, 88, '2021-07-14 00:00:00', 'Sek.ASPI/143/VII/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, Laporan pengujian tidak dapat diperiksa, 7/6/21\r\nPemeriksaan 2, 13/6/21\r\nPemeriksaan 3, 13/7/21 - done', '2022-08-16 15:43:16'),
(88, '2021-06-29 00:00:00', NULL, 16, 7, 186, '2021-09-06 00:00:00', 'Sek.ASPI/188/IX/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, Laporannya terlalu kecil, 8/6/21\r\nPemeriksaan 2, 28/6/21\r\nPemeriksaan 3, 19/8/21\r\nPemeriksaan 4, 30/8/21\r\nPemeriksaan 5, 3/9/21 - done', '2022-08-16 15:43:05'),
(89, '2021-06-29 00:00:00', NULL, 16, 7, 141, '2021-11-16 00:00:00', 'Sek.ASPI/260/XI/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 7/7/21\r\nPemeriksaan 2, 1/9/21\r\nPemeriksaan 2, 22/9/21\r\nPemeriksaan 3, 6/10/21\r\nPemeriksaan 4, 10/11/21\r\nPemeriksaan 5, 15/11/21 - done', '2022-08-16 15:43:08'),
(90, '2021-06-29 00:00:00', NULL, 16, 7, 143, '2021-09-29 00:00:00', 'Sek.ASPI/214/IX/2021', NULL, NULL, NULL, NULL, NULL, 'Sebagai PJP Acquirer\r\nPemeriksaan 1, 12/7/21\r\nPemeriksaan 2, 26/7/21\r\nPemeriksaan 3, 30/8/21\r\nPemerikasaan 4, 8/9/21 - done', '2022-08-16 15:43:13'),
(91, '2021-09-06 00:00:00', NULL, 16, 7, 190, '2021-09-02 00:00:00', 'Sek.ASPI/182/IX/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 12/8/21\r\nPemeriksaan 2, 23/8/21\r\nPemeriksaan 3, 1/9/21 - done', '2022-08-16 15:42:59'),
(92, '2021-09-27 00:00:00', NULL, 16, 7, 160, '2021-12-28 00:00:00', 'Sek.ASPI/274/XII/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 5/10/21\r\nPemeriksaan 2, 21/1021 (screen shot terlalu kecil untuk dibaca dan diperiksa)\r\nPemeriksaan 3, 26/10/21\r\nPemeriksaan 4, 15/12/21\r\nPemeriksaan 5, 17/12/21 - done', '2022-08-16 15:42:53'),
(93, '2021-10-14 00:00:00', NULL, 16, 7, 62, '2021-12-03 00:00:00', 'Sek.ASPI/269/XI/2021', NULL, NULL, NULL, NULL, NULL, 'QRIS MPM sebagai acquier/PJP PIAS\r\nPemeriksaan 1, 21/10/21\r\nPemeriksaan 2, 10/11/21\r\nPemeriksaan 3, 18/11/21 - done', '2022-08-16 15:42:49'),
(94, '2021-11-03 00:00:00', NULL, 16, 7, 214, '2022-02-11 00:00:00', 'Sek.ASPI/022/022/2022', NULL, NULL, NULL, NULL, NULL, 'Penerbit dengan sumber dana uang elektronik\r\nPemeriksaan 1, 08/11/21\r\nPemeriksaan 2, 28/1/22\r\nPemeiksaan 3, 9/2/22 \r\nPerbaikan 4, 10/2/22 - done', '2022-08-16 15:42:46'),
(95, '2021-12-01 00:00:00', NULL, 16, 7, 93, '2022-04-20 00:00:00', 'Sek.ASPI/078/IV/2022', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 09/12/21\r\nPemeriksaan 2, 13/1/22\r\nPemeriksaan 3, 28/1/22\r\nPemeriksaan 4, 20/4/22 - done', '2022-08-16 15:42:43'),
(96, '2021-12-10 00:00:00', NULL, 16, 7, 218, '2022-02-17 00:00:00', 'Sek.ASPI/025/II/2022', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1 (sumber dana unik), 17/12/21\r\nPemeriksaan 1 (sumber dana rekening), 24/12/21\r\nPemeriksaan 2, 31/1/22\r\n 4, 10/2/2022\r\nPemeriksaan 5, 14/2/22\r\nPemeriksaan 6, 16/2/22 - done', '2022-08-16 15:42:39'),
(97, '2021-12-16 00:00:00', NULL, 16, 7, 216, '2022-09-29 00:00:00', 'Sek.ASPI/193/IX/2022', NULL, NULL, NULL, NULL, NULL, 'As issuer\r\nPemeriksaan 1, 24/12/21\r\nPemeriksaan 2, 7/3/21\r\nPemeriksaan 3, 15 September 22\r\nPemeriksaan 4, 22 September 22\r\nPemeriksaan 5, 27 September 22 - done', '2022-09-30 09:37:53'),
(98, '2022-01-03 00:00:00', NULL, 16, 7, 30, '2022-02-09 00:00:00', 'Sek.ASPI/019/II/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 12/1/22\r\nPemeriksaan 2, 31/1/22\r\nPemeriksaan 3, 7/2/22 - Done', '2022-08-16 15:42:35'),
(99, '2022-01-28 00:00:00', NULL, 16, 7, 231, '2022-03-24 00:00:00', 'Sek.ASPI/046/III/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 7/2/22\r\nPemeriksaan 2, 2/3/22\r\nPemeriksaan 3, 14/3/22\r\nPemeriksaan 4, 23/3/22 - done', '2022-08-16 15:42:31'),
(100, '2022-02-11 00:00:00', NULL, 16, 7, 47, '2022-04-25 00:00:00', 'Sek.ASPI/082/IV/2022', NULL, NULL, NULL, NULL, NULL, 'Sumber dana uang elektronik\r\nPemeriksaan 1, 16/2/22\r\nPemeriksaan 2, 14/4/22\r\nPemeriksaan 3, 20/4/22', '2022-08-16 15:42:27'),
(101, '2022-02-15 00:00:00', NULL, 16, 7, 202, '2022-12-13 00:00:00', 'Sek.ASPI/245/XII/2022', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 15/02/22\r\nPemeriksaan 1, 7/3/22\r\nPemeriksaan 2, 5/4/22\r\nPerbaikan 2, 9/14/22\r\nPemeriksaan 3, 9/14/22\r\nPerbaikan 3, 11/07/22\r\nPemeriksaan 4, 11/15/22\r\nPerbaikan 4, 11/21/22\r\nPemeriksaan 5, 11/23/22\r\nPerbaikan 5, 11/24/22\r\nPemeriksaan 6, 11/30/22 -Done', '2022-12-14 10:22:47'),
(102, '2022-02-17 00:00:00', NULL, 16, 7, 88, '2022-09-06 00:00:00', 'Sek.ASPI180IX2022', NULL, NULL, NULL, NULL, NULL, 'Pengajuan sebagai acquirer\r\nPemeriksaan 1, 4/3/22\r\nPerbaikan 1, 18/8/22\r\nPemeriksaan 2, 24/8/22\r\nPerbaikan 2, 2/9/22\r\nPemeriksaan 3, 2/9/22 -done', '2022-09-08 07:54:51'),
(103, '2022-02-23 00:00:00', NULL, 16, 7, 44, '2022-04-06 00:00:00', 'Sek.ASPI/055/IV/2022', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 7/3/22\r\nPemeriksaan 2, 14/3/22\r\nPemeriksaan 3, 4/4/22\r\nPemeriksaan 4, 5/4/22', '2022-08-16 15:42:23'),
(104, '2022-03-25 00:00:00', NULL, 16, 7, 178, '2022-08-11 00:00:00', 'Sek.ASPI/152/VIII/2022', 'Unik', 'Belum Dapat', NULL, NULL, NULL, 'Pemeriksaan 1, 8/4/22\r\nPemeriksaan 2, 21/7/22\r\nPemeriksaan 3, 27/7/22\r\nPemeriksaan 4, 2/8/22\r\nPemeriksaan 5, 10/8/22 - done', '2022-08-12 09:11:59'),
(105, '2022-04-26 00:00:00', NULL, 16, 7, 4, '2022-09-13 00:00:00', 'Sek.ASPI/182/IX/2022', NULL, NULL, NULL, NULL, NULL, 'Sebagai issuer\r\nPemeriksaan 1, 11/5/22\r\nPemeriksaan 2, 17/6/22\r\nPemeriksaan3, 2/8/22\r\nPerbaikan 3, 3/8/22\r\nPemeriksaan 4, 5/9/22\r\nPerbaikan 4, 6/9/22\r\nPemeriksaan 5, 7/9/22 - done', '2022-09-14 09:40:01'),
(106, '2022-05-11 00:00:00', NULL, 16, 7, 99, '2022-08-30 00:00:00', 'Sek.ASPI/173/VIII/2022', NULL, NULL, NULL, NULL, NULL, 'Sebagai Acquirer\r\nPemeriksaan 1, 23/5/22\r\nPemeriksaan 2, 15/6/22\r\nPerbaikan 2, 19/8/22\r\nHasil pemeriksaan 3, 24/8/22 - done', '2022-08-31 09:16:58'),
(107, '2022-05-17 00:00:00', NULL, 16, 7, 227, '2022-06-17 00:00:00', 'Sek.ASPI/113/VI/2022', 'Unik', NULL, NULL, NULL, NULL, 'Sebagai penerbit uang elektronik\r\nPemeriksaan 1, 25/5/22\r\nPemeriksaan 2. 17/6/22 - done', '2022-08-16 15:42:19'),
(108, '2022-05-20 00:00:00', NULL, 16, 7, 229, '2022-06-30 00:00:00', 'Sek.ASPI/121/VI/2022', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 6/6/2022\r\nPemeriksaan 2, 22/6/22\r\nPemeriksaan 3, 30/6/22 – done', '2022-08-16 15:42:15'),
(109, '2022-05-25 00:00:00', NULL, 16, 7, 166, '2022-08-05 00:00:00', 'Sek.ASPI/144/VIII/2022', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 8/6/2022\r\nPemeriksaan 2, 30/6/22\r\nPemeriksaan 3, 4/8/22\r\nPemeriksaan 4, 5/8/22 - done', '2022-08-18 14:50:27'),
(110, '2022-06-08 00:00:00', NULL, 16, 7, 123, '2022-07-20 00:00:00', 'Sek.ASPI/127/VII/2022', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 16/6/2022\r\nPemeriksaan 2, 1/7/22\r\nPemeriksaan 3, 7/7/22\r\nPemeriksaan 4, 20/7/22 - done', '2022-08-16 15:42:09'),
(111, '2022-07-19 00:00:00', NULL, 16, 7, 227, '2022-08-19 00:00:00', 'Sek.ASPI/161/VIII/2022', NULL, NULL, NULL, NULL, NULL, 'Sebagai Acquirer\r\nPemeriksaan 1, 1/8/22\r\nPemeriksaan 2, 12/8/22\r\nPerbaikan 1, 4/8/22\r\nPemeriksaan 2, 12/8/22\r\nPerbaikan 2, 18/8/22', '2022-08-23 13:54:46'),
(112, '2022-08-03 00:00:00', NULL, 16, 7, 181, '2022-11-18 16:35:39', 'Sek.ASPI/226/XI/2022', NULL, NULL, NULL, NULL, NULL, 'Terima dokumen 3/8/22 (issuer dan acquirer)\r\n- Pemeriksaan 1, 12/8/22\r\n- Perbaikan 1, 15/8/22\r\n- Pemeriksaan 2, 18/8/22\r\n- Pemeriksaan 3, 29/09/22\r\n- Perbaikan 3, 28/10/22\r\n- Pemeriksaan ke-4, 02/11/22\r\n- Perbaikan 4, 02/11/22\r\n- Pemeriksaan ke-5, 03/11/22\r\n- Perbaikan 5, 04/11/22\r\n- Pemeriksaan ke-6', '2022-11-18 16:36:12'),
(113, '2021-09-08 00:00:00', NULL, 16, 7, 119, '2021-11-01 00:00:00', 'Sek.ASPI/248/XI/2021', NULL, NULL, NULL, NULL, NULL, 'Sumber dana kartu kredit\r\nPemeriksaan 1, 8/9/21\r\nHasil diskusi ASPI - Citibank 2/11/21', '2022-08-16 15:42:56'),
(114, '2021-09-06 00:00:00', NULL, 16, 7, 207, '2021-11-01 00:00:00', 'Sek.ASPI/249/XI/2021', NULL, NULL, NULL, NULL, NULL, 'Pemeriksaan 1, 15/9/21\r\nPemeriksaan 2, 21/10/21 - done', '2022-08-16 15:43:02'),
(115, '2022-08-12 00:00:00', NULL, 16, 11, 96, '2022-08-22 00:00:00', 'Sek.ASPI/162/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 15/8/22\r\n- Pemeriksaan 2, 16/8/22\r\n- Pemeriksaan 3, 19/8/22\r\n- Pemeriksaan 4, 22/8/22 - Done', '2022-08-23 08:42:37'),
(116, '2022-08-18 00:00:00', NULL, 16, 11, 8, '2022-08-22 10:38:54', 'Sek.ASPI/160/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 19/8/22\r\n- Pemeriksaan 2, 19/8/22\r\n- Pemeriksaan 3, 19/8/22', '2022-08-23 08:42:34'),
(117, '2022-08-19 00:00:00', NULL, 16, 11, 46, '2022-08-23 11:27:55', 'Sek.ASPI/163/VIII/2022', NULL, NULL, NULL, NULL, NULL, '- Pemeriksaan 1, 19/8/22\r\n- Pemeriksaan 2, 22/8/22\r\n- Pemeriksaan 3, 23/8/22 - Done', '2022-08-23 11:28:35'),
(118, '2022-08-24 00:00:00', NULL, 16, 9, 184, '2022-12-16 11:26:36', 'Sek.ASPI/251/XII/2022', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen 24/08/22\r\nPemeriksaan 1, 31/8/22\r\nPerbaikan 1,  20/10/22\r\nPemeriksaan 2, 27/10/22\r\nPerbaikan 2,  03/11/22\r\nPemeriksaan 3, 14/11/22\r\nperbaikan 3, 15/11/22\r\nPemeriksaan 4, 23/11/22\r\nperbaikan 4, 12/5/22\r\nPemeriksaan 5, 12/06/22\r\nPerbaikan 5, 12/12/22\r\nPemeriksaan 6, 12/14/22 - Done', '2022-12-16 11:26:40'),
(119, '2022-08-30 00:00:00', NULL, 16, 6, 183, '2022-09-27 00:00:00', 'Sek.ASPI/190/IX/2022', NULL, NULL, NULL, NULL, NULL, 'As issuer\r\nTerima dokumen 30/8/21\r\nPemeriksaan 1, 31/8/22\r\nPemeriksaan 2, 12/09/22\r\nPemeriksaan 3, 22/09/22 - Done', '2022-09-27 16:32:35'),
(120, '2022-09-05 00:00:00', NULL, 16, 7, 236, '2022-10-18 00:00:00', 'Sek.ASPI/201/X/2022', NULL, NULL, NULL, NULL, NULL, 'Sebagai Issuer dan Acquirer\r\nTerima Dokumen 05/09/22\r\nPemeriksaan 1, 06/09/22\r\nperbaikan ke-1,  08/09/22\r\nPemeriksaan 2, 12/09/22\r\nperbaikan ke-2, 13/09/22\r\nPemeriksaan 3, 15/09/22\r\nPerbaikan ke-3, 03/10/22\r\nPemeriksaan ke-4, 10/10/22 - Done', '2022-10-19 14:05:11'),
(121, '2022-09-07 00:00:00', NULL, 16, 7, 237, '2022-10-11 14:44:09', 'Sek.ASPI/198/x/2022', NULL, NULL, NULL, NULL, NULL, 'Sebagai Issuer only\r\nPemeriksaan ke-1 / 09092022\r\nPemeriksaan ke-2 / 09222022\r\nPemeriksaan ke-3 / 10042022 - Done', '2022-10-11 15:28:50'),
(122, '2022-09-09 00:00:00', NULL, 16, 7, 225, '2022-10-18 00:00:00', 'Sek.ASPI/200/X/2022', NULL, NULL, NULL, NULL, NULL, 'Terimaka Dokumen, 09/09/22 as issuer\r\nPemeriksaan ke-1 - 12/09/22\r\nPerbaikan ke-1,  29/09/22\r\nPemeriksaan ke-2, 04/10/22\r\nPerbaikan ke-2,  07/10/22\r\nPemeriksaan ke-3, 13/10/22 - Done', '2022-10-19 14:05:07'),
(124, '2022-09-23 00:00:00', NULL, 16, 7, 138, '2022-12-01 00:00:00', 'Sek.ASPI/244/XI/2022', NULL, NULL, NULL, NULL, NULL, 'As issuer\r\nTerima Dokumen 23/09/22\r\nPemeriksaan ke-1, 27/09/22\r\nPerbaikan ke-1, 14/10/22\r\nPemeriksaan ke-2, 17/10/22\r\nPerbaikan ke-2, 18/10/22\r\nPemeriksaan ke-3, 27/10/22\r\nperbaikan 3, 24/11/22\r\nPemeriksaan ke-4, 11/28/22 - Done', '2022-12-02 11:44:15'),
(125, '2022-10-04 00:00:00', NULL, 16, 6, 173, '2022-12-23 14:42:27', 'Sek.ASPI/253/XII/2022', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen 04/10/2022 (Laporan UAT dan BA UAT switching)\r\nPemeriksaan ke-1, 10/10/22\r\nPerbaikan ke-1, 12/07/22\r\nPemeriksaan ke-2, 12/13/22\r\nPerbaikan 2, 12/19/22\r\nPemeriksaan 3, 12/21/22\r\nPerbaikan 3, 12/22/22\r\nPemeriksaan 4, 12/22/22 - Done', '2022-12-23 14:42:33'),
(126, '2022-10-07 00:00:00', NULL, 16, 6, 185, '2023-10-30 00:00:00', 'Sek.ASPI/309/X/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen 07/10/2022\r\nPemeriksaan ke-1, 13/10/22\r\nPerbaikan ke-1, 27/10/22\r\nPemeriksaan ke-2, 02/11/22\r\nPerbaikan ke-2, 02/11/22\r\nPemeriksaan ke-3, 07/11/22\r\nPerbaikan 3, 10/24/23\r\nPemeriksaan 4, 10/26/23', '2023-10-31 15:23:56'),
(127, '2022-10-28 00:00:00', NULL, 16, 6, 196, '2022-12-01 00:00:00', 'Sek.ASPI/243/XI/2022', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 28/10/22\r\nPemeriksaan ke-1, 11/11/22\r\nPerbaikan 1, 11/14/22\r\nPemeriksaan ke-2, 11/22/22\r\nPerbaikan 2, 11/24/22\r\nPemeriksaan ke-2, 11/28/22 - Done', '2022-12-02 11:44:25'),
(128, '2022-11-03 00:00:00', NULL, 16, 7, 182, '2022-12-09 00:00:00', 'Sek.ASPI/247/XI/2022', NULL, NULL, NULL, NULL, NULL, 'Sebagai Issuer & Acquirer\r\nTerima dokumen, 03/11/22\r\nPemeriksaan ke-1, 11/11/22\r\nPerbaikan 1, 11/29/22\r\nPemeriksaan 2, 11/30/22\r\nPerbaikan 2, 12/08/22\r\nPemeriksaan 3, 12/09/22\r\nPerbaikan 3, 12/09/22\r\nPemeriksaan 4, 12/09/22 - Done', '2022-12-13 12:22:45'),
(129, '2022-11-04 00:00:00', NULL, 16, 7, 66, '2023-07-05 15:55:31', 'Sek.ASPI/195/VII/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/11/2022 as acquirer.\r\nPemeriksaan ke-1, 11/16/22\r\nPerbaikan 1, 12/1/22\r\nPemeriksaan 2, 12/5/22\r\nPerbaikan 2, 04/26/23\r\nPemeriksaan 3, 04/26/23\r\nPerbaikan 3, 05/16/23\r\nPemeriksaan 4, 05/22/23\r\nPerbaikan 4, 07/03/23\r\nPemeriksaan 5, 07/03/23', '2023-07-05 15:55:59'),
(130, '2022-11-11 00:00:00', NULL, 16, 7, 223, '2023-01-11 00:00:00', 'Sek.ASPI/004/1/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer\r\nTerima Dokumen, 11/11/22\r\nPemeriksaan ke-1, 11/06/22\r\nPerbaikan 1, 12/09/22\r\nPemeriksaan ke-2, 12/13/22\r\nPerbaikan 2, 12/15/22\r\nPemeriksaan 3, 12/15/22\r\nPerbaikan 3, 12/15/22\r\nPemeriksaan 4, 12/20/22\r\nPerbaikan 4, 12/27/22\r\nPemeriksaan 5, 01/02/23\r\nPerbaikan 5, 01/06/23\r\nPemeriksaan 6, 01/09/', '2023-01-11 16:57:24'),
(131, '2022-11-14 00:00:00', NULL, 16, 7, 168, '2023-01-27 15:53:59', 'Sek.ASPI/009/1/2023', NULL, NULL, NULL, NULL, NULL, 'Paylater\r\nTerima Dokumen, 11/14/22\r\nPemeriksaan 1, 11/23/22\r\nPerbaikan 1, 12/16/22\r\nPemeriksaan 2, 12/20/22\r\nPerbaikan 2, 12/23/22\r\nPemeriksaan 3, 01/02/23\r\nPerbaikan 3, 01/06/23\r\nPemeriksaan 4, 01/09/23\r\nPerbaikan 4, 01/17/23\r\nPemeriksaan 5, 01/18/23 -Done', '2023-01-27 15:54:26'),
(132, '2022-11-22 00:00:00', NULL, 18, 11, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen 22/11/22\r\nPemeriksaan 1, 11/30/22\r\nPerbaikan 1, 02/15/23\r\nPemeriksaan 2, 02/21/23', '2023-02-21 18:14:37'),
(133, '2022-11-28 00:00:00', NULL, 16, 11, 47, '2022-12-13 15:40:15', 'Sek.ASPI/246/XII/2022', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 11/28/22\r\nPemeriksaan 1, 11/30/22\r\nPerbaikan 1, 12/03/22\r\nPemeriksaan 2, 12/5/22\r\nPerbaikan 2, 12/05/22\r\nPemeriksaan 3, 12/6/22\r\nPerbaikan 3, 12/07/22\r\nPemeriksaan 4, 12/8/22\r\nPerbaikan 4, 12/09/22\r\nPemeriksaan 5, 12/09/22 - Done', '2022-12-13 15:40:23'),
(134, '2022-12-01 00:00:00', NULL, 16, 7, 178, '2022-12-23 00:00:00', 'Sek.ASPI/254/XII/2022', NULL, NULL, NULL, NULL, NULL, 'As Issuer\r\nTerima Dokumen, 12/1/22\r\nPemeriksaan 1, 12/5/22\r\nPerbaikan 1, 12/13/22\r\nPemeriksaan 2, 12/15/22\r\nPerbaikan 2, 12/20/22\r\nPemeriksaan 3, 12/22/22 - Done', '2022-12-23 14:41:47'),
(136, '2022-12-05 00:00:00', NULL, 16, 8, 39, '2023-08-14 00:00:00', 'Sek.ASPI/229/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'Fitur Transfer,\r\nTerima Dokumen, 12/06/22\r\nPemeriksaan 1, 12/13/22\r\nPerbaikan 1, 12/14/22\r\nPemeriksaan 2, 12/16/22\r\nPerbaikan 2, 08/04/23\r\nPemeriksaan 3, 08/07/23\r\nPerbaikan 3 08/11/23\r\nPemeriksaan 4 08/11/23', '2023-08-18 15:27:01'),
(137, '2022-12-13 00:00:00', NULL, 16, 8, 8, '2023-02-14 18:05:14', 'Sek.ASPI/017/II/2023', NULL, NULL, NULL, NULL, NULL, 'Fitur Transfer\r\nTerima Dokumen 12/13/22\r\nPemeriksaan 1, 12/16/22\r\nPerbaikan 1, 12/22/22\r\nPemeriksaan 2, 12/23/22\r\nPerbaikan 2, 01/26/23\r\nPemeriksaan 3, 02/01/23\r\nPerbaikan 3, 02/06/23\r\nPemeriksaan 4, 02/08/23', '2023-02-14 18:05:35'),
(138, '2022-12-16 00:00:00', NULL, 16, 11, 58, '2022-12-23 19:17:22', 'Sek.ASPI/255/XII/2022', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 12/19/22\r\nPemeriksaan 1, 12/20/22\r\nPerbaikan 1, 12/21/22\r\nPemeriksaan 2, 12/22/22 - Done', '2022-12-23 19:17:30'),
(139, '2022-12-16 00:00:00', NULL, 16, 7, 27, '2023-01-11 00:00:00', 'Sek.ASPI/003/1/2023', NULL, NULL, NULL, NULL, NULL, 'Acquirer\r\nTerima Dokumen, 12/16/22\r\nPemeriksaan 1, 12/20/22\r\nPerbaikan 1, 12/30/22\r\nPemeriksaan 2, 01/02/23\r\nPerbaikan 2, 01/06/23\r\nPemeriksaan 3, 01/09/23', '2023-01-11 16:56:49'),
(140, '2022-12-19 00:00:00', NULL, 16, 11, 31, '2023-01-03 15:28:40', 'Sek.ASPI/001/I/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen 12/19/22\r\nPemeriksaan 1, 12/21/22\r\nPerbaikan 1, 12/30/22\r\nPemeriksaan 2, 01/03/23 -Done', '2023-01-03 15:28:46'),
(141, '2022-12-19 00:00:00', NULL, 16, 7, 191, '2023-02-14 18:06:12', 'Sek.ASPI/018/II/2023', NULL, NULL, NULL, NULL, NULL, 'ISSUER\r\nTerima Dokumen, 12/19/22\r\nPemeriksaan 1, 12/21/22\r\nPerbaikan 1, 01/18/23\r\nPemeriksaan 2, 01/20/23\r\nPerbaikan 2, 01/30/23\r\nPemeriksaan 3, 02/06/23\r\nPerbaikan 3, 02/08/23\r\nPemeriksaan 4, 02/08/23', '2023-02-14 18:06:27'),
(142, '2022-12-22 00:00:00', NULL, 16, 7, 5, '2023-01-13 16:40:47', 'Sek.ASPI/002/1/2023', NULL, NULL, NULL, NULL, NULL, 'ISSUER\r\nTerima Dokumen, 12/22/22\r\nPemeriksaan 1, 12/23/22\r\nPerbaikan 2, 03/01/23\r\nPemeriksaan 2, 06/01/23\r\nPerbaikan 3, 09/01/23\r\nPemeriksaan 3, 10/01/23 - Done', '2023-01-13 16:40:53'),
(143, '2022-12-22 00:00:00', NULL, 16, 7, 173, '2023-02-02 15:23:16', 'Sek.ASPI/015/II/2023', NULL, NULL, NULL, NULL, NULL, 'PAYLATER\r\nTerima Dokumen 12/22/22\r\nPemeriksaan 1, 01/02/23\r\nPerbaikan 2, 01/13/23\r\nPemeriksaan 2, 01/18/23\r\nPerbaikan 3, 01/27/23\r\nPemeriksaan 3, 02/01/23', '2023-02-02 15:23:20'),
(144, '2019-10-24 00:00:00', NULL, 16, 7, 47, '2019-11-18 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:27'),
(145, '2019-06-01 00:00:00', NULL, 16, 7, 31, '2019-08-08 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:18'),
(146, '2019-11-11 00:00:00', NULL, 16, 7, 58, '2019-12-12 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:43'),
(147, '2019-11-29 00:00:00', NULL, 16, 7, 164, '2019-12-19 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:54'),
(148, '2019-11-19 00:00:00', NULL, 16, 7, 51, '2019-12-02 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:50'),
(149, '2019-06-01 00:00:00', NULL, 16, 7, 39, '2019-08-08 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:25'),
(150, '2019-12-03 00:00:00', NULL, 16, 7, 146, '2019-08-08 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:58'),
(151, '2019-06-01 00:00:00', NULL, 16, 7, 71, NULL, NULL, 'Debet', '', '2019-08-21 00:00:00', NULL, NULL, '', '2022-12-29 10:53:29'),
(152, '2019-11-06 00:00:00', NULL, 16, 7, 7, '2019-12-26 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:39'),
(153, '2019-06-01 00:00:00', NULL, 16, 7, 103, '2019-08-08 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:32'),
(154, '2019-06-01 00:00:00', NULL, 16, 7, 114, '2019-08-07 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:35'),
(155, '2019-06-01 00:00:00', NULL, 16, 7, 37, '2019-08-08 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:38'),
(156, '2019-06-01 00:00:00', NULL, 16, 7, 96, '2019-08-08 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:41'),
(157, '2019-10-03 00:00:00', NULL, 16, 7, 55, '2019-12-20 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:24'),
(158, '2019-06-01 00:00:00', NULL, 16, 7, 46, '2019-08-08 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:45'),
(159, '2019-06-01 00:00:00', NULL, 16, 7, 107, '2019-08-07 00:00:00', NULL, 'Unik & Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:53:48'),
(160, '2019-10-24 00:00:00', NULL, 16, 7, 147, '2019-12-03 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:54:31'),
(161, '2019-12-09 00:00:00', NULL, 16, 7, 59, '2019-12-20 00:00:00', NULL, 'Debet', '', NULL, NULL, NULL, '', '2022-12-29 10:55:02'),
(162, '2019-06-01 00:00:00', NULL, 16, 7, 173, '2019-08-09 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:53:51'),
(163, '2019-06-01 00:00:00', NULL, 16, 7, 169, '2019-08-08 00:00:00', NULL, 'Switching', '', NULL, NULL, NULL, '', '2022-12-29 10:53:53'),
(164, '2019-06-01 00:00:00', NULL, 16, 7, 170, '2019-08-08 00:00:00', NULL, 'Switching', '', NULL, NULL, NULL, '', '2022-12-29 10:53:56'),
(165, '2019-10-25 00:00:00', NULL, 16, 7, 176, '2019-12-16 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:54:34'),
(166, '2019-06-01 00:00:00', NULL, 16, 7, 180, '2019-08-09 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:53:59'),
(167, '2019-06-01 00:00:00', NULL, 16, 7, 168, '2019-08-07 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:54:02'),
(168, '2019-06-01 00:00:00', NULL, 16, 7, 184, '2019-08-09 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:54:05'),
(169, '2019-06-01 00:00:00', NULL, 16, 7, 171, '2019-08-07 00:00:00', NULL, 'Switching', '', NULL, NULL, NULL, '', '2022-12-29 10:54:08'),
(170, '2019-06-01 00:00:00', NULL, 16, 7, 172, '2019-08-08 00:00:00', NULL, 'Switching', '', NULL, NULL, NULL, '', '2022-12-29 10:54:10'),
(171, '2019-06-01 00:00:00', NULL, 16, 7, 210, '2019-08-13 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:54:15'),
(172, '2019-11-17 00:00:00', NULL, 16, 7, 194, '2019-12-06 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:54:47'),
(173, '2019-06-01 00:00:00', NULL, 16, 7, 195, '2019-08-09 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:54:18'),
(174, '2019-06-01 00:00:00', NULL, 16, 7, 196, '2019-08-08 00:00:00', NULL, 'Unik', '', NULL, NULL, NULL, '', '2022-12-29 10:54:21'),
(175, '2023-01-05 00:00:00', NULL, 16, 7, 39, '2023-04-17 00:00:00', 'Sek.ASPI/109/IV/2023', NULL, NULL, NULL, NULL, NULL, 'Paylater\r\nTerima Dokumen 01/06/23\r\nPemeriksaan 1, 01/09/23\r\nPerbaikan 1, 01/10/23\r\nPemeriksaan 2, 01/12/23\r\nPerbaikan 2, 03/28/23\r\nPemeriksaan 3, 03/30/23\r\nPerbaikan 3, 04/03/23\r\nPemeriksaan 4, 04/03/23\r\nPerbaikan 4, 04/10/23\r\nPemeriksaan 5, 04/11/23\r\nPerbaikan 5, 04/14/23\r\nPemeriksaan 6, 04/17/23 -', '2023-04-26 08:09:25'),
(176, '2023-01-11 00:00:00', NULL, 16, 8, 175, NULL, 'Sek.ASPl/044/IV/2023', NULL, NULL, NULL, NULL, NULL, 'Transfer, Tarik Tunai, Setor Tunai\r\nTerima Dokumen, 01/11/23\r\nPemeriksaan 1, 01/18/23\r\nPerbaikan 1, 03/06/23\r\nPemeriksaan 2, 03/09/23\r\nPerbaikan 2, 03/21/23\r\nPemeriksaan 3, 03/24/23 - Done\r\nRekomendasi Transfer', '2023-04-17 08:12:59'),
(177, '2023-01-16 00:00:00', NULL, 16, 8, 146, '2023-10-09 00:00:00', 'Sek.ASPI/286/X/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 01/16/23 -Setor tunai\r\nPemeriksaan 1, 01/20/23\r\nPerbaikan 1, 04/10/23\r\nPemeriksaan 2, 04/18/23\r\nPerbaikan 2, 08/07/23\r\nPemeriksaan 3, 08/10/23\r\nPerbaikan 3, 09/04/23\r\nPemeriksaan 4 09/07/23\r\nPerbaikan 4, 10/02/23\r\nPemeriksaan 5, 10/04/23', '2023-10-09 16:15:33'),
(178, '2023-01-16 00:00:00', NULL, 16, 8, 107, '2023-04-27 00:00:00', 'Sek.ASPI/116/IV/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS Transfer, Tartun dan setor\r\nTerima Dokumen 01/16/23\r\nPemeriksaan 1, 01/26/23\r\nPerbaikan 2, 03/28/23\r\nPemeriksaan 2, 03/31/23\r\nPerbaikan 3, 04/12/23\r\nPemeriksaan 3, 04/26/23', '2023-04-28 08:03:42'),
(179, '2023-01-18 00:00:00', NULL, 16, 8, 114, '2023-05-11 00:00:00', 'Sek.ASPI/143/V/2023', NULL, NULL, NULL, NULL, NULL, 'Transfer Tarik Setor\r\nTerima Dokumen 01/18/23\r\nPemeriksaan 1, 01/26/23\r\nPerbaikan 1, 02/13/23\r\nPemeriksaan 2, 02/22/23\r\nPerbaikan 2, 03/09/23\r\nPemeriksaan 3, 03/16/2023\r\nPerbaikan 3, 05/03/23\r\nPemeriksaan 4, 05/08/23 -Done', '2023-05-11 14:31:12'),
(180, '2023-01-20 00:00:00', NULL, 16, 7, 219, '2023-02-28 00:00:00', 'Sek.ASPI/025/II/2023', NULL, NULL, NULL, NULL, NULL, 'Acquirer\r\nTerima Dokumen 01/20/23\r\nPemeriksaan 1, 02/01/23\r\nPerbaikan 1, 02/07/23\r\nPemeriksaan 2, 02/08/23\r\nPerbaikan 2, 02/09/23\r\nPemeriksaan 3, 02/21/23', '2023-03-14 11:02:28'),
(181, '2023-02-13 00:00:00', NULL, 16, 7, 81, '2023-08-08 00:00:00', 'Sek.ASPI/219/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer\r\nTerima Dokumen, 02/13/23\r\nPemeriksaan 1, 02/22/23\r\nPerbaikan 1, 07/12/23\r\nPemeriksaan 2, 07/14/23\r\nPerbaikan 2, 07/17/23\r\nPemeriksaan 3, 07/25/23\r\nPerbaikan 3, 08/01/23\r\nPemeriksaan 4, 08/03/23 Done', '2023-08-08 16:16:54'),
(182, '2023-03-01 00:00:00', NULL, 16, 7, 25, '2023-03-13 00:00:00', 'Sek.ASPI/031/III/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer, Terima dokumen 03/02/2023\r\nPemeriksaan 1, 03/07/23\r\nPerbaikan 1, 03/08/23\r\nPemeriksaan 2, 03/09/23', '2023-03-14 11:01:26'),
(183, '2019-10-24 00:00:00', NULL, 16, 7, 183, '2020-02-03 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-03 11:18:40'),
(184, '2023-03-03 00:00:00', NULL, 16, 7, 75, '2023-04-12 00:00:00', 'Sek.ASPl/085/IV/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer dan Acquirer, terima dokumen 03/03/2023\r\nPemeriksaan 1, 03/07/23\r\nPerbaikan 1, 03/27/23\r\nPemeriksaan 2, 03/29/23\r\nPerbaikan 2, 04/06/23\r\nPemeriksaan 3, 04/11/23', '2023-04-17 08:12:15'),
(185, '2023-03-07 00:00:00', NULL, 16, 8, 55, '2023-09-11 00:00:00', 'Sek.ASPI/256/IX/2023', NULL, NULL, NULL, NULL, NULL, 'TTS, 03/07/23\r\nPemeriksaan 1, 03/09/23\r\nPerbaikan 1, 05/28/23\r\nPemeriksaan 2, 06/06/23\r\nPerbaikan 2, 08/07/23\r\nPemeriksaan 3, 08/10/23\r\nPerbaikan 3, 09/05/23\r\nPemeriksaan 4, 09/07/23\r\nPerbaikan 4, 09/07/23\r\nPemeriksaan 5, 09/08/23', '2023-09-13 13:35:30'),
(186, '2023-03-24 00:00:00', NULL, 16, 8, 46, '2023-07-24 00:00:00', 'sek.ASPl/214/VII/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS Transfer, 03/24/23\r\nPemeriksaan 1, 03/24/23\r\nPerbaikan 1, 07/04/23\r\nPemeriksaan 2, 07/07/23\r\nPerbaikan 2, 07/20/23\r\nPemeriksaan 3, 07/21/23', '2023-07-25 16:59:16'),
(187, '2023-03-31 00:00:00', NULL, 16, 7, 242, '2023-04-12 00:00:00', 'Sek.ASPl/084/IV/2023', NULL, NULL, NULL, NULL, NULL, 'Acquirer, 03/31/23\r\nPemeriksaan 1, 04/03/23\r\nPerbaikan 1, 04/05/23\r\nPemeriksaan 2, 04/06/23\r\nPerbaikan 2, 04/06/23\r\nPemeriksaan 3, 04/11/23', '2023-04-17 08:11:37'),
(188, '2023-04-18 00:00:00', NULL, 16, 12, 147, '2023-05-02 00:00:00', 'Sek.ASPI/123/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/18/23\r\nPemeriksaan 1, 04/27/23\r\nPerbaikan 1, 04/28/23\r\nPemeriksaan 2, 04/28/23', '2023-05-02 16:12:22'),
(189, '2023-04-18 00:00:00', NULL, 16, 12, 39, '2023-05-03 00:00:00', 'Sek.ASPI/130/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/18/23\r\nPemeriksaan 1, 04/27/23\r\nPerbaikan 1, 05/03/23\r\nPemeriksaan 2, 05/03/23', '2023-05-04 17:53:54'),
(190, '2023-04-18 00:00:00', NULL, 16, 7, 153, '2023-08-24 00:00:00', 'Sek.ASPI/237/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'Terima dokumen, 04/28/23\r\nPemeriksaan 1, 05/08/23\r\nPerbaikan 1, 06/07/23\r\nPemeriksaan 2, 06/12/23\r\nPerbaikan 2, 07/04/23\r\nPemeriksaan 3, 07/07/23\r\nPerbaikan 3, 07/24/23\r\nPemeriksaan 4, 07/31/23\r\nPerbaikan 3, 08/15/23\r\nPemeriksaan 5 08/22/23', '2023-08-29 09:21:20'),
(191, '2023-04-18 00:00:00', NULL, 16, 12, 47, '2023-05-02 00:00:00', 'Sek.ASPI/125/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/18/23\r\nPemeriksaan 1, 04/27/23\r\nPerbaikan 1, 04/28/23\r\nPemeriksaan 2, 04/28/23', '2023-05-02 16:12:17'),
(192, '2023-04-18 00:00:00', NULL, 16, 12, 169, '2023-04-28 00:00:00', 'Sek.ASPI/117/IV/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/18/23\r\nPemeriksaan 1, 04/27/23', '2023-04-28 08:05:15'),
(193, '2023-04-26 00:00:00', NULL, 16, 12, 107, '2023-05-02 00:00:00', 'Sek.ASPI/122/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/26/23\r\nPemeriksaan 1, 04/27/23\r\nPerbaikan 1, 04/28/23\r\nPemeriksaan 2, 04/28/23', '2023-05-02 16:12:25'),
(194, '2023-04-27 00:00:00', NULL, 16, 12, 170, '2023-05-03 00:00:00', 'Sek.ASPI/126/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/27/23\r\nPemeriksaan 1, 04/27/23\r\nPerbaikan 1, 04/28/23\r\nPemeriksaan 2, 04/28/23\r\nPerbaikan 2, 05/03/23\r\npemeriksaan 3, 05/03/23', '2023-05-04 17:56:12'),
(195, '2023-04-27 00:00:00', NULL, 16, 12, 146, '2023-05-05 13:26:52', 'Sek.ASPI/136/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/27/23\r\nPemeriksaan 1, 04/28/23\r\nPerbaikan 1, 05/04/23\r\nPemeriksaan 2, 05/04/23', '2023-05-05 13:26:56'),
(196, '2023-04-28 00:00:00', NULL, 16, 12, 168, '2023-05-03 00:00:00', 'Sek.ASPI/129/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/28/23\r\nPemeriksaan 1, 04/28/23\r\nPerbaikan 1, 05/03/23\r\nPemeriksaan 2, 05/03/23', '2023-05-04 17:54:26'),
(197, '2023-04-28 00:00:00', NULL, 16, 12, 22, '2023-05-04 17:57:58', 'Sek.ASPI/132/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 04/28/23\r\nPemeriksaan 1, 04/28/23\r\nPerbaikan 1, 05/04/23\r\nPemeriksaan 2, 05/04/23', '2023-05-04 17:58:02');
INSERT INTO `qris` (`id`, `waktu_assign_project`, `id_pketerangan`, `id_pstat`, `id_product`, `id_mitra`, `surat_rekomendasi`, `no_rekomendasi`, `jenis_qrisbi`, `ijin_qrisbi`, `tgl_ijinbi`, `stats_temp`, `pketerangan_status`, `notes_project`, `last_updated`) VALUES
(198, '2023-05-02 00:00:00', NULL, 16, 12, 172, '2023-05-03 00:00:00', 'Sek.ASPI/128/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 05/02/23\r\nPemeriksaan 1, 05/02/23\r\nPerbaikan 1, 05/03/23\r\nPemeriksaan 2, 05/03/23\r\nPemeriksaan 3, 05/03/23', '2023-05-04 17:56:58'),
(199, '2023-05-03 00:00:00', NULL, 16, 12, 114, '2023-05-04 18:00:45', 'Sek.ASPI/133/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 05/03/23\r\nPemeriksaan 1, 05/03/23\r\nPerbaikan 1, 05/04/23\r\nPemeriksaan 2, 05/04/23', '2023-05-04 18:00:49'),
(200, '2023-05-03 00:00:00', NULL, 16, 12, 171, '2023-05-03 00:00:00', 'Sek.ASPI/127/V/2023', NULL, NULL, NULL, NULL, NULL, 'terima dokumen, 05/03/23\r\nPemeriksaan 1, 05/03/23\r\nPerbaikan 1, 05/03/23\r\nPemeriksaan 2, 05/03/23', '2023-05-04 17:54:57'),
(201, '2023-05-03 00:00:00', NULL, 16, 12, 184, '2023-05-04 18:00:02', 'Sek.ASPI/135/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 05/03/23\r\nPemeriksaan 1, 05/03/23\r\nPerbaikan 1, 05/04/23\r\nPemeriksaan 2, 05/04/23', '2023-05-04 18:00:07'),
(202, '2023-05-03 00:00:00', NULL, 16, 12, 194, '2023-05-04 17:59:16', 'Sek.ASPI/134/V/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 05/03/23\r\nPemeriksaan 1, 05/04/23\r\nPerbaikan 1, 05/04/23\r\nPemeriksaan 2, 05/04/23', '2023-05-04 17:59:19'),
(203, '2023-05-11 00:00:00', NULL, 16, 7, 228, '2023-10-26 00:00:00', 'Sek.ASPI/302/X/2023', NULL, NULL, NULL, NULL, NULL, 'ISSUER ACQUIRER Terima Dokumen, 05/11/23\r\nPemeriksaan 1, 05/15/23\r\nPerbaikan 1, 06/15/23\r\nPemeriksaan 2, 06/20/23\r\nPerbaikan 2, 06/21/23\r\nPemeriksaan 3, 06/26/23\r\nPerbaikan 3, 10/03/23\r\nPemeriksaan 4, 10/04/23\r\nPerbaikan 4, 10/25/23\r\nPemeriksaan 5, 10/25/23', '2023-10-26 15:18:53'),
(204, '2020-02-19 00:00:00', NULL, 16, 7, 187, '2020-03-10 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-16 10:02:12'),
(205, '2023-05-19 00:00:00', NULL, 16, 7, 234, '2023-05-30 00:00:00', 'Sek.ASPI/157/V/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer Only\r\nTerima Dokumen 05/17/23\r\nPemeriksaan 1, 05/22/23\r\nPerbaikan 1, 05/25/23\r\nPemeriksaan 2, 05/30/23\r\nPerbaikan 2, 05/30/23\r\nPemeriksaan 3, 05/30/23 -Done', '2023-05-31 14:34:25'),
(206, '2023-05-31 00:00:00', NULL, 16, 7, 174, '2023-09-11 00:00:00', 'Sek.ASPI/254/IX/2023', NULL, NULL, NULL, NULL, NULL, 'Paylater, 05/31/23\r\npemeriksaan 1, 06/05/23\r\nPerbaikan 1, 07/20/23\r\nPemeriksaan 2, 07/25/23\r\nPerbaikan 3 08/20/23\r\nPemeriksaan 3, 08/29/23\r\nPerbaikan 4, 09/05/23\r\nPemeriksaan 4, 09/07/23', '2023-09-13 13:39:09'),
(207, '2023-06-09 00:00:00', NULL, 16, 7, 63, '2023-11-14 00:00:00', 'Sek.ASPI/338/XI/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dok, 06/09/23\r\nPemeriksaan 1, 06/12/23\r\nPerbaikan 1, 06/22/23\r\nPemeriksaan 2, 06/30/23\r\nPerbaikan 2, 10/30/23\r\nPemeriksaan 3, 11/02/23\r\nPerbaikan 3, 11/08/23\r\nPemeriksaan 4, 11/10/23', '2023-11-20 08:51:57'),
(208, '2023-06-14 00:00:00', NULL, 18, 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paylater, 06/14/23\r\nPemeriksaan 1, 06/21/23', '2023-06-21 12:41:17'),
(209, '2023-06-15 00:00:00', NULL, 16, 12, 55, '2023-09-22 00:00:00', 'Sek.ASPI/264/IX/2023', NULL, NULL, NULL, NULL, NULL, 'terima dokumen, 06/15/23\r\nPemeriksaan 1, 06/26/23\r\nPerbaikan 1, 09/07/23\r\nPemeriksaan 2, 09/11/23\r\nPemeriksaan 3, 09/14/23', '2023-09-22 19:37:15'),
(210, '2023-06-15 00:00:00', NULL, 16, 9, 55, '2023-09-22 00:00:00', 'Sek.ASPI/263/IX/2023', NULL, NULL, NULL, NULL, NULL, 'terima dokumen, 06/15/23\r\nPemeriksaan 1, 06/26/23\r\nPemeriksaan 2, 09/11/23\r\nPerbaikan 2, 09/14/23', '2023-09-22 19:37:46'),
(211, '2023-06-22 00:00:00', NULL, 16, 7, 107, '2023-10-30 00:00:00', 'Sek.ASPI/304/X/2023', NULL, NULL, NULL, NULL, NULL, 'Kartu Kredit Terima dokumen, 06/27/23\r\nPemeriksaan 1, 03/07/23\r\nPerbaikan 1, 08/21/23\r\nPerbaikan 2 08/20/23\r\nPemeriksaan 2, 08/28/23\r\nPerbaikan 3, 10/23/23\r\nPemeriksaan 3, 10/25/23', '2023-11-02 14:19:04'),
(212, '2023-07-03 00:00:00', NULL, 16, 6, 227, '2023-07-26 00:00:00', 'Sek.ASPI/215/VII/2023', NULL, NULL, NULL, NULL, NULL, 'Acquirer, 07/04/2023\r\nPemeriksaan 1, 07/07/23\r\nPerbaikan 1, 07/11/23\r\nPemeriksaan 2, 07/13/23\r\nPerbaikan 2, 07/20/23\r\nPemeriksaan 3, 07/25/23', '2023-07-27 11:20:17'),
(214, '2023-07-14 00:00:00', NULL, 16, 11, 18, '2023-09-06 00:00:00', 'Sek.ASPI/246/IX/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS KKPD, 07/14/23\r\nPemeriksaan 1, 07/17/23\r\nPerbaikan 1 08/15/23\r\nPemeriksaan 2 08/21/23\r\nPerbaikan 2, 09/05/23', '2023-09-06 15:04:41'),
(215, '2023-07-25 00:00:00', NULL, 16, 8, 168, '2023-08-24 00:00:00', 'Sek.ASPI/233/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS Transfer & Tarik Tunai 07/25/23\r\nPemeriksaan 1, 08/03/23\r\nPerbaikan 1, 08/07/23 (Tarik)\r\nPemeriksaan 2, 08/10/23\r\nPemeriksaan 3, 08/11/23', '2023-08-29 09:28:15'),
(217, '2023-08-04 00:00:00', NULL, 16, 7, 71, '2023-10-31 00:00:00', 'Sek.ASPI/282/X/2023', NULL, NULL, NULL, NULL, NULL, 'Kartu Kredit, 08/04/23\r\nPemeriksaan 1, 08/07/23\r\nPerbaikan 1, 09/21/23\r\nPemeriksaan 2, 09/25/23\r\nPerbaikan 2, 09/27/23\r\nPemeriksaan 3, 10/03/23', '2023-10-31 15:56:16'),
(218, '2023-08-08 00:00:00', NULL, 16, 8, 170, '2023-08-21 00:00:00', 'Sek.ASPI/226/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS TUNTAS, 08/07/23\r\nPemeriksaan 1, 08/10/23\r\nPerbaikan 1 08/10/23\r\nPemeriksaan 2 08/11/23', '2023-08-22 15:29:46'),
(219, '2023-08-10 00:00:00', NULL, 16, 8, 169, '2023-08-21 00:00:00', 'Sek.ASPI/225/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS TUNTAS, 08/10/23\r\nPemeriksaan 1 08/10/23\r\nPerbaikan 1 08/10/23\r\nPemeriksaan 2 08/11/23', '2023-08-22 15:29:14'),
(220, '2023-08-11 00:00:00', NULL, 16, 8, 172, '2023-08-21 00:00:00', 'Sek.ASPI/227/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'TUNTAS, 08/11/23\r\nPemeriksaan 1 08/11/23', '2023-08-22 15:28:50'),
(221, '2023-08-11 00:00:00', NULL, 16, 8, 37, '2023-08-29 00:00:00', 'Sek.ASPI/232/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'Tarik dan setor tunai sebagai acquirer 08/11/23\r\nHasil Pemeriksaan 1, 08/14/23\r\nHasil Pemeriksaan 2, 08/15/23', '2023-08-29 16:45:25'),
(222, '2023-08-14 00:00:00', NULL, 16, 8, 171, '2023-08-21 00:00:00', 'Sek.ASPI/230/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS TUNTAS, 08/11/23\r\nPemeriksaan 1 08/14/23\r\nPemeriksaan 2 08/14/23', '2023-08-22 15:28:24'),
(223, '2023-08-11 00:00:00', NULL, 16, 8, 96, '2023-09-11 00:00:00', 'Sek.ASPI/255/IX/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS TUNTAS Transfer 08/11/23\r\nPemeriksaan 1, 08/14/23\r\nPerbaikan 1, 08/15/23\r\nPemeriksaan 2 08/21/23\r\nPerbaikan 2 09/04/23\r\nPemeriksaan 3 09/07/23', '2023-09-13 13:37:11'),
(224, '2023-08-11 00:00:00', NULL, 16, 12, 8, '2023-08-24 00:00:00', 'Sek.ASPI/235/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'MYR 08/11/23\r\nPemeriksaan 1 08/22/23', '2023-08-29 09:24:58'),
(225, '2023-08-11 00:00:00', NULL, 16, 9, 8, '2023-08-24 00:00:00', 'Sek.ASPI/236/VIII/2023', NULL, NULL, NULL, NULL, NULL, 'THB 08/11/23\r\nPemeriksaan 1 08/22/23', '2023-08-29 09:25:02'),
(226, '2023-08-15 00:00:00', NULL, 18, 7, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SoF Paylater, 08/15/23\r\nPemeriksaan 1 08/21/23\r\nPerbaikan 1, 09/11/23\r\nPemeriksaan 2, 09/18/23', '2023-11-20 08:52:53'),
(227, '2023-08-25 00:00:00', NULL, 16, 6, 86, '2023-11-24 00:00:00', 'Sek.ASPI/360/XI/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer, 08/25/23\r\nPemeriksaan 1 09/01/23\r\nPerbaikan 1, 09/22/23\r\nPemeriksaan 2, 09/25/23\r\nPerbaikan 3, 10/02/23\r\nPemeriksaan 3, 10/04/23\r\nPerbaikan 3, 11/15/23\r\nPemeriksaan 4, 11/22/23\r\nPerbaikan 5, 11/23/23\r\nPemeriksaan 5, 11/23/23', '2023-11-24 16:40:33'),
(228, '2023-08-30 00:00:00', NULL, 16, 6, 201, '2023-09-22 00:00:00', 'Sek.ASPI/267/IX/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer, 08/30/23\r\nPemeriksaan 1 , 09/05/23\r\nPerbaikan 1, 09/14/23\r\nPemeriksaan 2, 09/20/23\r\nPerbaikan 2, 09/21/23\r\nPemeriksaan 3, 09/22/23', '2023-09-22 19:36:15'),
(229, '2023-08-31 00:00:00', NULL, 16, 7, 5, '2023-10-26 00:00:00', 'Sek.ASPI/303/X/2023', NULL, NULL, NULL, NULL, NULL, 'Acquirer, 08/31/23\r\nPemeriksaan 1, 09/07/23\r\nPerbaikan 1, 10/02/23\r\nPemeriksaan 2, 10/02/23\r\nPerbaikan 2, 10/17/23\r\nPemeriksaan 3, 10/25/23', '2023-10-26 15:17:31'),
(230, '2023-09-04 00:00:00', NULL, 16, 7, 259, '2023-10-31 00:00:00', 'Sek.ASPI/317/X/2023', NULL, NULL, NULL, NULL, NULL, 'Acquirer, 09/04/23\r\nPemeriksaan 1, 09/07/23\r\nPerbaikan 1, 10/30/23\r\nPemeriksaan 2, 10/30/23', '2023-10-31 15:42:20'),
(231, '2023-09-05 00:00:00', NULL, 16, 11, 88, '2023-10-10 00:00:00', 'Sek.ASPI/289/X/2023', NULL, NULL, NULL, NULL, NULL, 'KKP Domestik, 09/05/23\r\nPemeriksaan 1, 09/07/23\r\nPerbaikan 1, 09/20/23\r\nPemeriksaan 2, 09/25/23\r\nPerbaikan 2, 10/05/23\r\nPemeriksaan 3, 10/09/23', '2023-10-23 10:16:48'),
(232, '2023-09-12 00:00:00', NULL, 18, 7, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paylater, 09/12/23\r\nPemeriksaan 1, 09/18/23\r\nPerbaikan 1, 10/31/23\r\nPemeriksaan 2, 11/07/23', '2023-11-07 17:27:30'),
(233, '2023-09-14 00:00:00', NULL, 11, 11, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKPD\r\nPemeriksaan 2, 09/18/23', '2024-01-09 15:20:18'),
(234, '2023-09-20 00:00:00', NULL, 16, 8, 168, '2023-10-02 00:00:00', 'Sek.ASPI/279/X/2023', NULL, NULL, NULL, NULL, NULL, 'QRIS Tarik Tunai, 09/25/23\r\nPemeriksaan 3, 09/29/23', '2023-10-06 09:03:26'),
(235, '2023-09-22 00:00:00', NULL, 16, 7, 246, '2023-10-31 00:00:00', 'Sek.ASPI/312/X/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer, 09/21/23\r\nPemeriksaan 1, 09/27/23\r\nPerbaikan 1, 10/10/23\r\nPemeriksaan 2, 10/23/23\r\nPerbaikan 2, 10/26/23\r\nPemeriksaan 3, 10/26/23', '2023-10-31 15:39:48'),
(236, '2023-09-29 00:00:00', NULL, 16, 11, 125, '2023-10-31 00:00:00', 'Sek.ASPI/316/X/2023', NULL, NULL, NULL, NULL, NULL, 'KKPD, 09/29/23\r\nPemeriksaan 1, 10/02/23\r\nPerbaikan 1, 10/27/23\r\nPerbaikan 1, 10/12/23\r\nPemeriksaan 2, 10/25/23\r\nPerbaikan 2, 10/27/23\r\nPemeriksaan 3, 10/30/23', '2023-10-31 15:26:12'),
(237, '2023-09-29 00:00:00', NULL, 18, 8, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Setor Tunai, 09/29/23\r\nPemeriksaan 1, 10/04/23', '2023-10-27 13:39:02'),
(238, '2023-10-10 00:00:00', NULL, 18, 7, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Issuer, 10/10/23\r\nPemeriksaan 1, 10/23/23', '2023-10-23 17:28:46'),
(239, '2023-10-10 00:00:00', NULL, 16, 9, 51, '2023-10-31 00:00:00', 'Sek.ASPI/314/X/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dok, 10/10/23\r\nPemeriksaan 1, 10/23/23\r\nPerbaikan 1, 10/30/23\r\nPemeriksaan 2, 10/30/23', '2023-10-31 15:47:49'),
(240, '2023-10-10 00:00:00', NULL, 16, 12, 51, '2023-10-31 00:00:00', 'Sek.ASPI/315/X/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dok, 10/10/23\r\nPemeriksaan 1, 10/23/23\r\nPerbaikan 1, 10/30/23\r\nPemeriksaan 2, 10/30/23', '2023-10-31 15:47:53'),
(241, '2023-10-24 00:00:00', NULL, 16, 14, 147, '2023-11-06 00:00:00', 'Sek.ASPI/328/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/24/23\r\nPemeriksaan 1, 10/26/23\r\nPerbaikan 1, 11/01/23\r\nPemeriksaan 2, 11/0\'2/23', '2023-11-06 19:10:00'),
(242, '2023-10-25 00:00:00', NULL, 16, 14, 47, '2023-10-31 00:00:00', 'Sek.ASPI/311/X/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/25/23\r\nPemeriksaan 1, 10/26/23', '2023-10-31 15:52:58'),
(243, '2023-10-25 00:00:00', NULL, 16, 14, 146, '2023-10-31 00:00:00', 'Sek.ASPI/310/X/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/25/23\r\nPemeriksaan 1, 10/26/23', '2023-10-31 15:53:02'),
(244, '2023-10-25 00:00:00', NULL, 18, 8, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SILA\r\nTransfer, 10/26/23\r\nPemeriksaan 1, 10/27/23\r\nPerbaikan 1, 11/20/23\r\nPemeriksaan 2, 11/23/23', '2023-11-23 17:31:26'),
(245, '2023-10-26 00:00:00', NULL, 16, 14, 114, '2023-11-06 00:00:00', 'Sek.ASPI/329/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/26/23\r\nPemeriksaan 1, 10/27/23\r\nPerbaikan 1, 11/01/23\r\nPemeriksaan 2, 11/02/23', '2023-11-06 19:07:50'),
(246, '2023-10-26 00:00:00', NULL, 16, 14, 168, '2023-10-31 00:00:00', 'Sek.ASPI/313/X/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/26/23\r\nPemeriksaan 1, 10/27/23\r\nPerbaikan 1, 10/27/23\r\nPemeriksaan 2, 10/30/23', '2023-10-31 15:53:05'),
(247, '2023-10-30 00:00:00', NULL, 16, 14, 39, '2023-11-06 00:00:00', 'Sek.ASPI/330/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/30/23\r\nPemeriksaan 1, 10/30/23\r\nPerbaikan 1, 11/03/23\r\nPemeriksaan 2, 11/03/23', '2023-11-06 19:05:25'),
(248, '2023-10-30 00:00:00', NULL, 16, 14, 188, '2023-11-07 00:00:00', 'Sek.ASPI/320/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD SILA, 10/30/23\r\nPemeriksaan 1, 11/02/23\r\nPerbaikan 1, 11/03/23\r\nPemeriksaan 2, 11/06/23\r\nPerbaikan 2, 11/06/23\r\nPemeriksaan 3, 11/06/23', '2023-11-07 08:42:49'),
(249, '2023-10-31 00:00:00', NULL, 16, 14, 169, '2023-11-06 00:00:00', 'Sek.ASPI/324/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/31/23\r\nPemeriksaan 1, 11/02/23\r\nPerbaikan 1, 11/03/23\r\nPemeriksaan 2, 11/03/23\r\nPerbaikan 3, 11/03/23\r\nPemeriksaan 3, 11/03/23', '2023-11-06 19:18:34'),
(250, '2023-10-31 00:00:00', NULL, 16, 14, 171, '2023-11-06 00:00:00', 'Sek.ASPI/323/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 10/31/23\r\nPemeriksaan 1, 11/02/23', '2023-11-06 19:21:29'),
(251, '2023-11-01 00:00:00', NULL, 16, 14, 46, '2023-11-08 00:00:00', 'Sek.ASPI/334/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 11/01/23\r\nPemeriksaan 1, 11/02/23\r\nPerbaikan 1, 11/06/23\r\nPemeriksaan 2, 11/07/23\r\nPerbaikan 2, 11/07/23\r\nPemeriksaan 3, 11/08/23', '2023-11-08 13:57:21'),
(252, '2023-11-01 00:00:00', NULL, 16, 14, 172, '2023-11-06 00:00:00', 'Sek.ASPI/326/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 11/01/23\r\nPemeriksaan 1, 11/02/23', '2023-11-06 19:16:00'),
(253, '2023-11-01 00:00:00', NULL, 16, 7, 255, '2023-11-14 00:00:00', 'Sek.ASPI/343/XI/2023', NULL, NULL, NULL, NULL, NULL, 'Terima Dokumen, 11/01/2023\r\nPemeriksaan 1, 11/06/23\r\nPerbaikan 1, 11/10/23\r\nPemeriksaan 2, 11/14/23', '2023-11-20 08:53:38'),
(254, '2023-11-02 00:00:00', NULL, 16, 14, 170, '2023-11-06 00:00:00', 'Sek.ASPI/327/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 11/02/23\r\nPemeriksaan 1, 11/02/23', '2023-11-06 19:13:36'),
(255, '2023-11-02 00:00:00', NULL, 16, 14, 107, '2023-11-06 00:00:00', 'Sek.ASPI/322/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 11/02/2023\r\nPemeriksaan 1, 11/03/23\r\nPerbaikan 1, 11/03/23\r\nPemeriksaan 2, 11/03/23', '2023-11-06 19:24:05'),
(256, '2023-11-03 00:00:00', NULL, 16, 14, 22, '2023-11-06 00:00:00', 'Sek.ASPI/321/XI/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 11/03/23\r\nPemeriksaan 1, 11/03/23\r\nPerbaikan 1, 11/03/23\r\nPemeriksaan 2, 11/03/23', '2023-11-06 19:26:24'),
(257, '2023-11-07 00:00:00', NULL, 18, 9, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'THB, 11/07/23\r\nPemeriksaan 1, 11/13/23', '2023-11-13 19:05:56'),
(258, '2023-11-07 00:00:00', NULL, 18, 12, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SGD, 11/07/23\r\nPemeriksaan 1, 11/13/23', '2023-11-13 19:06:04'),
(259, '2023-11-02 00:00:00', NULL, 18, 11, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKI, 11/02/23\r\nPemeriksaan 1, 11/13/23', '2023-11-13 19:11:24'),
(260, '2023-11-07 00:00:00', NULL, 18, 7, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Issuer, 11/07/23\r\nPemeriksaan 1, 11/13/23', '2023-11-13 19:10:01'),
(261, '2023-11-02 00:00:00', NULL, 18, 8, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TUNTAS, 11/02/23\r\nPemeriksaan 1, 11/20/23', '2023-11-21 11:26:27'),
(262, '2023-11-17 00:00:00', NULL, 16, 7, 260, '2023-12-19 00:00:00', 'Sek.ASPI/398/XII/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer, 11/21/23\r\nPemeriksaan 1, 11/22/23\r\nPerbaikan 1, 11/29/23\r\nPemeriksaan 2, 11/30/23\r\nPerbaikan 2, 12/06/23\r\nPemeriksaan 3, 12/13/23', '2023-12-19 11:15:30'),
(263, '2023-11-14 00:00:00', NULL, 16, 7, 254, '2023-12-15 00:00:00', 'Sek.ASPI/399/XII/2023', NULL, NULL, NULL, NULL, NULL, 'Issuer, 11/14/23\r\nPemeriksaan 1, 11/22/23\r\nPerbaikan 1, 11/29/23\r\nPemeriksaan 2, 12/04/23', '2023-12-19 11:16:30'),
(265, '2023-11-30 00:00:00', NULL, 18, 9, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paylater, 11/30/23', '2023-12-12 11:21:41'),
(266, '2023-11-30 00:00:00', NULL, 18, 12, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Paylater, 11/30/23', '2023-12-12 11:21:38'),
(267, '2023-12-08 00:00:00', NULL, 16, 14, 51, '2023-12-15 00:00:00', 'Sek.ASPI/400/XII/2023', NULL, NULL, NULL, NULL, NULL, 'SGD, 12/08/23', '2023-12-19 11:17:07'),
(268, '2023-12-06 00:00:00', NULL, 16, 7, 84, '2024-01-09 00:00:00', 'Sek.ASPI/SR/026/I/2024', NULL, NULL, NULL, NULL, NULL, 'Issuer, 12/06/23', '2024-01-09 15:17:32'),
(269, '2023-12-15 00:00:00', NULL, 18, 14, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SGD, 15122023', '2023-12-27 09:27:32'),
(270, '2023-12-14 00:00:00', NULL, 18, 8, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Transfer, Tarik, Setor Tunai 14122023', '2023-12-27 09:27:36'),
(271, '2023-12-19 00:00:00', NULL, 18, 11, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KKI, 19122023', '2023-12-27 09:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `qrisspeks`
--

CREATE TABLE `qrisspeks` (
  `id` bigint UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `id_pketerangan` bigint UNSIGNED DEFAULT NULL,
  `id_pstat` bigint UNSIGNED NOT NULL,
  `id_product` bigint UNSIGNED NOT NULL,
  `id_mitra` bigint UNSIGNED NOT NULL,
  `no_formulir` varchar(51) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_spek` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spek_qris` datetime DEFAULT NULL,
  `stats_temp` bigint UNSIGNED DEFAULT NULL,
  `pketerangan_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes_project` varchar(301) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qrisspeks`
--

INSERT INTO `qrisspeks` (`id`, `waktu_assign_project`, `id_pketerangan`, `id_pstat`, `id_product`, `id_mitra`, `no_formulir`, `no_spek`, `spek_qris`, `stats_temp`, `pketerangan_status`, `notes_project`, `last_updated`) VALUES
(1, '2019-10-03 00:00:00', NULL, 16, 7, 47, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:17:49'),
(2, '2019-06-01 00:00:00', NULL, 16, 7, 31, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:17:53'),
(4, '2019-12-26 00:00:00', NULL, 16, 7, 99, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:46:37'),
(5, '2019-10-23 00:00:00', NULL, 16, 7, 164, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:46:47'),
(6, '2019-11-21 00:00:00', NULL, 16, 7, 69, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:46:44'),
(7, '2019-10-10 00:00:00', NULL, 16, 7, 162, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:47:03'),
(8, '2019-10-03 00:00:00', NULL, 16, 7, 58, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:47:06'),
(9, '2019-12-02 00:00:00', NULL, 16, 7, 95, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:46:41'),
(10, '2019-10-17 00:00:00', NULL, 16, 7, 110, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:46:53'),
(11, '2019-10-16 00:00:00', NULL, 16, 7, 51, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:47:00'),
(12, '2019-10-23 00:00:00', NULL, 16, 7, 18, '-', NULL, NULL, NULL, NULL, '', '2022-08-01 15:46:50'),
(13, '2019-10-17 00:00:00', NULL, 16, 7, 125, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:46:57'),
(14, '2019-10-03 00:00:00', NULL, 16, 7, 23, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:57:59'),
(15, '2019-10-02 00:00:00', NULL, 16, 7, 67, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:58:02'),
(16, '2019-06-01 00:00:00', NULL, 16, 7, 39, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:58:08'),
(17, '2019-12-03 00:00:00', NULL, 16, 7, 146, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:57:48'),
(18, '2019-06-01 00:00:00', NULL, 16, 7, 71, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:58:11'),
(19, '2019-10-10 00:00:00', NULL, 16, 7, 4, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:57:56'),
(20, '2019-10-02 00:00:00', NULL, 16, 7, 7, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:58:05'),
(21, '2019-12-02 00:00:00', NULL, 16, 7, 86, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:57:50'),
(22, '2019-06-01 00:00:00', NULL, 16, 7, 8, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:58:14'),
(23, '2019-10-17 00:00:00', NULL, 16, 7, 139, '-', '', NULL, NULL, NULL, '', '2022-08-01 15:57:53'),
(24, '2019-06-01 00:00:00', NULL, 16, 7, 103, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:45'),
(25, '2019-10-23 00:00:00', NULL, 16, 7, 131, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:03'),
(26, '2019-06-01 00:00:00', NULL, 16, 7, 114, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:51'),
(27, '2019-10-03 00:00:00', NULL, 16, 7, 62, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:26'),
(28, '2019-10-16 00:00:00', NULL, 16, 7, 85, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:09'),
(29, '2019-06-01 00:00:00', NULL, 16, 7, 37, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:54'),
(30, '2019-06-01 00:00:00', NULL, 16, 7, 96, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:57'),
(31, '2019-10-03 00:00:00', NULL, 16, 7, 55, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:29'),
(32, '2019-06-01 00:00:00', NULL, 16, 7, 22, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:00'),
(33, '2019-10-03 00:00:00', NULL, 16, 7, 76, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:32'),
(34, '2019-06-01 00:00:00', NULL, 16, 7, 46, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:03'),
(35, '2019-12-26 00:00:00', NULL, 16, 7, 143, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:08'),
(36, '2019-12-26 00:00:00', NULL, 16, 7, 141, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:13'),
(37, '2019-06-01 00:00:00', NULL, 16, 7, 107, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:05'),
(38, '2019-11-14 00:00:00', NULL, 16, 7, 212, '-', NULL, NULL, NULL, NULL, 'BANK SYARIAH BRI (sudah gabung dg BSI)', '2022-08-01 16:29:19'),
(39, '2019-10-07 00:00:00', NULL, 16, 7, 147, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:18'),
(40, '2019-10-02 00:00:00', NULL, 16, 7, 16, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:47'),
(41, '2019-10-03 00:00:00', NULL, 16, 7, 59, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:37'),
(42, '2019-10-16 00:00:00', NULL, 16, 7, 53, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:13'),
(43, '2019-11-14 00:00:00', NULL, 16, 7, 213, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:22'),
(44, '2019-10-07 00:00:00', NULL, 16, 7, 32, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:21'),
(45, '2019-06-01 00:00:00', NULL, 16, 7, 173, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:09'),
(46, '2019-06-01 00:00:00', NULL, 16, 7, 169, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:12'),
(47, '2019-06-01 00:00:00', NULL, 16, 7, 170, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:17'),
(48, '2019-10-24 00:00:00', NULL, 16, 7, 175, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:30'),
(49, '2019-10-03 00:00:00', NULL, 16, 7, 176, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:41'),
(50, '2019-10-24 00:00:00', NULL, 16, 7, 177, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:33'),
(51, '2019-10-24 00:00:00', NULL, 16, 7, 179, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:36'),
(52, '2019-06-01 00:00:00', NULL, 16, 7, 180, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:19'),
(53, '2019-06-01 00:00:00', NULL, 16, 7, 168, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:22'),
(54, '2019-10-24 00:00:00', NULL, 16, 7, 183, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:42'),
(55, '2019-06-01 00:00:00', NULL, 16, 7, 184, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:24'),
(56, '2019-10-16 00:00:00', NULL, 16, 7, 185, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:15'),
(57, '2019-06-01 00:00:00', NULL, 16, 7, 171, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:27'),
(58, '2019-10-24 00:00:00', NULL, 16, 7, 188, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:45'),
(59, '2019-11-14 00:00:00', NULL, 16, 7, 189, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:25'),
(60, '2019-06-01 00:00:00', NULL, 16, 7, 172, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:30'),
(61, '2019-10-24 00:00:00', NULL, 16, 7, 209, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:48'),
(62, '2019-10-24 00:00:00', NULL, 16, 7, 193, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:50'),
(63, '2019-06-01 00:00:00', NULL, 16, 7, 210, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:32'),
(64, '2019-10-07 00:00:00', NULL, 16, 7, 194, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:30:23'),
(65, '2019-06-01 00:00:00', NULL, 16, 7, 195, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:35'),
(66, '2019-06-01 00:00:00', NULL, 16, 7, 196, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:31:38'),
(67, '2019-11-14 00:00:00', NULL, 16, 7, 197, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:28'),
(68, '2019-10-24 00:00:00', NULL, 16, 7, 199, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:53'),
(69, '2019-10-24 00:00:00', NULL, 16, 7, 200, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:56'),
(70, '2019-10-24 00:00:00', NULL, 16, 7, 201, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:59'),
(71, '2019-12-26 00:00:00', NULL, 16, 7, 202, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:29:16'),
(72, '2020-02-11 00:00:00', NULL, 16, 7, 43, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:26'),
(73, '2020-05-05 00:00:00', NULL, 16, 7, 49, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:00'),
(74, '2020-01-23 00:00:00', NULL, 16, 7, 45, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:37'),
(75, '2020-12-30 00:00:00', NULL, 16, 7, 88, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:54:15'),
(76, '2020-05-10 00:00:00', NULL, 16, 7, 35, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:56'),
(77, '2020-03-03 00:00:00', NULL, 16, 7, 26, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:14'),
(78, '2020-02-18 00:00:00', NULL, 16, 7, 10, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:21'),
(79, '2020-08-31 00:00:00', NULL, 16, 7, 56, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:24'),
(80, '2020-01-07 00:00:00', NULL, 16, 7, 214, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:46'),
(81, '2020-02-10 00:00:00', NULL, 16, 7, 135, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:31'),
(82, '2020-01-17 00:00:00', NULL, 16, 7, 122, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:43'),
(83, '2020-04-03 00:00:00', NULL, 16, 7, 215, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:09'),
(84, '2020-04-04 00:00:00', NULL, 16, 7, 12, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:06'),
(85, '2020-08-03 00:00:00', NULL, 16, 7, 102, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:29'),
(86, '2020-02-18 00:00:00', NULL, 16, 7, 144, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:24'),
(87, '2020-12-30 00:00:00', NULL, 16, 7, 145, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:54:19'),
(88, '2020-09-21 00:00:00', NULL, 16, 7, 216, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:22'),
(89, '2020-09-28 00:00:00', NULL, 16, 7, 9, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:19'),
(90, '2020-08-03 00:00:00', NULL, 16, 7, 66, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:32'),
(91, '2020-07-01 00:00:00', NULL, 16, 7, 157, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:41'),
(92, '2020-03-03 00:00:00', NULL, 16, 7, 5, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:17'),
(93, '2020-01-23 00:00:00', NULL, 16, 7, 153, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:40'),
(94, '2020-12-30 00:00:00', NULL, 16, 7, 27, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:54:29'),
(95, '2020-05-28 00:00:00', NULL, 16, 7, 119, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:45'),
(96, '2020-03-04 00:00:00', NULL, 16, 7, 79, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:12'),
(97, '2020-08-13 00:00:00', NULL, 16, 7, 174, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:27'),
(98, '2020-11-03 00:00:00', NULL, 16, 7, 182, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:10'),
(99, '2020-02-11 00:00:00', NULL, 16, 7, 217, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:29'),
(100, '2020-07-13 00:00:00', NULL, 16, 7, 186, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:35'),
(101, '2020-02-10 00:00:00', NULL, 16, 7, 187, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:34'),
(102, '2020-05-15 00:00:00', NULL, 16, 7, 190, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:47'),
(103, '2020-04-24 00:00:00', NULL, 16, 7, 192, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:56:03'),
(104, '2020-12-30 00:00:00', NULL, 16, 7, 105, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:54:31'),
(105, '2020-05-15 00:00:00', NULL, 16, 7, 198, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:53'),
(106, '2020-07-13 00:00:00', NULL, 16, 7, 203, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:39'),
(107, '2020-12-30 00:00:00', NULL, 16, 7, 204, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:07'),
(108, '2020-11-03 00:00:00', NULL, 16, 7, 208, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:13'),
(109, '2020-11-03 00:00:00', NULL, 16, 7, 205, '-', '', NULL, NULL, NULL, '', '2022-08-01 16:55:16'),
(110, '2021-04-07 00:00:00', NULL, 16, 7, 178, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:20'),
(111, '2021-07-22 00:00:00', NULL, 16, 7, 181, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:42'),
(112, '2021-08-06 00:00:00', NULL, 16, 7, 191, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:49'),
(113, '2021-04-05 00:00:00', NULL, 16, 7, 206, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:33'),
(114, '2021-04-07 00:00:00', NULL, 16, 7, 207, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:29'),
(115, '2021-03-17 00:00:00', NULL, 16, 7, 160, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:08'),
(116, '2021-07-22 00:00:00', NULL, 16, 7, 123, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:37'),
(117, '2021-04-26 00:00:00', NULL, 16, 7, 149, '-', '', NULL, NULL, NULL, '', '2022-08-02 09:15:14'),
(118, '2021-09-21 00:00:00', NULL, 16, 7, 218, '21QRIS-0831002', 'Sek.ASPI/194/IX/2021', NULL, NULL, NULL, '21 September 2021', '2022-08-02 09:20:54'),
(119, '2021-09-02 00:00:00', NULL, 16, 7, 219, '21QRIS-0902006', 'Sek.ASPI/189/IX/2021', NULL, NULL, NULL, '04 october 2021', '2022-08-02 09:21:10'),
(120, '2021-09-02 00:00:00', NULL, 16, 7, 220, '21QRIS-0902009', 'Sek.ASPI/198/IX/2021', NULL, NULL, NULL, '23 September 2021', '2022-08-02 09:21:14'),
(121, '2021-09-03 00:00:00', NULL, 1, 7, 221, '21QRIS-0903013', '', NULL, NULL, NULL, '', NULL),
(122, '2021-09-03 00:00:00', NULL, 1, 7, 222, '21QRIS-0903014', '', NULL, NULL, NULL, '', NULL),
(123, '2021-09-06 00:00:00', NULL, 16, 7, 223, '21QRIS-0906016', 'Sek.ASPI/257/XI/2021', NULL, NULL, NULL, '18-Nov-21', '2022-08-02 09:20:59'),
(124, '2021-09-13 00:00:00', NULL, 1, 7, 224, '21QRIS-0913022', '', NULL, NULL, NULL, '', NULL),
(125, '2021-09-27 00:00:00', NULL, 16, 7, 225, '21QRIS-0927035', 'Sek.ASPI/276/XII/2021', NULL, NULL, NULL, '3-Jan-22', '2022-08-02 09:21:02'),
(126, '2021-09-28 00:00:00', NULL, 16, 7, 227, '21QRIS-0928037', 'Sek.ASPI/238/X/2021', NULL, NULL, NULL, '22-Oct-21', '2022-08-02 09:21:06'),
(127, '2021-10-13 00:00:00', NULL, 1, 7, 226, '21QRIS-1013039', '', NULL, NULL, NULL, '', NULL),
(128, '2021-10-14 00:00:00', NULL, 16, 7, 81, '21QRIS-1014040', 'Sek.ASPI/242/X/2021', NULL, NULL, NULL, '1-Nov-21', '2022-08-02 09:21:19'),
(129, '2021-10-14 00:00:00', NULL, 1, 7, 228, '21QRIS-1014040', '', NULL, NULL, NULL, '', NULL),
(130, '2021-10-21 00:00:00', NULL, 16, 7, 229, '21QRIS-1021042', 'Sek.ASPI/266/XI/2021', NULL, NULL, NULL, '18-Nov-21', '2022-08-02 09:21:22'),
(131, '2021-11-03 00:00:00', NULL, 1, 7, 230, '21QRIS-1103045', '', NULL, NULL, NULL, '', NULL),
(132, '2021-11-12 00:00:00', NULL, 16, 7, 166, '21QRIS-1112048', 'Sek.ASPI/267/XI/2021', NULL, NULL, NULL, '29-Nov-21', '2022-08-02 09:21:26'),
(133, '2021-08-31 00:00:00', NULL, 16, 6, 173, '21QRIS-0831003', 'Sek.ASPI/207/IX/2021', '2021-09-29 00:00:00', NULL, NULL, NULL, '2022-08-22 09:07:28'),
(134, '2021-09-01 00:00:00', NULL, 16, 6, 185, '21QRIS-0901004', 'Sek.ASPI/193/IX/2021', '2021-09-16 00:00:00', NULL, NULL, NULL, '2022-08-22 09:08:29'),
(135, '2021-09-01 00:00:00', NULL, 16, 6, 199, '21QRIS-0901005', 'Sek.ASPI/247/X/2021', '2021-11-04 00:00:00', NULL, NULL, NULL, '2022-08-22 09:07:47'),
(136, '2021-09-02 00:00:00', NULL, 16, 6, 183, '21QRIS-0902007', 'Sek.ASPI/218/IX/2021', '2021-10-04 00:00:00', NULL, NULL, NULL, '2022-08-22 09:08:11'),
(137, '2021-09-02 00:00:00', NULL, 16, 6, 107, '21QRIS-0902008', 'Sek.ASPI/221/X/2021', '2021-10-06 00:00:00', NULL, NULL, NULL, '2022-08-22 09:08:16'),
(138, '2021-09-02 00:00:00', NULL, 16, 6, 146, '21QRIS-0902010', 'Sek.ASPI/232/X/2021', '2021-10-18 00:00:00', NULL, NULL, NULL, '2022-08-22 09:08:22'),
(139, '2021-09-03 00:00:00', NULL, 16, 6, 8, '21QRIS-0903011', 'Sek.ASPI/185/IX/2021', '2021-09-08 00:00:00', NULL, NULL, NULL, '2022-08-22 09:07:55'),
(140, '2021-09-03 00:00:00', NULL, 16, 6, 168, '21QRIS-0903012', 'Sek.ASPI/196/IX/2021', '2021-09-17 00:00:00', NULL, NULL, NULL, '2022-08-22 09:08:00'),
(141, '2021-09-03 00:00:00', NULL, 16, 6, 39, '21QRIS-0903015', 'Sek.ASPI/244/X/2021', '2021-11-01 00:00:00', NULL, NULL, NULL, '2022-08-22 09:08:05'),
(142, '2021-09-06 00:00:00', NULL, 1, 6, 16, '21QRIS-0906017', '', NULL, NULL, NULL, '', NULL),
(143, '2021-09-06 00:00:00', NULL, 1, 6, 208, '21QRIS-0906018', '', NULL, NULL, NULL, '', NULL),
(144, '2021-09-08 00:00:00', NULL, 16, 6, 172, '21QRIS-0908019', 'Sek.ASPI/256/XI/2021', '2021-11-18 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:48'),
(145, '2021-09-08 00:00:00', NULL, 16, 6, 170, '21QRIS-0908020', 'Sek.ASPI/230/X/2021', '2021-10-13 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:54'),
(146, '2021-09-13 00:00:00', NULL, 16, 6, 51, '21QRIS-0913021', 'Sek.ASPI/215/IX/2021', '2021-10-04 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:42'),
(147, '2021-09-17 00:00:00', NULL, 16, 6, 114, '21QRIS-0917023', 'Sek.ASPI/222/X/2021', '2021-10-06 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:36'),
(148, '2021-09-20 00:00:00', NULL, 16, 6, 96, '21QRIS-0920024', 'Sek.ASPI/251/XI/2021', NULL, NULL, NULL, NULL, '2022-08-22 09:14:35'),
(149, '2021-09-20 00:00:00', NULL, 16, 6, 184, '21QRIS-0920025', 'Sek.ASPI/231/X/2021', '2021-10-13 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:25'),
(150, '2021-09-20 00:00:00', NULL, 16, 6, 31, '21QRIS-0920026', 'Sek.ASPI/228/X/2021', '2021-10-13 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:31'),
(151, '2021-09-21 00:00:00', NULL, 16, 6, 37, '21QRIS-0921027', 'Sek.ASPI/233/X/2021', '2021-10-21 00:00:00', NULL, NULL, NULL, '2022-08-22 09:34:55'),
(152, '2021-09-21 00:00:00', NULL, 16, 6, 22, '21QRIS-0921028', '', NULL, NULL, NULL, '', '2022-12-29 11:15:46'),
(153, '2021-09-21 00:00:00', NULL, 16, 6, 147, '21QRIS-0921029', 'Sek.ASPI/212/IX/2021', '2021-10-04 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:01'),
(154, '2021-09-21 00:00:00', NULL, 16, 6, 103, '21QRIS-0921030', 'Sek.ASPI/039/III/2022', '2022-03-22 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:07'),
(155, '2021-09-21 00:00:00', NULL, 16, 6, 46, '21QRIS-0921031', 'Sek.ASPI/220/X/2021', '2021-10-06 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:13'),
(156, '2021-09-21 00:00:00', NULL, 16, 6, 169, '21QRIS-0921032', 'Sek.ASPI/209/IX/2021', '2021-09-29 00:00:00', NULL, NULL, NULL, '2022-08-22 09:35:19'),
(157, '2021-09-24 00:00:00', NULL, 16, 6, 171, '21QRIS-0924033', 'Sek.ASPI/229/X/2021', '2021-10-13 00:00:00', NULL, NULL, NULL, '2022-08-22 09:34:43'),
(158, '2021-09-24 00:00:00', NULL, 16, 6, 190, '21QRIS-0924034', 'Sek.ASPI/213/IX/2021', '2021-10-04 00:00:00', NULL, NULL, NULL, '2022-08-22 09:34:48'),
(159, '2021-09-27 00:00:00', NULL, 16, 6, 210, '21QRIS-0927036', 'Sek.ASPI/243/X/2021', '2021-11-01 00:00:00', NULL, NULL, NULL, '2022-08-22 09:34:37'),
(160, '2021-10-07 00:00:00', NULL, 1, 6, 58, '21QRIS-1007038', '', NULL, NULL, NULL, '', NULL),
(161, '2021-10-25 00:00:00', NULL, 16, 6, 47, '21QRIS-1025043', 'Sek.ASPI/266/XI/2021', '2021-11-29 00:00:00', NULL, NULL, NULL, '2022-08-22 09:34:25'),
(162, '2021-10-25 00:00:00', NULL, 16, 6, 196, '21QRIS-1025044', 'Sek.ASPI/039/III/2022', '2022-03-22 00:00:00', NULL, NULL, NULL, '2022-08-22 09:34:31'),
(163, '2021-11-05 00:00:00', NULL, 1, 6, 157, '21QRIS-1105046', '', NULL, NULL, NULL, '', NULL),
(164, '2021-11-10 00:00:00', NULL, 1, 6, 191, '21QRIS-1110047', '', NULL, NULL, NULL, '', NULL),
(165, '2021-11-25 00:00:00', NULL, 1, 6, 174, '21QRIS-1125049', '', NULL, NULL, NULL, '', NULL),
(166, '2021-12-03 00:00:00', NULL, 15, 6, 205, '21QRIS-1203050', '', NULL, NULL, NULL, '', '2022-08-22 09:34:11'),
(167, '2021-12-09 00:00:00', NULL, 1, 6, 145, '21QRIS-1209051', '', NULL, NULL, NULL, '', NULL),
(168, '2021-12-20 00:00:00', NULL, 1, 7, 233, '21QRIS-1220052', '', NULL, NULL, NULL, '', NULL),
(169, '2021-12-20 00:00:00', NULL, 1, 6, 45, '21QRIS-1220053', '', NULL, NULL, NULL, '', NULL),
(170, '2021-12-30 00:00:00', NULL, 16, 7, 142, '21QRIS-1230054', 'Sek.ASPI/020/II/2022', '2022-02-11 00:00:00', NULL, NULL, NULL, '2022-08-22 11:38:14'),
(171, '2022-01-03 00:00:00', NULL, 1, 7, 221, '22QRIS-0103001', '', NULL, NULL, NULL, '', NULL),
(172, '2022-01-06 00:00:00', NULL, 16, 6, 193, '22QRIS-0106002', 'Sek.ASPI/002/I/2022', '2022-01-17 00:00:00', NULL, NULL, NULL, '2022-08-22 11:37:56'),
(173, '2022-01-06 00:00:00', NULL, 16, 6, 180, '22QRIS-0106003', 'Sek.ASPI/003/I/2022', '2022-01-17 00:00:00', NULL, NULL, NULL, '2022-08-22 11:38:05'),
(174, '2022-02-02 00:00:00', NULL, 16, 7, 37, '22QRIS-0202004', 'Sek.ASPI/017/II/2022', '2022-02-09 00:00:00', NULL, NULL, NULL, '2022-08-22 11:36:45'),
(175, '2022-02-15 00:00:00', NULL, 1, 7, 146, '22QRIS-0215005', '', NULL, NULL, NULL, '', NULL),
(176, '2022-02-22 00:00:00', NULL, 16, 6, 55, '22QRIS-0223006', 'Sek.ASPI/043/III/2022', '2022-03-23 00:00:00', NULL, NULL, NULL, '2022-08-22 11:36:37'),
(177, '2022-02-23 00:00:00', NULL, 1, 6, 218, '22QRIS-0223007', '', NULL, NULL, NULL, '', NULL),
(178, '2022-02-23 00:00:00', NULL, 16, 7, 39, '22QRIS-0223008', 'Sek.ASPI/030/II/2022', '2022-03-02 00:00:00', NULL, NULL, NULL, '2022-08-22 11:36:28'),
(179, '2022-03-04 00:00:00', NULL, 1, 6, 26, '22QRIS-0304009', '', NULL, NULL, NULL, '', NULL),
(180, '2022-03-04 00:00:00', NULL, 16, 7, 234, '22QRIS-0304010', 'Sek.ASPI/151/VIII/2022', '2022-08-11 00:00:00', NULL, NULL, NULL, '2022-08-22 11:35:57'),
(181, '2022-03-08 00:00:00', NULL, 16, 6, 205, '22QRIS-0308011', '', NULL, NULL, NULL, '', '2022-12-29 11:16:33'),
(182, '2022-03-24 00:00:00', NULL, 1, 7, 25, '22QRIS-0324012', '', NULL, NULL, NULL, '', NULL),
(183, '2022-03-31 00:00:00', NULL, 1, 7, 130, '22QRIS-0331013', '', NULL, NULL, NULL, '', NULL),
(184, '2022-03-31 00:00:00', NULL, 16, 7, 138, '22QRIS-0331014', 'Sek.ASPI/057/IV/2022', '2022-04-08 00:00:00', NULL, NULL, NULL, '2022-08-22 11:36:17'),
(185, '2022-04-11 00:00:00', NULL, 16, 6, 186, '22QRIS-0411015', '', NULL, NULL, NULL, '', '2022-12-29 11:15:35'),
(186, '2022-04-13 00:00:00', NULL, 1, 7, 235, '22QRIS-0413016', '', NULL, NULL, NULL, '', NULL),
(187, '2022-05-12 00:00:00', NULL, 16, 7, 236, '22QRIS-0512017', 'Sek.ASPI/115/VI/2022', '2022-06-28 00:00:00', NULL, NULL, NULL, '2022-08-22 11:36:07'),
(188, '2022-05-18 00:00:00', NULL, 1, 6, 86, '22QRIS-0518018', '', NULL, NULL, NULL, '', NULL),
(189, '2022-05-24 00:00:00', NULL, 16, 7, 226, '22QRIS-0524019', '', NULL, NULL, NULL, '', '2023-11-30 15:10:51'),
(190, '2022-05-27 00:00:00', NULL, 16, 7, 63, '22QRIS-0527020', 'Sek.ASPI/125/VII/2022', '2022-07-20 00:00:00', NULL, NULL, NULL, '2022-08-22 11:35:45'),
(191, '2022-06-13 00:00:00', NULL, 16, 6, 218, '22QRIS-0613021', '', NULL, NULL, NULL, '', '2022-12-29 11:16:18'),
(192, '2022-06-13 00:00:00', NULL, 1, 6, 81, '22QRIS-0613022', '', NULL, NULL, NULL, '', NULL),
(193, '2022-06-22 00:00:00', NULL, 16, 7, 237, '22QRIS-0622023', 'Sek.ASPI/130/VII/2022', '2022-07-26 00:00:00', NULL, NULL, NULL, '2022-08-22 11:35:37'),
(194, '2022-06-27 00:00:00', NULL, 1, 7, 238, '22QRIS-0627024', '', NULL, NULL, NULL, '', NULL),
(195, '2022-07-05 00:00:00', NULL, 16, 7, 75, '22QRIS-0705025', 'Sek.ASPI/157/VIII/2022', '2022-08-18 00:00:00', NULL, NULL, NULL, '2022-08-22 11:35:32'),
(196, '2022-07-07 00:00:00', NULL, 1, 7, 239, '22QRIS-0707026', '', NULL, NULL, NULL, '', NULL),
(197, '2022-07-15 00:00:00', NULL, 1, 7, 84, '22QRIS-0715027', '', NULL, NULL, NULL, '', NULL),
(198, '2022-07-18 00:00:00', NULL, 16, 6, 227, '22QRIS-0718028', '', NULL, NULL, NULL, '', '2022-09-07 15:13:41'),
(199, '2022-07-18 00:00:00', NULL, 16, 7, 136, '22QRIS-0718029', '', NULL, NULL, NULL, '', '2023-07-07 10:16:01'),
(200, '2022-08-16 00:00:00', NULL, 1, 7, 240, '22QRIS-0816030', '', NULL, NULL, NULL, '', NULL),
(201, '2022-11-29 00:00:00', NULL, 1, 6, 145, '22QRIS-1129038', '', NULL, NULL, NULL, '', NULL),
(202, '2022-11-29 00:00:00', NULL, 16, 7, 242, '22QRIS-1129039', '', NULL, NULL, NULL, '', '2023-07-07 10:16:13'),
(203, '2022-12-07 00:00:00', NULL, 1, 7, 243, '22QRIS-1207040', '', NULL, NULL, NULL, '', NULL),
(204, '2022-12-08 00:00:00', NULL, 1, 7, 244, '22QRIS-1208041', '', NULL, NULL, NULL, '', NULL),
(205, '2022-12-15 00:00:00', NULL, 1, 7, 230, '22QRIS-1215042', '', NULL, NULL, NULL, '', NULL),
(206, '2022-12-15 00:00:00', NULL, 16, 6, 16, '22QRIS-1215043', 'Sek.ASPI/012/I_2023', '2023-01-10 00:00:00', NULL, NULL, NULL, '2023-02-27 12:15:54'),
(207, '2022-12-21 00:00:00', NULL, 1, 6, 30, '22QRIS-1221044', '', NULL, NULL, NULL, '', NULL),
(208, '2022-12-22 00:00:00', NULL, 15, 7, 245, '22QRIS-1222045', '', NULL, NULL, NULL, '', '2023-07-20 16:21:48'),
(209, '2023-01-03 00:00:00', NULL, 1, 7, 246, '23QRIS-0103001', '', NULL, NULL, NULL, '', NULL),
(210, '2023-01-04 00:00:00', NULL, 1, 7, 31, '23QRIS-0104002', '', NULL, NULL, NULL, '', NULL),
(211, '2023-01-27 00:00:00', NULL, 1, 6, 86, '23QRIS-0127003', '', NULL, NULL, NULL, '', NULL),
(212, '2023-02-16 00:00:00', NULL, 1, 7, 247, '23QRIS-0216004', '', NULL, NULL, NULL, '', NULL),
(213, '2023-02-23 00:00:00', NULL, 16, 7, 248, '23QRIS-0223005', '', NULL, NULL, NULL, '', '2023-07-07 10:08:11'),
(214, '2023-07-05 00:00:00', NULL, 16, 7, 136, '23QRIS-0620021', '', NULL, NULL, NULL, '', '2023-07-06 14:21:52'),
(215, '2023-07-05 00:00:00', NULL, 16, 6, 136, '23QRIS-0620021', '', NULL, NULL, NULL, '', '2023-07-06 14:21:56'),
(216, '2023-07-05 00:00:00', NULL, 16, 6, 225, '23QRIS-0619020', '', NULL, NULL, NULL, '', '2023-07-06 14:22:51'),
(217, '2023-07-06 00:00:00', NULL, 16, 6, 219, '23QRIS-0614019', '', NULL, NULL, NULL, '', '2023-09-13 15:49:42'),
(218, '2023-07-05 00:00:00', NULL, 16, 7, 249, '23QRIS-0614018', '', NULL, NULL, NULL, '', '2023-07-06 14:43:57'),
(219, '2023-06-25 00:00:00', NULL, 16, 7, 250, '23QRIS-0328009', '', NULL, NULL, NULL, '', '2023-07-06 14:48:09'),
(220, '2023-07-06 00:00:00', NULL, 16, 7, 17, '23QRIS-0228006', '', NULL, NULL, NULL, '', '2023-07-07 10:09:59'),
(221, '2023-07-06 00:00:00', NULL, 16, 7, 251, '23QRIS-0310007', '', NULL, NULL, NULL, '', '2023-07-07 10:10:28'),
(222, '2023-07-06 00:00:00', NULL, 1, 7, 252, '23QRIS-0328008', '', NULL, NULL, NULL, '', NULL),
(223, '2023-07-06 00:00:00', NULL, 16, 7, 253, '23QRIS-0405010', '', NULL, NULL, NULL, '', '2023-07-07 10:13:05'),
(224, '2023-07-06 00:00:00', NULL, 17, 6, 7, '23QRIS-0411011', '', NULL, NULL, NULL, '', '2023-08-28 10:53:33'),
(225, '2023-07-06 00:00:00', NULL, 16, 6, 192, '23QRIS-0411012', 'Sek.ASPI/118/III/2023', NULL, NULL, NULL, NULL, '2023-07-07 10:08:00'),
(226, '2023-07-06 00:00:00', NULL, 16, 7, 254, '23QRIS-0504013', '', NULL, NULL, NULL, '', '2023-07-06 15:58:11'),
(227, '2023-07-06 00:00:00', NULL, 1, 7, 9, '23QRIS-0516014', '', NULL, NULL, NULL, '', NULL),
(228, '2023-07-06 00:00:00', NULL, 1, 6, 181, '23QRIS-0519015', '', NULL, NULL, NULL, '', NULL),
(229, '2023-07-06 00:00:00', NULL, 16, 7, 255, '23QRIS-0525016', '', NULL, NULL, NULL, '', '2023-07-07 10:15:45'),
(230, '2023-07-06 00:00:00', NULL, 1, 7, 256, '23QRIS-0529017', '', NULL, NULL, NULL, '', NULL),
(231, '2023-07-20 00:00:00', NULL, 16, 6, 9, '23QRIS-0516014', '', NULL, NULL, NULL, '', '2023-07-20 15:53:28'),
(232, '2023-07-20 00:00:00', NULL, 16, 7, 245, '22QRIS-1222045', '', NULL, NULL, NULL, '', '2023-07-20 16:21:31'),
(233, '2023-07-21 00:00:00', NULL, 16, 7, 165, '23QRIS-07122022', '', NULL, NULL, NULL, '', '2023-07-25 17:27:11'),
(234, '2023-07-21 00:00:00', NULL, 16, 6, 165, '23QRIS-07122022', '', NULL, NULL, NULL, '', '2023-07-25 17:24:30'),
(235, '2023-07-31 00:00:00', NULL, 16, 6, 157, '23QRIS-0714024', '', NULL, NULL, NULL, '', '2023-08-09 14:21:08'),
(236, '2023-07-17 00:00:00', NULL, 16, 7, 257, '23QRIS-0714023', '', NULL, NULL, NULL, '', '2023-08-09 14:20:53'),
(237, '2023-08-08 00:00:00', NULL, 1, 6, 189, '23QRIS-0808026', '', NULL, NULL, NULL, '', NULL),
(238, '2023-08-22 00:00:00', NULL, 16, 7, 244, '23QRIS-0809026', '', NULL, NULL, NULL, '', '2023-08-29 16:46:41'),
(239, '2023-08-25 00:00:00', NULL, 16, 7, 126, '23QRIS-0823033', '', NULL, NULL, NULL, '', '2023-08-30 09:25:45'),
(240, '2023-08-24 00:00:00', NULL, 16, 7, 73, '23QRIS-0824034', '', NULL, NULL, NULL, '', '2023-10-27 10:08:13'),
(241, '2023-08-25 00:00:00', NULL, 16, 6, 7, '23QRIS-0821032', '', NULL, NULL, NULL, '', '2023-08-30 10:42:56'),
(242, '2023-08-28 00:00:00', NULL, 21, 6, 147, '23QRIS-0828036', '', NULL, NULL, NULL, '', '2023-08-28 11:10:36'),
(243, '2023-08-21 00:00:00', NULL, 21, 8, 183, '23QRIS-0821031', '', NULL, NULL, NULL, '', '2023-08-28 11:14:26'),
(244, '2023-09-01 00:00:00', NULL, 16, 8, 179, '23QRIS-0901037', '', NULL, NULL, NULL, '', '2023-09-13 15:49:12'),
(245, '2023-08-29 00:00:00', NULL, 16, 8, 180, '23QRIS-0821029', '', NULL, NULL, NULL, '', '2023-09-06 15:11:00'),
(246, '2023-09-06 00:00:00', NULL, 21, 8, 193, '23QRIS-0906044', '', NULL, NULL, NULL, '', '2023-09-06 15:10:50'),
(247, '2023-09-04 00:00:00', NULL, 16, 8, 174, '23QRIS-0904039', '', NULL, NULL, NULL, '', '2023-09-13 15:48:59'),
(248, '2023-09-04 00:00:00', NULL, 16, 8, 207, '23QRIS-0904040', '', NULL, NULL, NULL, '', '2023-09-13 15:49:06'),
(249, '2023-09-05 00:00:00', NULL, 16, 8, 110, '23QRIS-0905043', '', NULL, NULL, NULL, '', '2023-09-25 09:42:00'),
(250, '2023-09-04 00:00:00', NULL, 16, 8, 201, '23QRIS-0904041', '', NULL, NULL, NULL, '', '2023-09-25 10:14:08'),
(251, '2023-09-04 00:00:00', NULL, 21, 7, 88, '23QRIS-0904038', '', NULL, NULL, NULL, '', '2023-09-07 13:23:41'),
(252, '2023-09-07 00:00:00', NULL, 16, 8, 145, '23QRIS-0907045', '', NULL, NULL, NULL, '', '2023-10-05 10:12:27'),
(253, '2023-09-08 00:00:00', NULL, 21, 8, 217, '23QRIS-0908046', '', NULL, NULL, NULL, '', '2023-09-08 11:24:47'),
(254, '2023-09-11 00:00:00', NULL, 21, 8, 145, '23QRIS-0911048', '', NULL, NULL, NULL, '', '2023-09-11 09:19:58'),
(255, '2023-09-12 00:00:00', NULL, 16, 8, 168, '377/EDIK/LC-Skel/IX/2023', NULL, NULL, NULL, NULL, '', '2023-10-05 14:33:53'),
(256, '2023-09-12 00:00:00', NULL, 16, 8, 255, '23QRIS-0912050', '', NULL, NULL, NULL, '', '2023-09-13 15:48:44'),
(257, '2023-09-14 00:00:00', NULL, 19, 8, 203, '23QRIS-0914051', '', NULL, NULL, NULL, '', '2023-09-29 14:49:47'),
(258, '2023-09-11 00:00:00', NULL, 16, 8, 130, '23QRIS-0911047', '', NULL, NULL, NULL, '', '2023-09-25 09:59:28'),
(259, '2023-09-18 00:00:00', NULL, 16, 8, 205, '23QRIS-0918052', '', NULL, NULL, NULL, '', '2023-10-26 16:05:17'),
(260, '2023-09-19 00:00:00', NULL, 16, 8, 123, '23QRIS-0919053', '', NULL, NULL, NULL, '', '2023-11-07 08:55:03'),
(261, '2023-09-19 00:00:00', NULL, 21, 8, 165, '23QRIS-0919054', '', NULL, NULL, NULL, '', '2023-09-19 16:33:08'),
(262, '2023-09-20 00:00:00', NULL, 21, 8, 131, '23QRIS-0920055', '', NULL, NULL, NULL, '', '2023-09-20 15:31:52'),
(263, '2023-09-20 00:00:00', NULL, 16, 8, 157, '23QRIS-0920056', '', NULL, NULL, NULL, '', '2023-10-05 09:41:45'),
(264, '2023-09-21 00:00:00', NULL, 21, 8, 143, '23QRIS-0921057', '', NULL, NULL, NULL, '', '2023-09-21 09:12:09'),
(265, '2023-08-21 00:00:00', NULL, 16, 8, 22, '23QRIS-0821030', '', NULL, NULL, NULL, '', '2023-09-25 10:28:53'),
(266, '2023-09-21 00:00:00', NULL, 16, 8, 183, 'Tel.63/LP 500/JFIN0000000/2023', '', NULL, NULL, NULL, '', '2023-10-05 14:31:35'),
(267, '2023-09-25 00:00:00', NULL, 21, 8, 31, '23QRIS-0925058', '', NULL, NULL, NULL, '', '2023-09-25 14:40:38'),
(268, '2023-09-26 00:00:00', NULL, 21, 8, 107, '23QRIS-0926059', '', NULL, NULL, NULL, '', '2023-09-26 15:29:59'),
(269, '2023-09-26 00:00:00', NULL, 16, 6, 244, '23QRIS-0926060', '', NULL, NULL, NULL, '', '2023-10-05 10:32:03'),
(270, '2023-10-16 00:00:00', NULL, 16, 8, 170, '23QRIS-1016062', '', NULL, NULL, NULL, '', '2023-10-23 14:38:02'),
(271, '2023-10-02 00:00:00', NULL, 16, 8, 200, '004/LPPP/YUKK/X/20', '', NULL, NULL, NULL, '', '2023-10-19 10:16:19'),
(272, '2023-10-16 00:00:00', NULL, 16, 7, 108, '23QRIS-1016063', '', NULL, NULL, NULL, '', '2023-10-26 15:35:06'),
(273, '2023-11-03 00:00:00', NULL, 16, 8, 146, '23QRIS-1005061', '', NULL, NULL, NULL, '', '2023-11-07 13:12:15'),
(274, '2023-08-15 00:00:00', NULL, 16, 7, 260, '23QRIS-0815026', '', NULL, NULL, NULL, '', '2023-11-14 15:10:57'),
(275, '2023-11-15 00:00:00', NULL, 16, 6, 135, '23QRIS-0724025', '', NULL, NULL, NULL, '', '2023-11-23 09:33:46'),
(276, '2023-11-07 00:00:00', NULL, 16, 6, 261, '1557/MIY-EXT/XI/2023', '', NULL, NULL, NULL, '', '2023-11-23 14:41:10'),
(277, '2023-11-06 00:00:00', NULL, 16, 7, 261, '1556/MIY-EXT/XI/2023', '', NULL, NULL, NULL, '', '2023-11-23 14:41:47'),
(278, '2023-11-30 00:00:00', NULL, 16, 6, 143, '09/460/BSS/DIR/XI/23', '', NULL, NULL, NULL, '', '2023-12-12 16:29:51'),
(279, '2023-11-30 00:00:00', NULL, 16, 8, 62, '141/S/DIB-SURAT/XI/2023', '', NULL, NULL, NULL, '', '2023-12-12 16:30:00'),
(280, '2023-11-30 00:00:00', NULL, 16, 7, 7, '35/5628/PN/DB', '', NULL, NULL, NULL, '', '2023-12-12 16:30:12'),
(281, '2023-12-07 00:00:00', NULL, 16, 7, 256, 'RMA/LGL-SPm/XII/2023/094.03', '', NULL, NULL, NULL, '', '2023-12-12 16:31:28'),
(282, '2023-12-07 00:00:00', NULL, 16, 6, 256, 'RMA/LGL-SPm/XII/2023/093.03', '', NULL, NULL, NULL, '', '2023-12-12 16:32:06'),
(283, '2023-12-08 00:00:00', NULL, 16, 6, 166, '458/DIR/2023', '', NULL, NULL, NULL, '', '2023-12-12 16:32:47'),
(284, '2023-12-15 00:00:00', NULL, 16, 8, 51, 'SR/233/DIR/UM/12-2023', '', NULL, NULL, NULL, '', '2023-12-19 10:52:14'),
(285, '2023-12-22 00:00:00', NULL, 16, 7, 247, '006/LEG/MTI/XII/2023', '', NULL, NULL, NULL, '', '2023-12-22 16:04:42'),
(286, '2023-12-28 00:00:00', NULL, 16, 8, 143, '09/521/BSS/DIR/XII/23', '', NULL, NULL, NULL, '', '2023-12-28 16:14:51'),
(287, '2023-12-28 00:00:00', NULL, 16, 8, 39, '027/BCA/DPD/2023', '', NULL, NULL, NULL, '', '2023-12-28 16:15:54'),
(288, '2023-12-28 00:00:00', NULL, 16, 7, 262, '052/AYO/COMP/XII/2023', '', NULL, NULL, NULL, '', '2024-01-02 14:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `id_ulevel` bigint UNSIGNED NOT NULL,
  `nama_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inisial_user` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_user` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_ulevel`, `nama_user`, `email_user`, `inisial_user`, `password`, `added_by`, `modified_by`, `remember_token`, `status_user`, `created_at`, `updated_at`) VALUES
(1, 4, 'Lily', 'lsuliandari@aspi-indonesia.or.id', 'LSL', '$2y$10$IfYSvzBK2EIRtz4NAFLMz.B1gs5CF2nK5.mEyXRReMAiPqreyS7pi', 'ASPI', NULL, NULL, 1, '2022-07-22 07:23:40', '2024-01-09 10:02:10'),
(2, 4, 'Rey', 'renaldy@aspi-indonesia.or.id', 'RBB', '$2y$10$f9mYysfQUYSltOJTV03Hk.vx.3dHiGu7xArRMSc7DW.WKpnmOdjXa', 'ASPI', NULL, NULL, 1, '2022-07-22 07:23:40', '2024-01-16 07:31:39'),
(3, 4, 'Nesta', 'ernestaputri@aspi-indonesia.or.id', 'ENP', '$2y$10$jLc0AttHMm36ccPtYgoXtOHej1yYbArBsIlJdx3Udkfnl9kh9/26q', 'ASPI', NULL, NULL, 1, '2022-07-22 07:23:40', '2023-05-22 05:53:01'),
(5, 5, 'Tata Martadinata', 'tata.martadinata@aspi-indonesia.or.id', 'TTM', '$2y$10$4PSdGpFj217iXPYD7M6UJ.dhkADtFV6UchG8k8SdFh4/P4Fvgh3dK', 'RBB', NULL, NULL, 1, '2022-08-01 03:57:47', '2022-08-19 07:38:08'),
(6, 5, 'Hesty Novianingrum', 'hesty@aspi-indonesia.or.id', 'HST', '$2y$10$JTcyRTQfvCrP22npXWpUBu2exnMZuO/Cee3y8bdjLUskZQovBo8ci', 'RBB', NULL, NULL, 1, '2022-08-01 03:58:40', '2023-08-23 05:40:57'),
(7, 5, 'Iin Nugrohowati', 'iin@aspi-indonesia.or.id', 'IIN', '$2y$10$Nt/dMBYKo9U9hpzjPYaZveElGYDkR3039SI4zEgf2e4eU9IRONDEW', 'RBB', 'LSL', NULL, 1, '2022-08-01 03:59:40', '2023-08-09 02:33:38'),
(8, 2, 'Reycoba', 're@aspi-indonesia.or.id', 'RRR', '$2y$10$yRFSyAVTRCfxl7CcrgPdzeusRoXJ9bSZ2HgvGq.kxL/6OwwPg8uom', 'RBB', 'RBB', NULL, 1, '2022-08-02 03:05:26', '2023-04-28 03:00:05'),
(10, 5, 'Alfons', 'alfons@aspi-indonesia.or.id', 'ALF', NULL, 'RBB', NULL, NULL, 1, '2023-02-14 05:17:59', '2023-02-14 05:17:59'),
(11, 5, 'Retno', 'retno@aspi-indonesia.or.id', 'RET', '$2y$10$7d7GVwLspaff4DdpGM3iROrC42hXwaQUm1twcHp/6IIZmY48mPopC', 'RBB', NULL, NULL, 1, '2023-02-14 10:43:36', '2023-08-08 07:17:08'),
(12, 4, 'Aufar', 'aufar@aspi-indonesia.or.id', 'AUF', '$2y$10$AXVK1Nm6FHtnW/lgg5QM2.0wZScS1njexs37ZxUaUb.tmRAWKxOii', 'RBB', 'RBB', NULL, 1, '2023-05-04 12:13:10', '2023-10-20 02:57:38'),
(13, 5, 'Restu', 'restu@aspi-indonesia.or.id', 'RST', '$2y$10$/mHvpHNU/tpTNahGm6eFouEC9UjB4CWn1wt9Qplpk0DgON/jixNHu', 'RBB', NULL, NULL, 1, '2023-05-11 09:04:13', '2023-10-06 03:47:45'),
(14, 4, 'Indira', 'indira@aspi-indonesia.or.id', 'IDR', '$2y$10$5yjVv4iipsgP8DgnrUSUYuiSdYN/96vWgRxPZukHHfI2kTQu8EXaG', 'RBB', NULL, NULL, 1, '2023-07-24 09:44:10', '2024-01-16 03:49:12'),
(15, 5, 'Edwin', 'edwin@aspi-indonesia.or.id', 'EDW', '$2y$10$FYg7kGRinGls7vwG.kqdcul/PINaHHmVUjqcHke.S6wYhzqyRV6s6', 'RBB', NULL, NULL, 1, '2023-08-03 09:44:41', '2023-08-14 08:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `users_levels`
--

CREATE TABLE `users_levels` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ulevel` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_levels`
--

INSERT INTO `users_levels` (`id`, `nama_ulevel`) VALUES
(1, 'Admin'),
(2, 'Sertifikasi'),
(3, 'Guest'),
(4, 'Admin x Sertifikasi'),
(5, 'Eksekutif'),
(6, 'Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cas`
--
ALTER TABLE `cas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_id_project_foreign` (`id_project`),
  ADD KEY `documents_id_dtype_foreign` (`id_dtype`),
  ADD KEY `documents_uploaded_by_foreign` (`uploaded_by`);

--
-- Indexes for table `documents_categories`
--
ALTER TABLE `documents_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents_types`
--
ALTER TABLE `documents_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_types_id_dcategory_foreign` (`id_dcategory`);

--
-- Indexes for table `ipkcs`
--
ALTER TABLE `ipkcs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipkcs_id_ca_foreign` (`id_ca`),
  ADD KEY `ipkcs_id_pstat_foreign` (`id_pstat`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mitras`
--
ALTER TABLE `mitras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_id_pketerangan_foreign` (`id_pketerangan`),
  ADD KEY `projects_id_pstat_foreign` (`id_pstat`),
  ADD KEY `projects_id_product_foreign` (`id_product`),
  ADD KEY `projects_id_mitra_foreign` (`id_mitra`);

--
-- Indexes for table `projects_keterangans`
--
ALTER TABLE `projects_keterangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_stats`
--
ALTER TABLE `projects_stats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_types`
--
ALTER TABLE `projects_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qris`
--
ALTER TABLE `qris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qris_id_pketerangan_foreign` (`id_pketerangan`),
  ADD KEY `qris_id_pstat_foreign` (`id_pstat`),
  ADD KEY `qris_id_product_foreign` (`id_product`),
  ADD KEY `qris_id_mitra_foreign` (`id_mitra`);

--
-- Indexes for table `qrisspeks`
--
ALTER TABLE `qrisspeks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qrisspeks_id_pketerangan_foreign` (`id_pketerangan`),
  ADD KEY `qrisspeks_id_pstat_foreign` (`id_pstat`),
  ADD KEY `qrisspeks_id_product_foreign` (`id_product`),
  ADD KEY `qrisspeks_id_mitra_foreign` (`id_mitra`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_inisial_user_unique` (`inisial_user`),
  ADD KEY `users_id_ulevel_foreign` (`id_ulevel`);

--
-- Indexes for table `users_levels`
--
ALTER TABLE `users_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cas`
--
ALTER TABLE `cas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents_categories`
--
ALTER TABLE `documents_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents_types`
--
ALTER TABLE `documents_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ipkcs`
--
ALTER TABLE `ipkcs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `projects_keterangans`
--
ALTER TABLE `projects_keterangans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects_stats`
--
ALTER TABLE `projects_stats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `projects_types`
--
ALTER TABLE `projects_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qris`
--
ALTER TABLE `qris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `qrisspeks`
--
ALTER TABLE `qrisspeks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_levels`
--
ALTER TABLE `users_levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_id_dtype_foreign` FOREIGN KEY (`id_dtype`) REFERENCES `documents_types` (`id`),
  ADD CONSTRAINT `documents_id_project_foreign` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `documents_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `documents_types`
--
ALTER TABLE `documents_types`
  ADD CONSTRAINT `documents_types_id_dcategory_foreign` FOREIGN KEY (`id_dcategory`) REFERENCES `documents_categories` (`id`);

--
-- Constraints for table `ipkcs`
--
ALTER TABLE `ipkcs`
  ADD CONSTRAINT `ipkcs_id_ca_foreign` FOREIGN KEY (`id_ca`) REFERENCES `cas` (`id`),
  ADD CONSTRAINT `ipkcs_id_pstat_foreign` FOREIGN KEY (`id_pstat`) REFERENCES `projects_stats` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_id_mitra_foreign` FOREIGN KEY (`id_mitra`) REFERENCES `mitras` (`id`),
  ADD CONSTRAINT `projects_id_pketerangan_foreign` FOREIGN KEY (`id_pketerangan`) REFERENCES `projects_keterangans` (`id`),
  ADD CONSTRAINT `projects_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `projects_id_pstat_foreign` FOREIGN KEY (`id_pstat`) REFERENCES `projects_stats` (`id`);

--
-- Constraints for table `qris`
--
ALTER TABLE `qris`
  ADD CONSTRAINT `qris_id_mitra_foreign` FOREIGN KEY (`id_mitra`) REFERENCES `mitras` (`id`),
  ADD CONSTRAINT `qris_id_pketerangan_foreign` FOREIGN KEY (`id_pketerangan`) REFERENCES `projects_keterangans` (`id`),
  ADD CONSTRAINT `qris_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `qris_id_pstat_foreign` FOREIGN KEY (`id_pstat`) REFERENCES `projects_stats` (`id`);

--
-- Constraints for table `qrisspeks`
--
ALTER TABLE `qrisspeks`
  ADD CONSTRAINT `qrisspeks_id_mitra_foreign` FOREIGN KEY (`id_mitra`) REFERENCES `mitras` (`id`),
  ADD CONSTRAINT `qrisspeks_id_pketerangan_foreign` FOREIGN KEY (`id_pketerangan`) REFERENCES `projects_keterangans` (`id`),
  ADD CONSTRAINT `qrisspeks_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `qrisspeks_id_pstat_foreign` FOREIGN KEY (`id_pstat`) REFERENCES `projects_stats` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_ulevel_foreign` FOREIGN KEY (`id_ulevel`) REFERENCES `users_levels` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
