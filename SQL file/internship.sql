-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2020 at 12:50 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internship`
--

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_23_160353_create_posts_table', 1),
(5, '2020_02_25_203843_add_user_id_to_posts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('princess.miral97@gmail.com', '$2y$10$vXbRt6iYqNuCFmZX3WENrexcLANMszL/UAPlFsFKJWwPtxUOPpxzK', '2020-07-25 23:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'What is the duration of IAP?', '<ul>\r\n	<li>\r\n	<p><small>A <strong>6-months</strong> duration is a compulsory. Any duration lesser than 6 months will require an extension to IAP.</small></p>\r\n	</li>\r\n	<li>\r\n	<p><small>In case of change of company, the duration of 6 months will start all over again, there is <strong>NO</strong> carry forward duration from the previous company.</small></p>\r\n	</li>\r\n	<li>\r\n	<p><small>The duration is within or <strong>2 continuous</strong> Semesters and <strong>NO</strong> study leave in between except medical reason.</small></p>\r\n	</li>\r\n	<li>\r\n	<p><small>Make sure the end date of your internship ends on weekdays (working days).</small></p>\r\n	</li>\r\n</ul>', '2020-07-22 03:14:04', '2020-07-25 09:00:28', 1),
(2, 'What are the IAP requirements?', '<ul>\r\n	<li>\r\n	<p><small>When you have completed all the courses and IAP is the only subject left. Double check your graduation audit or contact your Academic Advisor for verification.</small></p>\r\n	</li>\r\n	<li>\r\n	<p><small>You already&nbsp;<strong>SECURED</strong>&nbsp;a placement for your IAP and there is&nbsp;<strong>NO</strong>&nbsp;financial blocked.</small></p>\r\n	</li>\r\n</ul>', '2020-07-22 07:02:17', '2020-07-25 09:02:21', 1),
(3, 'When should I start my IAP?', '<ul>\r\n	<li>\r\n	<p><small>In the&nbsp;<strong>FIRST WEEK</strong>&nbsp;of every semester. We do not entertain any request to start your internship before or in the middle or at the end of the semester.</small><br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><small>Recommended semesters for IAP are Semester 2 and 3. This is to ensure&nbsp;<strong>Graduate on Time (GOT)</strong>&nbsp;status. You might lose the&nbsp;<strong>GOT</strong>&nbsp;status if you start your IAP in Semester 1.</small></p>\r\n	</li>\r\n</ul>', '2020-07-25 09:03:36', '2020-07-25 09:03:36', 1),
(4, 'How do I get my IAP placement?', '<ul>\r\n	<li>\r\n	<p><small>You can refer to a list of companies available for IAP on your IAP Dashboard.</small><br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><small>The Kulliyyah is&nbsp;<strong>NOT</strong>&nbsp;responsible to get a placement for you, but you can get a suggestion from your IAP coordinator regarding any suitable company for your IAP.</small><br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><small>You need to apply several placements (Companies) to increase your chance to get a placement. If you have a few offers, decide and confirm, which company that you are planning to do your IAP. Remember, change of company during your IAP is&nbsp;<strong>NOT ALLOWED</strong></small><br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><small>For International Students you are&nbsp;<strong>ALLOWED</strong>&nbsp;to do your IAP in your own country. However, you are&nbsp;<strong>NOT ALLOWED</strong>&nbsp;to get a placement outside of your home country. You will&nbsp;<strong>LOSE</strong>&nbsp;your insurance coverage if you do your IAP outside of Malaysia.</small><br />\r\n	&nbsp;</p>\r\n	</li>\r\n	<li>\r\n	<p><small>Assessments will be done through video conferencing (Skype or Google Hangout) in a meeting setting with your supervisor.</small></p>\r\n	</li>\r\n</ul>', '2020-07-25 09:04:55', '2020-07-25 09:04:55', 1);

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
(1, 'Sumaia', 'princess.miral97@gmail.com', NULL, '$2y$10$PK0aVZ2ijW56a.LHhYGXsuF.VOhhJt3Axb58pDVU3VtQOehXZsPRu', NULL, '2020-07-22 03:13:46', '2020-07-22 03:13:46');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
