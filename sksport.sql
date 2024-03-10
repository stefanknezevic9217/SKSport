-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 07:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sksport`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Puma', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 'Adidas', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 'Nike', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 'Converse', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(5, 'Reebok', '2024-03-10 14:49:50', '2024-03-10 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shoe_size_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Dizajn', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 'Skejt', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 'Setnja', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 'Trcanje', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(5, 'Sportske', '2024-03-10 14:49:50', '2024-03-10 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `category_shoe`
--

CREATE TABLE `category_shoe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `shoe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_shoe`
--

INSERT INTO `category_shoe` (`id`, `category_id`, `shoe_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 4, 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 1, 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 3, 2, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(5, 4, 2, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(6, 3, 3, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(7, 1, 3, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(8, 1, 4, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(9, 5, 5, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(10, 5, 6, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(11, 1, 7, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(12, 5, 8, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(13, 5, 9, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(14, 4, 10, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(15, 3, 10, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(16, 2, 10, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(17, 3, 11, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(18, 3, 12, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(19, 5, 12, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(20, 2, 13, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(21, 4, 13, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(22, 4, 14, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(23, 2, 14, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(24, 3, 15, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(25, 1, 15, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(26, 2, 16, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(27, 4, 16, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(28, 3, 17, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(29, 5, 17, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(30, 5, 18, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(31, 4, 18, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(32, 2, 18, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(33, 5, 19, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(34, 1, 19, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(35, 2, 19, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(36, 4, 20, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(37, 1, 20, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(38, 3, 20, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(39, 1, 21, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(40, 3, 21, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(41, 2, 22, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(42, 4, 22, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(43, 5, 22, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(44, 1, 23, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(45, 5, 23, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(46, 2, 23, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(47, 2, 24, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(48, 4, 24, '2024-03-10 14:49:50', '2024-03-10 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Beograd', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 'Novi Sad', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 'Niš', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 'Subotica', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(5, 'Kraljevo', '2024-03-10 14:49:50', '2024-03-10 14:49:50');

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
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Male', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 'Female', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 'Unisex', '2024-03-10 14:49:50', '2024-03-10 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `footer` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `name`, `route`, `footer`, `created_at`, `updated_at`) VALUES
(1, 'Početna', 'home', 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 'Proizvodi', 'shoes', 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 'O nama', 'about', 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 'Kontakt', 'contact', 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(5, 'Dokumentacija', 'doc', 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(6, 'O autoru', 'author', 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(7, 'Site map', 'sitemap', 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50');

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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_01_01_174958_create_sales_table', 1),
(5, '2024_01_01_175130_create_genders_table', 1),
(6, '2024_01_01_185456_create_brands_table', 1),
(7, '2024_03_03_172943_create_roles_table', 1),
(8, '2024_03_03_173306_create_cities_table', 1),
(9, '2024_03_03_174226_create_shoes_table', 1),
(10, '2024_03_03_174715_create_categories_table', 1),
(11, '2024_03_03_174818_create_category_shoe_table', 1),
(12, '2024_03_03_175820_create_shoe_size_quantity_table', 1),
(13, '2024_03_03_177000_create_users_table', 1),
(14, '2024_03_03_180333_create_orders_table', 1),
(15, '2024_03_03_180523_create_order_items_table', 1),
(16, '2024_03_03_181312_create_carts_table', 1),
(17, '2024_03_03_183106_create_cart_items_table', 1),
(18, '2024_03_10_154857_create_links_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shoe_size_quantity_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 'User', '2024-03-10 14:49:50', '2024-03-10 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `saleId` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`saleId`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 10, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 20, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 30, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(5, 40, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(6, 50, '2024-03-10 14:49:50', '2024-03-10 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE `shoes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `recommended` tinyint(1) NOT NULL,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoes`
--

INSERT INTO `shoes` (`id`, `name`, `price`, `brand_id`, `gender_id`, `sale_id`, `image`, `recommended`, `delete`, `created_at`, `updated_at`) VALUES
(1, 'Air Jordan 1', 19887.00, 2, 3, 2, '1', 0, 1, '2024-03-10 14:49:50', '2024-03-10 15:47:02'),
(2, 'Yeezy Boost 350', 12843.00, 3, 1, 5, '2', 1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 'Nike Air Max 97', 12602.00, 1, 3, 2, '3', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 'Adidas Stan Smith', 14828.00, 5, 3, 6, '4', 0, 1, '2024-03-10 14:49:50', '2024-03-10 15:47:35'),
(5, 'Converse Chuck Taylor All-Star', 11164.00, 3, 2, 4, '5', 1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(6, 'Puma Suede Classic', 14153.00, 1, 2, 5, '6', 1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(7, 'Reebok Club C 85', 5304.00, 5, 2, 1, '7', 1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(8, 'Vans Old Skool', 8343.00, 5, 1, 3, '8', 1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(9, 'New Balance 990', 17883.00, 5, 1, 4, '9', 1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(10, 'Asics Gel-Lyte III', 16662.00, 5, 1, 5, '10', 1, 1, '2024-03-10 14:49:50', '2024-03-10 15:47:09'),
(11, 'Saucony Jazz Original', 8244.00, 2, 3, 2, '11', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(12, 'Under Armour Curry 7', 12540.00, 2, 3, 5, '12', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(13, 'Nike SB Dunk', 11311.00, 1, 1, 3, '13', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(14, 'Adidas Superstar', 18096.00, 4, 1, 3, '14', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(15, 'Air Jordan 4', 3433.00, 3, 3, 5, '15', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(16, 'Nike Air Force 1', 18110.00, 5, 1, 4, '16', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(17, 'Adidas NMD R1', 9987.00, 5, 1, 1, '17', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(18, 'Nike Cortez', 19139.00, 3, 3, 5, '18', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(19, 'Vans Sk8-Hi', 9846.00, 2, 1, 5, '19', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(20, 'Balenciaga Triple S', 19187.00, 3, 1, 1, '20', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(21, 'Gucci Ace Sneaker', 12071.00, 5, 2, 3, '21', 1, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(22, 'Fila Disruptor 2', 17291.00, 2, 1, 6, '22', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(23, 'Nike React Element 55', 3835.00, 5, 2, 4, '23', 0, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(24, 'Adidas Ultraboost', 7069.00, 1, 1, 3, '24', 0, 1, '2024-03-10 14:49:50', '2024-03-10 15:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `shoe_size_quantity`
--

CREATE TABLE `shoe_size_quantity` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shoe_id` bigint(20) UNSIGNED NOT NULL,
  `size` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoe_size_quantity`
--

INSERT INTO `shoe_size_quantity` (`id`, `shoe_id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 37, 51, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(2, 1, 38, 30, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(3, 1, 39, 77, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(4, 1, 40, 9, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(5, 1, 41, 40, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(6, 1, 42, 98, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(7, 1, 43, 5, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(8, 1, 44, 84, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(9, 1, 45, 13, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(10, 2, 37, 76, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(11, 2, 38, 73, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(12, 2, 39, 86, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(13, 2, 40, 100, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(14, 2, 41, 65, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(15, 2, 42, 50, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(16, 2, 43, 91, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(17, 2, 44, 54, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(18, 2, 45, 29, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(19, 3, 37, 66, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(20, 3, 38, 28, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(21, 3, 39, 18, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(22, 3, 40, 61, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(23, 3, 41, 75, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(24, 3, 42, 63, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(25, 3, 43, 43, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(26, 3, 44, 55, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(27, 3, 45, 26, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(28, 4, 37, 66, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(29, 4, 38, 57, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(30, 4, 39, 73, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(31, 4, 40, 7, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(32, 4, 41, 78, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(33, 4, 42, 30, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(34, 4, 43, 22, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(35, 4, 44, 74, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(36, 4, 45, 31, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(37, 5, 37, 20, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(38, 5, 38, 66, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(39, 5, 39, 88, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(40, 5, 40, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(41, 5, 41, 78, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(42, 5, 42, 73, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(43, 5, 43, 51, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(44, 5, 44, 67, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(45, 5, 45, 18, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(46, 6, 37, 43, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(47, 6, 38, 24, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(48, 6, 39, 90, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(49, 6, 40, 29, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(50, 6, 41, 49, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(51, 6, 42, 48, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(52, 6, 43, 47, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(53, 6, 44, 40, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(54, 6, 45, 83, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(55, 7, 37, 9, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(56, 7, 38, 81, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(57, 7, 39, 63, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(58, 7, 40, 58, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(59, 7, 41, 51, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(60, 7, 42, 100, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(61, 7, 43, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(62, 7, 44, 43, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(63, 7, 45, 62, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(64, 8, 37, 77, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(65, 8, 38, 46, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(66, 8, 39, 29, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(67, 8, 40, 24, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(68, 8, 41, 12, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(69, 8, 42, 27, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(70, 8, 43, 37, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(71, 8, 44, 38, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(72, 8, 45, 71, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(73, 9, 37, 13, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(74, 9, 38, 3, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(75, 9, 39, 91, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(76, 9, 40, 59, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(77, 9, 41, 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(78, 9, 42, 78, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(79, 9, 43, 17, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(80, 9, 44, 62, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(81, 9, 45, 41, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(82, 10, 37, 41, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(83, 10, 38, 66, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(84, 10, 39, 44, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(85, 10, 40, 9, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(86, 10, 41, 57, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(87, 10, 42, 91, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(88, 10, 43, 68, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(89, 10, 44, 64, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(90, 10, 45, 27, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(91, 11, 37, 55, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(92, 11, 38, 27, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(93, 11, 39, 15, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(94, 11, 40, 19, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(95, 11, 41, 11, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(96, 11, 42, 53, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(97, 11, 43, 90, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(98, 11, 44, 93, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(99, 11, 45, 52, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(100, 12, 37, 51, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(101, 12, 38, 77, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(102, 12, 39, 21, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(103, 12, 40, 45, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(104, 12, 41, 89, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(105, 12, 42, 50, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(106, 12, 43, 19, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(107, 12, 44, 11, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(108, 12, 45, 86, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(109, 13, 37, 93, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(110, 13, 38, 12, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(111, 13, 39, 92, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(112, 13, 40, 16, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(113, 13, 41, 100, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(114, 13, 42, 89, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(115, 13, 43, 15, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(116, 13, 44, 3, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(117, 13, 45, 54, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(118, 14, 37, 20, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(119, 14, 38, 6, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(120, 14, 39, 23, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(121, 14, 40, 56, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(122, 14, 41, 3, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(123, 14, 42, 69, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(124, 14, 43, 68, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(125, 14, 44, 12, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(126, 14, 45, 8, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(127, 15, 37, 95, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(128, 15, 38, 56, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(129, 15, 39, 17, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(130, 15, 40, 84, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(131, 15, 41, 58, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(132, 15, 42, 64, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(133, 15, 43, 47, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(134, 15, 44, 51, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(135, 15, 45, 69, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(136, 16, 37, 84, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(137, 16, 38, 37, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(138, 16, 39, 51, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(139, 16, 40, 56, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(140, 16, 41, 33, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(141, 16, 42, 35, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(142, 16, 43, 44, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(143, 16, 44, 22, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(144, 16, 45, 7, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(145, 17, 37, 28, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(146, 17, 38, 65, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(147, 17, 39, 13, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(148, 17, 40, 53, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(149, 17, 41, 63, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(150, 17, 42, 70, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(151, 17, 43, 76, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(152, 17, 44, 1, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(153, 17, 45, 64, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(154, 18, 37, 16, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(155, 18, 38, 33, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(156, 18, 39, 87, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(157, 18, 40, 8, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(158, 18, 41, 58, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(159, 18, 42, 41, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(160, 18, 43, 76, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(161, 18, 44, 62, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(162, 18, 45, 55, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(163, 19, 37, 80, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(164, 19, 38, 50, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(165, 19, 39, 82, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(166, 19, 40, 81, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(167, 19, 41, 15, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(168, 19, 42, 27, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(169, 19, 43, 30, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(170, 19, 44, 80, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(171, 19, 45, 87, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(172, 20, 37, 55, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(173, 20, 38, 65, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(174, 20, 39, 27, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(175, 20, 40, 31, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(176, 20, 41, 100, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(177, 20, 42, 10, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(178, 20, 43, 57, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(179, 20, 44, 37, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(180, 20, 45, 19, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(181, 21, 37, 60, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(182, 21, 38, 87, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(183, 21, 39, 48, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(184, 21, 40, 72, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(185, 21, 41, 36, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(186, 21, 42, 96, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(187, 21, 43, 44, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(188, 21, 44, 33, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(189, 21, 45, 93, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(190, 22, 37, 86, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(191, 22, 38, 73, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(192, 22, 39, 48, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(193, 22, 40, 29, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(194, 22, 41, 54, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(195, 22, 42, 40, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(196, 22, 43, 10, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(197, 22, 44, 97, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(198, 22, 45, 48, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(199, 23, 37, 22, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(200, 23, 38, 100, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(201, 23, 39, 21, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(202, 23, 40, 8, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(203, 23, 41, 6, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(204, 23, 42, 56, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(205, 23, 43, 87, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(206, 23, 44, 8, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(207, 23, 45, 41, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(208, 24, 37, 89, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(209, 24, 38, 93, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(210, 24, 39, 68, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(211, 24, 40, 6, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(212, 24, 41, 52, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(213, 24, 42, 90, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(214, 24, 43, 0, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(215, 24, 44, 71, '2024-03-10 14:49:50', '2024-03-10 14:49:50'),
(216, 24, 45, 56, '2024-03-10 14:49:50', '2024-03-10 14:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `password`, `city_id`, `address`, `gender_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Pera', 'Peric', 'pera@gmail.com', '2d9abb02a761a5c593726bb59c28b8db', 1, 'Krunska 10', 1, 1, NULL, NULL),
(2, 'Mika', 'Mikic', 'mika@gmail.com', '2d9abb02a761a5c593726bb59c28b8db', 2, 'Savska 10', 1, 2, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_shoe_size_id_foreign` (`shoe_size_id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_shoe`
--
ALTER TABLE `category_shoe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_shoe_category_id_foreign` (`category_id`),
  ADD KEY `category_shoe_shoe_id_foreign` (`shoe_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_shoe_size_quantity_id_foreign` (`shoe_size_quantity_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`saleId`);

--
-- Indexes for table `shoes`
--
ALTER TABLE `shoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoes_brand_id_foreign` (`brand_id`),
  ADD KEY `shoes_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `shoe_size_quantity`
--
ALTER TABLE `shoe_size_quantity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shoe_size_quantity_shoe_id_foreign` (`shoe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_city_id_foreign` (`city_id`),
  ADD KEY `users_gender_id_foreign` (`gender_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_shoe`
--
ALTER TABLE `category_shoe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleId` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shoes`
--
ALTER TABLE `shoes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `shoe_size_quantity`
--
ALTER TABLE `shoe_size_quantity`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_items_shoe_size_id_foreign` FOREIGN KEY (`shoe_size_id`) REFERENCES `shoe_size_quantity` (`id`);

--
-- Constraints for table `category_shoe`
--
ALTER TABLE `category_shoe`
  ADD CONSTRAINT `category_shoe_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_shoe_shoe_id_foreign` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_shoe_size_quantity_id_foreign` FOREIGN KEY (`shoe_size_quantity_id`) REFERENCES `shoe_size_quantity` (`id`);

--
-- Constraints for table `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `shoes_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `shoes_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`);

--
-- Constraints for table `shoe_size_quantity`
--
ALTER TABLE `shoe_size_quantity`
  ADD CONSTRAINT `shoe_size_quantity_shoe_id_foreign` FOREIGN KEY (`shoe_id`) REFERENCES `shoes` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `users_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
