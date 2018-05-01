-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 26, 2018 at 08:27 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

DROP TABLE IF EXISTS `buy`;
CREATE TABLE IF NOT EXISTS `buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `rate` double NOT NULL,
  `amount` float DEFAULT NULL,
  `qty` float NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`id`, `itemid`, `uid`, `rate`, `amount`, `qty`, `created_at`, `updated_at`) VALUES
(3, 34, 32, 150, 0, 2, '2018-02-25 09:29:59', '2018-02-25 09:29:59'),
(8, 3, 22, 50, 0, 10, '2018-02-25 23:57:28', '2018-02-26 00:23:01'),
(10, 1, 20, 500, 450, 20, '2018-02-26 00:21:02', '2018-02-26 00:21:29'),
(12, 1, 21, 500, 450, 10, '2018-02-26 00:22:27', '2018-02-26 00:22:27'),
(13, 3, 12, 20, 20, 5, '2018-02-26 00:32:43', '2018-02-26 00:38:44'),
(14, 1, 2, 50, NULL, 2, '2018-02-26 01:59:01', '2018-02-26 01:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'Test Item', '2018-02-24 23:39:17', '2018-02-24 23:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_24_173724_create_items_table', 1),
(4, '2018_02_24_173820_entrust_setup_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Display Role Listing', 'See only Listing Of Role', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(2, 'role-create', 'Create Role', 'Create New Role', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(3, 'role-edit', 'Edit Role', 'Edit Role', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(4, 'role-delete', 'Delete Role', 'Delete Role', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(5, 'item-list', 'Display Item Listing', 'See only Listing Of Item', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(6, 'item-create', 'Create Item', 'Create New Item', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(7, 'item-edit', 'Edit Item', 'Edit Item', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(8, 'item-delete', 'Delete Item', 'Delete Item', '2018-02-24 12:46:21', '2018-02-24 12:46:21'),
(9, 'buy-list', 'Display Bought Item Listing', 'See only Listing Of Bought Item', NULL, NULL),
(10, 'buy-create', 'Create Bought Item', 'Create New Bought Item', NULL, NULL),
(11, 'buy-edit', 'Edit Bought Item', 'Edit Bought Item', NULL, NULL),
(12, 'buy-delete', 'Delete Bought Item', 'Delete Bought Item', NULL, NULL),
(13, 'sale-list', 'Display Sold Item Listing', 'See only Listing Of Sold Item', NULL, NULL),
(14, 'sale-create', 'Create Sold Item', 'Create Sold New Item', NULL, NULL),
(15, 'sale-edit', 'Edit Sold Item', 'Edit Sold Item', NULL, NULL),
(16, 'sale-delete', 'Delete Sold Item', 'Delete Sold Item', NULL, NULL),
(17, 'rawMaterial-list', 'Display Raw Material Listing', 'See only Listing Of Raw Material Item', NULL, NULL),
(18, 'rawMaterial-create', 'Create Raw Material Item', 'Create New Raw Material Item', NULL, NULL),
(19, 'rawMaterial-edit', 'Edit Raw Material Item', 'Edit Raw Material Item', NULL, NULL),
(20, 'rawMaterial-delete', 'Delete Raw Material Item', 'Delete Raw Material Item', NULL, NULL),
(21, 'sellableItem-list', 'Display Sellable Listing', 'See only Listing Of Sellable Item', NULL, NULL),
(22, 'sellableItem-create', 'Create Sellable Item', 'Create New Sellable Item', NULL, NULL),
(23, 'sellableItem-edit', 'Edit Sellable Item', 'Edit Sellable Item', NULL, NULL),
(24, 'sellableItem-delete', 'Delete Sellable Item', 'Delete Sellable Item', NULL, NULL),
(25, 'production-list', 'Display Production Listing', 'See only Listing Of Production Item', NULL, NULL),
(26, 'production-create', 'Create Production Item', 'Create New Production Item', NULL, NULL),
(27, 'production-edit', 'Edit Production Item', 'Edit Production Item', NULL, NULL),
(28, 'production-delete', 'Delete Production Item', 'Delete Production Item', NULL, NULL),
(29, 'user-list', 'Display User Listing', 'See only Listing Of User', NULL, NULL),
(30, 'user-create', 'Create User', 'Create New User', NULL, NULL),
(31, 'user-edit', 'Edit User', 'Edit User', NULL, NULL),
(32, 'user-delete', 'Delete User', 'Delete User', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(10, 4),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(13, 3),
(14, 1),
(14, 2),
(14, 3),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `productions`
--

DROP TABLE IF EXISTS `productions`;
CREATE TABLE IF NOT EXISTS `productions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raw_materialsid` int(11) NOT NULL,
  `sellable_itemsid` int(11) NOT NULL,
  `raw_materials_qty` int(11) NOT NULL,
  `sellable_items_qty` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productions`
--

INSERT INTO `productions` (`id`, `raw_materialsid`, `sellable_itemsid`, `raw_materials_qty`, `sellable_items_qty`, `updated_at`, `created_at`) VALUES
(1, 12, 21, 5, 15, '2018-02-25 14:03:50', '2018-02-25 14:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `raw_matetials`
--

DROP TABLE IF EXISTS `raw_matetials`;
CREATE TABLE IF NOT EXISTS `raw_matetials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raw_matetials`
--

INSERT INTO `raw_matetials` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Beef', '2018-02-25 12:48:48', '2018-02-25 12:48:48'),
(2, 'Potato', '2018-02-25 23:38:12', '2018-02-25 23:38:12'),
(3, 'Onion', '2018-02-25 23:38:20', '2018-02-25 23:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'Admninistrative purpose', NULL, NULL),
(2, 'manager', 'Manager', 'Management Purpose', '2018-02-25 00:17:01', '2018-02-25 00:17:01'),
(3, 'Sale Executive', 'Sale Executive', 'Sale Executive', '2018-02-26 03:56:54', '2018-02-26 03:56:54'),
(4, 'purchase executive', 'purchase executive', 'purchase executive', '2018-02-26 03:58:01', '2018-02-26 03:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `rate` double NOT NULL,
  `qty` float NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `itemid`, `uid`, `rate`, `qty`, `created_at`, `updated_at`) VALUES
(5, 2, 12, 50, 5, '2018-02-26 01:01:10', '2018-02-26 01:01:10'),
(4, 1, 12, 120, 7, '2018-02-25 11:07:34', '2018-02-26 01:42:31'),
(6, 2, 12, 50, 5, '2018-02-26 01:33:33', '2018-02-26 01:42:20'),
(7, 3, 2, 200, 5, '2018-02-26 02:00:56', '2018-02-26 02:00:56'),
(8, 1, 2, 50, 10, '2018-02-26 04:39:18', '2018-02-26 04:39:18'),
(9, 2, 2, 80, 2, '2018-02-26 04:46:09', '2018-02-26 04:46:09'),
(10, 2, 4, 80, 5, '2018-02-26 04:46:23', '2018-02-26 04:46:23'),
(11, 1, 2, 50, 9, '2018-02-26 07:37:41', '2018-02-26 07:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `sellable_items`
--

DROP TABLE IF EXISTS `sellable_items`;
CREATE TABLE IF NOT EXISTS `sellable_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellable_items`
--

INSERT INTO `sellable_items` (`id`, `title`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'Burger', 50, '2018-02-25 13:27:00', '2018-02-25 13:27:38'),
(2, 'Sandwitch', 80, '2018-02-26 00:24:55', '2018-02-26 00:24:55'),
(3, 'Pizza', 200, '2018-02-26 00:25:16', '2018-02-26 00:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Md Ziadul Islam', 'ziad.ice06@gmail.com', '$2y$10$yOgkG6sziE4miqjCrDoNPuReU2Kr/EJDHshWcegO0JlJMnzKjXmcO', NULL, '2018-02-24 12:14:04', '2018-02-24 12:14:04'),
(3, 'Rony', 'rony@gmail.com', '$2y$10$2LBxS4JIR5r1pkaHi1msUOw8UEaUwXnueJyUQ8w0Xlwu7/lktNb5O', NULL, '2018-02-26 02:39:25', '2018-02-26 02:39:25'),
(4, 'Raihan', 'raihan@gmail.com', '$2y$10$r6HXJNTqxC5CiCbV/5acLuk5lasiwuNYOcbb0QdXn/Go/scUf9e/W', NULL, '2018-02-26 04:16:16', '2018-02-26 04:16:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
