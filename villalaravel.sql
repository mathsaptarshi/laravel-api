-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2019 at 08:33 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `villalaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bureau_details`
--

CREATE TABLE `bureau_details` (
  `id` int(10) NOT NULL,
  `bureauname` varchar(191) NOT NULL,
  `addressprimary` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `district` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `phoneprimary` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `rating` int(10) DEFAULT NULL,
  `religions` varchar(191) DEFAULT NULL,
  `subcastes` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bureau_details`
--

INSERT INTO `bureau_details` (`id`, `bureauname`, `addressprimary`, `city`, `district`, `state`, `zip`, `phoneprimary`, `slug`, `rating`, `religions`, `subcastes`, `created_at`, `updated_at`) VALUES
(1, 'Rekha Ritti', '150 Station Road, Opposite Railway Station', 'BENGALURU', 'Bangalore Urban district', 'BENGALURU', '7654321', '9876543210', NULL, 3, 'HINDU', 'Lingayat', NULL, NULL),
(2, 'Lorem Ipsum', '1 Parliament Road, Opposite Railway Station', 'NEW DELHI', 'NEW DELHI district', 'DELHI', '101100', '9876543210', NULL, 4, 'HINDU', 'MARATHA', '2019-12-15 09:43:53', '2019-12-15 09:43:53'),
(3, 'Lorem Ipsum', '1 Parliament Road, Opposite Railway Station', 'NEW DELHI', 'NEW DELHI district', 'DELHI', '101100', '9876543210', 'lorem-ipsum', 4, 'HINDU', 'MARATHA', '2019-12-15 09:48:23', '2019-12-15 09:48:23'),
(4, 'Lorem Ipsum', '1 Parliament Road, Opposite Railway Station', 'NEW DELHI', 'NEW DELHI district', 'DELHI', '101100', '9876543210', 'lorem-ipsum', 4, 'HINDU', 'MARATHA', '2019-12-15 09:49:33', '2019-12-15 09:49:33'),
(5, 'Lorem Ipsum', '1 Parliament Road, Opposite Railway Station', 'NEW DELHI', 'NEW DELHI district', 'DELHI', '101100', '9876543210', 'lorem-ipsum', 4, 'HINDU', 'MARATHA', '2019-12-15 09:49:35', '2019-12-15 09:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `bureau_image`
--

CREATE TABLE `bureau_image` (
  `id` int(10) NOT NULL,
  `bureauid` int(10) NOT NULL,
  `image` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('032c4a84d1ed594f98e5abd2427851b1baec51911e912fdd0e521b19f643122dd2945bd7a557f9ba', 1, 1, 'authToken', '[]', 0, '2019-12-12 14:07:25', '2019-12-12 14:07:25', '2020-12-12 19:37:25'),
('081eb39b649a80a0d0ca76e0b16e66e203d5eabd3c48b423a0d3278e8984252cfbe05bb1febbed6f', 1, 1, 'authToken', '[]', 0, '2019-12-12 13:44:41', '2019-12-12 13:44:41', '2020-12-12 19:14:41'),
('1b139c170c660e3179e5a50d95bfa632d71fd58b4d10de43174eaf0f6809ac211e8bd6d80b1bfca6', 1, 1, 'authToken', '[]', 0, '2019-12-12 13:48:39', '2019-12-12 13:48:39', '2020-12-12 19:18:39'),
('4ccf72cca3f38c7625fb220e0111da5debad646e4859bfd040626eef0a9b64a6d647693f5a0b62b2', 1, 1, 'authToken', '[]', 0, '2019-12-12 13:52:53', '2019-12-12 13:52:53', '2020-12-12 19:22:53'),
('52aa2ca3754ca48481d29953454b3de9864d21715721a97cf1ab5a1aba93a74bd5d29b25e3a7771e', 1, 1, 'authToken', '[]', 0, '2019-12-12 13:14:12', '2019-12-12 13:14:12', '2020-12-12 18:44:12'),
('53d929f097ddd35c31a1871a7f7c7177f7ac1385d7a26e309342f2f181306fd1f8bfea921a19894e', 1, 1, 'authToken', '[]', 0, '2019-12-15 01:48:37', '2019-12-15 01:48:37', '2020-12-15 07:18:37'),
('57c46874ba767a40bb4895efa8efbe24b9c6f55bdfe6f889a87ab31385433b830dec66771f268872', 1, 1, 'authToken', '[]', 0, '2019-12-12 13:18:32', '2019-12-12 13:18:32', '2020-12-12 18:48:32'),
('635f3b3272e498bf61fbe091278dd8c48de354724751cdf8178ec6b1d53709ec8d27f7289c07810a', 1, 1, 'authToken', '[]', 0, '2019-12-13 15:05:17', '2019-12-13 15:05:17', '2020-12-13 20:35:17'),
('6dd46f6ef766f1612c5464e932130f7ddf5b238bdfb4dde239671afdac7e150e358889a33d55c187', 1, 1, 'authToken', '[]', 0, '2019-12-13 15:02:07', '2019-12-13 15:02:07', '2020-12-13 20:32:07'),
('704455fdf7781c4a5c40a1a9755158b15044f2c0af75abd71048b8e1bf797ae9f4571347c2a312ff', 1, 1, 'authToken', '[]', 0, '2019-12-13 15:01:33', '2019-12-13 15:01:33', '2020-12-13 20:31:33'),
('72996eff1a956071d43f25a64db2e7ee0090c8e18061e76853b0702e0ac57496ff004a0853622b24', 1, 1, 'authToken', '[]', 0, '2019-12-13 15:33:03', '2019-12-13 15:33:03', '2020-12-13 21:03:03'),
('8a2cf13e456b0f31c8f098de3a07117bc44ab6d64c2153f62d96d09ced428160e5d818639f679c4e', 1, 1, 'authToken', '[]', 0, '2019-12-12 13:12:38', '2019-12-12 13:12:38', '2020-12-12 18:42:38'),
('b81a55ba8daa6d77ea21f0a7f1c2afe6e326a1560c61c17f00aeb820f6b55af793409c783bdd3109', 1, 1, 'authToken', '[]', 0, '2019-12-12 13:00:59', '2019-12-12 13:00:59', '2020-12-12 18:30:59'),
('c748d5a1e73bf211152b9efc9784b6cd0d35e710b498b8d47e0ffc81fa09a6a86bfd047c2038305d', 1, 1, 'authToken', '[]', 0, '2019-12-15 01:16:53', '2019-12-15 01:16:53', '2020-12-15 06:46:53'),
('ed6082733a194755417e7c9de31fec6e3ed5c3ec451a6fb2fb95ec02dbcc84263b218f52c7d8f69c', 1, 1, 'authToken', '[]', 0, '2019-12-13 15:39:29', '2019-12-13 15:39:29', '2020-12-13 21:09:29'),
('efc0d88c1ed097ec1b753295554ba2318d8722750f341ebe5b90af73c2fee6daf44d347da78e519e', 1, 1, 'authToken', '[]', 0, '2019-12-13 15:31:11', '2019-12-13 15:31:11', '2020-12-13 21:01:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'LM5qPc3HBBXTLqbV5c9ns4PcREzPBRXPGD7pHnVP', 'http://localhost', 1, 0, 0, '2019-12-12 10:53:32', '2019-12-12 10:53:32'),
(2, NULL, 'Laravel Password Grant Client', 'cQqiwnQjcGThiud29vzn5eVJgDY8eR3wPHdeEJDC', 'http://localhost', 0, 1, 0, '2019-12-12 10:53:32', '2019-12-12 10:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-12 10:53:32', '2019-12-12 10:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniqueidtype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uniqueid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `uniqueidtype`, `uniqueid`, `email`, `email_verified_at`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'saptarshi', NULL, NULL, NULL, 'saptarshi@gmail.com', NULL, '$2y$10$kUtEJQxU/tkarorYi.2gJOU4fQt3VoyOAp23vWgSbdOKgRCHzM22W', NULL, NULL, '2019-12-12 13:00:57', '2019-12-12 13:00:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bureau_details`
--
ALTER TABLE `bureau_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bureau_details`
--
ALTER TABLE `bureau_details`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
