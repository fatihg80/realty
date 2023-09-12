-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 11, 2023 at 10:37 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oyarealty`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
CREATE TABLE IF NOT EXISTS `amenities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `amenitis_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(1, 'CCTV SECURITY', NULL, '2023-09-09 05:59:22'),
(4, 'IMTERCOM', NULL, NULL),
(5, 'FLOORING', NULL, NULL),
(6, 'CLEANING SERVICES', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `facility_name` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `distance` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(15, 2, 'Hospital', '3', '2023-09-09 18:53:10', '2023-09-09 18:53:10'),
(16, 2, 'SuperMarket', '4', '2023-09-09 18:53:10', '2023-09-09 18:53:10'),
(17, 2, 'Pharmacy', '1', '2023-09-09 18:53:10', '2023-09-09 18:53:10'),
(18, 2, 'School', '2', '2023-09-09 18:53:10', '2023-09-09 18:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_30_202515_create_property_types_table', 2),
(6, '2023_09_03_205638_create_amenities_table', 3),
(7, '2023_09_03_220710_create_properties_table', 4),
(8, '2023_09_03_223418_create_multi_images_table', 5),
(9, '2023_09_03_224306_create_states_table', 5),
(10, '2023_09_09_093650_create_facilities_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

DROP TABLE IF EXISTS `multi_images`;
CREATE TABLE IF NOT EXISTS `multi_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `photo_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(12, 2, 'upload/property/multi-image/1776598530333581.jpg', '2023-09-09 18:53:09', NULL),
(13, 2, 'upload/property/multi-image/1776598530701806.jpg', '2023-09-09 18:53:09', NULL),
(14, 2, 'upload/property/multi-image/1776598530990793.jpg', '2023-09-09 18:53:09', NULL),
(15, 2, 'upload/property/multi-image/1776598531288925.jpg', '2023-09-09 18:53:10', NULL),
(16, 2, 'upload/property/multi-image/1776598531635419.jpg', '2023-09-09 18:53:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
CREATE TABLE IF NOT EXISTS `properties` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ptype_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `amenities_id` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `property_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `property_slug` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `property_code` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `property_status` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `lowest_price` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `max_price` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `property_thambnail` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `short_descp` text COLLATE utf8mb3_unicode_ci,
  `long_descp` text COLLATE utf8mb3_unicode_ci,
  `bedrooms` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `garage` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `garage_size` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `property_size` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `property_video` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `featured` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `hot` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `agent_id` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(2, '1', 'CCTV SECURITY,IMTERCOM,FLOORING,CLEANING SERVICES', 'The Citizen Apartment', 'the-citizen-apartment', 'PC001', 'rent', '100', '1000', 'upload/property/thambnail/1776598530110050.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt', '<div class=\"text\">\r\n<p><span style=\"color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet consectetur adipisicing sed eiusm tempor incididunt labore dolore magna aliqua enim minim veniam quis nostrud exercitation laboris nisi ut aliquip ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur occaecat</span></p>\r\n<p><span style=\"color: rgb(255, 255, 255);\">Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim est laborum. Sed perspiciatis unde omnis iste natus error sit voluptatem accusantium dolore mque laudantium totam rem aperiam.</span></p>\r\n</div>', '3', '3', '1', '500', '1000', 'https://youtube.com', 'FairFax', 'Riyadh', '1', '11461', 'yes', '24.713552', '46.675297', '1', '1', 2, '1', '2023-09-09 18:53:08', '2023-09-11 16:43:00');

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

DROP TABLE IF EXISTS `property_types`;
CREATE TABLE IF NOT EXISTS `property_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type_icon` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(1, 'Apartment', 'icon-1', NULL, NULL),
(2, 'Office', 'icon-2', NULL, NULL),
(3, 'Floor', 'icon-3', NULL, NULL),
(4, 'Duplex', 'icon-4', NULL, NULL),
(5, 'Building', 'icon-5', NULL, NULL),
(6, 'warehouse', 'icon-6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `state_image` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `state_image`, `created_at`, `updated_at`) VALUES
(1, 'va', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb3_unicode_ci,
  `role` enum('admin','agent','user') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Alfatih Abdalla', 'fabdalla782@gmail.com', NULL, '$2y$10$eBWaNpDSRUDeCvB1EJ7nzO/IYTq0IG.GxMWzVthbxVzHGdcbXagF6', '2023081921061688586208072.jpg', '0508357341', 'dddd@dd.com', 'admin', 'active', NULL, NULL, '2023-09-02 04:16:22'),
(2, 'Agent', 'agent', 'agent@oyarealty.com', NULL, '$2y$10$eBWaNpDSRUDeCvB1EJ7nzO/IYTq0IG.GxMWzVthbxVzHGdcbXagF6', NULL, NULL, NULL, 'agent', 'active', NULL, NULL, NULL),
(3, 'User', 'UserAbdalla', 'user@oyarealty.com', NULL, '$2y$10$eBWaNpDSRUDeCvB1EJ7nzO/IYTq0IG.GxMWzVthbxVzHGdcbXagF6', '2023082613091688586208072.jpg', '0508357341', 'FairFax', 'user', 'active', NULL, NULL, '2023-08-28 03:30:24'),
(4, 'Salma Wuckert III', 'ashlee99', 'judge.bahringer@example.org', '2023-08-16 03:10:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/007788?text=consectetur', '+1 (940) 974-3177', '90750 Hill Squares\nSouth Nobleside, GA 71996-6543', 'agent', 'inactive', 'k0IgR', '2023-08-16 03:10:29', '2023-08-16 03:10:29'),
(5, 'Ms. Dorothy Blanda', 'kmclaughlin', 'deion.glover@example.org', '2023-08-16 03:10:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00dd66?text=natus', '+1 (984) 396-1768', '534 Wisoky Point\nWest Daxshire, WV 76975', 'admin', 'active', 'zTp5B', '2023-08-16 03:10:29', '2023-08-16 03:10:29'),
(6, 'Prof. Della Quigley', 'fkoelpin', 'rjones@example.net', '2023-08-16 03:10:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003311?text=rem', '(228) 416-4902', '647 Carlee Wells Apt. 548\nKuhlmanhaven, IN 85931-5160', 'user', 'active', 'qCTFr', '2023-08-16 03:10:29', '2023-08-16 03:10:29'),
(7, 'Elise Veum', 'agorczany', 'raynor.lavonne@example.net', '2023-08-16 03:10:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/003388?text=dolor', '+1 (650) 231-2753', '69870 Sienna Camp\nOberbrunnertown, IA 69067', 'admin', 'inactive', 'WQjJ1', '2023-08-16 03:10:29', '2023-08-16 03:10:29'),
(8, 'Dr. Mariano Mitchell PhD', 'jfeeney', 'hettinger.anthony@example.net', '2023-08-16 03:10:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/00ee55?text=qui', '+1.980.751.8743', '5105 Ova Burg Suite 361\nTellyfort, TX 91238', 'admin', 'inactive', 'v5pBF', '2023-08-16 03:10:29', '2023-08-16 03:10:29'),
(9, 'satti', NULL, 'satti@satti.com', NULL, '$2y$10$C1CddJll18RWJaM3/JfsBO3GNfvAAhp.t6SFC8GaDMvRtNoeDVOAG', NULL, NULL, NULL, 'user', 'active', NULL, '2023-08-25 05:53:51', '2023-08-25 05:53:51');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
