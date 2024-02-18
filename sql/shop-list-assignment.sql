-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Feb 18, 2024 at 07:11 PM
-- Server version: 10.3.39-MariaDB-1:10.3.39+maria~ubu2004
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop-list-assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Technology', '2024-02-18 17:57:25', '2024-02-18 17:57:25'),
(2, 'category 2', '2024-02-18 18:03:40', '2024-02-18 18:03:40'),
(3, 'category 3', '2024-02-18 18:03:52', '2024-02-18 18:03:52'),
(4, 'Category 4', '2024-02-18 18:07:10', '2024-02-18 18:07:10'),
(5, 'Category 5', '2024-02-18 18:07:18', '2024-02-18 18:07:18'),
(6, 'category v', '2024-02-18 18:17:23', '2024-02-18 18:17:23'),
(7, 'category w', '2024-02-18 18:17:48', '2024-02-18 18:17:48'),
(8, 'category f', '2024-02-18 18:18:36', '2024-02-18 18:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_18_173323_create_categories_table', 2),
(6, '2024_02_18_173628_create_shops_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'AuthToken', 'a698ae9c9f10ff8c6254a48dfbe55955ba2668e11c30334dd9491a1c229a9e05', '[\"*\"]', NULL, NULL, '2024-02-18 17:21:34', '2024-02-18 17:21:34'),
(2, 'App\\Models\\User', 1, 'AuthToken', 'a54f52a0331d62c943967279dc364f932fe77aba0db01f0ef563371f56040982', '[\"*\"]', NULL, NULL, '2024-02-18 17:50:14', '2024-02-18 17:50:14'),
(3, 'App\\Models\\User', 1, 'AuthToken', '533898492392062e60116298c971e7e8f0dbf1bab66c2a928f65abfb5a5f173b', '[\"*\"]', '2024-02-18 18:06:29', NULL, '2024-02-18 17:55:18', '2024-02-18 18:06:29'),
(4, 'App\\Models\\User', 1, 'AuthToken', '0c95e9a62ee591b3e673f02d30f998ace4cf54fbde70ba530957b0fabe1f2044', '[\"*\"]', '2024-02-18 18:12:36', NULL, '2024-02-18 18:06:36', '2024-02-18 18:12:36'),
(5, 'App\\Models\\User', 1, 'AuthToken', '7cba5c384c4673e442e219dd32f503dca8f05985466b07b0f135143e4bb81c20', '[\"*\"]', '2024-02-18 18:17:55', NULL, '2024-02-18 18:12:40', '2024-02-18 18:17:55'),
(6, 'App\\Models\\User', 1, 'AuthToken', 'a3abc4f47212f304bad42233b1759d13dd682a885ac1f9dda2427e89af7e19f5', '[\"*\"]', '2024-02-18 18:18:36', NULL, '2024-02-18 18:16:04', '2024-02-18 18:18:36'),
(7, 'App\\Models\\User', 1, 'AuthToken', 'dd4adb9ed6fb03c44e4c98cda37e88d716c1bd727971abca5ed3b7b99b4f59e3', '[\"*\"]', '2024-02-18 19:06:33', NULL, '2024-02-18 18:17:58', '2024-02-18 19:06:33'),
(8, 'App\\Models\\User', 2, 'AuthToken', '4e7de0e7cd4f47bdbd2d496c7045a12266e03bfad026182595453f4f28469ecc', '[\"*\"]', '2024-02-18 18:42:45', NULL, '2024-02-18 18:41:02', '2024-02-18 18:42:45'),
(9, 'App\\Models\\User', 1, 'AuthToken', '49e98e85f4eb4a4010ad21fe4338aaa5d0f4e96c57336eb773519684e381464c', '[\"*\"]', '2024-02-18 19:08:55', NULL, '2024-02-18 19:06:50', '2024-02-18 19:08:55'),
(10, 'App\\Models\\User', 2, 'AuthToken', 'dfd143b0a3b938c3d87dce92f28addab15235d7d879922ceb52b6be16b16fa7c', '[\"*\"]', '2024-02-18 19:09:08', NULL, '2024-02-18 19:09:06', '2024-02-18 19:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text NOT NULL,
  `open_hours` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `category_id`, `description`, `open_hours`, `city`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Updated shop 1', 1, 1, 'Updated description 1', '9:00 AM - 2:00 PM', 'Updated City', 'Updated address', '2024-02-18 18:21:13', '2024-02-18 18:28:01'),
(4, 'User 2 shop A', 2, 1, 'Descr', '9:00 AM - 7:00 PM', 'Thessaloniki', 'Abc str', '2024-02-18 18:42:40', '2024-02-18 18:42:40'),
(5, 'User 2 shop b', 2, 1, 'Descr', '9:00 AM - 7:00 PM', 'Thessaloniki', 'Abc str', '2024-02-18 18:42:45', '2024-02-18 18:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kostas Peltekis', 'kostas@peltekis.dev', NULL, '$2y$10$br2bNEqyFUkvJF7WvUJCZurn87iQJAmQ9rJV.PPIaRhPpcXbdg03e', NULL, '2024-02-18 17:12:54', '2024-02-18 17:12:54'),
(2, 'Kostas 2', 'kostas2@peltekis.dev', NULL, '$2y$10$nY.atdvemm/jAU5/kOUpfeU8fg/NBV6P1FUgHzNdvRcsOdH9OIJjy', NULL, '2024-02-18 18:40:49', '2024-02-18 18:40:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`),
  ADD KEY `shops_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
