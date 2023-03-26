-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 07:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` double DEFAULT NULL,
  `total_balance` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `account_no`, `name`, `initial_balance`, `total_balance`, `note`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '11111', 'Sales Account', 1000, 1000, 'this is first account', 1, 1, '2018-12-18 02:58:02', '2019-01-20 09:59:06'),
(3, '21211', 'Sa', NULL, 0, NULL, 0, 1, '2018-12-18 02:58:56', '2019-01-20 09:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `adjustments`
--

CREATE TABLE `adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` double NOT NULL,
  `item` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `date`, `employee_id`, `user_id`, `checkin`, `checkout`, `status`, `note`, `created_at`, `updated_at`) VALUES
(1, '2019-01-02', 1, 1, '10:00am', '6:30pm', 1, NULL, '2019-01-02 03:30:50', '2019-01-02 03:30:50'),
(3, '2019-01-02', 3, 1, '10:15am', '6:30pm', 0, NULL, '2019-01-02 03:57:12', '2019-01-02 03:57:12'),
(6, '2020-02-03', 1, 1, '11:30am', '6:00pm', 0, NULL, '2020-02-03 09:57:30', '2020-02-03 09:57:30');

-- --------------------------------------------------------

--
-- Table structure for table `billers`
--

CREATE TABLE `billers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billers`
--

INSERT INTO `billers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'rian', 'aks.jpg', 'aks', '31123', 'yousuf@kds.com', '442343324', 'halishahar', 'chittagong', NULL, NULL, 'sdgs', 1, '2018-05-12 21:49:30', '2019-03-02 05:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(6, 'ACHEN', NULL, 1, '2022-01-18 16:19:24', '2022-01-18 16:19:24'),
(7, 'Istana Motor', NULL, 1, '2022-01-18 16:30:34', '2022-01-18 16:30:34'),
(8, 'fajar', NULL, 1, '2022-01-18 16:30:34', '2022-01-18 16:30:34'),
(9, 'kedungdoro', NULL, 1, '2022-01-18 16:30:34', '2022-01-18 16:30:34'),
(10, 'kusuma', NULL, 1, '2022-01-18 16:30:34', '2022-01-18 16:30:34'),
(12, 'Gito', NULL, 1, '2022-01-18 16:30:35', '2022-01-18 16:30:35'),
(13, 'istana ', NULL, 1, '2022-01-18 16:30:35', '2022-01-18 16:30:35'),
(14, 'seno', NULL, 1, '2022-01-18 16:30:36', '2022-01-18 16:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `is_active`, `created_at`, `updated_at`) VALUES
(19, 'onderdil', NULL, NULL, 1, '2022-01-18 16:19:24', '2022-01-18 16:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `minimum_amount` double DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `used` int(11) NOT NULL,
  `expired_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `amount`, `minimum_amount`, `quantity`, `used`, `expired_date`, `user_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'sonar bangla', 'percentage', 20, 0, 100, 3, '2020-03-31', 1, 1, '2018-10-25 22:38:50', '2020-03-11 10:46:41'),
(2, 'i love bangladesh', 'fixed', 200, 1000, 50, 1, '2018-12-31', 1, 1, '2018-10-27 02:59:26', '2019-03-02 05:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double DEFAULT NULL,
  `expense` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_group_id`, `name`, `company_name`, `email`, `phone_number`, `tax_no`, `address`, `city`, `state`, `postal_code`, `country`, `deposit`, `expense`, `is_active`, `created_at`, `updated_at`) VALUES
(11, 1, 'walk-in-customer', NULL, NULL, '01923000001', '11111', 'mohammadpur', 'dhaka', NULL, NULL, NULL, NULL, 0, 1, '2018-09-02 01:30:54', '2019-12-21 10:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `name`, `percentage`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'general', '0', 1, '2018-05-12 08:09:36', '2019-03-02 06:01:35'),
(2, 'distributor', '-10', 1, '2018-05-12 08:12:14', '2019-03-02 06:02:12'),
(3, 'reseller', '5', 1, '2018-05-12 08:12:26', '2018-05-30 01:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_id` int(11) NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivered_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recieved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sale', 1, '2018-12-27 05:16:47', '2018-12-27 10:40:23'),
(2, 'xyz', 0, '2018-12-27 10:28:47', '2022-01-18 18:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `customer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone_number`, `department_id`, `user_id`, `image`, `address`, `city`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'john', 'john@gmail.com', '10001', 2, 12, 'johngmailcom.jpg', 'GEC', 'chittagong', 'Bangladesh', 1, '2018-12-30 00:48:37', '2019-03-02 06:50:23'),
(3, 'tests', 'test@test.com', '111', 1, NULL, NULL, NULL, NULL, NULL, 1, '2018-12-30 22:20:51', '2019-01-03 00:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `code`, `name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '16718342', 'service', 1, '2018-08-16 00:32:48', '2022-01-18 17:08:23'),
(2, '60128975', 'pasang', 1, '2018-08-16 00:39:18', '2022-01-18 17:08:35'),
(3, '83954970', 'test', 0, '2018-08-16 00:50:28', '2018-08-16 00:51:40'),
(4, '1234', 'ganti oli', 1, '2018-09-01 02:40:04', '2022-01-18 17:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency_position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `currency`, `staff_access`, `date_format`, `theme`, `created_at`, `updated_at`, `currency_position`) VALUES
(1, 'Bengkel VW Sumalik', 'logo.png', 'IDR', 'own', 'd/m/Y', 'default.css', '2018-07-06 06:13:11', '2022-01-18 18:22:13', 'prefix');

-- --------------------------------------------------------

--
-- Table structure for table `gift_cards`
--

CREATE TABLE `gift_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense` double NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_cards`
--

INSERT INTO `gift_cards` (`id`, `card_no`, `amount`, `expense`, `customer_id`, `user_id`, `expired_date`, `created_by`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '3571097513020486', 1400, 400, 1, NULL, '2020-12-31', 1, 1, '2018-08-18 01:57:40', '2019-11-10 13:06:01'),
(2, '0452297501931931', 370, 100, 2, NULL, '2020-12-31', 1, 1, '2018-08-18 02:46:43', '2019-11-10 12:56:28'),
(3, '123', 13123, 0, 1, NULL, '2018-08-19', 1, 0, '2018-08-18 22:38:21', '2018-08-18 22:38:28'),
(4, '1862381252690499', 100, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:16:28', '2018-09-30 00:17:21'),
(5, '2300813717254199', 143, 0, NULL, 1, '2018-10-04', 1, 0, '2018-09-30 00:18:49', '2018-09-30 00:20:20'),
(6, '8327019475026421', 1, 0, 1, NULL, '2018-10-07', 1, 0, '2018-10-07 03:12:41', '2018-10-07 03:12:55'),
(7, '2063379780590151', 1, 0, 1, NULL, '2018-10-23', 1, 0, '2018-10-23 00:23:22', '2018-10-23 00:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `gift_card_recharges`
--

CREATE TABLE `gift_card_recharges` (
  `id` int(10) UNSIGNED NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gift_card_recharges`
--

INSERT INTO `gift_card_recharges` (`id`, `gift_card_id`, `amount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 100, 1, '2018-08-24 23:08:29', '2018-08-24 23:08:29'),
(2, 1, 200, 1, '2018-08-24 23:08:50', '2018-08-24 23:08:50'),
(3, 1, 100, 1, '2018-09-04 23:50:41', '2018-09-04 23:50:41'),
(4, 1, 50, 1, '2018-09-04 23:51:38', '2018-09-04 23:51:38'),
(5, 1, 50, 1, '2018-09-04 23:53:36', '2018-09-04 23:53:36'),
(6, 2, 50, 1, '2018-09-04 23:54:34', '2018-09-04 23:54:34'),
(7, 5, 10, 1, '2018-09-30 00:19:48', '2018-09-30 00:19:48'),
(8, 5, 10, 1, '2018-09-30 00:20:04', '2018-09-30 00:20:04'),
(9, 2, 100, 1, '2018-10-07 03:13:05', '2018-10-07 03:13:05'),
(10, 1, 200, 1, '2018-10-07 03:13:39', '2018-10-07 03:13:39'),
(11, 1, 300, 1, '2018-10-23 00:22:49', '2018-10-23 00:22:49');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_settings`
--

CREATE TABLE `hrm_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_settings`
--

INSERT INTO `hrm_settings` (`id`, `checkin`, `checkout`, `created_at`, `updated_at`) VALUES
(1, '10:00am', '6:00pm', '2019-01-02 02:20:08', '2019-01-02 04:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'en', '2018-07-07 22:59:17', '2019-12-24 17:34:20');

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
(3, '2018_02_17_060412_create_categories_table', 1),
(4, '2018_02_20_035727_create_brands_table', 1),
(5, '2018_02_25_100635_create_suppliers_table', 1),
(6, '2018_02_27_101619_create_warehouse_table', 1),
(7, '2018_03_03_040448_create_units_table', 1),
(8, '2018_03_04_041317_create_taxes_table', 1),
(9, '2018_03_10_061915_create_customer_groups_table', 1),
(10, '2018_03_10_090534_create_customers_table', 1),
(11, '2018_03_11_095547_create_billers_table', 1),
(12, '2018_04_05_054401_create_products_table', 1),
(13, '2018_04_06_133606_create_purchases_table', 1),
(14, '2018_04_06_154600_create_product_purchases_table', 1),
(15, '2018_04_06_154915_create_product_warhouse_table', 1),
(16, '2018_04_10_085927_create_sales_table', 1),
(17, '2018_04_10_090133_create_product_sales_table', 1),
(18, '2018_04_10_090254_create_payments_table', 1),
(19, '2018_04_10_090341_create_payment_with_cheque_table', 1),
(20, '2018_04_10_090509_create_payment_with_credit_card_table', 1),
(21, '2018_04_13_121436_create_quotation_table', 1),
(22, '2018_04_13_122324_create_product_quotation_table', 1),
(23, '2018_04_14_121802_create_transfers_table', 1),
(24, '2018_04_14_121913_create_product_transfer_table', 1),
(25, '2018_05_13_082847_add_payment_id_and_change_sale_id_to_payments_table', 2),
(26, '2018_05_13_090906_change_customer_id_to_payment_with_credit_card_table', 3),
(27, '2018_05_20_054532_create_adjustments_table', 4),
(28, '2018_05_20_054859_create_product_adjustments_table', 4),
(29, '2018_05_21_163419_create_returns_table', 5),
(30, '2018_05_21_163443_create_product_returns_table', 5),
(31, '2018_06_02_050905_create_roles_table', 6),
(32, '2018_06_02_073430_add_columns_to_users_table', 7),
(33, '2018_06_03_053738_create_permission_tables', 8),
(36, '2018_06_21_063736_create_pos_setting_table', 9),
(37, '2018_06_21_094155_add_user_id_to_sales_table', 10),
(38, '2018_06_21_101529_add_user_id_to_purchases_table', 11),
(39, '2018_06_21_103512_add_user_id_to_transfers_table', 12),
(40, '2018_06_23_061058_add_user_id_to_quotations_table', 13),
(41, '2018_06_23_082427_add_is_deleted_to_users_table', 14),
(42, '2018_06_25_043308_change_email_to_users_table', 15),
(43, '2018_07_06_115449_create_general_settings_table', 16),
(44, '2018_07_08_043944_create_languages_table', 17),
(45, '2018_07_11_102144_add_user_id_to_returns_table', 18),
(46, '2018_07_11_102334_add_user_id_to_payments_table', 18),
(47, '2018_07_22_130541_add_digital_to_products_table', 19),
(49, '2018_07_24_154250_create_deliveries_table', 20),
(50, '2018_08_16_053336_create_expense_categories_table', 21),
(51, '2018_08_17_115415_create_expenses_table', 22),
(55, '2018_08_18_050418_create_gift_cards_table', 23),
(56, '2018_08_19_063119_create_payment_with_gift_card_table', 24),
(57, '2018_08_25_042333_create_gift_card_recharges_table', 25),
(58, '2018_08_25_101354_add_deposit_expense_to_customers_table', 26),
(59, '2018_08_26_043801_create_deposits_table', 27),
(60, '2018_09_02_044042_add_keybord_active_to_pos_setting_table', 28),
(61, '2018_09_09_092713_create_payment_with_paypal_table', 29),
(62, '2018_09_10_051254_add_currency_to_general_settings_table', 30),
(63, '2018_10_22_084118_add_biller_and_store_id_to_users_table', 31),
(65, '2018_10_26_034927_create_coupons_table', 32),
(66, '2018_10_27_090857_add_coupon_to_sales_table', 33),
(67, '2018_11_07_070155_add_currency_position_to_general_settings_table', 34),
(68, '2018_11_19_094650_add_combo_to_products_table', 35),
(69, '2018_12_09_043712_create_accounts_table', 36),
(70, '2018_12_17_112253_add_is_default_to_accounts_table', 37),
(71, '2018_12_19_103941_add_account_id_to_payments_table', 38),
(72, '2018_12_20_065900_add_account_id_to_expenses_table', 39),
(73, '2018_12_20_082753_add_account_id_to_returns_table', 40),
(74, '2018_12_26_064330_create_return_purchases_table', 41),
(75, '2018_12_26_144210_create_purchase_product_return_table', 42),
(76, '2018_12_26_144708_create_purchase_product_return_table', 43),
(77, '2018_12_27_110018_create_departments_table', 44),
(78, '2018_12_30_054844_create_employees_table', 45),
(79, '2018_12_31_125210_create_payrolls_table', 46),
(80, '2018_12_31_150446_add_department_id_to_employees_table', 47),
(81, '2019_01_01_062708_add_user_id_to_expenses_table', 48),
(82, '2019_01_02_075644_create_hrm_settings_table', 49),
(83, '2019_01_02_090334_create_attendances_table', 50),
(84, '2019_01_27_160956_add_three_columns_to_general_settings_table', 51),
(85, '2019_02_15_183303_create_stock_counts_table', 52),
(86, '2019_02_17_101604_add_is_adjusted_to_stock_counts_table', 53),
(87, '2019_04_13_101707_add_tax_no_to_customers_table', 54),
(89, '2019_10_14_111455_create_holidays_table', 55),
(90, '2019_11_13_145619_add_is_variant_to_products_table', 56),
(91, '2019_11_13_150206_create_product_variants_table', 57),
(92, '2019_11_13_153828_create_variants_table', 57),
(93, '2019_11_25_134041_add_qty_to_product_variants_table', 58),
(94, '2019_11_25_134922_add_variant_id_to_product_purchases_table', 58),
(95, '2019_11_25_145341_add_variant_id_to_product_warehouse_table', 58),
(96, '2019_11_29_182201_add_variant_id_to_product_sales_table', 59),
(97, '2019_12_04_121311_add_variant_id_to_product_quotation_table', 60),
(98, '2019_12_05_123802_add_variant_id_to_product_transfer_table', 61),
(100, '2019_12_08_114954_add_variant_id_to_product_returns_table', 62),
(101, '2019_12_08_203146_add_variant_id_to_purchase_product_return_table', 63),
(102, '2020_02_28_103340_create_money_transfers_table', 64),
(103, '2020_07_01_193151_add_image_to_categories_table', 65);

-- --------------------------------------------------------

--
-- Table structure for table `money_transfers`
--

CREATE TABLE `money_transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_account_id` int(11) NOT NULL,
  `to_account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `change` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_cheque`
--

CREATE TABLE `payment_with_cheque` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `cheque_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_credit_card`
--

CREATE TABLE `payment_with_credit_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `customer_stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_gift_card`
--

CREATE TABLE `payment_with_gift_card` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `gift_card_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_with_paypal`
--

CREATE TABLE `payment_with_paypal` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(11) NOT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `paying_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payrolls`
--

INSERT INTO `payrolls` (`id`, `reference_no`, `employee_id`, `account_id`, `user_id`, `amount`, `paying_method`, `note`, `created_at`, `updated_at`) VALUES
(8, 'payroll-20190101-055231', 1, 1, 1, 100, '0', NULL, '2018-12-31 23:52:31', '2018-12-31 23:52:31'),
(9, 'payroll-20191204-113802', 1, 1, 1, 10000, '0', NULL, '2019-12-04 17:38:02', '2019-12-04 17:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(4, 'products-edit', 'web', '2018-06-03 01:00:09', '2018-06-03 01:00:09'),
(5, 'products-delete', 'web', '2018-06-03 22:54:22', '2018-06-03 22:54:22'),
(6, 'products-add', 'web', '2018-06-04 00:34:14', '2018-06-04 00:34:14'),
(7, 'products-index', 'web', '2018-06-04 03:34:27', '2018-06-04 03:34:27'),
(8, 'purchases-index', 'web', '2018-06-04 08:03:19', '2018-06-04 08:03:19'),
(9, 'purchases-add', 'web', '2018-06-04 08:12:25', '2018-06-04 08:12:25'),
(10, 'purchases-edit', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(11, 'purchases-delete', 'web', '2018-06-04 09:47:36', '2018-06-04 09:47:36'),
(12, 'sales-index', 'web', '2018-06-04 10:49:08', '2018-06-04 10:49:08'),
(13, 'sales-add', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(14, 'sales-edit', 'web', '2018-06-04 10:49:52', '2018-06-04 10:49:52'),
(15, 'sales-delete', 'web', '2018-06-04 10:49:53', '2018-06-04 10:49:53'),
(16, 'quotes-index', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(17, 'quotes-add', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(18, 'quotes-edit', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(19, 'quotes-delete', 'web', '2018-06-04 22:05:10', '2018-06-04 22:05:10'),
(20, 'transfers-index', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(21, 'transfers-add', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(22, 'transfers-edit', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(23, 'transfers-delete', 'web', '2018-06-04 22:30:03', '2018-06-04 22:30:03'),
(24, 'returns-index', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(25, 'returns-add', 'web', '2018-06-04 22:50:24', '2018-06-04 22:50:24'),
(26, 'returns-edit', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(27, 'returns-delete', 'web', '2018-06-04 22:50:25', '2018-06-04 22:50:25'),
(28, 'customers-index', 'web', '2018-06-04 23:15:54', '2018-06-04 23:15:54'),
(29, 'customers-add', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(30, 'customers-edit', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(31, 'customers-delete', 'web', '2018-06-04 23:15:55', '2018-06-04 23:15:55'),
(32, 'suppliers-index', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(33, 'suppliers-add', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(34, 'suppliers-edit', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(35, 'suppliers-delete', 'web', '2018-06-04 23:40:12', '2018-06-04 23:40:12'),
(36, 'product-report', 'web', '2018-06-24 23:05:33', '2018-06-24 23:05:33'),
(37, 'purchase-report', 'web', '2018-06-24 23:24:56', '2018-06-24 23:24:56'),
(38, 'sale-report', 'web', '2018-06-24 23:33:13', '2018-06-24 23:33:13'),
(39, 'customer-report', 'web', '2018-06-24 23:36:51', '2018-06-24 23:36:51'),
(40, 'due-report', 'web', '2018-06-24 23:39:52', '2018-06-24 23:39:52'),
(41, 'users-index', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(42, 'users-add', 'web', '2018-06-25 00:00:10', '2018-06-25 00:00:10'),
(43, 'users-edit', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(44, 'users-delete', 'web', '2018-06-25 00:01:30', '2018-06-25 00:01:30'),
(45, 'profit-loss', 'web', '2018-07-14 21:50:05', '2018-07-14 21:50:05'),
(46, 'best-seller', 'web', '2018-07-14 22:01:38', '2018-07-14 22:01:38'),
(47, 'daily-sale', 'web', '2018-07-14 22:24:21', '2018-07-14 22:24:21'),
(48, 'monthly-sale', 'web', '2018-07-14 22:30:41', '2018-07-14 22:30:41'),
(49, 'daily-purchase', 'web', '2018-07-14 22:36:46', '2018-07-14 22:36:46'),
(50, 'monthly-purchase', 'web', '2018-07-14 22:48:17', '2018-07-14 22:48:17'),
(51, 'payment-report', 'web', '2018-07-14 23:10:41', '2018-07-14 23:10:41'),
(52, 'warehouse-stock-report', 'web', '2018-07-14 23:16:55', '2018-07-14 23:16:55'),
(53, 'product-qty-alert', 'web', '2018-07-14 23:33:21', '2018-07-14 23:33:21'),
(54, 'supplier-report', 'web', '2018-07-30 03:00:01', '2018-07-30 03:00:01'),
(55, 'expenses-index', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(56, 'expenses-add', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(57, 'expenses-edit', 'web', '2018-09-05 01:07:10', '2018-09-05 01:07:10'),
(58, 'expenses-delete', 'web', '2018-09-05 01:07:11', '2018-09-05 01:07:11'),
(59, 'general_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(60, 'mail_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(61, 'pos_setting', 'web', '2018-10-19 23:10:04', '2018-10-19 23:10:04'),
(62, 'hrm_setting', 'web', '2019-01-02 10:30:23', '2019-01-02 10:30:23'),
(63, 'purchase-return-index', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(64, 'purchase-return-add', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(65, 'purchase-return-edit', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(66, 'purchase-return-delete', 'web', '2019-01-02 21:45:14', '2019-01-02 21:45:14'),
(67, 'account-index', 'web', '2019-01-02 22:06:13', '2019-01-02 22:06:13'),
(68, 'balance-sheet', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(69, 'account-statement', 'web', '2019-01-02 22:06:14', '2019-01-02 22:06:14'),
(70, 'department', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(71, 'attendance', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(72, 'payroll', 'web', '2019-01-02 22:30:01', '2019-01-02 22:30:01'),
(73, 'employees-index', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(74, 'employees-add', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(75, 'employees-edit', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(76, 'employees-delete', 'web', '2019-01-02 22:52:19', '2019-01-02 22:52:19'),
(77, 'user-report', 'web', '2019-01-16 06:48:18', '2019-01-16 06:48:18'),
(78, 'stock_count', 'web', '2019-02-17 10:32:01', '2019-02-17 10:32:01'),
(79, 'adjustment', 'web', '2019-02-17 10:32:02', '2019-02-17 10:32:02'),
(80, 'sms_setting', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(81, 'create_sms', 'web', '2019-02-22 05:18:03', '2019-02-22 05:18:03'),
(82, 'print_barcode', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(83, 'empty_database', 'web', '2019-03-07 05:02:19', '2019-03-07 05:02:19'),
(84, 'customer_group', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(85, 'unit', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(86, 'tax', 'web', '2019-03-07 05:37:15', '2019-03-07 05:37:15'),
(87, 'gift_card', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(88, 'coupon', 'web', '2019-03-07 06:29:38', '2019-03-07 06:29:38'),
(89, 'holiday', 'web', '2019-10-19 08:57:15', '2019-10-19 08:57:15'),
(90, 'warehouse-report', 'web', '2019-10-22 06:00:23', '2019-10-22 06:00:23'),
(91, 'warehouse', 'web', '2020-02-26 06:47:32', '2020-02-26 06:47:32'),
(92, 'brand', 'web', '2020-02-26 06:59:59', '2020-02-26 06:59:59'),
(93, 'billers-index', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(94, 'billers-add', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(95, 'billers-edit', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(96, 'billers-delete', 'web', '2020-02-26 07:11:15', '2020-02-26 07:11:15'),
(97, 'money-transfer', 'web', '2020-03-02 05:41:48', '2020-03-02 05:41:48'),
(98, 'category', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16'),
(99, 'delivery', 'web', '2020-07-13 12:13:16', '2020-07-13 12:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `pos_setting`
--

CREATE TABLE `pos_setting` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `product_number` int(11) NOT NULL,
  `keybord_active` tinyint(1) NOT NULL,
  `stripe_public_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_setting`
--

INSERT INTO `pos_setting` (`id`, `customer_id`, `warehouse_id`, `biller_id`, `product_number`, `keybord_active`, `stripe_public_key`, `stripe_secret_key`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 1, 4, 1, 'pk_test_ITN7KOYiIsHSCQ0UMRcgaYUB', 'sk_test_TtQQaawhEYRwa3mU9CzttrEy', '2018-09-02 03:17:04', '2020-09-07 07:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_symbology` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` double DEFAULT NULL,
  `alert_quantity` double DEFAULT NULL,
  `promotion` tinyint(4) DEFAULT NULL,
  `promotion_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starting_date` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_date` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `tax_method` int(11) DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_variant` tinyint(1) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `product_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1246, 'Kabel Busi Bremi', '1', 'baru', 'C128', 6, 19, 1, 1, 1, '320000', '384000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1247, 'Kabel Busi Non - Merk ', '2', 'baru', 'C128', 7, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Mar-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1248, 'Kabel Busi Blue Thunder', '3', 'baru', 'C128', 6, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1249, 'Helm Delco', '4', 'baru', 'C128', 6, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Aug-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1250, 'Karburator 31', '5', 'baru', 'C128', NULL, 19, 1, 1, 1, '1250000', '1500000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1251, 'Karburator 34', '6', 'baru', 'C128', NULL, 19, 1, 1, 1, '1800000', '2160000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1252, 'Delco Cdi', '7', 'baru', 'C128', NULL, 19, 1, 1, 1, '1000000', '1200000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1253, 'Delco Decar', '8', 'baru', 'C128', 8, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1254, 'Delco Distributor', '9', 'baru', 'C128', 6, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1255, 'Pompa Bensin Besar Suzuki', '10', 'baru', 'C128', 9, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1256, 'Pompa Bensin Kecil Jepangan', '11', 'baru', 'C128', 9, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1257, 'Pompa Bensin Ori Krafstone', '12', 'baru', 'C128', 6, 19, 1, 1, 1, '800000', '960000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1258, 'Pompa Bensin Pendek Brosol', '13', 'baru', 'C128', 6, 19, 1, 1, 1, '350000', '420000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Aug-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1259, 'Filter Udara Bebidol', '14', 'baru', 'C128', 10, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1260, 'Isi Filter Udara Cb 74, Saf Mann Filter', '15', 'baru', 'C128', 6, 19, 1, 1, 1, '120000', '144000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Aug-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1261, 'Isi Filter Udara Mahle ', '16', 'baru', 'C128', 6, 19, 1, 1, 1, '125000', '150000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1262, 'Isi Filter Udara Bulat', '17', 'baru', 'C128', 6, 19, 1, 1, 1, '80000', '96000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1263, 'Isi Filter Udara Kotak', '18', 'baru', 'C128', 6, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1264, 'Filter Kadron', '20', 'baru', 'C128', 10, 19, 1, 1, 1, '90000', '108000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1265, 'Filter Bulat', '21', 'baru', 'C128', 6, 19, 1, 1, 1, '140000', '168000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1266, 'Filter Kotak', '22', 'baru', 'C128', 6, 19, 1, 1, 1, '135000', '162000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1267, 'Filter Udara Bulat Stainless Steel ', '23', 'baru', 'C128', 10, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1268, 'Filter Oli 2000 Cc Pendek Mercedez Benz', '24', 'baru', 'C128', 6, 19, 1, 1, 1, '85000', '102000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1269, 'Filter Oli 2000 Cc Panjang Bosch', '25', 'baru', 'C128', 6, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1270, 'Skakel Riting Cb Brazil 80', '26', 'baru', 'C128', 10, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1271, 'Skakel Riting Ori Kdk 61 Valeo', '27', 'baru', 'C128', 6, 19, 1, 1, 1, '1100000', '1320000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1272, 'Skakel Riting Cb 77 Valeo', '28', 'baru', 'C128', 6, 19, 1, 1, 1, '400000', '480000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1273, 'Skakel Riting Combi Kumis 61', '29', 'baru', 'C128', 6, 19, 1, 1, 1, '1350000', '1620000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jun-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1274, 'Filter Bensin Toyota', '30', 'baru', 'C128', 9, 19, 1, 1, 1, '60000', '72000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jul-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1275, 'Skakel Riting Kdk 61', '31', 'baru', 'C128', 6, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Feb-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1276, 'Skakel Riting 1300', '32', 'baru', 'C128', 10, 19, 1, 1, 1, '865000', '1038000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Aug-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1277, 'Skakel Riting Kdk Bello 64', '33', 'baru', 'C128', 6, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '15-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1278, 'Skakel Riting 1303 & Saf Ori Valeo', '34', 'baru', 'C128', 6, 19, 1, 1, 1, '1250000', '1500000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1279, 'Skakel Riting 1303 & Saf Biasa Valeo', '35', 'baru', 'C128', 6, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1280, 'Swit Kunci Kontak Cb & Kdk 67 - 69 Valeo', '36', 'baru', 'C128', 8, 19, 1, 1, 1, '185000', '222000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-May-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1281, 'Cut Off ', '37', 'baru', 'C128', 9, 19, 1, 1, 1, '140000', '168000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1282, 'Werstan Coil Denso', '38', 'baru', 'C128', 9, 19, 1, 1, 1, '90000', '108000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1283, 'Knop Stater', '39', 'baru', 'C128', 9, 19, 1, 1, 1, '55000', '66000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1284, 'Werstan Coil Carwash', '40', 'baru', 'C128', 7, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1285, 'Tutup Bensin Cb 77 German Safe', '41', 'baru', 'C128', 6, 19, 1, 1, 1, '575000', '690000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1286, 'Tutup Bensin Cb Brz 80', '42', 'baru', 'C128', 6, 19, 1, 1, 1, '400000', '480000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1287, 'Tutup Bensin Cb 73 & 1303', '43', 'baru', 'C128', 10, 19, 1, 1, 1, '140000', '168000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1288, 'Tutup Bensin 1303 Classic Line', '44', 'baru', 'C128', 6, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Mar-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1289, 'Kop Delco Kuning Plastic', '45', 'baru', 'C128', 10, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1290, 'Kop Delco Coklat Dop', '46', 'baru', 'C128', 10, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1291, 'Kop Delco Coklat Bosch ', '47', 'baru', 'C128', 6, 19, 1, 1, 1, '225000', '270000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1292, 'Kop Delco Hitam Olimpic Cb Brz', '48', 'baru', 'C128', 6, 19, 1, 1, 1, '85000', '102000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1293, 'Kop Delco Hitam Olimpic Saf & 1303', '49', 'baru', 'C128', 6, 19, 1, 1, 1, '90000', '108000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1294, 'Kop Delco Coklat Non Merk', '50', 'baru', 'C128', 10, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1295, 'Sekring 8A', '51', 'baru', 'C128', 6, 19, 1, 1, 1, '1700', '2040', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1296, 'Sekring 16A ', '52', 'baru', 'C128', 6, 19, 1, 1, 1, '1500', '1800', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1297, 'Sekring 25A', '53', 'baru', 'C128', 6, 19, 1, 1, 1, '1700', '2040', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1298, 'Dop Halogen Flosser ', '54', 'baru', 'C128', 6, 19, 1, 1, 1, '3750', '4500', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1299, 'Dop Plavon Flosser', '55', 'baru', 'C128', 6, 19, 1, 1, 1, '8000', '9600', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1300, 'Dop Dasbor Cb Flosser', '56', 'baru', 'C128', 6, 19, 1, 1, 1, '7500', '9000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Mar-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1301, 'Dop Dasbor Bosch', '57', 'baru', 'C128', 6, 19, 1, 1, 1, '3500', '4200', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1302, 'Dop Kota Flosser', '58', 'baru', 'C128', 6, 19, 1, 1, 1, '4000', '4800', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1303, 'Rumah Sekring 1303 & Cb', '59', 'baru', 'C128', NULL, 19, 1, 1, 1, '550000', '660000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1304, 'Rumah Sekring Saf Dan Kdk ', '60', 'baru', 'C128', 8, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1305, 'Rumah Sekring 1303 & Cb Second Ori', '61', 'baru', 'C128', 12, 19, 1, 1, 1, '600000', '720000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Feb-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1306, 'Rumah Sekring Cb 64 ', '62', 'baru', 'C128', 8, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1307, 'Rumah Sekring Cb Brz', '63', 'baru', 'C128', NULL, 19, 1, 1, 1, '350000', '420000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Jul-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1308, 'Rumah Seking Cb Brz Second', '64', 'baru', 'C128', NULL, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Mar-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1309, 'Selenoid Besar Karburator 31 Dan 34 Bocar', '65', 'baru', 'C128', 8, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jul-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1310, 'Selenoid Kecil  Karburator 31 Dan 34 Brosol', '66', 'baru', 'C128', 6, 19, 1, 1, 1, '160000', '192000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '7-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1311, 'Lampu Plavon Cb 72', '67', 'baru', 'C128', NULL, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1312, 'Lampu Plavon Biasa Kodok', '68', 'baru', 'C128', 6, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1313, 'Lampu Plavon Kodok Hella', '69', 'baru', 'C128', 6, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jul-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1314, 'Lampu Plavon Cb 77 Hella', '70', 'baru', 'C128', 6, 19, 1, 1, 1, '125000', '150000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-May-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1315, 'Dop H4 Bulat Hella', '71', 'baru', 'C128', NULL, 19, 1, 1, 1, '35000', '42000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1316, 'Dop H4 K3 90/100 Hella', '72', 'baru', 'C128', NULL, 19, 1, 1, 1, '20000', '24000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1317, 'Dop Dobel Besar Autolamp', '73', 'baru', 'C128', NULL, 19, 1, 1, 1, '1800', '2160', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Jul-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1318, 'Dop Dobel Kecil Autolamp', '74', 'baru', 'C128', NULL, 19, 1, 1, 1, '1500', '1800', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '8-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1319, 'Dop Engkel Pendek Autolamp', '75', 'baru', 'C128', NULL, 19, 1, 1, 1, '2000', '2400', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Mar-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1320, 'Dop Engkel Flosser', '76', 'baru', 'C128', 6, 19, 1, 1, 1, '8000', '9600', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1321, 'Dop Dobel Flosser', '77', 'baru', 'C128', 6, 19, 1, 1, 1, '4500', '5400', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '10-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1322, 'Topi Lampu Biasa ', '78', 'baru', 'C128', 6, 19, 1, 1, 1, '40000', '48000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1323, 'Topi Lampu Bagus', '79', 'baru', 'C128', 6, 19, 1, 1, 1, '125000', '150000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1324, 'Kancingan Lis Kaca ', '80', 'baru', 'C128', 8, 19, 1, 1, 1, '2200', '2640', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Aug-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1325, 'Knop Pintu Vw Hitam 1 Set (2)', '81', 'baru', 'C128', 8, 19, 1, 1, 1, '40000', '48000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1326, 'Knop Pintu Vw Silver ', '82', 'baru', 'C128', 10, 19, 1, 1, 1, '20000', '24000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '15-May-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1327, 'Tutup Rem Stir Hitam', '83', 'baru', 'C128', 7, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1328, 'Reparkit Klakson Saf, Cb 74 - 79, 1303 ', '84', 'baru', 'C128', 8, 19, 1, 1, 1, '45000', '54000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1329, 'Reparkit Klakson Kodok 61', '85', 'baru', 'C128', 8, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1330, 'Logo Kap Bagasi Kodok 61 Merah Putih', '86', 'baru', 'C128', NULL, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1331, 'Grill Klakson Kdk 61', '87', 'baru', 'C128', 8, 19, 1, 1, 1, '55000', '66000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1332, 'Simbol Variasi Vw Hitam ', '88', 'baru', 'C128', NULL, 19, 1, 1, 1, '15000', '18000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '1-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1333, 'Simbol Variasi Orange', '89', 'baru', 'C128', NULL, 19, 1, 1, 1, '15000', '18000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '1-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1334, 'Simbol Vw Variasi Merah', '90', 'baru', 'C128', NULL, 19, 1, 1, 1, '15000', '18000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '11-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1335, 'Simbol Variasi Biru', '91', 'baru', 'C128', NULL, 19, 1, 1, 1, '15000', '18000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '11-Nov-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1336, 'Anak Kunci Vw', '92', 'standard', 'C128', 8, 19, 1, 1, 1, '25000', '30000', 100, 2, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, 0, NULL, NULL, NULL, '<p>20-Jan-2022</p>', 1, '2022-01-18 16:58:05', '2022-01-18 17:48:12'),
(1337, 'Klem Delco', '93', 'baru', 'C128', 8, 19, 1, 1, 1, '27000', '32400', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1338, 'Willdop Logo Vw Besar Cembung Bagus', '94', 'baru', 'C128', 10, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Aug-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1339, 'Willdop Logo Vw Kecil Cembung Biasa', '95', 'baru', 'C128', 8, 19, 1, 1, 1, '165000', '198000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Jul-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1340, 'Willdop Logo Vw Kecil Cembung Bagus', '96', 'baru', 'C128', 10, 19, 1, 1, 1, '225000', '270000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1341, 'Willdop Polos Cembung 1303, Cb', '97', 'baru', 'C128', 10, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Mar-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1342, 'Willdop Logo Wolfsburg Cembung 150.000', '98', 'baru', 'C128', 10, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Jan-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1343, 'Ring Lampu Mexico', '99', 'baru', 'C128', 6, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1344, 'Ring Lampu Taiwan', '100', 'baru', 'C128', 8, 19, 1, 1, 1, '120000', '144000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1345, 'Willdop Logo Vw Kecil Cekung', '101', 'baru', 'C128', 8, 19, 1, 1, 1, '180000', '216000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1346, 'Speedometer Second Siap Pakai', '102', 'baru', 'C128', NULL, 19, 1, 1, 1, '1000000', '1200000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1347, 'Thermometer Second', '103', 'baru', 'C128', NULL, 19, 1, 1, 1, '750000', '900000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1348, 'Speedometer 1303, Saf', '104', 'baru', 'C128', NULL, 19, 1, 1, 1, '1000000', '1200000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1349, 'Speedometer Baru 1303, Saf', '105', 'baru', 'C128', NULL, 19, 1, 1, 1, '2000000', '2400000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1350, 'Laci Rokok', '106', 'baru', 'C128', NULL, 19, 1, 1, 1, '125000', '150000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1351, 'Dinamo Wiper Second Siap Pakai', '107', 'baru', 'C128', NULL, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:05', '2022-01-18 16:58:05'),
(1352, 'Mika Lampu Belakang Kdk 61 1 Set (2)', '108', 'baru', 'C128', 6, 19, 1, 1, 1, '170000', '204000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1353, 'Mika Lampu Riting Saf Depan Second 1 Set(2)', '109', 'baru', 'C128', NULL, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1354, 'Mika Lampu Belakang 1303 1 Set(2)', '110', 'baru', 'C128', 6, 19, 1, 1, 1, '450000', '540000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1355, 'Speedometer Lengkap Cb Brz', '111', 'baru', 'C128', NULL, 19, 1, 1, 1, '1000000', '1200000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1356, 'Karet Luar Perseneleng ', '112', 'baru', 'C128', NULL, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1357, 'Tutup Laci Cb ', '113', 'baru', 'C128', 8, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1358, 'Mika Belakang 1302', '114', 'baru', 'C128', 10, 19, 1, 1, 1, '225000', '270000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1359, 'Lampu 1303 Belakang 1 Set(2)', '115', 'baru', 'C128', 6, 19, 1, 1, 1, '700000', '840000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1360, 'Mika Riting Depan Kdk 61', '116', 'baru', 'C128', 8, 19, 1, 1, 1, '40000', '48000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Mar-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1361, 'Mika Belakang Kdk 61 1 Set(2)', '117', 'baru', 'C128', 6, 19, 1, 1, 1, '80000', '96000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1362, 'Lampu Riting Depan Saf 76, 1303, 1Set(2) ', '118', 'baru', 'C128', NULL, 19, 1, 1, 1, '750000', '900000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1363, 'Lampu Riting Depan Kdk 61, Saf 72 1 Set(2)', '119', 'baru', 'C128', NULL, 19, 1, 1, 1, '350000', '420000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1364, 'Mika Lampu 1302 Belakang Bagus 1 Set(2)', '120', 'baru', 'C128', 6, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1365, 'Bantalan Alternator 75A ', '121', 'baru', 'C128', 7, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1366, 'Lampu Bello Paten Kdk 61', '122', 'baru', 'C128', 6, 19, 1, 1, 1, '2200000', '2640000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1367, 'Lampu Depan Saf, Kdk, Cb 1 Set(2)', '123', 'baru', 'C128', 6, 19, 1, 1, 1, '550000', '660000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1368, 'Lampu Depan Kdk, Saf, Cb Hella Second 1 Set(2)', '124', 'baru', 'C128', NULL, 19, 1, 1, 1, '600000', '720000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1369, 'Pelampung Bensin Kdk 61 Cav ', '125', 'baru', 'C128', 8, 19, 1, 1, 1, '685000', '822000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1370, 'Pelampung Bensin Cb ', '126', 'baru', 'C128', 8, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1371, 'Pelampung Bensin Saf Instrone', '127', 'baru', 'C128', 8, 19, 1, 1, 1, '110000', '132000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1372, 'Pelampung Kdk Saf Vdo ', '128', 'baru', 'C128', 6, 19, 1, 1, 1, '1250000', '1500000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1373, 'Pelampung Bensin Kdk 1303 Dan Cb Mexico', '129', 'baru', 'C128', 6, 19, 1, 1, 1, '950000', '1140000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1374, 'Pelampung Bensin 1303 Empi ', '130', 'baru', 'C128', 8, 19, 1, 1, 1, '465000', '558000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-May-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1375, 'Mika Lampu Stop Belakang Cb Kumis 72, Saf 72 1 Set(2)', '131', 'baru', 'C128', 6, 19, 1, 1, 1, '110000', '132000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1376, 'Mika Lampu Stop Belakang Cb 1 Set(2)', '132', 'baru', 'C128', 6, 19, 1, 1, 1, '450000', '540000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1377, 'Lampu Belakang Cb 1 Set(2)', '133', 'baru', 'C128', 6, 19, 1, 1, 1, '700000', '840000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1378, 'Lampu Riting Cb Kumis Depan Empi', '134', 'baru', 'C128', 8, 19, 1, 1, 1, '1750000', '2100000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-May-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1379, 'Karet Lampu Riting Cb Kumis 1 Set(2) ', '135', 'baru', 'C128', 8, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-May-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1380, 'Mika Lampu Riting Depan Cb Biasa 1 Set(2)', '136', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1381, 'Lampu Belakang Saf 72, Cb Kumis Belakang ', '137', 'baru', 'C128', 6, 19, 1, 1, 1, '800000', '960000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1382, 'Mika Riting Cb Depan 1 Set(2) ', '138', 'baru', 'C128', NULL, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Jul-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1383, 'Lampu Riting Cb Depan Cofran ', '139', 'baru', 'C128', 6, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1384, 'Pangkon Oil Cooler ', '140', 'baru', 'C128', 10, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1385, 'Oil Cooler', '141', 'baru', 'C128', 10, 19, 1, 1, 1, '550000', '660000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1386, 'Oil Cooler 2000 Cc', '142', 'baru', 'C128', 8, 19, 1, 1, 1, '900000', '1080000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '13-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1387, 'Mika Riting Cb Dakota Depan 1 Set(2) ', '143', 'baru', 'C128', 6, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jan-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1388, 'Oil Cooler Cb', '144', 'baru', 'C128', 10, 19, 1, 1, 1, '550000', '660000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1389, 'Pir Kap Mesin Kdk 61 ', '267', 'baru', 'C128', 13, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Jan-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:07'),
(1390, 'Pir Kap Mesin 1303 ', '146', 'baru', 'C128', 13, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Jul-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1391, 'Handle Kap Bagasi Kdk 61 Bawah', '262', 'baru', 'C128', 6, 19, 1, 1, 1, '125000', '150000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '15-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:07'),
(1392, 'Selumbung Knalpot Stainless Steel ', '148', 'baru', 'C128', 10, 19, 1, 1, 1, '350000', '420000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1393, 'Selumbung Knalpot Brazil ', '149', 'baru', 'C128', 6, 19, 1, 1, 1, '80000', '96000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1394, 'Se;Umbung Knalpot Taiwan ', '150', 'baru', 'C128', 8, 19, 1, 1, 1, '60000', '72000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1395, 'Join Stir 1303 ', '151', 'baru', 'C128', 8, 19, 1, 1, 1, '400000', '480000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1396, 'Setut Klep 1600 Cc 1 Set', '152', 'baru', 'C128', 8, 19, 1, 1, 1, '400000', '480000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1397, 'Selumbung Klep 1600 Cc Biasa 1 Set', '153', 'baru', 'C128', 8, 19, 1, 1, 1, '240000', '288000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1398, 'Selumbung Klep 1600 Cc Stainless Steel ', '154', 'baru', 'C128', 6, 19, 1, 1, 1, '575000', '690000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1399, 'Ril Tengah Cb ', '162', 'baru', 'C128', 6, 19, 1, 1, 1, '265000', '318000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Jan-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1400, 'Door Lock Cb 77 Second', '156', 'baru', 'C128', 12, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1401, 'Door Lock Cb Brz ', '157', 'baru', 'C128', 8, 19, 1, 1, 1, '360000', '432000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-May-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1402, 'Pelampung Bensin Cb Vdo', '158', 'baru', 'C128', 6, 19, 1, 1, 1, '1350000', '1620000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1403, 'Werstan Bensin Saf & 1303 Hummels', '159', 'baru', 'C128', 8, 19, 1, 1, 1, '325000', '390000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1404, 'Werstan Bensin Cb Brz Second Hummels ', '160', 'baru', 'C128', 8, 19, 1, 1, 1, '500000', '600000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jan-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1405, 'Werstan Bensin Cb Hummels ', '161', 'baru', 'C128', 8, 19, 1, 1, 1, '850000', '1020000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1406, 'Meteran Bensin ', '163', 'baru', 'C128', 6, 19, 1, 1, 1, '165000', '198000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1407, 'Delco Bekas Siap Pakai', '164', 'baru', 'C128', NULL, 19, 1, 1, 1, '750000', '900000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1408, 'Delco Ori Bekas', '165', 'baru', 'C128', NULL, 19, 1, 1, 1, '550000', '660000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1409, 'Pelampung Karburator', '166', 'baru', 'C128', NULL, 19, 1, 1, 1, '650000', '780000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1410, 'Pelampung Karburator 30 Kdk 61 & Cb Brz', '167', 'baru', 'C128', 8, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1411, 'Coil Kecil Bosch', '168', 'baru', 'C128', NULL, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1412, 'Coil Bluefire', '169', 'baru', 'C128', 6, 19, 1, 1, 1, '750000', '900000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1413, 'Dek Laker 61 Sachs', '170', 'baru', 'C128', 6, 19, 1, 1, 1, '45000', '54000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1414, 'Dek Laker Cb Sachs', '171', 'baru', 'C128', 6, 19, 1, 1, 1, '285000', '342000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Mar-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1415, 'Dek Laker 61 Blueprint', '172', 'baru', 'C128', NULL, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1416, 'Pegangan Handle Pintu Dalam Cb', '173', 'baru', 'C128', NULL, 19, 1, 1, 1, '55000', '66000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1417, 'Handle Pegangan Plavon Atas Cb', '174', 'baru', 'C128', 6, 19, 1, 1, 1, '20000', '24000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1418, 'Variasi Angin2 1303 Belakang 1 Set(2)', '175', 'baru', 'C128', 8, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1419, 'Mangkokan Pintu Ori ', '176', 'baru', 'C128', 8, 19, 1, 1, 1, '11000', '13200', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1420, 'Tutup Stir Cb ', '177', 'baru', 'C128', 13, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1421, 'Handle Pegangan Putih Plavon Atas Kdk 1 Set(2)', '178', 'baru', 'C128', 10, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1422, 'Handle Pegangan Laci Depan Saf 72', '179', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1423, 'Plastik Bangku ', '180', 'baru', 'C128', 8, 19, 1, 1, 1, '12000', '14400', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1424, 'Plastik Ril Kaca Sliding Cb Ori', '181', 'baru', 'C128', 6, 19, 1, 1, 1, '12000', '14400', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1425, 'Handle Pegangan Hitam Plavon Atas ', '182', 'baru', 'C128', 6, 19, 1, 1, 1, '80000', '96000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1426, 'Simbol Vw Cb 74 ', '183', 'baru', 'C128', 8, 19, 1, 1, 1, '65000', '78000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-May-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1427, 'Simbol Vw Kdk Cembung ', '184', 'baru', 'C128', 6, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jan-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1428, 'Simbol Vw Saf ', '185', 'baru', 'C128', 6, 19, 1, 1, 1, '40000', '48000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-May-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1429, 'Simbol Volkswagen Besar Biasa ', '186', 'baru', 'C128', 6, 19, 1, 1, 1, '45000', '54000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Jul-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1430, 'Simbol Volkswagen Kecil Bagus ', '187', 'baru', 'C128', 8, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Mar-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1431, 'Simbol Volkswagen Kecil Biasa ', '188', 'baru', 'C128', 8, 19, 1, 1, 1, '45000', '54000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Mar-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1432, 'Simbol Vw 1302', '189', 'baru', 'C128', 8, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1433, 'Simbol Vw 1303', '190', 'baru', 'C128', 8, 19, 1, 1, 1, '60000', '72000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Jul-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1434, 'Variasi Simbol Klakson Kdk 61 Di Atas Selebor', '191', 'baru', 'C128', 10, 19, 1, 1, 1, '40000', '48000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1435, 'Simbol 1200 Cc', '192', 'baru', 'C128', 6, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '1-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1436, 'Simbol Volkswagen ', '193', 'baru', 'C128', 6, 19, 1, 1, 1, '40000', '48000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Mar-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1437, 'Simbol Vw 1300', '194', 'baru', 'C128', 8, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '15-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1438, 'Simbol Volkswagen Sedang ', '195', 'baru', 'C128', 8, 19, 1, 1, 1, '40000', '48000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1439, 'Variasi Slebor Atas 1303 1 Set', '196', 'baru', 'C128', NULL, 19, 1, 1, 1, '30000', '36000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jan-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06');
INSERT INTO `products` (`id`, `name`, `code`, `type`, `barcode_symbology`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `cost`, `price`, `qty`, `alert_quantity`, `promotion`, `promotion_price`, `starting_date`, `last_date`, `tax_id`, `tax_method`, `image`, `file`, `is_variant`, `featured`, `product_list`, `qty_list`, `price_list`, `product_details`, `is_active`, `created_at`, `updated_at`) VALUES
(1440, 'Sunduk Oli Mesin Krom', '197', 'baru', 'C128', NULL, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1441, 'Knop Tongkat Kecil', '198', 'baru', 'C128', 6, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Aug-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1442, 'Tongkat Perseneleng Wolfsburg Kuning Hitam', '203', 'baru', 'C128', 10, 19, 1, 1, 1, '60000', '72000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1443, 'Tongkat Perseneleng Vw Abu2', '200', 'baru', 'C128', 10, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Oct-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1444, 'Tomgkat Perseneleng Vw Kuning', '201', 'baru', 'C128', 10, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1445, 'Tongkat Perseneleng Vw Biru', '204', 'baru', 'C128', 10, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1446, 'Tongkat Perseneleng Wolfsburg Merah', '205', 'baru', 'C128', 10, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1447, 'Tongkat Perseneleng Vw Cream', '206', 'baru', 'C128', 8, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1448, 'Pegangan Tongkat Perseneleng Silver', '207', 'baru', 'C128', 13, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '15-Mar-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1449, 'Kunci Laci Kdk 61', '208', 'baru', 'C128', 6, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '22-Jan-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1450, 'Baut Setut Pedal Rem', '209', 'baru', 'C128', NULL, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1451, 'Pir Tongkat Perseneleng', '210', 'baru', 'C128', NULL, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1452, 'Tutup Pangkon Tongkat Perseneleng 1303', '211', 'baru', 'C128', 6, 19, 1, 1, 1, '85000', '102000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '15-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1453, 'Selumbung Dek Laker', '212', 'baru', 'C128', 8, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '4-Dec-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1454, 'Sambungan Stir Cb 1 Set', '213', 'baru', 'C128', NULL, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1455, 'Tutup Pangkon Perseneleng Cb', '214', 'baru', 'C128', NULL, 19, 1, 1, 1, '85000', '102000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '15-Jun-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1456, 'Pangkon Pedal Gas Kdk, Saf', '215', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1457, 'Engkol Worm Stir Cb German', '216', 'baru', 'C128', NULL, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1458, 'Pangkon Selumbung Kopling ', '217', 'baru', 'C128', NULL, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1459, 'Pangkon Dek Laker ( Tinggal 2 )', '218', 'baru', 'C128', NULL, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1460, 'Pangkon Worm Stir Cb', '219', 'baru', 'C128', NULL, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1461, 'Penyangga Pintu Saf', '220', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1462, 'Stang Worm Stir Cb 74', '221', 'baru', 'C128', NULL, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1463, 'Tutup Bensin Saf ', '222', 'baru', 'C128', NULL, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1464, 'Tutup Bensin Cb Second', '223', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jul-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1465, 'Tutup Bensin Saf Keyless', '224', 'baru', 'C128', 6, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Mar-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1466, 'Tutup Bensin Saf Second Normal', '225', 'baru', 'C128', 6, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1467, 'Tutup Bensin Cb 79', '226', 'baru', 'C128', NULL, 19, 1, 1, 1, '350000', '420000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1468, 'Tutup Bensin Kdk 68', '227', 'baru', 'C128', 10, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Jul-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1469, 'Daun Pbr', '228', 'baru', 'C128', 6, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1470, 'Reparkit Pbr', '229', 'baru', 'C128', 6, 19, 1, 1, 1, '285000', '342000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jul-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1471, 'Cop Pbr', '230', 'baru', 'C128', 6, 19, 1, 1, 1, '30000', '36000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1472, 'Pentil Pbr 1 Set(2)', '231', 'baru', 'C128', 6, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1473, 'As Boster Pbr', '232', 'baru', 'C128', 14, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Feb-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1474, 'Tempat Oli Rem Saf 1303', '233', 'baru', 'C128', 6, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Nov-2022', 1, '2022-01-18 16:58:06', '2022-01-18 16:58:06'),
(1475, 'Tempat Oli Rem Cb 74', '234', 'baru', 'C128', NULL, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Oct-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1476, 'Tempat Oli Rem Kdk 61, Cb Brz', '235', 'baru', 'C128', 6, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Aug-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1477, 'Tempat Oli Rem Cb German', '236', 'baru', 'C128', NULL, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1478, 'Swit Stater Kaki 2 Second', '237', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1479, 'Swit Stater Kaki 2 Baru', '238', 'baru', 'C128', NULL, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '14-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1480, 'Ketot Dinamo', '239', 'baru', 'C128', NULL, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1481, 'Bendik Stater Second', '240', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1482, 'Door Lock 1303 Lh', '241', 'baru', 'C128', NULL, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Nov-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1483, 'Door Lock Bagasi Saf Second', '242', 'baru', 'C128', NULL, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1484, 'Door Lock Bagasi Saf Bawah Second', '243', 'baru', 'C128', NULL, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1485, 'Doorlock Pintu Cb 72 Rh', '244', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1486, 'Hnadle Kap Bagasi Saf, Cb', '245', 'baru', 'C128', 13, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Jan-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1487, 'Stopper Pintu Kdk ', '246', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1488, 'Handle Kaca Angin2 1303 1 Set(2) Second', '247', 'baru', 'C128', NULL, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1489, 'Pegangan Pintu Dalam Cb 1 Set(2)', '248', 'baru', 'C128', NULL, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1490, 'Pegangan Pintu Dalam 1303 1 Set(2)', '249', 'baru', 'C128', NULL, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1491, 'Lock Pintu Kap Bagasi ', '250', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1492, 'Lock Pintu Kap Mesin + Kunci', '251', 'baru', 'C128', NULL, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1493, 'Door Lock Cb Rh', '252', 'baru', 'C128', 6, 19, 1, 1, 1, '350000', '420000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Nov-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1494, 'Stiker Pintu Cb, Saf 1 Set(2)', '253', 'baru', 'C128', 6, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jul-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1495, 'Door Lock 1200 Lh', '254', 'baru', 'C128', 6, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Aug-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1496, 'Door Lock Kdk 61 Rh', '255', 'baru', 'C128', 6, 19, 1, 1, 1, '270000', '324000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1497, 'Handle 1303 Kap Bagasi Bawah', '256', 'baru', 'C128', 6, 19, 1, 1, 1, '165000', '198000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Aug-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1498, 'Handle Kpa Bagasi Atas 1303', '257', 'baru', 'C128', 6, 19, 1, 1, 1, '185000', '222000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jun-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1499, 'Door Lock 61 Dalam, Rh, Lh', '258', 'baru', 'C128', 6, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jan-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1500, 'Door Lock Kdk 61 Luar Lh, Rh', '259', 'baru', 'C128', 6, 19, 1, 1, 1, '250000', '300000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1501, 'Door Lock Kap Bagasi Kdk 61 Bawah', '260', 'baru', 'C128', 6, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Sep-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1502, 'Door Lock Bagasi Kdk 61 Atas', '261', 'baru', 'C128', 6, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Sep-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1503, 'Stiker Pintu Cb Rh, Lh', '263', 'baru', 'C128', 8, 19, 1, 1, 1, '55000', '66000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Mar-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1504, 'Stopper Kodok Baru 1 Set(2)', '264', 'baru', 'C128', 6, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1505, 'Door Lock 1303 Lh, Rh', '265', 'baru', 'C128', 6, 19, 1, 1, 1, '375000', '450000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '18-Jul-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1506, 'Pegangan Handle Pintu Kdk 61', '266', 'baru', 'C128', NULL, 19, 1, 1, 1, '50000', '60000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1507, 'Handle Putaran Kaca Hitam ', '268', 'baru', 'C128', 6, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jan-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1508, 'Handle Kaca Angin2 Cb, 1303 Lh, Rh', '269', 'baru', 'C128', 6, 19, 1, 1, 1, '175000', '210000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1509, 'Kunci Laci Kdk 61 Baru', '270', 'baru', 'C128', 6, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '22-Jan-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1510, 'Kunci Kap Bagasi Cb Baru', '271', 'baru', 'C128', 8, 19, 1, 1, 1, '165000', '198000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1511, 'Handle Putaran Kaca Lubang 3', '272', 'baru', 'C128', 10, 19, 1, 1, 1, '120000', '144000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Aug-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1512, 'Kunci Laci 1200, 1300 Std', '273', 'baru', 'C128', 8, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Aug-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1513, 'Handle Pintu Dalam Dan Putaran Kaca 1 Set(4)', '274', 'baru', 'C128', 8, 19, 1, 1, 1, '350000', '420000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Nov-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1514, 'Plastik Handle Pintu', '275', 'baru', 'C128', 8, 19, 1, 1, 1, '27500', '33000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-May-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1515, 'Handle Putaran Kaca Kdk 61', '276', 'baru', 'C128', 10, 19, 1, 1, 1, '70000', '84000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Sep-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1516, 'Plastik Handle Pintu Kdk Bello', '277', 'baru', 'C128', 6, 19, 1, 1, 1, '7500', '9000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Mar-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1517, 'Handle Kaca Angin2 1303 1 Set(2) Baru', '278', 'baru', 'C128', 8, 19, 1, 1, 1, '475000', '570000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1518, 'Handle Sun Roof Kdk ', '279', 'baru', 'C128', NULL, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1519, 'Handle Buka Pintu Luar Kdk 61', '280', 'baru', 'C128', 8, 19, 1, 1, 1, '25000', '30000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jun-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1520, 'Handle Bukaan Kaca Angin Cb Rh Lh', '281', 'baru', 'C128', 8, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1521, 'Kunci Kap Mesin Cb Brz', '282', 'baru', 'C128', 6, 19, 1, 1, 1, '150000', '180000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Apr-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1522, 'Handle Pop Off Kdk 61 1 Set(2)', '283', 'baru', 'C128', NULL, 19, 1, 1, 1, '385000', '462000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '16-Oct-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1523, 'Handle Kaca Angin2 Ksk 61 Lh', '284', 'baru', 'C128', 8, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1524, 'Handle Putaran Kaca ', '285', 'baru', 'C128', 6, 19, 1, 1, 1, '90000', '108000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Apr-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1525, 'Ril Pintu Sliding Atas Cb', '286', 'baru', 'C128', NULL, 19, 1, 1, 1, '100000', '120000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1526, 'Variasi Handle Pintu Kdk 61 1 Set(2)', '287', 'baru', 'C128', 10, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jun-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1527, 'Variasi Handle Pintu Kdk 1303', '290', 'baru', 'C128', 10, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Feb-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1528, 'Variasi Handle Pintu Kfk 1200', '289', 'baru', 'C128', 10, 19, 1, 1, 1, '75000', '90000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Feb-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1529, 'Handle Pintu 1303', '291', 'baru', 'C128', 6, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1530, 'Handle Pintu Sliding Dalam Cb German', '292', 'baru', 'C128', NULL, 19, 1, 1, 1, '80000', '96000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '14-Aug-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1531, 'Door Lock Bagasi Atas Saf', '293', 'baru', 'C128', NULL, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1532, 'Handle Pintu Cb Kumis 68 1 Set(2)', '294', 'baru', 'C128', 10, 19, 1, 1, 1, '1500000', '1800000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '17-Mar-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1533, 'Stiker Pintu Kdk 1303 Rh Lh', '295', 'baru', 'C128', 6, 19, 1, 1, 1, '125000', '150000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '21-Jan-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1534, 'Handle Pintu Dalam Sliding Cb Brz', '296', 'baru', 'C128', 6, 19, 1, 1, 1, '35000', '42000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '14-Jan-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1535, 'Kunci Bagasi Blk Cb Brazil ', '297', 'baru', 'C128', 13, 19, 1, 1, 1, '300000', '360000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Nov-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1536, 'Kunci Sliding Cb 77 - 79', '298', 'baru', 'C128', 6, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1537, 'Handle Pintu Luar Cb ', '299', 'baru', 'C128', 6, 19, 1, 1, 1, '200000', '240000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Jul-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1538, 'Handle Pintu Luar Cb Saf Bagus ', '300', 'baru', 'C128', 6, 19, 1, 1, 1, '235000', '282000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Mar-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1539, 'Lock Kap Bagasi Saf ', '301', 'baru', 'C128', 6, 19, 1, 1, 1, '275000', '330000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Sep-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1540, 'Handle Pintu Luar Kdk 61', '302', 'baru', 'C128', 8, 19, 1, 1, 1, '220000', '264000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '19-Dec-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07'),
(1541, 'Handle Pintu Luar Cb Taiwan', '303', 'baru', 'C128', 8, 19, 1, 1, 1, '125000', '150000', 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'zummXD2dvAtI.png', NULL, NULL, NULL, NULL, NULL, NULL, '20-Mar-2022', 1, '2022-01-18 16:58:07', '2022-01-18 16:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `product_adjustments`
--

CREATE TABLE `product_adjustments` (
  `id` int(10) UNSIGNED NOT NULL,
  `adjustment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_purchases`
--

CREATE TABLE `product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `recieved` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_quotation`
--

CREATE TABLE `product_quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_returns`
--

CREATE TABLE `product_returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_sales`
--

CREATE TABLE `product_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `sale_unit_id` int(11) NOT NULL,
  `net_unit_price` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_transfer`
--

CREATE TABLE `product_transfer` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `item_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_price` double DEFAULT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `qty` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `paid_amount` double NOT NULL,
  `status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_product_return`
--

CREATE TABLE `purchase_product_return` (
  `id` int(10) UNSIGNED NOT NULL,
  `return_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` double NOT NULL,
  `purchase_unit_id` int(11) NOT NULL,
  `net_unit_cost` double NOT NULL,
  `discount` double NOT NULL,
  `tax_rate` double NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `quotation_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_purchases`
--

CREATE TABLE `return_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `guard_name`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin can access all data...', 'web', 1, '2018-06-01 23:46:44', '2018-06-02 23:13:05'),
(2, 'Owner', 'Owner of shop...', 'web', 1, '2018-10-22 02:38:13', '2018-10-22 02:38:13'),
(4, 'staff', 'staff has specific acess...', 'web', 1, '2018-06-02 00:05:27', '2018-06-02 00:05:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(7, 4),
(8, 1),
(8, 2),
(8, 4),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(12, 4),
(13, 1),
(13, 2),
(13, 4),
(14, 1),
(14, 2),
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
(20, 4),
(21, 1),
(21, 2),
(21, 4),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(24, 4),
(25, 1),
(25, 2),
(25, 4),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(28, 4),
(29, 1),
(29, 2),
(29, 4),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(63, 4),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_discount` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_price` double NOT NULL,
  `grand_total` double NOT NULL,
  `order_tax_rate` double DEFAULT NULL,
  `order_tax` double DEFAULT NULL,
  `order_discount` double DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `coupon_discount` double DEFAULT NULL,
  `shipping_cost` double DEFAULT NULL,
  `sale_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `sale_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_counts`
--

CREATE TABLE `stock_counts` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_adjusted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `image`, `company_name`, `vat_number`, `email`, `phone_number`, `address`, `city`, `state`, `postal_code`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'ACHEN', 'globaltouch.jpg', 'ACHEN', NULL, 'abdullah@globaltouch.com', '231231', 'fsdfs', 'fsdfs', NULL, NULL, 'bd', 1, '2018-05-12 22:06:34', '2019-12-21 10:58:47'),
(3, 'Istana Motor', NULL, 'Istana Motor', NULL, 'ismail@test.com', '23123123', 'mohammadpur', 'dhaka', NULL, NULL, 'bangladesh', 1, '2018-07-20 04:34:17', '2018-07-20 04:34:17'),
(6, 'fajar', NULL, 'fajar', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'kedungdoro', NULL, 'kedungdoro', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'kusuma', NULL, 'kusuma', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Gito', NULL, 'Gito', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'istana', NULL, 'istana', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'seno', NULL, 'seno', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'vat@10', 10, 1, '2018-05-12 09:58:30', '2019-03-02 11:46:10'),
(2, 'vat@15', 15, 1, '2018-05-12 09:58:43', '2018-05-27 23:35:05'),
(3, 'test', 6, 0, '2018-05-27 23:32:54', '2018-05-27 23:34:44'),
(4, 'vat 20', 20, 1, '2018-09-01 00:58:57', '2018-09-01 00:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `from_warehouse_id` int(11) NOT NULL,
  `to_warehouse_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `total_qty` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `shipping_cost` double DEFAULT NULL,
  `grand_total` double NOT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_unit` int(11) DEFAULT NULL,
  `operator` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_value` double DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_code`, `unit_name`, `base_unit`, `operator`, `operation_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'pc', 'Piece', NULL, '*', 1, 1, '2018-05-12 02:27:46', '2018-08-17 21:41:53'),
(2, 'dozen', 'dozen box', 1, '*', 12, 1, '2018-05-12 09:57:05', '2018-05-12 09:57:05'),
(3, 'cartoon', 'cartoon box', 1, '*', 24, 1, '2018-05-12 09:57:45', '2020-03-11 10:36:59'),
(4, 'm', 'meter', NULL, '*', 1, 1, '2018-05-12 09:58:07', '2018-05-27 23:20:57'),
(6, 'test', 'test', NULL, '*', 1, 0, '2018-05-27 23:20:20', '2018-05-27 23:20:25'),
(7, 'kg', 'kilogram', NULL, '*', 1, 1, '2018-06-25 00:49:26', '2018-06-25 00:49:26'),
(8, '20', 'ni33', 8, '*', 1, 0, '2018-07-31 22:35:51', '2018-07-31 22:40:54'),
(9, 'gm', 'gram', 7, '/', 1000, 1, '2018-09-01 00:06:28', '2018-09-01 00:06:28'),
(10, 'gz', 'goz', NULL, '*', 1, 0, '2018-11-29 03:40:29', '2019-03-02 11:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `biller_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `phone`, `company_name`, `role_id`, `biller_id`, `warehouse_id`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$Eiec.za.2wLy3MSNY.mylePXHr6cNO6MfMK5VXEwK7ld/lMpLRI22', 'jTyXQydp94vkfhXV8dQhDiAhZemTFBu9d0vAvXKruxV35Huu04xpK3HchM2Z', '12112', 'Bengkel VW Sumalik', 1, NULL, NULL, 1, 0, '2018-06-02 03:24:15', '2022-01-18 18:42:24'),
(3, 'rian', 'dhiman@gmail.com', '$2y$10$Fef6vu5E67nm11hX7V5a2u1ThNCQ6n9DRCvRF9TD7stk.Pmt2R6O.', '5ehQM6JIfiQfROgTbB5let0Z93vjLHS7rd9QD5RPNgOxli3xdo7fykU7vtTt', '212', 'Bengkel VW Sumalik', 2, NULL, NULL, 1, 0, '2018-06-13 22:00:31', '2022-01-18 18:17:43'),
(9, 'staff', 'anda@gmail.com', '$2y$10$kxDbnynB6mB1e1w3pmtbSOlSxy/WwbLPY5TJpMi0Opao5ezfuQjQm', 'dNAe8iSjJbGZNeEypYH80C4kX2wKowej6QADpbzL6PBoKDFQMMzmwgFUOsYl', '3123', 'Bengkel VW Sumalik', 4, NULL, 1, 1, 0, '2018-07-02 01:08:08', '2022-01-18 18:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Medium', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(3, 'Small', '2019-11-21 07:03:04', '2019-11-24 08:43:52'),
(5, 'Large', '2019-11-24 06:07:20', '2019-11-24 08:44:56'),
(9, 'a', '2020-05-18 16:44:14', '2020-05-18 16:44:14'),
(11, 'b', '2020-05-18 16:53:49', '2020-05-18 16:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `phone`, `email`, `address`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'bengkel', '0318281152', NULL, 'Jambangan IX/ 46 Surabaya', 1, '2018-05-12 07:51:44', '2022-01-18 18:18:41'),
(2, 'gudang', '1234', NULL, 'Jambangan VII', 1, '2018-05-12 08:09:03', '2022-01-18 18:18:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adjustments`
--
ALTER TABLE `adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billers`
--
ALTER TABLE `billers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_cards`
--
ALTER TABLE `gift_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_transfers`
--
ALTER TABLE `money_transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_setting`
--
ALTER TABLE `pos_setting`
  ADD UNIQUE KEY `pos_setting_id_unique` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_purchases`
--
ALTER TABLE `product_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quotation`
--
ALTER TABLE `product_quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_returns`
--
ALTER TABLE `product_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sales`
--
ALTER TABLE `product_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transfer`
--
ALTER TABLE `product_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_purchases`
--
ALTER TABLE `return_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_counts`
--
ALTER TABLE `stock_counts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adjustments`
--
ALTER TABLE `adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billers`
--
ALTER TABLE `billers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gift_cards`
--
ALTER TABLE `gift_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `gift_card_recharges`
--
ALTER TABLE `gift_card_recharges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hrm_settings`
--
ALTER TABLE `hrm_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `money_transfers`
--
ALTER TABLE `money_transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `payment_with_cheque`
--
ALTER TABLE `payment_with_cheque`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payment_with_credit_card`
--
ALTER TABLE `payment_with_credit_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_with_gift_card`
--
ALTER TABLE `payment_with_gift_card`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_with_paypal`
--
ALTER TABLE `payment_with_paypal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1542;

--
-- AUTO_INCREMENT for table `product_adjustments`
--
ALTER TABLE `product_adjustments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_purchases`
--
ALTER TABLE `product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `product_quotation`
--
ALTER TABLE `product_quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_returns`
--
ALTER TABLE `product_returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_sales`
--
ALTER TABLE `product_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `product_transfer`
--
ALTER TABLE `product_transfer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `purchase_product_return`
--
ALTER TABLE `purchase_product_return`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `return_purchases`
--
ALTER TABLE `return_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `stock_counts`
--
ALTER TABLE `stock_counts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

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
