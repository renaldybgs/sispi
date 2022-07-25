-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2022 at 05:32 AM
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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `id_pketerangan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pstat` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_mitra` bigint(20) UNSIGNED NOT NULL,
  `number_special` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_prod` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typereg_numb` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_lab` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lab` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pif` datetime DEFAULT NULL,
  `ctf` datetime DEFAULT NULL,
  `report_lab` datetime DEFAULT NULL,
  `complience_req` datetime DEFAULT NULL,
  `loa_new` datetime DEFAULT NULL,
  `loa_sent` datetime DEFAULT NULL,
  `stats_temp` bigint(20) UNSIGNED DEFAULT NULL,
  `pketerangan_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes_project` varchar(301) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identification_num` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certification_no` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `waktu_assign_project`, `id_pketerangan`, `id_pstat`, `id_product`, `id_mitra`, `number_special`, `nama_prod`, `typereg_numb`, `security_lab`, `lab`, `pif`, `ctf`, `report_lab`, `complience_req`, `loa_new`, `loa_sent`, `stats_temp`, `pketerangan_status`, `notes_project`, `identification_num`, `certification_no`, `last_updated`) VALUES
(1, '2018-04-10 00:00:00', NULL, 13, 2, 3, '', 'I-J3H0XX-MVA3-2.1-PL6-CBI', 'ASPI-18PRN-0410001', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(2, '2018-04-20 00:00:00', NULL, 1, 1, 13, '', 'DT-7000', 'ASPI-18PRN-0420002', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(3, '2018-05-22 00:00:00', NULL, 1, 4, 19, '', 'Q20', 'ASPI-18PRN-0522003', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(4, '2018-05-09 00:00:00', NULL, 1, 4, 2, '', 'WPOS-3', 'ASPI-18PRN-0509004', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(5, '2018-06-22 00:00:00', NULL, 1, 1, 28, '', 'OKI', 'ASPI-18PRN-0622005', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(6, '2018-07-20 00:00:00', NULL, 1, 4, 29, '', 'Valina', 'ASPI-18PRN-0720006', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(7, '2018-08-01 00:00:00', NULL, 1, 2, 15, '', 'FXR5 v1.0', 'ASPI-18PRN-0801007', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(8, '2018-08-09 00:00:00', NULL, 1, 1, 16, '', 'The Kalignite Software Platform on Microsoft Windows', 'ASPI-18PRN-0809007', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(9, '2018-08-09 00:00:00', NULL, 1, 4, 6, '', 'MT280, CT280; Bluebird Payment EMV Kernel 3.0', 'ASPI-18PRN-0809008', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(10, '2018-09-05 00:00:00', NULL, 1, 4, 1, '', 'BluePad-55', 'ASPI-18PRN-0905010', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(11, '2018-09-27 00:00:00', NULL, 1, 4, 10, '', 'PAR6', 'ASPI-18PRN-0927011', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(12, '2018-09-27 00:00:00', NULL, 1, 4, 20, '', 'X990', 'ASPI-18PRN-0927012', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(13, '2018-10-17 00:00:00', NULL, 1, 4, 26, '', 'WisePad 2', 'ASPI-18PRN-1017013', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(14, '2018-10-29 00:00:00', NULL, 1, 4, 8, '', 'A930', 'ASPI-18PRN-1029014', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(15, '2018-11-05 00:00:00', NULL, 1, 4, 21, '', 'WIZARHAND Q1', 'ASPI-18PRN-1105015', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(16, '2018-11-05 00:00:00', NULL, 1, 4, 21, '', 'WIZARPOS Q2', 'ASPI-18PRN-1105016', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(17, '2018-12-05 00:00:00', NULL, 1, 2, 24, '', 'Exolvo M/Chip NSICCS SDA v1.0', 'ASPI-18RRN-1205017', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(18, '2018-12-05 00:00:00', NULL, 1, 1, 23, '', 'Yihua ATM', 'ASPI-18PRN-1205018', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(19, '2018-12-13 00:00:00', NULL, 1, 4, 4, '', 'W6900', 'ASPI-18PRN-1213019', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(20, '2019-01-09 00:00:00', NULL, 1, 2, 19, '', 'Solvo Evolution 21 NSICCS No OffPIN DDA 02', 'ASPI-19PRN-0109020', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(21, '2019-01-09 00:00:00', NULL, 1, 2, 19, '', 'Solvo Evolution 21 NSICCS No OffPIN SDA 02', 'ASPI-19PRN-0109021', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(22, '2019-01-22 00:00:00', NULL, 1, 2, 29, '', 'UCard UBJ21-G22 Profile 8, Version 1.0', 'ASPI-19RRN-0122001', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(23, '2019-01-31 00:00:00', NULL, 15, 4, 25, NULL, 'NEW9210', 'ASPI-19PRN-0131002', NULL, 'Alto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-21 10:41:50'),
(24, '2019-02-01 00:00:00', NULL, 1, 2, 7, '', 'FXR5 (profile 5) v1.0', 'ASPI-19PRN-0201003', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(25, '2019-03-15 00:00:00', NULL, 1, 2, 33, '', 'KONA2 C2200S V1.00 Profile 7', 'ASPI-19RRN-0315004', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(26, '2019-03-28 00:00:00', NULL, 1, 2, 24, '', 'Exolvo VSDC NSICCS SDA v1.0', 'ASPI-19RRN-0328005', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(27, '2019-03-28 00:00:00', NULL, 1, 4, 30, '', 'P1000', 'ASPI-19PRN-0328006', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(28, '2019-03-28 00:00:00', NULL, 1, 1, 18, '', 'TS-EA (SR-ATM) - DUPICDST 40000005', 'ASPI-19PRN-0328007', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(29, '2019-03-28 00:00:00', NULL, 1, 1, 18, '', 'TS-EA (SR-ATM) - DUPICDST 40000100', 'ASPI-19PRN-0328008', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(30, '2019-04-04 00:00:00', NULL, 1, 4, 8, '', 'IM500', 'ASPI-19PRN-0404009', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(31, '2019-05-03 00:00:00', NULL, 1, 4, 31, '', 'APOS A8', 'ASPI-19PRN-0503010', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(32, '2019-05-28 00:00:00', NULL, 1, 2, 3, '', 'I-J3RXXX-2.0 Profile 7', 'ASPI-19PRN-0528011', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(33, '2019-06-18 00:00:00', NULL, 1, 2, 3, '', 'I-J3RXXX-2.0 Profile 5', 'ASPI-19PRN-0618012', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(34, '2019-09-09 00:00:00', NULL, 1, 4, 25, '', 'NEW8210/NEW7210/NEW6210', 'ASPI-19PRN-0909013', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(35, '2019-09-19 00:00:00', NULL, 15, 4, 17, '', 'Vega3000, MP200, UPT1000, UPT1000F, Saturn1000', 'ASPI-19RRN-0919014', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(36, '2019-10-07 00:00:00', NULL, 1, 4, 17, '', 'Vega3000, MP200, UPT1000, UPT1000F, Saturn1000', 'ASPI-19PRN-1007015', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(37, '2019-10-09 00:00:00', NULL, 1, 2, 34, '', '-', 'ASPI-19PRN-1009016', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(38, '2019-10-23 00:00:00', NULL, 1, 4, 32, '', 'K9', 'ASPI-19PRN-1023017', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(39, '2019-11-06 00:00:00', NULL, 1, 4, 8, '', 'A910', 'ASPI-19PRN-1106018', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(40, '2019-11-25 00:00:00', NULL, 1, 4, 52, '', 'V200c Plus', 'ASPI-19PRN-1125019', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(41, '2019-12-18 00:00:00', NULL, 1, 2, 37, '', 'Ucard UBJ21-G26, v1.0 Profile 7', 'ASPI-19PRN-1218020', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(42, '2020-01-13 00:00:00', NULL, 1, 4, 4, '', 'T6800/T6900/T6920', 'ASPI-20PRN-011301/2/3', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(43, '2020-01-23 00:00:00', NULL, 1, 2, 19, '', 'Solvo Fly 10 NSICCS No OffPIN SDA 02', 'ASPI-20PRN-0123004', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(44, '2020-01-23 00:00:00', NULL, 1, 2, 19, '', 'Solvo Fly 10 NSICCS No OffPIN DDA 01', 'ASPI-20PRN-0123005', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(45, '2020-01-30 00:00:00', NULL, 1, 4, 13, '', 'N3,N5', 'ASPI-20PRN-0130006', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(46, '2020-01-30 00:00:00', NULL, 1, 4, 13, '', 'N6', 'ASPI-20PRN-0130007', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(47, '2020-02-21 00:00:00', NULL, 1, 1, 36, '', 'CASH80', 'ASPI-20PRN-0221008', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(48, '2020-03-09 00:00:00', NULL, 1, 2, 19, '', 'Solvo Fly 10 R3 NSICCS No OffPIN DDA 01', 'ASPI-20PRN-0309009', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(49, '2020-03-09 00:00:00', NULL, 1, 2, 19, '', 'Solvo Fly 10 R3 NSICCS No OffPIN SDA 02', 'ASPI-20PRN-0309010', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(50, '2020-03-09 00:00:00', NULL, 1, 1, 5, '', 'DT-7000 Windows 10', 'ASPI-20PRN-0309011', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(51, '2020-04-22 00:00:00', NULL, 1, 4, 8, '', 'IM30', 'ASPI-20PRN-0422012', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(52, '2020-04-24 00:00:00', NULL, 15, 2, 7, '', 'GFX5 v1.0', 'ASPI-20PRN-0424013', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(53, '2020-05-20 00:00:00', NULL, 1, 4, 39, '', 'N910', 'ASPI-20PRN-0520014', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(54, '2020-05-20 00:00:00', NULL, 15, 4, 35, '', '-', 'ASPI-20PRN-0520015', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(55, '2020-05-20 00:00:00', NULL, 1, 4, 41, '', 'MP45', 'ASPI-20PRN-0520016', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(56, '2020-06-09 00:00:00', NULL, 1, 2, 37, '', 'Ucard UBJ21-G26, v1.0 Profile 5', 'ASPI-20PRN-0609017', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(57, '2020-06-29 00:00:00', NULL, 1, 4, 20, '', 'C680', 'ASPI-20PRN-0629018', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(58, '2020-07-06 00:00:00', NULL, 1, 4, 25, '', 'NEW9220/NEW9210', 'ASPI-20PRN-0706019', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(59, '2020-07-06 00:00:00', NULL, 1, 2, 37, '', 'Ucard UBJ31-G29, v1.0 Profile 5', 'ASPI-20PRN-0706020', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(60, '2020-07-06 00:00:00', NULL, 1, 2, 37, '', 'Ucard UBJ31-G29, v1.0 Profile 7', 'ASPI-20PRN-0706021', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(61, '2020-07-06 00:00:00', NULL, 1, 2, 37, '', 'Ucard UBJ31-G29, v1.0 Profile 8', 'ASPI-20PRN-0706022', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(62, '2020-07-14 00:00:00', NULL, 1, 2, 33, '', 'KONA2 D2350 V1.0 Profile 5', 'ASPI-20PRN-0714023', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(63, '2020-07-14 00:00:00', NULL, 1, 2, 33, '', 'KONA2 D2350 V1.0 Profile 7', 'ASPI-20PRN-0714024', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(64, '2020-07-14 00:00:00', NULL, 1, 2, 44, '', 'TimeCOS ePay_C v1.0 Profile 5', 'ASPI-20RRN-0714025', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(65, '2020-07-14 00:00:00', NULL, 1, 2, 44, '', 'TimeCOS ePay_C v1.0 Profile 7', 'ASPI-20RRN-0714026', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(66, '2020-07-16 00:00:00', NULL, 1, 1, 45, '', 'Hyosung ATM', 'ASPI-20PRN-0716027', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(67, '2020-07-30 00:00:00', NULL, 1, 2, 33, '', 'KONA2 C2200S V1.00 Profile 5', 'ASPI-20RRN-0730028', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(68, '2020-08-04 00:00:00', NULL, 1, 2, 19, '', 'Solvo Fly 30 NSICCS No OffPIN DDA 01', 'ASPI-20PRN-0804029', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(69, '2020-08-04 00:00:00', NULL, 1, 2, 19, '', 'Solvo Fly 30 NSICCS No OffPIN SDA 02', 'ASPI-20PRN-0804030', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(70, '2020-08-05 00:00:00', NULL, 1, 4, 13, '', 'N86', 'ASPI-20PRN-0805031', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(71, '2020-08-21 00:00:00', NULL, 1, 2, 9, '', 'UranusMVP NSICCS V1.1 Profile 7', 'ASPI-20PRN-0821032', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(72, '2020-09-17 00:00:00', NULL, 1, 4, 40, '', 'T1', 'ASPI-20PRN-0917033', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(73, '2020-10-15 00:00:00', NULL, 15, 2, 44, '', 'TimeCOS-JC-DI-T0-6 V1.0 Profile 5', 'ASPI-20RRN-1015034', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(74, '2020-10-15 00:00:00', NULL, 15, 2, 44, '', 'TimeCOS-JC-DI-T0-6 V1.0 Profile 7', 'ASPI-20RRN-1015035', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(75, '2020-10-16 00:00:00', NULL, 1, 4, 40, '', 'MP35', 'ASPI-20PRN-1016036', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(76, '2020-10-21 00:00:00', NULL, 1, 4, 34, '', 'F20', 'ASPI-20PRN-1021037', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(77, '2020-11-11 00:00:00', NULL, 1, 2, 7, '', 'GFCX11 v1.0', 'ASPI-20PRN-1111038', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(78, '2020-11-18 00:00:00', NULL, 1, 2, 24, '', 'Valid  Exolvo B2- v1.0 Card Profile 5 and 1.0', 'ASPI-20PRN-1118039', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(79, '2020-11-18 00:00:00', NULL, 1, 2, 24, '', 'Exolvo B2-1 v1.0 & Exolvo B2-2 v1.0 Profile 7', 'ASPI-20PRN-1118040', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(80, '2020-11-23 00:00:00', NULL, 1, 4, 47, '', 'MF919', 'ASPI-20PRN-1123041', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(81, '2020-11-24 00:00:00', NULL, 1, 2, 44, '', 'TimeCOS ePay_D V1.0 Profile 5', 'ASPI-20PRN-1124042', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(82, '2020-11-24 00:00:00', NULL, 1, 2, 44, '', 'TimeCOS ePay_D V1.0 Profile 7', 'ASPI-20PRN-1124043', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(83, '2020-12-16 00:00:00', NULL, 1, 1, 46, '', '-', 'ASPI-20PRN-1216044', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(84, '2020-12-22 00:00:00', NULL, 1, 4, 48, '', 'A90', 'ASPI-20PRN-1222045', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(85, '2021-01-18 00:00:00', NULL, 1, 4, 49, '', 'AXIUM DX8000', 'ASPI-21PRN-0118001', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(86, '2021-01-22 00:00:00', NULL, 1, 4, 48, '', 'V71', 'ASPI-21PRN-0122002', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL),
(87, '2021-01-22 00:00:00', NULL, 1, 4, 48, '', 'V37', 'ASPI-21PRN-0122003', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_id_mitra_foreign` FOREIGN KEY (`id_mitra`) REFERENCES `mitras` (`id`),
  ADD CONSTRAINT `projects_id_pketerangan_foreign` FOREIGN KEY (`id_pketerangan`) REFERENCES `projects_keterangans` (`id`),
  ADD CONSTRAINT `projects_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `projects_id_pstat_foreign` FOREIGN KEY (`id_pstat`) REFERENCES `projects_stats` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
