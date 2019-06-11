-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2019 at 12:28 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moh`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `description`, `date`, `url`, `created_at`, `updated_at`) VALUES
(1, 'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ', '<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին</p>', '2019-06-07', '#', '2019-06-07 07:11:00', '2019-06-07 07:14:06'),
(2, 'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ 2', '<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին 2</p>', '2019-06-07', '#', '2019-06-07 07:13:00', '2019-06-07 08:54:50'),
(3, 'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ 3', '<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին 3</p>', '2019-06-07', '#', '2019-06-07 09:24:44', '2019-06-07 09:24:44'),
(4, 'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ 4', '<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին 4</p>', '2019-06-07', '#', '2019-06-07 09:25:19', '2019-06-07 09:25:19'),
(5, 'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ 5', '<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին 5</p>', '2019-06-20', '#', '2019-06-07 09:25:46', '2019-06-07 09:25:46');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'BMW', 'Awesome Car !!!', 'cars/June2019/wNnnYQXJ2PTfgsxEwoYa.png', '2019-06-05 10:42:09', '2019-06-05 10:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-06-04 08:24:51', '2019-06-04 08:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'description', 'text_area', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(61, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(70, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(71, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(72, 9, 'text', 'text_area', 'Text', 1, 1, 1, 1, 1, 1, '{}', 3),
(73, 9, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 4),
(74, 9, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 5),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(93, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(95, 12, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(96, 12, 'images', 'multiple_images', 'Images', 1, 1, 1, 1, 1, 1, '{}', 4),
(97, 12, 'video', 'text', 'Video', 1, 1, 1, 1, 1, 1, '{}', 5),
(98, 12, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(99, 12, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 7),
(100, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(101, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(102, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(103, 20, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(104, 20, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(105, 20, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 4),
(106, 20, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 5),
(107, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(108, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(109, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 22, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 22, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 3),
(112, 22, 'video_url', 'text', 'Video Url', 1, 1, 1, 1, 1, 1, '{}', 4),
(113, 22, 'video_individual_url', 'text', 'Video Individual Url', 1, 1, 1, 1, 1, 1, '{}', 5),
(114, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(115, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(125, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(126, 25, 'position', 'text', 'Position', 1, 1, 1, 1, 1, 1, '{}', 2),
(127, 25, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(128, 25, 'phone_number', 'text', 'Phone Number', 1, 1, 1, 1, 1, 1, '{}', 4),
(129, 25, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(130, 25, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 6),
(131, 25, 'text', 'rich_text_box', 'Text', 1, 1, 1, 1, 1, 1, '{}', 7),
(132, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(133, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(134, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 26, 'position', 'text', 'Position', 1, 1, 1, 1, 1, 1, '{}', 2),
(136, 26, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(137, 26, 'phone_number', 'text', 'Phone Number', 1, 1, 1, 1, 1, 1, '{}', 4),
(138, 26, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 5),
(139, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(140, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(141, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 28, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 28, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 3),
(144, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(145, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(7, 'cars', 'cars', 'Car', 'Cars', NULL, 'App\\Car', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-05 10:41:25', '2019-06-07 06:21:38'),
(9, 'homepage_sliders', 'homepage-sliders', 'Homepage Slider', 'Homepage Sliders', NULL, 'App\\HomepageSlider', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-06 04:32:45', '2019-06-06 07:26:58'),
(12, 'news', 'news', 'News', 'News', NULL, 'App\\News', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-07 04:47:54', '2019-06-07 04:52:04'),
(20, 'announcements', 'announcements', 'Announcement', 'Announcements', NULL, 'App\\Announcements', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-07 06:49:37', '2019-06-07 07:09:12'),
(22, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Videos', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-07 08:13:21', '2019-06-07 08:13:21'),
(25, 'minister_staffs', 'minister-staff', 'Minister Staff', 'Minister Staffs', NULL, 'App\\MinisterStaff', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-10 05:57:01', '2019-06-10 05:57:01'),
(26, 'ministry_staffs', 'ministry-staff', 'Ministry Staff', 'Ministry Staffs', NULL, 'App\\MinistryStaff', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-10 09:10:30', '2019-06-10 09:10:30'),
(28, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Partners', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-10 10:04:06', '2019-06-10 10:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_sliders`
--

CREATE TABLE `homepage_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_sliders`
--

INSERT INTO `homepage_sliders` (`id`, `title`, `text`, `image`, `url`, `created_at`, `updated_at`) VALUES
(5, '<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ', 'Առողջապահության նախարար Արսեն Թորոսյանն ընդունել է Ռուսաստանի Դաշնության առողջապահության նախարարի տեղակալ', 'homepage-sliders/June2019/ZlFx7V58RdhYRzbG0Dqh.jpg', '#', '2019-06-06 07:03:12', '2019-06-06 07:03:12'),
(6, '<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ', 'Առողջապահության նախարար Արսեն Թորոսյանն ընդունել է Ռուսաստանի Դաշնության առողջապահության նախարարի տեղակալ', 'homepage-sliders/June2019/QfNS4DZZN5dZIMxx3fAK.png', '#', '2019-06-06 07:03:33', '2019-06-06 07:03:33'),
(8, '<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ', '<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ', 'homepage-sliders/June2019/iNoDqQU1GVnz4rBpzdik.png', NULL, '2019-06-06 07:32:44', '2019-06-06 07:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-06-04 08:24:50', '2019-06-04 08:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-06-04 08:24:50', '2019-06-04 08:24:50', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-06-04 08:24:50', '2019-06-06 05:20:49', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-06-04 08:24:50', '2019-06-04 08:24:50', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-06-04 08:24:50', '2019-06-04 08:24:50', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2019-06-04 08:24:50', '2019-06-06 05:20:49', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-06-04 08:24:50', '2019-06-06 05:20:49', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-06-04 08:24:50', '2019-06-06 05:20:49', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-06-04 08:24:50', '2019-06-06 05:20:49', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-06-04 08:24:50', '2019-06-06 05:20:49', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2019-06-04 08:24:50', '2019-06-06 05:20:49', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2019-06-04 08:24:51', '2019-06-06 05:20:49', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2019-06-04 08:24:51', '2019-06-06 05:20:49', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2019-06-04 08:24:51', '2019-06-06 05:20:49', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-06-04 08:24:51', '2019-06-06 05:20:49', 'voyager.hooks', NULL),
(15, 1, 'Home', '', '_self', NULL, '#000000', NULL, 10, '2019-06-05 10:41:25', '2019-06-06 06:37:00', 'voyager.home.index', 'null'),
(17, 1, 'Homepage Sliders', '', '_self', NULL, NULL, 15, 1, '2019-06-06 04:32:45', '2019-06-06 05:21:30', 'voyager.homepage-sliders.index', NULL),
(18, 1, 'News', '', '_self', NULL, '#000000', NULL, 11, '2019-06-06 07:35:14', '2019-06-06 07:35:14', NULL, ''),
(21, 1, 'News', '', '_self', NULL, NULL, 18, 1, '2019-06-07 04:47:54', '2019-06-07 04:48:31', 'voyager.news.index', NULL),
(22, 1, 'Announcements', '', '_self', NULL, NULL, 23, 1, '2019-06-07 06:49:37', '2019-06-07 07:04:06', 'voyager.announcements.index', NULL),
(24, 1, 'Announcements', '/admin/announcements', '_self', NULL, '#000000', 18, 2, '2019-06-07 07:05:29', '2019-06-07 07:05:34', NULL, ''),
(25, 1, 'Videos', '', '_self', NULL, NULL, 18, 3, '2019-06-07 08:13:21', '2019-06-07 08:13:50', 'voyager.videos.index', NULL),
(27, 1, 'Ministry', '', '_self', NULL, '#000000', NULL, 12, '2019-06-10 05:23:41', '2019-06-10 05:23:50', NULL, ''),
(31, 1, 'Minister\'s Staff', '', '_self', NULL, '#000000', 27, 1, '2019-06-10 05:57:01', '2019-06-10 09:10:59', 'voyager.minister-staff.index', 'null'),
(32, 1, 'Ministry Staff', '', '_self', NULL, '#000000', 27, 2, '2019-06-10 09:10:30', '2019-06-10 09:11:10', 'voyager.ministry-staff.index', 'null'),
(33, 1, 'Partners', '', '_self', NULL, NULL, NULL, 13, '2019-06-10 10:04:06', '2019-06-10 10:04:06', 'voyager.partners.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_06_05_143810_create_cars_table', 3),
(28, '2019_06_06_070755_create_homepage_sliders_table', 4),
(29, '2019_06_06_082150_create_homepage_sliders_table', 5),
(30, '2019_06_06_112011_create_news_table', 6),
(31, '2019_06_06_123446_create_news_table', 7),
(32, '2019_06_07_071925_add_url_to_news_table', 8),
(33, '2019_06_07_075831_add_url_to_news_table', 9),
(35, '2019_06_07_100905_create_announcements_table', 11),
(36, '2019_06_07_101708_create_announcements_table', 12),
(38, '2019_06_07_084259_create_news_table', 13),
(39, '2019_06_07_102546_create_announcements_table', 13),
(40, '2019_06_07_120635_create_videos_table', 14),
(41, '2019_06_10_091031_create_minister_staffs_table', 15),
(42, '2019_06_10_093522_create_minister_staff_table', 16),
(43, '2019_06_10_093708_create_minister_staff_table', 17),
(44, '2019_06_10_095146_create_minister_staffs_table', 18),
(45, '2019_06_10_095525_create_minister_staffs_table', 19),
(46, '2019_06_10_130540_create_ministry_staffs_table', 20),
(47, '2019_06_10_140028_create_partners_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `minister_staffs`
--

CREATE TABLE `minister_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_staffs`
--

INSERT INTO `minister_staffs` (`id`, `position`, `name`, `phone_number`, `email`, `image`, `text`, `created_at`, `updated_at`) VALUES
(1, 'հհ առողջապահության նախարար', 'ալինա նիկողոսյան', '(+74 60)80 80-03/1123', 'minister@moh.am', 'minister-staff/June2019/Q2HLlPFPIiP633JDeUR7.png', '<p>Ալինա Նիկողոսյանը իրականացնում է՝</p>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n</ul>', '2019-06-10 05:58:44', '2019-06-10 05:58:44'),
(2, 'հհ առողջապահության նախարար 2', 'ալինա նիկողոսյան 2', '(+74 60)80 80-03/1123', 'minister@moh.am', 'minister-staff/June2019/6N9bLAisTA2ZBJ6KbeIE.png', '<p>Ալինա Նիկողոսյանը իրականացնում է՝</p>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n</ul>', '2019-06-10 05:59:25', '2019-06-10 05:59:25'),
(3, 'հհ առողջապահության նախարար 3', 'ալինա նիկողոսյան 3', '(+74 60)80 80-03/1123', 'minister@moh.am', 'minister-staff/June2019/v0268mElyOOVNQUmrGzz.png', '<p>Ալինա Նիկողոսյանը իրականացնում է՝</p>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n</ul>', '2019-06-10 06:00:10', '2019-06-10 06:00:10'),
(4, 'հհ առողջապահության նախարար 4', 'ալինա նիկողոսյան 4', '(+74 60)80 80-03/1123', 'minister@moh.am', 'minister-staff/June2019/ROcEYES2P2d0oPLcAYzt.png', '<p>Ալինա Նիկողոսյանը իրականացնում է՝</p>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n</ul>', '2019-06-10 06:00:40', '2019-06-10 06:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `ministry_staffs`
--

CREATE TABLE `ministry_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ministry_staffs`
--

INSERT INTO `ministry_staffs` (`id`, `position`, `name`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար', 'Վահե Հակոբյան', '(+74 60)80 80-03/1123', 'minister@moh.am', '2019-06-10 09:12:17', '2019-06-10 09:12:17'),
(2, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 2', 'Վահե Հակոբյան 2', '(+74 60)80 80-03/1123', 'minister@moh.am', '2019-06-10 09:12:41', '2019-06-10 09:12:41'),
(3, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 3', 'Վահե Հակոբյան 3', '(+74 60)80 80-03/1123', 'minister@moh.am', '2019-06-10 09:13:00', '2019-06-10 09:13:00'),
(4, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 4', 'Վահե Հակոբյան 4', '(+74 60)80 80-03/1123', 'minister@moh.am', '2019-06-10 09:13:15', '2019-06-10 09:13:15'),
(5, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 5', 'Վահե Հակոբյան 5', '(+74 60)80 80-03/1123', 'minister@moh.am', '2019-06-10 09:13:35', '2019-06-10 09:13:35'),
(6, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 6', 'Վահե Հակոբյան 6', '(+74 60)80 80-03/1123', 'minister@moh.am', '2019-06-10 09:13:56', '2019-06-10 09:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `images`, `video`, `date`, `url`, `created_at`, `updated_at`) VALUES
(1, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ', '<p><span style="color: #222222; font-family: \'dejavu sans mono\', monospace; font-size: 11px; white-space: pre-wrap;">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ</span></p>', '["news\\/June2019\\/uCE6MXjF1srFAA8XyBzE.png","news\\/June2019\\/OZvbpD3nddDWSLq0U3M8.png","news\\/June2019\\/VMr51567mvub0tzN53uK.png"]', 'https://youtu.be/h56M8Ti6Ejw', '2019-06-12', '#', '2019-06-07 07:56:35', '2019-06-07 07:56:35'),
(2, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ 2', '<p><span style="color: #222222; font-family: \'dejavu sans mono\', monospace; font-size: 11px; white-space: pre-wrap;">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ 2</span></p>', '["news\\/June2019\\/65OSEyWqVlwdfDmAL5GH.png","news\\/June2019\\/kw8fxHPaTIzrNCqdm5n1.png","news\\/June2019\\/2bdjyn2d44YpyyrxLUSK.png"]', 'https://youtu.be/h56M8Ti6Ejw', '2019-06-27', '#', '2019-06-07 07:57:36', '2019-06-07 07:57:36'),
(3, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ 3', '<p><span style="color: #222222; font-family: \'dejavu sans mono\', monospace; font-size: 11px; white-space: pre-wrap;">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ 3</span></p>', '["news\\/June2019\\/lL13LrPgz4vaNAdop7Qm.png","news\\/June2019\\/MbVKOXwlaHcLob0VeNnK.png","news\\/June2019\\/L3NBHJf1Ngq49G9hmsyR.png"]', 'https://youtu.be/h56M8Ti6Ejw', '2019-06-04', '#', '2019-06-07 07:58:18', '2019-06-07 07:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(2, 1, 'Test', 'test', '<p>test</p>', 'pages/June2019/fvx3ADOOJu6XKOLTRPXw.png', 'test', 'test', 'test', 'ACTIVE', '2019-06-05 10:07:07', '2019-06-05 10:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `url`, `created_at`, `updated_at`) VALUES
(1, 'partners/June2019/AUNCfibL6TxEmB6KkNIz.png', '#', '2019-06-10 10:05:21', '2019-06-10 10:05:21'),
(2, 'partners/June2019/VVZhsLOUNy528MphJKCx.png', '#', '2019-06-10 10:05:33', '2019-06-10 10:05:33'),
(3, 'partners/June2019/NqmxzbbL85h9IYLxjF3v.png', '#', '2019-06-10 10:05:48', '2019-06-10 10:05:48'),
(4, 'partners/June2019/OqlhMHGYC5LSUxybxAVo.png', '#', '2019-06-10 10:06:12', '2019-06-10 10:06:12'),
(5, 'partners/June2019/fKvA5scv88GZP5xv5OFj.png', '#', '2019-06-10 10:06:32', '2019-06-10 10:06:32'),
(6, 'partners/June2019/XfZIqFNDBJCbYfZ3jO9w.png', '#', '2019-06-10 10:06:41', '2019-06-10 10:06:41'),
(7, 'partners/June2019/OgU6BysZsyhlObG0j96R.png', '#', '2019-06-10 10:06:55', '2019-06-10 10:06:55'),
(8, 'partners/June2019/9V2dsrhy13BV69MXMlL5.png', '#', '2019-06-10 10:07:16', '2019-06-10 10:07:16');

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(2, 'browse_bread', NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(3, 'browse_database', NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(4, 'browse_media', NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(5, 'browse_compass', NULL, '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(6, 'browse_menus', 'menus', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(7, 'read_menus', 'menus', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(8, 'edit_menus', 'menus', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(9, 'add_menus', 'menus', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(10, 'delete_menus', 'menus', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(11, 'browse_roles', 'roles', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(12, 'read_roles', 'roles', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(13, 'edit_roles', 'roles', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(14, 'add_roles', 'roles', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(15, 'delete_roles', 'roles', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(16, 'browse_users', 'users', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(17, 'read_users', 'users', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(18, 'edit_users', 'users', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(19, 'add_users', 'users', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(20, 'delete_users', 'users', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(21, 'browse_settings', 'settings', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(22, 'read_settings', 'settings', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(23, 'edit_settings', 'settings', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(24, 'add_settings', 'settings', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(25, 'delete_settings', 'settings', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(26, 'browse_categories', 'categories', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(27, 'read_categories', 'categories', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(28, 'edit_categories', 'categories', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(29, 'add_categories', 'categories', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(30, 'delete_categories', 'categories', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(31, 'browse_posts', 'posts', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(32, 'read_posts', 'posts', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(33, 'edit_posts', 'posts', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(34, 'add_posts', 'posts', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(35, 'delete_posts', 'posts', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(36, 'browse_pages', 'pages', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(37, 'read_pages', 'pages', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(38, 'edit_pages', 'pages', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(39, 'add_pages', 'pages', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(40, 'delete_pages', 'pages', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(41, 'browse_hooks', NULL, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(42, 'browse_cars', 'cars', '2019-06-05 10:41:25', '2019-06-05 10:41:25'),
(43, 'read_cars', 'cars', '2019-06-05 10:41:25', '2019-06-05 10:41:25'),
(44, 'edit_cars', 'cars', '2019-06-05 10:41:25', '2019-06-05 10:41:25'),
(45, 'add_cars', 'cars', '2019-06-05 10:41:25', '2019-06-05 10:41:25'),
(46, 'delete_cars', 'cars', '2019-06-05 10:41:25', '2019-06-05 10:41:25'),
(52, 'browse_homepage_sliders', 'homepage_sliders', '2019-06-06 04:32:45', '2019-06-06 04:32:45'),
(53, 'read_homepage_sliders', 'homepage_sliders', '2019-06-06 04:32:45', '2019-06-06 04:32:45'),
(54, 'edit_homepage_sliders', 'homepage_sliders', '2019-06-06 04:32:45', '2019-06-06 04:32:45'),
(55, 'add_homepage_sliders', 'homepage_sliders', '2019-06-06 04:32:45', '2019-06-06 04:32:45'),
(56, 'delete_homepage_sliders', 'homepage_sliders', '2019-06-06 04:32:45', '2019-06-06 04:32:45'),
(67, 'browse_news', 'news', '2019-06-07 04:47:54', '2019-06-07 04:47:54'),
(68, 'read_news', 'news', '2019-06-07 04:47:54', '2019-06-07 04:47:54'),
(69, 'edit_news', 'news', '2019-06-07 04:47:54', '2019-06-07 04:47:54'),
(70, 'add_news', 'news', '2019-06-07 04:47:54', '2019-06-07 04:47:54'),
(71, 'delete_news', 'news', '2019-06-07 04:47:54', '2019-06-07 04:47:54'),
(72, 'browse_announcements', 'announcements', '2019-06-07 06:49:37', '2019-06-07 06:49:37'),
(73, 'read_announcements', 'announcements', '2019-06-07 06:49:37', '2019-06-07 06:49:37'),
(74, 'edit_announcements', 'announcements', '2019-06-07 06:49:37', '2019-06-07 06:49:37'),
(75, 'add_announcements', 'announcements', '2019-06-07 06:49:37', '2019-06-07 06:49:37'),
(76, 'delete_announcements', 'announcements', '2019-06-07 06:49:37', '2019-06-07 06:49:37'),
(77, 'browse_videos', 'videos', '2019-06-07 08:13:21', '2019-06-07 08:13:21'),
(78, 'read_videos', 'videos', '2019-06-07 08:13:21', '2019-06-07 08:13:21'),
(79, 'edit_videos', 'videos', '2019-06-07 08:13:21', '2019-06-07 08:13:21'),
(80, 'add_videos', 'videos', '2019-06-07 08:13:21', '2019-06-07 08:13:21'),
(81, 'delete_videos', 'videos', '2019-06-07 08:13:21', '2019-06-07 08:13:21'),
(92, 'browse_minister_staffs', 'minister_staffs', '2019-06-10 05:57:01', '2019-06-10 05:57:01'),
(93, 'read_minister_staffs', 'minister_staffs', '2019-06-10 05:57:01', '2019-06-10 05:57:01'),
(94, 'edit_minister_staffs', 'minister_staffs', '2019-06-10 05:57:01', '2019-06-10 05:57:01'),
(95, 'add_minister_staffs', 'minister_staffs', '2019-06-10 05:57:01', '2019-06-10 05:57:01'),
(96, 'delete_minister_staffs', 'minister_staffs', '2019-06-10 05:57:01', '2019-06-10 05:57:01'),
(97, 'browse_ministry_staffs', 'ministry_staffs', '2019-06-10 09:10:30', '2019-06-10 09:10:30'),
(98, 'read_ministry_staffs', 'ministry_staffs', '2019-06-10 09:10:30', '2019-06-10 09:10:30'),
(99, 'edit_ministry_staffs', 'ministry_staffs', '2019-06-10 09:10:30', '2019-06-10 09:10:30'),
(100, 'add_ministry_staffs', 'ministry_staffs', '2019-06-10 09:10:30', '2019-06-10 09:10:30'),
(101, 'delete_ministry_staffs', 'ministry_staffs', '2019-06-10 09:10:30', '2019-06-10 09:10:30'),
(102, 'browse_partners', 'partners', '2019-06-10 10:04:06', '2019-06-10 10:04:06'),
(103, 'read_partners', 'partners', '2019-06-10 10:04:06', '2019-06-10 10:04:06'),
(104, 'edit_partners', 'partners', '2019-06-10 10:04:06', '2019-06-10 10:04:06'),
(105, 'add_partners', 'partners', '2019-06-10 10:04:06', '2019-06-10 10:04:06'),
(106, 'delete_partners', 'partners', '2019-06-10 10:04:06', '2019-06-10 10:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
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
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
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
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-06-04 08:24:51', '2019-06-04 08:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-06-04 08:24:50', '2019-06-04 08:24:50'),
(2, 'user', 'Normal User', '2019-06-04 08:24:50', '2019-06-04 08:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-06-04 08:24:51', '2019-06-04 08:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$1FUAdyDy0Z//7bBae1erNepySXNN6XWbeOVgaQb6/W/Z.4SnVFm.u', 'alfSNMTBZZOWDIMNardgYtKZo9woCs5Qc4avLrB98MgMcJmFREzcxGCz4nyG', NULL, '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(2, 2, 'User', 'user@mail.com', 'users/default.png', '$2y$10$NtgTwDgkt5DJBwizshRHVe1pBmtLQSdl9qeWw4JEBiwxUie/3HUgO', 'YX6Zrnmn00kzaOkcGHw8Pin4a8nHfDGO7TXO88hDTKAtXZEoTEyRc88r66wq', '{"locale":"en"}', '2019-06-06 05:09:50', '2019-06-06 05:09:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_individual_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `date`, `video_url`, `video_individual_url`, `created_at`, `updated_at`) VALUES
(1, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»', '2019-06-04', 'https://youtu.be/A_xWDAbnBSU', '#', '2019-06-07 08:15:00', '2019-06-07 08:29:50'),
(2, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ» 2', '2019-06-09', 'https://youtu.be/wOXZM9Bzhdw', '#', '2019-06-07 08:16:00', '2019-06-07 08:24:21'),
(3, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ» 3', '2019-06-07', 'https://youtu.be/wOXZM9Bzhdw', '#', '2019-06-07 08:16:00', '2019-06-07 08:24:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `homepage_sliders`
--
ALTER TABLE `homepage_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minister_staffs`
--
ALTER TABLE `minister_staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ministry_staffs`
--
ALTER TABLE `ministry_staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `homepage_sliders`
--
ALTER TABLE `homepage_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `minister_staffs`
--
ALTER TABLE `minister_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ministry_staffs`
--
ALTER TABLE `ministry_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
