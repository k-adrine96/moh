-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 17, 2019 at 04:45 PM
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
-- Table structure for table `cover_photos`
--

CREATE TABLE `cover_photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'media_picker', 'Page Image', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'select_dropdown', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
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
(97, 12, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 5),
(98, 12, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(99, 12, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 7),
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
(127, 25, 'name', 'select_dropdown', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
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
(145, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(146, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(147, 29, 'page_name', 'text', 'Page Name', 1, 1, 1, 0, 1, 1, '{}', 2),
(148, 29, 'page_slug', 'text', 'Page Slug', 1, 1, 1, 0, 1, 1, '{}', 3),
(149, 29, 'page_text1', 'rich_text_box', 'Page Text1', 1, 1, 1, 1, 1, 1, '{}', 4),
(150, 29, 'page_text2', 'rich_text_box', 'Page Text2', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 5),
(151, 29, 'page_text3', 'rich_text_box', 'Page Text3', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 6),
(152, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(153, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(172, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 33, 'minister_pic', 'image', 'Minister Picture', 1, 1, 1, 1, 1, 1, '{}', 2),
(174, 33, 'minister_personal_info_pic', 'image', 'Minister Personal Info Picture', 1, 1, 1, 1, 1, 1, '{}', 3),
(175, 33, 'minister_personal_info_pic_title', 'text', 'Minister Personal Info Picture Title', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 4),
(176, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(177, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(178, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(179, 34, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(180, 34, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(181, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(182, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(183, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(184, 35, 'name', 'text', 'Info Date/Year', 0, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 3),
(185, 35, 'description', 'text', 'Info Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(186, 35, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(187, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(188, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(189, 35, 'minister_info_belongsto_minister_info_category_relationship', 'relationship', 'minister_info_categories', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\MinisterInfoCategory","table":"minister_info_categories","type":"belongsTo","column":"category_id","key":"id","label":"name","pivot_table":"announcements","pivot":"0","taggable":"0"}', 7),
(190, 35, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{"validation":{"rule":"nullable"}}', 5),
(191, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(192, 37, 'page_name', 'text', 'Page Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(193, 37, 'page_slug', 'text', 'Page Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(194, 37, 'page_cover_photo', 'image', 'Page Cover Photo', 1, 1, 1, 1, 1, 1, '{}', 4),
(195, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(196, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

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
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"desc","default_search_key":null,"scope":null}', '2019-06-04 08:24:51', '2019-06-14 04:15:22'),
(7, 'cars', 'cars', 'Car', 'Cars', NULL, 'App\\Car', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-05 10:41:25', '2019-06-13 08:59:41'),
(9, 'homepage_sliders', 'homepage-sliders', 'Homepage Slider', 'Homepage Sliders', NULL, 'App\\HomepageSlider', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-06 04:32:45', '2019-06-06 07:26:58'),
(12, 'news', 'news', 'News', 'News', NULL, 'App\\News', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-07 04:47:54', '2019-06-14 09:18:51'),
(20, 'announcements', 'announcements', 'Announcement', 'Announcements', NULL, 'App\\Announcements', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-07 06:49:37', '2019-06-07 07:09:12'),
(22, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Videos', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-07 08:13:21', '2019-06-07 08:13:21'),
(25, 'minister_staffs', 'minister-staff', 'Minister Staff', 'Minister Staffs', NULL, 'App\\MinisterStaff', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-10 05:57:01', '2019-06-13 04:12:50'),
(26, 'ministry_staffs', 'ministry-staff', 'Ministry Staff', 'Ministry Staffs', NULL, 'App\\MinistryStaff', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-10 09:10:30', '2019-06-10 09:10:30'),
(28, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Partners', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-10 10:04:06', '2019-06-10 10:04:06'),
(29, 'pages_texts', 'pages-texts', 'Pages Text', 'Pages Texts', NULL, 'App\\PagesTexts', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-12 04:28:01', '2019-06-13 08:39:33'),
(33, 'minister_pages', 'minister-page', 'Minister Page', 'Minister Page', NULL, 'App\\MinisterPage', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-13 08:37:53', '2019-06-13 08:42:13'),
(34, 'minister_info_categories', 'minister-info-categories', 'Minister Info Category', 'Minister Info Categories', NULL, 'App\\MinisterInfoCategory', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-13 09:18:22', '2019-06-13 09:18:22'),
(35, 'minister_infos', 'minister-infos', 'Minister Info', 'Minister Infos', NULL, 'App\\MinisterInfo', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2019-06-13 09:32:53', '2019-06-13 10:28:25'),
(37, 'cover_photos', 'cover-photos', 'Cover Photo', 'Cover Photos', NULL, 'App\\CoverPhotos', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2019-06-17 08:09:10', '2019-06-17 08:09:10');

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
(27, 1, 'Ministry', '', '_self', NULL, '#000000', NULL, 12, '2019-06-10 05:23:41', '2019-06-13 08:32:39', NULL, ''),
(31, 1, 'Minister\'s Staff', '', '_self', NULL, '#000000', 27, 4, '2019-06-10 05:57:01', '2019-06-13 09:48:26', 'voyager.minister-staff.index', 'null'),
(32, 1, 'Ministry Staff', '', '_self', NULL, '#000000', 27, 5, '2019-06-10 09:10:30', '2019-06-13 09:48:26', 'voyager.ministry-staff.index', 'null'),
(33, 1, 'Partners', '', '_self', NULL, NULL, NULL, 13, '2019-06-10 10:04:06', '2019-06-13 08:32:39', 'voyager.partners.index', NULL),
(34, 1, 'Pages Texts', '', '_self', NULL, NULL, NULL, 14, '2019-06-12 04:28:01', '2019-06-13 08:32:39', 'voyager.pages-texts.index', NULL),
(39, 1, 'Minister Page', '', '_self', NULL, NULL, 27, 1, '2019-06-13 08:37:53', '2019-06-13 08:38:20', 'voyager.minister-page.index', NULL),
(40, 1, 'Minister Info Categories', '', '_self', NULL, NULL, 27, 2, '2019-06-13 09:18:22', '2019-06-13 09:48:22', 'voyager.minister-info-categories.index', NULL),
(41, 1, 'Minister Infos', '', '_self', NULL, NULL, 27, 3, '2019-06-13 09:32:54', '2019-06-13 09:48:26', 'voyager.minister-infos.index', NULL),
(42, 1, 'Cover Photos', '', '_self', NULL, NULL, NULL, 15, '2019-06-17 08:09:10', '2019-06-17 08:09:10', 'voyager.cover-photos.index', NULL);

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
(47, '2019_06_10_140028_create_partners_table', 21),
(48, '2019_06_12_080821_create_pages_texts_table', 22),
(49, '2019_06_13_114430_create_minister_pages_table', 23),
(50, '2019_06_13_120030_create_minister_pages_table', 24),
(54, '2019_06_13_130325_create_minister_info_categories_table', 25),
(55, '2019_06_13_132757_create_minister_infos_table', 26),
(56, '2019_06_13_142439_add_url_to_minister_infos_table', 27),
(57, '2019_06_14_095043_create_minister_history_categories_table', 28),
(58, '2019_06_14_135727_drop_url_from_news_table', 28),
(59, '2019_06_17_065247_drop_video_individual_url_from_videos_table', 29),
(60, '2019_06_17_113519_create_cover_photos_table', 30);

-- --------------------------------------------------------

--
-- Table structure for table `minister_history_categories`
--

CREATE TABLE `minister_history_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `minister_infos`
--

CREATE TABLE `minister_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_infos`
--

INSERT INTO `minister_infos` (`id`, `name`, `description`, `url`, `category_id`, `created_at`, `updated_at`) VALUES
(3, '2004-2006', 'սովորել է ՀՀ ԱՆ ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտում՝ սոցիալական հիգիենա և առողջապահության կազմակերպում մասնագիտությամբ', '#', 2, '2019-06-13 09:52:00', '2019-06-13 10:40:19'),
(4, '1988-2004', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '', 2, '2019-06-13 09:52:59', '2019-06-13 09:52:59'),
(5, '2004-2005', '«Իրական աշխարհ, իրական մարդիկ» ՀԿ, Սոցիալական աշխատողների խմբի ղեկավար', '', 3, '2019-06-13 09:53:40', '2019-06-13 09:53:40'),
(6, '2005-2010', 'Առողջության առաջնային պահպանման բարեփոխումների ծրագիր, Ընտանեկան բժշկության և բուժօգնության որակի համակարգող', '', 3, '2019-06-13 09:54:03', '2019-06-13 09:54:03'),
(7, '2010-2011', 'ՀՀ ԱՆ տուբերկուլոզի դեմ պայքարի ազգային կենտրոն, Մոնիտորինգի և գնահատման բաժնի վարիչ, Տնօրենի ժամանակավոր պաշտոնակատար', '', 3, '2019-06-13 09:54:26', '2019-06-13 09:54:26'),
(8, '2011-2015 2016-2018', '«ՄԻԲՍ» բժշկա-ախտորոշիչ կենտրոն, տնօրեն', '', 3, '2019-06-13 09:55:15', '2019-06-13 09:55:15'),
(9, '12.05.2018', 'Հայաստանի Հանրապետության առողջապահության նախարարն է', '', 3, '2019-06-13 09:55:42', '2019-06-13 09:55:42'),
(10, '18.01.2019', 'հանրապետության նախագահի հրամանագրով վերանշանակվել է առողջապահության նախարար', '', 3, '2019-06-13 09:56:14', '2019-06-13 09:56:14'),
(11, '2015-2016', 'Ծառայել է ՀՀ զինված ուժերում: Ունի բ/ծ լեյտենանտի կոչում։', '', 4, '2019-06-13 09:57:01', '2019-06-13 09:57:01'),
(12, NULL, 'Մասնակցել է բազմաթիվ գիտաժողովներիև դասընթացների: Հեղինակ է հայաստանյան և միջազգային գիտական ամսագրերում տպագրված մի շարք հոդվածների:', '#', 4, '2019-06-13 10:03:00', '2019-06-13 10:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `minister_info_categories`
--

CREATE TABLE `minister_info_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_info_categories`
--

INSERT INTO `minister_info_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'ԿՐԹՈՒԹՅՈՒՆ', 'education', '2019-06-13 09:49:12', '2019-06-13 09:49:12'),
(3, 'ԱՇԽԱՏԱՆՔԱՅԻՆ ԳՈՐԾՈՒՆԵՈՒԹՅՈՒՆ', 'work-experience', '2019-06-13 09:50:09', '2019-06-13 09:50:09'),
(4, 'ԱՅԼ ՏՎՅԱԼՆԵՐ', 'other-info', '2019-06-13 09:50:33', '2019-06-13 09:50:33');

-- --------------------------------------------------------

--
-- Table structure for table `minister_pages`
--

CREATE TABLE `minister_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `minister_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minister_personal_info_pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minister_personal_info_pic_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_pages`
--

INSERT INTO `minister_pages` (`id`, `minister_pic`, `minister_personal_info_pic`, `minister_personal_info_pic_title`, `created_at`, `updated_at`) VALUES
(2, 'minister-page/June2019/tQ3egZnrn5E4rzCwHGxF.png', 'minister-page/June2019/FiipLV7pNoii183YUSx5.png', 'Ամուսնացած է ունի երկու զավակ։', '2019-06-13 10:33:21', '2019-06-13 10:33:21');

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
(4, 'հհ առողջապահության նախարար 4', 'ալինա նիկողոսյան 4', '(+74 60)80 80-03/1123', 'minister@moh.am', 'minister-staff/June2019/ROcEYES2P2d0oPLcAYzt.png', '<h1>Ալինա Նիկողոսյանը իրականացնում է՝</h1>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>նախարարության` արտաքին հարաբերությունների ոլորտում իրականացվող միջպետական, ներառյալ ԱՊՀերկրների և Եվրասիական տնտեսական միության հետ համագործակցության շրջանակում իրականացվող աշխատանքների համակարգումը` նախարարության միջազգային հարաբերությունների վարչության միջոցով,</li>\r\n<li>առողջապահության քաղաքականության, ստվերային շրջանառության դեմ պայքարի, առողջապահության ոլորտի օրենսդրության մշակման և կատարելագործման աշխատանքների համակարգումը` նախարարության իրավաբանական վարչության միջոցով,</li>\r\n<li>կոռուպցիայի դեմ պայքարի աշխատանքների համակարգումը` հակակոռուպցիոն ծրագրերի իրականացումը համակարգող ստորաբաժանում հանդիսացող նախարարության իրավաբանական վարչության, քաղաքացիների բողոքների և դիմումների արագ արձագանքման բաժնի, ոլորտային իրավասու այլ կառուցվածքային և առանձնացված ստորաբաժանումների միջոցով,</li>\r\n<li>դեղերի շրջանառության պետական կարգավորման ոլորտում իրականացվող աշխատանքների համակարգումը` նախարարության դեղորայքային քաղաքականության և բժշկական տեխնոլոգիաների վարչության, &laquo;Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն&raquo; փակ բաժնետիրական ընկերության միջոցով,</li>\r\n<li>առողջապահության բնագավառում լիցենզավորման ենթակա գործունեության տեսակների լիցենզավորման և գովազդի թույլտվությունների տրամադրման աշխատանքների համակարգումը` նախարարության&nbsp; լիցենզավորման գործակալության միջոցով:</li>\r\n</ul>', '2019-06-10 06:00:00', '2019-06-11 05:06:14');

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
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `images`, `video`, `date`, `created_at`, `updated_at`) VALUES
(1, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ', '<p><span style="color: #222222; font-family: \'dejavu sans mono\', monospace; font-size: 11px; white-space: pre-wrap;">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ</span></p>', '["news\\/June2019\\/uCE6MXjF1srFAA8XyBzE.png","news\\/June2019\\/OZvbpD3nddDWSLq0U3M8.png","news\\/June2019\\/VMr51567mvub0tzN53uK.png"]', 'https://youtu.be/h56M8Ti6Ejw', '2019-06-12', '2019-06-07 07:56:35', '2019-06-07 07:56:35'),
(2, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ 2', '<p><span style="color: #222222; font-family: \'dejavu sans mono\', monospace; font-size: 11px; white-space: pre-wrap;">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ 2</span></p>', '["news\\/June2019\\/65OSEyWqVlwdfDmAL5GH.png","news\\/June2019\\/kw8fxHPaTIzrNCqdm5n1.png","news\\/June2019\\/2bdjyn2d44YpyyrxLUSK.png"]', 'https://youtu.be/h56M8Ti6Ejw', '2019-06-27', '2019-06-07 07:57:36', '2019-06-07 07:57:36'),
(3, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ 3', '<p><span style="color: #222222; font-family: \'dejavu sans mono\', monospace; font-size: 11px; white-space: pre-wrap;">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ 3</span></p>', '["news\\/June2019\\/lL13LrPgz4vaNAdop7Qm.png","news\\/June2019\\/MbVKOXwlaHcLob0VeNnK.png","news\\/June2019\\/L3NBHJf1Ngq49G9hmsyR.png"]', 'https://youtu.be/h56M8Ti6Ejw', '2019-06-04', '2019-06-07 07:58:18', '2019-06-07 07:58:18');

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
(2, 1, 'Test', 'test', '', 'pages/June2019/fvx3ADOOJu6XKOLTRPXw.png', 'test', 'test', 'test', 'ACTIVE', '2019-06-05 10:07:07', '2019-06-14 04:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `pages_texts`
--

CREATE TABLE `pages_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text2` longtext COLLATE utf8mb4_unicode_ci,
  `page_text3` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_texts`
--

INSERT INTO `pages_texts` (`id`, `page_name`, `page_slug`, `page_text1`, `page_text2`, `page_text3`, `created_at`, `updated_at`) VALUES
(1, 'ԱՌԱՔԵԼՈՒԹՅՈՒՆ', 'mission', '<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111</p>', NULL, NULL, '2019-06-12 04:33:00', '2019-06-14 05:56:21'),
(3, 'ՀԵՏԱԴԱՐՁ ԿԱՊ', 'contact-us', '<h1>Հարգելի այցելու,</h1>\r\n<ul>\r\n<li>այս էջի միջոցով կարող եք առցանց դիմում գրել կամ տեղեկատվություն ստանալու համար պաշտոնական հարցում ուղարկել: Հարցման պարագայում խնդրում ենք օգտվել տեղեկատվության հարցման օրինակելի ձևից:</li>\r\n<li>Դիմումի ձևը` <img src="http://moh.loc/storage/docx-icon.png" alt="" /><a href="http://moh.loc/storage/test." download="">asdasdasd</a></li>\r\n<li>Տեղեկացնում ենք, որ դիմումը և հարցումը պետք է ստորագրված լինեն: Դիմումը կամ հարցումը ստանալուց հետո էլեկտրոնային փոստով Ձեզ կտրամադրվի 12 նիշանոց հսկիչ համար, որը մուտքագրելով այս դաշտում, կարող եք նաև առցանց հետևել նամակի ընթացքին:</li>\r\n</ul>', '<ul class="contact__us--text2">\r\n<li>Տեղեկատվության ազատության համար պատասխանատու պաշտոնատար անձ, <span class="span">Լիլիթ Բաբախանյան</span></li>\r\n<li>ՀՀ ԱՆ աշխատակազմի հասարակայնության հետ կապերի բաժին</li>\r\n<li>Հեռ. (+374 60) 80-80-03 / 2301; 2302,</li>\r\n<li>էլ. փոստ՝&nbsp;<a>pr@moh.am</a></li>\r\n</ul>', NULL, '2019-06-12 08:01:00', '2019-06-13 03:36:52'),
(4, 'ՆԱԽԱՐԱՐ', 'minister-page', '<h2>Հարգելի քաղաքացի</h2>\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:</p>', '<h1>Հարգելիներս</h1>\r\n<p>իմ նպատակը առողջապահության նախարարության թափանցիկ, արդյունավետ և անխափան աշխատանքի ապահովումն է ու պատասխանատվության ճիշտ բաշխումը:</p>\r\n<p>Խոստանում ենք ջանք չխնայել և ուժերի ներածի չափով Ձեր կողքին լինել ու պատրաստ ենք արձագանքել Ձեր խնդիրներին, դժգոհություններին, մեր համակարգում Ձեր առջև ծառացած ամենատարբեր հարցերին: &laquo;Թեժ գծով&raquo;` 8003, պատրաստ ենք լսել Ձեզ: Հարցերի լուծումն անձնապես իմ ուշադրության կենտրոնում է լինելու:</p>\r\n<h4>Սիրով՝ Արսեն Թորոսյան</h4>', NULL, '2019-06-13 04:26:00', '2019-06-13 07:23:29'),
(5, 'Կանոնադրություն', 'charter', '<h1>Հայաստանի Հանրապետության վարչապետ</h1>\n<h2>որոշում</h2>\n<h3>11 հունիսի 2018 թվականի N 728-L</h3>', '<h1>Հայաստանի Հանրապետության առողջապահության նախարարության կանոնադրությունը հաստատելու մասին</h1>\r\n<p>Հիմք ընդունելով &lt;&lt; Պետական կառավարման համակարգի մարմինների մասին&gt;&gt; Հայաստանի Հանրապետության օրենքի 7-րդ հոդվածի 9-րդ մասը և &lt;&lt; Կառավարության կառուցվածքի և գործունեության մասին&gt;&gt; Հայստանի Հանրապետության օրենքի 7-րդ հոդվածի 10-րդ մասը՝</p>\r\n<p>Հաստատել Հայաստանի Հանրապետության առոջղապահության նախարարության կանոնադրությունը՝ համաձայն հավելվածի</p>\r\n<p>Հայաստանի Հանրապետության վարչապետ <strong>Ն․ Փաշինյան</strong></p>', '<p><a href="http://moh.loc/storage/test.">asd</a></p>', '2019-06-14 03:33:00', '2019-06-14 04:19:18');

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
(106, 'delete_partners', 'partners', '2019-06-10 10:04:06', '2019-06-10 10:04:06'),
(107, 'browse_pages_texts', 'pages_texts', '2019-06-12 04:28:01', '2019-06-12 04:28:01'),
(108, 'read_pages_texts', 'pages_texts', '2019-06-12 04:28:01', '2019-06-12 04:28:01'),
(109, 'edit_pages_texts', 'pages_texts', '2019-06-12 04:28:01', '2019-06-12 04:28:01'),
(110, 'add_pages_texts', 'pages_texts', '2019-06-12 04:28:01', '2019-06-12 04:28:01'),
(111, 'delete_pages_texts', 'pages_texts', '2019-06-12 04:28:01', '2019-06-12 04:28:01'),
(127, 'browse_minister_pages', 'minister_pages', '2019-06-13 08:37:53', '2019-06-13 08:37:53'),
(128, 'read_minister_pages', 'minister_pages', '2019-06-13 08:37:53', '2019-06-13 08:37:53'),
(129, 'edit_minister_pages', 'minister_pages', '2019-06-13 08:37:53', '2019-06-13 08:37:53'),
(130, 'add_minister_pages', 'minister_pages', '2019-06-13 08:37:53', '2019-06-13 08:37:53'),
(131, 'delete_minister_pages', 'minister_pages', '2019-06-13 08:37:53', '2019-06-13 08:37:53'),
(132, 'browse_minister_info_categories', 'minister_info_categories', '2019-06-13 09:18:22', '2019-06-13 09:18:22'),
(133, 'read_minister_info_categories', 'minister_info_categories', '2019-06-13 09:18:22', '2019-06-13 09:18:22'),
(134, 'edit_minister_info_categories', 'minister_info_categories', '2019-06-13 09:18:22', '2019-06-13 09:18:22'),
(135, 'add_minister_info_categories', 'minister_info_categories', '2019-06-13 09:18:22', '2019-06-13 09:18:22'),
(136, 'delete_minister_info_categories', 'minister_info_categories', '2019-06-13 09:18:22', '2019-06-13 09:18:22'),
(137, 'browse_minister_infos', 'minister_infos', '2019-06-13 09:32:54', '2019-06-13 09:32:54'),
(138, 'read_minister_infos', 'minister_infos', '2019-06-13 09:32:54', '2019-06-13 09:32:54'),
(139, 'edit_minister_infos', 'minister_infos', '2019-06-13 09:32:54', '2019-06-13 09:32:54'),
(140, 'add_minister_infos', 'minister_infos', '2019-06-13 09:32:54', '2019-06-13 09:32:54'),
(141, 'delete_minister_infos', 'minister_infos', '2019-06-13 09:32:54', '2019-06-13 09:32:54'),
(142, 'browse_cover_photos', 'cover_photos', '2019-06-17 08:09:10', '2019-06-17 08:09:10'),
(143, 'read_cover_photos', 'cover_photos', '2019-06-17 08:09:10', '2019-06-17 08:09:10'),
(144, 'edit_cover_photos', 'cover_photos', '2019-06-17 08:09:10', '2019-06-17 08:09:10'),
(145, 'add_cover_photos', 'cover_photos', '2019-06-17 08:09:10', '2019-06-17 08:09:10'),
(146, 'delete_cover_photos', 'cover_photos', '2019-06-17 08:09:10', '2019-06-17 08:09:10');

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
(38, 1),
(39, 1),
(40, 1),
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
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 1),
(99, 2),
(100, 1),
(100, 2),
(101, 1),
(101, 2),
(102, 1),
(102, 2),
(103, 1),
(103, 2),
(104, 1),
(104, 2),
(105, 1),
(105, 2),
(106, 1),
(106, 2),
(107, 1),
(107, 2),
(108, 1),
(108, 2),
(109, 1),
(109, 2),
(110, 1),
(111, 1),
(127, 1),
(127, 2),
(128, 1),
(128, 2),
(129, 1),
(129, 2),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(137, 2),
(138, 1),
(138, 2),
(139, 1),
(139, 2),
(140, 1),
(140, 2),
(141, 1),
(141, 2),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1);

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
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-06-04 08:24:51', '2019-06-04 08:24:51'),
(31, 'pages_texts', 'page_text1', 4, 'hy', '<h1>Ուղերձ</h1>\r\n<div class="message__content--info d-flex">\r\n<div class="message__content--info--text">\r\n<h2>Հարգելի քաղաքացի</h2>\r\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\r\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\r\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\r\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:1111111111111111</p>\r\n</div>\r\n<div class="message__content--info--image" style="background-image: url(\'http://moh.loc/storage/minister-photo.png\');"> </div>\r\n</div>', '2019-06-13 07:02:52', '2019-06-13 07:02:52'),
(32, 'pages_texts', 'page_text1', 4, 'ru', '<h1>Ուղերձ</h1>\r\n<div class="message__content--info d-flex">\r\n<div class="message__content--info--text">\r\n<h2>Հարգելի քաղաքացի</h2>\r\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\r\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\r\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\r\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:1111111111111111</p>\r\n</div>\r\n<div class="message__content--info--image" style="background-image: url(\'http://moh.loc/storage/minister-photo.png\');"> </div>\r\n</div>', '2019-06-13 07:02:52', '2019-06-13 07:02:52'),
(33, 'pages_texts', 'page_text1', 1, 'hy', '<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\r\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\r\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\r\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\r\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\r\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111111</p>', '2019-06-13 07:24:04', '2019-06-13 07:24:04'),
(34, 'pages_texts', 'page_text1', 1, 'ru', '<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\r\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\r\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\r\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\r\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\r\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111111</p>', '2019-06-13 07:24:04', '2019-06-13 07:24:04'),
(53, 'data_types', 'display_name_singular', 29, 'hy', 'Pages Text', '2019-06-13 08:39:33', '2019-06-13 08:39:33'),
(54, 'data_types', 'display_name_singular', 29, 'ru', 'Pages Text', '2019-06-13 08:39:33', '2019-06-13 08:39:33'),
(55, 'data_types', 'display_name_plural', 29, 'hy', 'Pages Texts', '2019-06-13 08:39:33', '2019-06-13 08:39:33'),
(56, 'data_types', 'display_name_plural', 29, 'ru', 'Pages Texts', '2019-06-13 08:39:33', '2019-06-13 08:39:33'),
(57, 'data_types', 'display_name_singular', 33, 'hy', 'Minister Page', '2019-06-13 08:40:42', '2019-06-13 08:40:42'),
(58, 'data_types', 'display_name_singular', 33, 'ru', 'Minister Page', '2019-06-13 08:40:42', '2019-06-13 08:40:42'),
(59, 'data_types', 'display_name_plural', 33, 'hy', 'Minister Page', '2019-06-13 08:40:42', '2019-06-13 08:40:42'),
(60, 'data_types', 'display_name_plural', 33, 'ru', 'Minister Page', '2019-06-13 08:40:42', '2019-06-13 08:40:42'),
(61, 'data_types', 'display_name_singular', 7, 'hy', 'Car', '2019-06-13 08:59:41', '2019-06-13 08:59:41'),
(62, 'data_types', 'display_name_singular', 7, 'ru', 'Car', '2019-06-13 08:59:42', '2019-06-13 08:59:42'),
(63, 'data_types', 'display_name_plural', 7, 'hy', 'Cars', '2019-06-13 08:59:42', '2019-06-13 08:59:42'),
(64, 'data_types', 'display_name_plural', 7, 'ru', 'Cars', '2019-06-13 08:59:42', '2019-06-13 08:59:42'),
(65, 'data_types', 'display_name_singular', 35, 'hy', 'Minister Info', '2019-06-13 09:58:05', '2019-06-13 09:58:05'),
(66, 'data_types', 'display_name_singular', 35, 'ru', 'Minister Info', '2019-06-13 09:58:05', '2019-06-13 09:58:05'),
(67, 'data_types', 'display_name_plural', 35, 'hy', 'Minister Infos', '2019-06-13 09:58:05', '2019-06-13 09:58:05'),
(68, 'data_types', 'display_name_plural', 35, 'ru', 'Minister Infos', '2019-06-13 09:58:05', '2019-06-13 09:58:05'),
(69, 'pages_texts', 'page_text1', 5, 'hy', '<h1>Հայաստանի Հանրապետության վարչապետ</h1>\n<h2>որոշում</h2>\n<h3>11 հունիսի 2018 թվականի N 728-L</h3>', '2019-06-14 03:39:25', '2019-06-14 03:39:25'),
(70, 'pages_texts', 'page_text1', 5, 'ru', '<h1>Հայաստանի Հանրապետության վարչապետ</h1>\n<h2>որոշում</h2>\n<h3>11 հունիսի 2018 թվականի N 728-L</h3>', '2019-06-14 03:39:25', '2019-06-14 03:39:25'),
(71, 'data_types', 'display_name_singular', 6, 'hy', 'Page', '2019-06-14 04:15:22', '2019-06-14 04:15:22'),
(72, 'data_types', 'display_name_singular', 6, 'ru', 'Page', '2019-06-14 04:15:22', '2019-06-14 04:15:22'),
(73, 'data_types', 'display_name_plural', 6, 'hy', 'Pages', '2019-06-14 04:15:22', '2019-06-14 04:15:22'),
(74, 'data_types', 'display_name_plural', 6, 'ru', 'Pages', '2019-06-14 04:15:22', '2019-06-14 04:15:22'),
(75, 'pages', 'title', 2, 'hy', 'Test', '2019-06-14 04:17:47', '2019-06-14 04:17:47'),
(76, 'pages', 'title', 2, 'ru', 'Test', '2019-06-14 04:17:47', '2019-06-14 04:17:47'),
(77, 'pages', 'slug', 2, 'hy', 'test', '2019-06-14 04:17:47', '2019-06-14 04:17:47'),
(78, 'pages', 'slug', 2, 'ru', 'test', '2019-06-14 04:17:47', '2019-06-14 04:17:47'),
(79, 'pages', 'body', 2, 'hy', '<p>test</p>', '2019-06-14 04:17:47', '2019-06-14 04:17:47'),
(80, 'pages', 'body', 2, 'ru', '<p>test</p>', '2019-06-14 04:17:47', '2019-06-14 04:17:47'),
(81, 'data_types', 'display_name_singular', 12, 'hy', 'News', '2019-06-14 09:18:51', '2019-06-14 09:18:51'),
(82, 'data_types', 'display_name_singular', 12, 'ru', 'News', '2019-06-14 09:18:51', '2019-06-14 09:18:51'),
(83, 'data_types', 'display_name_plural', 12, 'hy', 'News', '2019-06-14 09:18:51', '2019-06-14 09:18:51'),
(84, 'data_types', 'display_name_plural', 12, 'ru', 'News', '2019-06-14 09:18:51', '2019-06-14 09:18:51');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `date`, `video_url`, `created_at`, `updated_at`) VALUES
(1, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»', '2019-06-04', 'https://youtu.be/A_xWDAbnBSU', '2019-06-07 08:15:00', '2019-06-07 08:29:50'),
(2, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ» 2', '2019-06-09', 'https://youtu.be/wOXZM9Bzhdw', '2019-06-07 08:16:00', '2019-06-07 08:24:21'),
(3, 'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ» 3', '2019-06-07', 'https://youtu.be/wOXZM9Bzhdw', '2019-06-07 08:16:00', '2019-06-07 08:24:17');

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
-- Indexes for table `cover_photos`
--
ALTER TABLE `cover_photos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `minister_history_categories`
--
ALTER TABLE `minister_history_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minister_infos`
--
ALTER TABLE `minister_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `minister_infos_category_id_foreign` (`category_id`);

--
-- Indexes for table `minister_info_categories`
--
ALTER TABLE `minister_info_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minister_pages`
--
ALTER TABLE `minister_pages`
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
-- Indexes for table `pages_texts`
--
ALTER TABLE `pages_texts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cover_photos`
--
ALTER TABLE `cover_photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `minister_history_categories`
--
ALTER TABLE `minister_history_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `minister_infos`
--
ALTER TABLE `minister_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `minister_info_categories`
--
ALTER TABLE `minister_info_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `minister_pages`
--
ALTER TABLE `minister_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `pages_texts`
--
ALTER TABLE `pages_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
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
-- Constraints for table `minister_infos`
--
ALTER TABLE `minister_infos`
  ADD CONSTRAINT `minister_infos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `minister_info_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
