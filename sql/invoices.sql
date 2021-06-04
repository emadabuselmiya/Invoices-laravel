-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 05:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoices`
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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, '0597101386', '2021-04-26', '2021-04-28', 'الحاسبة', 2, '50000.00', '25000.00', '2500.00', '1125.00', '5%', '23625.00', 'مدفوعة', 1, NULL, '2021-04-30', NULL, '2021-04-26 12:27:20', '2021-04-26 13:05:04'),
(12, '65995969', '2021-04-26', '2021-04-30', 'البطاقات', 1, '80000.00', '40000.00', '1000.00', '1950.00', '5%', '40950.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2021-04-26 12:50:35', '2021-04-26 12:50:35'),
(13, '8815651', '2021-04-26', '2021-04-30', 'الحاسبة', 2, '55555.00', '22222.00', '444.00', '1088.90', '5%', '22866.90', 'غير مدفوعة', 2, NULL, NULL, NULL, '2021-04-26 12:52:11', '2021-04-26 12:52:11'),
(14, '7888587', '2021-04-26', '2021-04-30', 'البطاقات', 1, '50000.00', '40000.00', '2000.00', '1900.00', '5%', '39900.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2021-04-26 12:59:20', '2021-04-26 12:59:20'),
(15, 'fgdsgfds', '2021-04-26', '2021-04-14', 'البطاقات', 1, '50000.00', '25000.00', '2500.00', '1125.00', '5%', '23625.00', 'غير مدفوعة', 2, NULL, NULL, NULL, '2021-04-26 16:30:30', '2021-04-26 16:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(14, 11, '0597101386', 'الحاسبة', '2', 'غير مدفوعة', 2, NULL, NULL, 'ahmad', '2021-04-26 12:27:20', '2021-04-26 12:27:20'),
(15, 12, '65995969', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ahmad', '2021-04-26 12:50:35', '2021-04-26 12:50:35'),
(16, 13, '8815651', 'الحاسبة', '2', 'غير مدفوعة', 2, NULL, NULL, 'ahmad', '2021-04-26 12:52:11', '2021-04-26 12:52:11'),
(17, 14, '7888587', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ahmad', '2021-04-26 12:59:20', '2021-04-26 12:59:20'),
(18, 11, '0597101386', 'الحاسبة', '2', 'مدفوعة', 1, '2021-04-30', NULL, 'ahmadjoda', '2021-04-26 13:05:04', '2021-04-26 13:05:04'),
(19, 15, 'fgdsgfds', 'البطاقات', '1', 'غير مدفوعة', 2, NULL, NULL, 'ahmadjoda', '2021-04-26 16:30:30', '2021-04-26 16:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_attachments`
--

INSERT INTO `invoice_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(6, 'تحليل مشروع تكنولوجيا الإدارة.pdf', 'fgdsgfds', 'ahmadjoda', 15, '2021-04-26 16:30:30', '2021-04-26 16:30:30');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_20_132348_create_sections_table', 1),
(5, '2021_04_21_105407_create_products_table', 1),
(6, '2021_04_21_123217_create_invoices_table', 1),
(7, '2021_04_21_131239_create_invoices_details_table', 1),
(8, '2021_04_21_132207_create_invoice_attachments_table', 1),
(9, '2021_04_25_112923_create_permission_tables', 1),
(10, '2021_04_26_142833_create_notifications_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('152b4d44-9f35-4a93-a6ab-f2ffe27ef1e3', 'App\\Notifications\\Add_invoice_new', 'App\\User', 2, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmadjoda\"}', NULL, '2021-04-26 16:30:31', '2021-04-26 16:30:31'),
('16cbba80-0365-4591-b4e4-4ff0586af335', 'App\\Notifications\\Add_invoice_new', 'App\\User', 1, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', '2021-04-26 12:51:31', '2021-04-26 12:50:36', '2021-04-26 12:51:31'),
('2fd29da1-34af-48b0-b005-1e28aed47ded', 'App\\Notifications\\Add_invoice_new', 'App\\User', 1, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', '2021-04-26 12:54:47', '2021-04-26 12:52:11', '2021-04-26 12:54:47'),
('33f3fc28-fa1d-4743-a6c0-98967c2e2c20', 'App\\Notifications\\Add_invoice_new', 'App\\User', 2, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2021-04-26 12:52:11', '2021-04-26 12:52:11'),
('386e77cf-8bd1-4c2b-b10b-7e2fdc2804c4', 'App\\Notifications\\Add_invoice_new', 'App\\User', 2, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2021-04-26 12:50:36', '2021-04-26 12:50:36'),
('4026e6cf-fe1d-41ae-b3e7-d2e0dd8e2af0', 'App\\Notifications\\Add_invoice_new', 'App\\User', 1, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmadjoda\"}', NULL, '2021-04-26 16:30:30', '2021-04-26 16:30:30'),
('76b7d235-be59-45d7-9e73-0e2c94cd1c90', 'App\\Notifications\\Add_invoice_new', 'App\\User', 1, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2021-04-26 12:59:23', '2021-04-26 12:59:23'),
('9a288cae-432c-450a-9d4a-ecebf5fd8c34', 'App\\Notifications\\Add_invoice_new', 'App\\User', 2, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2021-04-26 12:59:24', '2021-04-26 12:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'الفواتير', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(2, 'قائمة الفواتير', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(3, 'الفواتير المدفوعة', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(5, 'الفواتير الغير مدفوعة', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(6, 'ارشيف الفواتير', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(7, 'التقارير', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(8, 'تقرير الفواتير', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(9, 'تقرير العملاء', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(10, 'المستخدمين', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(11, 'قائمة المستخدمين', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(12, 'صلاحيات المستخدمين', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(13, 'الاعدادات', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(14, 'المنتجات', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(15, 'الاقسام', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(16, 'اضافة فاتورة', 'web', '2021-04-25 09:46:37', '2021-04-25 09:46:37'),
(17, 'حذف الفاتورة', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(18, 'تصدير EXCEL', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(19, 'تغير حالة الدفع', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(20, 'تعديل الفاتورة', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(21, 'ارشفة الفاتورة', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(22, 'طباعةالفاتورة', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(23, 'اضافة مرفق', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(24, 'حذف المرفق', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(25, 'اضافة مستخدم', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(26, 'تعديل مستخدم', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(27, 'حذف مستخدم', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(28, 'عرض صلاحية', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(29, 'اضافة صلاحية', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(30, 'تعديل صلاحية', 'web', '2021-04-25 09:46:38', '2021-04-25 09:46:38'),
(31, 'حذف صلاحية', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39'),
(32, 'اضافة منتج', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39'),
(33, 'تعديل منتج', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39'),
(34, 'حذف منتج', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39'),
(35, 'اضافة قسم', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39'),
(36, 'تعديل قسم', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39'),
(37, 'حذف قسم', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39'),
(38, 'الاشعارات', 'web', '2021-04-25 09:46:39', '2021-04-25 09:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'البطاقات', 'الاضافة الاولى', 1, '2021-04-25 19:37:02', '2021-04-25 19:37:02'),
(2, 'الحاسبة', 'الاضافة الثانية', 2, '2021-04-25 19:37:24', '2021-04-25 19:37:24'),
(3, 'لابتوب', 'الاضافة الثالثة', 3, '2021-04-25 19:37:47', '2021-04-25 19:37:47');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2021-04-25 09:46:42', '2021-04-25 09:46:42'),
(2, 'user', 'web', '2021-04-25 10:29:03', '2021-04-25 10:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(1, 'البنك الأهلي', 'الاضافة الاولى', 'ahmadjoda', '2021-04-25 19:36:05', '2021-04-25 19:36:05'),
(2, 'البنك الرياض', 'الاضافة الثانية', 'ahmadjoda', '2021-04-25 19:36:22', '2021-04-25 19:36:22'),
(3, 'البنك الاسلامي', 'الاضافة الثالثة', 'ahmadjoda', '2021-04-25 19:36:36', '2021-04-25 19:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ahmadjoda', 'joda.ahmad.96@gmail.com', NULL, '$2y$10$wyTpvdnODkKCYUn5LBQ1FekdkFKJmUoKQfxZN5QOglxzCWsETay.C', '[\"owner\"]', 'مفعل', NULL, '2021-04-25 09:46:42', '2021-04-25 09:46:42'),
(2, 'ahmad', 'joda.ahmad@gmail.com', NULL, '$2y$10$.yRvHl4WadWsMZ7EHMI04.MGiuW6vway7Yn0rWxBAlTXK9ZHt4fWO', '[\"user\"]', 'مفعل', NULL, '2021-04-25 10:35:47', '2021-04-25 15:23:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
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
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
