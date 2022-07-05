-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 09:51 AM
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
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_project` bigint(20) UNSIGNED NOT NULL,
  `id_dtype` bigint(20) UNSIGNED NOT NULL,
  `nama_document` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direktori_document` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `softcopy_status` tinyint(1) NOT NULL DEFAULT 0,
  `hardcopy_status` tinyint(1) NOT NULL DEFAULT 0,
  `uploaded_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_categories`
--

CREATE TABLE `documents_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_dcategory` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents_types`
--

CREATE TABLE `documents_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_dcategory` bigint(20) UNSIGNED NOT NULL,
  `nama_dtype` varchar(51) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_folder` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
(19, '2022_06_29_085914_create_foreign_keys_for_qrisspeks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_mitra` varchar(51) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keanggotaan` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_agreement` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reg_numb` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_anggota` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_product` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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
(8, 'QRIS TTS', 'ASPI', NULL),
(9, 'QRIS CrossBorder', 'ASPI', NULL),
(10, 'SNAP', 'ASPI', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `projects_keterangans`
--

CREATE TABLE `projects_keterangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pketerangan` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pstat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
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
(22, 'Surat Persetujuan');

-- --------------------------------------------------------

--
-- Table structure for table `projects_types`
--

CREATE TABLE `projects_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ptype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `id_pketerangan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pstat` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_mitra` bigint(20) UNSIGNED NOT NULL,
  `surat_rekomendasi` datetime DEFAULT NULL,
  `no_rekomendasi` varchar(301) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_qrisbi` varchar(301) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ijin_qrisbi` varchar(301) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_ijinbi` datetime DEFAULT NULL,
  `stats_temp` bigint(20) UNSIGNED DEFAULT NULL,
  `pketerangan_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes_project` varchar(301) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qrisspeks`
--

CREATE TABLE `qrisspeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `waktu_assign_project` datetime NOT NULL,
  `id_pketerangan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_pstat` bigint(20) UNSIGNED NOT NULL,
  `id_product` bigint(20) UNSIGNED NOT NULL,
  `id_mitra` bigint(20) UNSIGNED NOT NULL,
  `no_formulir` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_spek` varchar(301) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spek_qris` datetime DEFAULT NULL,
  `stats_temp` bigint(20) UNSIGNED DEFAULT NULL,
  `pketerangan_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes_project` varchar(301) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_ulevel` bigint(20) UNSIGNED NOT NULL,
  `nama_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inisial_user` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `added_by` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_user` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_ulevel`, `nama_user`, `email_user`, `inisial_user`, `password`, `added_by`, `modified_by`, `remember_token`, `status_user`, `created_at`, `updated_at`) VALUES
(1, 4, 'Lily', 'lsuliandari@aspi-indonesia.or.id', 'LSL', NULL, 'ASPI', NULL, NULL, 1, '2022-07-05 07:41:04', '2022-07-05 07:41:04'),
(2, 4, 'Rey', 'renaldy@aspi-indonesia.or.id', 'RBB', NULL, 'ASPI', NULL, NULL, 1, '2022-07-05 07:41:04', '2022-07-05 07:41:04'),
(3, 4, 'Nesta', 'ernestaputri@aspi-indonesia.or.id', 'ENP', NULL, 'ASPI', NULL, NULL, 1, '2022-07-05 07:41:04', '2022-07-05 07:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `users_levels`
--

CREATE TABLE `users_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_ulevel` varchar(33) COLLATE utf8mb4_unicode_ci NOT NULL
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
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents_categories`
--
ALTER TABLE `documents_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents_types`
--
ALTER TABLE `documents_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects_keterangans`
--
ALTER TABLE `projects_keterangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects_stats`
--
ALTER TABLE `projects_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `projects_types`
--
ALTER TABLE `projects_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qris`
--
ALTER TABLE `qris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qrisspeks`
--
ALTER TABLE `qrisspeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_levels`
--
ALTER TABLE `users_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
