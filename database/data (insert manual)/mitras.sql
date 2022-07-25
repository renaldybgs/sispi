-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 09:43 AM
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
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mitra` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keanggotaan` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_pic` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_agreement` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_numb` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_anggota` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(10, 'PT. Bank Riau Kepri.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180427011', NULL, 'RBB', NULL),
(11, 'BBPOS', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1019009', '180502012', NULL, 'RBB', NULL),
(12, 'PT. Bank Commonwealth', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180503013', NULL, 'RBB', NULL),
(13, 'GRG Banking Equipment Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906001', '180503014', NULL, 'RBB', NULL),
(14, 'Bluebird Inc.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906004', '180507015', NULL, 'RBB', NULL),
(15, 'Gemalto', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1211016', '180508016', NULL, 'RBB', NULL),
(16, 'PT Bank Tabungan Negara (Persero) Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180515017', NULL, 'RBB', NULL),
(17, 'PT. Bank ICBC Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180516018', NULL, 'RBB', NULL),
(18, 'PT Bank Pembangunan Daerah Sumatera Selatan dan Bangka Belitung', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180517019', NULL, 'RBB', NULL),
(19, 'PAX Computer Technology (Shenzhen) Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-0906005', '180521020', NULL, 'RBB', NULL),
(20, 'Hengbao International Pte Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-1212009', '180521021', NULL, 'RBB', NULL),
(21, 'PT BANK SYARIAH MANDIRI', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180521022', NULL, 'RBB', NULL),
(22, 'PT Bank Permata Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180521023', NULL, 'RBB', NULL),
(23, 'PT. Bank Tabungan Pensiunan Nasional Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180522024', NULL, 'RBB', NULL),
(24, 'Cynovo Inc', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1019008', '180523025', NULL, 'RBB', NULL),
(25, 'PT Bank BTPN Syariah Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180524026', NULL, 'RBB', NULL),
(26, 'PT. Bank NTB', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180530027', NULL, 'RBB', NULL),
(27, 'PT. Bank Neo Commerce TBK (Yuda Bhakti)', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180530028', NULL, 'RBB', NULL),
(28, 'OKI Electic Industry Co', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1005006', '180622029', NULL, 'RBB', 'RBB'),
(29, 'Worldline', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1128014', '180702030', NULL, 'RBB', NULL),
(30, 'PT Bank Pembangunan Daerah Kalimantan Selatan', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180704031', NULL, 'RBB', NULL),
(31, 'PT. Bank DKI', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180704032', NULL, 'RBB', NULL),
(32, 'PT. Bank Panin Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180706033', NULL, 'RBB', NULL),
(33, 'Shenzhen Xinguodu Technology Co.,Ltd (Nexgo)', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0813007', '180711034', NULL, 'RBB', NULL),
(34, 'Jayasmart Technology', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '180711035', NULL, 'RBB', NULL),
(35, 'PT. Bank Pembangunan Daerah Kalimantan Timur dan Kalimantan Utara', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180716036', NULL, 'RBB', NULL),
(36, 'Poynt Co.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '180723037', NULL, 'RBB', NULL),
(37, 'PT. Bank Nationalnobu Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180724038', NULL, 'RBB', NULL),
(38, 'Korala Associated Limited', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1024010', '180807039', NULL, 'RBB', NULL),
(39, 'PT. Bank Central Asia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180807040', NULL, 'RBB', NULL),
(40, 'Castles Technology Singapore Pte Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0326005', '180807041', NULL, 'RBB', NULL),
(41, 'Hitachi-Omron Terminal Solutions, Corp/Hitachi Channel Solutions Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0131001', '180807042', NULL, 'RBB', NULL),
(42, 'PT. Idemia Technologies Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1126013', '180808043', NULL, 'RBB', NULL),
(43, 'PT. Bank Aceh Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180824044', NULL, 'RBB', NULL),
(44, 'PT BANK MANDIRI TASPEN', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180827045', NULL, 'RBB', NULL),
(45, 'PT. Bank Pembangunan Daerah Jambi', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180829046', NULL, 'RBB', NULL),
(46, 'PT. Bank Rakyat Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180830047', NULL, 'RBB', NULL),
(47, 'PT. Bank Pembangunan Daerah Bali', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180830048', NULL, 'RBB', NULL),
(48, 'Verifone System International Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1106012', '180831049', NULL, 'RBB', NULL),
(49, 'PT Bank Pembangunan Daerah Bengkulu', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180903050', NULL, 'RBB', NULL),
(50, 'PT. BPR Semoga Jaya Artha', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180904051', NULL, 'RBB', NULL),
(51, 'PT. BANK PEMBANGUNAN DAERAH SUMATERA BARAT', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180907052', NULL, 'RBB', NULL),
(52, 'WizarPOS International Co., Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1214017', '180910053', NULL, 'RBB', NULL),
(53, 'PT. Bank Woori Saudara Indonesia 1906, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180914054', NULL, 'RBB', NULL),
(54, 'PT. Cardsindo Tiga Perkasa', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '180924055', NULL, 'RBB', NULL),
(55, 'PT. Bank OCBC NISP, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180925056', NULL, 'RBB', NULL),
(56, 'PT. Bank Sumut', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180925057', NULL, 'RBB', NULL),
(57, 'Shenzhen Yihua Computer Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1214018', '180925058', NULL, 'RBB', NULL),
(58, 'PT Bank Pembangunan Daerah Jawa Barat dan Banten, Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '180927059', NULL, 'RBB', NULL),
(59, 'PT Bank UOB Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181003060', NULL, 'RBB', NULL),
(60, 'PT VALID TECHNOLOGIES INDONESIA', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1026011', '181005061', NULL, 'RBB', NULL),
(61, 'NEW POS Technology Limited', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1017007', '181011062', NULL, 'RBB', NULL),
(62, 'PT Bank Muamalat Indonesisa, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181015063', NULL, 'RBB', NULL),
(63, 'PT. BANK PEMBANGUNAN DAERAH BANTEN, TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181015064', NULL, 'RBB', NULL),
(64, 'PT. Bank SBI Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181018065', NULL, 'RBB', NULL),
(65, 'PT. JASUINDO TIGA PERKASA, TBK.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '181023066', NULL, 'RBB', NULL),
(66, 'PT. Bank Rakyat Indonesia Agroniaga, Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181024067', NULL, 'RBB', NULL),
(67, 'PT. Bank Bukopin, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181024068', NULL, 'RBB', 'RBB'),
(68, 'PT. BPR Sri Artha Lestari', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181026069', NULL, 'RBB', NULL),
(69, 'PT BANK PEMBANGUNAN DAERAH KALIMANTAN BARAT', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181030070', NULL, 'RBB', NULL),
(70, 'PT. Cipta Srigati Lestari', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '181105071', NULL, 'RBB', NULL),
(71, 'PT. Bank Danamon Indonesia, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181105072', NULL, 'RBB', NULL),
(72, 'PT. BPR LESTARI BALI', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181113073', NULL, 'RBB', NULL),
(73, 'PT. BPR Hasamitra', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123074', NULL, 'RBB', NULL),
(74, 'PT. BPR Barelang Mandiri', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123075', NULL, 'RBB', NULL),
(75, 'PT. Bank Pembangunan Daerah Sulawesi Tenggara', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123076', NULL, 'RBB', NULL),
(76, 'PT. Bank QNB Indonesia Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181123077', NULL, 'RBB', NULL),
(77, 'PT. WAHYU KARTUMASINDO INTERNATIONAL', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '18CON-1130015', '181126078', NULL, 'RBB', NULL),
(78, 'PT. BPR Jatim', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181129079', NULL, 'RBB', NULL),
(79, 'PT. Bank Mega Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181204080', NULL, 'RBB', NULL),
(80, 'Shanghai Smartpeak Technology Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0507006', '181204081', NULL, 'RBB', NULL),
(81, 'PT. BANK PEMBANGUNAN DAERAH MALUKU DAN MALUKU UTARA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '181205082', NULL, 'RBB', NULL),
(82, 'Fujian Landi Commercial Equipment Co., Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0827008', '181214083', NULL, 'RBB', NULL),
(83, 'Fujian Centerm Information Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0701002', '181217084', NULL, 'RBB', NULL),
(84, 'PT Bank Pembangunan Daerah Kalimantan Tengah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190109085', NULL, 'RBB', NULL),
(85, 'PT. Bank Multiarta Sentosa', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190111001', NULL, 'RBB', NULL),
(86, 'PT. BANK INA PERDANA TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190119002', NULL, 'RBB', NULL),
(87, 'UL Verification Services Pte Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0206001', '190206003', NULL, 'RBB', NULL),
(88, 'PT. BANK PEMBANGUNAN DAERAH JAWA TENGAH', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190218004', NULL, 'RBB', NULL),
(89, 'PT. BPR Danagung Ramulti', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190222005', NULL, 'RBB', NULL),
(90, 'PT. BPR Danagung Abadi', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190222006', NULL, 'RBB', NULL),
(91, 'PT. BPR Danagung Bakti', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190222007', NULL, 'RBB', NULL),
(92, 'Kona I Co. Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '19CON-0314004', '190314004', NULL, 'RBB', NULL),
(93, 'PT. Bank Amar Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190326008', NULL, 'RBB', NULL),
(94, 'Feitian Technologies Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-0114003', '190401009', NULL, 'RBB', NULL),
(95, 'PT. Bank Pembangunan Daerah Papua', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190418009', NULL, 'RBB', NULL),
(96, 'PT. Bank Negara Indonesia (Persero) Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190422010', NULL, 'RBB', NULL),
(97, 'PT. Bank Agris', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190503011', NULL, 'RBB', NULL),
(98, 'PT. BPR Surya Yudhakencana', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190528012', NULL, 'RBB', NULL),
(99, 'PT. Bank Jabar Banten Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190614013', NULL, 'RBB', NULL),
(100, 'PT. BPR Surya Yudha', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190618014', NULL, 'RBB', NULL),
(101, 'Shenzhen ZCS Technology Co.,Ltd', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '190719015', NULL, 'RBB', NULL),
(102, 'PT. Bank Ganesha Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190723016', NULL, 'RBB', NULL),
(103, 'PT Bank Maybank Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190729017', NULL, 'RBB', NULL),
(104, 'PT Bank Dinar Indonesia Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190806018', NULL, 'RBB', NULL),
(105, 'Standard Chartered Bank', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190814019', NULL, 'RBB', NULL),
(106, 'Cashway Fintech Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0412011', '190816020', NULL, 'RBB', NULL),
(107, 'PT. Bank Sinarmas Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190819021', NULL, 'RBB', NULL),
(108, 'PT. Bank Oke Indonesia Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190826022', NULL, 'RBB', NULL),
(109, 'PT Bank HSBC Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190828028', NULL, 'RBB', NULL),
(110, 'PT.BANK SULSELBAR', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '190905029', NULL, 'RBB', NULL),
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
(122, 'P.T. Bank Bumi Arta Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200605003', NULL, 'RBB', NULL),
(123, 'PT Bank Jago TBK', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200619004', NULL, 'RBB', NULL),
(124, 'Hyosung TNS Inc', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0415013', '200630005', NULL, 'RBB', NULL),
(125, 'PT. Bank Pembangunan Daerah  Daerah Istimewa Yogyakarta', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200727006', NULL, 'RBB', NULL),
(126, 'PT Bank Panin Dubai Syariah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '200828007', NULL, 'RBB', NULL),
(127, 'PT. NCR INDONESIA', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-1105007', '200918008', NULL, 'RBB', NULL),
(128, 'Fujian Morefun Electronic Technology Co. Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '20CON-1221009', '201106009', NULL, 'RBB', NULL),
(129, 'Vanstone Electronic (Beijing) Co, Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-0412012', '201106010', NULL, 'RBB', NULL),
(130, 'PT. Bank Perkreditan Rakyat Dana Nusantara', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '201106011', NULL, 'RBB', NULL),
(131, 'PT BANK MAYORA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '201120012', NULL, 'RBB', NULL),
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
(142, 'PT. Bank Pembangunan Daerah Sulawesi Tengah', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '210407010', NULL, 'RBB', NULL),
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
(156, 'PT BPR BANK SLEMAN (PERSERODA)', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '211021024', NULL, 'RBB', NULL),
(157, 'PT BANK DIGITAL BCA', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '211109025', NULL, 'RBB', NULL),
(158, 'PT Verifone Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, '21CON-1130015', '211122026', NULL, 'RBB', NULL),
(159, 'Alioth Limited Liability Company', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '211202027', NULL, 'RBB', NULL),
(160, 'PT Bank Lampung', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '211210028', NULL, 'RBB', NULL),
(161, 'PT BANK SULUTGO', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220103001', NULL, 'RBB', NULL),
(162, 'BPD NTT', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220222002', NULL, 'RBB', NULL),
(163, 'SZZT Electronics Co., Ltd.', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '220225003', NULL, 'RBB', NULL),
(164, 'PT. BANK PEMBANGUNAN DAERAH JAWA TIMUR, Tbk', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220308004', NULL, 'RBB', NULL),
(165, 'PT Bank J Trust Indonesia Tbk.', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220314005', NULL, 'RBB', NULL),
(166, 'PT Bank SeaBank Indonesia', 'Bank', 'Anggota', NULL, NULL, NULL, NULL, '220408006', NULL, 'RBB', NULL),
(167, 'PT Norxel Teknologi Indonesia', 'Vendor', 'Non Anggota', NULL, NULL, NULL, NULL, '220411007', NULL, 'RBB', NULL);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `mitras`
--
ALTER TABLE `mitras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
