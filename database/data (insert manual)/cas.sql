-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 09:42 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sispi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cas`
--

CREATE TABLE `cas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_issuer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_ca` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(100, '2022-06-09 00:00:00', 'New', 'PT Bank Nagari', '601592', '22CA-0609012', 'RBB', NULL),
(101, '2022-06-09 00:00:00', 'New', 'PT BANK BENGKULU', '627934', '22CA-0609013', 'RBB', NULL),
(102, '2022-07-13 00:00:00', 'New', 'PT BPR Karyajatnika Sadaya', '627879', '22CA-0713014', 'RBB', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cas`
--
ALTER TABLE `cas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cas`
--
ALTER TABLE `cas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
