-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 09:21 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment__e_l_o_s`
--

CREATE TABLE `comment__e_l_o_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2020_02_04_133859_create_profiles_table', 2),
(5, '2020_02_05_043832_create_posts_table', 3),
(7, '2020_02_05_064755_add_user_id_to_posts_table', 4),
(8, '2020_02_05_082516_create_posts_table', 5),
(9, '2020_02_11_034108_add_field_user_id_to_posts_table', 6),
(10, '2020_02_13_083138_create_tags_table', 7),
(11, '2020_02_13_083710_create_post_tag_table', 8),
(12, '2020_02_17_092331_create_product__e_l_o_s_table', 9),
(13, '2020_02_17_092623_create_comment__e_l_o_s_table', 9),
(14, '2020_02_17_093847_create_user__e_l_o_s_table', 9),
(15, '2020_02_21_081510_create_comments_table', 10),
(16, '2020_02_21_083636_create_videos_table', 10),
(17, '2020_02_21_084037_add_field_body_to_posts_table', 10);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `body`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, '1', '', 'a title', 'a desc', '2020-02-05 01:40:42', '2020-02-05 01:40:42'),
(2, '1', '', 'a title again', 'a new desc again', '2020-02-05 01:43:49', '2020-02-05 01:43:49'),
(3, '2', '', 'ini apakah', 'ohh asrama', NULL, NULL),
(4, '3', '', 'subur', 'ini yang lu mau kan', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `remember_token`) VALUES
(1, 1, 2, NULL),
(2, 1, 2, NULL),
(3, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product__e_l_o_s`
--

CREATE TABLE `product__e_l_o_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `address`, `created_at`, `updated_at`) VALUES
(1, 16, '62731 Goodwin Center Apt. 125\nSchulistbury, ID 30487', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(2, 3, '9951 Lorna Mills\nNelliestad, NE 25821', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(3, 4, '26037 Nicklaus Valley Apt. 402\nRoyceview, ME 92874', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(4, 20, '968 Emard Mall Suite 303\nNorth Krystelton, MT 24723-1700', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(5, 17, '1319 Yasmeen Junction Apt. 173\nSouth Stephen, TN 87079', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(6, 24, '549 Lolita Point Apt. 050\nSouth Lionelmouth, NM 99162', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(7, 23, '486 Hayes Spurs Suite 747\nVonRuedenview, OH 42352-8439', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(8, 9, '14076 Leland Loop Apt. 127\nPort Kaitlyn, CT 58600', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(9, 3, '614 Reichel Ports\nNew Dennisville, IL 19561', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(10, 14, '884 Blick Viaduct Apt. 234\nNorth Bruceview, NC 96853-5954', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(11, 14, '39068 Grant Fields\nNorth Keiraside, MS 32000-1587', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(12, 14, '58021 Ortiz Ramp Apt. 474\nNew Emmie, WA 42413', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(13, 21, '51972 Halvorson Springs\nErnserside, ID 17721', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(14, 16, '5689 Leffler Manor\nSouth Adriantown, NE 75009-7666', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(15, 10, '11262 Lynch Fall Apt. 842\nMrazbury, AR 23555', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(16, 24, '9198 Yasmine Camp\nSouth Jeaniemouth, NE 57241', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(17, 19, '807 Botsford Points Suite 907\nLake Elvisland, FL 44661-0102', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(18, 22, '3955 Hudson Bridge Suite 234\nTimmystad, MN 61899', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(19, 14, '509 O\'Reilly Fields Apt. 721\nArnofurt, OH 26094-0334', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(20, 23, '33092 Welch Spur\nNorth Corinebury, HI 80428', '2020-02-04 07:17:40', '2020-02-04 07:17:40'),
(21, 25, 'citra villa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', NULL, NULL, NULL),
(2, 'Vue Js', NULL, NULL, NULL),
(3, 'CodeIgniter', NULL, NULL, NULL),
(4, 'Javascript', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jerico', 'jerico.reynaldi@gmail.com', NULL, '$2y$10$QwUpZL5Vw2T9UC4IwdEIpO6yh9eRwvjYKAfQdLrE.0aPkMAk2PHPq', NULL, '2019-12-08 07:58:16', '2019-12-08 07:58:16'),
(2, 'jeri', 'jer@gmail.com', '2020-02-03 17:00:00', '123', NULL, NULL, NULL),
(3, 'jo', 'jo@gmail.com', '2020-02-25 17:00:00', '123', NULL, NULL, NULL),
(4, 'ji', 'jr@gmail.com', '2020-02-01 17:00:00', '', NULL, NULL, NULL),
(5, 'Dr. Kennedi O\'Connell III', 'chadd.lindgren@example.com', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vBgllOX3Sz', '2020-02-04 07:17:38', '2020-02-04 07:17:38'),
(6, 'Norval Nitzsche', 'osinski.bobbie@example.com', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LxVA5WDE0D', '2020-02-04 07:17:38', '2020-02-04 07:17:38'),
(7, 'Jaren Schultz', 'fjast@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LHDDfAcBuT', '2020-02-04 07:17:38', '2020-02-04 07:17:38'),
(8, 'Mr. Prince Huels DDS', 'trantow.alberta@example.net', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'biRpxAXweU', '2020-02-04 07:17:38', '2020-02-04 07:17:38'),
(9, 'Miller Johnston III', 'creichel@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6YytzgNZ0H', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(10, 'Bell Gerhold', 'lamar04@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pGAxX8FC3z', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(11, 'Ryley Halvorson', 'cortney36@example.net', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PjV9qyHinz', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(12, 'Dr. Unique D\'Amore V', 'arden55@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TJ2UnZPBYG', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(13, 'Kobe Strosin', 'orath@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'urYCWI1zNu', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(14, 'Dr. Madisen Klein', 'alfreda.zboncak@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NPVi1eoqiL', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(15, 'Camila Douglas', 'mayer.zachery@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2eDlOclJbS', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(16, 'Boris Legros', 'nhauck@example.com', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9FczSUx8An', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(17, 'Prof. Stacey Wilderman', 'leann.reichert@example.net', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h1RUIzLalC', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(18, 'Amaya Hoppe', 'delpha62@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KFNMR9GOPR', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(19, 'Prof. Stacy Mante MD', 'ashlynn.rodriguez@example.net', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k3XM6IBcis', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(20, 'Rossie Bernier', 'brain74@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nALDUZQhoY', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(21, 'Fidel Hagenes', 'marks.charity@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Mq1By3movS', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(22, 'Sabina Wolff IV', 'bgerhold@example.net', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g62V6drSPG', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(23, 'Michele Stoltenberg', 'rmante@example.net', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rPEISjAOGM', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(24, 'Eldridge Sawayn', 'marlee96@example.org', '2020-02-04 07:17:38', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BJgc19pFYK', '2020-02-04 07:17:39', '2020-02-04 07:17:39'),
(25, 'ranjet', 'ranjet@gmail.com', NULL, '$2y$10$QwUpZL5Vw2T9UC4IwdEIpO6yh9eRwvjYKAfQdLrE.0aPkMAk2PHPq', NULL, '2020-02-10 07:18:00', '2020-02-10 07:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `user__e_l_o_s`
--

CREATE TABLE `user__e_l_o_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment__e_l_o_s`
--
ALTER TABLE `comment__e_l_o_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product__e_l_o_s`
--
ALTER TABLE `product__e_l_o_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user__e_l_o_s`
--
ALTER TABLE `user__e_l_o_s`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user__e_l_o_s_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment__e_l_o_s`
--
ALTER TABLE `comment__e_l_o_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product__e_l_o_s`
--
ALTER TABLE `product__e_l_o_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user__e_l_o_s`
--
ALTER TABLE `user__e_l_o_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
