-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2025 at 08:53 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 8.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `namiyahx_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-boost.roster.scan', 'a:2:{s:6:\"roster\";O:21:\"Laravel\\Roster\\Roster\":3:{s:13:\"\0*\0approaches\";O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:11:\"\0*\0packages\";O:32:\"Laravel\\Roster\\PackageCollection\":2:{s:8:\"\0*\0items\";a:6:{i:0;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^12.0\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:LARAVEL\";s:14:\"\0*\0packageName\";s:17:\"laravel/framework\";s:10:\"\0*\0version\";s:7:\"12.41.1\";s:6:\"\0*\0dev\";b:0;}i:1;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.3.8\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PROMPTS\";s:14:\"\0*\0packageName\";s:15:\"laravel/prompts\";s:10:\"\0*\0version\";s:5:\"0.3.8\";s:6:\"\0*\0dev\";b:0;}i:2;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:0;s:13:\"\0*\0constraint\";s:6:\"v0.4.1\";s:10:\"\0*\0package\";E:33:\"Laravel\\Roster\\Enums\\Packages:MCP\";s:14:\"\0*\0packageName\";s:11:\"laravel/mcp\";s:10:\"\0*\0version\";s:5:\"0.4.1\";s:6:\"\0*\0dev\";b:1;}i:3;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.24\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:PINT\";s:14:\"\0*\0packageName\";s:12:\"laravel/pint\";s:10:\"\0*\0version\";s:6:\"1.26.0\";s:6:\"\0*\0dev\";b:1;}i:4;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:5:\"^1.41\";s:10:\"\0*\0package\";E:34:\"Laravel\\Roster\\Enums\\Packages:SAIL\";s:14:\"\0*\0packageName\";s:12:\"laravel/sail\";s:10:\"\0*\0version\";s:6:\"1.50.0\";s:6:\"\0*\0dev\";b:1;}i:5;O:22:\"Laravel\\Roster\\Package\":6:{s:9:\"\0*\0direct\";b:1;s:13:\"\0*\0constraint\";s:7:\"^11.5.3\";s:10:\"\0*\0package\";E:37:\"Laravel\\Roster\\Enums\\Packages:PHPUNIT\";s:14:\"\0*\0packageName\";s:15:\"phpunit/phpunit\";s:10:\"\0*\0version\";s:7:\"11.5.46\";s:6:\"\0*\0dev\";b:1;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:21:\"\0*\0nodePackageManager\";E:43:\"Laravel\\Roster\\Enums\\NodePackageManager:NPM\";}s:9:\"timestamp\";i:1765121539;}', 1765207939);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, '1. What services do you provide?', 'I specialize in web development, including custom websites, web applications, UI/UX implementation, API integration, bug fixing, performance optimization, and full-stack development.', '2025-12-07 20:39:12', '2025-12-07 20:39:12'),
(2, '2. How long does it take to complete a project?', 'Project duration depends on the complexity and required features. A simple website may take 3–7 days, while advanced web applications may take 1–4 weeks.', '2025-12-07 20:39:30', '2025-12-07 20:39:30'),
(3, '3. Do you offer ongoing support after project delivery?', 'Yes. I provide maintenance, updates, security checks, and performance improvements based on client needs.', '2025-12-07 20:39:49', '2025-12-07 20:39:49'),
(4, '4. What technologies do you work with?', 'I work with modern technologies such as HTML, CSS, JavaScript, PHP, Laravel, React, MySQL, REST APIs, and other tools required for high-quality development.', '2025-12-07 20:40:02', '2025-12-07 20:40:02'),
(5, '5. How do we start a project together?', 'You can contact me with your project idea. I will analyze your requirements, provide a quote, and begin the development process once everything is confirmed.', '2025-12-07 20:40:18', '2025-12-07 20:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-rocket', 'Lightning Fast Delivery', 'We use agile methodologies to ensure your product hits the market faster without compromising quality.', '2025-12-07 21:17:28', '2025-12-07 21:17:28'),
(2, 'fas fa-headset', '24/7 Professional Support', 'Our dedicated support team is always available to resolve queries and ensure uptime.', '2025-12-07 21:18:14', '2025-12-07 21:18:14'),
(3, 'fas fa-shield-alt text-indigo-600 text-xl', 'Scalable & Secure Architecture', 'We design systems that grow with your business while maintaining top-tier security and performance', '2025-12-08 11:52:29', '2025-12-08 11:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_12_07_150851_create_projects_table', 2),
(5, '2025_12_07_150851_create_services_table', 2),
(6, '2025_12_07_150851_create_site_contents_table', 2),
(7, '2025_12_08_013415_create_features_table', 3),
(8, '2025_12_08_013426_create_faqs_table', 3),
(9, '2025_12_08_032204_create_pricings_table', 4),
(10, '2025_12_08_044643_add_link_to_projects_table', 5),
(11, '2025_12_08_055305_create_newsletters_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'tahsinhabib6@gmail.com', '2025-12-09 10:18:29', '2025-12-09 10:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricings`
--

CREATE TABLE `pricings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `features` text NOT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricings`
--

INSERT INTO `pricings` (`id`, `name`, `price`, `features`, `is_recommended`, `created_at`, `updated_at`) VALUES
(1, 'Starter', '$49', '5 Web Pages, SEO Basic, Mobile Responsive, Priority Support', 0, '2025-12-07 21:40:39', '2025-12-07 21:40:39'),
(2, 'Professional', '$99', '10 Web Pages, Advanced SEO, CMS Integration, Email Support', 1, '2025-12-07 21:43:10', '2025-12-07 21:43:10'),
(3, 'Enterprise', '$199', 'Unlimited Pages, Custom Development, 24/7 Priority Support, Cloud Hosting', 0, '2025-12-07 21:44:15', '2025-12-07 21:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `category`, `image`, `created_at`, `updated_at`, `link`) VALUES
(3, 'Ecommerce Website -01', 'Ecommerce', 'projects/IysPFofZzVQbl2ELgFntSElu9mn5Do2NSgSdBocI.jpg', '2025-12-07 23:23:13', '2025-12-07 23:23:13', 'https://ninico.botble.com');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'fas fa-laptop-code', 'Web Development', 'Custom websites built with modern technologies.', '2025-12-07 09:21:38', '2025-12-07 09:21:38'),
(2, 'fas fa-mobile-alt', 'Mobile Apps', 'Native and cross-platform mobile applications.', '2025-12-07 09:21:38', '2025-12-07 09:21:38'),
(3, 'fas fa-paint-brush', 'UI/UX Design', 'Beautiful, intuitive interfaces.', '2025-12-07 09:21:38', '2025-12-07 09:21:38'),
(4, 'fas fa-cloud', 'Cloud Solutions', 'Secure and scalable cloud infrastructure setup using AWS, Azure, or Google Cloud.', '2025-12-07 21:46:47', '2025-12-07 21:46:47'),
(5, 'fas fa-bullhorn', 'Digital Marketing', 'SEO, SEM, and content strategies to drive organic traffic and boost your online presence.', '2025-12-07 21:47:31', '2025-12-07 21:47:31'),
(6, 'fas fa-shield-alt', 'Cyber Security', 'Advanced security audits and implementation to protect your data and digital assets.', '2025-12-07 21:48:01', '2025-12-07 21:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0vsgrQSSC7TPdptnErgyRq1bdJeAQORhQOibhaAu', NULL, '103.157.253.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGxUUlVIV3VSSUpzSVhBSDFGWmhFb0lENDFUdjhJcWxGVFdGQ1A0ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXovbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO319', 1765722221),
('1d6yypsyN1IlOm955BMePNbXknAA1W9MUvhwXwxl', NULL, '34.244.149.53', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3NzZFd1WEdwN2drbk1qQ2JIbW1CZFJLS2ZSek1ReU5TaDg4YjJyNCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765308007),
('2FmS3jrczhrVa6b2CH78tKFLO4HD27Vw68iNY8pv', NULL, '74.7.227.17', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWJtT2RoWUxSVVZ5Ym5iQkluMTljZjYzR1dURXBsZFhxNG12b1h2VCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765301444),
('2QOf7JAftDGJYlF4ExKpFBtRwQhCJEo4GLaJ7qRX', NULL, '15.223.171.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36 Assetnote/1.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0JiTmRIeldCRExoZGNrM0xwem9ReVQ5eXdLZHF6Q0JuV3BENDRlaSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765509479),
('2ZFqCshgHeX5YcFojEmwLGxqJVfobG1Yy1Z10b27', NULL, '35.223.164.206', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlR4SUZOTGloWE9pMFZxQkkyVVRSOGFDaGlGamo1YnFVU1RkV0U2biI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765548825),
('36UyVt8DQmtxNnyuLwEUf6HQ339PP24gmSRQdtlj', NULL, '194.180.49.175', 'python-httpx/0.28.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1kwcVhYS2MxWFoyd3dJN2FMa3NGenZDV0NXRk95Z3M4TzFEbktReCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765679993),
('4QYMIXrdSirffL28UsfkSdrXRRKZp3F44VExDpuT', NULL, '74.7.241.34', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVlaT24xZm1mUDRETFJFSjlSbW9lZWl1ZWZ0c3d2alBLdlZhR0NRdyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765419244),
('6cJ0BmWydr2UrS7KA8IoiGtoiEIyYoyb5bcl3LqQ', 1, '103.157.253.27', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibVQ4WklTWlk4cU9MNFhwWDM3WGRlajVJQjR2TmNwOXFXSzlRaEhMOSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765216925),
('7w49iIiMoeEoeuCnRIllvOahecwWMvWn7JKmRLES', NULL, '100.30.248.17', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid0dQVzJEcW1xUXFONW5UNWhYak9lVGZxaDA1Q213T0duYVlIeG42MyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765644769),
('8RABOh2ROmQGAsmr55Fgn9hexTA4iWyaGsswioLt', NULL, '64.225.75.246', 'Mozilla/5.0 (l9scan/2.0.431323e2438313e2633313e24393; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicE9pWDZFcElNU2N4ZGNORllCZXRJdVF3SlRpanhFUUZ5cWNHcWk1UiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXovP3Jlc3Rfcm91dGU9JTJGd3AlMkZ2MiUyRnVzZXJzJTJGIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1765578968),
('8RAODnYhzg0sITICxEDx3A3hodMtH9x0vcMOoesV', NULL, '3.249.232.132', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWNXcXFnR0k5QWFUNUt2elNOSUFzZWl6VGtDb04wcHpNaVNrcXNKUyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765418998),
('9geNAdj49zWTGQhyD51tq7MI3hwpuFrwtwHYHJB0', NULL, '139.59.143.102', 'Mozilla/5.0 (l9scan/2.0.431323e2438313e2633313e24393; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODBzN09sclRxYXJSa0tyUjI2N3FGUnl6WlNsRHF2bFVmbUdtWGZoTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765425271),
('9Qy5IIQ8aEHrgC5Y5vJUnyGnQCoSWFgBSD7HQXap', NULL, '195.178.110.54', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVd6S2t5QVh0TWZSOVFSODZPWWdva0F3ektBVlJHdWgwTnY5RUliTCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765522999),
('9yVsehBXM1fgXBKFLJoHXV4h22WN0idY0F5VNUhs', NULL, '205.210.31.26', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiem1waWRPemI4TVREeDEwYUJRSGNkWlNyWUpNU3ZMRksxZ1pBcDhNaiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765576107),
('Ab9WAzwtkm5M55Ih6M2sMElVTMR8zhvjIkPVjAoS', NULL, '45.148.10.23', 'python-httpx/0.28.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlBOZDRSQlh2WFN0SVV6WXhqdGxPbm94emdKamd5ZTY4QjFYT2RwSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765516655),
('aK9c7I4dChstd4nBduFPV3oADw0dfmUvh5r5JJ5g', NULL, '195.178.110.54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGRNYmZYMmhlTWRmT0tHSmRjU1hzZ0NIMjdqNlN2d2hlbnIyT2RMdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765566126),
('AsUtV2ieFiYMDZAMx49Oo4cavU11mbiP7nK1sZ03', NULL, '103.157.253.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXJLNjlyeWxQa01oNjJwcjJGOUR5QTVvRDZSbENFWWQ2Z2M3WnVaNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765636645),
('bdXBOoAVLooRuTsjbaMQImmL6xkNxwYrEtLxUGfG', 1, '103.157.253.27', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzRYa0ZpSGF5N2g0SXVaUTlIMExCUlNxODd3QnNqYjBzN2kxU3lKTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765218951),
('BlOYWN3AOYeIbk7bPaC73sed9jHrQwlXCmbmXXKi', NULL, '3.254.114.108', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjJOQ3VVUFBPRmhYNnk4UWhkNTBtV051d21PY0FzQ25YTGR3dWJaVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765337732),
('bNjaS7TUnGvGhKS81YDIjNgPUe7OTtf8XnoYSQ7J', NULL, '35.196.64.177', 'Mozilla/5.0 (compatible; CMS-Checker/1.0; +https://example.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiazJuRkZBU3V3OE1IVEF5cjJCREx5WkVVNFlRcHV6Z200NjNDMDJZMSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765551416),
('bR7Y4tV46fn875Y8djItuRLB5ULDSy1G24fcRS7v', NULL, '74.7.242.1', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnBxNGdQR3R5dmkxYjgxSWJjSkZnQ0FOT0xONmthQnNEWkVCdWp0TyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765611728),
('FTycxosdKQwlqgWQVE96uGNewab525ADJMT60cWx', 1, '103.157.253.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNG0xS1RPSzFBaGdjT1VxSWRyOE5IZWdOZEtmOWZySGdKSkU1eG90ZiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzY1MjE2MzQ5O319', 1765216463),
('GGQrT1kvaqu1AuiCyY4aP4UtawIR2s35EiHgMkxQ', NULL, '100.30.248.17', 'Mozilla/5.0 (X11; Linux x86_64; rv:138.0) Gecko/20100101 Firefox/138.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTU9LUFZDZmU2aWFIQWV3c1NSMFdlZXV1U0VUMzRpbHNvY0VIcW1TbyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765547661),
('H12UA2jD4nAJyxIt5XABViJhp2hNEOPI6aJWq76R', 1, '103.157.253.27', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1k5NjZUNWlmVE10YkdrTm1XNFliYnBGazl0SXJrRzB6Y0VhYnE3MyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1765300288),
('hHBDsCNy2aVfCaFDUpoNN2h3Selk64IovV4wY2Kv', NULL, '139.59.143.102', 'Mozilla/5.0 (l9scan/2.0.431323e2438313e2633313e24393; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGg1OGRydU5xdG1ramdVOUNSYzRaN0wyU2s0aGx1SnRsc21lYkQxSyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6NjU6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXovP3Jlc3Rfcm91dGU9JTJGd3AlMkZ2MiUyRnVzZXJzJTJGIjtzOjU6InJvdXRlIjtzOjQ6ImhvbWUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1765425309),
('JSH0Q6tFtWIo5D0NRlSOHUZxw9GNoeuPY9DzIlPW', NULL, '74.7.227.179', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.3; +https://openai.com/gptbot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVhKdmIxVjRqeFpOeFd4UHpQTk9pZk54U2FPUVZGV2FHU05RSDc4WCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765501851),
('kSDSVigItaViHGEos9PUZ5YYgLjKSvrDfRDN0eoK', NULL, '103.157.253.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS3JiQlJRNjlKeXpTekFxMHpWcHkwbjZQT2lPSE12SjFtMlU4S2RYNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765519992),
('lwgFPaWPfa7Bez7SQnwgpgJ9vv02M71knkUGcGza', NULL, '45.148.10.23', 'python-httpx/0.28.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFhFQlduTFdiOFRDSDdmc0ZIQ2h2a3NvZzdUOHhPYk40dnpRTlBoYSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765516642),
('oxXkG9pvTutzKOI647lPKjuaqnTt4EK06cAfQSMz', NULL, '18.201.103.220', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; +info@netcraft.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib25WZXJJMTRGNDFFQU9MVG1RVVQ3OVRuZXJFajNhTmNJbnhtZDFSSCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765434813),
('pde6PGxNdzMs2qZm49qwmB0Qxgon4rem3y4kRI7o', NULL, '205.210.31.56', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTFNU1NFZ3RidzRWMU1qYlQ2TlJVRWJmMGdoRXV2YVhFZUlsNFdqVyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765575943),
('QrPtujAegb84vGGrGJqVCo1MtHzpO2LIypXDGpo3', NULL, '194.180.49.175', 'python-httpx/0.28.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlpubHc1RkJWYVl2bG5POHJoTlBJOTFMRGgwS1duaHB2UEloTHVoZSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765679993),
('snq8zCyaYMSy8tjcCEyazB5vLO0aUWqpRHl5sgrJ', NULL, '103.157.253.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUnVPTUhNMHlKOUhqQ2tqSk9hMWdyeUpZQlppaFpSQVpMMHpEaFNYTiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXovbG9naW4iO3M6NToicm91dGUiO3M6NToibG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1765696495),
('tbtZ2SkfBoNMrvzIdHdwtvtspxszc0tp2XyvO7qq', 1, '103.157.253.27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiamU5cXB3aVFOajZaZVc4VndRRVRwTllzN2ppdFlXenRrZ2x6bE9DQiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNzY1Mjk1MzI0O319', 1765299484),
('tRFbHh6gIzlvCop64xz9JTeJM9c35qu1LCwnpGfO', NULL, '64.225.75.246', 'Mozilla/5.0 (l9scan/2.0.431323e2438313e2633313e24393; +https://leakix.net)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGc2SGJTSkU3Vnhla2FIeEs5eERDSFpmRFV0MWc4OEJtMnVvZHRhMiI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765578929),
('VAFglkxBTB2Xi4HSUnu15QdM5YtmpTpEOMOmJx6i', NULL, '167.99.83.73', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQTJ3OEFWeDFGZG93Zjc5SFkyS3VWVmU5UjVKR2ZCNVExdVZUY1d1VSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765423453),
('VgrpneifhOmedCJk67gafW3qpvKwjDceFnfM50oo', NULL, '34.87.32.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) Chrome/120.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaHlHeUdjYmJsWENpc2htZHhoVmY5ZGJlcnZBZlBWMHBZYVBqTEIyTyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHBzOi8vY291cmllci5uYW1peWFoLnh5eiI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1765523039),
('X4CHjwrasY5LiWLhCMt5urMsNBnwn9LVvnb56N3s', 1, '103.157.253.27', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDJlME1RZVlHczN4ZU5xUHdmajVMNFU4N2RqNE1xN2x4M2NTdnRSRSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765210891),
('xiX4hdLISMmxVuOX5BV6gqR7eP7JP4jLomuc6lWa', NULL, '103.157.253.27', 'Mozilla/5.0 (Linux; Android 11; Mi A3 Build/RKQ1.200903.002; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/142.0.7444.171 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/535.0.0.101.107;]', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUNIM3lsRUFsb3k5bkI5WkVkdU9XSDVzaFJzNkJGaFFyVG1PUkxYVSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vd3d3LmNvdXJpZXIubmFtaXlhaC54eXoiO3M6NToicm91dGUiO3M6NDoiaG9tZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1765216915);

-- --------------------------------------------------------

--
-- Table structure for table `site_contents`
--

CREATE TABLE `site_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_contents`
--

INSERT INTO `site_contents` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'hero_title', 'Innovate Your <br><span>Digital Future</span>', '2025-12-07 09:21:38', '2025-12-07 09:21:38'),
(2, 'hero_subtitle', 'We build premium Web, App, Software solutions that scale with your business. Clean code, modern design, and exceptional performance.', '2025-12-07 09:21:38', '2025-12-07 21:48:56'),
(3, 'about_title', 'We Craft Digital Experiences That Matter', '2025-12-07 09:21:38', '2025-12-07 09:21:38'),
(4, 'about_desc', 'At NexTech, we don\'t just write code; we solve business problems. Our team of expert developers and designers are dedicated to delivering products that stand out in the market.', '2025-12-07 09:21:38', '2025-12-07 20:55:22'),
(5, 'about_exp', '10+', '2025-12-07 09:21:38', '2025-12-07 09:21:38'),
(6, 'logo_type', 'text', '2025-12-07 23:41:14', '2025-12-08 11:04:53'),
(7, 'logo_text', 'NAIM', '2025-12-07 23:41:14', '2025-12-08 11:39:55'),
(8, 'logo_image', 'logos/WFVyLWo0kdJG47TNl3fICgwipu6QGIKm5BYOPMFv.png', '2025-12-07 23:43:57', '2025-12-07 23:47:32'),
(9, 'contact_subtitle', 'Get In Touch', '2025-12-08 12:23:39', '2025-12-08 12:23:39'),
(10, 'contact_title', 'Let\'s Discuss Your Project', '2025-12-08 12:23:39', '2025-12-08 12:23:39'),
(11, 'contact_desc', 'Ready to start? Fill out the form and we will get back to you within 24 hours.', '2025-12-08 12:23:39', '2025-12-08 12:24:19'),
(12, 'contact_location', 'Kachari, Munshigonj Town, Munshigonj -1500', '2025-12-08 12:23:39', '2025-12-08 12:23:39'),
(13, 'contact_email_text', 'contact@webtnzy.com', '2025-12-08 12:23:39', '2025-12-08 12:23:39');

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
(1, 'Admin', 'admin@nextech.com', NULL, '$2y$12$BppEMqbt3V9MOj1RTXjA8eHj6X7KZ/9IdD9hyUY.KaUpizqc/gWFq', 'JFw1CgfzJmkt30GKq7bB893bppDX2vrjwhDcq6TIUtfurP3BTqcchiZpTNSX', '2025-12-07 09:21:38', '2025-12-07 09:21:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pricings`
--
ALTER TABLE `pricings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `site_contents`
--
ALTER TABLE `site_contents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `site_contents_key_unique` (`key`);

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
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pricings`
--
ALTER TABLE `pricings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `site_contents`
--
ALTER TABLE `site_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
