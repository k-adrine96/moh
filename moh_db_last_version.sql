-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 13, 2019 at 02:26 PM
-- Server version: 5.6.44
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
-- Database: `moh_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admissions`
--

CREATE TABLE `admissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admissions`
--

INSERT INTO `admissions` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Admission Parent 1', '[{\"download_link\":\"admissions\\/July2019\\/SG74fqGEvBdRIONlQ8Cf.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-08 03:26:34', '2019-07-08 03:26:34'),
(2, 'Admission Child', '[{\"download_link\":\"admissions\\/July2019\\/LxltRLDT49yYIlFoVqgt.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-08 03:26:54', '2019-07-08 03:26:54');

-- --------------------------------------------------------

--
-- Table structure for table `advertising_permissions`
--

CREATE TABLE `advertising_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertising_permissions`
--

INSERT INTO `advertising_permissions` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Advertising Permission Parent', '[{\"download_link\":\"advertising-permissions\\/July2019\\/Ub79d4N2Eg7lTx13UkST.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-08 03:27:43', '2019-07-08 03:27:43'),
(2, 'Advertising Permission Child', '[{\"download_link\":\"advertising-permissions\\/July2019\\/6wTEsHnpkQmrV3lRFVN9.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 1, 1, '2019-07-08 03:28:04', '2019-07-08 03:28:04');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `description`, `date`, `created_at`, `updated_at`, `order`) VALUES
(4, 'Հունիսի 28-ին Սևանում («Սևան» ԲԿ) տեղի կունենա «Վարդանանց» ՆԲԿ-ի կողմից կազմակերպվող «Ուղեցուցային մոտեցումները շրջանային բժշկի պրակտիկայում. գոտկացավ, քրոնիկ հազ, թոքաբորբ» թեմայով դասընթաց:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Դասընթացի <a href=\"http://www.moh.am/uploads/1619havelvac%201.pdf\">ծրագիրը</a>&nbsp;հաստատվել է ՀՀ առողջապահության նախարարի հրամանով: &laquo;Ուղեցուցային մոտեցումները շրջանային բժշկի պրակտիկայում. գոտկացավ&raquo; թեմայով դասընթացի մասնակիցներին կշնորհվի ՇՄԶ 1 տեսական կրեդիտ, &laquo;Ուղեցուցային մոտեցումները շրջանային բժշկի պրակտիկայում. քրոնիկ հազ, թոքաբորբ&raquo; թեմայով դասընթացի մասնակիցներին` ՇՄԶ 2 տեսական կրեդիտ:</p>\r\n<p>Միջոցառման կոնտակտային անձինք` Մարիամ Ավանեսյանը, հեռ․ 096-007-065 և Վահագ Վահագյանը, հեռ․ 043-31-61-64։</p>\r\n</body>\r\n</html>', '2016-06-20', '2019-06-24 08:35:00', '2019-06-24 08:44:03', 1),
(5, 'Նախարարի կամ նախարարի տեղակալների մոտ քաղաքացիների ընդունելություն', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Նախարարի կամ նախարարի տեղակալների մոտ քաղաքացիների ընդունելությունը կազմակերպվում է յուրաքանչյուր շաբաթվա աշխատանքային երեքշաբթի օրերին` ժամը 16:00-ին:Ընդունելությանը գրանցվելու համար քաղաքացիները կարող են երկուշաբթիից ուրբաթ, բացառությամբ ոչ աշխատանքային օրերի, ժամը &nbsp;09:30-12:45 և 14:00-17:30&nbsp; դիմել Հայաստանի Հանրապետության առողջապահության նախարարության տեղեկատվական կենտրոն` համաձայն գործող կարգի:</p>\r\n</body>\r\n</html>', '2019-06-21', '2019-06-24 08:42:00', '2019-06-24 08:43:51', 1),
(6, '2019 թվականի հունիսի 28-ին ժամը 16:00-ին ՀՀ առողջապահության նախարարությունում (Կառավարության տուն 3) տեղի կունենա լիցենզավորման հանձնաժողովի նիստ:', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Քննարկվելու են լիցենզիա ստանալու վերաբերյալ հետևյալ կազմակերպությունների և անհատ ձեռնարկատերերի կողմից ներկայացված հայտերը` &laquo;Մեծ Մասրիկի առողջության առաջնային պահպանման կենտրոն&raquo; ՊՈԱԿ, &laquo;Ֆարմասերվիս Դեղատուն&raquo; ՍՊԸ, &laquo;Փարսարմ&raquo; ՍՊԸ, &laquo;Դանիելյան&raquo; ՍՊԸ, &laquo;Մ.Գ. ՖԱՐՄ&raquo; ՍՊԸ, &laquo;ԳՈՒՐՄԱՆ ՖՈՒԴ&raquo; ՍՊԸ, Ա/Ձ Լուսինե Աթանեսյան, Ա/Ձ Գևորգ Գևորգյան, Ա/Ձ Ժորա Կակոյան, Ա/Ձ Թագուհի Բաբայան, Ա/Ձ Աշխեն Հաջաթյան, Ա/Ձ Կարեն Զաքարյան, Ա/Ձ Գևորգ Հակոբյան, Ա/Ձ Լուսինե Հակոբյան, Ա/Ձ Գևորգ Ղազարյան, Ա/Ձ Մարինե Սահակյան, &laquo;Մեծ Մասրիկի առողջության առաջնային պահպանման կենտրոն&raquo; ՊՈԱԿ, &laquo;Նիկոլայ Նասիբյանի Անվան Նոյեմբերյանի Բժշկական Կենտրոն&raquo; ՓԲԸ, &laquo;ԱԼՖԱ-ՖԱՐՄ&raquo; ՓԲԸ, &laquo;ՈՒիգմոր Քլինիք&raquo; ՓԲԸ, &laquo;Աջափնյակ&raquo; Բժշկական Կենտրոն ՍՊԸ, &laquo;Մաքսեդենտ&raquo; ՍՊԸ, &laquo;ԻՆՏԵՐԴԵՆՏ&raquo; ՍՊԸ, &laquo;Լ. ԱՎ ԴԵՆՏ&raquo; ՍՊԸ, Ա/Ձ Դավիթ Եփրեմյան, Ա/Ձ Նորայր Հայրունի, &laquo;Իսատիս&raquo; ՍՊԸ:</p>\r\n</body>\r\n</html>', '2019-06-20', '2019-06-24 08:45:11', '2019-06-24 08:45:11', 1),
(7, 'Էլեկտրոնային ամբուլատոր քարտի և էլեկտրոնային պատմագրի ամբողջականության ապահովում', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Էլեկտրոնային ամբուլատոր քարտի և էլեկտրոնային պատմագրի ամբողջականության ապահովման համար կարևոր է բժիշկների ներգրավումը էլեկտրոնային առողջապահության համակարգի տվյալների մուտքագրման գործընթացում:</p>\r\n<p>Արդեն իսկ սկսել ենք բժիշկներին դյուրակիր համակարգիչների բաշխման և բազային համակարգչային գիտելիքների ու էլեկտրոնային առողջապահության համակարգից օգտվելու ուսուցման դասընթացները` ՀՀ ԱՆ &laquo;Ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտում&raquo;:</p>\r\n<p>Այսպիսով` առողջապահության նախարարությունը &laquo;Միացյալ Հայ Կամավորների Լիգա&raquo; ՀԿ-ի հետ համատեղ հրավիրում է ուսանողների, որոնք պատրաստ են նույն դասընթացներին ներկա լինելուց հետո առաջին շրջանում իրենց համակարգիչների հետ միայնակ մնացած բժիշկներին օգնելու արագ հմտանալ և կիրառել ստացած գիտելիքներն աշխատանքում:</p>\r\n</body>\r\n</html>', '2019-06-18', '2019-06-24 08:52:13', '2019-06-24 08:52:13', 1),
(8, '«Պացիենտի իրավունքներ և խտրականության բացառումը բուժօգնություն տրամադրելիս»', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>ՀՀ ԱՆ &laquo;Ակադեմիկոս Ս․ Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտ&raquo; ՓԲԸ-ի կողմից ստեղծվել է &laquo;Պացիենտի իրավունքներ և խտրականության բացառումը բուժօգնություն տրամադրելիս&raquo; թեմայով էլեկտրոնային դասընթաց, որը հասանելի է &nbsp;<a href=\"http://discrimination.online-edu.am/\">http://discrimination.online-edu.am</a>&nbsp; &nbsp;հղումով։</p>\r\n<p>Էլեկտրոնային դասընթացի&nbsp;<a href=\"http://www.moh.am/uploads/1563havelvac%201.pdf\">ծրագի&shy;&shy;րը</a>&nbsp;հաստատվել է ՀՀ առողջապահության նախարարի հրամանով, մասնակիցներին կշնորհվի ՇՄԶ 2 ինքնակրթության կրեդիտ, կտրվեն վկայականներ։</p>\r\n<p>Միջոցառման կոնտակտային հեռախոսահամար՝ 010-23-71-34։</p>\r\n</body>\r\n</html>', '2019-06-17', '2019-06-24 08:54:01', '2019-06-24 08:54:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anti_corruption_events`
--

CREATE TABLE `anti_corruption_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anti_corruption_events`
--

INSERT INTO `anti_corruption_events` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Anti Corruption Event Parent 1', '[{\"download_link\":\"anti-corruption-events\\/July2019\\/Ih5NimsgC3NajR37AmHE.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 08:53:47', '2019-07-04 08:53:47'),
(2, 'Anti Corruption Event Parent 2', '[{\"download_link\":\"anti-corruption-events\\/July2019\\/d1b63ibi197nyNg0GBDa.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 08:54:05', '2019-07-04 08:54:05'),
(3, 'Anti Corruption Event Parent 3', '[{\"download_link\":\"anti-corruption-events\\/July2019\\/Q4C8E3sVfdUYVveerzbP.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 08:54:25', '2019-07-04 08:54:25'),
(4, 'Anti Corruption Event Child 1', '[{\"download_link\":\"anti-corruption-events\\/July2019\\/vkkp5ymutTYlnjCNkt6J.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 1, 1, '2019-07-04 08:54:58', '2019-07-04 08:54:58'),
(5, 'Anti Corruption Event Child 2', '[{\"download_link\":\"anti-corruption-events\\/July2019\\/OuZGHKTCxrgl6MdNRF4e.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 2, 1, '2019-07-04 08:55:17', '2019-07-04 08:55:17'),
(6, 'Anti Corruption Event Child 3', '[{\"download_link\":\"anti-corruption-events\\/July2019\\/O6Xp4HiQhasPewhHr2YA.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 3, 1, '2019-07-04 08:55:39', '2019-07-04 08:55:39');

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `budgets`
--

INSERT INTO `budgets` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `category_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"budgets\\/July2019\\/tZA4aqvkbRmg3i5Pt4Ox.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-09 09:12:22', '2019-07-09 09:12:22'),
(2, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"budgets\\/July2019\\/65t5gmI9D98XlFEbzr50.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 1, 1, '2019-07-09 09:12:42', '2019-07-09 09:12:42'),
(3, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"budgets\\/July2019\\/rQa87uH6EDLorBhZ91kr.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 2, 1, '2019-07-09 09:13:02', '2019-07-09 09:13:02'),
(4, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"budgets\\/July2019\\/A54UzdTSzit27XxhMv5T.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 2, 1, '2019-07-09 09:13:26', '2019-07-09 09:13:26'),
(5, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"budgets\\/July2019\\/qHs8FzRHvRBNC3niK30B.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2020-01-01', 3, 1, '2019-07-09 09:13:49', '2019-07-09 09:13:49'),
(6, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"budgets\\/July2019\\/DN0Wl020fQF3t1ELaBIi.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 3, 1, '2019-07-09 09:14:09', '2019-07-09 09:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `budget_categories`
--

CREATE TABLE `budget_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `budget_categories`
--

INSERT INTO `budget_categories` (`id`, `year`, `order`, `created_at`, `updated_at`) VALUES
(1, '2017', 1, '2019-07-09 09:11:48', '2019-07-09 09:11:48'),
(2, '2018', 1, '2019-07-09 09:11:53', '2019-07-09 09:11:53'),
(3, '2019', 1, '2019-07-09 09:11:59', '2019-07-09 09:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cover_photos`
--

INSERT INTO `cover_photos` (`id`, `page_name`, `page_slug`, `page_cover_photo`, `created_at`, `updated_at`, `order`) VALUES
(1, 'ՀԵՏԱԴԱՐՁ ԿԱՊ', 'contact-us', 'cover-photos/June2019/MUteE6WVivYuChXVz2Ge.png', '2019-06-17 10:19:59', '2019-06-17 10:19:59', 1),
(2, 'ՆԱԽԱՐԱՐ', 'minister-page', 'cover-photos/June2019/emPrkoNnfZzQQaRVgpgX.png', '2019-06-17 10:20:00', '2019-06-17 10:42:01', 1),
(3, 'ՆԱԽԱՐԱՐԻ ԱՇԽԱՏԱԿԱԶՄ', 'minister-staff', 'cover-photos/June2019/7SGtJ1qoDdzGcDT4KcpA.png', '2019-06-17 10:31:42', '2019-06-17 10:31:42', 1),
(4, 'ՆՈՐՈՒԹՅՈՒՆՆԵՐ', 'all-news', 'cover-photos/June2019/eqb10s4WtArTkCc6nCrL.png', '2019-06-17 10:39:39', '2019-06-17 10:39:39', 1),
(5, 'ՀԱՅՏԱՐԱՐՈՒԹՅՈՒՆՆԵՐ', 'announcement', 'cover-photos/June2019/mwmJ9VuHNwjZ7kqwOhCe.png', '2019-06-17 10:41:47', '2019-06-17 10:41:47', 1),
(6, 'ԲՅՈՒՋԵ', 'budget', 'cover-photos/June2019/UPOaN8T8MbpKvmMbME9U.png', '2019-06-17 10:49:15', '2019-06-17 10:49:15', 1),
(7, 'ԿԱՆՈՆԱԴՐՈՒԹՅՈՒՆ', 'charter', 'cover-photos/June2019/2njGsRFoJ8LCNUaU5Ava.png', '2019-06-17 10:52:36', '2019-06-17 10:52:36', 1),
(8, 'FAQ', 'faq', 'cover-photos/June2019/w6mXaZCMAu070dzDFuqe.png', '2019-06-17 10:55:01', '2019-06-17 10:55:01', 1),
(9, 'ՊԱՏՄՈՒԹՅՈՒՆ', 'history', 'cover-photos/June2019/FHwoHER5XIjiQpVw5EWn.png', '2019-06-17 10:57:09', '2019-06-17 10:57:09', 1),
(10, 'ԻՐԱՎԱԿԱՆ ԱԿՏԵՐ', 'legal-acts', 'cover-photos/June2019/EWEMrGzVT2rxWuqCE94P.png', '2019-06-17 10:59:42', '2019-06-17 10:59:42', 1),
(11, 'ՀՂՈՒՄՆԵՐ', 'links', 'cover-photos/June2019/1XhTXoCFv1qTp6RqJO6F.png', '2019-06-17 11:01:36', '2019-06-17 11:01:36', 1),
(12, 'ՆԱԽԱՐԱՐՈՒԹՅԱՆ ԱՇԽԱՏԱԿԱԶՄ', 'ministry-staff', 'cover-photos/June2019/IAxm1y1VuQj7oXXbgpng.png', '2019-06-17 11:04:50', '2019-06-17 11:04:50', 1),
(13, 'ԿԱՌՈՒՑՎԱԾՔԻ ԳԾԱՊԱՏԿԵՐ', 'ministry-structure', 'cover-photos/June2019/7jt0DO7z26o9g0a9s4zF.png', '2019-06-17 11:07:06', '2019-06-17 11:07:06', 1),
(14, 'ԱՌԱՔԵԼՈՒԹՅՈՒՆ', 'mission', 'cover-photos/June2019/yeUxcZGgpf8VwGnuljza.png', '2019-06-17 11:08:49', '2019-06-17 11:08:49', 1),
(15, 'ՆԱԽԱՐԱՐԻՆ ԿԻՑ ՀԱՍԱՐԱԿԱԿԱՆ ԽՈՐՀՈՒՐԴ', 'public-council', 'cover-photos/June2019/wTg82iPpHLRtLiCce9j0.png', '2019-06-17 11:11:11', '2019-06-17 11:11:11', 1),
(16, 'ՀԱՅՏԱՐԱՐՈՒԹՅՈՒՆ', 'single-announcement', 'cover-photos/June2019/uQxRPCAii6s4wdlKk2rE.png', '2019-06-17 11:16:16', '2019-06-17 11:16:16', 1),
(17, 'ՆՈՐՈՒԹՅՈՒՆ', 'single-news', 'cover-photos/June2019/m5J9SH5pz79eTF2QnE0l.png', '2019-06-17 11:18:59', '2019-06-17 11:18:59', 1),
(18, 'Վիդեո-Ինդիվիդուալ', 'single-video', 'cover-photos/June2019/nhDRcj5ITQFSaBxx2Yu7.png', '2019-06-17 11:21:00', '2019-06-17 11:22:02', 1),
(19, 'ՀԱՍՏԻՔԱՑՈՒՑԱԿ', 'staffing-staff-list', 'cover-photos/June2019/i9emFwU7dtFHGfOlEwto.png', '2019-06-17 11:24:00', '2019-07-09 10:28:31', 1),
(20, 'Ելույթներ և հարցազրույցներ', 'speeches-interviews', 'cover-photos/June2019/SPF2Ksd4TbU110YQc3wB.png', '2019-06-19 04:53:19', '2019-06-19 04:53:19', 1),
(21, 'Հաշվետվություններ', 'reports', 'cover-photos/June2019/YvFlqMaf9ZoxP8LU6Tqp.png', '2019-06-19 09:02:26', '2019-06-19 09:02:26', 1),
(22, 'Մամուլի հաղորդագրություն', 'press-release', 'cover-photos/June2019/enVvg4ydCuzwOhRD8RNg.png', '2019-06-20 05:31:43', '2019-06-20 05:31:43', 1),
(23, 'Հետազոտություններ', 'researches', 'cover-photos/June2019/AY1hqtD42Ymg7Xg5ZhiK.png', '2019-06-20 07:24:08', '2019-06-20 07:24:08', 1),
(24, 'Վիճակագրություն', 'statistics', 'cover-photos/June2019/AuWyxwgJyPLpTfsPPmVN.png', '2019-06-20 07:34:49', '2019-06-20 07:34:49', 1),
(25, 'Տեղեկատու', 'informative', 'cover-photos/June2019/3alGr9cQOd1FbvZtMixB.png', '2019-06-20 07:51:26', '2019-06-20 07:51:26', 1),
(26, 'Պատմություն', 'history', 'cover-photos/June2019/3ePohj9amw3hzh4oJYpx.png', '2019-06-24 06:45:36', '2019-06-24 06:45:36', 1),
(27, 'Միջոցառումներ/հակակոռուպցիոն', 'anti-corruption-events', 'cover-photos/July2019/Th7TVyEclGC2ygR5SPM2.png', '2019-07-04 08:56:38', '2019-07-04 08:56:38', 1),
(28, 'Սկրինինգ', 'screening', 'cover-photos/July2019/Q7ElPyYcA5kywTlmriv3.png', '2019-07-04 08:57:22', '2019-07-04 08:57:22', 1),
(29, 'Միջազգային', 'international', 'cover-photos/July2019/wxlCGjhouESDOMX39zLm.png', '2019-07-04 08:57:49', '2019-07-04 08:57:49', 1),
(30, 'Ազգային', 'national', 'cover-photos/July2019/gdduYx9QuupMDJ0teUeQ.png', '2019-07-04 08:58:18', '2019-07-04 08:58:18', 1),
(31, 'Գերակա', 'superior', 'cover-photos/July2019/rVhFJUpSNy2WaM9o7k4c.png', '2019-07-04 08:58:46', '2019-07-04 08:58:46', 1),
(32, 'Քաղաքականություն', 'politics', 'cover-photos/July2019/pBHq8WHGEaP6eeJsRQvn.png', '2019-07-04 08:59:08', '2019-07-04 08:59:08', 1),
(33, 'Լիցենզավորում/Փաստաթղթեր/Հայտ', 'licens-documents-application', 'cover-photos/July2019/n2mI3fBUs8jhqRHZ4Nl5.png', '2019-07-04 09:51:57', '2019-07-04 09:51:57', 1),
(34, 'Գովազդի թույլտվություն', 'advertising-permission', 'cover-photos/July2019/EPjC7Wj7YV6s6Fc7Z1mB.png', '2019-07-04 09:56:05', '2019-07-04 09:56:05', 1),
(35, 'Պետական պատվեր/Սոցիալական փաթեթ', 'state-order', 'cover-photos/July2019/rNrsTFuWGwERLBZlg97M.png', '2019-07-04 10:05:09', '2019-07-04 10:05:09', 1),
(36, 'Ընդունելություն/Կարգ, ցանկ, արդյունքներ', 'admission', 'cover-photos/July2019/7TS5PFuk0LOTb2qntklK.png', '2019-07-04 10:13:29', '2019-07-04 10:13:29', 1),
(37, 'Ան խորհրդատուներ', 'moh-consultants', 'cover-photos/July2019/qnmDAE9sBAQ0R7R8iEtv.png', '2019-07-09 06:02:21', '2019-07-09 06:02:21', 1),
(38, 'Մրցույթների հայտարարություններ, արդյունքներ', 'staffing-tender-results', 'cover-photos/July2019/VCxakMrPclBHkun3cAby.png', '2019-07-09 10:35:11', '2019-07-09 10:35:11', 1),
(39, 'Թափուր հաստիքներ', 'staffing-vacancy', 'cover-photos/July2019/gMLfceMLbxvqv1RHoIrJ.png', '2019-07-09 10:37:39', '2019-07-09 10:37:39', 1),
(40, 'Աշխատանքի ընդունման կարգ', 'staffing-job-acceptance', 'cover-photos/July2019/NPyPP73x1gW9Ziop60Pe.png', '2019-07-09 10:39:22', '2019-07-09 10:39:22', 1),
(41, 'ՔՈ ԻՐԱՎՈՒՆՔԸ', 'your-rights', 'cover-photos/July2019/yRJAdeW61jZPrqI3WXCc.png', '2019-07-10 03:20:41', '2019-07-10 03:20:41', 1),
(42, 'Ստացիոնար բուժօգնություն իրականացնող կազմակերպություններ', 'sub-structures-stationery-orgs', 'cover-photos/July2019/TQHOvcmxH3BLIJvEKFaU.png', '2019-07-11 08:08:17', '2019-07-11 08:08:17', 1),
(43, 'Այլ կազմակերպություններ', 'sub-structures-other-orgs', 'cover-photos/July2019/nYEC5mPYCCdvLiR6zN3a.png', '2019-07-11 08:14:43', '2019-07-11 08:14:43', 1),
(44, 'Լիզենզավորման գործակալություն', 'license-organization', 'cover-photos/July2019/AS6Qj6dKbDhi72GN2Vft.png', '2019-07-12 07:38:37', '2019-07-12 07:38:37', 1),
(45, 'Առողջապահության ազգային ինստիտուտ', 'sub-structures-health-institute', 'cover-photos/July2019/MUGW0A4KeOOlSDWMXpPM.png', '2019-07-12 07:50:44', '2019-07-12 07:50:44', 1),
(46, 'Դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն', 'sub-structures-drug-medical-expertise', 'cover-photos/July2019/wqiT3y0698CAsEtJORVW.png', '2019-07-12 08:03:24', '2019-07-12 08:03:24', 1),
(47, 'Հանրապետական գիտաբժշկական գրադարան', 'sub-structures-medical-library', 'cover-photos/July2019/8PsA8FMpVNLmZjMPvuP0.png', '2019-07-12 08:08:20', '2019-07-12 08:08:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
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
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
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
(74, 9, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 5),
(75, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(76, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(93, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(94, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(95, 12, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(96, 12, 'images', 'multiple_images', 'Images', 1, 1, 1, 1, 1, 1, '{}', 4),
(97, 12, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 5),
(98, 12, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(100, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(101, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(102, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(103, 20, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(104, 20, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 3),
(105, 20, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 4),
(107, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(108, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(109, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(110, 22, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(111, 22, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 3),
(112, 22, 'video_url', 'text', 'Video Url', 1, 1, 1, 1, 1, 1, '{}', 4),
(114, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(115, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(125, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(126, 25, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 2),
(127, 25, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(128, 25, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(129, 25, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(130, 25, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(131, 25, 'text', 'rich_text_box', 'Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(132, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(133, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(134, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 26, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 2),
(136, 26, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(137, 26, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(138, 26, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(139, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(140, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(141, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(142, 28, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(143, 28, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{}', 3),
(144, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(145, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(146, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(147, 29, 'page_name', 'text', 'Page Name', 1, 1, 1, 0, 1, 0, '{}', 2),
(148, 29, 'page_slug', 'text', 'Page Slug', 1, 1, 1, 0, 1, 0, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(149, 29, 'page_text1', 'rich_text_box', 'Page Text1', 1, 1, 1, 1, 1, 1, '{}', 4),
(150, 29, 'page_text2', 'rich_text_box', 'Page Text2', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 5),
(151, 29, 'page_text3', 'rich_text_box', 'Page Text3', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 6),
(152, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(153, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(172, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 33, 'minister_pic', 'image', 'Minister Picture', 1, 1, 1, 1, 1, 1, '{}', 2),
(174, 33, 'minister_personal_info_pic', 'image', 'Minister Personal Info Picture', 1, 1, 1, 1, 1, 1, '{}', 3),
(175, 33, 'minister_personal_info_pic_title', 'text', 'Minister Personal Info Picture Title', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 4),
(176, 33, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(177, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(178, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(179, 34, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(180, 34, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(181, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(182, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(183, 35, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(184, 35, 'name', 'text', 'Info Date/Year', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 3),
(185, 35, 'description', 'text', 'Info Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(186, 35, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(187, 35, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(188, 35, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(189, 35, 'minister_info_belongsto_minister_info_category_relationship', 'relationship', 'minister_info_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\MinisterInfoCategory\",\"table\":\"minister_info_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(190, 35, 'url', 'text', 'Url', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 5),
(191, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(192, 37, 'page_name', 'text', 'Page Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(193, 37, 'page_slug', 'text', 'Page Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(194, 37, 'page_cover_photo', 'image', 'Page Cover Photo', 1, 1, 1, 1, 1, 1, '{}', 4),
(195, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(196, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(197, 38, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(198, 38, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(199, 38, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(200, 38, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(202, 38, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(203, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(204, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(205, 39, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(206, 39, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(207, 39, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(208, 39, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(210, 39, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(211, 39, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(212, 39, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(213, 40, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(214, 40, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(215, 40, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(216, 40, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(218, 40, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(219, 40, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(220, 40, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(221, 41, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(222, 41, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(223, 41, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(224, 41, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(226, 41, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(227, 41, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(228, 41, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(229, 42, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(230, 42, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(231, 42, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(232, 42, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(234, 42, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(235, 42, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(236, 42, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(237, 43, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(238, 43, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(239, 43, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(240, 43, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(242, 43, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(243, 43, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(244, 43, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(245, 20, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(246, 37, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(247, 9, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 6),
(248, 43, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(249, 35, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 8),
(250, 25, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 10),
(251, 26, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 8),
(252, 12, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 9),
(253, 28, 'slider_row', 'text', 'Slider Row', 1, 1, 1, 1, 1, 1, '{}', 4),
(254, 28, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(255, 40, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 8),
(256, 39, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(257, 41, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(258, 38, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(259, 42, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(260, 22, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(261, 29, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 9),
(262, 34, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 6),
(263, 33, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(264, 44, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(265, 44, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(266, 44, 'date', 'date', 'Date', 1, 1, 1, 1, 1, 1, '{}', 3),
(267, 44, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 4),
(269, 44, 'type_id', 'text', 'Type Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(270, 44, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(271, 44, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 9),
(272, 44, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(273, 45, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(274, 45, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(275, 45, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(276, 45, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 4),
(277, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(278, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(279, 44, 'legal_act_belongsto_legal_acts_type_relationship', 'relationship', 'Legal Acts Types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\LegalActsType\",\"table\":\"legal_acts_types\",\"type\":\"belongsTo\",\"column\":\"type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(280, 46, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(281, 46, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 2),
(282, 46, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 3),
(283, 46, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(284, 46, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(285, 46, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(286, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(287, 47, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(288, 47, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 3),
(289, 47, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(290, 47, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(291, 47, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(292, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(293, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(294, 47, 'min_history_item_belongsto_min_history_category_relationship', 'relationship', 'min_history_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\MinHistoryCategory\",\"table\":\"min_history_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(295, 48, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(296, 48, 'icon', 'image', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 2),
(297, 48, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(298, 48, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 4),
(299, 48, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 5),
(300, 48, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 6),
(301, 48, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 7),
(302, 48, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 8),
(303, 48, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 9),
(304, 48, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 10),
(305, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(306, 49, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(307, 49, 'icon', 'image', 'Icon', 1, 1, 1, 1, 1, 1, '{}', 2),
(308, 49, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 3),
(309, 49, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 4),
(310, 49, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(311, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(312, 50, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(313, 50, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(314, 50, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(315, 50, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(316, 50, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"options\":{\"main\":\"\\u0563\\u056c\\u056d\\u0561\\u057e\\u0578\\u0580\",\"ministries\":\"\\u0546\\u0561\\u056d\\u0561\\u0580\\u0561\\u0580\\u0578\\u0582\\u0569\\u0575\\u0578\\u0582\\u0576\\u0576\\u0565\\u0580\",\"ra_government_bodies\":\"\\u0540\\u0540 \\u056f\\u0561\\u057c\\u0561\\u057e\\u0561\\u0580\\u0578\\u0582\\u0569\\u0575\\u0561\\u0576 \\u0561\\u057c\\u0568\\u0576\\u0569\\u0565\\u0580 \\u0574\\u0561\\u0580\\u0574\\u056b\\u0576\\u0576\\u0565\\u0580\",\"regions\":\"\\u0544\\u0561\\u0580\\u0566\\u0565\\u0580\",\"other_links\":\"\\u0531\\u0575\\u056c \\u0570\\u0572\\u0578\\u0582\\u0574\\u0576\\u0565\\u0580\"}}', 5),
(317, 50, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 6),
(318, 50, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(319, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(320, 51, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(321, 51, 'ngo_name', 'text', 'Ngo Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(322, 51, 'head_position', 'text', 'Head Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(323, 51, 'head_name', 'text', 'Head Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(324, 51, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(325, 51, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(326, 51, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(327, 51, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(328, 51, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(329, 51, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 10),
(330, 51, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(331, 51, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(332, 52, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(333, 52, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(334, 52, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(335, 52, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(336, 52, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(337, 52, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(338, 52, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(339, 52, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(340, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(341, 52, 'anti_corruption_event_belongsto_anti_corruption_event_relationship', 'relationship', 'anti_corruption_events', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AntiCorruptionEvent\",\"table\":\"anti_corruption_events\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(342, 53, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(343, 53, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(344, 53, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(345, 53, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(346, 53, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(347, 53, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(348, 53, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(349, 53, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(350, 53, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(351, 53, 'international_belongsto_international_relationship', 'relationship', 'internationals', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\International\",\"table\":\"internationals\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(352, 44, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"nullable\"}}', 5),
(353, 44, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 8),
(354, 44, 'legal_act_belongsto_legal_act_relationship', 'relationship', 'legal_acts', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\LegalAct\",\"table\":\"legal_acts\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(355, 54, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(356, 54, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(357, 54, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(358, 54, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(359, 54, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(360, 54, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(361, 54, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(362, 54, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(363, 54, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(364, 54, 'national_belongsto_national_relationship', 'relationship', 'nationals', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\National\",\"table\":\"nationals\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(365, 56, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(366, 56, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(367, 56, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(368, 56, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(369, 56, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(370, 56, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(371, 56, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(372, 56, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(373, 56, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(374, 56, 'politic_belongsto_politic_relationship', 'relationship', 'politics', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Politics\",\"table\":\"politics\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(375, 57, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(376, 57, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(377, 57, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(378, 57, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(379, 57, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(380, 57, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(381, 57, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(382, 57, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(383, 57, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(384, 57, 'screening_belongsto_screening_relationship', 'relationship', 'screenings', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Screening\",\"table\":\"screenings\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(385, 58, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(386, 58, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(387, 58, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(388, 58, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(389, 58, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(390, 58, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(391, 58, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(392, 58, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(393, 58, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(394, 58, 'superior_belongsto_superior_relationship', 'relationship', 'superiors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Superior\",\"table\":\"superiors\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(395, 59, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(396, 59, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(397, 59, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(398, 59, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(399, 59, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(400, 59, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(401, 59, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(402, 59, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(403, 59, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(404, 59, 'licens_documents_application_belongsto_licens_documents_application_relationship', 'relationship', 'licens_documents_applications', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\LicensDocumentsApplication\",\"table\":\"licens_documents_applications\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":null}', 10),
(405, 60, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(406, 60, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(407, 60, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(408, 60, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(409, 60, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(410, 60, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(411, 60, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(412, 60, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(413, 60, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(414, 60, 'admission_belongsto_admission_relationship', 'relationship', 'admissions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Admission\",\"table\":\"admissions\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(415, 61, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(416, 61, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(417, 61, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(418, 61, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(419, 61, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(420, 61, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(421, 61, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(422, 61, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(423, 61, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(424, 61, 'advertising_permission_belongsto_advertising_permission_relationship', 'relationship', 'advertising_permissions', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\AdvertisingPermission\",\"table\":\"advertising_permissions\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(425, 62, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(426, 62, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(427, 62, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(428, 62, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(429, 62, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(430, 62, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(431, 62, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(432, 62, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(433, 62, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(434, 62, 'state_order_belongsto_state_order_relationship', 'relationship', 'state_orders', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\StateOrder\",\"table\":\"state_orders\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(435, 63, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(436, 63, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(437, 63, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 3),
(438, 63, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(439, 63, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(440, 64, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(441, 64, 'question', 'text_area', 'Question', 1, 1, 1, 1, 1, 1, '{}', 3),
(442, 64, 'answer', 'text_area', 'Answer', 1, 1, 1, 1, 1, 1, '{}', 4),
(443, 64, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(444, 64, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(445, 64, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(446, 64, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(447, 64, 'faq_belongsto_faq_category_relationship', 'relationship', 'Faq Category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FaqCategory\",\"table\":\"faq_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(448, 65, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(449, 65, 'year', 'text', 'Year', 1, 1, 1, 1, 1, 1, '{}', 2),
(450, 65, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 3),
(451, 65, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(452, 65, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(453, 66, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(454, 66, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(455, 66, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 4),
(456, 66, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(457, 66, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(458, 66, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(459, 66, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(460, 66, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(461, 66, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(462, 66, 'budget_belongsto_budget_category_relationship', 'relationship', 'budget_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\BudgetCategory\",\"table\":\"budget_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"year\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(463, 67, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(464, 67, 'position', 'text', 'Position', 0, 1, 1, 1, 1, 1, '{}', 2),
(465, 67, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(466, 67, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 4),
(467, 67, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(468, 67, 'working_place', 'text', 'Working Place', 0, 1, 1, 1, 1, 1, '{}', 6),
(469, 67, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(470, 67, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(471, 67, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(472, 68, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(473, 68, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 2),
(474, 68, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(475, 68, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 4),
(476, 68, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(477, 68, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(478, 68, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(479, 68, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(480, 68, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(481, 69, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(482, 69, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 2),
(483, 69, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(484, 69, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 4),
(485, 69, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(486, 69, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(487, 69, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(488, 69, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(489, 69, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(490, 70, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(491, 70, 'year', 'text', 'Year', 0, 1, 1, 1, 1, 1, '{}', 2),
(492, 70, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(493, 70, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 4),
(494, 70, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 5),
(495, 70, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 6),
(496, 70, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(497, 70, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(498, 70, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(499, 71, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(500, 71, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(501, 71, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(502, 71, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(503, 71, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(504, 71, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 6),
(505, 71, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(506, 71, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(507, 72, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(508, 72, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(509, 72, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(510, 72, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(511, 72, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(512, 72, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(513, 72, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(514, 72, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(515, 72, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(516, 72, 'staffing_job_acceptance_belongsto_staffing_job_acceptance_relationship', 'relationship', 'Staffing Job Acceptances', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\StaffingJobAcceptance\",\"table\":\"staffing_job_acceptances\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(517, 73, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(518, 73, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(519, 73, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(520, 73, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(521, 73, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(522, 73, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(523, 73, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(524, 73, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(525, 73, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(526, 73, 'staffing_staff_list_belongsto_staffing_staff_list_relationship', 'relationship', 'Staffing Staff Lists', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\StaffingStaffList\",\"table\":\"staffing_staff_lists\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(527, 74, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(528, 74, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(529, 74, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(530, 74, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(531, 74, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(532, 74, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(533, 74, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(534, 74, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(535, 74, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(536, 74, 'staffing_tender_result_belongsto_staffing_tender_result_relationship', 'relationship', 'Staffing Tender Results', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\StaffingTenderResult\",\"table\":\"staffing_tender_results\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(537, 75, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(538, 75, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(539, 75, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(540, 75, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(541, 75, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(542, 75, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(543, 75, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(544, 75, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(545, 75, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(546, 75, 'staffing_vacancy_belongsto_staffing_vacancy_relationship', 'relationship', 'Staffing Vacancies', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\StaffingVacancy\",\"table\":\"staffing_vacancies\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(547, 76, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(548, 76, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(549, 76, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(550, 76, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(551, 76, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(552, 76, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(553, 76, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(554, 76, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(555, 76, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(556, 76, 'your_rights_file_belongsto_your_rights_file_relationship', 'relationship', 'Your Rights Files', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\YourRightsFile\",\"table\":\"your_rights_files\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(557, 77, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(558, 77, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(559, 77, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 3),
(560, 77, 'video_url', 'text', 'Video Url', 1, 1, 1, 1, 1, 1, '{}', 4),
(561, 77, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(562, 77, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(563, 77, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(564, 78, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(565, 78, 'organisation_name', 'text', 'Organisation Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(566, 78, 'head_position', 'text', 'Head Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(567, 78, 'head_name', 'text', 'Head Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(568, 78, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(569, 78, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(570, 78, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(571, 78, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(572, 78, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(573, 78, 'file_name', 'text', 'File Name', 0, 1, 1, 1, 1, 1, '{}', 10),
(574, 78, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 11),
(575, 78, 'file_date', 'date', 'File Date', 0, 1, 1, 1, 1, 1, '{}', 12),
(576, 78, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 13),
(577, 78, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 14),
(578, 78, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(579, 79, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(580, 79, 'organisation_name', 'text', 'Organisation Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(581, 79, 'head_position', 'text', 'Head Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(582, 79, 'head_name', 'text', 'Head Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(583, 79, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(584, 79, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(585, 79, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(586, 79, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(587, 79, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(588, 79, 'file_name', 'text', 'File Name', 0, 1, 1, 1, 1, 1, '{}', 10),
(589, 79, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 11),
(590, 79, 'file_date', 'date', 'File Date', 0, 1, 1, 1, 1, 1, '{}', 12),
(591, 79, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 13),
(592, 79, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 14),
(593, 79, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(594, 80, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(595, 80, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(596, 80, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(597, 80, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(598, 80, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(599, 80, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(600, 80, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(601, 80, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(602, 80, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(603, 80, 'license_org_file_belongsto_license_org_file_relationship', 'relationship', 'License Organisation Files Parent', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\LicenseOrgFile\",\"table\":\"license_org_files\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(604, 81, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(605, 81, 'organisation_name', 'text', 'Organisation Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(606, 81, 'head_position', 'text', 'Head Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(607, 81, 'head_name', 'text', 'Head Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(608, 81, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(609, 81, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(610, 81, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(611, 81, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(612, 81, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(613, 81, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 10),
(614, 81, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(615, 81, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(616, 82, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(617, 82, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(618, 82, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(619, 82, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(620, 82, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(621, 82, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(622, 82, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(623, 82, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(624, 82, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(625, 82, 'ss_drug_medical_expert_file_belongsto_ss_drug_medical_expert_file_relationship', 'relationship', 'Drug Medical Expert Files Parent', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SsDrugMedicalExpertFile\",\"table\":\"ss_drug_medical_expert_files\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(626, 83, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(627, 83, 'organisation_name', 'text', 'Organisation Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(628, 83, 'head_position', 'text', 'Head Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(629, 83, 'head_name', 'text', 'Head Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(630, 83, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(631, 83, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(632, 83, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(633, 83, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(634, 83, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(635, 83, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 10),
(636, 83, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(637, 83, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(638, 84, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(639, 84, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(640, 84, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(641, 84, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(642, 84, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(643, 84, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(644, 84, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(645, 84, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(646, 84, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9);
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(647, 84, 'ss_health_institute_file_belongsto_ss_health_institute_file_relationship', 'relationship', 'Health Institute Files Parent', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SsHealthInstituteFile\",\"table\":\"ss_health_institute_files\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(648, 85, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(649, 85, 'organisation_name', 'text', 'Organisation Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(650, 85, 'head_position', 'text', 'Head Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(651, 85, 'head_name', 'text', 'Head Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(652, 85, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(653, 85, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(654, 85, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(655, 85, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(656, 85, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(657, 85, 'file_name', 'text', 'File Name', 0, 1, 1, 1, 1, 1, '{}', 10),
(658, 85, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 11),
(659, 85, 'file_date', 'date', 'File Date', 0, 1, 1, 1, 1, 1, '{}', 12),
(660, 85, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 13),
(661, 85, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 14),
(662, 85, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(663, 86, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(664, 86, 'organisation_name', 'text', 'Organisation Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(665, 86, 'head_position', 'text', 'Head Position', 0, 1, 1, 1, 1, 1, '{}', 3),
(666, 86, 'head_name', 'text', 'Head Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(667, 86, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 5),
(668, 86, 'phone_number', 'text', 'Phone Number', 0, 1, 1, 1, 1, 1, '{}', 6),
(669, 86, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(670, 86, 'website_name', 'text', 'Website Name', 0, 1, 1, 1, 1, 1, '{}', 8),
(671, 86, 'website_url', 'text', 'Website Url', 0, 1, 1, 1, 1, 1, '{}', 9),
(672, 86, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 10),
(673, 86, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 11),
(674, 86, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(675, 87, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(676, 87, 'file_name', 'text', 'File Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(677, 87, 'file_upload', 'file', 'File Upload', 0, 1, 1, 1, 1, 1, '{}', 3),
(678, 87, 'file_url', 'text', 'File Url', 0, 1, 1, 1, 1, 1, '{}', 4),
(679, 87, 'file_date', 'date', 'File Date', 1, 1, 1, 1, 1, 1, '{}', 5),
(680, 87, 'parent_id', 'text', 'Parent Id', 0, 1, 1, 1, 1, 1, '{}', 6),
(681, 87, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 7),
(682, 87, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(683, 87, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(684, 87, 'ss_medical_library_file_belongsto_ss_medical_library_file_relationship', 'relationship', 'Medical Library Files Parent', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\SsMedicalLibraryFile\",\"table\":\"ss_medical_library_files\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"file_name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(685, 88, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(686, 88, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(687, 88, 'file', 'file', 'File', 0, 1, 1, 1, 1, 1, '{\"min\":0,\"max\":1}', 3),
(688, 88, 'date', 'timestamp', 'Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(689, 88, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(690, 88, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(691, 88, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(692, 89, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(693, 89, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 2),
(694, 89, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 3),
(695, 89, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 4),
(696, 89, 'display', 'checkbox', 'Display', 1, 1, 1, 1, 1, 1, '{}', 5),
(697, 89, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(698, 89, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(699, 90, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(700, 90, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(701, 90, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 4),
(702, 90, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(703, 90, 'display', 'checkbox', 'Display', 1, 1, 1, 1, 1, 1, '{}', 6),
(704, 90, 'dynamic_section_id', 'text', 'Dynamic Section Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(705, 90, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(706, 90, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(707, 90, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{}', 9),
(708, 90, 'cover_photo', 'image', 'Cover Photo', 0, 1, 1, 1, 1, 1, '{}', 10),
(709, 90, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 11),
(710, 90, 'dynamic_page_belongsto_dynamic_section_relationship', 'relationship', 'dynamic_sections', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\DynamicSection\",\"table\":\"dynamic_sections\",\"type\":\"belongsTo\",\"column\":\"dynamic_section_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(711, 91, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(712, 91, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 3),
(713, 91, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}', 4),
(714, 91, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 5),
(715, 91, 'display', 'checkbox', 'Display', 1, 1, 1, 1, 1, 1, '{}', 6),
(716, 91, 'dynamic_page_id', 'text', 'Dynamic Page Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(717, 91, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(718, 91, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(719, 91, 'video', 'media_picker', 'Video', 0, 1, 1, 1, 1, 1, '{\"allowed\":[\"video\"]}', 9),
(720, 91, 'cover_photo', 'image', 'Cover Photo', 0, 1, 1, 1, 1, 1, '{\"max\":10,\"min\":0}', 10),
(721, 91, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{}', 11),
(722, 91, 'dynamic_sub_page_belongsto_dynamic_page_relationship', 'relationship', 'dynamic_pages', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\DynamicPage\",\"table\":\"dynamic_pages\",\"type\":\"belongsTo\",\"column\":\"dynamic_page_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(723, 91, 'dynamic_sub_page_belongstomany_dynamic_page_file_relationship', 'relationship', 'dynamic_page_files', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\DynamicPageFile\",\"table\":\"dynamic_page_files\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"dynamic_sub_page_intermediate\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(724, 90, 'dynamic_page_belongstomany_dynamic_page_file_relationship', 'relationship', 'dynamic_page_files', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\DynamicPageFile\",\"table\":\"dynamic_page_files\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"dynamic_intermediate_table\",\"pivot\":\"1\",\"taggable\":\"0\"}', 13),
(725, 88, 'dynamic_page_file_belongsto_dynamic_page_file_relationship', 'relationship', 'dynamic_page_files', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\DynamicPageFile\",\"table\":\"dynamic_page_files\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"admissions\",\"pivot\":\"0\",\"taggable\":null}', 8),
(726, 92, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(727, 92, 'page_name', 'text', 'Page Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(728, 92, 'page_slug', 'text', 'Page Slug', 1, 1, 1, 1, 1, 1, '{}', 3),
(729, 92, 'text', 'rich_text_box', 'Text', 1, 1, 1, 1, 1, 1, '{}', 4),
(730, 92, 'text_slug', 'text', 'Text Slug', 1, 1, 1, 1, 1, 1, '{}', 5),
(731, 92, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(732, 92, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(733, 93, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(734, 93, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, '{}', 2),
(735, 93, 'slug', 'text', 'Slug', 1, 1, 1, 0, 0, 0, '{}', 3),
(736, 93, 'order', 'text', 'Order', 1, 0, 0, 0, 0, 0, '{}', 4),
(737, 93, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(738, 93, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-06-04 08:24:51', '2019-06-14 04:15:22'),
(7, 'cars', 'cars', 'Car', 'Cars', NULL, 'App\\Car', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-05 10:41:25', '2019-06-13 08:59:41'),
(9, 'homepage_sliders', 'homepage-sliders', 'Homepage Slider', 'Homepage Sliders', NULL, 'App\\HomepageSlider', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-06 04:32:45', '2019-06-24 06:02:04'),
(12, 'news', 'news', 'News', 'News', NULL, 'App\\News', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-06-07 04:47:54', '2019-06-27 07:04:34'),
(20, 'announcements', 'announcements', 'Announcement', 'Announcements', NULL, 'App\\Announcements', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-06-07 06:49:37', '2019-06-27 07:04:42'),
(22, 'videos', 'videos', 'Video', 'Videos', NULL, 'App\\Videos', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-06-07 08:13:21', '2019-06-27 07:04:23'),
(25, 'minister_staffs', 'minister-staff', 'Minister Staff', 'Minister Staffs', NULL, 'App\\MinisterStaff', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-10 05:57:01', '2019-07-04 03:09:56'),
(26, 'ministry_staffs', 'ministry-staff', 'Ministry Staff', 'Ministry Staffs', NULL, 'App\\MinistryStaff', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-10 09:10:30', '2019-06-24 06:03:19'),
(28, 'partners', 'partners', 'Partner', 'Partners', NULL, 'App\\Partners', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-10 10:04:06', '2019-06-24 06:04:27'),
(29, 'pages_texts', 'pages-texts', 'Pages Text', 'Pages Texts', NULL, 'App\\PagesTexts', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"page_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-12 04:28:01', '2019-07-16 04:35:11'),
(33, 'minister_pages', 'minister-page', 'Minister Page', 'Minister Page', NULL, 'App\\MinisterPage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-13 08:37:53', '2019-06-24 06:03:00'),
(34, 'minister_info_categories', 'minister-info-categories', 'Minister Info Category', 'Minister Info Categories', NULL, 'App\\MinisterInfoCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-13 09:18:22', '2019-07-16 04:35:02'),
(35, 'minister_infos', 'minister-infos', 'Minister Info', 'Minister Infos', NULL, 'App\\MinisterInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"description\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-13 09:32:53', '2019-06-24 06:02:44'),
(37, 'cover_photos', 'cover-photos', 'Cover Photo', 'Cover Photos', NULL, 'App\\CoverPhotos', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-17 08:09:10', '2019-07-16 04:34:42'),
(38, 'speech_and_interviews', 'speech-and-interviews', 'Speech And Interview', 'Speech And Interviews', NULL, 'App\\SpeechAndInterview', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-19 06:09:46', '2019-06-24 06:05:08'),
(39, 'reports', 'reports', 'Report', 'Reports', NULL, 'App\\Report', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-19 09:16:22', '2019-06-24 06:04:47'),
(40, 'press_releases', 'press-releases', 'Press Release', 'Press Releases', NULL, 'App\\PressRelease', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-20 05:35:32', '2019-06-24 06:04:37'),
(41, 'researches', 'researches', 'Research', 'Researches', NULL, 'App\\Research', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-20 07:26:08', '2019-06-24 06:04:59'),
(42, 'statistics', 'statistics', 'Statistic', 'Statistics', NULL, 'App\\Statistic', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-20 07:36:42', '2019-06-24 06:05:17'),
(43, 'informatives', 'informatives', 'Informative', 'Informatives', NULL, 'App\\Informative', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-20 08:07:26', '2019-06-24 06:02:14'),
(44, 'legal_acts', 'legal-acts', 'Legal Act', 'Legal Acts', NULL, 'App\\LegalAct', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-26 07:29:52', '2019-07-04 08:36:09'),
(45, 'legal_acts_types', 'legal-acts-types', 'Legal Acts Type', 'Legal Acts Types', NULL, 'App\\LegalActsType', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-26 07:30:42', '2019-07-16 04:34:51'),
(46, 'min_history_categories', 'min-history-categories', 'Min History Category', 'Min History Categories', NULL, 'App\\MinHistoryCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-26 07:33:59', '2019-07-16 09:29:28'),
(47, 'min_history_items', 'min-history-items', 'Min History Item', 'Min History Items', NULL, 'App\\MinHistoryItem', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"year\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-06-26 07:35:40', '2019-06-26 07:36:28'),
(48, 'links_ccos', 'links-ccos', 'Links Cco', 'Links Ccos', NULL, 'App\\LinksCco', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"icon\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-02 11:40:43', '2019-07-02 11:40:43'),
(49, 'links_co_workers', 'links-co-workers', 'Links Co Worker', 'Links Co Workers', NULL, 'App\\LinksCoWorker', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"icon\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-02 11:42:18', '2019-07-02 11:42:18'),
(50, 'links_links', 'links-links', 'Links Link', 'Links Links', NULL, 'App\\LinksLink', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-02 11:43:41', '2019-07-02 11:43:41'),
(51, 'links_ngos', 'links-ngos', 'Links Ngo', 'Links Ngos', NULL, 'App\\LinksNgo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"ngo_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-02 11:44:46', '2019-07-02 11:50:46'),
(52, 'anti_corruption_events', 'anti-corruption-events', 'Anti Corruption Event', 'Anti Corruption Events', NULL, 'App\\AntiCorruptionEvent', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 08:29:24', '2019-07-04 08:30:11'),
(53, 'internationals', 'internationals', 'International', 'Internationals', NULL, 'App\\International', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 08:31:41', '2019-07-04 08:32:28'),
(54, 'nationals', 'nationals', 'National', 'Nationals', NULL, 'App\\National', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 08:37:30', '2019-07-04 08:38:41'),
(56, 'politics', 'politics', 'Politic', 'Politics', NULL, 'App\\Politics', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 08:39:49', '2019-07-04 08:40:43'),
(57, 'screenings', 'screenings', 'Screening', 'Screenings', NULL, 'App\\Screening', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 08:41:32', '2019-07-04 08:42:37'),
(58, 'superiors', 'superiors', 'Superior', 'Superiors', NULL, 'App\\Superior', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-04 08:43:50', '2019-07-04 08:44:54'),
(59, 'licens_documents_applications', 'licens-documents-applications', 'Licens Documents Application', 'Licens Documents Applications', NULL, 'App\\LicensDocumentsApplication', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-08 03:16:47', '2019-07-08 03:16:47'),
(60, 'admissions', 'admissions', 'Admission', 'Admissions', NULL, 'App\\Admission', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-08 03:19:33', '2019-07-08 03:20:24'),
(61, 'advertising_permissions', 'advertising-permissions', 'Advertising Permission', 'Advertising Permissions', NULL, 'App\\AdvertisingPermission', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-08 03:21:13', '2019-07-08 03:22:04'),
(62, 'state_orders', 'state-orders', 'State Order', 'State Orders', NULL, 'App\\StateOrder', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-08 03:23:01', '2019-07-08 03:24:16'),
(63, 'faq_categories', 'faq-categories', 'Faq Category', 'Faq Categories', NULL, 'App\\FaqCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-08 10:28:42', '2019-07-08 10:28:42'),
(64, 'faqs', 'faqs', 'Faq', 'Faqs', NULL, 'App\\Faq', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"question\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-08 10:29:21', '2019-07-08 10:30:29'),
(65, 'budget_categories', 'budget-categories', 'Budget Category', 'Budget Categories', NULL, 'App\\BudgetCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"year\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-09 08:55:06', '2019-07-09 08:55:06'),
(66, 'budgets', 'budgets', 'Budget', 'Budgets', NULL, 'App\\Budget', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 08:56:00', '2019-07-09 08:59:04'),
(67, 'moh_consultants', 'moh-consultants', 'Moh Consultant', 'Moh Consultants', NULL, 'App\\MohConsultant', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-09 09:00:27', '2019-07-09 09:00:27'),
(68, 'pc_appeals', 'pc-appeals', 'Pc Appeal', 'Pc Appeals', NULL, 'App\\PcAppeal', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"year\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 09:01:05', '2019-07-09 09:03:39'),
(69, 'pc_results', 'pc-results', 'Pc Result', 'Pc Results', NULL, 'App\\PcResult', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"year\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 09:01:46', '2019-07-09 09:03:50'),
(70, 'pc_sessions', 'pc-sessions', 'Pc Session', 'Pc Sessions', NULL, 'App\\PcSession', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"year\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 09:02:30', '2019-07-09 09:04:08'),
(71, 'pc_staffs', 'pc-staffs', 'Pc Staff', 'Pc Staffs', NULL, 'App\\PcStaff', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 09:03:04', '2019-07-09 09:04:20'),
(72, 'staffing_job_acceptances', 'staffing-job-acceptances', 'Staffing Job Acceptance', 'Staffing Job Acceptances', NULL, 'App\\StaffingJobAcceptance', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 10:56:24', '2019-07-09 11:01:52'),
(73, 'staffing_staff_lists', 'staffing-staff-lists', 'Staffing Staff List', 'Staffing Staff Lists', NULL, 'App\\StaffingStaffList', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 10:57:43', '2019-07-09 11:01:35'),
(74, 'staffing_tender_results', 'staffing-tender-results', 'Staffing Tender Result', 'Staffing Tender Results', NULL, 'App\\StaffingTenderResult', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 10:59:02', '2019-07-09 11:06:07'),
(75, 'staffing_vacancies', 'staffing-vacancies', 'Staffing Vacancy', 'Staffing Vacancies', NULL, 'App\\StaffingVacancy', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-09 10:59:59', '2019-07-09 11:07:38'),
(76, 'your_rights_files', 'your-rights-files', 'Your Rights File', 'Your Rights Files', NULL, 'App\\YourRightsFile', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-10 04:36:04', '2019-07-10 04:36:48'),
(77, 'your_rights_videos', 'your-rights-videos', 'Your Rights Video', 'Your Rights Videos', NULL, 'App\\YourRightsVideo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-10 04:37:17', '2019-07-10 04:37:17'),
(78, 'ss_other_orgs', 'ss-other-orgs', 'Ss Other Org', 'Ss Other Orgs', NULL, 'App\\SsOtherOrg', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"organisation_name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-12 04:10:27', '2019-07-12 04:10:27'),
(79, 'ss_stationery_orgs', 'ss-stationery-orgs', 'Ss Stationery Org', 'Ss Stationery Orgs', NULL, 'App\\SsStationeryOrg', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"organisation_name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-12 04:11:10', '2019-07-12 04:11:10'),
(80, 'license_org_files', 'license-org-files', 'License Org File', 'License Org Files', NULL, 'App\\LicenseOrgFile', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-12 12:03:13', '2019-07-12 12:04:06'),
(81, 'license_org_infos', 'license-org-infos', 'License Org Info', 'License Org Infos', NULL, 'App\\LicenseOrgInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"organisation_name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-12 12:04:32', '2019-07-12 12:04:32'),
(82, 'ss_drug_medical_expert_files', 'ss-drug-medical-expert-files', 'Ss Drug Medical Expert File', 'Ss Drug Medical Expert Files', NULL, 'App\\SsDrugMedicalExpertFile', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-12 12:05:12', '2019-07-12 12:07:24'),
(83, 'ss_drug_medical_expert_infos', 'ss-drug-medical-expert-infos', 'Ss Drug Medical Expert Info', 'Ss Drug Medical Expert Infos', NULL, 'App\\SsDrugMedicalExpertInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"organisation_name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-12 12:07:56', '2019-07-12 12:07:56'),
(84, 'ss_health_institute_files', 'ss-health-institute-files', 'Ss Health Institute File', 'Ss Health Institute Files', NULL, 'App\\SsHealthInstituteFile', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-12 12:09:34', '2019-07-12 12:10:41'),
(85, 'ss_health_institute_infos', 'ss-health-institute-infos', 'Ss Health Institute Info', 'Ss Health Institute Infos', NULL, 'App\\SsHealthInstituteInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"organisation_name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-12 12:11:20', '2019-07-12 12:11:20'),
(86, 'ss_medical_library_infos', 'ss-medical-library-infos', 'Ss Medical Library Info', 'Ss Medical Library Infos', NULL, 'App\\SsMedicalLibraryInfo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"organisation_name\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-07-12 12:11:52', '2019-07-12 12:11:52'),
(87, 'ss_medical_library_files', 'ss-medical-library-files', 'Ss Medical Library File', 'Ss Medical Library Files', NULL, 'App\\SsMedicalLibraryFile', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"file_name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-12 12:12:24', '2019-07-12 12:13:27'),
(88, 'dynamic_page_files', 'dynamic-page-files', 'Dynamic Page File', 'Dynamic Page Files', NULL, 'App\\DynamicPageFile', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-19 10:24:12', '2019-07-19 10:59:53'),
(89, 'dynamic_sections', 'dynamic-sections', 'Dynamic Section', 'Dynamic Sections', NULL, 'App\\DynamicSection', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-19 10:29:11', '2019-07-19 10:49:44'),
(90, 'dynamic_pages', 'dynamic-pages', 'Dynamic Page', 'Dynamic Pages', NULL, 'App\\DynamicPage', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-19 10:35:43', '2019-07-24 05:24:42'),
(91, 'dynamic_sub_pages', 'dynamic-sub-pages', 'Dynamic Sub Page', 'Dynamic Sub Pages', NULL, 'App\\DynamicSubPage', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-19 10:41:07', '2019-07-22 04:24:44'),
(92, 'web_site_translations', 'web-site-translations', 'Web Site Translation', 'Web Site Translations', NULL, 'App\\WebSiteTranslation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-07-26 04:37:31', '2019-08-08 13:41:57'),
(93, 'socials', 'socials', 'Social', 'Socials', NULL, 'App\\Social', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"slug\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-08-01 04:00:28', '2019-08-01 04:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_intermediate_table`
--

CREATE TABLE `dynamic_intermediate_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_page_file_id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_intermediate_table`
--

INSERT INTO `dynamic_intermediate_table` (`id`, `dynamic_page_file_id`, `dynamic_page_id`, `created_at`, `updated_at`) VALUES
(2, 5, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_pages`
--

CREATE TABLE `dynamic_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci,
  `order` bigint(20) NOT NULL DEFAULT '1',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `dynamic_section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video` longtext COLLATE utf8mb4_unicode_ci,
  `cover_photo` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_pages`
--

INSERT INTO `dynamic_pages` (`id`, `name`, `slug`, `order`, `display`, `dynamic_section_id`, `created_at`, `updated_at`, `video`, `cover_photo`, `description`) VALUES
(1, 'page', 'page', 1, 1, NULL, '2019-07-19 10:52:12', '2019-07-19 10:52:12', NULL, 'dynamic-pages/July2019/VULJYqpwShmkJPEoQ6yB.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</body>\r\n</html>'),
(2, 'page2', 'page2', 1, 1, 1, '2019-07-19 10:53:00', '2019-07-24 05:41:37', 'https://youtu.be/8CdcCD5V-d8', 'dynamic-pages/July2019/KMQa0MB5NxFtqW613Twx.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</body>\r\n</html>'),
(3, 'page3', 'page3', 1, 1, 2, '2019-07-19 11:03:10', '2019-07-19 11:03:10', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>'),
(4, 'test4', 'test4', 1, 1, NULL, '2019-07-24 06:43:00', '2019-07-24 06:45:46', NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>yteyrtredt</p>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_page_files`
--

CREATE TABLE `dynamic_page_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8mb4_unicode_ci,
  `file_url` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` bigint(20) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_page_files`
--

INSERT INTO `dynamic_page_files` (`id`, `name`, `file`, `file_url`, `date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'file ', '[{\"download_link\":\"dynamic-page-files\\/July2019\\/DOJgpHFO6T1INeRqeIAf.pdf\",\"original_name\":\"HRpwNGF50HuG9DokxkKp.pdf\"}]', NULL, '2019-07-19 15:00:00', NULL, 1, '2019-07-19 11:00:31', '2019-07-19 11:00:31'),
(2, 'file2', '[{\"download_link\":\"dynamic-page-files\\/July2019\\/ic2ClIhPElOj6naJxoUk.pdf\",\"original_name\":\"HRpwNGF50HuG9DokxkKp.pdf\"}]', NULL, '2019-07-19 15:00:00', NULL, 1, '2019-07-19 11:00:46', '2019-07-19 11:00:46'),
(3, 'File3', '[{\"download_link\":\"dynamic-page-files\\/July2019\\/FtqDhDo2ewdonxizIBPm.pdf\",\"original_name\":\"HRpwNGF50HuG9DokxkKp.pdf\"}]', NULL, '2019-07-19 15:00:00', NULL, 1, '2019-07-19 11:01:03', '2019-07-19 11:01:03'),
(4, 'File9', '[{\"download_link\":\"dynamic-page-files\\/July2019\\/eJpEG00aEG4TiQnGGtUH.pdf\",\"original_name\":\"HRpwNGF50HuG9DokxkKp.pdf\"}]', NULL, '2019-07-24 09:43:00', NULL, 1, '2019-07-24 05:43:19', '2019-07-24 05:43:19'),
(5, 'hhhh', '[{\"download_link\":\"dynamic-page-files\\/July2019\\/gDo0toWLCKRB0soOTdej.pdf\",\"original_name\":\"booking.pdf\"}]', NULL, '2019-07-25 10:44:00', NULL, 1, '2019-07-24 06:45:03', '2019-07-24 06:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_sections`
--

CREATE TABLE `dynamic_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci,
  `order` bigint(20) NOT NULL DEFAULT '1',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_sections`
--

INSERT INTO `dynamic_sections` (`id`, `name`, `slug`, `order`, `display`, `created_at`, `updated_at`) VALUES
(1, 'Section', 'section', 1, 1, '2019-07-19 10:50:35', '2019-07-19 10:50:35'),
(2, 'Section2', 'section2', 1, 1, '2019-07-19 10:50:45', '2019-07-19 10:50:45'),
(3, 'test3', 'test3', 1, 1, '2019-07-24 06:42:27', '2019-07-24 06:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_sub_pages`
--

CREATE TABLE `dynamic_sub_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci,
  `order` bigint(20) NOT NULL DEFAULT '1',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `dynamic_page_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video` longtext COLLATE utf8mb4_unicode_ci,
  `cover_photo` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_sub_pages`
--

INSERT INTO `dynamic_sub_pages` (`id`, `name`, `slug`, `order`, `display`, `dynamic_page_id`, `created_at`, `updated_at`, `video`, `cover_photo`, `description`) VALUES
(3, 'Sub', 'sub', 1, 1, 3, '2019-07-22 04:25:58', '2019-07-22 04:25:58', NULL, 'dynamic-sub-pages/July2019/BXaRuPKvGKFx67G4ZR3L.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>awddwaawdwaddaw</p>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_sub_page_intermediate`
--

CREATE TABLE `dynamic_sub_page_intermediate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_page_file_id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_sub_page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_sub_page_intermediate`
--

INSERT INTO `dynamic_sub_page_intermediate` (`id`, `dynamic_page_file_id`, `dynamic_sub_page_id`, `created_at`, `updated_at`) VALUES
(5, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `category_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'ԿԱՐԵԼԻ Է՞ ԴԵՂԱՏՈՄՍ ԴՈՒՐՍ ԳՐԵԼ ԱՌԱՆՑ ԴԵՂԱՏՈՄՍԻ ԴՈՒՐՍ ԳՐՎՈՂ ԴԵՂԵՐԻ ՀԱՄԱՐ ԿԱՄ ԱՅՆ ԽՄԲԻ ԴԵՂԵՐԻ ՀԱՄԱՐ, ՈՐՈՆՔ ԺԱՄԱՆԱԿԱՑՈՒՅՑՈՎ ՆԵՐԿԱՅՈՒՄՍ ՆԵՐԱՌՎԱԾ ՉԵՆ ՊԱՐՏԱԴԻՐ ԴԵՂԱՏՈՄՍՈՎ ԴՈՒՐՍ ԳՐՎՈՂ ԴԵՂԵՐԻ ՑԱՆԿՈՒՄ:', '2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ, պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը, հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:', 1, 1, '2019-07-08 10:33:15', '2019-07-08 10:33:15'),
(2, 'ԿԱՐԵԼԻ Է՞ ԴԵՂԱՏՈՄՍ ԴՈՒՐՍ ԳՐԵԼ ՀԱՅԱՍՏԱՆՈՒՄ ՉԳՐԱՆՑՎԱԾ ԴԵՂԵՐԻ ՀԱՄԱՐ:', '2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ, պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը, հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:', 1, 1, '2019-07-08 10:33:32', '2019-07-08 10:33:32'),
(3, 'ԻՆՉՊԵ՞Ս ՊԵՏՔ Է ԲԺԻՇԿԸ ՊԱՐԶԻ, ԹԵ ԱՌԵՒՏՐԱՅԻՆ (ԲՐԵՆԴ) ԱՆՎԱՄԲ ԴԵՂՆ ԻՆՉ «ՀԱՄԸՆԴՀԱՆՈՒՐ ԱՆՈՒՆ» ՈՒՆԻ:', '2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ, պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը, հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:', 2, 1, '2019-07-08 10:34:25', '2019-07-08 10:34:25'),
(4, 'Ի՞ՆՉ ԺԱՄԱՆԱԿԱՑՈՒՅՑՈՎ Է ՆԵՐԴՐՎԵԼՈՒ ԴԵՂԱՏՈՄՍԻ ՊԱՐՏԱԴԻՐ ՊԱՀԱՆՋԸ ԴԵՂԵՐԻ ՏԱՐԲԵՐ ԽՄԲԵՐԻ ՀԱՄԱՐ։', '2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ, պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը, հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:', 3, 1, '2019-07-08 10:34:57', '2019-07-08 10:34:57'),
(5, 'Ի՞ՆՉ ԺԱՄԱՆԱԿԱՑՈՒՅՑՈՎ Է ՆԵՐԴՐՎԵԼՈՒ ԴԵՂԱՏՈՄՍԻ ՊԱՐՏԱԴԻՐ ՊԱՀԱՆՋԸ ԴԵՂԵՐԻ ՏԱՐԲԵՐ ԽՄԲԵՐԻ ՀԱՄԱՐ։', '2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ, պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը, հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:', 4, 1, '2019-07-08 10:35:19', '2019-07-08 10:35:19'),
(6, 'Ի՞ՆՉ ԺԱՄԱՆԱԿԱՑՈՒՅՑՈՎ Է ՆԵՐԴՐՎԵԼՈՒ ԴԵՂԱՏՈՄՍԻ ՊԱՐՏԱԴԻՐ ՊԱՀԱՆՋԸ ԴԵՂԵՐԻ ՏԱՐԲԵՐ ԽՄԲԵՐԻ ՀԱՄԱՐ։', '2018 թվականի մարտի 1-ից դեղատոմսով բաց կթողնվեն հակավարակային (հակաբակտերիային դեղեր, հակասնկային դեղեր, հակամիկոբակտերիային դեղեր, հակավիրուսային դեղեր, իմունային շիճուկներ և իմունոգլոբուլիններ, պատվաստանյութեր) դեղերը, հուլիսի 1-ից` ներարկման համար նախատեսված դեղերը, հոկտեմբերի 1-ից` դեղատոմսով բաց թողնվող մնացած բոլոր դեղերը:', 5, 1, '2019-07-08 10:35:42', '2019-07-08 10:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'ԴԵՂԵՐԻ ԴՈՒՐՍ ԳՐՄԱՆ ՆՈՐ ԿԱՐԳԻ ՎԵՐԱԲԵՐՅԱԼ ԲԱՐՁՐԱՑՎԱԾ ՀԱՐՑԵՐ', 1, '2019-07-08 10:31:45', '2019-07-08 10:31:45'),
(2, 'ԷԼԵԿՏՐՈՆԱՅԻՆ ԱՌՈՂՋԱՊԱՀՈՒԹՅԱՆ ՀԱՄԱԿԱՐԳԻ ԳԱՂՏՆԻՈՒԹՅԱՆ ԱՊԱՀՈՎՄԱՆ ՄԱՍԻՆ', 1, '2019-07-08 10:31:56', '2019-07-08 10:31:56'),
(3, 'ԲԺՇԿԱԿԱՆ ՕԳՆՈՒԹՅՈՒՆ ԵՎ ՍՊԱՍԱՐԿՈՒՄ', 1, '2019-07-08 10:32:06', '2019-07-08 10:32:06'),
(4, 'ՊՈԼԻՈՄԻԵԼԻՏԻ ԼՐԱՑՈՒՑԻՉ ՊԱՏՎԱՍՏՈՒՄՆԵՐ', 1, '2019-07-08 10:32:15', '2019-07-08 10:32:15'),
(5, 'ԿԱՐՄՐՈՒԿ', 1, '2019-07-08 10:32:30', '2019-07-08 10:32:30');

-- --------------------------------------------------------

--
-- Table structure for table `homepage_sliders`
--

CREATE TABLE `homepage_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepage_sliders`
--

INSERT INTO `homepage_sliders` (`id`, `title`, `text`, `image`, `url`, `created_at`, `updated_at`, `order`) VALUES
(5, 'ԵՐԿՐՆԵՐՆ ԸՆԴՈՒՆԵԼ ԵՆ <span> ԼՅՈՒԲԼՅԱՆԱՅԻ ՀԱՅՏԱՐԱՐԱԳԻՐԸ</span> «ԱՌՈՂՋԱՊԱՀԱԿԱՆ ԾԱՌԱՅՈՒԹՅՈՒՆՆԵՐԻ ՀԱՍԱՆԵԼԻՈՒԹՅԱՆ ՀԱՎԱՍԱՐՈՒԹՅՈՒՆ»', 'Հայաստանի առողջապահական համակարգի հզորացման հարցերը', 'homepage-sliders/July2019/9cvJISfuRUxYQvi8llP1.jpg', '#', '2019-06-06 07:03:00', '2019-07-17 04:30:25', 1),
(6, '<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ', 'Առողջապահության նախարար Արսեն Թորոսյանն ընդունել է Ռուսաստանի Դաշնության առողջապահության նախարարի տեղակալ', 'homepage-sliders/June2019/QfNS4DZZN5dZIMxx3fAK.png', '#', '2019-06-06 07:03:33', '2019-06-06 07:03:33', 1),
(8, '<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ', '<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ', 'homepage-sliders/July2019/x94HDhBolZ5OjdvYZlfS.jpg', '#', '2019-06-06 07:32:00', '2019-07-09 17:33:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `informatives`
--

CREATE TABLE `informatives` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `informatives`
--

INSERT INTO `informatives` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `created_at`, `updated_at`, `order`) VALUES
(1, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումinfo', '[{\"download_link\":\"informatives\\/June2019\\/G5MJUnFyoI6rbx4XG86j.\",\"original_name\":\"test\"}]', NULL, '2019-06-20 00:00:00', '2019-06-20 08:08:24', '2019-06-20 08:08:24', 1),
(2, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումinfo', '[]', 'https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given', '2019-06-20 00:00:00', '2019-06-20 08:08:55', '2019-06-20 08:08:55', 1),
(3, 'pdf test', '[{\"download_link\":\"informatives\\/June2019\\/m1xdq8nS8uhiu1vBGIFk.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 08:37:34', '2019-06-27 08:37:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `internationals`
--

CREATE TABLE `internationals` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `internationals`
--

INSERT INTO `internationals` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'International Parent 1', '[{\"download_link\":\"internationals\\/July2019\\/kKMXkiVPePrWgQCvCsb8.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2018-01-01', NULL, 1, '2019-07-04 09:00:16', '2019-07-04 09:00:16'),
(2, 'International Parent 2', '[{\"download_link\":\"internationals\\/July2019\\/pI6mfBKFM2N27ykIv7GQ.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 3, '2019-07-04 09:00:37', '2019-07-04 09:04:01'),
(3, 'International Parent 3', '[{\"download_link\":\"internationals\\/July2019\\/S8bNH9xRDuXaTVRTV1Ko.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 5, '2019-07-04 09:01:00', '2019-07-04 09:04:06'),
(4, 'International Child 1', '[{\"download_link\":\"internationals\\/July2019\\/1juz33yidDEYG6TpNAm8.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 2, '2019-07-04 09:01:25', '2019-07-04 09:04:01'),
(5, 'International Child 2', '[{\"download_link\":\"internationals\\/July2019\\/VCzVWmPn7GP1fMnJoV47.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 2, 4, '2019-07-04 09:01:44', '2019-07-04 09:04:06'),
(6, 'International Child 3', '[{\"download_link\":\"internationals\\/July2019\\/ai5okCGhknxyTTFCF43z.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 3, 6, '2019-07-04 09:02:06', '2019-07-04 09:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `legal_acts`
--

CREATE TABLE `legal_acts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legal_acts`
--

INSERT INTO `legal_acts` (`id`, `name`, `date`, `file_upload`, `file_url`, `type_id`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(16, 'Legal Act Parent 1', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/cp571NtCqpOR561aSa6g.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, 1, NULL, 1, '2019-07-04 08:48:03', '2019-07-04 08:48:03'),
(17, 'Legal Act Parent 2', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/MxXmUivxxCmMIENSd1jB.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, 2, NULL, 1, '2019-07-04 08:48:34', '2019-07-04 08:48:48'),
(18, 'Legal Act Parent 3', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/8byNZ0KU8dmlmEYcFFQv.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, 3, NULL, 1, '2019-07-04 08:49:14', '2019-07-04 08:49:14'),
(19, 'Legal Act Parent 4', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/0iTVAw08Mp3eaXFYHfCw.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, 4, NULL, 1, '2019-07-04 08:49:37', '2019-07-04 08:49:37'),
(20, 'Legal Act Parent 5', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/BkodZhWyPFeM7dz1hqf6.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, 5, NULL, 1, '2019-07-04 08:50:06', '2019-07-04 08:50:06'),
(21, 'Legal Act Child 1', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/EQLwm5CUQJdejTxgrXsm.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, 1, 16, 1, '2019-07-04 08:50:32', '2019-07-04 08:50:42'),
(22, 'Legal Act Child 2', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/yfXnP9JlR1cnPKMrPRvy.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, 2, 17, 1, '2019-07-04 08:51:06', '2019-07-04 08:51:06'),
(23, 'Legal Act Child 3', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/qvESRKCXslLZpPd0oDej.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, 3, 18, 1, '2019-07-04 08:51:38', '2019-07-04 08:51:38'),
(24, 'Legal Act Child 4', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/x0A8NIiyXVGxngSMafnH.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, 4, 19, 1, '2019-07-04 08:52:13', '2019-07-04 08:52:13'),
(25, 'Legal Act Child 5', '2019-01-01', '[{\"download_link\":\"legal-acts\\/July2019\\/KHgMNSYQH60djeftoF7W.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, 5, 20, 1, '2019-07-04 08:52:36', '2019-07-04 08:52:36'),
(26, 'first check', '2019-07-18', '[{\"download_link\":\"legal-acts\\/July2019\\/WAWpZZ0549qp5xz5WQD9.PDF\",\"original_name\":\"2018_Storm_Presentation_ENG.PDF\"}]', NULL, 2, 16, 1, '2019-07-04 09:39:30', '2019-07-04 09:39:30'),
(27, 'ՀՀ ԱՆ «Ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտ» ՓԲԸ', '2019-07-19', '[{\"download_link\":\"legal-acts\\/July2019\\/aSl7mvJn36A210xWvDbq.pdf\",\"original_name\":\"Product-Mindset-English-v1.pdf\"}]', NULL, 2, NULL, 1, '2019-07-08 02:14:11', '2019-07-08 02:14:11'),
(28, '«Մարդու իրավունքների պաշտպանության ազգային ռազմավարությունը հաստատելու մասին» Հայաստանի Հանրապետության նախագահի 2012թ. հոկտեմբերի 29-ի ՆԿ-159-Ն կարգադրություն', '2012-10-20', '[{\"download_link\":\"legal-acts\\/July2019\\/GUse990ttmeuadUaME0b.pdf\",\"original_name\":\"legal-59.pdf\"}]', NULL, 2, NULL, 1, '2019-07-09 17:51:19', '2019-07-09 17:51:19'),
(29, 'Էլեկտրոնային առողջապահության ուսուցման դասընթացներ կազմակերպելու մասին («14» հունիս 2019թ. No 1576 – Ա)', '2019-06-14', '[{\"download_link\":\"legal-acts\\/July2019\\/A0aehq1zXHp1KTWrTrOL.pdf\",\"original_name\":\"legal-377.pdf\"}]', NULL, 4, NULL, 1, '2019-07-09 17:53:45', '2019-07-09 17:53:45'),
(30, 'test', '2019-07-10', '[{\"download_link\":\"legal-acts\\/July2019\\/wFBlq0lCYX0oohGDAh9n.pdf\",\"original_name\":\"legal-377.pdf\"}]', NULL, 4, NULL, 1, '2019-07-10 04:40:28', '2019-07-10 04:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `legal_acts_types`
--

CREATE TABLE `legal_acts_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `legal_acts_types`
--

INSERT INTO `legal_acts_types` (`id`, `name`, `slug`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Օրենքներ', 'laws', 1, '2019-06-26 07:54:27', '2019-06-26 07:54:27'),
(2, 'Նախագահի հրամանագրեր և կարգադրություններ', 'presidential-decrees-and-orders', 1, '2019-06-26 07:55:24', '2019-06-26 07:55:24'),
(3, 'Կառավարության որոշումներ', 'government-decisions', 1, '2019-06-26 07:56:07', '2019-06-26 07:56:07'),
(4, 'Նախարարի հրամաններ', 'minister-orders', 1, '2019-06-26 07:56:31', '2019-06-26 07:56:31'),
(5, 'Սանիտարական կանոններ և նորմեր', 'sanitary-rules-and-norms', 1, '2019-06-26 07:56:57', '2019-06-26 07:56:57');

-- --------------------------------------------------------

--
-- Table structure for table `license_org_files`
--

CREATE TABLE `license_org_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_org_files`
--

INSERT INTO `license_org_files` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Հայաստանի Հանրապետության առողջապահության նախարարության աշխատակազմի լիցենզավորման գործակալության Կանոնադրությունը և կառուցվածքը (Հայաստանի Հանրապետության Կառավարության 30 սեպտեմբերի 2010 թվականի N1319-Ն որոշում)', '[{\"download_link\":\"license-org-files\\/July2019\\/5sCghQrZHcv3xiYqrqM0.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-12 12:15:41', '2019-07-12 12:15:41');

-- --------------------------------------------------------

--
-- Table structure for table `license_org_infos`
--

CREATE TABLE `license_org_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `organisation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_org_infos`
--

INSERT INTO `license_org_infos` (`id`, `organisation_name`, `head_position`, `head_name`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Դիտարկումների և վերլուծության բաժին', 'Բաժնի պետ ժ/պ', 'Տիգրան Աստաբացյան', NULL, '(+374 60) 80-80-03 / 2905;  (+374 60) 80-80-03 / 2903', NULL, NULL, NULL, 1, '2019-07-12 12:17:01', '2019-07-12 12:17:01'),
(2, 'Լիցենզավորման բաժին', 'Գործակալության պետի ժ/պ', 'Վահե Ալեքսանյան', 'Երևան 0010, Կառավարական տուն N 3', '(+374 60) 80-80-03 / 0101', 'valeksanyan@moh.am', NULL, NULL, 1, '2019-07-12 12:17:55', '2019-07-12 12:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `licens_documents_applications`
--

CREATE TABLE `licens_documents_applications` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `licens_documents_applications`
--

INSERT INTO `licens_documents_applications` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Licensing Documents Application Parent', '[{\"download_link\":\"licens-documents-applications\\/July2019\\/er9Kax3pvYy994y8LVcI.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-08 03:28:57', '2019-07-08 03:28:57'),
(2, 'Licensing Documents Application Child', '[{\"download_link\":\"licens-documents-applications\\/July2019\\/xxrlf4VWfnswEJ0JENIG.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-08 03:29:22', '2019-07-08 03:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `links_ccos`
--

CREATE TABLE `links_ccos` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links_ccos`
--

INSERT INTO `links_ccos` (`id`, `icon`, `description`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `order`, `created_at`, `updated_at`) VALUES
(1, 'links-ccos/July2019/IzruXWZAeuYddhrzMaVu.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&laquo;Նվիրիր Կյանք&raquo; արյան քաղցկեղով և ծանր հիվանդություններով երեխաներին օգնության Բարեգործական Հիմնադրամը գործում է 2009 թվականից (հիմնադրամի գործադիր մարմնի ղեկավարը` Վերժինե Ոսկանյան): Հիմնադրամի աշխատակազմը հետևյալն է` Վերժինե Ոսկանյան, Ելենա Աղայան, Նունե Ավանեսյան, ովքեր Հիմնադրամի միջոցներից օգտվում են միայն աշխատանքի վարձատրությանն ուղղված միջոցներից:</p>\r\n<p>2011թ-ի ֆինանսական միջոցները գոյացել են անհատ բարերարների և տարբեր նվիրատուների հանգանակություններից` 64298.0 հազար դրամ և այդ ֆինանսական միջոցներից 2011թ. ֆինանսական տարում օգտագործվել է ընդհանուր 44,434.0 հազ. դրամ,որը ամբողջությամբ ուղղվել է կանոնադրական նպատակներին: Ֆինանսական հաշվետվությունների վերաբերյալ աուդիտն իրականացնող անձ է հանդիսանում &laquo;Լոնդոն Բիզնես Գրուպ&raquo;ՀՁ ՍՊԸ:</p>\r\n<p>Հիմնադրամի էքսպերտային խորհրդի անդամներն են`</p>\r\n<ul>\r\n<li>\r\n<h1>Սամվել Դանիելյան</h1>\r\n&laquo;Մուրացան&raquo; հիվանդանոցային համալիրի քիմիաթերապիայի կլինիկայի ղեկավար</li>\r\n<li>\r\n<h1>Գրիգոր Բադալյան</h1>\r\n&laquo;Ուռուցքաբանության ազգային կենտրոնի&raquo; մանկական բաժնի վարիչ</li>\r\n<li>\r\n<h1>Սմբատ Դաղբաշյան</h1>\r\n&laquo;Արյունաբանության ազգային կենտրոնի&raquo; տնօրեն</li>\r\n</ul>\r\n</body>\r\n</html>', 'Ք․ Երևան, Նորաշեն ողմ․ 23-54', '(+74 60)80 80-03/1123', 'minister@moh.am', 'www.gerontology.am', 'http://www.gerontology.am/', 1, '2019-07-02 11:59:27', '2019-07-02 11:59:27'),
(2, 'links-ccos/July2019/FUCwiyI2GbTh2zzTm7Vp.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&laquo;Նվիրիր Կյանք&raquo; արյան քաղցկեղով և ծանր հիվանդություններով երեխաներին օգնության Բարեգործական Հիմնադրամը գործում է 2009 թվականից (հիմնադրամի գործադիր մարմնի ղեկավարը` Վերժինե Ոսկանյան): Հիմնադրամի աշխատակազմը հետևյալն է` Վերժինե Ոսկանյան, Ելենա Աղայան, Նունե Ավանեսյան, ովքեր Հիմնադրամի միջոցներից օգտվում են միայն աշխատանքի վարձատրությանն ուղղված միջոցներից:</p>\r\n<p>2011թ-ի ֆինանսական միջոցները գոյացել են անհատ բարերարների և տարբեր նվիրատուների հանգանակություններից` 64298.0 հազար դրամ և այդ ֆինանսական միջոցներից 2011թ. ֆինանսական տարում օգտագործվել է ընդհանուր 44,434.0 հազ. դրամ,որը ամբողջությամբ ուղղվել է կանոնադրական նպատակներին: Ֆինանսական հաշվետվությունների վերաբերյալ աուդիտն իրականացնող անձ է հանդիսանում &laquo;Լոնդոն Բիզնես Գրուպ&raquo;ՀՁ ՍՊԸ:</p>\r\n</body>\r\n</html>', 'ք. Երևան, Նորաշեն թղմ. 23-54', '+(374 41) 70-31-03', 'minister@moh.am', 'www.gerontology.am', 'http://www.gerontology.am/', 1, '2019-07-02 12:00:17', '2019-07-02 12:00:17');

-- --------------------------------------------------------

--
-- Table structure for table `links_co_workers`
--

CREATE TABLE `links_co_workers` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links_co_workers`
--

INSERT INTO `links_co_workers` (`id`, `icon`, `url`, `order`, `created_at`, `updated_at`) VALUES
(1, 'links-co-workers/July2019/jFtylmqIA58joWR1RwKM.png', NULL, 1, '2019-07-02 11:47:13', '2019-07-02 11:47:13'),
(2, 'links-co-workers/July2019/QOXSxTfOiTBfqXmLIXyr.png', NULL, 1, '2019-07-02 11:47:24', '2019-07-02 11:47:24'),
(3, 'links-co-workers/July2019/hwflXi5QjEwjxk8Z8s3H.png', NULL, 1, '2019-07-02 11:47:31', '2019-07-02 11:47:31'),
(4, 'links-co-workers/July2019/f7kcj17l2tdGFTAWLLwg.png', NULL, 1, '2019-07-02 11:47:43', '2019-07-02 11:47:43'),
(5, 'links-co-workers/July2019/9bCyp6DJQwX1VpZOKvnN.png', NULL, 1, '2019-07-02 11:47:51', '2019-07-02 11:47:51'),
(6, 'links-co-workers/July2019/26ysfKEpcHkGqQmaKk6n.png', NULL, 1, '2019-07-02 11:48:00', '2019-07-02 11:48:00'),
(7, 'links-co-workers/July2019/i45ad8jTKzCzwiVAf0Yu.png', NULL, 1, '2019-07-02 11:48:09', '2019-07-02 11:48:09'),
(8, 'links-co-workers/July2019/dWJMlLEsaS34zeht0uE8.png', NULL, 1, '2019-07-02 11:48:19', '2019-07-02 11:48:19'),
(9, 'links-co-workers/July2019/lYGSaT5kqvRnR6N7ssXi.png', NULL, 1, '2019-07-02 11:48:27', '2019-07-02 11:48:27'),
(10, 'links-co-workers/July2019/jNv9mzcX81TPNTYmaYnf.jpg', 'http://moh.mgplab.com/links', 1, '2019-07-03 03:01:23', '2019-07-03 03:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `links_links`
--

CREATE TABLE `links_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links_links`
--

INSERT INTO `links_links` (`id`, `name`, `website_name`, `website_url`, `type`, `order`, `created_at`, `updated_at`) VALUES
(1, 'հհ ազգային ժողով', 'www.parliament.am', 'http://www.parliament.am/', 'main', 1, '2019-07-02 12:01:19', '2019-07-02 12:01:19'),
(2, 'ՀՀ նախագահ', 'www.president.am', 'https://www.president.am/hy/', 'main', 1, '2019-07-02 12:01:49', '2019-07-02 12:01:49'),
(3, 'հհ սահմանադրական դատարան', 'www.concourt.am', 'http://www.concourt.am/', 'main', 1, '2019-07-02 12:02:22', '2019-07-02 12:02:22'),
(4, 'հհ ազգային ժողով', 'www.parliament.am', 'http://www.parliament.am/', 'ra_government_bodies', 1, '2019-07-02 12:02:56', '2019-07-02 12:02:56'),
(5, 'հհ կառավարություն', 'www.gov.am', 'https://www.gov.am/am/', 'other_links', 1, '2019-07-02 12:03:49', '2019-07-02 12:03:49'),
(6, 'ՀՀ նախագահ___Նախարարություններ', 'www.president.am', 'https://www.president.am/hy/', 'ministries', 1, '2019-07-02 12:04:22', '2019-07-02 12:04:22'),
(7, 'հհ սահմանադրական դատարան', 'www.concourt.am', 'http://www.concourt.am/', 'regions', 1, '2019-07-02 12:04:52', '2019-07-02 12:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `links_ngos`
--

CREATE TABLE `links_ngos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ngo_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links_ngos`
--

INSERT INTO `links_ngos` (`id`, `ngo_name`, `head_position`, `head_name`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `order`, `created_at`, `updated_at`) VALUES
(1, '«Գերիատրիայի և գերոնտոլոգիայի հայկական ասոցիացիա» ՀԿ', 'Նախագահ', 'Արթուր Թորոսյան', 'ք. Երևան, Նորաշեն թղմ. 23-54', '+(374 41) 70-31-03', 'info@osi.am', 'www.osf.am', 'http://www.osf.am/', 1, '2019-07-02 11:50:16', '2019-07-02 11:50:16'),
(2, '«Մաշկավեներաբանների հայկական ասոցիացիա» ՀԿ', 'Նախագահ', 'Արամ Մկրտիչյան', 'ք. Երևան, Ֆուչիկի 32', '(+374 91)40-53-69', 'hhovhannes@gmail.com', 'www.aadv.am', 'http://www.aadv.am/', 1, '2019-07-02 11:52:03', '2019-07-02 11:52:03'),
(3, '«Ընտանիքի առողջության պահպանման համահայկական միություն» բարեգործական ՀԿ', 'Գործադիր տնօրեն', 'Մերի Խաչիկյան', 'ք. Երևան, Արմենակյան փողոց, 123/1, շինություն 5', '(+374 91) 50 13 97', 'merikhachukyan@gmail.com', NULL, NULL, 1, '2019-07-02 11:52:40', '2019-07-02 11:52:40'),
(4, '«Բաց հասարակության հիմնադրամներ-Հայաստան» հիմնադրամ', 'Գործադիր տնօրեն', 'Լարիսա Մինասյան', 'ք. Երևան, Թումանյան փողոց, 2-րդ փակուղի 7/1', '(+374 10) 53-38-62', 'info@osi.am', 'www.osf.am', 'http://www.osf.am/', 1, '2019-07-02 11:53:26', '2019-07-02 11:53:26'),
(5, 'gfhbfg', 'fhf', 'hfh', 'hfh5452', '256526523', 'gambaryanharutyun@gmail.com', 'fghfhf.com', NULL, 1, '2019-07-03 03:03:24', '2019-07-03 03:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(15, 1, 'Home', '', '_self', NULL, '#000000', NULL, 14, '2019-06-05 10:41:25', '2019-08-01 04:01:04', 'voyager.home.index', 'null'),
(17, 1, 'Homepage Sliders', '', '_self', NULL, NULL, 15, 1, '2019-06-06 04:32:45', '2019-06-06 05:21:30', 'voyager.homepage-sliders.index', NULL),
(18, 1, 'News', '', '_self', NULL, '#000000', NULL, 17, '2019-06-06 07:35:14', '2019-08-01 04:01:04', NULL, ''),
(21, 1, 'News', '', '_self', NULL, NULL, 18, 1, '2019-06-07 04:47:54', '2019-06-07 04:48:31', 'voyager.news.index', NULL),
(22, 1, 'Announcements', '', '_self', NULL, NULL, 23, 1, '2019-06-07 06:49:37', '2019-06-07 07:04:06', 'voyager.announcements.index', NULL),
(24, 1, 'Announcements', '/admin/announcements', '_self', NULL, '#000000', 18, 2, '2019-06-07 07:05:29', '2019-06-07 07:05:34', NULL, ''),
(25, 1, 'Videos', '', '_self', NULL, NULL, 18, 3, '2019-06-07 08:13:21', '2019-06-07 08:13:50', 'voyager.videos.index', NULL),
(27, 1, 'Ministry', '', '_self', NULL, '#000000', NULL, 18, '2019-06-10 05:23:41', '2019-08-01 04:01:04', NULL, ''),
(31, 1, 'Minister\'s Staff', '', '_self', NULL, '#000000', 27, 6, '2019-06-10 05:57:01', '2019-06-26 07:37:18', 'voyager.minister-staff.index', 'null'),
(32, 1, 'Ministry Staff', '', '_self', NULL, '#000000', 27, 7, '2019-06-10 09:10:30', '2019-06-26 07:37:18', 'voyager.ministry-staff.index', 'null'),
(33, 1, 'Partners', '', '_self', NULL, NULL, NULL, 20, '2019-06-10 10:04:06', '2019-08-01 04:01:04', 'voyager.partners.index', NULL),
(34, 1, 'Pages Texts', '', '_self', NULL, NULL, NULL, 11, '2019-06-12 04:28:01', '2019-08-01 04:01:04', 'voyager.pages-texts.index', NULL),
(39, 1, 'Minister Page', '', '_self', NULL, NULL, 27, 3, '2019-06-13 08:37:53', '2019-06-26 07:37:18', 'voyager.minister-page.index', NULL),
(40, 1, 'Minister Info Categories', '', '_self', NULL, NULL, 27, 4, '2019-06-13 09:18:22', '2019-06-26 07:37:18', 'voyager.minister-info-categories.index', NULL),
(41, 1, 'Minister Infos', '', '_self', NULL, NULL, 27, 5, '2019-06-13 09:32:54', '2019-06-26 07:37:18', 'voyager.minister-infos.index', NULL),
(42, 1, 'Cover Photos', '', '_self', NULL, NULL, NULL, 13, '2019-06-17 08:09:10', '2019-08-01 04:01:04', 'voyager.cover-photos.index', NULL),
(43, 1, 'Speech And Interviews', '', '_self', NULL, NULL, 44, 1, '2019-06-19 06:09:46', '2019-06-19 06:10:39', 'voyager.speech-and-interviews.index', NULL),
(44, 1, 'Informative', '', '_self', 'Information', '#000000', NULL, 16, '2019-06-19 06:10:23', '2019-08-01 04:01:04', NULL, ''),
(45, 1, 'Reports', '', '_self', NULL, NULL, 44, 2, '2019-06-19 09:16:22', '2019-06-19 09:16:46', 'voyager.reports.index', NULL),
(46, 1, 'Press Releases', '', '_self', NULL, NULL, 44, 3, '2019-06-20 05:35:32', '2019-06-20 05:35:56', 'voyager.press-releases.index', NULL),
(47, 1, 'Researches', '', '_self', NULL, NULL, 44, 4, '2019-06-20 07:26:08', '2019-06-20 07:26:28', 'voyager.researches.index', NULL),
(48, 1, 'Statistics', '', '_self', NULL, NULL, 44, 5, '2019-06-20 07:36:42', '2019-06-20 07:39:23', 'voyager.statistics.index', NULL),
(49, 1, 'Informatives', '', '_self', NULL, NULL, 44, 6, '2019-06-20 08:07:26', '2019-06-20 08:07:44', 'voyager.informatives.index', NULL),
(50, 1, 'Legal Acts', '', '_self', NULL, NULL, 54, 2, '2019-06-26 07:29:52', '2019-06-26 07:38:04', 'voyager.legal-acts.index', NULL),
(51, 1, 'Legal Acts Types', '', '_self', NULL, NULL, 54, 1, '2019-06-26 07:30:42', '2019-06-26 07:38:04', 'voyager.legal-acts-types.index', NULL),
(52, 1, 'Min History Categories', '', '_self', NULL, NULL, 27, 1, '2019-06-26 07:33:59', '2019-06-26 07:37:04', 'voyager.min-history-categories.index', NULL),
(53, 1, 'Min History Items', '', '_self', NULL, NULL, 27, 2, '2019-06-26 07:35:40', '2019-06-26 07:37:18', 'voyager.min-history-items.index', NULL),
(54, 1, 'Legal Acts', '', '_self', NULL, '#000000', NULL, 15, '2019-06-26 07:37:33', '2019-08-01 04:01:04', NULL, ''),
(55, 1, 'Links Ccos', '', '_self', NULL, NULL, 59, 3, '2019-07-02 11:40:43', '2019-07-02 11:46:01', 'voyager.links-ccos.index', NULL),
(56, 1, 'Links Co Workers', '', '_self', NULL, NULL, 59, 1, '2019-07-02 11:42:18', '2019-07-02 11:46:01', 'voyager.links-co-workers.index', NULL),
(57, 1, 'Links Links', '', '_self', NULL, NULL, 59, 4, '2019-07-02 11:43:41', '2019-07-02 11:45:47', 'voyager.links-links.index', NULL),
(58, 1, 'Links Ngos', '', '_self', NULL, NULL, 59, 2, '2019-07-02 11:44:46', '2019-07-02 11:46:01', 'voyager.links-ngos.index', NULL),
(59, 1, 'Links', '', '_self', NULL, '#000000', NULL, 21, '2019-07-02 11:45:24', '2019-08-01 04:01:04', NULL, ''),
(60, 1, 'Anti Corruption Events', '', '_self', NULL, NULL, 66, 1, '2019-07-04 08:29:24', '2019-07-04 08:45:44', 'voyager.anti-corruption-events.index', NULL),
(61, 1, 'Internationals', '', '_self', NULL, NULL, 66, 2, '2019-07-04 08:31:41', '2019-07-04 08:45:46', 'voyager.internationals.index', NULL),
(62, 1, 'Nationals', '', '_self', NULL, NULL, 66, 3, '2019-07-04 08:37:30', '2019-07-04 08:45:48', 'voyager.nationals.index', NULL),
(63, 1, 'Politics', '', '_self', NULL, NULL, 66, 4, '2019-07-04 08:39:49', '2019-07-04 08:45:49', 'voyager.politics.index', NULL),
(64, 1, 'Screenings', '', '_self', NULL, NULL, 66, 5, '2019-07-04 08:41:32', '2019-07-04 08:45:50', 'voyager.screenings.index', NULL),
(65, 1, 'Superiors', '', '_self', NULL, NULL, 66, 6, '2019-07-04 08:43:50', '2019-07-04 08:45:51', 'voyager.superiors.index', NULL),
(67, 1, 'Licens Documents Applications', '', '_self', NULL, NULL, 71, 3, '2019-07-08 03:16:47', '2019-07-08 03:25:18', 'voyager.licens-documents-applications.index', NULL),
(68, 1, 'Admissions', '', '_self', NULL, NULL, 71, 1, '2019-07-08 03:19:33', '2019-07-08 03:25:14', 'voyager.admissions.index', NULL),
(69, 1, 'Advertising Permissions', '', '_self', NULL, NULL, 71, 2, '2019-07-08 03:21:13', '2019-07-08 03:25:18', 'voyager.advertising-permissions.index', NULL),
(70, 1, 'State Orders', '', '_self', NULL, NULL, 71, 4, '2019-07-08 03:23:01', '2019-07-08 03:25:21', 'voyager.state-orders.index', NULL),
(71, 1, 'Services', '', '_self', NULL, '#000000', NULL, 22, '2019-07-08 03:24:58', '2019-08-01 04:01:04', NULL, ''),
(72, 1, 'Faq Categories', '', '_self', NULL, NULL, 74, 1, '2019-07-08 10:28:42', '2019-07-08 10:31:02', 'voyager.faq-categories.index', NULL),
(73, 1, 'Faqs', '', '_self', NULL, NULL, 74, 2, '2019-07-08 10:29:21', '2019-07-08 10:31:03', 'voyager.faqs.index', NULL),
(74, 1, 'FAQ', '', '_self', NULL, '#000000', NULL, 23, '2019-07-08 10:30:54', '2019-08-01 04:01:04', NULL, ''),
(76, 1, 'Programs', '', '_self', NULL, '#000000', NULL, 19, '2019-07-09 07:12:50', '2019-08-01 04:01:04', NULL, ''),
(78, 1, 'Politics', '', '_self', 'Politics', '#000000', 76, 4, '2019-07-09 07:15:39', '2019-07-09 07:20:09', 'voyager.politics.index', NULL),
(79, 1, 'Superiors', '', '_self', 'Superiors', '#000000', 76, 6, '2019-07-09 07:17:02', '2019-07-09 07:20:21', 'voyager.superiors.index', NULL),
(80, 1, 'Nationals', '', '_self', 'Nationals', '#000000', 76, 3, '2019-07-09 07:17:52', '2019-07-09 07:20:09', 'voyager.nationals.index', NULL),
(81, 1, 'Internationals', '', '_self', 'Internationals', '#000000', 76, 2, '2019-07-09 07:18:22', '2019-07-09 07:20:01', 'voyager.internationals.index', NULL),
(82, 1, 'Screenings', '', '_self', 'Screenings', '#000000', 76, 5, '2019-07-09 07:18:52', '2019-07-09 07:20:16', 'voyager.screenings.index', NULL),
(83, 1, 'Anti Corruption Events', '', '_self', 'Anti Corruption Events', '#000000', 76, 1, '2019-07-09 07:19:23', '2019-07-09 07:19:44', 'voyager.anti-corruption-events.index', NULL),
(84, 1, 'Budget Categories', '', '_self', NULL, NULL, 91, 1, '2019-07-09 08:55:06', '2019-07-09 09:05:26', 'voyager.budget-categories.index', NULL),
(85, 1, 'Budgets', '', '_self', NULL, NULL, 91, 2, '2019-07-09 08:56:00', '2019-07-09 09:05:27', 'voyager.budgets.index', NULL),
(86, 1, 'Moh Consultants', '', '_self', NULL, NULL, 27, 8, '2019-07-09 09:00:27', '2019-07-09 09:05:46', 'voyager.moh-consultants.index', NULL),
(87, 1, 'Pc Appeals', '', '_self', NULL, NULL, 92, 1, '2019-07-09 09:01:05', '2019-07-09 09:06:09', 'voyager.pc-appeals.index', NULL),
(88, 1, 'Pc Results', '', '_self', NULL, NULL, 92, 2, '2019-07-09 09:01:46', '2019-07-09 09:06:16', 'voyager.pc-results.index', NULL),
(89, 1, 'Pc Sessions', '', '_self', NULL, NULL, 92, 3, '2019-07-09 09:02:30', '2019-07-09 09:06:20', 'voyager.pc-sessions.index', NULL),
(90, 1, 'Pc Staffs', '', '_self', NULL, NULL, 92, 4, '2019-07-09 09:03:05', '2019-07-09 09:06:21', 'voyager.pc-staffs.index', NULL),
(91, 1, 'Budget', '', '_self', NULL, '#000000', NULL, 24, '2019-07-09 09:05:14', '2019-08-01 04:01:04', NULL, ''),
(92, 1, 'Public Council', '', '_self', NULL, '#000000', NULL, 25, '2019-07-09 09:06:01', '2019-08-01 04:01:04', NULL, ''),
(93, 1, 'Staffing Job Acceptances', '', '_self', NULL, NULL, 97, 1, '2019-07-09 10:56:24', '2019-07-09 11:02:27', 'voyager.staffing-job-acceptances.index', NULL),
(94, 1, 'Staffing Staff Lists', '', '_self', NULL, NULL, 97, 2, '2019-07-09 10:57:43', '2019-07-09 11:02:29', 'voyager.staffing-staff-lists.index', NULL),
(95, 1, 'Staffing Tender Results', '', '_self', NULL, NULL, 97, 3, '2019-07-09 10:59:02', '2019-07-09 11:02:31', 'voyager.staffing-tender-results.index', NULL),
(96, 1, 'Staffing Vacancies', '', '_self', NULL, NULL, 97, 4, '2019-07-09 10:59:59', '2019-07-09 11:02:36', 'voyager.staffing-vacancies.index', NULL),
(97, 1, 'Staffing', '', '_self', NULL, '#000000', NULL, 26, '2019-07-09 11:02:16', '2019-08-01 04:01:04', NULL, ''),
(98, 1, 'Your Rights Files', '', '_self', NULL, NULL, 100, 1, '2019-07-10 04:36:05', '2019-07-10 04:37:52', 'voyager.your-rights-files.index', NULL),
(99, 1, 'Your Rights Videos', '', '_self', NULL, NULL, 100, 2, '2019-07-10 04:37:17', '2019-07-10 04:37:54', 'voyager.your-rights-videos.index', NULL),
(100, 1, 'Your Rights', '', '_self', NULL, '#000000', NULL, 27, '2019-07-10 04:37:41', '2019-08-01 04:01:04', NULL, ''),
(101, 1, 'Ss Other Orgs', '', '_self', NULL, NULL, 103, 8, '2019-07-12 04:10:28', '2019-07-12 12:14:55', 'voyager.ss-other-orgs.index', NULL),
(102, 1, 'Ss Stationery Orgs', '', '_self', NULL, NULL, 103, 7, '2019-07-12 04:11:10', '2019-07-12 12:14:55', 'voyager.ss-stationery-orgs.index', NULL),
(103, 1, 'Sub Structures', '', '_self', NULL, '#000000', NULL, 28, '2019-07-12 04:12:11', '2019-08-01 04:01:04', NULL, ''),
(104, 1, 'License Org Files', '', '_self', NULL, NULL, 112, 1, '2019-07-12 12:03:13', '2019-07-12 12:14:08', 'voyager.license-org-files.index', NULL),
(105, 1, 'License Org Infos', '', '_self', NULL, NULL, 112, 2, '2019-07-12 12:04:32', '2019-07-12 12:14:11', 'voyager.license-org-infos.index', NULL),
(106, 1, 'Ss Drug Medical Expert Files', '', '_self', NULL, NULL, 103, 1, '2019-07-12 12:05:12', '2019-07-12 12:14:55', 'voyager.ss-drug-medical-expert-files.index', NULL),
(107, 1, 'Ss Drug Medical Expert Infos', '', '_self', NULL, NULL, 103, 2, '2019-07-12 12:07:56', '2019-07-12 12:14:55', 'voyager.ss-drug-medical-expert-infos.index', NULL),
(108, 1, 'Ss Health Institute Files', '', '_self', NULL, NULL, 103, 3, '2019-07-12 12:09:34', '2019-07-12 12:14:55', 'voyager.ss-health-institute-files.index', NULL),
(109, 1, 'Ss Health Institute Infos', '', '_self', NULL, NULL, 103, 4, '2019-07-12 12:11:20', '2019-07-12 12:14:55', 'voyager.ss-health-institute-infos.index', NULL),
(110, 1, 'Ss Medical Library Infos', '', '_self', NULL, NULL, 103, 6, '2019-07-12 12:11:52', '2019-07-12 12:26:21', 'voyager.ss-medical-library-infos.index', NULL),
(111, 1, 'Ss Medical Library Files', '', '_self', NULL, NULL, 103, 5, '2019-07-12 12:12:24', '2019-07-12 12:26:21', 'voyager.ss-medical-library-files.index', NULL),
(112, 1, 'License Organisation', '', '_self', NULL, '#000000', NULL, 29, '2019-07-12 12:13:52', '2019-08-01 04:01:04', NULL, ''),
(113, 1, 'Dynamic Page Files', '', '_self', NULL, NULL, 117, 4, '2019-07-19 10:24:12', '2019-07-22 04:31:25', 'voyager.dynamic-page-files.index', NULL),
(114, 1, 'Dynamic Sections', '', '_self', NULL, NULL, 117, 1, '2019-07-19 10:29:11', '2019-07-22 04:31:20', 'voyager.dynamic-sections.index', NULL),
(115, 1, 'Dynamic Pages', '', '_self', NULL, NULL, 117, 2, '2019-07-19 10:35:43', '2019-07-22 04:31:23', 'voyager.dynamic-pages.index', NULL),
(116, 1, 'Dynamic Sub Pages', '', '_self', NULL, NULL, 117, 3, '2019-07-19 10:41:07', '2019-07-22 04:31:25', 'voyager.dynamic-sub-pages.index', NULL),
(117, 1, 'Dynamic Pages', '', '_self', NULL, '#000000', NULL, 30, '2019-07-22 04:31:00', '2019-08-01 04:01:04', NULL, ''),
(118, 1, 'Web Site Translations', '', '_self', NULL, NULL, NULL, 12, '2019-07-26 04:37:31', '2019-08-01 04:01:04', 'voyager.web-site-translations.index', NULL),
(119, 1, 'Socials', '', '_self', NULL, NULL, NULL, 10, '2019-08-01 04:00:28', '2019-08-01 04:01:04', 'voyager.socials.index', NULL);

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
(87, '2014_10_12_000000_create_users_table', 1),
(88, '2014_10_12_100000_create_password_resets_table', 1),
(89, '2016_01_01_000000_add_voyager_user_fields', 1),
(90, '2016_01_01_000000_create_data_types_table', 1),
(91, '2016_01_01_000000_create_pages_table', 1),
(92, '2016_01_01_000000_create_posts_table', 1),
(93, '2016_02_15_204651_create_categories_table', 1),
(94, '2016_05_19_173453_create_menu_table', 1),
(95, '2016_10_21_190000_create_roles_table', 1),
(96, '2016_10_21_190000_create_settings_table', 1),
(97, '2016_11_30_135954_create_permission_table', 1),
(98, '2016_11_30_141208_create_permission_role_table', 1),
(99, '2016_12_26_201236_data_types__add__server_side', 1),
(100, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(101, '2017_01_14_005015_create_translations_table', 1),
(102, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(103, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(104, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(105, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(106, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(107, '2017_08_05_000000_add_group_to_settings_table', 1),
(108, '2017_11_26_013050_add_user_role_relationship', 1),
(109, '2017_11_26_015000_create_user_roles_table', 1),
(110, '2018_03_11_000000_add_user_settings', 1),
(111, '2018_03_14_000000_add_details_to_data_types_table', 1),
(112, '2018_03_16_000000_make_settings_value_nullable', 1),
(113, '2019_06_05_143810_create_cars_table', 1),
(114, '2019_06_06_082150_create_homepage_sliders_table', 1),
(115, '2019_06_07_084259_create_news_table', 1),
(116, '2019_06_07_102546_create_announcements_table', 1),
(117, '2019_06_07_120635_create_videos_table', 1),
(118, '2019_06_10_095525_create_minister_staffs_table', 1),
(119, '2019_06_10_130540_create_ministry_staffs_table', 1),
(120, '2019_06_10_140028_create_partners_table', 1),
(121, '2019_06_12_080821_create_pages_texts_table', 1),
(122, '2019_06_13_120030_create_minister_pages_table', 1),
(123, '2019_06_13_130325_create_minister_info_categories_table', 1),
(124, '2019_06_13_132757_create_minister_infos_table', 1),
(125, '2019_06_13_142439_add_url_to_minister_infos_table', 1),
(126, '2019_06_14_135727_drop_url_from_news_table', 1),
(127, '2019_06_17_065247_drop_video_individual_url_from_videos_table', 1),
(128, '2019_06_17_113519_create_cover_photos_table', 1),
(129, '2019_06_18_110124_drop_url_from_announcements_table', 1),
(130, '2019_06_19_085443_create_speech_and_interviews_table', 2),
(131, '2019_06_19_130403_create_reports_table', 3),
(132, '2019_06_20_084806_create_press_releases_table', 4),
(133, '2019_06_20_112005_create_researches_table', 5),
(134, '2019_06_20_113004_create_statistics_table', 6),
(135, '2019_06_20_114753_create_informatives_table', 7),
(136, '2019_06_21_102753_add_slider_row_topartners_table', 8),
(139, '2019_06_21_130747_add_order_on_tables', 9),
(140, '2019_06_24_083812_create_min_history_categories_table', 10),
(141, '2019_06_24_085106_create_min_history_items_table', 10),
(142, '2019_06_25_115827_create_legal_acts_types_table', 10),
(143, '2019_06_26_082000_create_legal_acts_table', 10),
(144, '2019_07_01_073207_drop_icon_column_from_tables', 11),
(145, '2019_07_02_074645_create_links_co_workers_table', 12),
(146, '2019_07_02_100519_create_links_ngos_table', 12),
(147, '2019_07_02_124005_create_links_ccos_table', 12),
(148, '2019_07_02_141218_create_links_links_table', 12),
(149, '2019_07_03_124007_create_politics_table', 13),
(150, '2019_07_04_095952_create_superiors_table', 13),
(151, '2019_07_04_102646_create_nationals_table', 13),
(152, '2019_07_04_104536_create_internationals_table', 13),
(153, '2019_07_04_110458_create_screenings_table', 13),
(154, '2019_07_04_111950_create_anti_corruption_events_table', 13),
(155, '2019_07_04_114524_add_columns_to_legal_acts_table', 13),
(156, '2019_07_04_134502_create_licens_documents_applications_table', 14),
(157, '2019_07_04_135433_create_advertising_permissions_table', 14),
(158, '2019_07_04_140528_create_state_orders_table', 14),
(159, '2019_07_04_140855_create_admissions_table', 14),
(160, '2019_07_08_124029_create_faq_categories_table', 15),
(161, '2019_07_08_131421_create_faqs_table', 15),
(162, '2019_07_09_080353_create_budget_categories_table', 16),
(163, '2019_07_09_080405_create_budgets_table', 16),
(164, '2019_07_09_100059_create_moh_consultants_table', 16),
(165, '2019_07_09_110042_create_pc_staffs_table', 16),
(166, '2019_07_09_110200_create_pc_results_table', 16),
(167, '2019_07_09_110750_create_pc_sessions_table', 16),
(168, '2019_07_09_110842_create_pc_appeals_table', 16),
(169, '2019_07_09_135041_create_staffing_staff_lists_table', 17),
(170, '2019_07_09_135206_create_staffing_vacancies_table', 17),
(171, '2019_07_09_135248_create_staffing_tender_results_table', 17),
(172, '2019_07_09_144353_create_staffing_job_acceptances_table', 17),
(173, '2019_07_10_072143_create_your_rights_files_table', 18),
(174, '2019_07_10_072152_create_your_rights_videos_table', 18),
(175, '2019_07_11_121746_create_ss_stationery_orgs_table', 19),
(176, '2019_07_11_121934_create_ss_other_orgs_table', 19),
(177, '2019_07_12_122118_create_license_org_files_table', 20),
(178, '2019_07_12_122142_create_license_org_infos_table', 20),
(179, '2019_07_12_131810_create_ss_health_institute_files_table', 20),
(180, '2019_07_12_131855_create_ss_health_institute_infos_table', 20),
(181, '2019_07_12_151441_create_ss_drug_medical_expert_files_table', 20),
(182, '2019_07_12_151448_create_ss_drug_medical_expert_infos_table', 20),
(183, '2019_07_12_153041_create_ss_medical_library_files_table', 20),
(184, '2019_07_12_153047_create_ss_medical_library_infos_table', 20),
(185, '2019_07_16_131059_change_min_history_categories_column', 21),
(186, '2019_07_02_130209_create_dynamic_page_files_table', 22),
(187, '2019_07_08_140221_dynamic_page_video_and_cover_photo', 22),
(188, '2019_07_16_135213_create_dynamic_sub_page_intermediate_tables_table', 22),
(189, '2019_07_22_131529_add_column_to_dynamic_page_files', 23),
(190, '2019_07_25_130544_create_web_site_translations_table', 24),
(191, '2019_08_01_073057_create_socials_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `minister_infos`
--

CREATE TABLE `minister_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_infos`
--

INSERT INTO `minister_infos` (`id`, `name`, `description`, `url`, `category_id`, `created_at`, `updated_at`, `order`) VALUES
(3, '2004-2006', 'սովորել է ՀՀ ԱՆ ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտում՝ սոցիալական հիգիենա և առողջապահության կազմակերպում մասնագիտությամբ', '#', 2, '2019-06-13 09:52:00', '2019-06-13 10:40:19', 1),
(4, '1988-2004', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '', 2, '2019-06-13 09:52:59', '2019-06-13 09:52:59', 1),
(5, '2004-2005', '«Իրական աշխարհ, իրական մարդիկ» ՀԿ, Սոցիալական աշխատողների խմբի ղեկավար', '', 3, '2019-06-13 09:53:40', '2019-06-13 09:53:40', 1),
(6, '2005-2010', 'Առողջության առաջնային պահպանման բարեփոխումների ծրագիր, Ընտանեկան բժշկության և բուժօգնության որակի համակարգող', '', 3, '2019-06-13 09:54:03', '2019-06-13 09:54:03', 1),
(7, '2010-2011', 'ՀՀ ԱՆ տուբերկուլոզի դեմ պայքարի ազգային կենտրոն, Մոնիտորինգի և գնահատման բաժնի վարիչ, Տնօրենի ժամանակավոր պաշտոնակատար', '', 3, '2019-06-13 09:54:26', '2019-06-13 09:54:26', 1),
(8, '2011-2015 2016-2018', '«ՄԻԲՍ» բժշկա-ախտորոշիչ կենտրոն, տնօրեն', '', 3, '2019-06-13 09:55:15', '2019-06-13 09:55:15', 1),
(9, '12.05.2018', 'Հայաստանի Հանրապետության առողջապահության նախարարն է', '', 3, '2019-06-13 09:55:42', '2019-06-13 09:55:42', 1),
(10, '18.01.2019', 'հանրապետության նախագահի հրամանագրով վերանշանակվել է առողջապահության նախարար', '', 3, '2019-06-13 09:56:14', '2019-06-13 09:56:14', 1),
(11, '2015-2016', 'Ծառայել է ՀՀ զինված ուժերում: Ունի բ/ծ լեյտենանտի կոչում։', '', 4, '2019-06-13 09:57:01', '2019-06-13 09:57:01', 1),
(12, '', 'Մասնակցել է բազմաթիվ գիտաժողովներիև դասընթացների: Հեղինակ է հայաստանյան և միջազգային գիտական ամսագրերում տպագրված մի շարք հոդվածների:', '#', 4, '2019-06-13 10:03:00', '2019-06-13 10:31:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `minister_info_categories`
--

CREATE TABLE `minister_info_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_info_categories`
--

INSERT INTO `minister_info_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `order`) VALUES
(2, 'ԿՐԹՈՒԹՅՈՒՆ', 'education', '2019-06-13 09:49:12', '2019-06-13 09:49:12', 1),
(3, 'ԱՇԽԱՏԱՆՔԱՅԻՆ ԳՈՐԾՈՒՆԵՈՒԹՅՈՒՆ', 'work-experience', '2019-06-13 09:50:09', '2019-06-13 09:50:09', 1),
(4, 'ԱՅԼ ՏՎՅԱԼՆԵՐ', 'other-info', '2019-06-13 09:50:33', '2019-06-13 09:50:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `minister_pages`
--

CREATE TABLE `minister_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `minister_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minister_personal_info_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minister_personal_info_pic_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_pages`
--

INSERT INTO `minister_pages` (`id`, `minister_pic`, `minister_personal_info_pic`, `minister_personal_info_pic_title`, `created_at`, `updated_at`, `order`) VALUES
(2, 'minister-page/June2019/tQ3egZnrn5E4rzCwHGxF.png', 'minister-page/June2019/FiipLV7pNoii183YUSx5.png', 'Ամուսնացած է, ունի երկու զավակ։', '2019-06-13 10:33:00', '2019-07-09 18:49:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `minister_staffs`
--

CREATE TABLE `minister_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `minister_staffs`
--

INSERT INTO `minister_staffs` (`id`, `position`, `name`, `phone_number`, `email`, `image`, `text`, `created_at`, `updated_at`, `order`) VALUES
(1, 'ՀՀ առողջապահության նախարար', 'Արսեն Թորոսյան', '(+374 60) 80-80-03 /1112', 'minister@moh.am', 'minister-staff/July2019/BiFt4Dcfzj7oFb6bfUmH.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Տարեթիվ, ամսաթիվ, ծննդավայր</strong></p>\r\n<p style=\"text-align: justify;\">1982թ. հունիսի 21, ք. Երևան</p>\r\n<p style=\"text-align: justify;\"><strong>Կրթություն</strong></p>\r\n<p style=\"text-align: justify;\">1998-2004թթ. սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում</p>\r\n<p style=\"text-align: justify;\">2004-2006թթ. սովորել է ՀՀ ԱՆ ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտում՝ սոցիալական հիգիենա և առողջապահության կազմակերպում մասնագիտությամբ</p>\r\n<p style=\"text-align: justify;\">2006-2009թթ. ուսումը շարունակել է ասպիրանտուրայում՝ հանրային առողջություն և առողջապահության կազմակերպում մասնագիտությամբ</p>\r\n<p style=\"text-align: justify;\"><strong>Աշխատանքային գործունեություն</strong></p>\r\n<p style=\"text-align: justify;\">2004-2005թթ. - &laquo;Իրական աշխարհ, իրական մարդիկ&raquo; ՀԿ, Սոցիալական աշխատողների խմբի ղեկավար 2005-2010թթ. - Առողջության առաջնային պահպանման բարեփոխումների ծրագիր, Ընտանեկան բժշկության և բուժօգնության որակի համակարգող</p>\r\n<p style=\"text-align: justify;\">2010-2011թթ. - ՀՀ ԱՆ տուբերկուլոզի դեմ պայքարի ազգային կենտրոն, Մոնիտորինգի և գնահատման բաժնի վարիչ, Տնօրենի ժամանակավոր պաշտոնակատար</p>\r\n<p style=\"text-align: justify;\">2011-2015թթ., 2016-2018թթ. - &laquo;ՄԻԲՍ&raquo; բժշկա-ախտորոշիչ կենտրոն, տնօրեն</p>\r\n<p style=\"text-align: justify;\">2018 թվականի մայիսի 12-ից Հայաստանի Հանրապետության առողջապահության նախարարն է:</p>\r\n<p style=\"text-align: justify;\">2019 թվականի հունվարի 18-ին հանրապետության նախագահի հրամանագրով վերանշանակվել է առողջապահության նախարար:</p>\r\n<p style=\"text-align: justify;\"><strong>Այլ տվյալներ</strong></p>\r\n<p style=\"text-align: justify;\">2015-2016թթ. ծառայել է ՀՀ զինված ուժերում: Ունի բ/ծ լեյտենանտի կոչում։</p>\r\n<p style=\"text-align: justify;\">Մասնակցել է բազմաթիվ գիտաժողովներիև դասընթացների: Հեղինակ է հայաստանյան և միջազգային գիտական ամսագրերում տպագրված մի շարք հոդվածների:</p>\r\n<p style=\"text-align: justify;\"><strong>Անձնական տվյալներ</strong></p>\r\n<p style=\"text-align: justify;\">Ամուսնացած է, ունի երկու զավակ։</p>\r\n</body>\r\n</html>', '2019-06-10 05:58:00', '2019-07-09 18:57:13', 7),
(2, 'ՀՀ առողջապահության նախարարի տեղակալ', 'Լեվոն Հակոբյան', '(+374 60) 80-80-03 / 1114', 'levonhakobyan@moh.am', 'minister-staff/July2019/8COP9TBO3OXb1PFREyTl.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Լևոն Հակոբյանն իրականացնում է`</strong></p>\r\n<ol>\r\n<li style=\"text-align: justify;\">&nbsp;արտահիվանդանոցային և հիվանդանոցային բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության միջոցով,</li>\r\n<li style=\"text-align: justify;\">&nbsp;դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li style=\"text-align: justify;\">&nbsp;մոր և մանկան առողջության պահպանման կազմակերպման աշխատանքների համակարգումը` նախարարության մոր և մանկան առողջության պահպանման վարչության միջոցով,</li>\r\n<li style=\"text-align: justify;\">&nbsp;զորահավաքային և արտակարգ իրավիճակների նախապատրաստվածության կազմակերպման աշխատանքների համակարգումը` նախարարության արտակարգ իրավիճակների և զորահավաքային նախապատրաստության բաժնի միջոցով:</li>\r\n</ol>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n</body>\r\n</html>', '2019-06-10 05:59:00', '2019-07-09 18:57:13', 6),
(3, 'ՀՀ առողջապահության նախարարի տեղակալ', 'Հովհաննես Հարությունյան', '(+374 60) 80-80-03 / 1122', 'hovhannesharutyunyan@moh.am', 'minister-staff/July2019/ypZnyG1XeeImir3R9nrw.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Հովհաննես Հարությունյանն իրականացնում է`</strong></p>\r\n<ol>\r\n<li>&nbsp;առողջապահության բնագավառում լիցենզավորման ենթակա գործունեության տեսակների լիցենզավորման և գովազդի թույլտվությունների տրամադրման աշխատանքների համակարգումը` նախարարության լիցենզավորման գործակալության միջոցով,</li>\r\n<li>&nbsp;ստոմատոլոգիական բժշկական օգնության և սպասարկման ծառայության կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության միջոցով,</li>\r\n<li>&nbsp;մարզերի առողջապահական կազմակերպություններում բժշկական օգնության և սպասարկման ծառայությունների օպտիմալացման ծրագրերի իրականացում առողջապահական ծրագրերի իրականացման գրասենյակի միջոցով,</li>\r\n<li>&nbsp;մարզերի բժշկական կենտրոններին համապատասխան բժշկական անձնակազմով ապահովման աշխատանքների համակարգումը` նախարարության անձնակազմի կառավարման վարչության միջոցով,</li>\r\n<li>&nbsp;Համաշխարհային բանկի կողմից ֆինանսավորվող առողջապահական վարկային և դրամաշնորհային ծրագրերի շրջանակներում Առողջապահական ծրագրերի իրականացման գրասենյակ&raquo; պետական հիմնարկի կողմից իրականացվող աշխատանքների համակարգումը,</li>\r\n<li>&nbsp;առողջապահական կազմակերպությունների արդիականացման և ներդրումային ծրագրերի իրականացման աշխատանքների համակարգումը ոլորտային իրավասու կառուցվածքային և առանձնացված ստորաբաժանումների միջոցով:</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', '2019-06-10 06:00:00', '2019-07-09 18:57:10', 5),
(4, 'ՀՀ առողջապահության նախարարի մամլո քարտուղար', 'Ալինա նիկողոսյան', '(+374 60) 80-80-03 / 1120', 'alina.nikoghosyan@moh.am', 'minister-staff/June2019/ROcEYES2P2d0oPLcAYzt.png', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<h1>Ալինա Նիկողոսյանը իրականացնում է՝</h1>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>նախարարության` արտաքին հարաբերությունների ոլորտում իրականացվող միջպետական, ներառյալ ԱՊՀերկրների և Եվրասիական տնտեսական միության հետ համագործակցության շրջանակում իրականացվող աշխատանքների համակարգումը` նախարարության միջազգային հարաբերությունների վարչության միջոցով,</li>\r\n<li>առողջապահության քաղաքականության, ստվերային շրջանառության դեմ պայքարի, առողջապահության ոլորտի օրենսդրության մշակման և կատարելագործման աշխատանքների համակարգումը` նախարարության իրավաբանական վարչության միջոցով,</li>\r\n<li>կոռուպցիայի դեմ պայքարի աշխատանքների համակարգումը` հակակոռուպցիոն ծրագրերի իրականացումը համակարգող ստորաբաժանում հանդիսացող նախարարության իրավաբանական վարչության, քաղաքացիների բողոքների և դիմումների արագ արձագանքման բաժնի, ոլորտային իրավասու այլ կառուցվածքային և առանձնացված ստորաբաժանումների միջոցով,</li>\r\n<li>դեղերի շրջանառության պետական կարգավորման ոլորտում իրականացվող աշխատանքների համակարգումը` նախարարության դեղորայքային քաղաքականության և բժշկական տեխնոլոգիաների վարչության, &laquo;Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն&raquo; փակ բաժնետիրական ընկերության միջոցով,</li>\r\n<li>առողջապահության բնագավառում լիցենզավորման ենթակա գործունեության տեսակների լիցենզավորման և գովազդի թույլտվությունների տրամադրման աշխատանքների համակարգումը` նախարարության&nbsp; լիցենզավորման գործակալության միջոցով:</li>\r\n</ul>\r\n</body>\r\n</html>', '2019-06-10 06:00:00', '2019-07-09 18:56:54', 1),
(5, 'ՀՀ առողջապահության նախարարի տեղակալ', 'Անահիտ Ավանեսյան', '(+374 60) 80-80-03 / 1123', 'a.avanesyan@moh.am', 'minister-staff/July2019/rXkGLqk4QqVeHkm0FjMl.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Անահիտ Ավանեսյանն իրականացնում է`</strong></p>\r\n<ol>\r\n<li>&nbsp;նախարարության` արտաքին հարաբերությունների ոլորտում իրականացվող միջպետական, ներառյալ ԱՊՀ երկրների և Եվրասիական տնտեսական միության հետ համագործակցության շրջանակում իրականացվող աշխատանքների համակարգումը` նախարարության միջազգային հարաբերությունների վարչության միջոցով,</li>\r\n<li>առողջապահության քաղաքականության, ստվերային շրջանառության դեմ պայքարի, առողջապահության ոլորտի օրենսդրության մշակման և կատարելագործման աշխատանքների համակարգումը` նախարարության իրավաբանական վարչության միջոցով,</li>\r\n<li>&nbsp;կոռուպցիայի դեմ պայքարի աշխատանքների համակարգումը` հակակոռուպցիոն ծրագրերի իրականացումը համակարգող ստորաբաժանում հանդիսացող նախարարության իրավաբանական վարչության, քաղաքացիների բողոքների և դիմումների արագ արձագանքման բաժնի, ոլորտային իրավասու այլ կառուցվածքային և առանձնացված ստորաբաժանումների միջոցով,</li>\r\n<li>&nbsp;դեղերի շրջանառության պետական կարգավորման ոլորտում իրականացվող աշխատանքների համակարգումը` նախարարության դեղորայքային քաղաքականության և բժշկական տեխնոլոգիաների վարչության, &laquo;Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն&raquo; փակ բաժնետիրական ընկերության միջոցով,</li>\r\n<li>&nbsp;առողջապահական տեղեկատվական համակարգի, էլեկտրոնային առողջապահության ոլորտի աշխատանքների համակարգումը` նախարարության պետական առողջապահական գործակալության, &laquo;Ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտ&raquo; ՓԲԸ-ի տեղեկատվական-վերլուծական կենտրոնի միջոցով,</li>\r\n<li>&nbsp;մարդասիրական օգնության ստացման և բաշխման աշխատանքների համակարգումը` ՀՀ ԱՆ &laquo;Մարդասիրական օգնության հանրապետական կենտրոն&raquo; ՊՈԱԿ-ի միջոցով:</li>\r\n</ol>\r\n</body>\r\n</html>', '2019-07-04 02:38:00', '2019-07-09 18:57:03', 4),
(6, 'ՀՀ առողջապահության նախարարի տեղակալ  Լենա Նանուշյան', 'Լենա Նանուշյան', '(+374 60) 80-80-03 / 1115', 'lnanushyan@moh.am', 'minister-staff/July2019/K2x1MHwyYtw34dFj8d5t.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Լենա Նանուշյանն իրականացնում է`</strong></p>\r\n<ol>\r\n<li style=\"text-align: justify;\">&nbsp;ՄԱԿ-ի և դրա կառույցների, ԱՄՆ Միջազգային զարգացման ընկերության և Համաշխարհային բանկի և այլ միջազգային կազմակերպությունների հետ համագործակցության ծրագրերի շրջանակում իրականացվող աշխատանքների համակարգումը` նախարարության միջազգային հարաբերությունների վարչության և ոլորտային իրավասու կառուցվածքային և առանձնացված ստորաբաժանումների միջոցով,</li>\r\n<li style=\"text-align: justify;\">&nbsp;ՄԻԱՎ/ՁԻԱՀ-ի կանխարգելման և տուբերկուլոզի դեմ պայքարի Գլոբալ Հիմնադրամի ֆինանսավորմամբ իրականացվող ծրագրերի համակարգումը` ՄԻԱՎ/ՁԻԱՀ-ի և մալարիայի դեմ պայքարի Գլոբալ հիմնադրամի կողմից ֆինանսավորվող դրամաշնորհային ծրագրերը համակարգող խմբի, &laquo;Տուբերկուլոզի դեմ պայքարի ազգային կենտրոն&raquo;, &laquo;ՁԻԱՀ-ի կանխարգելման հանրապետական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպությունների միջոցով,</li>\r\n<li style=\"text-align: justify;\">&nbsp;հանրային առողջության ապահովման և հիվանդությունների կանխարգելմանն ուղղված աշխատանքների համակարգումը` նախարարության հանրային առողջության բաժնի, ՀՀ ԱՆ &laquo;Հիվանդությունների վերահսկման և կանխարգելման ազգային կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li style=\"text-align: justify;\">&nbsp;կադրերի և մարդկային ներուժի զարգացմանն ուղղված աշխատանքների համակարգումը` նախարարության անձնակազմի կառավարման վարչության, ՀՀ ԱՆ &laquo;Ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտ&raquo; փակ բաժնետիրական ընկերության և &laquo;Հանրապետական գիտաբժշկական գրադարան&raquo; պետական ոչ առևտրային կազմակերպության միջոցով:</li>\r\n</ol>\r\n</body>\r\n</html>', '2019-07-04 02:39:00', '2019-07-09 18:57:01', 3),
(7, 'ՀՀ առողջապահության նախարարի խորհրդական', 'Գոհար Փանաջյան', '(+374 60) 80-80-03 / 1126', 'gpanajyan@moh.am', 'minister-staff/July2019/hUtwUlaTEN5KV94H3dbH.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</body>\r\n</html>', '2019-07-04 02:46:00', '2019-07-09 18:56:57', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ministry_staffs`
--

CREATE TABLE `ministry_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ministry_staffs`
--

INSERT INTO `ministry_staffs` (`id`, `position`, `name`, `phone_number`, `email`, `created_at`, `updated_at`, `order`) VALUES
(2, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի տեղակալ', 'Վահե Հակոբյան', '(+374 60) 80-80-03 / 1000', 'vhakobyan@moh.am', '2019-06-10 09:12:00', '2019-07-09 18:55:55', 27),
(7, 'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար', 'Արտյոմ Սմբատյան', '(+374 60) 80-80-03 / 1128', 'artyomsmbatyan@moh.am', '2019-06-24 09:38:35', '2019-07-09 18:55:55', 28),
(8, 'Բժշկական օգնության քաղաքականության վարչության  պետ', NULL, '(+374 60) 80-80-03 / 1201', NULL, '2019-06-24 09:42:00', '2019-07-09 18:55:50', 26),
(9, 'Հիվանդանոցային բժշկական օգնության քաղաքականության բաժնի պետ', NULL, '(+374 60) 80-80-03 / 1202', NULL, '2019-06-24 09:44:55', '2019-07-09 18:55:47', 25),
(10, 'Արտահիվանդանոցային բժշկական օգնության քաղաքականության բաժնի պետ', 'Քնար Ղոնյան', '(+374 60) 80-80-03 / 1211', 'knar_ghonyan@moh.am', '2019-06-24 09:46:02', '2019-07-09 18:55:38', 24),
(11, 'Մոր և մանկան առողջության պահպանման վարչության պետ', 'Կարինե Սարիբեկյան', '(+374 60) 80-80-03 / 1301', 'ksaribekyan@moh.am', '2019-06-24 09:47:27', '2019-07-09 18:55:35', 23),
(12, 'Մայրական և վերարտադրողական առողջության պահպանման բաժնի պետ', 'Գայանե Ավագյան', '(+374 10) 52-15-59, (+374 60) 80-80-03 / 1302', 'gavagyan@moh.am', '2019-06-24 09:48:49', '2019-07-09 18:55:32', 22),
(13, 'Երեխաների առողջության պահպանման բաժնի պետ', 'Նունե Փաշայան', '(+374 60) 80-80-03 / 1311', 'npashayan@moh.am', '2019-06-24 09:49:38', '2019-07-09 18:55:30', 21),
(14, 'Անձնակազմի կառավարման վարչության պետի ժ/պ', 'Քրիստինա Գյուրջյան', '(+374 60) 80-80-03 /1501', 'k_gyurjyan@moh.am', '2019-07-04 01:20:56', '2019-07-09 18:55:27', 20),
(15, 'Իրավաբանական վարչության պետի ժ/պ', 'Աննա Մկրտումյան', '(+374 60) 80-80-03 / 1601', 'anna.mkrtumyan@moh.am', '2019-07-04 01:21:57', '2019-07-09 18:55:22', 18),
(16, 'Իրավական ապահովման բաժնի պետ ժ/պ', 'Գոհար Ղուկասյան', '(+374 60) 80-80-03 /1621', 'goharghukasyan@moh.am', '2019-07-04 01:22:51', '2019-07-09 18:55:22', 19),
(17, 'Դեղորայքային քաղաքականության և բժշկական տեխնոլոգիաների վարչության պետ', 'Վարդուհի Գրիգորյան', '(+374 60) 80-80-03 /1401', 'vgrigoryan@moh.am', '2019-07-04 01:23:48', '2019-07-09 18:55:14', 17),
(18, 'Դեղորայքային քաղաքականության բաժնի պետ', 'Անահիտ Մկրտչյան', '(+374 60) 80-80-03 /1411', 'amkrtchyan@moh.am', '2019-07-04 01:24:36', '2019-07-09 18:55:10', 16),
(19, 'Բժշկական տեխնոլոգիաների և մարդասիրական օգնության համակարգման բաժնի պետ', 'Մարինե Հարությունյան', '(+374 60) 80-80-03 /1421', 'medicines@moh.am', '2019-07-04 01:25:17', '2019-07-09 18:55:07', 15),
(20, 'Արտակարգ իրավիճակների և զորահավաքային նախապատրաստության բաժնի պետ', 'Գաբրիել Թեփելիկյան', '(+374 60) 80-80-03 / 2001', 'gtepelikyan@moh.am', '2019-07-04 01:26:01', '2019-07-09 18:55:00', 14),
(21, 'Հանրային առողջության բաժնի պետի պարտականությունները կատարող', 'Կարինե Գաբրիելյան', '(+374 60) 80-80-03 /1902', NULL, '2019-07-04 01:28:45', '2019-07-09 18:54:55', 13),
(22, 'Միջազգային հարաբերությունների վարչության պետի պաշտոնակատար', 'Հայկ Գրիգորյան', '(+374 60) 80-80-03 / 2101', 'hgrigoryan@moh.am', '2019-07-04 01:29:27', '2019-07-09 18:54:51', 12),
(23, 'Միջազգային համագործակցության և արարողակարգի բաժնի պետ', 'Արսեն Վանյան', '(+374 60) 80-80-03 /1001', 'arsenvan@moh.am', '2019-07-04 01:30:06', '2019-07-09 18:54:28', 11),
(24, 'Օտարերկրյա ներդրումների ներգրավման բաժնի պետ', 'Լուսինե Առուշանյան', '(+374 60) 80-80-03 /2105', 'l-arushanyan@moh.am', '2019-07-04 01:30:51', '2019-07-09 18:54:25', 10),
(25, 'Հասարակայնության հետ կապերի բաժնի պետ տեղեկատվության ազատության ապահովման համար պատասխանատու', 'Լիլիթ Բաբախանյան', '(+374 60) 80-80-03 / 2301', 'lbabakh@moh.am, pr@moh.am', '2019-07-04 01:31:32', '2019-07-09 18:54:06', 8),
(26, 'Ֆինանսատնտեսագիտական վարչության պետ', 'Լուսինե Ավալյան', '(+374 60) 80-80-03 / 1701', 'lusineavalyan@moh.am', '2019-07-04 01:32:06', '2019-07-09 18:53:25', 7),
(27, 'Ֆինանսաբյուջետային բաժնի պետ', NULL, '(+374 60) 80-80-03 /1705', NULL, '2019-07-04 01:33:04', '2019-07-09 18:54:10', 9),
(28, 'Գնումների համակարգման բաժնի պետ', 'Հասմիկ Մնացականյան', '(+374 60) 80-80-03/ 1703', 'hmnatsakanyan@moh.am', '2019-07-04 01:33:41', '2019-07-09 18:52:59', 6),
(29, 'Հաշվապահական հաշվառման բաժնի պետ', 'Մանյա Մխիթարյան', '(+374 60) 80-80-03 / 1801', 'mmkhitaryan@moh.am', '2019-07-04 01:34:33', '2019-07-09 18:52:59', 5),
(30, 'Ներքին աուդիտի բաժնի պետի պարտականությունները կատարող', 'Վարդան Հովհաննիսյան', '(+374 60) 80-80-03 /2401', NULL, '2019-07-04 01:35:07', '2019-07-09 18:52:59', 4),
(31, 'Առաջին բաժնի պետ', 'Ռուզաննա Հովակիմյան', '(+374 60) 80-80-03 / 2201', 'rhovakimyan@moh.am', '2019-07-04 01:35:38', '2019-07-09 18:52:59', 3),
(32, 'Քաղաքացիների բողոքների և դիմումների արագ արձագանքման բաժնի պետ', 'Հասմիկ Հարությունյան', '(+374 60) 80-80-03 / 2801', 'hasmik_harutyunyan@moh.am', '2019-07-04 01:36:08', '2019-07-09 18:52:03', 2),
(33, 'Քարտուղարության Պետ', 'Զարուհի Դարբինյան', '(+374 60) 80-80-03 /2501', 'zdarbinyan@moh.am; secretary@moh.am', '2019-07-04 01:36:57', '2019-07-09 18:51:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `min_history_categories`
--

CREATE TABLE `min_history_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `min_history_categories`
--

INSERT INTO `min_history_categories` (`id`, `name`, `slug`, `description`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>&nbsp;</p>\n<p>Հայաստանի Առաջին Հանրապետության երկրորդ կառավարության վերակազմավորման ժամանակ` 1918 թվականի նոյեմբերին, ստեղծվել է հանրային խնամատարության նախարարությունը, որը 1919 թվականի ապրիլի 8-ին վերանվանվել է հանրային խնամատարության և աշխատանքի նախարարություն:</p>\n<p>&nbsp;</p>\n</body>\n</html>', 5, '2019-06-03 07:39:00', '2019-07-16 09:29:07'),
(2, '1946', '1946', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">թվականին Հայաստանի առողջապահության ժողովրդական կոմիսարիատը վերակազմավորվել է Հայկական Խորհրդային Սոցիալիստական Հանրապետության առողջապահության մինիստրության: Վերջինիս կազմում գործել են բուժկանխարգելիչ օգնության, մոր և մանկան բուժկանխարգելիչ օգնության, սանիտարա-հակահամաճարակային և 4-րդ վարչությունները, գիտության, կադրերի և ուսումնական հաստատությունների, բժշկական վիճակագրության, պլան-ֆինանսավորման, կապիտալ շինարարության, վարչա-տնտեսական, մատակարարման և այլ բաժիններ:</p>\r\n<p style=\"text-align: justify;\">Հայկական Խորհրդային Սոցիալիստական Հանրապետության առողջապահության մինիստրներն են եղել.</p>\r\n</body>\r\n</html>', 3, '2019-06-26 07:39:00', '2019-07-09 18:44:41'),
(5, '1920', '1920', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">թվականի հունվարի 8&ndash;ին նախարարությունը վերանվանվել է հանրային խնամատարության և վերաշինության նախարարություն, որն ունեցել է հետևյալ բաժինները` որբանոցային, գաղթականական, աշխատանքի կազմակերպման, բժշկասանիտարական, աշխատանքի պաշտպանության, ճարտարապետական, շինարարական:</p>\r\n<p style=\"text-align: justify;\">Հայաստանում Խորհրդային կարգերի հաստատումից հետո ՀԽՍՀ Հեղկոմի 1920 թվականի դեպտեմբերի 22-ի թիվ 17 դեկրետով կազմակերպվել է Հայաստանի առողջապահության ժողովրդական կոմիսարիատը:<br />Հայաստանի Խորհրդային Սոցիալիստական Հանրապետության առողջապահության ժողովրդական կոմիսարներն են եղել.</p>\r\n</body>\r\n</html>', 4, '2019-06-28 08:01:00', '2019-07-09 18:44:41'),
(6, '1991', '1991', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>թվականի սեպտեմբերի 21-ին անցկացված հանրաքվեի արդյունքում Հայաստանի Հանրապետությունը հռչակվեց անկախ պետություն:</p>\r\n<p>Հայաստանի Հանրապետության առողջապահության նախարարներն են եղել.</p>\r\n</body>\r\n</html>', 2, '2019-07-09 18:37:13', '2019-07-09 18:44:41'),
(7, '2018', '2018', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>թվականի մայիսի 12-ից Հայաստանի Հանրապետության առողջապահության նախարարը Արսեն Թորոսյանն է:</p>\r\n</body>\r\n</html>', 1, '2019-07-09 18:44:29', '2019-07-09 18:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `min_history_items`
--

CREATE TABLE `min_history_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `min_history_items`
--

INSERT INTO `min_history_items` (`id`, `year`, `name`, `order`, `category_id`, `created_at`, `updated_at`) VALUES
(2, '1925-1927 թթ.', 'Գարեգին Գարդաշյանը', 20, 5, '2019-06-26 07:43:00', '2019-07-09 18:45:59'),
(3, '1945-1949 թթ.', 'Գևորգ Ղևոնդյանը', 16, 2, '2019-06-26 07:44:00', '2019-07-09 18:45:59'),
(4, '1922-1925 թթ.', 'Սիմեոն Լազարևը', 21, 5, '2019-06-26 07:44:00', '2019-07-09 18:45:59'),
(8, '1920-1922 թթ.', 'Սարգիս Համբարձումյանը', 22, 5, '2019-06-28 09:02:00', '2019-07-09 18:45:59'),
(9, '1927-1937 թթ.', 'Գևորգ Ղևոնդյանը', 19, 5, '2019-07-09 18:24:00', '2019-07-09 18:45:59'),
(10, '1937-1940 թթ.', 'Բաբկեն Աստվածատրյանը', 18, 5, '2019-07-09 18:24:00', '2019-07-09 18:45:59'),
(11, '1940-1945 թթ.', 'Ստեփան Ճշմարիտյանը:', 17, 5, '2019-07-09 18:24:00', '2019-07-09 18:45:59'),
(12, '1949-1960 թթ.', 'Արմենակ Խրիմլյանը', 15, 2, '2019-07-09 18:28:13', '2019-07-09 18:45:59'),
(13, '1960-1975 թթ.', 'Զախարի Նարիմանովը', 14, 2, '2019-07-09 18:32:52', '2019-07-09 18:45:59'),
(14, '1975-1989 թթ.', 'Էմիլ Գաբրիելյանը', 13, 2, '2019-07-09 18:35:38', '2019-07-09 18:45:59'),
(15, '1989-1990 թթ.', 'Արտաշես Ազնաուրյանը:', 12, 2, '2019-07-09 18:36:04', '2019-07-09 18:45:59'),
(16, '1990-1991 թթ.', 'Միհրան Նազարեթյանը', 11, 6, '2019-07-09 18:38:42', '2019-07-09 18:46:05'),
(17, '1991-1997 թթ.', 'Արա Բաբլոյանը', 10, 6, '2019-07-09 18:39:09', '2019-07-09 18:46:09'),
(18, '1997-1998 թթ.', 'Գագիկ Ստամբոլցյանը', 9, 6, '2019-07-09 18:39:47', '2019-07-09 18:46:13'),
(19, '1998-2000 թթ.', 'Հայկ Նիկողոսյանը', 8, 6, '2019-07-09 18:40:22', '2019-07-09 18:46:22'),
(20, '2000-2000 թթ.', 'Արարատ Մկրտչյանը (առողջապահության և սոցիալական ապահովության նախարար)', 7, 6, '2019-07-09 18:40:54', '2019-07-09 18:46:26'),
(21, '2000-2003 թթ.', 'Արարատ Մկրտչյանը (առողջապահության նախարար)', 6, 6, '2019-07-09 18:41:24', '2019-07-09 18:46:29'),
(22, '2003-2007 թթ.', 'Նորայր Դավիդյանը', 5, 6, '2019-07-09 18:41:51', '2019-07-09 18:46:51'),
(23, '2007-2012 թթ.', 'Հարություն Քուշկյանը', 4, 6, '2019-07-09 18:42:34', '2019-07-09 18:46:53'),
(24, '2012-2014 թթ.', 'Դերենիկ Դումանյանը', 2, 6, '2019-07-09 18:43:02', '2019-07-09 18:46:55'),
(25, '2014-2016 թթ.', 'Արմեն Մուրադյանը:', 1, 6, '2019-07-09 18:43:26', '2019-07-09 18:46:55'),
(26, '2016-2018 թթ.', 'Լևոն Ալթունյանը:', 3, 6, '2019-07-09 18:43:51', '2019-07-09 18:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `moh_consultants`
--

CREATE TABLE `moh_consultants` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moh_consultants`
--

INSERT INTO `moh_consultants` (`id`, `position`, `name`, `phone_number`, `email`, `working_place`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Խորհրդատու մանկաբարձություն և գինեկոլոգիայի գծով', 'Վահե Գյուլխասյան', '(+374 60) 46 46 61', 'minister@moh.am', 'ԵՊԲՀ', 1, '2019-07-09 09:08:07', '2019-07-09 09:08:25'),
(2, 'Խորհրդատու մանկական վիրաբուժության գծով', 'Դավիթ Դալլաքյան', '(+374 10) 46-18-41', 'info@osi.am', '«Սուրբ Աստվածամայր» ԲԿ', 1, '2019-07-09 09:09:14', '2019-07-09 09:09:14'),
(3, 'Խորհրդատու սրտաբանության գծով', 'Համլետ Հայրապետյան', '(+374 10) 47-38-00', NULL, '«Էրեբունի» ԲԿ', 1, '2019-07-09 09:09:55', '2019-07-09 09:09:55'),
(4, 'Խորհրդատու մանկաբուժության գծով', 'Սերգեյ Սարգսյան', '(+374 10) 23-68-83 / 10 44 /', 'minister@moh.am', '«Արաբկիր» բժշկական համալիր–երեխաների և դեռահասների առողջության ինստիտուտ', 1, '2019-07-09 09:10:37', '2019-07-09 09:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `nationals`
--

CREATE TABLE `nationals` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nationals`
--

INSERT INTO `nationals` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'National Parent 1', '[{\"download_link\":\"nationals\\/July2019\\/t7aZKr7hcBFpByOYrkGZ.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 09:04:52', '2019-07-04 09:05:08'),
(2, 'National Parent 2', '[{\"download_link\":\"nationals\\/July2019\\/xr2oOCqjL2CygwIGlgL6.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 09:05:30', '2019-07-04 09:05:30'),
(3, 'National Child 2', '[{\"download_link\":\"nationals\\/July2019\\/cKexS5Z9Q46JlDLxK12x.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 2, 1, '2019-07-04 09:05:55', '2019-07-04 09:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `images`, `video`, `date`, `created_at`, `updated_at`, `order`) VALUES
(20, 'Առողջապահության նախարար Արսեն Թորոսյանի ուղերձը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Սիրելի հայրենակիցներ, բոլորս էլ գիտենք, որ հունիսի 1-ը Երեխանրի իրավունքների պաշտպապնության օրն է։ Այսօր մենք բարձրաձայնում ենք այն ամենի մասին, ինչ 365 օր անում ենք ու պարտավոր ենք անել մեր երեխաների համար։</p>\r\n<p style=\"text-align: justify;\">Պարտավորություններն անշուշտ տարբեր են՝ ծնողական, պետական հոգածության, բարեկեցիկ միջավայր ստեղծելու և անհոգ մանկություն ապահովելու առումով։</p>\r\n<p style=\"text-align: justify;\">Ես՝ որպես առողջապահության նախարար, հանձնառություն են վերցրել երեխաների առողջության պահպանման համար, ինչը, իհարկե, քիչ ջանքեր չի պահանջում։</p>\r\n<p style=\"text-align: justify;\">Երեխաների հիվանդությունների վիճակագրությունը և ամեն կոնկրետ դեպք լուրջ ազդանշան է՝ վերանայելու նրանց առնչվող առողջապահական տարբեր մոտեցումները։</p>\r\n<p style=\"text-align: justify;\">Մոր ու մանկան առողջության պահպանումն առողջապահության նախարարության գերակա ուղղություններից է։ 2018-ին, հաջողվել է, Առողջապահության համաշխարհային կազմակերպության դասակարգմամբ, Հայաստանում մանկական մահացության միջին ցուցանիշից հասնել ցածր ցուցանիշի։</p>\r\n<p style=\"text-align: justify;\">Այս տարի ընդլայնվել է երեխաների համար նախատեսված բժշկական անվճար ծառայությունների ցանկը։</p>\r\n<p style=\"text-align: justify;\">Անչափ կարևորում եմ նաև վաղ տարիքից առողջ կենսակերպ դաստիարակելու մեր ջանքերը՝ առողջ սնունդ, ֆիզիկական ակտիվություն, ծխախոտի ծխից ազատ միջավայր․ սրանք առողջ սերունդ ունենալու գրավականն են։</p>\r\n<p style=\"text-align: justify;\">Միաժամանակ, ուշադրության կենտրոնում ենք պահում հատուկ կարիքներ ունեցող երեխաների առողջության պահպանմանն ուղղված միջոցառումները։</p>\r\n<p style=\"text-align: justify;\">Մանկական տրավմատիզմը նվազեցնելու նպատակով ակտիվ մասնակցել ենք երեխաներին մեքենաներում քարսիթով տեղափոխելու կարգավորմանը։</p>\r\n<p style=\"text-align: justify;\">Աչք չենք փակելու ոչ մի բանի առաջ և շարունակելու ենք մեր երեխաների մասին հոգ տանել՝ ստեղծելով նրանց համար կայուն ու ապահով երկիր։</p>\r\n<p style=\"text-align: justify;\">Կրկին ու կրկին շնորհավորելով երեխաներին՝ նրանց մաղթում եմ այսօր լավ ու պայծառ օր։</p>\r\n<p>&nbsp;</p>\r\n<p>Հարգանքով՝ Արսեն Թորոսյան</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/0h5y4m9ag0CCQCIbEuHg.jpg\"]', NULL, '2019-06-01', '2019-07-02 11:51:24', '2019-07-02 11:51:24', 1),
(21, 'Տարվա տաք եղանակին ակտիվանում են աղիքային վարակիչ հիվանդությունները', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Աղիքային վարակիչ հիվանդություններին բնորոշ է սեզոնայնությունը, հետևաբար դեպքերը, ինչպես նաև բռնկումներն ավելի հաճախ արձանագրվում են տարվա տաք շրջանում, երբ առկա են նպաստավոր պայմաններ աղիքային վարակների հարուցիչների աճման և բազմացման համար:</p>\r\n<p style=\"text-align: justify;\">Սննդամթերքը բարենպաստ պայմաններում դառնում է սննդային միջավայր մանրէների աճման և բազմացման համար: Ամռանը լավ չլվացած մրգերը և բանջարեղենը, համապատասխան պայմաններում չպահված սննդամթերքը և ոչ ճիշտ պատրաստված ուտեստներն ավելի հաճախ են դառնում աղիքային վարակիչ հիվանդությունների առաջացման և տարածման պատճառ:</p>\r\n<p style=\"text-align: justify;\">Երեխաներն առավել հաճախ են հիվանդանում աղիքային վարակիչ հիվանդություններով (70%-ն արձանագրվում է մինչև 6 տարեկանների շրջանում), ծերերը, քրոնիկական հիվանդություններով տառապող անձինք, որոնց իմուն համակարգը թույլ է:</p>\r\n<p style=\"text-align: justify;\">Աղիքային վարակիչ հիվանդություններից և հետագա բարդություններից խուսափելու նպատակով առողջապահության նախարարությունը խորհուրդ է տալիս.</p>\r\n<ul>\r\n<li>մրգերն և բանջարեղենը նախքան օգտագործելը&nbsp;<strong>լավ լվանալ հոսող ջրով</strong>,</li>\r\n<li><strong>սննդամթերքը պահել փակ տարաներում</strong>՝ աղտոտումից խուսափելու նպատակով,</li>\r\n<li><strong>շուտ փչացող</strong>&nbsp;սննդամթերքը&nbsp;<strong>պահել սառնարանում,</strong></li>\r\n<li><strong>խուսափել</strong>&nbsp;գնել սննդամթերք, որը վաճառվում է դրա համար չնախատեսված վայրերում,</li>\r\n<li><strong>չօգտագործել</strong>&nbsp;կասկածելի ջուր, եթե ձեր բնակության վայրում գրանցվել են խմելու ջրամատակարարման անջատումներ կամ վթարներ: Այն օգտագործել միայն&nbsp;<strong>եռացնելուց&nbsp;</strong>հետո կամ խմել&nbsp;<strong>շշալցված ջուր,</strong></li>\r\n<li>աղիքային վարակիչ հիվանդությունների ախտանշանների (ջերմության, բարձրացում, սրտխառնոց, փսխում, ցավ որովայնի շրջանում, լուծ, ընդհանուր թուլություն և այլն) առկայության դեպքում&nbsp;<strong>անհապաղ դիմել բժշկի,</strong></li>\r\n<li>ծորակի ջուրն օգտագործել միայն&nbsp;<strong>10-15 րոպե հոսելուց</strong>&nbsp;հետո,</li>\r\n<li><strong>ձեռքերը</strong>&nbsp;լվանալ ուտելուց առաջ և զուգարանից օգտվելուց հետո,</li>\r\n<li><strong>չլողալ&nbsp;</strong>լողի համար չնախատեսված ջրավազաններում՝ ջրամբարներ, ոռոգման ջրատարներ, դեկորատիվ ջրավազաններ, քանի որ վերջիններս կարող են պարունակել աղիքային վարակների հարուցիչներ:&nbsp;</li>\r\n</ul>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/BypqygZkAQB3xj1FpDfZ.jpg\"]', NULL, '2019-06-03', '2019-07-02 11:53:00', '2019-07-02 12:18:49', 1),
(22, 'Առաջին միջգերատեսչական համաձայնագիրը Հայաստանի և Ուզբեկստանի միջև', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության բնագավառում համագործակցությունն ընդլայնելու նպատակով առողջապահության նախարար Արսեն Թորոսյանը երկօրյա այցով &nbsp;Ուզբեկստանի Հանրապետությունում է:</p>\r\n<p style=\"text-align: justify;\">Արսեն Թորոսյանը հանդիպել է Ուզբեկստանի առողջապահության նախարար Ալիշեր Շադմանովին: Գործընկերները քննարկել են երկուստեք հետաքրքրություն ներկայացնող ծրագրերը և ոլորտային հարաբերություններն ամրապնդելու համար ստորագրել են համաձայնագիր:</p>\r\n<p style=\"text-align: justify;\">Նշենք, որ Ուզբեկստանի և Հայաստանի միջև կնքված առաջին միջգերատեսչական համաձայնագիրն է, որի շրջանակներում նախատեսվում է խորացնել հարաբերություններն առողջապահական համակարգում կատարվող բարեփոխումների ճանապարհին` ընդլայնելով համագործակցության ուղղությունները:</p>\r\n<p style=\"text-align: justify;\">Միաժամանակ, նախատեսվում է համալիր առողջապահական ծառայությունների տրամադրում, դեղագործական գործունեության ծավալում, ինչպես նաև գիտական և բժշկական կադրերի պատրաստում, առողջապահության ոլորտում տեղեկատվական և հաղորդակցության համակարգերի մշակում ու ներդրում: Աշխատանքներ կտարվեն նաև մոռացված և էլիմինացված հիվանդությունների կանխարգելման, հիվանդների, այդ թվում` հաշմանդամների բժշկական վերականգնման ուղղությամբ:</p>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարարը կարևորել է Ուզբեկստանի դերը Կենտրոնական Ասիայում, քանի որ, լինելով բնակչությամբ ամենամեծ երկիրը տարածաշրջանում, ունի մեծ պոտենցիալ` առողջապահական ոլորտային հարաբերությունների զարգացման տեսանկյունից:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/UEMfHzJcuBs0KsCJjcMG.jpg\",\"news\\/July2019\\/2l9bdB4yQuNZ3yaPuhWz.jpg\"]', NULL, '2019-06-04', '2019-07-02 11:55:17', '2019-07-02 11:55:17', 1),
(23, 'Դեղորայքային թունավորումների ցուցանիշներն աճել են', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Այս տարի մինչև ապրիլի 30-ն ընկած ժամանակահատվածում Հայաստանում արձանագրվել է դեղորայքային թունավորման 211 դեպք (2018թ. նույն ժամանակահատվածում՝ 207), որից Երևանում՝ 108 (նախորդ տարի՝ 93), մարզերում՝ 103 (նախորդ տարի՝ 114)։ Մահվան ելքով դեպքեր չեն գրանցվել:</p>\r\n<p style=\"text-align: justify;\">Ընթացիկ տարում Երևանում և մի շարք մարզերում դեղորայքային թունավորումների ցուցանիշները գերազանցում են միջին հանրապետական ցուցանիշը.&nbsp; Երևանում՝ 1.4 անգամ, Արարատի մարզում՝ 1.5 անգամ, Կոտայքի մարզում՝ 1.2 անգամ:</p>\r\n<p style=\"text-align: justify;\">Դեպքերի հիմնական մասն արձանագրվել է ինքնաբուժման (36%), ծնողի անուշադրության (37.9%) և ինքնասպանության փորձի (9.9%) պատճառով: Դրանց մեծ մասը գրանցվել է երեխաների շրջանում (53.6%), նաև` նախորդ տարվա համեմատ աճել են կանանց շրջանում (59.2%):&nbsp;</p>\r\n<p style=\"text-align: justify;\">Դեղորայքային թունավորումներից առավել հաճախ հանդիպում են ցավազրկող և հոգեմետ դեղերով թունավորումները: Պատճառների ուսումնասիրությունը ցույց է տալիս, որ բժշկի կողմից հոգեկան առողջության խնդիրներ ունեցող անձանց նշանակված դեղերի ընդունումը միշտ չէ հսկվում նրանց հարազատների կողմից, թունավորվածների մի մասն էլ դրանք օգտագործել են ինքնաբուժման կամ ինքնասպանության նպատակով:</p>\r\n<p style=\"text-align: justify;\">Ցավազրկող դեղերից թունավորվելու հիմնական պատճառն ինքնաբուժումն է: Շատ են նաև կալիումի պերմանգանատից և կարբամազեպինից թունավորման դեպքերը:</p>\r\n<p style=\"text-align: justify;\">Դեղորայքային թունավորումներից և հետագա բարդություններից խուսափելու նպատակով առողջապահության նախարարությունը հորդորում է.</p>\r\n<ul>\r\n<li>դեղեր ընդունելիս խորհրդակցել բժշկի հետ,</li>\r\n<li>ինքնուրույն չփոփոխել բժշկի նշանակած դեղերի չափաբաժինները և հաճախականությունը,</li>\r\n<li>մանրամասն ծանոթանալ առանց դեղատոմսի ձեռք բերված դեղի օգտագործման հրահանգներին,</li>\r\n<li>ալկոհոլը չզուգակցել դեղի ընդունման հետ,</li>\r\n<li>առանց բժշկի խորհրդատվության դեղամիջոցները չզուգակցել,</li>\r\n<li>հետևել դեղի պահպանման կանոններին:</li>\r\n</ul>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/B1Pi379gOxFBTqG9bBTk.jpg\"]', NULL, '2019-06-04', '2019-07-02 11:59:36', '2019-07-02 11:59:36', 1),
(24, 'Ինչպես դիմակայել ամռան շոգին', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Ամառային եղանակը, մարդու օրգանիզմի վրա իր բարերար ազդեցության հետ մեկտեղ, կարող է նաև առաջացնել առողջական վիճակի տարաբնույթ&nbsp; խանգարումներ, հատկապես երբ օդի ջերմաստիճանը գերազանցում է մարդու նորմալ կենսագործունեությունն ապահովող միջին ջերմաստիճանային ցուցանիշը:</p>\r\n<p style=\"text-align: justify;\">Շոգ եղանակին&nbsp; մարդու օրգանիզմի վրա առավել մեծ ազդեցություն ունեցող հիմնական բացասական գործոններն են`&nbsp;&nbsp;<strong>օդի բարձր ջերմաստիճանը և&nbsp; ուլտրամանուշակագույն ճառագայթումը:&nbsp;</strong></p>\r\n<p style=\"text-align: justify;\"><strong>Ուլտրամանուշակագույն ճառագայթման</strong>&nbsp;հիմնական աղբյուրն արևի ճառագայթումն է: Քիչ քանակով այն կարևոր նշանակություն ունի մարդու կենսագործունեության համար, քանի որ խթանում է իմունային համակարգի գործունեությունը, ոսկրային համակարգի ձևավորման, նյութափոխանակության գործընթացները, բարձրացնում է օրգանիզմի դիմադրողականությունը, աշխատունակությունը և այլն: Արևային լույսի անբավարար&nbsp; քանակն առաջացնում է&nbsp; օրգանիզմի ֆիզիոլոգիական հավասարակշռության խանգարումներ` յուրահատուկ&nbsp; ախտանշանների համալիրով (ավիտամինոզ Դ, քրոնիկական հիվանդությունների սրացում, նյարդային համակարգի ֆունկցիոնալ խանգարումներ, իմունային համակարգի թուլացում և այլն):</p>\r\n<p style=\"text-align: justify;\">Սակայն մեծ քանակով երկարատև ազդեցությունը համարվում է վտանգավոր և մարդու առողջության վրա կարող է ունենալ խիստ բացասական հետևանք, ինչպես սուր, այնպես էլ ուշացած ախտահարումներով՝ առաջացնելով արևային այրվածք (մաշկի կարմրություն, այտուց, ցավ, բշտերի գոյացում), արևահարություններ, ֆոտոկոնյուկտիվիտ (կոպերի ցավոտություն, կարմրություն, աչքերում ավազի զգացողություն,&nbsp; լուսավախություն, արցունքահոսություն), ֆոտոալերգիա, մաշկի չարորակ նորագոյացություններ` մելանոմաներ: Տեղային ախտահարումները կարող են ուղեկցվել նաև ընդհանուր տոքսիկ երևույթներով`&nbsp; մարմնի ջերմաստիճանի բարձրացում, գլխացավ, սարսուռ, սրտխառնոց, փսխում:</p>\r\n<p style=\"text-align: justify;\"><strong>Օդի բարձր ջերմաստիճանը&nbsp;</strong>կարող է առաջացնել լուրջ անհարմարություններ, ինչպես նաև առողջական խնդիրներ բնակչության շրջանում: Ջերմաստիճանի բարձրացմանը զուգընթաց բարձրանում է նաև մարդու օրգանիզմի ջերմակարգավորող համակարգի ծանրաբեռնվածությունը: Իր կենսագործունեության համար անհրաժեշտ հաստատուն ջերմաստիճանն ապահովելու համար ստիպված շատ ավելի ինտենսիվ են աշխատում օրգանիզմի մի շարք օրգան-համակարգեր, հատկապես սրտանոթային և շնչառական համակարգերը, ինչի արդյունքում առաջանում են գործունեության խանգարումներ: Բարձր ջերմաստիճանի ազդեցության տակ ներքին օրգաններից դեպի մաշկային և ենթամաշկային ծածկույթներ արյան տեղաբախշման արդյունքում հաճախանում է պուլսը, բարձրանում է մարմնի ջերմաստիճանը, տատանվում զարկերակային ճնշումը, շնչառությունը կարող է հաճախանալ մոտ 2 անգամ:&nbsp; Բարձր ջերմաստիճանը բացասաբար է ազդում նաև կենտրոնական նյարդային համակարգի վրա՝ թուլանում են պայմանական ռեֆլեքսները, առաջանում են շարժողական համակարգի խանգարումներ, իջնում է աշխատունակությունը, ինչպես նաև արգելակվում է սեկրետոր գեղձերի հյութարտադրությունը:</p>\r\n<p style=\"text-align: justify;\">Ազդեցությունն առավել վտանգավոր է բացօթյա պայմաններում տարվա տաք եղանակներին ֆիզիկական ծանր աշխատանքներ կատարելիս, քանի որ կարող են առաջանալ սրտանոթային համակարգի աշխատանքի սուր խանգարումներ:</p>\r\n<p style=\"text-align: justify;\">Օրգանիզմի ջերմատվության հիմնական ուղին քրտնարտադրությունն է, որն ապահովում է ջերմատվության 85%-ը, այն խիստ ավելանում է շոգ եղանակներին` նպաստելով օրգանիզմի հովացմանը: Սովորաբար օրվա ընթացքում մարդու օրգանիզմից գոլորշիանում է 2-2.5 լիտր հեղուկ, շոգ եղանակին՝ կարող է հասնել մինչև 4 լիտրի: Ակտիվ քրտնարտադրության արդյունքում մարդու օրգանիզմը ջրազրկվում է` կորցնելով հեղուկներ, հանքային աղերը (նատրիում, կալիում, կալցիում, մագնեզիում և այլն), ջրալույծ վիտամինները և սպիտակուցներ: Արդյունքում մարդկանց մոտ կարող է առաջանալ թուլություն, գլխացավ, ապատիա, քնկոտություն, սաստիկ ծարավ:&nbsp; Գիտնականների հաշվարկով 1լ հեղուկ կորցնելու դեպքում մարդուն սկսում է տանջել ծարավի զգացումը: 2 լիտրի դեպքում նվազում է մտավոր գործունեության ունակությունը, 3 լիտրի դեպքում սկսվում է գլխապտույտ, 4-ի դեպքում` սրտային նոպաներ:</p>\r\n<p style=\"text-align: justify;\">Ջերմաստիճանի բարձրացման նկատմամբ հատկապես զգայուն են երեխաները, հղիները, ծերերը և խրոնիկ հիվանդություններով տառապող անձնինք:</p>\r\n<p style=\"text-align: justify;\"><strong>Միաժամանակ, շոգ եղանակին զգալի ավելանում է նաև մրսածությամբ պայմանավորված հիվանդությունների առաջանալու վտանգը</strong>` խիստ սառեցված հեղուկներ խմելու, օդափոխիչի կամ օդորակիչի ոչ ճիշտ տեղակայելու կամ օգտագործելու պատճառով:</p>\r\n<p style=\"text-align: justify;\">Ջերմաստիճանի բարձրացման և ուլտրամանուշակագույն ճառագայթման բացասական ազդեցությունը մեղմելու, օրգանիզմի անցանկալի գերտաքացումը մեղմելու կամ կանխելու, ինչպես նաև մրսածությունից խուսափելու համար անհրաժեշտ է պահպանել հետևյալ պարզ կանոնները.</p>\r\n<ul>\r\n<li>խուսափել արևի ուղիղ ճառագայթներից` հատկապես ժամը 12:00-17:00 ընթացքում չընդունել արևային լոգանք,</li>\r\n<li>հնարավորինս պաշտպանվել ուլտրամանուշակագույն ճառագայթումից` կրելով գլխարկ, արևային ակնոց, հովանոց, հագնել սպիտակ կամ բաց երանգների ազատ, օդաթափանց, ցանկալի է բամբակյա կտորից հագուստ,</li>\r\n<li>օգտագործել սովորականից շատ հեղուկներ (օրական մոտ 3 լիտր), հատկապես ջուր, թան, առանց շաքարի բնական հյութեր և թեյ։&nbsp;<strong>Ջուրը</strong>&nbsp;ծարավը հագեցնելու ամենատարածված ու ամենամատչելի միջոցն է: Մեծ քանակությամբ աղերի ու կենսաբանական ակտիվ նյութերի շնորհիվ սառը հանքային ջուրը թարմացնում և անցկացնում է հոգնածությունը:&nbsp;<strong>Թանն</strong>&nbsp;իր մեջ պարունակող օրգանական թթուների, սպիտակուցների և աղերի շնորհիվ ծարավը հագեցնելու հրաշալի միջոց է:&nbsp;<strong>Բնական հյութերից</strong>&nbsp;ամռանը նախապատվությունը տվեք լոլիկի, թուրինջի, բալի, սալորի և հոնի հյութերին։&nbsp;<strong>Թեյը</strong>&nbsp;ևս լավ միջոց է շոգ եղանակին ծարավը հագեցնելու համար, սակայն թեյը պետք է լինի առանց շաքար, ոչ թունդ և ցանկալի է կանաչ։ Սրտանոթային կամ միզասեռական համակարգի հիվանդություններով տառապող անձինք հեղուկներ պետք է ընդունեն իրենց բուժող բժշկի հետ խորհրդակցելուց հետո,</li>\r\n<li>ցանկալի է հրաժարվել կծու, յուղոտ կերակուրներից, նախընտրել ավելի թեթև, դյուրամարս սնունդ, օգտագործել շատ մրգեր և հում բանջարեղեն,</li>\r\n<li>օգտագործվող հեղուկները պետք է լինեն գոլ կամ մի փոքր հովացրած, այսպես դրանք ավելի լավ են հագեցնում ծարավը, չի կարելի հեղուկները շատ սառեցնել,</li>\r\n<li>չչարաշահել կոֆեին և շաքար պարունակող ըմպելիքները` թե տաք, թե սառը վիճակում,</li>\r\n<li>արգելվում է գտնվել չօդափոխվող կամ վատ օդափոխվող տարածքներում, երկար ժամանակ մնալ արևի տակ կայանված փոխադրամիջոցներում, երեխաներին թողնել փակ պատուհաններով ավտոմեքենաներում,</li>\r\n<li>ցանկալի է, որպեսզի երեխաները, հղիները, ծերերը, խրոնիկ հիվանդություններով տառապող անձինք ցերեկային ամենաշոգ ժամերին քնեն կամ պառկեն, քանի որ պառկած դիրքում հեշտանում է ջերմատվությունը և արյան շրջանառությունը,</li>\r\n<li>անհրաժեշտ է ամենօրյա աշխատանքները կատարել օրվա համեմատաբար զով ժամերին, ցերեկային ամենաշոգ ժամերին խուսափել բացօթյա տարածքում ծանր ֆիզիկական աշխատանքից,</li>\r\n<li>պետք է հետևել, որպեսզի օդափոխիչը կամ օդորակիչն ապահովի օդափոխությունը, սակայն սառը օդի ուժեղ հոսանքն ուղղված չլինի անմիջապես մարդկանց վրա,</li>\r\n<li>այն տարածքներում, որտեղ առկա են օդորակիչներ, անհրաժեշտ է հագնվել ջերմաստիճանին համապատասխան:</li>\r\n</ul>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/xtZCDI7hRS4I1G4dNuRy.jpg\"]', NULL, '2019-06-04', '2019-07-02 12:02:14', '2019-07-02 12:02:14', 1),
(25, 'Գործընկերները քննարկել են երկկողմ հարաբերությունները զարգացնելու հնարավորությունը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">ՀՀ առողջապահության նախարարի տեղակալ Հովհաննես Հարությունյանը Բիշքեկում&nbsp; (Ղրղզական Հանրապետություն) մասնակցում է &laquo;Մոնիտորինգ և գնահատում՝ բարձրացնելու խորհրդարանականների գործունեության արդյունավետությունը&raquo; թեմայով տարածաշրջանային միջխորհրդարանական համաժողովին:</p>\r\n<p style=\"text-align: justify;\">Նշենք, որ միջոցառմանը հրավիրված են տարբեր երկրների ներկայացուցիչներ և պետական կառավարման որակի բարելավման ոլորտի միջազգային փորձագետներ: Համաժողովի ընթացքում քննարկվել են խորհրդարանական վերահսկողության, կառավարության ծրագրի, գործադիրի տարբեր ծրագրերի, քաղաքականությունների, ռազմավարությունների գնահատման մեխանիզմների ներդրմանն ու դրանց արդյունավետության բարձրացմանն առնչվող հարցեր, ինչպես նաև ներկայացվել է կառավարության և քաղաքացիական հասարակության փոխգործակցության միջազգային փորձը:</p>\r\n<p style=\"text-align: justify;\">Հովհաննես Հարությունյանն այցի շրջանակում հանդիպել է Ղրղզական Հանրապետության առողջապահության նախարարի տեղակալ Մադամին Կարատաևին: Գործընկերները քննարկել են երկկողմ հարաբերությունները զարգացնելու հնարավորությունը: Պայմանավորվածություն է ձեռք բերվել առաջիկայում համագործակցության համաձայնագիր ստորագրել` փորձի փոխանակման և մի շարք այլ ուղղություններով:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/BZyLPuTyReDpLOff8sAa.jpg\",\"news\\/July2019\\/V9ZiPnw2HkPUOunUadqV.jpg\"]', NULL, '2019-06-07', '2019-07-02 12:11:55', '2019-07-02 12:11:55', 1),
(26, 'Արձանագրվել են սննդային թունավորման դեպքեր', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առավոտյան տեղեկատվություն է ստացվել այն մասին, որ &laquo;Նորք&raquo; ինֆեկցիոն հիվանդանոց սրտխառնոց, լուծ, փսխում, բարձր ջերմություն գանգատներով ընդունվել է 13 հիվանդ։ Անմիջապես կազմակերպված համաճարակաբանական հետազոտությունների արդյունքում պարզվել է, որ բոլորը հունիսի 6-ին վերջիններս&nbsp; մասնակցել են տանը կազմապերված խնջույքի։</p>\r\n<p style=\"text-align: justify;\">Պարզվել է, որ նախնական և հավանական պատճառը տնային պայմաններում աղցանի համար պատրաստված ձվով սոուսն է։ Հիվանդների&nbsp; վիճակը գնահատվում է միջին ծանրության։ Բոլոր հիվանդներից վերցվել են կենսանմուշներ՝ լաբորատոր հետազոտությունների նպատակով (հետազոտություններն ընթացքում են):</p>\r\n<p style=\"text-align: justify;\"><strong><em>Աղիքային վարակիչ հիվանդություններից և սննդային թունավորումներից խուսափելու համար՝ Առողջապահության նախարարությունը կրկին անգամ հիշեցնում և հորդորում է</em></strong></p>\r\n<ul>\r\n<li style=\"text-align: justify;\">սննդամթերքը (մրգերը, բանջարեղենը, հատապտուղները)&nbsp; օգտագործելուց առաջ լավ լվանալ հոսող մաքուր ջրով,</li>\r\n<li style=\"text-align: justify;\">չօգտագործել տնային պայմաններում պատրաստվող և շուտ փչացող սննդամթերք, հում մթերքներից պատրաստվող սոուսներ, աղցաններ,&nbsp;</li>\r\n<li style=\"text-align: justify;\">պահպանել սննդամթերքը&nbsp; պատշաճ ջերմային պայմաններում` սառնարանում,</li>\r\n<li style=\"text-align: justify;\">ընտրել թարմ, ոչ ժամկետնանց սննդամթերք,</li>\r\n<li style=\"text-align: justify;\">չգնել&nbsp; արտաքին միջավայրի գործոնների՝ արևի ճառագայթների և մթնոլորտային տեղումների, ինչպես նաև փոշու, ավտոտրանսպորտի արտանետումների անմիջական ազդեցության ներքո գտնվող մայրուղիներում, փողոցներում, բնակելի շենքերի բակերում բացօթյա&nbsp; պայմաններում պատրաստվող և վաճառվող, պատրաստման և պահպանման հատուկ պայմաններ պահանջող սննդամթերք` միս-մսամթերք, կաթ-կաթնամթերք, կրեմային հրուշակեղեն, ձու, ձկնեղեն, թարմ ձկնկիթ, պահածոյացված սննդատեսակներ, կարկանդակներ, փքաբլիթներ, խորոված, քաբաբ և այլն,</li>\r\n<li style=\"text-align: justify;\">ընդհանրապես բացառել կրեմային հրուշակեղենի օգտագործումը, չգնել տեղում պատրաստվող լցնովի փափուկ պաղպաղակ, զովացուցիչ ըմպելիքներ, կվաս, թարմ մրգերից պատրաստվող հյութեր,</li>\r\n<li style=\"text-align: justify;\">սննդամթերքը պահել փակ տարողություններում՝ ճանճերի կողմից աղտոտումը կանխարգելելու նպատակով, ինչպես նաև՝ պատշաճ ջերմային պայմաններում,</li>\r\n<li style=\"text-align: justify;\">առանձնացնել հում սննդամթերքը&nbsp; եփածից, ինչպես նաև սննդի պատրաստման ժամանակ հում և պատրաստի մթերքի համար օգտագործել առանձին խոհարարական պարագաներ՝ դանակներ, ափսեներ, տախտակներ: Շատ կարևոր է հետևել, որպեսզի մսամթերքից և այլ հում մթերքից հոսող հեղուկը չաղտոտի պատրաստի սննդատեսակները (աղցաններ, միրգ և բանջարեղեն և այլն),</li>\r\n<li style=\"text-align: justify;\">սնունդը լավ եփել կամ տապակել` առնվազն 70<sup>0</sup>C պայմաններում ,</li>\r\n<li style=\"text-align: justify;\">պատահական վայերից սունկ չգնել: Գնված սունկը լվանալիս պետք է լինել ուշադիր և չօգտագործել արտաքին տեսքը լրիվ կամ մասնակի փոխած սունկ</li>\r\n<li style=\"text-align: justify;\">հետևել ձեռքերի հիգիենային՝ լվանալ հաճախակի, յուրաքանչյուր անգամ սննունդ պատրաստելուց&nbsp; և ուտելուց առաջ, զուգարանից օգտվելուց հետո։&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</li>\r\n</ul>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/HifiH83dpXcM9zmcpe7v.jpg\"]', NULL, '2019-06-08', '2019-07-02 12:15:12', '2019-07-02 12:15:12', 1),
(27, 'ՁԻԱՀ-ի կանխարգելման հանրապետական կենտրոնի մասնագիտական խումբը` ՀՀ  նախագահի մրցանակակիր', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Հունիսի 10-ին տեղի է ունեցել Հայաստանի Հանրապետության նախագահի 2018 թվականի մրցանակների հանձնման հանդիսավոր արարողությունը:</p>\r\n<p style=\"text-align: justify;\">Մի շարք բնագավառներում նշանակալի հայտնագործության կամ ներդրած ավանդի համար շնորհված մրցանակները հանձնել են Հայաստանի Հանրապետության նախագահ Արմեն Սարգսյանը և &laquo;Ռոբերտ Պողոսյան և որդիներ&raquo; հիմնադրամի համահիմնադիր, սփյուռքահայ բարերար Ժան Պողոսյանը:</p>\r\n<p style=\"text-align: justify;\">Բժշկագիտության բնագավառում ՀՀ նախագահի մրցանակը շնորհվել է &laquo;ՀՀ-ում ներդրված մորից երեխային ՄԻԱՎ-ի փոխանցման կանխարգելման համակարգի պահպանումը որպես ՄԻԱՎ-ի զերծ սերունդ ունենալու նախադրյալ&raquo; աշխատանքը հեղինակած ՁԻԱՀ-ի կանխարգելման հանրապետական կենտրոնի մասնագիտական խմբին, որի կազմում են Կենտրոնի տնօրեն Սամվել Գրիգորյանը, համաճարակաբանական հսկողության բաժնի վարիչ Արշակ Պապոյանը, կանխարգելման բաժնի վարիչ Ժանետա Պետրոսյանը, բժիշկ-համաճարակաբան Վարդան Արզաքանյանը և բժիշկ-վիճակագիր Տրդատ Գրիգորյանը:</p>\r\n<p style=\"text-align: justify;\">Աշխատանքում մանրամասն նկարագրված են մորից երեխային ՄԻԱՎ-ի փոխանցման կանխարգելման համակարգի ստեղծման, ներդրման, պահպանման ուղղությամբ իրականացված նպատակային, հետևողական քայլերը, որոնք նախադրյալներ ստեղծեցին 2016թ. Առողջապահության համաշխարհային կազմակերպության կողմից Հայաստանի՝ որպես մորից երեխային ՄԻԱՎ-ի փոխանցումը վերացրած երկիր ճանաչվելու և 2016-2017թթ. այդ կարգավիճակը պահպանելու համար:</p>\r\n<p style=\"text-align: justify;\">Հայաստանում մորից երեխային ՄԻԱՎ-ի փոխանցման կանխարգելման արդյունավետ համակարգի ներդրման և պահպանման շնորհիվ հնարավոր է դարձել ՄԻԱՎ վարակով մայրերից վարակից զերծ հարյուրավոր երեխաների ծնունդը, որոնք խուսափել են ցմահ բուժում ստանալու և դիսպանսերային հսկողության մեջ գտնվելու հեռանկարից, իսկ պետությունը տնտեսել է հսկայական ֆինանսական միջոցներ: Սրանով մեր երկիրը հարթել է ճանապարհ դեպի ՄԻԱՎ-ից զերծ սերունդ և ապահովել երկրի առողջապահական համակարգի համաշխարհային բարձր վարկանիշ:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/7hTgg5PtF3Xjtrya4IpT.jpg\",\"news\\/July2019\\/AHPVIRoRaDVqT00hMfCp.jpg\",\"news\\/July2019\\/50A6Fgj3D6B0gAk28NPs.jpg\"]', NULL, '2019-06-11', '2019-07-02 12:17:00', '2019-07-02 12:19:23', 1),
(28, 'Սննդային թունավորումներ` խնջույքների ժամանակ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Հունիսի 11-ին առողջապահության նախարարություն ահազանգ է ստացվել, որ աղիքային վարակներին բնորոշ գանգատներով 4 քաղաքացի դիմել է &laquo;Նորք&raquo; ինֆեկցիոն հիվանդանոց:</p>\r\n<p style=\"text-align: justify;\">Անմիջապես ձեռնարկված աշխատանքների արդյունքում պարզվել է, որ հիվանդները մասնակցել են ընդհանուր միջոցառման: Հիվանդներից վերցվել են կենսանմուշներ լաբորատոր&nbsp; հետազոտությունների համար: Վարակի աղբյուրի հայտնաբերման, ինչպես նաև պատճառահետևանքային կապը բացահայտելու նպատակով` ձեռնարկվել են համապատասխան միջոցառումներ: Այդ թվում միջոցառմանը մասնակցած 300-ից ավելի քաղաքացիների հետ անհատական կապ է &nbsp;հաստատվում: Աշխատանքները շարունակվում են, արդյունքների մասին լրացուցիչ կտեղեկացնենք:</p>\r\n<p style=\"text-align: justify;\">Մեկ այլ դեպքով` հունիսի 6-ին, տանը կազմակերպված խնջույքից հետո աղիքային գանգատներով &laquo;Նորք&raquo; ինֆեկցիոն հիվանդանոց ընդունված բոլոր հիվանդներն արդեն առողջացել են: Կազմակերպված համաճարակաբանական ուսումնասիրությունների և հիվանդներից վերցված կենսանմուշների լաբորատոր հետազոտությունների արդյունքում հիվանդների մոտ վերջնական ախտորոշվել է սալմոնելոզ:</p>\r\n<p style=\"text-align: justify;\"><strong><em>Աղիքային վարակիչ հիվանդություններից և սննդային թունավորումներից խուսափելու համար</em></strong><strong><em>՝ ա</em></strong><strong><em>ռողջապահության նախարարությունը կրկին հիշեցնում և հորդորում է.</em></strong></p>\r\n<ul>\r\n<li style=\"text-align: justify;\">սննդամթերքը (մրգերը, բանջարեղենը, հատապտուղները)&nbsp; օգտագործելուց առաջ լավ լվանալ հոսող մաքուր ջրով,</li>\r\n<li style=\"text-align: justify;\">չօգտագործել տնային պայմաններում պատրաստվող և շուտ փչացող սննդամթերք, հում մթերքներից պատրաստվող սոուսներ, աղցաններ,&nbsp;</li>\r\n<li style=\"text-align: justify;\">սննդամթերքը պահել փակ տարողություններում՝ ճանճերի կողմից աղտոտումը կանխարգելելու նպատակով, ինչպես նաև՝ պատշաճ ջերմային պայմաններում,</li>\r\n<li style=\"text-align: justify;\">ընտրել թարմ, ոչ ժամկետանց սննդամթերք,</li>\r\n<li style=\"text-align: justify;\">չգնել արտաքին միջավայրի գործոնների՝ արևի ճառագայթների և մթնոլորտային տեղումների, ինչպես նաև փոշու, ավտոտրանսպորտի արտանետումների անմիջական ազդեցության ներքո գտնվող մայրուղիներում, փողոցներում, բնակելի շենքերի բակերում բացօթյա&nbsp; պայմաններում պատրաստվող և վաճառվող, պատրաստման և պահպանման հատուկ պայմաններ պահանջող սննդամթերք` միս-մսամթերք, կաթ-կաթնամթերք, կրեմային հրուշակեղեն, ձու, ձկնեղեն, թարմ ձկնկիթ, պահածոյացված սննդատեսակներ, կարկանդակներ, փքաբլիթներ, խորոված, քաբաբ և այլն,</li>\r\n<li style=\"text-align: justify;\">ընդհանրապես բացառել կրեմային հրուշակեղենի օգտագործումը, չգնել տեղում պատրաստվող լցնովի փափուկ պաղպաղակ, զովացուցիչ ըմպելիքներ, կվաս, թարմ մրգերից պատրաստվող հյութեր,</li>\r\n<li style=\"text-align: justify;\">առանձնացնել հում սննդամթերքը եփածից, ինչպես նաև սննդի պատրաստման ժամանակ հում և պատրաստի մթերքի համար օգտագործել առանձին խոհարարական պարագաներ՝ դանակներ, ափսեներ, տախտակներ: Շատ կարևոր է հետևել, որպեսզի մսամթերքից և այլ հում մթերքից հոսող հեղուկը չաղտոտի պատրաստի սննդատեսակները (աղցաններ, միրգ և բանջարեղեն և այլն),</li>\r\n<li style=\"text-align: justify;\">սնունդը լավ եփել կամ տապակել` առնվազն 70<sup>0</sup>C պայմաններում,</li>\r\n<li style=\"text-align: justify;\">պատահական վայերից սունկ չգնել: Գնված սունկը լվանալիս պետք է լինել ուշադիր և չօգտագործել արտաքին տեսքը լրիվ կամ մասնակի փոխած մթերք,</li>\r\n<li style=\"text-align: justify;\">հետևել ձեռքերի հիգիենային՝ լվանալ հաճախակի, յուրաքանչյուր անգամ սնունդ պատրաստելուց և ուտելուց առաջ, զուգարանից օգտվելուց հետո։</li>\r\n</ul>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/3G3VOH1LnK29k6Xr46JL.jpg\"]', NULL, '2019-06-12', '2019-07-02 12:23:46', '2019-07-02 12:23:46', 1),
(29, 'Երկրներն ընդունել են «Առողջապահական ծառայությունների հասանելիության հավասարություն» Լյուբլյանայի հայտարարագիրը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարարի տեղակալ Լենա Նանուշյանը եռօրյա այցով գտնվում է Սլովենիայի մայրաքաղաք Լյուբլյանայում, որտեղ մասնակցում է Առողջապահության համաշխարհային կազմակերպության եվրոպական տարածաշրջանում բնակչության առողջության բարելավմանը և բարեկեցությանը հասնելու գործընթացի առաջընթացին նվիրված տարածաշրջանային բարձր մակարդակի համաժողովին:</p>\r\n<p style=\"text-align: justify;\">Համաժողովի ընթացքում քննարկվել են երկրներում առողջության ցուցանիշների տարբերությունների կրճատման գործընթացը, այդ նպատակին հասնելու նոր ուղղություններն ու հնարավորությունները: Միաժամանակ, &nbsp;մշակվել է առաջիկա 10 տարվա համար առողջության հանդեպ արդարացի վերաբերմունքի ապահովման եվրոպական օրակարգ` հաշվի առնելով երեք հիմնական նպատակները. առողջ և բարեկեցիկ պայմանների ստեղծում, այդ ուղղությամբ իրականացվող աշխատանքների ընթացքի արագացում, իրավիճակի վրա ազդեցություն ունենալու հնարավորություն:</p>\r\n<p style=\"text-align: justify;\">Արդյունքում, երկրներն ընդունել են &laquo;Առողջապահական ծառայությունների հասանելիության հավասարություն&raquo; Լյուբլյանայի հայտարարագիրը:</p>\r\n<p style=\"text-align: justify;\">Այցի ընթացքում Լենա Նանուշյանը հանդիպել է Սլովենիայի Հանրապետության առողջապահության նախարար Ալես Սաբեդերին: Կողմերը քննարկել են համագործակցության հեռանկարները և հնարավոր հորիզոնական կապերը` առողջապահական հասարակական կազմակերպությունների միջև:&nbsp;</p>\r\n<p style=\"text-align: justify;\">Հանդիպումներ են կայացել նաև գործընկեր կազմակերպությունների ներկայացուցիչների հետ: Պայմանավորվածություններ են ձեռք բերվել առողջության համապարփակ հասանելիության, շրջակա միջավայրով պայմանավորված առողջության բարելավման, սոցիալական հարցերի վերաբերյալ համագործակցության զարգացման ուղղությամբ:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/VQ8ElEXjgFWWIGorKe8L.jpg\",\"news\\/July2019\\/xdaz4bqUDlB60a3QtRy2.jpg\"]', NULL, '2019-06-13', '2019-07-02 12:26:00', '2019-07-02 12:26:00', 1),
(30, 'Քննարկվել են մոր և մանկան առողջության պահպանման ծառայությունների բարելավման հարցերը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարարարությունում` նախարար Արսեն Թորոսյանի և մանկական ծառայություններ մատուցող հաստատությունների ղեկավարների մասնակցությամբ տեղի է ունեցել քննարկում` Հայաստանում պերինատալ բազմապրոֆիլային ծառայությունների ծավալների վերաբերյալ:</p>\r\n<p style=\"text-align: justify;\">Նախարարը կարևորել է նախա և հետծննդյան խնամքը, ծննդօգնության ծառայությունների պատշաճ մատուցումը, ընդգծել մայրական և մանկական մահացության ցուցանիշի նվազմանն ուղղված քայլերը:</p>\r\n<p style=\"text-align: justify;\">Այս համատեքստում ներկայացվել է մոր և մանկան առողջության պահպանմանն ուղղված ծրագրերը և կարիքները, ինչպես նաև որոշ վիճակագրական տվայլներ` առկա իրավիճակի մասին:</p>\r\n<p style=\"text-align: justify;\">Նշենք, որ Հայաստանում գրանցվել է 2016-ին` մայրական մահացության 12 դեպք, որից մանկաբարձական պատճառներից` 4-ը, 2017-ին` 3 դեպք, մանկաբարձական` 1-ը, իսկ 2018-ին` մահացության 8 դեպք, որից 2-ն են մանկաբարձական:</p>\r\n<p style=\"text-align: justify;\">Ըստ վիճակագրության պետական կոմիտեի կարող ենք արձանագրել, որ առկա է մանկական մահացության դեպքերի նվազում: Ըստ 1000 կենդանածնի ցուցանիշների 0-1 տարեկան երեխաների մահվան դեպքերն ունեն հետևյալ պատկերը. 2015-ին` մահացության 370 դեպք, 2016`-ին 356, 2017-ին` 307, 2018-ի նախնական տվյալներով` 260 դեպք</p>\r\n<p style=\"text-align: justify;\">Հանդիպման վերջում ներկաներն ամփոփել են անելիքները և ուրվագծել ոլորտի բարելավմանն ուղղված հետագա քայլերը:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/LMGrNe1Vz78B1B95tNnC.jpg\",\"news\\/July2019\\/D9vjjfxTCTtehq6m5hSD.jpg\"]', NULL, '2019-06-14', '2019-07-02 12:31:44', '2019-07-02 12:31:44', 1),
(31, 'Անվտանգ արյուն բոլորի համար', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Արյան խմբերի մասին մարդկությունն առաջին անգամ իմացել է 1930 թվականին, դրանք բացահայտած ու այդ գյուտի համար Նոբելյան մրցանակ ստացած Ավստրիացի բժիշկ Կարլ Լանդշտեյների շնորհիվ: Տարիներ անց գիտնականի ծննդյան օրը` հունիսի 14-ը, աշխարհում սկսեց նշվել որպես Արյան դոնորի համաշխարհային օր:</p>\r\n<p style=\"text-align: justify;\">Այս տարի օրվան նվիրված միջոցառումների և քարոզարշավի կարգախոսն է. &laquo;Անվտանգ արյուն բոլորի համար&raquo;։ Սա ևս մեկ հնարավորություն է․</p>\r\n<ul style=\"text-align: justify;\">\r\n<li>շնորհակալություն հայտնել արյան կամավոր և անվարձահատույց դոնորներին՝ իրենց արյունը նվիրաբերելու համար հանուն բազմաթիվ կյանքեր փրկելու,</li>\r\n<li>ևս մեկ անգամ շեշտադրել դոնորների առողջության և խնամքի որակի կարևորությունը,</li>\r\n<li>բարձրացնել արյան դոնորության մասին մարդկանց իրազեկությունը և, խթանելով որակյալ և անվտանգ արյունը և դրա բաղադրամասերի հասանելիությունը և յուրաժամանակությունը բոլորի համար՝ դիտարկել գաղափարի ինտեգրումը՝ որպես արդյունավետ առողջապահական համակարգերի, կենսակերպի և մշակույթի մաս մեր երկրում։</li>\r\n</ul>\r\n<p style=\"text-align: justify;\">Մեր նպատակն է իրազեկության ավելացմանը զուգընթաց ավելացնել անվարձահատույց դոնորների քանակը, որոնց շնորհիվ հարյուրավոր մարդիկ կկարողանան իրենց բաժին հասած ծանր պահերից դուրս գալ հաղթանակով՝ լինի դա ծննդաբերություն, վիրահատություն, թե հիվանդության տարատեսակ դրսևորումներ:</p>\r\n<p style=\"text-align: justify;\">Հայաստանում ամեն օր Ձեր արյանն են սպասում հարյուրավոր, երբեմն հազարավոր մարդիկ, և չէինք ուզի, որ այդ սպասումն ապարդյուն լիներ:</p>\r\n<p style=\"text-align: justify;\">2018 թվականին Հայաստանում իրականացվել է ավելի քան 18 հազար արյունատվություն, ընդ որում անհատույց դոնորներից` 5.7%, փոխհատուցվող դոնորներից` 64%, հիվանդի հարազատներից` 30,3%:</p>\r\n<p style=\"text-align: justify;\">Պետք է ջանանք, որ&nbsp; անհատույց արյունատվությունը&nbsp; տարեց տարի ավելանա:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/0borxgxNhrzPiHzEtmsz.jpg\"]', NULL, '2019-06-14', '2019-07-02 12:35:41', '2019-07-02 12:35:41', 1),
(32, 'Կասեցվել են դեղերի գրանցումը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Դեղերի եվրոպական գործակալության դեղազգոնության և ռիսկերի գնահատման կոմիտեի (EMA/175398/2019) հետազոտությունների արդյունքների համաձայն` առողջապահության նախարարի հրամաններով Հայաստանի Հանրապետությունում կասեցվել է պիպեմիդաթթվի ակտիվ նյութ պարունակող դեղերի գրանցումը` անվտանգության նկատառումներով.</p>\r\n<p style=\"text-align: justify;\">1. &nbsp;Սլովենիայի &laquo;Լեկ Ֆարմասյութիքալս&raquo; դեղագործական ընկերության արտադրության &laquo;Պալին, պիպեմիդաթթու (պիպեմիդաթթվի տրիհիդրատ), դեղապատիճներ, 200մգ; (20/2x10/), բլիստերում&raquo;,</p>\r\n<p style=\"text-align: justify;\">2. &nbsp;Թայլանդի &laquo;Պոլիֆարմ Քո., ՍՊԸ, 109 Բանգնա-Տրադ Ռոադ, Բանգ Ֆլի մասնաճյուղ, Սամուտ Պրական 10540` Եվրոդրագ Լաբորատորիես Ս.Ա.&raquo; դեղագործական ընկերության արտադրության &laquo;Ուրոտրակտին, պիպեմիդաթթու (պիպեմիդաթթվի տրիհիդրատ), դեղապատիճներ, 400մգ; (10/1x10) բլիստերում&raquo;:</p>\r\n<p style=\"text-align: justify;\">Նշենք, որ պիպեմիդաթթու պարունակող դեղերը կիրառվում են միզասեռական համակարգի որոշ հիվանդությունների բուժման նպատակով, ունեն այլընտրանքային տարբերակներ, որոնք գրանցված և հասանելի են Հայաստանում:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/o64uA3XKysvKNBBbr5gs.jpg\"]', NULL, '2019-06-14', '2019-07-02 12:38:23', '2019-07-02 12:38:23', 1),
(33, 'Արսեն Թորոսյանը հանդիպել է առաջին ՄՌՏ սարքի հեղինակին', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարար Արսեն Թորոսյանը հանդիպել է հայազգի աշխարհահռչակ գիտնական և մագնիսական ռեզոնանսային ախտորոշման (ՄՌՏ) առաջին սարքի հեղինակ Ռեյմոնդ Դամադյանին:</p>\r\n<p style=\"text-align: justify;\">Ամերիկաբնակ հայազգի գիտնականը ներկայացրել է ուղղահայաց ՄՌՏ սարքավորման ներդրմամբ պայմանավորված մի շարք նոր հնարավորությունները բժշկության մեջ: Նա նշել է, որ նյարդադեգեներատիվ հիվանդությունները տեսանելի և ախտորոշելի են դարձել իր այդ գյուտի շնորհիվ:</p>\r\n<p style=\"text-align: justify;\">Պրոֆեսոր Դամադյանը օրինակներ է բերել, թե այդ սարքի շնորհիվ ինչպես են Պարկինսոնի հիվանդություն ունեցողներն ու ցրված սկլերոզով հիվանդները ստացել առավել ճշգրիտ ախտորոշում, որի շնորհիվ կազմակերպվել է ավելի արդյունավետ բուժում` կարճ ժամկետներում:</p>\r\n<p style=\"text-align: justify;\">&laquo;Նյարդադեգեներատիվ հիվանդությունների բուժումը հեղափոխականացնելու ուժն ուղղահայաց ՄՌՏ սարքի ձեռքում է գտնվում&raquo;, - շեշտել է Ռայմոնդ Դամադյանը:</p>\r\n<p style=\"text-align: justify;\">Նախարար Արսեն Թորոսյանը շնորհակալություն է հայտնել հայազգի գիտնականին նման գյուտի և բժշկական նշանակալի ձեռքբերման համար, ինչպես նաև կարևորել է ուղղահայաց ՄՌՏ սարքի ներդրումը բժշկության մեջ և նշել, որ ուրախ կլինի, եթե այդ սարքը օգտագործվի նաև Հայաստանում:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/gxDRHn3j8GPVzhQpItFi.jpg\",\"news\\/July2019\\/b2y2aUF4Yrhf91RO0hkd.jpg\"]', NULL, '2019-06-17', '2019-07-02 12:40:46', '2019-07-02 12:40:46', 1),
(34, 'Հայկական պատվիրակությունը մասնակցել է «iPHEX» 7-րդ միջազգային ցուցահանդեսին', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարարի տեղակալ Անահիտ Ավանեսյանի գլխավորած պատվիրակությունը, այդ թվում հայաստանյան դեղ արտադրող և ներմուծող ընկերությունների ներկայացուցիչներ, Հնդկաստանում մասնակցել է դեղագործությանն ու առողջապահությանը նվիրված &laquo;iPHEX&raquo; 7-րդ միջազգային ցուցահանդեսին:</p>\r\n<p style=\"text-align: justify;\">Հնդկաստանի դեղարտադրության և առողջապահության ոլորտի շուրջ 500 ընկերություն ցուցահանդեսին ներկայացրել է իր արտադրանքը:</p>\r\n<p style=\"text-align: justify;\">Ամենամյա այս ցուցահանդեսը միջազգային հեղինակավոր հարթակ է, որը թույլ է տալիս խորացնելու հայ-հնդկական հարաբերություններն առողջապահության բնագավառում, օգտագործել գործնական նոր փոխշահավետ կապեր հաստատելու հնարավորությունը:</p>\r\n<p style=\"text-align: justify;\">Ցուցահանդեսի շրջանակներում Անահիտ Ավանեսյանը հանդիպել է Գուջարաթ նահանգի Սննդի և դեղերի վերահսկման վարչության (Food and drug administration (FDA)) տնօրենի հետ: &nbsp;Հանդիպման ընթացքում ներկայացվել են դեղերի գրանցման առանձնահատկությունները, դեղարտադրող ընկերություններին ներկայացվող պահանջները: Պայմանավորվածություն է ձեռք բերվել հետագայում համագործակցություն ծավալել ՀՀ ԱՆ &laquo;Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոնի&raquo; հետ:</p>\r\n<p style=\"text-align: justify;\">&nbsp;Միջազգային ցուցահանդեսի շրջանակներում կազմակերպվել է նաև դեղերի շուկայում առկա կարգավորումներին նվիրված խորհրդաժողով, որին մասնակցել է ՀՀ ԱՆ &laquo;Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոնի&raquo; տնօրենը: Նիստին քննարկվել են դեղերի շուկան կարգավորող իրավական կողմերը, ներկայացվել են Հնդկաստանում այս ոլորտի փոփոխությունները, դեղերի շրջանառության բնագավառում ներկայիս մարտահրավերները, խնդիրները, ինչպես նաև դրանց լուծման ուղղությամբ գործադրվող ջանքերը:</p>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարարության պատվիրակության անդամները և հայաստանյան դեղագործական ընկերությունների ներկայացուցիչները բազմաթիվ հանդիպումներ են ունեցել հնդկական դեղարտադրող ընկերությունների, ինչպես նաև Հնդկաստան ժամանած այլ երկրների առողջապահության նախարարությունների և դեղագործական ընկերությունների ներկայացուցիչների հետ: Քննարկվել են հնդկական արտադրության դեղերի համապատասխանության հարցերը, նաև ձեռք են բերվել մի շարք պայմանավորվածություններ` հետաքրքրություն ներկայացնող դեղագործական ընկերությունների հետ փոխշահավետ համագործակցություն ծավալելու ուղղությամբ:&nbsp;</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/eYD1oPvbPEF6mVcGkxwD.jpg\",\"news\\/July2019\\/Bg1OJKps5ffd253T2ZCy.jpg\"]', NULL, '2019-06-17', '2019-07-02 12:42:31', '2019-07-02 12:42:31', 1),
(35, 'Հայտնի են լաբորատոր հետազոտությունների արդյունքները', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Վերջերս հանրային սննդի կազմակերպություններից մեկում` խնջույքի մասնակիցների մոտ առաջացել էին աղիքային վարակներին բնորոշ գանգատներ, որոնցից մի քանիսն էլ դիմել էին բժշկական օգնության։ Արձանագրված դեպքի պատճառահետևանքային կապերը բացահայտելու ուղղությամբ ձեռնարկվել էին միջոցառումներ, որոնք զուգորդվել էին նաև լաբորատոր հետազոտություններով։</p>\r\n<p style=\"text-align: justify;\">Լաբորատոր հետազոտության արդյունքների համաձայն` նույն կազմակերպությունից վերցված սննդամթերքից մեկի նմուշում, ինչպես նաև խոհանցի աշխատակցի մոտ հայտնաբերվել է սալմոնելլայի մանրէ։ Լաբորատոր հետազոտությունների արդյունքում շեղումներ են հայտնաբերվել նաև շրջակա միջավայրի մակերեսներից վերցված լվացուկներից:</p>\r\n<p style=\"text-align: justify;\">Հարկ է փաստել, որ հիվանդների կենսանմուշների լաբորատոր հետազոտություններում ևս հաստատվել է սալմոնելլա հիվանդությունը:&nbsp;</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/c8mvDm8Oy1PU3yeoMhrK.jpg\"]', NULL, '2019-06-18', '2019-07-02 12:43:36', '2019-07-02 12:43:36', 1),
(36, 'Ֆանարջյանի անվան ուռուցքաբանության ազգային և Ճառագայթային բժշկության և այրվածքների գիտական կենտրոնները վերադարձվեցին առողջապահության նախարարությանը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>Ազգային ժողովն այսօր 115 կողմ, 0 դեմ, 0 ձեռնպահ</strong> ձայնով ընդունել է Պետական գույքի մասնավորեցման 2017-2020 թվականների ծրագրի մասին&raquo; Հայաստանի Հանրապետության օրենքում փոփոխություններ կատարելու մասին&raquo; օրենքի նախագիծը, ըստ որի 2 կազմակերպություն` Ֆանարջյանի անվան ուռուցքաբանության ազգային և Ճառագայթային բժշկության և այրվածքների գիտական կենտրոնները մասնավորեցման ցանկից կհանվեն:</p>\r\n<p style=\"text-align: justify;\">Ֆանարջյանի անվան ուռուցքաբանության ազգային կենտրոնն իրականացնում է չարորակ և բարորակ նորագոյացությունների հիվանդանոցային և արտահիվանդանոցային բժշկական օգնություն և սպասարկում, ուռուցքաբանական հիվանդների դիսպանսեր հսկողություն, ինչպես նաև հանրապետության ողջ տարածքից ուռուցքաբանական հիվանդների վերաբերյալ վիճակագրական տեղեկատվության հավաքագրում: Հանրապետական նշանակության 500 մահճակալանոց պետական հիվանդանոցն ունի թե ախտորոշիչ և թե բուժական հնարավորություններ։</p>\r\n<p style=\"text-align: justify;\">Ճառագայթային բժշկության և այրվածքների գիտական կենտրոնն իրականացնում է հանրապետական նշանակության գործառույթներ, մասնավորապես. այրվածքային և ճառագայթային հիվանդություններ ունեցող անձանց բժշկական օգնություն և սպասարկում տրամադրող միակ մասնագիտական ուղղվածության հիմնարկն է, որտեղ տարեկան բուժվում են շուրջ 550-600 քաղաքացի: Կենտրոնն իրականացնում է մասնագիտական խորհրդատվություններ Երևան քաղաքի և մարզերի բժշկական կենտրոններում, ինչպես նաև ապահովում է ճառագայթային հիվանդությամբ տառապող անձանց շարունակական հսկողությունը և բուժումը:</p>\r\n<p style=\"text-align: justify;\">&laquo;Ուսումնասիրությունները ցույց են տալիս, որ նշված ընկերությունների գործունեությունը պետական փակ բաժնետիրական ընկերությունների կարգավիճակով ավելի արդյունավետ է, ինչը, միանշանակ, չի բացառում մասնավոր ներդրողների ներգրավման հնարավորությունը&raquo;,- նշել է նախարարը, հավելելով, որ համապատասխան ներդրողների ի հայտ գալու պարագայում, նշված կազմակերպությունների զարգացման հեռանկարներից ելնելով, նախատեսվում է կիրառել &laquo;պետություն-մասնավոր ներդրող&raquo; համագործակցության ձևաչափը:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/0YUplrjHqiblTEknr0hT.jpg\"]', NULL, '2019-06-19', '2019-07-02 12:45:00', '2019-07-03 06:17:46', 1),
(37, '«Մայրական մահացության յուրաքանչյուր դեպք մեր ուշադրության կենտրոնում է». Արսեն Թորոսյան', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Կայացել է առողջապահության նախարարին կից մանկաբարձության և գինեկոլոգիայի խորհրդի անդրանիկ նիստը` &nbsp;Արսեն Թորոսյանի գլխավորությամբ:</p>\r\n<p style=\"text-align: justify;\">Ողջունելով ներկաներին` առողջապահության նախարարն ընդգծել է, որ մանկաբարձության և գինեկոլոգիայի խորհուրդը կոչված է ոչ թե պատժիչ միջոցառումներ կիրառելու, այլ մայրական և մանկական մահացության կամ կրիտիկական դեպքերը քննարկելու միջոցով նմանատիպ իրավիճակները կանխելուն:</p>\r\n<p style=\"text-align: justify;\">&laquo;Մայրական մահացության յուրաքանչյուր դեպք պետք է լինի մեր ուշադրության կենտրոնում&raquo;.- նշել է Արսեն Թորոսյանը:</p>\r\n<p style=\"text-align: justify;\">Մանկաբարձություն և գինեկոլոգիայի գծով ԱՆ խորհրդատու Վահե Գյուլխասյանը ներկայացրել է Հայաստանի նախորդ 20 տարվա և միջազգային վիճակագրական տվյալները, նաև վերջին 2 տարվա մայրական մահացության 10 դեպքի պատճառագիտական կազմը, յուրաքանչյուրի նախապատմությունը, մասնագիտական վերլուծությունը և եզրակացությունը:</p>\r\n<p style=\"text-align: justify;\">Խորհրդի անդամներն անդրադարձել են նախահղիության շրջանում պետության դերին ու քայլերին՝ թերությունները շտկելու և ոլորտը բարելավելու նկատառումով:</p>\r\n<p style=\"text-align: justify;\">Ինչը վերաբերում է մանկական մահացության դեպքերին, ըստ վիճակագրության պետական կոմիտեի, մանկական մահացության դեպքերի նվազում է դիտվել: Ըստ 1000 կենդանածնի ցուցանիշների` 0-1 տարեկան երեխաների մահվան 370 դեպք է գրանցվել 2015-ին, 2016-ին` 356, 2017-ին` 307, իսկ 2018-ի նախնական տվյալներով` 260:</p>\r\n<p style=\"text-align: justify;\">Ոլորտի պատասխանատուները նշել են, որ մշակվել է մեխանիզմ սոցիալապես խոցելի խմբերում ընդգրկված հղի կանանց վաղ հայտնաբերելու համար: 1% դեպքում հղիներն ինչ-ինչ պատճառներով չեն դիմում բժշկական կազմակերպություն և դուրս են մնում նախածննդյան հսկողությունից` ռիսկի ենթարկելով թե՛ իրենց, թե՛ երեխայի կյանքը:&nbsp;</p>\r\n<p style=\"text-align: justify;\">Արսեն Թորոսյանը հույս է հայտնել, որ նմանատիպ քայլերի շնորհիվ` մայրական մահացության դեպքերը կկանխվեն և ցուցանիշը կտրուկ կնվազի, ինչպես` մանկական մահացությանը:</p>\r\n<p style=\"text-align: justify;\">Օրակարգում ներառված հարցերին զուգահեռ քննարկվել են նաև նախա և հետծննդյան խնամքը, ծննդօգնության ծառայությունների պատշաճ մատուցումը:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/BLKuVtinaiQ4GNM2K35n.jpg\"]', NULL, '2019-06-19', '2019-07-02 12:48:19', '2019-07-02 12:48:19', 1),
(38, 'Զորակոչի ընթացքում պետք է բացառել կոռուպցիոն դրսևորումները. Արսեն Թորոսյան', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարար Արսեն Թորոսյանն այսօր ընդունել է պաշտպանության նախարարության և զորակոչ իրականացնող բուժհաստատությունների զորակոչային հանձնաժողովների ներկայացուցիչներին:</p>\r\n<p style=\"text-align: justify;\">Նախարարը նախ շնորհակալություն է հայտնել հրավերին արձագանքելու համար, այնուհետև նշել, որ ամեն տարի այս օրերին սկսվում է զորակոչի կազմակերպչական աշխատանքները, որպեսզի այն անցնի հնարավորինս հարթ, արագ և օբյեկտիվ:</p>\r\n<p style=\"text-align: justify;\">&laquo;Ուզում եմ հատուկ ուշադրություն դարձնել այն հանգամանքի վրա, որ զորակոչը Ձեր կատարած ամենակարևոր գործառույթներից մեկն է, քանի որ դրա արդյունքում հայկական բանակ են զորակոչվում մեր քաղաքացիները, որոնք պետք է համապատասխանեն չափանիշների` սահմանված կառավարության որոշումներով&raquo;,- նշել է նախարարը:</p>\r\n<p style=\"text-align: justify;\">Արսեն Թորոսյանը հատուկ շեշտել է, որ զորակոչային հանձնաժողովների աշխատանքը կարևոր է անել որակյալ և ճիշտ ժամանակին:</p>\r\n<p style=\"text-align: justify;\">&laquo;Այսինքն, դա պարզապես չլինի ինչ-որ թղթերի գեներացիա, որոնք տրվում են մեր երիտասարդ տղամարդկանց ինչ-որ ամիսների, տարվա ընթացքում, այլ լինի նեղ մասնագիտական լուրջ փաստաթղթեր, եզրակացություններ, որոնք կլինեն պատշաճ ձևով ձևակերպված&raquo;,- ընգծել է նա:</p>\r\n<p style=\"text-align: justify;\">Թորոսյանը հույս է հայտնել, որ գործընկերների կողմից հավելյալ ռեսուրսներ կներգրավվեն թե ադմինիստրատիվ և թե բուժական հարցերով:</p>\r\n<p style=\"text-align: justify;\">&laquo;Այս պրոցեսում պետք է բացառվի կոռուպցիան իր բոլոր դրսևորումներով` լինի դա գործընկեր, երեխա, ծառայություն, փող կամ ապագայում ինչ-որ ակնկալիք։ Մենք իրավապահ մարմին չենք և իրավական գնահատական տալ չենք կարող, բայց մի բան հստակ է` ոչ մի բան չենք թաքցնելու, եթե իմանանք&raquo;,- եզրափակել է նա:</p>\r\n<p style=\"text-align: justify;\">Այնուհետև տեղի է ունեցել քննարկում 2019 թվականի ամառային զորակոչի ընթացքում զինապարտների պետության կողմից երաշխավորված անվճար բժշկական օգնության և սպասարկման շրջանակներում հետազոտման և փորձաքննության ընթացքի, գործընթացի ընթացքում ծագած խնդիրների և մի շարք այլ կարևոր հարցերի շուրջ:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/8m38HEGXImkPnLmuECbF.jpg\",\"news\\/July2019\\/r3mc0VbPU0ULF0kwLi0X.jpg\",\"news\\/July2019\\/Zlm2UmMrNRs3dTGbZXuW.jpg\"]', NULL, '2019-06-20', '2019-07-02 12:51:00', '2019-07-02 12:52:42', 1),
(39, 'Առողջապահության նախարար Արսեն Թորոսյանի ուղերձը` Բուժաշխատողի օրվա կապակցությամբ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Հարգելի բուժաշխատողներ,</p>\r\n<p style=\"text-align: justify;\">Շնորհավորում եմ ձեզ մասնագիտական տոնի՝ Բուժաշխատողի օրվա կապակցությամբ: Բժիշկ լինելը առաջին հերթին առաքելություն է, ինչը հսկայական աշխատանք և նվիրում, բարձր պատասխանատվություն, հոգատարություն և հզոր ուժ է պահանջում:</p>\r\n<p style=\"text-align: justify;\">Կյանքեր փրկելը հնարավոր է դառնում միայն քրտնաջան և անձնվեր աշխատանքի շնորհիվ, ինչի համար հաճախ լուռ, բայց գրեթե միշտ շնորհակալ են լինում:</p>\r\n<p style=\"text-align: justify;\">Առողջությունը մարդու ամենամեծ հարստությունն է, և ձեր շնորհիվ է, որ կարողանում ենք պահպանել այն:</p>\r\n<p style=\"text-align: justify;\">Ձեզ մաղթում եմ երկար, առողջ և բարեկեցիկ կյանք:</p>\r\n<p style=\"text-align: justify;\">Շարունակե՛ք փրկել կյանքեր:</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարար&nbsp;&nbsp;&nbsp;</p>\r\n<p style=\"text-align: justify;\">Արսեն Թորոսյան</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/Mu7HFnwVfXSDWzkGtBYw.jpg\"]', NULL, '2019-06-21', '2019-07-02 12:53:55', '2019-07-02 12:53:55', 1);
INSERT INTO `news` (`id`, `title`, `description`, `images`, `video`, `date`, `created_at`, `updated_at`, `order`) VALUES
(40, 'Կայացել է տնօրենների խորհրդի հերթական նիստը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Կայացել է ՀՀ ԱՆ &laquo;Պրոֆ.Ռ.Օ.Յոլյանի անվան արյունաբանական կենտրոնի&raquo;&nbsp; տնօրենների խորհրդի երկրորդ նիստը, որին մասնակցել են ՀՀ առողջապահության նախարարի տեղակալներ Լևոն Հակոբյանը, Հովհաննես Հարությունյանը, խորհրդի անդամներ Արտյոմ Սմբատյանը, Լիանա Բարսեղյանը, Լուսինե Քոչարյանը, Գևորգ Սիմոնյանը, Հովհաննես Մադոյանը, Միհրան Նազարեթյանը, ինչպես նաև ՀՀ ԱՆ &laquo;Ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտի&raquo;&nbsp; տնօրեն Ալեքսանդր Բազարչյանը և ներկայացուցիչներ կենտրոնից:&nbsp;&nbsp;</p>\r\n<p style=\"text-align: justify;\">Արյունաբանական կենտրոնի տնօրեն Սամվել Դանիելյանը ներկայացրել է իր գործունեության մեկ տարվա ընթացքում կատարված աշխատանքները, ուրվագծել առաջիկայում նախատեսվող ծրագրերը և ինչ քայլեր են ձեռնարկվել այդ ուղղությամբ: &nbsp;</p>\r\n<p style=\"text-align: justify;\">Մասնավորապես` նշել է, որ անհրաժեշտ է վերանորոգել արյան բանկը, վերազինել &nbsp;տրանսֆուզիոն ծառայությունը, ստեղծել հեմոսթազի և թրոմբոզի կենտրոն, &nbsp;ակտիվացնել ցողունային բջիջների փոխպատվաստումը, &nbsp;ներդնել իմունոթերապիայի կլինիկական հետազոտություններ և այլ աշխատանքներ:</p>\r\n<p style=\"text-align: justify;\">Ներկաները&nbsp;ողջունել են ոլորտում կատարված աշխատանքները և հույս հայտնել, որ նախատեսված ծրագրերը ևս կյանքի կկոչվեն:</p>\r\n<p style=\"text-align: justify;\">Նշենք, որ առողջապահության նախարարությունը կորպորատիվ կառավարման ինստիտուտը ներդնելու է իր ենթակայության բոլոր կազմակերություններում: Արդեն իսկ տնօրենների խորհուդներ ստեղծվել և գործում են &laquo;Սուրբ Գրիգոր Լուսավորիչ&raquo; բժշկական կենտրոնում և Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոնում: Տնօրենների խորհուրդների կազմերում, բացի պետական մարմինների ներկայացուցիչներից, ընդգրկված են նաև հասարակական կազմակերպություններից մասնագետներ:</p>\r\n<p style=\"text-align: justify;\">Խորհրդի աշխատանքներն ուղղված են թափանցիկ և արդյունավետ կառավարման&nbsp; մշակույթի ձևավորմանը և նպաստում են կենտրոնների զարգացմանը:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/jpfqqNgl9CHHSXPEkEmw.jpg\",\"news\\/July2019\\/TU5OKBr2VZYxWvkKHo2j.jpg\"]', NULL, '2019-06-21', '2019-07-02 13:02:58', '2019-07-02 13:02:58', 1),
(41, 'Քաղաքացիական հասարակության ներկայացուցիչների հետ քննարկվել է ԱՆ բյուջետային ֆինանսավորման հայտը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարարության պետական առողջապահական գործակալությունում տեղի է ունեցել&nbsp; հանրային քննարկում &laquo;2020-2022 թվականների միջնաժամկետ ծախսային ծրագրի հայտի և 2020 թվականի բյուջետային ֆինանսավորման հայտի&raquo; վերաբերյալ:</p>\r\n<p style=\"text-align: justify;\">Քննարկմանը մասնակցել են առողջապահական ոլորտում գործող քաղաքացիական հասարակության ներկայացուցիչներ` &laquo;Հայկական առողջապահական ազգային խորհուրդ&raquo; կոալիցիայի, &laquo;Հայաստանի ՔՀԿ&ndash;ների հակակոռուպցիոն կոալիցիայի կառավարման խորհրդի&raquo;, &laquo;Տնտեսական իրավունքի կենտրոն&raquo;, &laquo;Կառուցողական ստոմատոլոգիա&raquo; հասարակական կազմակերպությունների նախագահներ և անդամներ, ինչպես նաև առողջապահության նախարարության պետական առողջապահական գործակալության, Դեղորայքային քաղաքականության և բժշկական տեխնոլոգիաների վարչության, Ֆինանսատնտեսագիտական վարչության, &laquo;Հիվանդությունների վերահսկման և կանխարգելման ազգային կենտրոնի&raquo; և Ծրագրերի իրականացման գրասենյակի մասնագետներ:</p>\r\n<p style=\"text-align: justify;\">Ներկայացվել են հայտի արդեն իսկ 2019 թվականին գործող բյուջետային ծրագրերում նախատեսվող փոփոխությունները՝ ցույց տալով ելակետային և թիրախային ցուցանիշները: Խոսվել է հայտում տեղ գտած նոր նախաձեռնությունների մասին և ընդգծվել դրանց ազդեցությունն առողջապահական ցուցանիշների բարելավման վրա:</p>\r\n<p style=\"text-align: justify;\">Այնուհետև քննարկվել են հայտի լրացման հետ կապված խնդիրները, մեթոդաբանությունը և ծրագրային բյուջետավորման գործընթացի առավելությունները: Մասնակիցները ներկայացրել են իրենց մտահոգությունները, առաջարկները, դիտողությունները և մի շարք հարցերի շուրջ խնդրել են պարզաբանումներ: Առողջապահության նախարարության ներկայացուցիչները սպառիչ պատասխանել են բարձրաձայնված բոլոր հարցերին:</p>\r\n<p style=\"text-align: justify;\">Ամփոփելով հանդիպումը` պայմանավորվածություն է ձեռք բերվել առաջարկներն ու դիտողությունները գրավոր ներկայացնելու վերաբերյալ:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/Xe8FOZ7GoWotGB0ZOx2o.jpg\",\"news\\/July2019\\/vQlZSMyCfgpB0dejEpCl.jpg\"]', NULL, '2019-06-24', '2019-07-02 13:05:54', '2019-07-02 13:05:54', 1),
(42, 'Թմրամիջոցների չարաշահման և դրանց ապօրինի շրջանառության դեմ պայքարի միջազգային օրն է', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">1987 թվականի դեկտեմբերի 7-ին ՄԱԿ-ի գլխավոր համաժողովն ընդունել է հռչակագիր, ըստ որի որոշվել է հունիսի 26-ը նշել որպես թմրամիջոցների չարաշահման և դրանց ապօրինի շրջանառության դեմ պայքարի միջազգային օր` ի նշան վճռականության՝ հզորացնելու գործողությունները և համագործակցությունը թմրամոլությունից զերծ միջազգային հասարակություն ստեղծելու &nbsp;համար։ Այս հռչակագրով առաջարկվում են հետագա միջոցառումները, որոնք հիմնված են ՄԱԿ-ի գլխավոր համաժողովի կողմից թմրամիջոցների չարաշահման և դրանց ապօրինի շրջանառության դեմ պայքարի նպատակով ընդունված կոնվենցիաների վրա:</p>\r\n<p style=\"text-align: justify;\"><strong>&nbsp;2019 թվականի հունիսի 26-ի օրվա խորհուրդն է`</strong></p>\r\n<p style=\"text-align: justify;\"><img src=\"http://moh.am/uploads/tmramijoc.png\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">Այս տարվա կարգախոսն ընդգծում է, որ արդարադատությունը և առողջությունը մեդալի երկու կողմերն են, երբ խոսքը գնում է թմրամիջոցներով պայմանավորված խնդիրների լուծմանը։ Իսկ հիմնախնդրի արդյունավետ լուծումը պահանջում է, որ քրեական արդարադատության, առողջապահության և սոցիալական ծառայությունների իրավասու մարմիններն աշխատեն ձեռք ձեռքի տված՝ համաձայն թմրամիջոցների նկատմամբ վերահսկողության միջազգային կոնվենցիաների՝ հաշվի առնելով մարդու իրավունքների պարտավորությունները և կայուն զարգացման ոլորտը։</p>\r\n<p style=\"text-align: justify;\">Միջազգային այս օրն առիթ է հասարակության լայն շրջանակներին իրազեկելու մտահոգություն առաջացնող գլոբալ խնդիրը, միաժամանակ ներկայացնելով այս ոլորտում ձեռքբերումները:</p>\r\n<p style=\"text-align: justify;\">1993 թվականին Հայաստանն անդամակցելով ՄԱԿ-ին` վավերացրել է թմրամիջոցների չարաշահման և դրանց ապօրինի շրջանառության դեմ պայքարի նպատակով ՄԱԿ-ի գլխավոր համաժողովի կողմից ընդունված կոնվենցիաները:</p>\r\n<p style=\"text-align: justify;\">Հայաստանի Հանրապետության նախագահի 2014 թվականի դեկտեմբերի 30-ի &laquo;Հայաստանի Հանրապետությունում թմրամոլության և թմրամիջոցների ապօրինի շրջանառության դեմ պայքարի ազգային ռազմավարությունը հաստատելու մասին&raquo; թիվ 226-Ն կարգադրությամբ մատնանշվել են թմրամիջոցների չարաշահման և դրանց ապօրինի շրջանառության դեմ պայքարի ռազմավարական ուղղությունները: Միջոցառումներում ընդգրկված են գրեթե բոլոր գերատեսչությունները, այդ թվում ՀՀ առողջապահության նախարարությունը, որի շնորհիվ հանրապետության ողջ տարածքում ուժեղացված է նարկոլոգիական ծառայությունը, և ՀՀ քաղաքացիներին տրամադրվում են անվճար նարկոլոգիական բժշկական օգնություն և ծառայություններ։</p>\r\n<p style=\"text-align: justify;\">Աշխարհում թմրամիջոցներ չարաշահողների թիվը, ըստ 2017 թվականի հունիսի 22-ի թմրամիջոցների ազգային զեկույցի, կազմում է շուրջ 1/4 միլիարդ մարդ, նրանցից 29,5 միլիոնն ունի թմրամիջոցների գործածումից առաջացած հոգեկան և վարքային խանգարումներ։</p>\r\n<p style=\"text-align: justify;\">Հայաստանի Հանրապետությունում 2019 թվականի հունվարի 1-ի դրությամբ հաշվառված թմրամոլների թիվը կազմում է 6951, նախորդ տարվա 6544-ի համեմատությամբ (6 % աճ), որոնցից 116-ը կանայք, ափիոնային թմրամոլները՝ 2552, որոնցից կանայք՝ 42, կանաբինոիդային թմրամոլները՝ 4394, որոնցից կանայք՝ 74, 5-ը՝ կոկաինային թմրամոլներ։</p>\r\n<p style=\"text-align: justify;\">Հաշվառվածներից 64%-ը՝ 28-49 տարեկան են, 19,5%-ը՝ 50-64 տարեկան, 18%-ը՝ 19-27 տարեկան, 65 և բարձր տարիքի 68 անձ, 18 տարեկան՝ 11 անձ, մինչև 16-17 տարեկան՝ 5 անձ:</p>\r\n<p style=\"text-align: justify;\">Տարածվածությամբ 1-ին տեղում Երևանն է՝ 3645 կամ 52%, 2-րդը Արմավիրի մարզն է՝ 805 կամ 12% և 3-րդը Կոտայքի մարզն է՝ 685 կամ 10%:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/WBkeAmkEGy98jfHTAEdA.jpg\"]', NULL, '2019-06-26', '2019-07-02 13:09:00', '2019-07-02 13:09:00', 1),
(43, 'Ընդլայնվել են առողջապահության ոլորտի առավել հրատապություն և կարևորություն ունեցող մի շարք ծրագրեր', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Առողջապահության նախարարության` բնակչի բուժօգնության բարելավմանն ուղղված հերթական առաջարկը հավանության արժանացավ կառավարության կողմից: Առողջապահության ոլորտի առավել հրատապություն և կարևորություն ունեցող մի շարք ծրագրերի իրականացման համար առողջապահության նախարարությանը հատկացվել է 12 միլիարդ դրամ:</p>\r\n<p>Մի շարք ծագրերում նախատեսվող փոփոխություններով` ընդլայնվում են պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով մատուցվող ծառայությունների շրջանակը, շահառուների խմբերը: Քայլերն ուղղված են մատուցվող ծառայությունների որակի բարձրացմանը, ինչը կնպաստի գրպանից կատարվող ծախսերի ցուցանիշի նվազեցմանը: Միաժամանակ, հավելյալ ֆինանսական միջոցները հնարավորություն կտան առողջապահական կազմակերպությունների արդիականացման և անհրաժեշտ սարքավորումներով վերազինման:</p>\r\n<p>Հարկ է նշել, որ ծրագրերից յուրաքանչյուրն ուղղված է կյանքեր փրկելուն, կյանքի տևողության և որակի բարձրացմանը` ինչպես պացիենտների, այնպես էլ նրանց հարազատների։ Ծրագրերի կենսագործումն ունենալու է նաև տնտեսական ազդեցություն` ի դեմս կենսունակ մարդկային կապիտալի:</p>\r\n<p>Այսպիսով`</p>\r\n<p>1. &laquo;Սոցիալապես անապահով և հատուկ խմբերում ընդգրկվածների բժշկական օգնության իրականացում&raquo; ծրագրին հատկացված լրացուցիչ 5.1 մլրդ դրամը &nbsp;կուղղվի`</p>\r\n<p>1)&nbsp;<strong>հիվանդանոցային&nbsp;բժշկական&nbsp;օգնության&nbsp;և&nbsp;սպասարկման&nbsp;ծառայությունների&nbsp;գների&nbsp;համահարթեցմանը</strong>, ինչի արդյունքում կբարձրանա մատուցվող հիվանդանոցային ծառայությունների հասանելիությունը, ինչպես նաև` հիվանդանոցային բժշկական կազմակերպությունների աշխատողների աշխատավարձը, որն էլ իր հերթին կնպաստի ծրագրի արդյունավետության բարելավմանը, ոլորտում ստվերային գործունեության նվազմանը և մատուցվող ծառայությունների որակի բարելավմանը,</p>\r\n<p>2)&nbsp;<strong>սրտի&nbsp;վիրահատական&nbsp;ծառայությունների&nbsp;և&nbsp;նորագույն&nbsp;թանկարժեք&nbsp;այլ&nbsp;տեխնոլոգիաներով&nbsp;կատարվող&nbsp;բժշկականծառայությունների&nbsp;գծով&nbsp;պետական&nbsp;պատվերի&nbsp;շրջանակներում&nbsp;անվճար բժշկական&nbsp;օգնություն&nbsp;ստանալու&nbsp;իրավունքունեցող&nbsp;շահառուների&nbsp;խմբերի&nbsp;ընդլայնմանը, մասնավորապես</strong>` 1-ին և 2-րդ խմբի հաշմանդամներ, ժամկետային զինծառայողների ընտանիքի անդամներ, մարտական գործողությունների մասնակիցների ընտանիքի անդամներ, զոհված զինծառայողների ընտանիքի անդամներ: Միջոցները կուղղվեն առկա պահանջարկի ամբողջական բավարարմանը,</p>\r\n<p>3)<strong>մարդուօրգանների&nbsp;(երիկամի) 12&nbsp;ևոսկրածուծի&nbsp;11&nbsp;փոխպատվաստման</strong>&nbsp;դեպքերի փոխհատուցմանը:</p>\r\n<p>Այս փոփոխություններից կօգտվի 500 հազար մեր քաղաքացիներ՝ ի հավելումն այն 230 հազարի, ում այս բարելավված փաթեթը տրամադրվեց տարեսկզբին:</p>\r\n<p>2. &laquo;Երեխաների բժշկական օգնության ծառայություններ&raquo; ծրագրում&nbsp;<strong>0-18&nbsp;տարեկան&nbsp;երեխաների&nbsp;հիվանդանոցայինբժշկական&nbsp;օգնությունն&nbsp;ու&nbsp;սպասարկումն&nbsp;ամբողջությամբ կիրականացվի&nbsp;պետական&nbsp;պատվերի&nbsp;շրջանակներում</strong>, ինչպես նաև կփոխհատուցվի մինչև տարեվերջ կանխատեսվող դեֆիցիտը: Մինչ այժմ այդ հնարավորությունից օգտվում էին մինչև 7 տարեկան, հաշմանդամություն ունեցող,&nbsp; առանց ծնողական խնամքի մնացած, հաշմանդամություն ունեցող անձանցից բաղկացած ընտանիքների, մինչև 18 տարեկան դիսպանսեր հսկողության տակ գտնվող, միածնող, 14-15 տարեկան արական սեռի, նախազորակոչային տարիքի և բազմազավակ (մինչև 18 տարեկան 4 և ավելի անչափահասերեխաներ ունեցող) ընտանիքների երեխաները: Փոփոխության արդյունքում պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկմանիրավունք ունեցող մինչև 18 տարեկան շահառուների քանակը ավելանում է մոտ 200 հազար անձով։ Այս ծրագիրը կնպաստի առողջ սերունդ ունենալուն:</p>\r\n<p>3. &laquo;Անհետաձգելի բժշկական օգնության ծառայություններ&raquo; ծրագրում նախատեսվում է փոխհատուցել անհետաձգելի վիրահատությունների, այդ թվում`&nbsp;<strong>կյանք&nbsp;փրկող&nbsp;&nbsp;սրտի&nbsp;անհետաձգելի վիրահատությունների&nbsp;(Stent for life),&nbsp;գլխուղեղիսուր&nbsp;և/կամ&nbsp;ենթասուր&nbsp;իշեմիկ&nbsp;կաթվածների&nbsp;թրոմբոլիտիկ&nbsp;բուժման&nbsp;և&nbsp;մեխանիկական&nbsp;թրոմբոլիտիկ&nbsp;բուժմանծառայությունների&nbsp;մինչև տարեվերջ&nbsp;կանխատեսվող&nbsp;դեֆիցիտը` ընդհանուր առմամբ ծրագրի կատարմանն ուղղելով 1.2 մլրդ դրամ:</strong></p>\r\n<p>4. &laquo;Ուռուցքաբանական և արյունաբանական հիվանդությունների բժշկական օգնության ծառայություններ&raquo; ծրագրի շրջանակում&nbsp;<strong>նախատեսվում է&nbsp;ապահովել&nbsp;դեպքերի&nbsp;ավելացմամբ&nbsp;պայմանավորված կանխատեսվող&nbsp;դեֆիցիտիփոխհատուցումը</strong>, ինչպես նաև իրականացնել գների համահարթեցում, որպեսզի պացիենտները ստիպված չլինեն գրպանից վճարումներ կատարել։ Տարվա սկզբից մեկնարկած այս ծրագիրը հաջողությամբ ընթանում է, սակայն հավելյալ ֆինանսավորման շնորհիվ հնարավոր կլինի խուսափել հերթերից, քանի որ քաղցկեղ ունեցող մեր քաղաքացիները չեն կարող սպասել և ամեն կորսված օրը կարող է լինել որոշիչ: Այս նպատակի համար կծախսվի հավելյալ 900 մլն դրամ։</p>\r\n<p>5. &laquo;Շտապ բժշկական օգնություն&raquo; ծրագրում նախատեսվում է բնակչությանն առավել&nbsp;<strong>արագ և&nbsp;որակյալ&nbsp;շտապ&nbsp;բժշկականօգնության&nbsp;ծառայություններ&nbsp;մատուցելու&nbsp;նպատակով&nbsp;ավելացնել հանրապետության&nbsp;տարածքում&nbsp;սպասարկողբրիգադների&nbsp;թիվը</strong>, մասնավորապես` Երևանում, որտեղ շտապօգնության հերթապահ խմբերի դեֆիցիտը ամենաշատն է։ Այս նպատակի համար կծախսվի հավելյալ 500 մլն դրամ։</p>\r\n<p>6.&nbsp;<strong>Գերժամանակակից&nbsp;սարքավորումներով&nbsp;կհագեցվեն&nbsp;&laquo;Սուրբ&nbsp;Աստվածամայր&raquo;&nbsp;ԲԿ&nbsp;մանկականնյարդավիրաբուժական&nbsp;և&nbsp;&laquo;Սուրբ&nbsp;Գրիգոր&nbsp;Լուսավորիչ&raquo;&nbsp;ԲԿ&nbsp;նյարդավիրաբուժական բաժանմունքները</strong>՝ բարձրացնելով մատուցվող ծառայությունների որակը միջազգային մակարդակի։ Այս նպատակով կծախսվի շուրջ 2 մլրդ դրամ։</p>\r\n<p>7. ՀՀ ԱՆ&nbsp;<strong>&laquo;Մարդասիրական&nbsp;օգնության&nbsp;հանրապետական&nbsp;կենտրոնի&raquo;&nbsp;շենքային&nbsp;պայմանների&nbsp;համապատասխանեցումմիջազգային&nbsp;ՋԴՓ&nbsp;ստանդարտներին</strong>, որպեսզի պետական կարիքների համար ձեռք բերվող դեղորայքը պահպանվի միջազգային ստանդարտներին համապատասխան պայմաններում։</p>\r\n<p>8. Նախատեսվում է իրականացնել&nbsp;<strong>նախագծանախահաշվային&nbsp;փաստաթղթերի&nbsp;կազմում&nbsp;թվով&nbsp;10&nbsp;բժշկականկենտրոնների&nbsp;վերակառուցման, 1&nbsp;բժշկական&nbsp;կենտրոնի&nbsp;վերանորոգման, 3&nbsp;բժշկական կենտրոնների&nbsp;մասնակիվերանորոգման, 2&nbsp;բժշկական&nbsp;կենտրոնի&nbsp;կառուցման&nbsp;համար,&nbsp;որի&nbsp;համար&nbsp;կծախսվի&nbsp;շուրջ&nbsp;450մլն&nbsp;դրամ։</strong></p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/UvJRq6cDHBG83bZZHyyE.jpg\"]', NULL, '2019-06-27', '2019-07-02 13:10:00', '2019-07-03 06:36:24', 1),
(44, 'Դեղերի պետական գրանցմանն ու գնումների գործընթացներին նվիրված ֆորում', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարարության մասնագետները Կոպենհագենում մասնակցում են դեղերի պետական գրանցմանն ու գնումների գործընթացներին նվիրված ֆորումին: &nbsp;</p>\r\n<p style=\"text-align: justify;\">Դեղորաքային քաղաքականության և բժշկական տեխնոլոգիաների վարչության պետ Վարդուհի Գրիգորյանը և Ֆինանսատնտեսագիտական վարչության Գնումների համակարգման բաժնի պետ Հասմիկ Մնացականյանը ֆորումի ժամանակ ներկայացրել են Հայաստանում դեղերի պետական գրանցման և փորձաքննության գործընթացները և մեր երկրում պետական գրանցում չունեցող դեղերի, մասնավորապես` պատվաստանյութերի, ՄԻԱՎ/ՁԻԱՀ-ի և տուբերկուլոզի բուժման համար անհրաժեշտ դեղերի գնման ընթացակարգերում մասնակցության հնարավորության ապահովման մեխանիզմները:</p>\r\n<p style=\"text-align: justify;\">Ֆորումին մասնակցող երկրների ներկայացուցիչների հետ քննարկվել են այս ոլորտում առկա խնդիրները, լուծման ուղիները, նաև յուրաքանչյուրը կիսվել է իր երկրի փորձով:</p>\r\n<p style=\"text-align: justify;\">Պայմանավորվածություն է ձեռք բերվել մշտապես խնդիրները վերհանել նմանատիպ հարթակներում` համատեղ լուծումներ գտնելու և հաջորդող ֆորումին քննարկելու համար:</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/ppYpAHHJeMbdqV9RD7C0.jpg\",\"news\\/July2019\\/Iqm3ubOj5f8TqXnXedgi.jpg\"]', NULL, '2019-06-28', '2019-07-02 13:13:19', '2019-07-02 13:13:19', 1),
(45, 'Նախարարը հանդիպել է բժշկական կազմակերպությունների տնօրեններին', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարար Արսեն Թորոսյանը ՀՀ ԱՆ ակադեմիկոս Ս. Ավդալբեկյանի անվան Առողջապահության ազգային Ինստիտուտում հանդիպում-քննարկում է ունեցել պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական ծառայություններ մատուցող կազմակերպությունների տնօրենների հետ։</p>\r\n<p style=\"text-align: justify;\">Հանդիպմանը մասնավորապես քննարկվել է կառավարության ընդունած վերջին որոշումը՝&nbsp; առողջապահության նախարարությանը 12 միլիարդ դրամ հատկացնելու վերաբերյալ։</p>\r\n<p style=\"text-align: justify;\">Նախարարը ներկայացրել է այն բոլոր ծրագրերը և փոփոխությունները, որոնց ուղղությամբ բաշխվելու է հատկացված գումարը, ապա նշել, որ օր առաջ պետք է սկսել կիրառել դրանք և ծառայությունները մատուցել այնպես, ինչպես պահանջում է կառավարության որոշումը։</p>\r\n<p style=\"text-align: justify;\">Հատուկ շեշտվել է, որ պետք է հնարավորինս բացառել անհիմն հոսպիտալացման դեպքերը, աշխատավարձերի հաշվարկներն իրականացնել բացառապես առողջապահության նախարարի հրամանով հաստատված չափորոշիչների հիման վրա, հիվանդներին ապահովել անհրաժեշտ դեղորայքով:</p>\r\n<p style=\"text-align: justify;\">Այնուհետև տեղի է ունեցել հարց ու պատասխան. մասնակիցները հնարավորություն են ունեցել բարձրաձայնել իրենց մտահոգող հարցերը և&nbsp; ստանալ պատասխաններ։</p>\r\n<p style=\"text-align: justify;\">Հիշեցնենք, որ կառավարության որոշմամբ՝</p>\r\n<p style=\"text-align: justify;\">1. &laquo;Սոցիալապես անապահով և հատուկ խմբերում ընդգրկվածների բժշկական օգնության իրականացում&raquo; ծրագրին հատկացված լրացուցիչ 5.1 մլրդ դրամը&nbsp; կուղղվի`</p>\r\n<p style=\"text-align: justify;\">1) հիվանդանոցային բժշկական օգնության և սպասարկման ծառայությունների գների համահարթեցմանը, ինչի արդյունքում կբարձրանա մատուցվող հիվանդանոցային ծառայությունների հասանելիությունը, ինչպես նաև` հիվանդանոցային բժշկական կազմակերպությունների աշխատողների աշխատավարձը, որն էլ իր հերթին կնպաստի ծրագրի արդյունավետության բարելավմանը, ոլորտում ստվերային գործունեության նվազմանը և մատուցվող ծառայությունների որակի բարելավմանը,</p>\r\n<p style=\"text-align: justify;\">2) սրտի վիրահատական ծառայությունների և նորագույն թանկարժեք այլ տեխնոլոգիաներով կատարվող բժշկականծառայությունների գծով պետական պատվերի շրջանակներում անվճար բժշկական օգնություն ստանալու իրավունք ունեցողշահառուների խմբերի ընդլայնմանը, մասնավորապես` 1-ին և 2-րդ խմբի հաշմանդամներ, ժամկետային զինծառայողների ընտանիքի անդամներ, մարտական գործողությունների մասնակիցների ընտանիքի անդամներ, զոհված զինծառայողների ընտանիքի անդամներ: Միջոցները կուղղվեն առկա պահանջարկի ամբողջական բավարարմանը,</p>\r\n<p style=\"text-align: justify;\">3) մարդու օրգանների (երիկամի) 12 և ոսկրածուծի 11 փոխպատվաստման դեպքերի փոխհատուցմանը:</p>\r\n<p style=\"text-align: justify;\">Այս փոփոխություններից կօգտվի 500 հազար մեր քաղաքացիներ՝ ի հավելումն այն 230 հազարի, ում այս բարելավված փաթեթը տրամադրվեց տարեսկզբին:</p>\r\n<p style=\"text-align: justify;\">2. &laquo;Երեխաների բժշկական օգնության ծառայություններ&raquo; ծրագրում 0-18 տարեկան երեխաների հիվանդանոցային բժշկականօգնությունն ու սպասարկումն ամբողջությամբ կիրականացվի պետական պատվերի շրջանակներում, ինչպես նաև կփոխհատուցվի մինչև տարեվերջ կանխատեսվող դեֆիցիտը: Մինչ այժմ այդ հնարավորությունից օգտվում էին մինչև 7 տարեկան, հաշմանդամություն ունեցող,&nbsp; առանց ծնողական խնամքի մնացած, հաշմանդամություն ունեցող անձանցից բաղկացած ընտանիքների, մինչև 18 տարեկան դիսպանսեր հսկողության տակ գտնվող, միածնող, 14-15 տարեկան արական սեռի, նախազորակոչային տարիքի և բազմազավակ (մինչև 18 տարեկան 4 և ավելի անչափահասերեխաներ ունեցող) ընտանիքների երեխաները: Փոփոխության արդյունքում պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկմանիրավունք ունեցող մինչև 18 տարեկան շահառուների քանակը ավելանում է մոտ 200 հազար անձով։ Այս ծրագիրը կնպաստի առողջ սերունդ ունենալուն:</p>\r\n<p style=\"text-align: justify;\">3. &laquo;Անհետաձգելի բժշկական օգնության ծառայություններ&raquo; ծրագրում նախատեսվում է փոխհատուցել անհետաձգելի վիրահատությունների, այդ թվում` կյանք փրկող&nbsp; սրտի անհետաձգելի վիրահատությունների (Stent for life), գլխուղեղի սուր և/կամ ենթասուր իշեմիկ կաթվածների թրոմբոլիտիկ բուժման և մեխանիկական թրոմբոլիտիկ բուժման ծառայությունների մինչև տարեվերջ կանխատեսվող դեֆիցիտը` ընդհանուր առմամբ ծրագրի կատարմանն ուղղելով 1.2 մլրդ դրամ:</p>\r\n<p style=\"text-align: justify;\">4. &laquo;Ուռուցքաբանական և արյունաբանական հիվանդությունների բժշկական օգնության ծառայություններ&raquo; ծրագրի շրջանակում նախատեսվում է ապահովել դեպքերի ավելացմամբ պայմանավորված կանխատեսվող դեֆիցիտի փոխհատուցումը, ինչպես նաև իրականացնել գների համահարթեցում, որպեսզի պացիենտները ստիպված չլինեն գրպանից վճարումներ կատարել։ Տարվա սկզբից մեկնարկած այս ծրագիրը հաջողությամբ ընթանում է, սակայն հավելյալ ֆինանսավորման շնորհիվ հնարավոր կլինի խուսափել հերթերից, քանի որ քաղցկեղ ունեցող մեր քաղաքացիները չեն կարող սպասել և ամեն կորսված օրը կարող է լինել որոշիչ: Այս նպատակի համար կծախսվի հավելյալ 900 մլն դրամ։</p>\r\n<p style=\"text-align: justify;\">5. &laquo;Շտապ բժշկական օգնություն&raquo; ծրագրում նախատեսվում է բնակչությանն առավել արագ և որակյալ շտապ բժշկականօգնության ծառայություններ մատուցելու նպատակով ավելացնել հանրապետության տարածքում սպասարկող բրիգադներիթիվը, մասնավորապես` Երևանում, որտեղ շտապօգնության հերթապահ խմբերի դեֆիցիտը ամենաշատն է։ Այս նպատակի համար կծախսվի հավելյալ 500 մլն դրամ։</p>\r\n<p style=\"text-align: justify;\">6. Գերժամանակակից սարքավորումներով կհագեցվեն &laquo;Սուրբ Աստվածամայր&raquo; ԲԿ մանկական նյարդավիրաբուժական և &laquo;ՍուրբԳրիգոր Լուսավորիչ&raquo; ԲԿ նյարդավիրաբուժական բաժանմունքները՝ բարձրացնելով մատուցվող ծառայությունների որակը միջազգային մակարդակի։ Այս նպատակով կծախսվի շուրջ 2 մլրդ դրամ։</p>\r\n<p style=\"text-align: justify;\">7. ՀՀ ԱՆ &laquo;Մարդասիրական օգնության հանրապետական կենտրոնի&raquo; շենքային պայմանների համապատասխանեցումմիջազգային ՋԴՓ ստանդարտներին, որպեսզի պետական կարիքների համար ձեռք բերվող դեղորայքը պահպանվի միջազգային ստանդարտներին համապատասխան պայմաններում։ Այս նպատակով նախատեսվում է իրականացնել 120 մլն դրամի կապիտալ ծախսեր։</p>\r\n<p style=\"text-align: justify;\">8. Նախատեսվում է իրականացնել նախագծանախահաշվային փաստաթղթերի կազմում թվով 10 բժշկական կենտրոններիվերակառուցման, 1 բժշկական կենտրոնի վերանորոգման, 3 բժշկական կենտրոնների մասնակի վերանորոգման, 2 բժշկականկենտրոնի կառուցման համար, որի համար կծախսվի շուրջ 450մլն դրամ։</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/eWz1d3il28dEpOh8BLo4.jpg\",\"news\\/July2019\\/bhq6JNYZ3uQNSyj1RYKR.jpg\"]', NULL, '2019-06-29', '2019-07-02 13:42:35', '2019-07-02 13:42:35', 1),
(46, 'Սնկից թունավորումների դեպքերը նվազել են', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Հայաստանի տարածքում այս տարվա 1-ին կիսամյակում արձանագրվել է սնկից թունավորման 7 դեպք՝ 18 տուժածով, որից մինչև 14 տարեկան երեխաների շրջանում` 1 դեպք՝ 2 տուժածով: Դեպքերն արձանագրվել են Արարատի, Շիրակի, Արմավիրի, Լոռու և Կոտայքի մարզերում: Իսկ նախորդ տարի նույն ժամանակահատվածում գրանցվել է սնկից թունավորման 32 դեպք՝ 43 տուժածով:</p>\r\n<p style=\"text-align: justify;\">Սննդային թունավորման դեպքերը կանխարգելելու նպատակով առողջապահության նախարարության մասնագետները տեղերում իրականացրել են բժշկահիգիենիկ գիտելիքների տարածում:</p>\r\n<p style=\"text-align: justify;\">Հիշեցնենք, որ սնկից թունավորման կլինիկական հիմնական ախտանշաններն են որովայնի կտրուկ ցավը, սրտխառնոցը, անընդհատ փսխումները, առատ քրտնարտադրությունը, թքահոսությունը, գլխապտույտը, գլխացավը, անհագ ծարավի զգացումը, հալյուտինացիաները` առանց քնկոտության, ցնորքը, գիտակցության կորուստը, դեմքի կարմրությունը, սրտխփոցը, վախի զգացումը, լյարդի ախտահարման արդյունքում` մեծացած և ցավոտ լյարդը, դեղնուկը, լյարդային կոման, երիկամների ախտահարում: Հիվանդության առաջին նշաններն ի հայտ գալուն պես անհրաժեշտ է անմիջապես դիմել բժշկի։</p>\r\n<p style=\"text-align: justify;\">Սնկից թունավորումներից և հետագա բարդություններից խուսափելու նպատակով առողջապահության նախարարությունը հորդորում է.</p>\r\n<ul>\r\n<li>սննդում չօգտագործել անհայտ ծագման սունկ,</li>\r\n<li>չհավաքել սունկ ճանապարհների եզրերից,</li>\r\n<li>ուտելի և թունավոր սունկը տարբերակելու համար հիմք չընդունել նկարները, քանի որ թունավոր սնկերը շատ հաճախ աճում են ուտելի սնկերի մոտ և կարող են արտաքին տեսքով շատ նման լինել,</li>\r\n<li>սնկերը տարբերակելու համար հիմք չընդունել ժողովրդական առասպելները, ըստ որոնց թունավոր սնկերին չեն մոտենում միջատները և այլ կենդանիները կամ եփելու ընթացքում արծաթը սևանում է և սևացնում է սնկային արգանակը,</li>\r\n<li>չուտել հում սունկ,</li>\r\n<li>երեխաներին չկերակրել սնկով,</li>\r\n<li>աղեստամոքսային համակարգի խնդիրներ ունեցող մարդկանց խորհորդ չի տրվում սննդում օգտագործել սունկ,</li>\r\n<li>սնկի հետ չօգտագործել ալկոհոլ, քանի որ այն ակտիվացնում է մի շարք թունավոր նյութեր,</li>\r\n<li>թարմ սնկերը 1 օրից ավելի չպահել` նույնիսկ սառնարանային պայմաններում,</li>\r\n<li>չզբաղվել ինքնաբուժմամբ։</li>\r\n</ul>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/fnU4kBORI2Nt1wJc0VRq.jpg\"]', NULL, '2019-07-01', '2019-07-02 13:45:00', '2019-07-03 02:22:29', 1),
(47, 'Հայաստանում ՃՏՊ-ներից ամենահաճախը տուժում են երեխանները', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության համաշխարհային կազմակերպության (ԱՀԿ) Եվրոպական տարածաշրջանում ամեն տարի ոչ կանխամտածված վնասվածքներից մահանում է 20 տարեկանից ցածր տարիքի 42 հազար մարդ: &nbsp;Պատճառներից առաջատարը ճանապարհատրանսպորտային պատահարներն (ՃՏՊ) են:</p>\r\n<p style=\"text-align: justify;\">2018 թվականի հունվարի 1-ից Հայաստանում ներդրվել է մանկական վնասվածքների մշտադիտարկման համակարգ, որի շրջանակներում անցյալ տարվա ընթացքում արձանագրվել է ՃՏՊ-ների հետևանքով մանկական վնասվածքի 189 դեպք, որը կազմում է ընդհանուր դեպքերի 2.2%-ը, այդ թվում 98-ը՝ մինչև 11 տարեկան երեխաների շրջանում (51.9%):</p>\r\n<p style=\"text-align: justify;\">Այս տարվա առաջին 5 ամսվա ընթացքում ՃՏՊ-ների հետևանքով վնասվել է 67 երեխա, այդ թվում 45-ը (67.2%)` մինչև 11 տարեկան:</p>\r\n<p style=\"text-align: justify;\">Ինչպես ամբողջ աշխարհում, այնպես էլ Հայաստանում ՃՏՊ-ներից ամենահաճախը տուժում են 6-11 տարեկանները: Հարկ է նշել, որ դեպքերի 67%-ում երեխաները եղել են ուղևոր, որոնց կողմից չեն կիրառվել ոչ ամրագոտիներ, ոչ էլ մանկական պահող համակարգեր:</p>\r\n<p style=\"text-align: justify;\">Երեխաների շրջանում վնասվածքների վտանգը նվազագույնի հասցնելու նպատակով օրենսդրական փոփոխություններ են կատարվել (ՀՀ կառավարության 2019 թվականի ապրիլի 11-ի թիվ 439-Ն որոշում), ըստ որի մինչև 12 տարեկան երեխաների փոխադրումը թեթև մարդատար ավտոմոբիլում և բեռնատար ավտոմոբիլի խցիկում պետք է իրականացվի երեխայի քաշին և հասակին համապատասխանող մանկական պահող համակարգերի (սարքերի) օգտագործման միջոցով: Ոստիկանության տվյալների համաձայն՝ որոշման ընդունումից մինչև մայիսի 31-ն ընկած ժամանակահատվածում արդեն իսկ արձանագրվել է երեխաների ամրակապման և փոխադրման կանոնների խախտման 178 դեպք:</p>\r\n<p style=\"text-align: justify;\"><em>Առողջապահության նախարարությունը հորդորում է` խստորեն պահպանել անվտանգության կանոնները և մինչև 12 տարեկան երեխաներին տեղափոխելիս պարտադիր օգտագործել անվտանգության ամրագոտին կամ </em><em>մանկական պահող համակարգեր (սարքեր)՝ ՃՏՊ-ների հետևանքով առաջացած մանկական վնասվածքների կանխարգելման նպատակով:</em></p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/aNHZ6LKlkiKWWR7xCQIa.jpg\"]', NULL, '2019-07-02', '2019-07-02 13:47:30', '2019-07-02 13:47:30', 1),
(48, 'Քննարկվել են Սփյուռքի հետ համագործակցելով Հայաստանի առողջապահական համակարգի հզորացման հարցերը', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style=\"text-align: justify;\">Առողջապահության նախարար Արսեն Թորոսյանը մասնակցել է Հայաստանի ամերիկյան համալսարանում կազմակերպված &laquo;Հայաստանի առողջապահական համակարգի հզորացմանը` համագործակցելով Սփյուռքի հետ&raquo; միջոցառմանը:</p>\r\n<p style=\"text-align: justify;\">Միջոցառմանը ներկա են գտնվել նաև Հայկական բժշկական միջազգային կոմիտեի նախագահ Վիգեն Սեփիլյանը, Սփյուռքի գործերի գլխավոր հանձնակատար Զարեհ Սինանյանը և Շանթ Շեխերդիմյանը:</p>\r\n<p style=\"text-align: justify;\">Արսեն Թորոսյանը նշել է, որ նախարարությունն աշխատում է մատուցել այնպիսի ծառայություններ, որոնց արդյունքները տեսանելի են և ոչ թե գումարի վատնում: Նա անդրադարձել է բժշկական ապահովագրության կարևորությանը, որի կիրառման շնորհիվ միաժամանակ կլուծվեն մի շարք խնդիրներ:</p>\r\n<p style=\"text-align: justify;\">Հայաստանի ամերիկյան համալսարանի Թրփանճեան հանրային առողջապահության ֆակուլտետի տնօրեն Վարդուհի Պետրոսյանը ողջունել է առողջապահության նախարարության թափանցիկ գործունեությունը և նմանատիպ քննարկումների շարունակական բնույթը: Նա նշել է, որ միջոցառումը միավորում է Սփյուռքին, Հայաստանի և Ղարաբաղի առողջապահական ծառայություններ մատուցողներին և առողջապահության նախարարությանը:</p>\r\n<p style=\"text-align: justify;\">Խոսելով Հայաստանի առողջապահության ոլորտի խնդիրների մասին` Շանթ Շեխերդիմյանը ընդգծել է մի քանի պատճառ: Կազմակերպական և ինստիտուցիոնալ խնդիրներն ունեն կրթական և ֆինանսական հիմքեր: Նա անդրադարձել է նաև այն&nbsp; փոփոխություններին, որոնց արդյունքում Սփյուռքը ավելի ներգրավված կդառնա ոլորտում:</p>\r\n<p style=\"text-align: justify;\">Զարեհ Սինանյանն ասել է, որ համագործակցության շնորհիվ` Հայաստանի առողջապահական ծառայությունների որակն այնքան կբարձրանա, որ մոտ ապագայում սփյուռքահայերը կգան Հայաստան` մասնավորապես, առողջապահական ծառայությունների համար:</p>\r\n<p style=\"text-align: justify;\">Քննարկման վերջում բանախոսները պատասխանել են առողջապահության համակարգի և այն ուժեղացնելու ուղիների վերաբերյալ հարցերին:&nbsp;</p>\r\n<p style=\"text-align: justify;\">Նախարարը ողջունել է մասնակիցների ակտիվ և պատրաստակամ մոտեցումը:&nbsp;</p>\r\n</body>\r\n</html>', '[\"news\\/July2019\\/wpF9XPlBQQyCOhdfq4Vp.jpg\",\"news\\/July2019\\/PDTQAjdbGC4yagq85MUv.jpg\"]', NULL, '2019-07-03', '2019-07-04 01:16:38', '2019-07-04 01:16:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_texts`
--

INSERT INTO `pages_texts` (`id`, `page_name`, `page_slug`, `page_text1`, `page_text2`, `page_text3`, `created_at`, `updated_at`, `order`) VALUES
(1, 'ԱՌԱՔԵԼՈՒԹՅՈՒՆ', 'mission', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111</p>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>en</p>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '2019-06-12 04:33:00', '2019-07-15 09:43:30', 1),
(3, 'ՀԵՏԱԴԱՐՁ ԿԱՊ', 'contact-us', '<h1>Հարգելի այցելու,</h1>\r\n<ul>\r\n<li>այս էջի միջոցով կարող եք առցանց դիմում գրել կամ տեղեկատվություն ստանալու համար պաշտոնական հարցում ուղարկել: Հարցման պարագայում խնդրում ենք օգտվել տեղեկատվության հարցման օրինակելի ձևից:</li>\r\n<li>Դիմումի ձևը` <img src=\"http://moh.loc/storage/docx-icon.png\" alt=\"\" /><a href=\"http://moh.loc/storage/test.\" download=\"\">asdasdasd</a></li>\r\n<li>Տեղեկացնում ենք, որ դիմումը և հարցումը պետք է ստորագրված լինեն: Դիմումը կամ հարցումը ստանալուց հետո էլեկտրոնային փոստով Ձեզ կտրամադրվի 12 նիշանոց հսկիչ համար, որը մուտքագրելով այս դաշտում, կարող եք նաև առցանց հետևել նամակի ընթացքին:</li>\r\n</ul>', '<ul class=\"contact__us--text2\">\r\n<li>Տեղեկատվության ազատության համար պատասխանատու պաշտոնատար անձ, <span class=\"span\">Լիլիթ Բաբախանյան</span></li>\r\n<li>ՀՀ ԱՆ աշխատակազմի հասարակայնության հետ կապերի բաժին</li>\r\n<li>Հեռ. (+374 60) 80-80-03 / 2301; 2302,</li>\r\n<li>էլ. փոստ՝&nbsp;<a>pr@moh.am</a></li>\r\n</ul>', '', '2019-06-12 08:01:00', '2019-06-13 03:36:52', 1),
(4, 'ՆԱԽԱՐԱՐ', 'minister-page', '<h2>Հարգելի քաղաքացի</h2>\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:</p>', '<h1>Հարգելիներս</h1>\r\n<p>իմ նպատակը առողջապահության նախարարության թափանցիկ, արդյունավետ և անխափան աշխատանքի ապահովումն է ու պատասխանատվության ճիշտ բաշխումը:</p>\r\n<p>Խոստանում ենք ջանք չխնայել և ուժերի ներածի չափով Ձեր կողքին լինել ու պատրաստ ենք արձագանքել Ձեր խնդիրներին, դժգոհություններին, մեր համակարգում Ձեր առջև ծառացած ամենատարբեր հարցերին: &laquo;Թեժ գծով&raquo;` 8003, պատրաստ ենք լսել Ձեզ: Հարցերի լուծումն անձնապես իմ ուշադրության կենտրոնում է լինելու:</p>\r\n<h4>Սիրով՝ Արսեն Թորոսյան</h4>', '', '2019-06-13 04:26:00', '2019-06-13 07:23:29', 1),
(5, 'Կանոնադրություն', 'charter', '<h1>Հայաստանի Հանրապետության վարչապետ</h1>\n<h2>որոշում</h2>\n<h3>11 հունիսի 2018 թվականի N 728-L</h3>', '<h1>Հայաստանի Հանրապետության առողջապահության նախարարության կանոնադրությունը հաստատելու մասին</h1>\r\n<p>Հիմք ընդունելով &lt;&lt; Պետական կառավարման համակարգի մարմինների մասին&gt;&gt; Հայաստանի Հանրապետության օրենքի 7-րդ հոդվածի 9-րդ մասը և &lt;&lt; Կառավարության կառուցվածքի և գործունեության մասին&gt;&gt; Հայստանի Հանրապետության օրենքի 7-րդ հոդվածի 10-րդ մասը՝</p>\r\n<p>Հաստատել Հայաստանի Հանրապետության առոջղապահության նախարարության կանոնադրությունը՝ համաձայն հավելվածի</p>\r\n<p>Հայաստանի Հանրապետության վարչապետ <strong>Ն․ Փաշինյան</strong></p>', '<p><a href=\"http://moh.loc/storage/test.\">asd</a></p>', '2019-06-14 03:33:00', '2019-06-14 04:19:18', 1),
(6, 'Լիզենզավորման գործակալություն', 'license-organization', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ՀՀ առողջապահության նախարարության աշխատակազմի լիցենզավորման գործակալությունն իրականացնում է ՀՀ օրենսդրությամբ սահմանված կարգով դեղերի արտադրության, դեղատնային գործունեության, բժշկական օգնության և սպասարկման լիցենզավորման, լիցենզիաների վերաձևակերպման, կասեցման, դադարեցման, հասցեափոխության, այլ վայրում ևս նույն գործունեությամբ զբաղվելու լիցենզավորման գործընթացը, ինչպես նաև տրամադրում է դեղի, բուժտեխնիկայի, բուժական մեթոդի գովազդի թույլտվություն: Իրականացնում է ոլորտը կարգավորող իրավական ակտերի մշակման և ներդրման աշխատանքներ:</p>\n</body>\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-07-12 07:39:15', '2019-07-12 07:39:15', 1),
(7, 'Առողջապահության ազգային ինստիտուտ', 'sub-structures-health-institute', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ՀՀ ԱՆ &laquo;Ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտ&raquo; փակ բաժնետիրական ընկերության կառավարումն իրականացնում է հիմնադիրը` ՀՀ առողջապահության նախարարությունը:</p>\n<p><strong>Իր առջև դրված նպատակների արդյունավետ կատարումն ապահովելու համար Ընկերությունը`</strong></p>\n<p>&bull; Իրականացնում է աշխատանքներ, ուղղված առողջապահության զարգացման հիմնական ուղղություններից և ռազմավարությունից բխող խնդիրների լուծմանը, գիտականորեն հիմնավորում և մշակում է առողջապահության կազմակերպման, կառավարման, ֆինանսվորման և տնտեսվարման ժամանակակից մեխանիզմների մոդելները, բժշկատնտեսագիտական ստանդարտները` պատրաստելով համապատասխան նորմատիվային փաստաթղթերի նախագծերը.</p>\n<p>Մասնավորապես`</p>\n<p>&bull; բժշկական կլինիկական ուղեցույցների պատրաստում` ըստ նոզոլոգիաների.</p>\n<p>&bull; կլինիկական չափորոշիչների, չափորոշչավորման պատասխանատու օղակների գործառույթների, կառուցվածքային և ֆինանսատեխնիկական ապահովման մեխանիզմների մշակում, ներդրում և վերահսկում.</p>\n<p>&bull; Կազմակերպում է բժիշկների, ստոմատոլոգների, դեղագետների, միջին բուժ անձնակազմի, դեղագործների գիտելիքների բարձրացման նպատակով հետդիպլոմային շարունակական կատարելագործման աշխատանքները. /հետբուհական մասնագիտացում, մասնագիտական շարունակական զարգացում/:</p>\n<p>&bull; Բնակչության առողջության վիճակի ուսմանսիրման նպատակով անցկացնում է գիտական հետազոտություններ և մոնիտորինգ.</p>\n<p>&bull; առողջապահության կադրային ներուժի վերաբերյալ տվյալների հավաքագրում և շտեմարանի ստեղծում,</p>\n<p>&bull; ստոմատոլոգիական ծառայությունների մատուցում,</p>\n<p>&bull; Իրականացնում է համագործակցություն ՀՀ և արտասահմանյան երկրների կրթական գիտահետազոտական կազմակերպությունների, բուժկանխարգելիչ հիմանրկների հետ` կազմակերպում է գիտական փորձի, ինֆորմացիայի և մասնագետների փոխադարձ փոխանակում.</p>\n<p>&bull; Գործնական առողջապահության մարմիններին ցուցաբերում է գիտամեթոդական և կազմակերպչական օգնություն.</p>\n<p>&bull; Իրականացնում է հրատարակչական գործունեություն (նորմատիվ ակտերի, զեկուցագրերի գիտաուսումնամեթոդական գրականության, տեղեկետվական և այլ նյութերի հրատարակումը և բազմացումը).</p>\n<p>&bull; Կազմակերպում է գիտագործնական կոնֆերանսներ սեմինարներ, նվիրված առողջապահության համակարգի զարգացման, գիտական, ուսումնական, բուժկանխարգելիչ օգնության կազմակերպչական նոր ձևերի հարցերին:</p>\n<p>&bull; Առողջապահական հիմնարկներից բժշկական վիճակագրության և բժշկասանիտարական տեղեկատվության հավաքագրում և վերլուծություն:</p>\n<p>&bull; Թմրամիջոցների մասին համաճարակաբանական տեղեկատվության հավաքագրում և վերլուծություն:</p>\n</body>\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-07-12 07:51:44', '2019-07-12 07:51:44', 1),
(8, 'Դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն', 'sub-structures-drug-medical-expertise', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><strong>&laquo;Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն&raquo; ՓԲԸ</strong></p>\n<p>Դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոնն իրականացնում է Հայաստանի Հանրապետությունում անվտանգ, արդյունավետ, որակյալ դեղերի մատչելիության ապահովմանն ուղղված դեղային ազգային քաղաքականություն:</p>\n</body>\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-07-12 08:04:00', '2019-07-12 08:04:00', 1),
(9, 'Հանրապետական գիտաբժշկական գրադարան', 'sub-structures-medical-library', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p><strong>Հանրապետական գիտաբժշկական գրադարան</strong></p>\n<p>Հանրապետական գիտաբժշկական գրադարանը (ՀԳԲԳ) Հայաստանի Հանրապետության առաջատար գրադարաններից է և բժշկության ոլորտի մատենագիտական, գրադարանային և տեղեկատվական ծառայությունների հիմնական կենտրոնը:</p>\n<p>ՀԳԲԳ-ի հիմնական առաքելությունն է` համալրել, կազմակերպել, պահպանել և ընթերցողներին տրամադրել կենսաբժշկական ոլորտի տպագիր և էլեկտրոնային տեղեկատվական աղբյուրներն ու շտեմարանները:</p>\n<p>Գրադարանի հիմնական գործառույթներն են` բժիշկներին ավանդական և ժամանակակից համակարգերի միջոցով տեղեկատվական ծառայությունների մատուցումը, փաստաթղթերի մշակման և տեղեկատվության որոնման ավտոմատացումը, բժշկական գրադարանների ցանցի համակարգումը, ինչպես նաև բժշկական գրադարանավարների մասնագիտական հմտությունների զարգացումը:</p>\n</body>\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '2019-07-12 08:10:29', '2019-07-12 08:10:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_row` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `url`, `slider_row`, `created_at`, `updated_at`, `order`) VALUES
(1, 'partners/June2019/AUNCfibL6TxEmB6KkNIz.png', '#', '2', '2019-06-10 10:05:00', '2019-06-21 15:33:39', 1),
(2, 'partners/June2019/VVZhsLOUNy528MphJKCx.png', '#', '2', '2019-06-10 10:05:00', '2019-06-21 15:33:33', 1),
(3, 'partners/June2019/NqmxzbbL85h9IYLxjF3v.png', '#', '2', '2019-06-10 10:05:00', '2019-06-21 15:33:27', 1),
(4, 'partners/June2019/OqlhMHGYC5LSUxybxAVo.png', '#', '2', '2019-06-10 10:06:00', '2019-06-21 15:33:19', 1),
(5, 'partners/June2019/fKvA5scv88GZP5xv5OFj.png', '#', '1', '2019-06-10 10:06:00', '2019-06-21 15:33:08', 1),
(6, 'partners/June2019/XfZIqFNDBJCbYfZ3jO9w.png', '#', '1', '2019-06-10 10:06:00', '2019-06-21 15:33:01', 1),
(7, 'partners/June2019/OgU6BysZsyhlObG0j96R.png', '#', '1', '2019-06-10 10:06:00', '2019-06-21 15:32:50', 1),
(8, 'partners/June2019/9V2dsrhy13BV69MXMlL5.png', '#', '1', '2019-06-10 10:07:00', '2019-06-21 15:32:40', 1);

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
-- Table structure for table `pc_appeals`
--

CREATE TABLE `pc_appeals` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pc_appeals`
--

INSERT INTO `pc_appeals` (`id`, `year`, `file_name`, `file_upload`, `file_url`, `file_date`, `order`, `created_at`, `updated_at`) VALUES
(1, '2017 - 2018', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-appeals\\/July2019\\/hTzYzLpvqOjb8Q8NxATn.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, '2019-07-09 09:18:32', '2019-07-09 09:18:32'),
(2, '2018 - 2019', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-appeals\\/July2019\\/5mJVvbuUCQYTugnnp9We.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, '2019-07-09 09:19:31', '2019-07-09 09:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `pc_results`
--

CREATE TABLE `pc_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pc_results`
--

INSERT INTO `pc_results` (`id`, `year`, `file_name`, `file_upload`, `file_url`, `file_date`, `order`, `created_at`, `updated_at`) VALUES
(1, '2017 - 2018', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-results\\/July2019\\/hPmSMdrsoKmR321aIzzV.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-02', 1, '2019-07-09 09:20:36', '2019-07-09 09:20:36'),
(2, '2018 - 2019', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-results\\/July2019\\/3rSKmOOecT1sNQNDoEIF.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2020-01-01', 1, '2019-07-09 09:20:57', '2019-07-09 09:20:57');

-- --------------------------------------------------------

--
-- Table structure for table `pc_sessions`
--

CREATE TABLE `pc_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pc_sessions`
--

INSERT INTO `pc_sessions` (`id`, `year`, `file_name`, `file_upload`, `file_url`, `file_date`, `order`, `created_at`, `updated_at`) VALUES
(1, '2017 - 2018', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-sessions\\/July2019\\/5h0j7wsVyiZLfRQvotrG.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, '2019-07-09 09:21:41', '2019-07-09 09:21:41'),
(2, '2018 - 2019', 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-sessions\\/July2019\\/qoDK9eWclz1Nnv2aB7Wu.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-02', 1, '2019-07-09 09:21:58', '2019-07-09 09:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `pc_staffs`
--

CREATE TABLE `pc_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pc_staffs`
--

INSERT INTO `pc_staffs` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `order`, `created_at`, `updated_at`) VALUES
(1, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-staffs\\/July2019\\/risgzJv38rT1buFGKkWB.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-02', 1, '2019-07-09 09:22:35', '2019-07-09 09:22:35'),
(2, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"pc-staffs\\/July2019\\/KNTuOOv57JVrNNnEFBzH.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-02', 1, '2019-07-09 09:22:48', '2019-07-09 09:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(146, 'delete_cover_photos', 'cover_photos', '2019-06-17 08:09:10', '2019-06-17 08:09:10'),
(147, 'browse_speech_and_interviews', 'speech_and_interviews', '2019-06-19 06:09:46', '2019-06-19 06:09:46'),
(148, 'read_speech_and_interviews', 'speech_and_interviews', '2019-06-19 06:09:46', '2019-06-19 06:09:46'),
(149, 'edit_speech_and_interviews', 'speech_and_interviews', '2019-06-19 06:09:46', '2019-06-19 06:09:46'),
(150, 'add_speech_and_interviews', 'speech_and_interviews', '2019-06-19 06:09:46', '2019-06-19 06:09:46'),
(151, 'delete_speech_and_interviews', 'speech_and_interviews', '2019-06-19 06:09:46', '2019-06-19 06:09:46'),
(152, 'browse_reports', 'reports', '2019-06-19 09:16:22', '2019-06-19 09:16:22'),
(153, 'read_reports', 'reports', '2019-06-19 09:16:22', '2019-06-19 09:16:22'),
(154, 'edit_reports', 'reports', '2019-06-19 09:16:22', '2019-06-19 09:16:22'),
(155, 'add_reports', 'reports', '2019-06-19 09:16:22', '2019-06-19 09:16:22'),
(156, 'delete_reports', 'reports', '2019-06-19 09:16:22', '2019-06-19 09:16:22'),
(157, 'browse_press_releases', 'press_releases', '2019-06-20 05:35:32', '2019-06-20 05:35:32'),
(158, 'read_press_releases', 'press_releases', '2019-06-20 05:35:32', '2019-06-20 05:35:32'),
(159, 'edit_press_releases', 'press_releases', '2019-06-20 05:35:32', '2019-06-20 05:35:32'),
(160, 'add_press_releases', 'press_releases', '2019-06-20 05:35:32', '2019-06-20 05:35:32'),
(161, 'delete_press_releases', 'press_releases', '2019-06-20 05:35:32', '2019-06-20 05:35:32'),
(162, 'browse_researches', 'researches', '2019-06-20 07:26:08', '2019-06-20 07:26:08'),
(163, 'read_researches', 'researches', '2019-06-20 07:26:08', '2019-06-20 07:26:08'),
(164, 'edit_researches', 'researches', '2019-06-20 07:26:08', '2019-06-20 07:26:08'),
(165, 'add_researches', 'researches', '2019-06-20 07:26:08', '2019-06-20 07:26:08'),
(166, 'delete_researches', 'researches', '2019-06-20 07:26:08', '2019-06-20 07:26:08'),
(167, 'browse_statistics', 'statistics', '2019-06-20 07:36:42', '2019-06-20 07:36:42'),
(168, 'read_statistics', 'statistics', '2019-06-20 07:36:42', '2019-06-20 07:36:42'),
(169, 'edit_statistics', 'statistics', '2019-06-20 07:36:42', '2019-06-20 07:36:42'),
(170, 'add_statistics', 'statistics', '2019-06-20 07:36:42', '2019-06-20 07:36:42'),
(171, 'delete_statistics', 'statistics', '2019-06-20 07:36:42', '2019-06-20 07:36:42'),
(172, 'browse_informatives', 'informatives', '2019-06-20 08:07:26', '2019-06-20 08:07:26'),
(173, 'read_informatives', 'informatives', '2019-06-20 08:07:26', '2019-06-20 08:07:26'),
(174, 'edit_informatives', 'informatives', '2019-06-20 08:07:26', '2019-06-20 08:07:26'),
(175, 'add_informatives', 'informatives', '2019-06-20 08:07:26', '2019-06-20 08:07:26'),
(176, 'delete_informatives', 'informatives', '2019-06-20 08:07:26', '2019-06-20 08:07:26'),
(177, 'browse_legal_acts', 'legal_acts', '2019-06-26 07:29:52', '2019-06-26 07:29:52'),
(178, 'read_legal_acts', 'legal_acts', '2019-06-26 07:29:52', '2019-06-26 07:29:52'),
(179, 'edit_legal_acts', 'legal_acts', '2019-06-26 07:29:52', '2019-06-26 07:29:52'),
(180, 'add_legal_acts', 'legal_acts', '2019-06-26 07:29:52', '2019-06-26 07:29:52'),
(181, 'delete_legal_acts', 'legal_acts', '2019-06-26 07:29:52', '2019-06-26 07:29:52'),
(182, 'browse_legal_acts_types', 'legal_acts_types', '2019-06-26 07:30:42', '2019-06-26 07:30:42'),
(183, 'read_legal_acts_types', 'legal_acts_types', '2019-06-26 07:30:42', '2019-06-26 07:30:42'),
(184, 'edit_legal_acts_types', 'legal_acts_types', '2019-06-26 07:30:42', '2019-06-26 07:30:42'),
(185, 'add_legal_acts_types', 'legal_acts_types', '2019-06-26 07:30:42', '2019-06-26 07:30:42'),
(186, 'delete_legal_acts_types', 'legal_acts_types', '2019-06-26 07:30:42', '2019-06-26 07:30:42'),
(187, 'browse_min_history_categories', 'min_history_categories', '2019-06-26 07:33:59', '2019-06-26 07:33:59'),
(188, 'read_min_history_categories', 'min_history_categories', '2019-06-26 07:33:59', '2019-06-26 07:33:59'),
(189, 'edit_min_history_categories', 'min_history_categories', '2019-06-26 07:33:59', '2019-06-26 07:33:59'),
(190, 'add_min_history_categories', 'min_history_categories', '2019-06-26 07:33:59', '2019-06-26 07:33:59'),
(191, 'delete_min_history_categories', 'min_history_categories', '2019-06-26 07:33:59', '2019-06-26 07:33:59'),
(192, 'browse_min_history_items', 'min_history_items', '2019-06-26 07:35:40', '2019-06-26 07:35:40'),
(193, 'read_min_history_items', 'min_history_items', '2019-06-26 07:35:40', '2019-06-26 07:35:40'),
(194, 'edit_min_history_items', 'min_history_items', '2019-06-26 07:35:40', '2019-06-26 07:35:40'),
(195, 'add_min_history_items', 'min_history_items', '2019-06-26 07:35:40', '2019-06-26 07:35:40'),
(196, 'delete_min_history_items', 'min_history_items', '2019-06-26 07:35:40', '2019-06-26 07:35:40'),
(197, 'browse_links_ccos', 'links_ccos', '2019-07-02 11:40:43', '2019-07-02 11:40:43'),
(198, 'read_links_ccos', 'links_ccos', '2019-07-02 11:40:43', '2019-07-02 11:40:43'),
(199, 'edit_links_ccos', 'links_ccos', '2019-07-02 11:40:43', '2019-07-02 11:40:43'),
(200, 'add_links_ccos', 'links_ccos', '2019-07-02 11:40:43', '2019-07-02 11:40:43'),
(201, 'delete_links_ccos', 'links_ccos', '2019-07-02 11:40:43', '2019-07-02 11:40:43'),
(202, 'browse_links_co_workers', 'links_co_workers', '2019-07-02 11:42:18', '2019-07-02 11:42:18'),
(203, 'read_links_co_workers', 'links_co_workers', '2019-07-02 11:42:18', '2019-07-02 11:42:18'),
(204, 'edit_links_co_workers', 'links_co_workers', '2019-07-02 11:42:18', '2019-07-02 11:42:18'),
(205, 'add_links_co_workers', 'links_co_workers', '2019-07-02 11:42:18', '2019-07-02 11:42:18'),
(206, 'delete_links_co_workers', 'links_co_workers', '2019-07-02 11:42:18', '2019-07-02 11:42:18'),
(207, 'browse_links_links', 'links_links', '2019-07-02 11:43:41', '2019-07-02 11:43:41'),
(208, 'read_links_links', 'links_links', '2019-07-02 11:43:41', '2019-07-02 11:43:41'),
(209, 'edit_links_links', 'links_links', '2019-07-02 11:43:41', '2019-07-02 11:43:41'),
(210, 'add_links_links', 'links_links', '2019-07-02 11:43:41', '2019-07-02 11:43:41'),
(211, 'delete_links_links', 'links_links', '2019-07-02 11:43:41', '2019-07-02 11:43:41'),
(212, 'browse_links_ngos', 'links_ngos', '2019-07-02 11:44:46', '2019-07-02 11:44:46'),
(213, 'read_links_ngos', 'links_ngos', '2019-07-02 11:44:46', '2019-07-02 11:44:46'),
(214, 'edit_links_ngos', 'links_ngos', '2019-07-02 11:44:46', '2019-07-02 11:44:46'),
(215, 'add_links_ngos', 'links_ngos', '2019-07-02 11:44:46', '2019-07-02 11:44:46'),
(216, 'delete_links_ngos', 'links_ngos', '2019-07-02 11:44:46', '2019-07-02 11:44:46'),
(217, 'browse_anti_corruption_events', 'anti_corruption_events', '2019-07-04 08:29:24', '2019-07-04 08:29:24'),
(218, 'read_anti_corruption_events', 'anti_corruption_events', '2019-07-04 08:29:24', '2019-07-04 08:29:24'),
(219, 'edit_anti_corruption_events', 'anti_corruption_events', '2019-07-04 08:29:24', '2019-07-04 08:29:24'),
(220, 'add_anti_corruption_events', 'anti_corruption_events', '2019-07-04 08:29:24', '2019-07-04 08:29:24'),
(221, 'delete_anti_corruption_events', 'anti_corruption_events', '2019-07-04 08:29:24', '2019-07-04 08:29:24'),
(222, 'browse_internationals', 'internationals', '2019-07-04 08:31:41', '2019-07-04 08:31:41'),
(223, 'read_internationals', 'internationals', '2019-07-04 08:31:41', '2019-07-04 08:31:41'),
(224, 'edit_internationals', 'internationals', '2019-07-04 08:31:41', '2019-07-04 08:31:41'),
(225, 'add_internationals', 'internationals', '2019-07-04 08:31:41', '2019-07-04 08:31:41'),
(226, 'delete_internationals', 'internationals', '2019-07-04 08:31:41', '2019-07-04 08:31:41'),
(227, 'browse_nationals', 'nationals', '2019-07-04 08:37:30', '2019-07-04 08:37:30'),
(228, 'read_nationals', 'nationals', '2019-07-04 08:37:30', '2019-07-04 08:37:30'),
(229, 'edit_nationals', 'nationals', '2019-07-04 08:37:30', '2019-07-04 08:37:30'),
(230, 'add_nationals', 'nationals', '2019-07-04 08:37:30', '2019-07-04 08:37:30'),
(231, 'delete_nationals', 'nationals', '2019-07-04 08:37:30', '2019-07-04 08:37:30'),
(232, 'browse_politics', 'politics', '2019-07-04 08:39:49', '2019-07-04 08:39:49'),
(233, 'read_politics', 'politics', '2019-07-04 08:39:49', '2019-07-04 08:39:49'),
(234, 'edit_politics', 'politics', '2019-07-04 08:39:49', '2019-07-04 08:39:49'),
(235, 'add_politics', 'politics', '2019-07-04 08:39:49', '2019-07-04 08:39:49'),
(236, 'delete_politics', 'politics', '2019-07-04 08:39:49', '2019-07-04 08:39:49'),
(237, 'browse_screenings', 'screenings', '2019-07-04 08:41:32', '2019-07-04 08:41:32'),
(238, 'read_screenings', 'screenings', '2019-07-04 08:41:32', '2019-07-04 08:41:32'),
(239, 'edit_screenings', 'screenings', '2019-07-04 08:41:32', '2019-07-04 08:41:32'),
(240, 'add_screenings', 'screenings', '2019-07-04 08:41:32', '2019-07-04 08:41:32'),
(241, 'delete_screenings', 'screenings', '2019-07-04 08:41:32', '2019-07-04 08:41:32'),
(242, 'browse_superiors', 'superiors', '2019-07-04 08:43:50', '2019-07-04 08:43:50'),
(243, 'read_superiors', 'superiors', '2019-07-04 08:43:50', '2019-07-04 08:43:50'),
(244, 'edit_superiors', 'superiors', '2019-07-04 08:43:50', '2019-07-04 08:43:50'),
(245, 'add_superiors', 'superiors', '2019-07-04 08:43:50', '2019-07-04 08:43:50'),
(246, 'delete_superiors', 'superiors', '2019-07-04 08:43:50', '2019-07-04 08:43:50'),
(247, 'browse_licens_documents_applications', 'licens_documents_applications', '2019-07-08 03:16:47', '2019-07-08 03:16:47'),
(248, 'read_licens_documents_applications', 'licens_documents_applications', '2019-07-08 03:16:47', '2019-07-08 03:16:47'),
(249, 'edit_licens_documents_applications', 'licens_documents_applications', '2019-07-08 03:16:47', '2019-07-08 03:16:47'),
(250, 'add_licens_documents_applications', 'licens_documents_applications', '2019-07-08 03:16:47', '2019-07-08 03:16:47'),
(251, 'delete_licens_documents_applications', 'licens_documents_applications', '2019-07-08 03:16:47', '2019-07-08 03:16:47'),
(252, 'browse_admissions', 'admissions', '2019-07-08 03:19:33', '2019-07-08 03:19:33'),
(253, 'read_admissions', 'admissions', '2019-07-08 03:19:33', '2019-07-08 03:19:33'),
(254, 'edit_admissions', 'admissions', '2019-07-08 03:19:33', '2019-07-08 03:19:33'),
(255, 'add_admissions', 'admissions', '2019-07-08 03:19:33', '2019-07-08 03:19:33'),
(256, 'delete_admissions', 'admissions', '2019-07-08 03:19:33', '2019-07-08 03:19:33'),
(257, 'browse_advertising_permissions', 'advertising_permissions', '2019-07-08 03:21:13', '2019-07-08 03:21:13'),
(258, 'read_advertising_permissions', 'advertising_permissions', '2019-07-08 03:21:13', '2019-07-08 03:21:13'),
(259, 'edit_advertising_permissions', 'advertising_permissions', '2019-07-08 03:21:13', '2019-07-08 03:21:13'),
(260, 'add_advertising_permissions', 'advertising_permissions', '2019-07-08 03:21:13', '2019-07-08 03:21:13'),
(261, 'delete_advertising_permissions', 'advertising_permissions', '2019-07-08 03:21:13', '2019-07-08 03:21:13'),
(262, 'browse_state_orders', 'state_orders', '2019-07-08 03:23:01', '2019-07-08 03:23:01'),
(263, 'read_state_orders', 'state_orders', '2019-07-08 03:23:01', '2019-07-08 03:23:01'),
(264, 'edit_state_orders', 'state_orders', '2019-07-08 03:23:01', '2019-07-08 03:23:01'),
(265, 'add_state_orders', 'state_orders', '2019-07-08 03:23:01', '2019-07-08 03:23:01'),
(266, 'delete_state_orders', 'state_orders', '2019-07-08 03:23:01', '2019-07-08 03:23:01'),
(267, 'browse_faq_categories', 'faq_categories', '2019-07-08 10:28:42', '2019-07-08 10:28:42'),
(268, 'read_faq_categories', 'faq_categories', '2019-07-08 10:28:42', '2019-07-08 10:28:42'),
(269, 'edit_faq_categories', 'faq_categories', '2019-07-08 10:28:42', '2019-07-08 10:28:42'),
(270, 'add_faq_categories', 'faq_categories', '2019-07-08 10:28:42', '2019-07-08 10:28:42'),
(271, 'delete_faq_categories', 'faq_categories', '2019-07-08 10:28:42', '2019-07-08 10:28:42'),
(272, 'browse_faqs', 'faqs', '2019-07-08 10:29:21', '2019-07-08 10:29:21'),
(273, 'read_faqs', 'faqs', '2019-07-08 10:29:21', '2019-07-08 10:29:21'),
(274, 'edit_faqs', 'faqs', '2019-07-08 10:29:21', '2019-07-08 10:29:21'),
(275, 'add_faqs', 'faqs', '2019-07-08 10:29:21', '2019-07-08 10:29:21'),
(276, 'delete_faqs', 'faqs', '2019-07-08 10:29:21', '2019-07-08 10:29:21'),
(277, 'browse_budget_categories', 'budget_categories', '2019-07-09 08:55:06', '2019-07-09 08:55:06'),
(278, 'read_budget_categories', 'budget_categories', '2019-07-09 08:55:06', '2019-07-09 08:55:06'),
(279, 'edit_budget_categories', 'budget_categories', '2019-07-09 08:55:06', '2019-07-09 08:55:06'),
(280, 'add_budget_categories', 'budget_categories', '2019-07-09 08:55:06', '2019-07-09 08:55:06'),
(281, 'delete_budget_categories', 'budget_categories', '2019-07-09 08:55:06', '2019-07-09 08:55:06'),
(282, 'browse_budgets', 'budgets', '2019-07-09 08:56:00', '2019-07-09 08:56:00'),
(283, 'read_budgets', 'budgets', '2019-07-09 08:56:00', '2019-07-09 08:56:00'),
(284, 'edit_budgets', 'budgets', '2019-07-09 08:56:00', '2019-07-09 08:56:00'),
(285, 'add_budgets', 'budgets', '2019-07-09 08:56:00', '2019-07-09 08:56:00'),
(286, 'delete_budgets', 'budgets', '2019-07-09 08:56:00', '2019-07-09 08:56:00'),
(287, 'browse_moh_consultants', 'moh_consultants', '2019-07-09 09:00:27', '2019-07-09 09:00:27'),
(288, 'read_moh_consultants', 'moh_consultants', '2019-07-09 09:00:27', '2019-07-09 09:00:27'),
(289, 'edit_moh_consultants', 'moh_consultants', '2019-07-09 09:00:27', '2019-07-09 09:00:27'),
(290, 'add_moh_consultants', 'moh_consultants', '2019-07-09 09:00:27', '2019-07-09 09:00:27'),
(291, 'delete_moh_consultants', 'moh_consultants', '2019-07-09 09:00:27', '2019-07-09 09:00:27'),
(292, 'browse_pc_appeals', 'pc_appeals', '2019-07-09 09:01:05', '2019-07-09 09:01:05'),
(293, 'read_pc_appeals', 'pc_appeals', '2019-07-09 09:01:05', '2019-07-09 09:01:05'),
(294, 'edit_pc_appeals', 'pc_appeals', '2019-07-09 09:01:05', '2019-07-09 09:01:05'),
(295, 'add_pc_appeals', 'pc_appeals', '2019-07-09 09:01:05', '2019-07-09 09:01:05'),
(296, 'delete_pc_appeals', 'pc_appeals', '2019-07-09 09:01:05', '2019-07-09 09:01:05'),
(297, 'browse_pc_results', 'pc_results', '2019-07-09 09:01:46', '2019-07-09 09:01:46'),
(298, 'read_pc_results', 'pc_results', '2019-07-09 09:01:46', '2019-07-09 09:01:46'),
(299, 'edit_pc_results', 'pc_results', '2019-07-09 09:01:46', '2019-07-09 09:01:46'),
(300, 'add_pc_results', 'pc_results', '2019-07-09 09:01:46', '2019-07-09 09:01:46'),
(301, 'delete_pc_results', 'pc_results', '2019-07-09 09:01:46', '2019-07-09 09:01:46'),
(302, 'browse_pc_sessions', 'pc_sessions', '2019-07-09 09:02:30', '2019-07-09 09:02:30'),
(303, 'read_pc_sessions', 'pc_sessions', '2019-07-09 09:02:30', '2019-07-09 09:02:30'),
(304, 'edit_pc_sessions', 'pc_sessions', '2019-07-09 09:02:30', '2019-07-09 09:02:30'),
(305, 'add_pc_sessions', 'pc_sessions', '2019-07-09 09:02:30', '2019-07-09 09:02:30'),
(306, 'delete_pc_sessions', 'pc_sessions', '2019-07-09 09:02:30', '2019-07-09 09:02:30'),
(307, 'browse_pc_staffs', 'pc_staffs', '2019-07-09 09:03:05', '2019-07-09 09:03:05'),
(308, 'read_pc_staffs', 'pc_staffs', '2019-07-09 09:03:05', '2019-07-09 09:03:05'),
(309, 'edit_pc_staffs', 'pc_staffs', '2019-07-09 09:03:05', '2019-07-09 09:03:05'),
(310, 'add_pc_staffs', 'pc_staffs', '2019-07-09 09:03:05', '2019-07-09 09:03:05'),
(311, 'delete_pc_staffs', 'pc_staffs', '2019-07-09 09:03:05', '2019-07-09 09:03:05'),
(312, 'browse_staffing_job_acceptances', 'staffing_job_acceptances', '2019-07-09 10:56:24', '2019-07-09 10:56:24'),
(313, 'read_staffing_job_acceptances', 'staffing_job_acceptances', '2019-07-09 10:56:24', '2019-07-09 10:56:24'),
(314, 'edit_staffing_job_acceptances', 'staffing_job_acceptances', '2019-07-09 10:56:24', '2019-07-09 10:56:24'),
(315, 'add_staffing_job_acceptances', 'staffing_job_acceptances', '2019-07-09 10:56:24', '2019-07-09 10:56:24'),
(316, 'delete_staffing_job_acceptances', 'staffing_job_acceptances', '2019-07-09 10:56:24', '2019-07-09 10:56:24'),
(317, 'browse_staffing_staff_lists', 'staffing_staff_lists', '2019-07-09 10:57:43', '2019-07-09 10:57:43'),
(318, 'read_staffing_staff_lists', 'staffing_staff_lists', '2019-07-09 10:57:43', '2019-07-09 10:57:43'),
(319, 'edit_staffing_staff_lists', 'staffing_staff_lists', '2019-07-09 10:57:43', '2019-07-09 10:57:43'),
(320, 'add_staffing_staff_lists', 'staffing_staff_lists', '2019-07-09 10:57:43', '2019-07-09 10:57:43'),
(321, 'delete_staffing_staff_lists', 'staffing_staff_lists', '2019-07-09 10:57:43', '2019-07-09 10:57:43'),
(322, 'browse_staffing_tender_results', 'staffing_tender_results', '2019-07-09 10:59:02', '2019-07-09 10:59:02'),
(323, 'read_staffing_tender_results', 'staffing_tender_results', '2019-07-09 10:59:02', '2019-07-09 10:59:02'),
(324, 'edit_staffing_tender_results', 'staffing_tender_results', '2019-07-09 10:59:02', '2019-07-09 10:59:02'),
(325, 'add_staffing_tender_results', 'staffing_tender_results', '2019-07-09 10:59:02', '2019-07-09 10:59:02'),
(326, 'delete_staffing_tender_results', 'staffing_tender_results', '2019-07-09 10:59:02', '2019-07-09 10:59:02'),
(327, 'browse_staffing_vacancies', 'staffing_vacancies', '2019-07-09 10:59:59', '2019-07-09 10:59:59'),
(328, 'read_staffing_vacancies', 'staffing_vacancies', '2019-07-09 10:59:59', '2019-07-09 10:59:59'),
(329, 'edit_staffing_vacancies', 'staffing_vacancies', '2019-07-09 10:59:59', '2019-07-09 10:59:59'),
(330, 'add_staffing_vacancies', 'staffing_vacancies', '2019-07-09 10:59:59', '2019-07-09 10:59:59'),
(331, 'delete_staffing_vacancies', 'staffing_vacancies', '2019-07-09 10:59:59', '2019-07-09 10:59:59'),
(332, 'browse_your_rights_files', 'your_rights_files', '2019-07-10 04:36:04', '2019-07-10 04:36:04'),
(333, 'read_your_rights_files', 'your_rights_files', '2019-07-10 04:36:04', '2019-07-10 04:36:04'),
(334, 'edit_your_rights_files', 'your_rights_files', '2019-07-10 04:36:04', '2019-07-10 04:36:04'),
(335, 'add_your_rights_files', 'your_rights_files', '2019-07-10 04:36:04', '2019-07-10 04:36:04'),
(336, 'delete_your_rights_files', 'your_rights_files', '2019-07-10 04:36:04', '2019-07-10 04:36:04'),
(337, 'browse_your_rights_videos', 'your_rights_videos', '2019-07-10 04:37:17', '2019-07-10 04:37:17'),
(338, 'read_your_rights_videos', 'your_rights_videos', '2019-07-10 04:37:17', '2019-07-10 04:37:17'),
(339, 'edit_your_rights_videos', 'your_rights_videos', '2019-07-10 04:37:17', '2019-07-10 04:37:17'),
(340, 'add_your_rights_videos', 'your_rights_videos', '2019-07-10 04:37:17', '2019-07-10 04:37:17'),
(341, 'delete_your_rights_videos', 'your_rights_videos', '2019-07-10 04:37:17', '2019-07-10 04:37:17'),
(342, 'browse_ss_other_orgs', 'ss_other_orgs', '2019-07-12 04:10:27', '2019-07-12 04:10:27'),
(343, 'read_ss_other_orgs', 'ss_other_orgs', '2019-07-12 04:10:27', '2019-07-12 04:10:27'),
(344, 'edit_ss_other_orgs', 'ss_other_orgs', '2019-07-12 04:10:27', '2019-07-12 04:10:27'),
(345, 'add_ss_other_orgs', 'ss_other_orgs', '2019-07-12 04:10:27', '2019-07-12 04:10:27'),
(346, 'delete_ss_other_orgs', 'ss_other_orgs', '2019-07-12 04:10:27', '2019-07-12 04:10:27'),
(347, 'browse_ss_stationery_orgs', 'ss_stationery_orgs', '2019-07-12 04:11:10', '2019-07-12 04:11:10'),
(348, 'read_ss_stationery_orgs', 'ss_stationery_orgs', '2019-07-12 04:11:10', '2019-07-12 04:11:10'),
(349, 'edit_ss_stationery_orgs', 'ss_stationery_orgs', '2019-07-12 04:11:10', '2019-07-12 04:11:10'),
(350, 'add_ss_stationery_orgs', 'ss_stationery_orgs', '2019-07-12 04:11:10', '2019-07-12 04:11:10'),
(351, 'delete_ss_stationery_orgs', 'ss_stationery_orgs', '2019-07-12 04:11:10', '2019-07-12 04:11:10'),
(352, 'browse_license_org_files', 'license_org_files', '2019-07-12 12:03:13', '2019-07-12 12:03:13'),
(353, 'read_license_org_files', 'license_org_files', '2019-07-12 12:03:13', '2019-07-12 12:03:13'),
(354, 'edit_license_org_files', 'license_org_files', '2019-07-12 12:03:13', '2019-07-12 12:03:13'),
(355, 'add_license_org_files', 'license_org_files', '2019-07-12 12:03:13', '2019-07-12 12:03:13'),
(356, 'delete_license_org_files', 'license_org_files', '2019-07-12 12:03:13', '2019-07-12 12:03:13'),
(357, 'browse_license_org_infos', 'license_org_infos', '2019-07-12 12:04:32', '2019-07-12 12:04:32'),
(358, 'read_license_org_infos', 'license_org_infos', '2019-07-12 12:04:32', '2019-07-12 12:04:32'),
(359, 'edit_license_org_infos', 'license_org_infos', '2019-07-12 12:04:32', '2019-07-12 12:04:32'),
(360, 'add_license_org_infos', 'license_org_infos', '2019-07-12 12:04:32', '2019-07-12 12:04:32'),
(361, 'delete_license_org_infos', 'license_org_infos', '2019-07-12 12:04:32', '2019-07-12 12:04:32'),
(362, 'browse_ss_drug_medical_expert_files', 'ss_drug_medical_expert_files', '2019-07-12 12:05:12', '2019-07-12 12:05:12'),
(363, 'read_ss_drug_medical_expert_files', 'ss_drug_medical_expert_files', '2019-07-12 12:05:12', '2019-07-12 12:05:12'),
(364, 'edit_ss_drug_medical_expert_files', 'ss_drug_medical_expert_files', '2019-07-12 12:05:12', '2019-07-12 12:05:12'),
(365, 'add_ss_drug_medical_expert_files', 'ss_drug_medical_expert_files', '2019-07-12 12:05:12', '2019-07-12 12:05:12'),
(366, 'delete_ss_drug_medical_expert_files', 'ss_drug_medical_expert_files', '2019-07-12 12:05:12', '2019-07-12 12:05:12'),
(367, 'browse_ss_drug_medical_expert_infos', 'ss_drug_medical_expert_infos', '2019-07-12 12:07:56', '2019-07-12 12:07:56'),
(368, 'read_ss_drug_medical_expert_infos', 'ss_drug_medical_expert_infos', '2019-07-12 12:07:56', '2019-07-12 12:07:56'),
(369, 'edit_ss_drug_medical_expert_infos', 'ss_drug_medical_expert_infos', '2019-07-12 12:07:56', '2019-07-12 12:07:56'),
(370, 'add_ss_drug_medical_expert_infos', 'ss_drug_medical_expert_infos', '2019-07-12 12:07:56', '2019-07-12 12:07:56'),
(371, 'delete_ss_drug_medical_expert_infos', 'ss_drug_medical_expert_infos', '2019-07-12 12:07:56', '2019-07-12 12:07:56'),
(372, 'browse_ss_health_institute_files', 'ss_health_institute_files', '2019-07-12 12:09:34', '2019-07-12 12:09:34'),
(373, 'read_ss_health_institute_files', 'ss_health_institute_files', '2019-07-12 12:09:34', '2019-07-12 12:09:34'),
(374, 'edit_ss_health_institute_files', 'ss_health_institute_files', '2019-07-12 12:09:34', '2019-07-12 12:09:34'),
(375, 'add_ss_health_institute_files', 'ss_health_institute_files', '2019-07-12 12:09:34', '2019-07-12 12:09:34'),
(376, 'delete_ss_health_institute_files', 'ss_health_institute_files', '2019-07-12 12:09:34', '2019-07-12 12:09:34'),
(377, 'browse_ss_health_institute_infos', 'ss_health_institute_infos', '2019-07-12 12:11:20', '2019-07-12 12:11:20'),
(378, 'read_ss_health_institute_infos', 'ss_health_institute_infos', '2019-07-12 12:11:20', '2019-07-12 12:11:20'),
(379, 'edit_ss_health_institute_infos', 'ss_health_institute_infos', '2019-07-12 12:11:20', '2019-07-12 12:11:20'),
(380, 'add_ss_health_institute_infos', 'ss_health_institute_infos', '2019-07-12 12:11:20', '2019-07-12 12:11:20'),
(381, 'delete_ss_health_institute_infos', 'ss_health_institute_infos', '2019-07-12 12:11:20', '2019-07-12 12:11:20'),
(382, 'browse_ss_medical_library_infos', 'ss_medical_library_infos', '2019-07-12 12:11:52', '2019-07-12 12:11:52'),
(383, 'read_ss_medical_library_infos', 'ss_medical_library_infos', '2019-07-12 12:11:52', '2019-07-12 12:11:52'),
(384, 'edit_ss_medical_library_infos', 'ss_medical_library_infos', '2019-07-12 12:11:52', '2019-07-12 12:11:52'),
(385, 'add_ss_medical_library_infos', 'ss_medical_library_infos', '2019-07-12 12:11:52', '2019-07-12 12:11:52'),
(386, 'delete_ss_medical_library_infos', 'ss_medical_library_infos', '2019-07-12 12:11:52', '2019-07-12 12:11:52'),
(387, 'browse_ss_medical_library_files', 'ss_medical_library_files', '2019-07-12 12:12:24', '2019-07-12 12:12:24'),
(388, 'read_ss_medical_library_files', 'ss_medical_library_files', '2019-07-12 12:12:24', '2019-07-12 12:12:24'),
(389, 'edit_ss_medical_library_files', 'ss_medical_library_files', '2019-07-12 12:12:24', '2019-07-12 12:12:24'),
(390, 'add_ss_medical_library_files', 'ss_medical_library_files', '2019-07-12 12:12:24', '2019-07-12 12:12:24'),
(391, 'delete_ss_medical_library_files', 'ss_medical_library_files', '2019-07-12 12:12:24', '2019-07-12 12:12:24'),
(392, 'browse_dynamic_page_files', 'dynamic_page_files', '2019-07-19 10:24:12', '2019-07-19 10:24:12'),
(393, 'read_dynamic_page_files', 'dynamic_page_files', '2019-07-19 10:24:12', '2019-07-19 10:24:12'),
(394, 'edit_dynamic_page_files', 'dynamic_page_files', '2019-07-19 10:24:12', '2019-07-19 10:24:12'),
(395, 'add_dynamic_page_files', 'dynamic_page_files', '2019-07-19 10:24:12', '2019-07-19 10:24:12'),
(396, 'delete_dynamic_page_files', 'dynamic_page_files', '2019-07-19 10:24:12', '2019-07-19 10:24:12'),
(397, 'browse_dynamic_sections', 'dynamic_sections', '2019-07-19 10:29:11', '2019-07-19 10:29:11'),
(398, 'read_dynamic_sections', 'dynamic_sections', '2019-07-19 10:29:11', '2019-07-19 10:29:11'),
(399, 'edit_dynamic_sections', 'dynamic_sections', '2019-07-19 10:29:11', '2019-07-19 10:29:11'),
(400, 'add_dynamic_sections', 'dynamic_sections', '2019-07-19 10:29:11', '2019-07-19 10:29:11'),
(401, 'delete_dynamic_sections', 'dynamic_sections', '2019-07-19 10:29:11', '2019-07-19 10:29:11'),
(402, 'browse_dynamic_pages', 'dynamic_pages', '2019-07-19 10:35:43', '2019-07-19 10:35:43'),
(403, 'read_dynamic_pages', 'dynamic_pages', '2019-07-19 10:35:43', '2019-07-19 10:35:43'),
(404, 'edit_dynamic_pages', 'dynamic_pages', '2019-07-19 10:35:43', '2019-07-19 10:35:43'),
(405, 'add_dynamic_pages', 'dynamic_pages', '2019-07-19 10:35:43', '2019-07-19 10:35:43'),
(406, 'delete_dynamic_pages', 'dynamic_pages', '2019-07-19 10:35:43', '2019-07-19 10:35:43'),
(407, 'browse_dynamic_sub_pages', 'dynamic_sub_pages', '2019-07-19 10:41:07', '2019-07-19 10:41:07'),
(408, 'read_dynamic_sub_pages', 'dynamic_sub_pages', '2019-07-19 10:41:07', '2019-07-19 10:41:07'),
(409, 'edit_dynamic_sub_pages', 'dynamic_sub_pages', '2019-07-19 10:41:07', '2019-07-19 10:41:07'),
(410, 'add_dynamic_sub_pages', 'dynamic_sub_pages', '2019-07-19 10:41:07', '2019-07-19 10:41:07'),
(411, 'delete_dynamic_sub_pages', 'dynamic_sub_pages', '2019-07-19 10:41:07', '2019-07-19 10:41:07'),
(412, 'browse_web_site_translations', 'web_site_translations', '2019-07-26 04:37:31', '2019-07-26 04:37:31'),
(413, 'read_web_site_translations', 'web_site_translations', '2019-07-26 04:37:31', '2019-07-26 04:37:31'),
(414, 'edit_web_site_translations', 'web_site_translations', '2019-07-26 04:37:31', '2019-07-26 04:37:31'),
(415, 'add_web_site_translations', 'web_site_translations', '2019-07-26 04:37:31', '2019-07-26 04:37:31'),
(416, 'delete_web_site_translations', 'web_site_translations', '2019-07-26 04:37:31', '2019-07-26 04:37:31'),
(417, 'browse_socials', 'socials', '2019-08-01 04:00:28', '2019-08-01 04:00:28'),
(418, 'read_socials', 'socials', '2019-08-01 04:00:28', '2019-08-01 04:00:28'),
(419, 'edit_socials', 'socials', '2019-08-01 04:00:28', '2019-08-01 04:00:28'),
(420, 'add_socials', 'socials', '2019-08-01 04:00:28', '2019-08-01 04:00:28'),
(421, 'delete_socials', 'socials', '2019-08-01 04:00:28', '2019-08-01 04:00:28');

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
(4, 2),
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
(142, 2),
(143, 1),
(143, 2),
(144, 1),
(144, 2),
(145, 1),
(146, 1),
(147, 1),
(147, 2),
(148, 1),
(148, 2),
(149, 1),
(149, 2),
(150, 1),
(150, 2),
(151, 1),
(151, 2),
(152, 1),
(152, 2),
(153, 1),
(153, 2),
(154, 1),
(154, 2),
(155, 1),
(155, 2),
(156, 1),
(156, 2),
(157, 1),
(157, 2),
(158, 1),
(158, 2),
(159, 1),
(159, 2),
(160, 1),
(160, 2),
(161, 1),
(161, 2),
(162, 1),
(162, 2),
(163, 1),
(163, 2),
(164, 1),
(164, 2),
(165, 1),
(165, 2),
(166, 1),
(166, 2),
(167, 1),
(167, 2),
(168, 1),
(168, 2),
(169, 1),
(169, 2),
(170, 1),
(170, 2),
(171, 1),
(171, 2),
(172, 1),
(172, 2),
(173, 1),
(173, 2),
(174, 1),
(174, 2),
(175, 1),
(175, 2),
(176, 1),
(176, 2),
(177, 1),
(177, 2),
(178, 1),
(178, 2),
(179, 1),
(179, 2),
(180, 1),
(180, 2),
(181, 1),
(181, 2),
(182, 1),
(182, 2),
(183, 1),
(183, 2),
(184, 1),
(184, 2),
(185, 1),
(185, 2),
(186, 1),
(186, 2),
(187, 1),
(187, 2),
(188, 1),
(188, 2),
(189, 1),
(189, 2),
(190, 1),
(190, 2),
(191, 1),
(191, 2),
(192, 1),
(192, 2),
(193, 1),
(193, 2),
(194, 1),
(194, 2),
(195, 1),
(195, 2),
(196, 1),
(196, 2),
(197, 1),
(197, 2),
(198, 1),
(198, 2),
(199, 1),
(199, 2),
(200, 1),
(200, 2),
(201, 1),
(201, 2),
(202, 1),
(202, 2),
(203, 1),
(203, 2),
(204, 1),
(204, 2),
(205, 1),
(205, 2),
(206, 1),
(206, 2),
(207, 1),
(207, 2),
(208, 1),
(208, 2),
(209, 1),
(209, 2),
(210, 1),
(210, 2),
(211, 1),
(211, 2),
(212, 1),
(212, 2),
(213, 1),
(213, 2),
(214, 1),
(214, 2),
(215, 1),
(215, 2),
(216, 1),
(216, 2),
(217, 1),
(217, 2),
(218, 1),
(218, 2),
(219, 1),
(219, 2),
(220, 1),
(220, 2),
(221, 1),
(221, 2),
(222, 1),
(222, 2),
(223, 1),
(223, 2),
(224, 1),
(224, 2),
(225, 1),
(225, 2),
(226, 1),
(226, 2),
(227, 1),
(227, 2),
(228, 1),
(228, 2),
(229, 1),
(229, 2),
(230, 1),
(230, 2),
(231, 1),
(231, 2),
(232, 1),
(232, 2),
(233, 1),
(233, 2),
(234, 1),
(234, 2),
(235, 1),
(235, 2),
(236, 1),
(236, 2),
(237, 1),
(237, 2),
(238, 1),
(238, 2),
(239, 1),
(239, 2),
(240, 1),
(240, 2),
(241, 1),
(241, 2),
(242, 1),
(242, 2),
(243, 1),
(243, 2),
(244, 1),
(244, 2),
(245, 1),
(245, 2),
(246, 1),
(246, 2),
(247, 1),
(247, 2),
(248, 1),
(248, 2),
(249, 1),
(249, 2),
(250, 1),
(250, 2),
(251, 1),
(251, 2),
(252, 1),
(252, 2),
(253, 1),
(253, 2),
(254, 1),
(254, 2),
(255, 1),
(255, 2),
(256, 1),
(256, 2),
(257, 1),
(257, 2),
(258, 1),
(258, 2),
(259, 1),
(259, 2),
(260, 1),
(260, 2),
(261, 1),
(261, 2),
(262, 1),
(262, 2),
(263, 1),
(263, 2),
(264, 1),
(264, 2),
(265, 1),
(265, 2),
(266, 1),
(266, 2),
(267, 1),
(267, 2),
(268, 1),
(268, 2),
(269, 1),
(269, 2),
(270, 1),
(270, 2),
(271, 1),
(271, 2),
(272, 1),
(272, 2),
(273, 1),
(273, 2),
(274, 1),
(274, 2),
(275, 1),
(275, 2),
(276, 1),
(276, 2),
(277, 1),
(277, 2),
(278, 1),
(278, 2),
(279, 1),
(279, 2),
(280, 1),
(280, 2),
(281, 1),
(281, 2),
(282, 1),
(282, 2),
(283, 1),
(283, 2),
(284, 1),
(284, 2),
(285, 1),
(285, 2),
(286, 1),
(286, 2),
(287, 1),
(287, 2),
(288, 1),
(288, 2),
(289, 1),
(289, 2),
(290, 1),
(290, 2),
(291, 1),
(291, 2),
(292, 1),
(292, 2),
(293, 1),
(293, 2),
(294, 1),
(294, 2),
(295, 1),
(295, 2),
(296, 1),
(296, 2),
(297, 1),
(297, 2),
(298, 1),
(298, 2),
(299, 1),
(299, 2),
(300, 1),
(300, 2),
(301, 1),
(301, 2),
(302, 1),
(302, 2),
(303, 1),
(303, 2),
(304, 1),
(304, 2),
(305, 1),
(305, 2),
(306, 1),
(306, 2),
(307, 1),
(307, 2),
(308, 1),
(308, 2),
(309, 1),
(309, 2),
(310, 1),
(310, 2),
(311, 1),
(311, 2),
(312, 1),
(312, 2),
(313, 1),
(313, 2),
(314, 1),
(314, 2),
(315, 1),
(315, 2),
(316, 1),
(316, 2),
(317, 1),
(317, 2),
(318, 1),
(318, 2),
(319, 1),
(319, 2),
(320, 1),
(320, 2),
(321, 1),
(321, 2),
(322, 1),
(322, 2),
(323, 1),
(323, 2),
(324, 1),
(324, 2),
(325, 1),
(325, 2),
(326, 1),
(326, 2),
(327, 1),
(327, 2),
(328, 1),
(328, 2),
(329, 1),
(329, 2),
(330, 1),
(330, 2),
(331, 1),
(331, 2),
(332, 1),
(332, 2),
(333, 1),
(333, 2),
(334, 1),
(334, 2),
(335, 1),
(335, 2),
(336, 1),
(336, 2),
(337, 1),
(337, 2),
(338, 1),
(338, 2),
(339, 1),
(339, 2),
(340, 1),
(340, 2),
(341, 1),
(341, 2),
(342, 1),
(342, 2),
(343, 1),
(343, 2),
(344, 1),
(344, 2),
(345, 1),
(345, 2),
(346, 1),
(346, 2),
(347, 1),
(347, 2),
(348, 1),
(348, 2),
(349, 1),
(349, 2),
(350, 1),
(350, 2),
(351, 1),
(351, 2),
(352, 1),
(352, 2),
(353, 1),
(353, 2),
(354, 1),
(354, 2),
(355, 1),
(355, 2),
(356, 1),
(356, 2),
(357, 1),
(357, 2),
(358, 1),
(358, 2),
(359, 1),
(359, 2),
(360, 1),
(360, 2),
(361, 1),
(361, 2),
(362, 1),
(362, 2),
(363, 1),
(363, 2),
(364, 1),
(364, 2),
(365, 1),
(365, 2),
(366, 1),
(366, 2),
(367, 1),
(367, 2),
(368, 1),
(368, 2),
(369, 1),
(369, 2),
(370, 1),
(370, 2),
(371, 1),
(371, 2),
(372, 1),
(372, 2),
(373, 1),
(373, 2),
(374, 1),
(374, 2),
(375, 1),
(375, 2),
(376, 1),
(376, 2),
(377, 1),
(377, 2),
(378, 1),
(378, 2),
(379, 1),
(379, 2),
(380, 1),
(380, 2),
(381, 1),
(381, 2),
(382, 1),
(382, 2),
(383, 1),
(383, 2),
(384, 1),
(384, 2),
(385, 1),
(385, 2),
(386, 1),
(386, 2),
(387, 1),
(387, 2),
(388, 1),
(388, 2),
(389, 1),
(389, 2),
(390, 1),
(390, 2),
(391, 1),
(391, 2),
(392, 1),
(392, 2),
(393, 1),
(393, 2),
(394, 1),
(394, 2),
(395, 1),
(395, 2),
(396, 1),
(396, 2),
(397, 1),
(397, 2),
(398, 1),
(398, 2),
(399, 1),
(399, 2),
(400, 1),
(400, 2),
(401, 1),
(401, 2),
(402, 1),
(402, 2),
(403, 1),
(403, 2),
(404, 1),
(404, 2),
(405, 1),
(405, 2),
(406, 1),
(406, 2),
(407, 1),
(407, 2),
(408, 1),
(408, 2),
(409, 1),
(409, 2),
(410, 1),
(410, 2),
(411, 1),
(411, 2),
(412, 1),
(412, 2),
(413, 1),
(413, 2),
(414, 1),
(414, 2),
(415, 1),
(416, 1),
(417, 1),
(417, 2),
(418, 1),
(418, 2),
(419, 1),
(419, 2),
(420, 1),
(421, 1);

-- --------------------------------------------------------

--
-- Table structure for table `politics`
--

CREATE TABLE `politics` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `politics`
--

INSERT INTO `politics` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Politic Parent 1', '[{\"download_link\":\"politics\\/July2019\\/PUGLYw4YK3fyGuEXzvaZ.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 09:06:50', '2019-07-04 09:06:50'),
(2, 'Politic Child 1', '[{\"download_link\":\"politics\\/July2019\\/LlretkmTR7FldmZgyBL5.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-04 09:07:22', '2019-07-04 09:07:22'),
(3, 'Politic Child 1.2', '[{\"download_link\":\"politics\\/July2019\\/ihA7K0AF6kQvKDOMXMJG.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-02', 1, 1, '2019-07-04 09:09:02', '2019-07-04 09:09:54'),
(4, 'Politic Child 1.3', '[{\"download_link\":\"politics\\/July2019\\/LHPRxfsZo7cqvNT3it6e.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-04 09:09:39', '2019-07-04 09:10:04'),
(5, 'Politic Parent 2', '[{\"download_link\":\"politics\\/July2019\\/jtHq82Zwk9j2nlsCh9Td.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 09:11:49', '2019-07-04 09:11:49'),
(6, 'hhgfdf', '[{\"download_link\":\"politics\\/July2019\\/oVtrzlnxlkSNGhQnlUd2.pdf\",\"original_name\":\"zero to one.pdf\"}]', NULL, '2019-07-11', NULL, 1, '2019-07-08 08:07:57', '2019-07-08 08:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `press_releases`
--

CREATE TABLE `press_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `press_releases`
--

INSERT INTO `press_releases` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `created_at`, `updated_at`, `order`) VALUES
(1, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում asd', '[]', 'https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given', '2019-06-20 00:00:00', '2019-06-20 05:36:00', '2019-06-20 08:17:07', 1),
(2, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումpress', '[{\"download_link\":\"press-releases\\/June2019\\/a1dVlGaC9MI5zoFLMbuF.\",\"original_name\":\"test\"}]', NULL, '2019-06-20 00:00:00', '2019-06-20 08:16:56', '2019-06-20 08:16:56', 1),
(3, 'pdf test', '[{\"download_link\":\"press-releases\\/June2019\\/vmZEO1eLkXgBOMVrSQvK.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 08:34:22', '2019-06-27 08:34:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `created_at`, `updated_at`, `order`) VALUES
(1, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում asd', '[{\"download_link\":\"reports\\/June2019\\/Qwu86VDG0bU5B0HPyerl.\",\"original_name\":\"test\"}]', NULL, '2019-06-19', '2019-06-19 09:17:52', '2019-06-19 09:17:52', 1),
(2, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում asdfff', '[]', 'https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given', '2019-06-19', '2019-06-19 09:18:00', '2019-06-19 09:20:46', 1),
(3, 'pdf test', '[{\"download_link\":\"reports\\/June2019\\/sVvlFSQ9qpUHjigmha1W.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 08:33:01', '2019-06-27 08:33:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `researches`
--

CREATE TABLE `researches` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `researches`
--

INSERT INTO `researches` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `created_at`, `updated_at`, `order`) VALUES
(1, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումres', '[{\"download_link\":\"researches\\/June2019\\/TyyS0wp60ohGguALdr3x.\",\"original_name\":\"test\"}]', NULL, '2019-06-19 00:00:00', '2019-06-20 07:27:13', '2019-06-20 07:27:13', 1),
(2, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումres', '[]', 'https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given', '2019-06-01 00:00:00', '2019-06-20 07:27:55', '2019-06-20 07:27:55', 1),
(3, 'pdf test', '[{\"download_link\":\"researches\\/June2019\\/CFewMBUo4n2XtzKycx3h.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 08:35:58', '2019-06-27 08:35:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `screenings`
--

CREATE TABLE `screenings` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `screenings`
--

INSERT INTO `screenings` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Screening Parent 1', '[{\"download_link\":\"screenings\\/July2019\\/gHd6FpbHAXmLsywzuu6m.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 09:12:42', '2019-07-04 09:12:42'),
(2, 'Screening Child 1', '[{\"download_link\":\"screenings\\/July2019\\/TjOSOWvOw8CrERrcGjmQ.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 1, 1, '2019-07-04 09:13:07', '2019-07-04 09:13:07'),
(3, 'Screening Child 1.2', '[{\"download_link\":\"screenings\\/July2019\\/SHDj89wDqlTP4vJvphHI.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-02-01', 1, 1, '2019-07-04 09:13:29', '2019-07-04 09:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Moh', 'Moh', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Ministry of Health', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'admin.last_update', 'Last update', '09/08/2019 16:34:51', NULL, 'text', 6, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `url`, `slug`, `order`, `created_at`, `updated_at`) VALUES
(1, 'http://google.com', 'google', 1, '2019-08-01 04:03:36', '2019-08-08 13:21:55'),
(2, 'https://twitter.com/', 'twitter', 1, '2019-08-01 04:03:50', '2019-08-01 04:03:50'),
(3, 'https://www.facebook.com', 'facebook', 1, '2019-08-01 04:04:32', '2019-08-01 04:04:32'),
(4, 'https://www.instagram.com/', 'instagram', 1, '2019-08-01 04:05:01', '2019-08-01 04:05:01'),
(5, 'https://www.linkedin.com/', 'linkedin', 1, '2019-08-01 04:05:13', '2019-08-01 04:05:13'),
(6, 'https://youtube.com', 'youtube', 1, '2019-08-01 04:05:25', '2019-08-01 04:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `speech_and_interviews`
--

CREATE TABLE `speech_and_interviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speech_and_interviews`
--

INSERT INTO `speech_and_interviews` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `created_at`, `updated_at`, `order`) VALUES
(4, 'pdf test', '[{\"download_link\":\"speech-and-interviews\\/June2019\\/W0m3OCzFAgl25Vb0LG3g.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 07:42:19', '2019-06-27 07:42:19', 1),
(5, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում', '[{\"download_link\":\"speech-and-interviews\\/June2019\\/G40DxZZSkFjSJrtaFU7W.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 07:49:56', '2019-06-27 07:49:56', 1),
(6, 'file test', '[{\"download_link\":\"speech-and-interviews\\/June2019\\/qA7CK0GWyHLugegLe8f6.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 08:26:57', '2019-06-27 08:26:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ss_drug_medical_expert_files`
--

CREATE TABLE `ss_drug_medical_expert_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_drug_medical_expert_files`
--

INSERT INTO `ss_drug_medical_expert_files` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, '«Դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն» ՓԲԸ կանոնադրություն (ՀՀ ԱՆ 11.10.2004թ. թիվ 1020-Ա հրաման)', '[{\"download_link\":\"ss-drug-medical-expert-files\\/July2019\\/9nXShHNF4pjzqemSQ7iP.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-02', NULL, 1, '2019-07-12 12:22:08', '2019-07-12 12:22:08'),
(2, '«Դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն» ՓԲԸ կանոնադրության փոփոխություն (ՀՀ ԱՆ 18.02.2015թ. թիվ 323-Ա հրաման)', '[{\"download_link\":\"ss-drug-medical-expert-files\\/July2019\\/Oh3tlOQPst3ZhUUZvM99.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-12 12:22:41', '2019-07-12 12:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `ss_drug_medical_expert_infos`
--

CREATE TABLE `ss_drug_medical_expert_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `organisation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_drug_medical_expert_infos`
--

INSERT INTO `ss_drug_medical_expert_infos` (`id`, `organisation_name`, `head_position`, `head_name`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն', 'տնօրեն', 'Լևոն Մելիքյան', 'Երևան 0051, Կոմիտասի պող. 49/4', '(+374 10) 23-16-82, (+374 10) 23-08-96, (+374 10) 23-47-32, (+374 10) 23-20-91', 'admin@pharm.am', 'www.pharm.am', 'http://www.pharm.am/index.php/en/', 1, '2019-07-12 12:23:56', '2019-07-12 12:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `ss_health_institute_files`
--

CREATE TABLE `ss_health_institute_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_health_institute_files`
--

INSERT INTO `ss_health_institute_files` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Հայաստանի Հանրապետության առողջապահության նախարարության «Ակադեմիկոս Ս.Խ.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտ» ՓԲԸ կանոնադրություն (ՀՀ ԱՆ 12.04.2002թ. թիվ 207 հրաման փոփոխություններով)', '[{\"download_link\":\"ss-health-institute-files\\/July2019\\/OIEaoNw4ymAAzXUVJVzi.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-12 12:19:45', '2019-07-12 12:19:45'),
(2, '«Ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտ» փակ բաժնետիրական ընկերության կանոնադրության մեջ փոփոխություն կատարելու մասին', '[{\"download_link\":\"ss-health-institute-files\\/July2019\\/vqB7Be8RvYxx6mfVdVtG.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-12 12:20:05', '2019-07-12 12:20:05');

-- --------------------------------------------------------

--
-- Table structure for table `ss_health_institute_infos`
--

CREATE TABLE `ss_health_institute_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `organisation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_health_institute_infos`
--

INSERT INTO `ss_health_institute_infos` (`id`, `organisation_name`, `head_position`, `head_name`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `file_name`, `file_upload`, `file_date`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Առողջապահության ազգային ինստիտուտ', 'Տնօրեն', 'Ալեքսանդր Ալեքսանդրի Բազարչյան', 'Կոմիտաս 49/4', '(+374 10) 23-71-34, (+374 10) 23-01-91', 'info@nih.am', 'www.nih.am', 'http://nih.am/am', 'Կառուցվածք', '[{\"download_link\":\"ss-health-institute-infos\\/July2019\\/toxyoH72KVo0G9yMwXuQ.pdf\",\"original_name\":\"pdf-test.pdf\"}]', '2019-01-01', 1, '2019-07-12 12:21:29', '2019-07-12 12:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `ss_medical_library_files`
--

CREATE TABLE `ss_medical_library_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_medical_library_files`
--

INSERT INTO `ss_medical_library_files` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Հայաստանի Հանրապետության առողջապահության նախարարության «Հանրապետական գիտաբժշկական գրադարան» ՊՈԱԿ կանոնադրություն (ՀՀ ԱՆ 08.06.2011թ. թիվ 1112-Ա հրաման)', '[{\"download_link\":\"ss-medical-library-files\\/July2019\\/P6h0MUEl0LZ23c0CGfxN.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-12 12:24:52', '2019-07-12 12:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `ss_medical_library_infos`
--

CREATE TABLE `ss_medical_library_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `organisation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_medical_library_infos`
--

INSERT INTO `ss_medical_library_infos` (`id`, `organisation_name`, `head_position`, `head_name`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Հանրապետական գիտաբժշկական գրադարան', 'Տնօրեն', 'Աննա Շիրինյան', 'Երևան 0035, Ռուբինյանց 29/3', '(+374 10) 24-96-77', 'info@medlib.am', 'www.medlib.am', 'http://www.medlib.am/', 1, '2019-07-12 12:26:02', '2019-07-12 12:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `ss_other_orgs`
--

CREATE TABLE `ss_other_orgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `organisation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_other_orgs`
--

INSERT INTO `ss_other_orgs` (`id`, `organisation_name`, `head_position`, `head_name`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `file_name`, `file_upload`, `file_date`, `order`, `created_at`, `updated_at`) VALUES
(1, 'ՀՀ ԱՆ  «Հիվանդությունների վերահսկման և կանխարգելման ազգային կենտրոն» ՊՈԱԿ', 'Գլխավոր տնօրեն', 'Արտավազդ Վրույրի Վանյան', 'ք. Երևան, Մխիթար Հերացի 12 (տեղակայումը` Դավթաշեն 2ա)', '(+374 10) 55-06-01; (+374 10) 55-06-02; (+374 10) 55-03-07', 'ph@ph.am', 'https://ncdc.am/', 'https://ncdc.am/', 'Կանոնադրություն', '[{\"download_link\":\"ss-other-orgs\\/July2019\\/cjgf8o7pmBfVRnTVwJc2.pdf\",\"original_name\":\"pdf-test.pdf\"}]', '2019-01-01', 1, '2019-07-12 04:16:51', '2019-07-12 04:16:51'),
(2, 'ՀՀ ԱՆ  «Հիվանդությունների վերահսկման և կանխարգելման ազգային կենտրոն» ՊՈԱԿ', 'Գլխավոր տնօրեն', 'Արտավազդ Վրույրի Վանյան', 'ք. Երևան, Մխիթար Հերացի 12 (տեղակայումը` Դավթաշեն 2ա)', '(+374 10) 55-06-01; (+374 10) 55-06-02; (+374 10) 55-03-07', 'ph@ph.am', 'https://ncdc.am/', 'https://ncdc.am/', 'Կանոնադրություն', '[{\"download_link\":\"ss-other-orgs\\/July2019\\/QHjWfKd0mlV5pqyEORk5.pdf\",\"original_name\":\"pdf-test.pdf\"}]', '2019-01-01', 1, '2019-07-12 04:17:16', '2019-07-12 04:17:16'),
(3, 'ՀՀ ԱՆ  «Հիվանդությունների վերահսկման և կանխարգելման ազգային կենտրոն» ՊՈԱԿ', 'Գլխավոր տնօրեն', 'Արտավազդ Վրույրի Վանյան', 'ք. Երևան, Մխիթար Հերացի 12 (տեղակայումը` Դավթաշեն 2ա)', '(+374 10) 55-06-01; (+374 10) 55-06-02; (+374 10) 55-03-07', 'ph@ph.am', 'https://ncdc.am/', 'https://ncdc.am/', 'Կանոնադրություն', '[{\"download_link\":\"ss-other-orgs\\/July2019\\/LbIoqVRNSpMNbnkcOOGE.pdf\",\"original_name\":\"pdf-test.pdf\"}]', '2019-01-01', 1, '2019-07-12 07:13:22', '2019-07-12 07:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `ss_stationery_orgs`
--

CREATE TABLE `ss_stationery_orgs` (
  `id` int(10) UNSIGNED NOT NULL,
  `organisation_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ss_stationery_orgs`
--

INSERT INTO `ss_stationery_orgs` (`id`, `organisation_name`, `head_position`, `head_name`, `address`, `phone_number`, `email`, `website_name`, `website_url`, `file_name`, `file_upload`, `file_date`, `order`, `created_at`, `updated_at`) VALUES
(1, 'ՀՀ ԱՆ «Սուրբ Գրիգոր Լուսավորիչ բժշկական կենտրոն» ՓԲԸ', 'Գլխավոր տնօրեն', 'Արտավազդ Վրույրի Վանյան', 'ք. Երևան, Մխիթար Հերացի 12 (տեղակայումը` Դավթաշեն 2ա)', '(+374 10) 55-06-01; (+374 10) 55-06-02; (+374 10) 55-03-07', 'ph@ph.am', 'https://ncdc.am/', 'https://ncdc.am/', 'Կանոնադրություն', '[{\"download_link\":\"ss-stationery-orgs\\/July2019\\/DnxB5CfCz3CE0auKBu0n.pdf\",\"original_name\":\"pdf-test.pdf\"}]', '2019-01-01', 1, '2019-07-12 04:15:41', '2019-07-12 04:15:41'),
(2, 'ՀՀ ԱՆ  «Հիվանդությունների վերահսկման և կանխարգելման ազգային կենտրոն» ՊՈԱԿ', 'Գլխավոր տնօրեն', 'Արտավազդ Վրույրի Վանյան', 'ք. Երևան, Մխիթար Հերացի 12 (տեղակայումը` Դավթաշեն 2ա)', '(+374 10) 55-06-01; (+374 10) 55-06-02; (+374 10) 55-03-07', 'ph@ph.am', 'https://ncdc.am/', 'https://ncdc.am/', 'Կանոնադրություն', '[{\"download_link\":\"ss-stationery-orgs\\/July2019\\/uPz4eGOiqQeJi227S4pk.pdf\",\"original_name\":\"pdf-test.pdf\"}]', '2019-01-01', 1, '2019-07-12 04:15:49', '2019-07-12 04:16:15'),
(3, 'ՀՀ ԱՆ  «Հիվանդությունների վերահսկման և կանխարգելման ազգային կենտրոն» ՊՈԱԿ', 'Գլխավոր տնօրեն', 'Արտավազդ Վրույրի Վանյան', 'ք. Երևան, Մխիթար Հերացի 12 (տեղակայումը` Դավթաշեն 2ա)', '(+374 10) 55-06-01; (+374 10) 55-06-02; (+374 10) 55-03-07', 'ph@ph.am', 'https://ncdc.am/', 'https://ncdc.am/', 'Կանոնադրություն', '[{\"download_link\":\"ss-stationery-orgs\\/July2019\\/K9DADRfA8DWPeFKHdC7U.pdf\",\"original_name\":\"pdf-test.pdf\"}]', '2019-01-01', 1, '2019-07-12 07:16:40', '2019-07-12 07:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `staffing_job_acceptances`
--

CREATE TABLE `staffing_job_acceptances` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffing_job_acceptances`
--

INSERT INTO `staffing_job_acceptances` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Staffing Job Acceptance Parent', '[{\"download_link\":\"staffing-job-acceptances\\/July2019\\/ZcoKtKH3MYbFAtzl8LVd.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2020-01-01', NULL, 1, '2019-07-09 11:03:24', '2019-07-09 11:03:24'),
(2, 'Staffing Job Acceptance Child', '[{\"download_link\":\"staffing-job-acceptances\\/July2019\\/JQMOu6YC8jQPZrvClgpT.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 1, 1, '2019-07-09 11:03:44', '2019-07-09 11:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `staffing_staff_lists`
--

CREATE TABLE `staffing_staff_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffing_staff_lists`
--

INSERT INTO `staffing_staff_lists` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Staffing Staff List Parent', '[{\"download_link\":\"staffing-staff-lists\\/July2019\\/yYUFzxM1XuZLK2gKER5z.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-09 11:04:16', '2019-07-09 11:04:16'),
(2, 'Staffing Staff List Child', '[{\"download_link\":\"staffing-staff-lists\\/July2019\\/zKi1Wn5humZ2aglazUDV.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 1, 1, '2019-07-09 11:04:33', '2019-07-09 11:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `staffing_tender_results`
--

CREATE TABLE `staffing_tender_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffing_tender_results`
--

INSERT INTO `staffing_tender_results` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Staffing Tender Result Parent', '[{\"download_link\":\"staffing-tender-results\\/July2019\\/fGLKYFWSQBEeIp6OPBd0.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-09 11:06:29', '2019-07-09 11:06:29'),
(2, 'Staffing Tender Result Child', '[{\"download_link\":\"staffing-tender-results\\/July2019\\/xNJTWLPuwk8VN4ymQHm6.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-09 11:06:45', '2019-07-09 11:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `staffing_vacancies`
--

CREATE TABLE `staffing_vacancies` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffing_vacancies`
--

INSERT INTO `staffing_vacancies` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Staffing Vacancy Parent', '[{\"download_link\":\"staffing-vacancies\\/July2019\\/jJtnvEG2h4izATpAMsFR.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-09 11:07:58', '2019-07-09 11:07:58'),
(2, 'Staffing Vacancy Child', '[{\"download_link\":\"staffing-vacancies\\/July2019\\/WBn8fBzjkRAHgGMfZIRI.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-09 11:08:14', '2019-07-09 11:08:14');

-- --------------------------------------------------------

--
-- Table structure for table `state_orders`
--

CREATE TABLE `state_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state_orders`
--

INSERT INTO `state_orders` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'State Order Parent', '[{\"download_link\":\"state-orders\\/July2019\\/gDRdf0uXUPOvcqckBaop.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-08 03:29:49', '2019-07-08 03:29:49'),
(2, 'State Order Child', '[{\"download_link\":\"state-orders\\/July2019\\/beuG6V7tbvzoR17LoFAU.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 1, 1, '2019-07-08 03:30:07', '2019-07-08 03:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `created_at`, `updated_at`, `order`) VALUES
(1, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում stat', '[{\"download_link\":\"statistics\\/June2019\\/lNZ3aRzZnyhND4PJy6My.\",\"original_name\":\"test\"}]', NULL, '2019-06-20 00:00:00', '2019-06-20 07:46:20', '2019-06-20 07:46:20', 1),
(2, 'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումstat', '[]', 'https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given', '2019-06-20 00:00:00', '2019-06-20 07:46:48', '2019-06-20 07:46:48', 1),
(3, 'pdf test', '[{\"download_link\":\"statistics\\/June2019\\/K71z0UEl8fQsJaakvcK4.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-06-27 00:00:00', '2019-06-27 08:36:55', '2019-06-27 08:36:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `superiors`
--

CREATE TABLE `superiors` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `superiors`
--

INSERT INTO `superiors` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Superior Parent 1', '[{\"download_link\":\"superiors\\/July2019\\/ADdD66hMZn9mbJUGuw6m.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-02', NULL, 1, '2019-07-04 09:14:15', '2019-07-04 09:14:15'),
(2, 'Superior Parent 2', '[{\"download_link\":\"superiors\\/July2019\\/VW6rEtrIj5LRXM3lvvQ7.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 09:14:30', '2019-07-04 09:14:30'),
(3, 'Superior Parent 3', '[{\"download_link\":\"superiors\\/July2019\\/z0q69y3JUCSBKjhqy98N.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-04 09:14:46', '2019-07-04 09:14:46'),
(4, 'Superior Child 3.1', '[{\"download_link\":\"superiors\\/July2019\\/pZUzMJoBPW0NcWGOiZAh.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-02', 3, 1, '2019-07-04 09:15:16', '2019-07-04 09:15:16'),
(5, 'Superior Child 3.2', '[{\"download_link\":\"superiors\\/July2019\\/bmcMDstJjB6El0NbbemN.doc\",\"original_name\":\"TestWordDoc.doc\"}]', NULL, '2019-01-01', 3, 1, '2019-07-04 09:15:38', '2019-07-04 09:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(31, 'pages_texts', 'page_text1', 4, 'hy', '<h1>Ուղերձ</h1>\r\n<div class=\"message__content--info d-flex\">\r\n<div class=\"message__content--info--text\">\r\n<h2>Հարգելի քաղաքացի</h2>\r\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\r\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\r\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\r\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:1111111111111111</p>\r\n</div>\r\n<div class=\"message__content--info--image\" style=\"background-image: url(\'http://moh.loc/storage/minister-photo.png\');\"> </div>\r\n</div>', '2019-06-13 07:02:52', '2019-06-13 07:02:52'),
(32, 'pages_texts', 'page_text1', 4, 'ru', '<h1>Ուղերձ</h1>\r\n<div class=\"message__content--info d-flex\">\r\n<div class=\"message__content--info--text\">\r\n<h2>Հարգելի քաղաքացի</h2>\r\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\r\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\r\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\r\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:1111111111111111</p>\r\n</div>\r\n<div class=\"message__content--info--image\" style=\"background-image: url(\'http://moh.loc/storage/minister-photo.png\');\"> </div>\r\n</div>', '2019-06-13 07:02:52', '2019-06-13 07:02:52'),
(33, 'pages_texts', 'page_text1', 1, 'hy', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111111</p>\n</body>\n</html>', '2019-06-13 07:24:04', '2019-07-15 09:43:30'),
(34, 'pages_texts', 'page_text1', 1, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111111</p>\n</body>\n</html>', '2019-06-13 07:24:04', '2019-07-15 09:43:30'),
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
(84, 'data_types', 'display_name_plural', 12, 'ru', 'News', '2019-06-14 09:18:51', '2019-06-14 09:18:51'),
(85, 'data_types', 'display_name_singular', 37, 'hy', 'Cover Photo', '2019-06-17 11:29:09', '2019-06-17 11:29:09'),
(86, 'data_types', 'display_name_singular', 37, 'ru', 'Cover Photo', '2019-06-17 11:29:09', '2019-06-17 11:29:09'),
(87, 'data_types', 'display_name_plural', 37, 'hy', 'Cover Photos', '2019-06-17 11:29:09', '2019-06-17 11:29:09'),
(88, 'data_types', 'display_name_plural', 37, 'ru', 'Cover Photos', '2019-06-17 11:29:09', '2019-06-17 11:29:09'),
(89, 'data_types', 'display_name_singular', 38, 'hy', 'Speech And Interview', '2019-06-19 06:55:46', '2019-06-19 06:55:46'),
(90, 'data_types', 'display_name_singular', 38, 'ru', 'Speech And Interview', '2019-06-19 06:55:46', '2019-06-19 06:55:46'),
(91, 'data_types', 'display_name_plural', 38, 'hy', 'Speech And Interviews', '2019-06-19 06:55:46', '2019-06-19 06:55:46'),
(92, 'data_types', 'display_name_plural', 38, 'ru', 'Speech And Interviews', '2019-06-19 06:55:46', '2019-06-19 06:55:46'),
(93, 'data_types', 'display_name_singular', 39, 'hy', 'Report', '2019-06-19 09:25:44', '2019-06-19 09:25:44'),
(94, 'data_types', 'display_name_singular', 39, 'ru', 'Report', '2019-06-19 09:25:44', '2019-06-19 09:25:44'),
(95, 'data_types', 'display_name_plural', 39, 'hy', 'Reports', '2019-06-19 09:25:44', '2019-06-19 09:25:44'),
(96, 'data_types', 'display_name_plural', 39, 'ru', 'Reports', '2019-06-19 09:25:44', '2019-06-19 09:25:44'),
(97, 'menu_items', 'title', 44, 'hy', 'Information', '2019-06-19 10:39:57', '2019-06-19 10:39:57'),
(98, 'menu_items', 'title', 44, 'ru', 'Information', '2019-06-19 10:39:57', '2019-06-19 10:39:57'),
(99, 'data_types', 'display_name_singular', 20, 'hy', 'Announcement', '2019-06-21 09:15:50', '2019-06-21 09:15:50'),
(100, 'data_types', 'display_name_singular', 20, 'ru', 'Announcement', '2019-06-21 09:15:50', '2019-06-21 09:15:50'),
(101, 'data_types', 'display_name_plural', 20, 'hy', 'Announcements', '2019-06-21 09:15:50', '2019-06-21 09:15:50'),
(102, 'data_types', 'display_name_plural', 20, 'ru', 'Announcements', '2019-06-21 09:15:50', '2019-06-21 09:15:50'),
(103, 'data_types', 'display_name_singular', 9, 'hy', 'Homepage Slider', '2019-06-21 10:18:51', '2019-06-21 10:18:51'),
(104, 'data_types', 'display_name_singular', 9, 'ru', 'Homepage Slider', '2019-06-21 10:18:51', '2019-06-21 10:18:51'),
(105, 'data_types', 'display_name_plural', 9, 'hy', 'Homepage Sliders', '2019-06-21 10:18:51', '2019-06-21 10:18:51'),
(106, 'data_types', 'display_name_plural', 9, 'ru', 'Homepage Sliders', '2019-06-21 10:18:51', '2019-06-21 10:18:51'),
(107, 'data_types', 'display_name_singular', 43, 'hy', 'Informative', '2019-06-21 10:21:22', '2019-06-21 10:21:22'),
(108, 'data_types', 'display_name_singular', 43, 'ru', 'Informative', '2019-06-21 10:21:22', '2019-06-21 10:21:22'),
(109, 'data_types', 'display_name_plural', 43, 'hy', 'Informatives', '2019-06-21 10:21:22', '2019-06-21 10:21:22'),
(110, 'data_types', 'display_name_plural', 43, 'ru', 'Informatives', '2019-06-21 10:21:22', '2019-06-21 10:21:22'),
(111, 'data_types', 'display_name_singular', 25, 'hy', 'Minister Staff', '2019-06-21 10:27:32', '2019-06-21 10:27:32'),
(112, 'data_types', 'display_name_singular', 25, 'ru', 'Minister Staff', '2019-06-21 10:27:32', '2019-06-21 10:27:32'),
(113, 'data_types', 'display_name_plural', 25, 'hy', 'Minister Staffs', '2019-06-21 10:27:32', '2019-06-21 10:27:32'),
(114, 'data_types', 'display_name_plural', 25, 'ru', 'Minister Staffs', '2019-06-21 10:27:32', '2019-06-21 10:27:32'),
(115, 'data_types', 'display_name_singular', 26, 'hy', 'Ministry Staff', '2019-06-21 10:28:17', '2019-06-21 10:28:17'),
(116, 'data_types', 'display_name_singular', 26, 'ru', 'Ministry Staff', '2019-06-21 10:28:17', '2019-06-21 10:28:17'),
(117, 'data_types', 'display_name_plural', 26, 'hy', 'Ministry Staffs', '2019-06-21 10:28:17', '2019-06-21 10:28:17'),
(118, 'data_types', 'display_name_plural', 26, 'ru', 'Ministry Staffs', '2019-06-21 10:28:17', '2019-06-21 10:28:17'),
(119, 'data_types', 'display_name_singular', 28, 'hy', 'Partner', '2019-06-21 10:33:34', '2019-06-21 10:33:34'),
(120, 'data_types', 'display_name_singular', 28, 'ru', 'Partner', '2019-06-21 10:33:34', '2019-06-21 10:33:34'),
(121, 'data_types', 'display_name_plural', 28, 'hy', 'Partners', '2019-06-21 10:33:34', '2019-06-21 10:33:34'),
(122, 'data_types', 'display_name_plural', 28, 'ru', 'Partners', '2019-06-21 10:33:34', '2019-06-21 10:33:34'),
(123, 'data_types', 'display_name_singular', 40, 'hy', 'Press Release', '2019-06-21 10:40:35', '2019-06-21 10:40:35'),
(124, 'data_types', 'display_name_singular', 40, 'ru', 'Press Release', '2019-06-21 10:40:35', '2019-06-21 10:40:35'),
(125, 'data_types', 'display_name_plural', 40, 'hy', 'Press Releases', '2019-06-21 10:40:35', '2019-06-21 10:40:35'),
(126, 'data_types', 'display_name_plural', 40, 'ru', 'Press Releases', '2019-06-21 10:40:35', '2019-06-21 10:40:35'),
(127, 'data_types', 'display_name_singular', 41, 'hy', 'Research', '2019-06-21 10:41:47', '2019-06-21 10:41:47'),
(128, 'data_types', 'display_name_singular', 41, 'ru', 'Research', '2019-06-21 10:41:47', '2019-06-21 10:41:47'),
(129, 'data_types', 'display_name_plural', 41, 'hy', 'Researches', '2019-06-21 10:41:47', '2019-06-21 10:41:47'),
(130, 'data_types', 'display_name_plural', 41, 'ru', 'Researches', '2019-06-21 10:41:47', '2019-06-21 10:41:47'),
(131, 'data_types', 'display_name_singular', 42, 'hy', 'Statistic', '2019-06-21 10:43:16', '2019-06-21 10:43:16'),
(132, 'data_types', 'display_name_singular', 42, 'ru', 'Statistic', '2019-06-21 10:43:16', '2019-06-21 10:43:16'),
(133, 'data_types', 'display_name_plural', 42, 'hy', 'Statistics', '2019-06-21 10:43:16', '2019-06-21 10:43:16'),
(134, 'data_types', 'display_name_plural', 42, 'ru', 'Statistics', '2019-06-21 10:43:16', '2019-06-21 10:43:16'),
(135, 'data_types', 'display_name_singular', 22, 'hy', 'Video', '2019-06-21 10:44:14', '2019-06-21 10:44:14'),
(136, 'data_types', 'display_name_singular', 22, 'ru', 'Video', '2019-06-21 10:44:14', '2019-06-21 10:44:14'),
(137, 'data_types', 'display_name_plural', 22, 'hy', 'Videos', '2019-06-21 10:44:14', '2019-06-21 10:44:14'),
(138, 'data_types', 'display_name_plural', 22, 'ru', 'Videos', '2019-06-21 10:44:14', '2019-06-21 10:44:14'),
(139, 'data_types', 'display_name_singular', 34, 'hy', 'Minister Info Category', '2019-06-24 06:02:33', '2019-06-24 06:02:33'),
(140, 'data_types', 'display_name_singular', 34, 'ru', 'Minister Info Category', '2019-06-24 06:02:33', '2019-06-24 06:02:33'),
(141, 'data_types', 'display_name_plural', 34, 'hy', 'Minister Info Categories', '2019-06-24 06:02:33', '2019-06-24 06:02:33'),
(142, 'data_types', 'display_name_plural', 34, 'ru', 'Minister Info Categories', '2019-06-24 06:02:33', '2019-06-24 06:02:33'),
(143, 'data_types', 'display_name_singular', 45, 'hy', 'Legal Acts Type', '2019-06-26 07:31:41', '2019-06-26 07:31:41'),
(144, 'data_types', 'display_name_singular', 45, 'ru', 'Legal Acts Type', '2019-06-26 07:31:41', '2019-06-26 07:31:41'),
(145, 'data_types', 'display_name_plural', 45, 'hy', 'Legal Acts Types', '2019-06-26 07:31:41', '2019-06-26 07:31:41'),
(146, 'data_types', 'display_name_plural', 45, 'ru', 'Legal Acts Types', '2019-06-26 07:31:41', '2019-06-26 07:31:41'),
(147, 'data_types', 'display_name_singular', 44, 'hy', 'Legal Act', '2019-06-26 07:32:45', '2019-06-26 07:32:45'),
(148, 'data_types', 'display_name_singular', 44, 'ru', 'Legal Act', '2019-06-26 07:32:45', '2019-06-26 07:32:45'),
(149, 'data_types', 'display_name_plural', 44, 'hy', 'Legal Acts', '2019-06-26 07:32:45', '2019-06-26 07:32:45'),
(150, 'data_types', 'display_name_plural', 44, 'ru', 'Legal Acts', '2019-06-26 07:32:45', '2019-06-26 07:32:45'),
(151, 'data_types', 'display_name_singular', 47, 'hy', 'Min History Item', '2019-06-26 07:36:28', '2019-06-26 07:36:28'),
(152, 'data_types', 'display_name_singular', 47, 'ru', 'Min History Item', '2019-06-26 07:36:28', '2019-06-26 07:36:28'),
(153, 'data_types', 'display_name_plural', 47, 'hy', 'Min History Items', '2019-06-26 07:36:28', '2019-06-26 07:36:28'),
(154, 'data_types', 'display_name_plural', 47, 'ru', 'Min History Items', '2019-06-26 07:36:28', '2019-06-26 07:36:28'),
(155, 'data_types', 'display_name_singular', 51, 'hy', 'Links Ngo', '2019-07-02 11:50:46', '2019-07-02 11:50:46'),
(156, 'data_types', 'display_name_singular', 51, 'ru', 'Links Ngo', '2019-07-02 11:50:46', '2019-07-02 11:50:46'),
(157, 'data_types', 'display_name_plural', 51, 'hy', 'Links Ngos', '2019-07-02 11:50:46', '2019-07-02 11:50:46'),
(158, 'data_types', 'display_name_plural', 51, 'ru', 'Links Ngos', '2019-07-02 11:50:46', '2019-07-02 11:50:46'),
(159, 'data_types', 'display_name_singular', 52, 'hy', 'Anti Corruption Event', '2019-07-04 08:30:11', '2019-07-04 08:30:11'),
(160, 'data_types', 'display_name_singular', 52, 'ru', 'Anti Corruption Event', '2019-07-04 08:30:11', '2019-07-04 08:30:11'),
(161, 'data_types', 'display_name_plural', 52, 'hy', 'Anti Corruption Events', '2019-07-04 08:30:11', '2019-07-04 08:30:11'),
(162, 'data_types', 'display_name_plural', 52, 'ru', 'Anti Corruption Events', '2019-07-04 08:30:11', '2019-07-04 08:30:11'),
(163, 'data_types', 'display_name_singular', 53, 'hy', 'International', '2019-07-04 08:32:28', '2019-07-04 08:32:28'),
(164, 'data_types', 'display_name_singular', 53, 'ru', 'International', '2019-07-04 08:32:28', '2019-07-04 08:32:28'),
(165, 'data_types', 'display_name_plural', 53, 'hy', 'Internationals', '2019-07-04 08:32:28', '2019-07-04 08:32:28'),
(166, 'data_types', 'display_name_plural', 53, 'ru', 'Internationals', '2019-07-04 08:32:28', '2019-07-04 08:32:28'),
(167, 'data_types', 'display_name_singular', 54, 'hy', 'National', '2019-07-04 08:38:41', '2019-07-04 08:38:41'),
(168, 'data_types', 'display_name_singular', 54, 'ru', 'National', '2019-07-04 08:38:41', '2019-07-04 08:38:41'),
(169, 'data_types', 'display_name_plural', 54, 'hy', 'Nationals', '2019-07-04 08:38:41', '2019-07-04 08:38:41'),
(170, 'data_types', 'display_name_plural', 54, 'ru', 'Nationals', '2019-07-04 08:38:41', '2019-07-04 08:38:41'),
(171, 'data_types', 'display_name_singular', 56, 'hy', 'Politic', '2019-07-04 08:40:43', '2019-07-04 08:40:43'),
(172, 'data_types', 'display_name_singular', 56, 'ru', 'Politic', '2019-07-04 08:40:43', '2019-07-04 08:40:43'),
(173, 'data_types', 'display_name_plural', 56, 'hy', 'Politics', '2019-07-04 08:40:43', '2019-07-04 08:40:43'),
(174, 'data_types', 'display_name_plural', 56, 'ru', 'Politics', '2019-07-04 08:40:43', '2019-07-04 08:40:43'),
(175, 'data_types', 'display_name_singular', 57, 'hy', 'Screening', '2019-07-04 08:42:37', '2019-07-04 08:42:37'),
(176, 'data_types', 'display_name_singular', 57, 'ru', 'Screening', '2019-07-04 08:42:37', '2019-07-04 08:42:37'),
(177, 'data_types', 'display_name_plural', 57, 'hy', 'Screenings', '2019-07-04 08:42:37', '2019-07-04 08:42:37'),
(178, 'data_types', 'display_name_plural', 57, 'ru', 'Screenings', '2019-07-04 08:42:37', '2019-07-04 08:42:37'),
(179, 'data_types', 'display_name_singular', 58, 'hy', 'Superior', '2019-07-04 08:44:54', '2019-07-04 08:44:54'),
(180, 'data_types', 'display_name_singular', 58, 'ru', 'Superior', '2019-07-04 08:44:54', '2019-07-04 08:44:54'),
(181, 'data_types', 'display_name_plural', 58, 'hy', 'Superiors', '2019-07-04 08:44:54', '2019-07-04 08:44:54'),
(182, 'data_types', 'display_name_plural', 58, 'ru', 'Superiors', '2019-07-04 08:44:54', '2019-07-04 08:44:54'),
(183, 'data_types', 'display_name_singular', 60, 'hy', 'Admission', '2019-07-08 03:20:24', '2019-07-08 03:20:24'),
(184, 'data_types', 'display_name_singular', 60, 'ru', 'Admission', '2019-07-08 03:20:24', '2019-07-08 03:20:24'),
(185, 'data_types', 'display_name_plural', 60, 'hy', 'Admissions', '2019-07-08 03:20:24', '2019-07-08 03:20:24'),
(186, 'data_types', 'display_name_plural', 60, 'ru', 'Admissions', '2019-07-08 03:20:24', '2019-07-08 03:20:24'),
(187, 'data_types', 'display_name_singular', 61, 'hy', 'Advertising Permission', '2019-07-08 03:22:04', '2019-07-08 03:22:04'),
(188, 'data_types', 'display_name_singular', 61, 'ru', 'Advertising Permission', '2019-07-08 03:22:04', '2019-07-08 03:22:04'),
(189, 'data_types', 'display_name_plural', 61, 'hy', 'Advertising Permissions', '2019-07-08 03:22:04', '2019-07-08 03:22:04'),
(190, 'data_types', 'display_name_plural', 61, 'ru', 'Advertising Permissions', '2019-07-08 03:22:04', '2019-07-08 03:22:04'),
(191, 'data_types', 'display_name_singular', 62, 'hy', 'State Order', '2019-07-08 03:24:16', '2019-07-08 03:24:16'),
(192, 'data_types', 'display_name_singular', 62, 'ru', 'State Order', '2019-07-08 03:24:16', '2019-07-08 03:24:16'),
(193, 'data_types', 'display_name_plural', 62, 'hy', 'State Orders', '2019-07-08 03:24:16', '2019-07-08 03:24:16'),
(194, 'data_types', 'display_name_plural', 62, 'ru', 'State Orders', '2019-07-08 03:24:16', '2019-07-08 03:24:16'),
(195, 'data_types', 'display_name_singular', 64, 'hy', 'Faq', '2019-07-08 10:30:08', '2019-07-08 10:30:08'),
(196, 'data_types', 'display_name_singular', 64, 'ru', 'Faq', '2019-07-08 10:30:08', '2019-07-08 10:30:08'),
(197, 'data_types', 'display_name_plural', 64, 'hy', 'Faqs', '2019-07-08 10:30:08', '2019-07-08 10:30:08'),
(198, 'data_types', 'display_name_plural', 64, 'ru', 'Faqs', '2019-07-08 10:30:08', '2019-07-08 10:30:08'),
(199, 'data_types', 'display_name_singular', 66, 'hy', 'Budget', '2019-07-09 08:59:04', '2019-07-09 08:59:04'),
(200, 'data_types', 'display_name_singular', 66, 'ru', 'Budget', '2019-07-09 08:59:04', '2019-07-09 08:59:04'),
(201, 'data_types', 'display_name_plural', 66, 'hy', 'Budgets', '2019-07-09 08:59:04', '2019-07-09 08:59:04'),
(202, 'data_types', 'display_name_plural', 66, 'ru', 'Budgets', '2019-07-09 08:59:04', '2019-07-09 08:59:04'),
(203, 'data_types', 'display_name_singular', 68, 'hy', 'Pc Appeal', '2019-07-09 09:03:39', '2019-07-09 09:03:39'),
(204, 'data_types', 'display_name_singular', 68, 'ru', 'Pc Appeal', '2019-07-09 09:03:39', '2019-07-09 09:03:39'),
(205, 'data_types', 'display_name_plural', 68, 'hy', 'Pc Appeals', '2019-07-09 09:03:39', '2019-07-09 09:03:39'),
(206, 'data_types', 'display_name_plural', 68, 'ru', 'Pc Appeals', '2019-07-09 09:03:39', '2019-07-09 09:03:39'),
(207, 'data_types', 'display_name_singular', 69, 'hy', 'Pc Result', '2019-07-09 09:03:50', '2019-07-09 09:03:50'),
(208, 'data_types', 'display_name_singular', 69, 'ru', 'Pc Result', '2019-07-09 09:03:50', '2019-07-09 09:03:50'),
(209, 'data_types', 'display_name_plural', 69, 'hy', 'Pc Results', '2019-07-09 09:03:50', '2019-07-09 09:03:50'),
(210, 'data_types', 'display_name_plural', 69, 'ru', 'Pc Results', '2019-07-09 09:03:50', '2019-07-09 09:03:50'),
(211, 'data_types', 'display_name_singular', 70, 'hy', 'Pc Session', '2019-07-09 09:04:08', '2019-07-09 09:04:08'),
(212, 'data_types', 'display_name_singular', 70, 'ru', 'Pc Session', '2019-07-09 09:04:08', '2019-07-09 09:04:08'),
(213, 'data_types', 'display_name_plural', 70, 'hy', 'Pc Sessions', '2019-07-09 09:04:08', '2019-07-09 09:04:08'),
(214, 'data_types', 'display_name_plural', 70, 'ru', 'Pc Sessions', '2019-07-09 09:04:08', '2019-07-09 09:04:08'),
(215, 'data_types', 'display_name_singular', 71, 'hy', 'Pc Staff', '2019-07-09 09:04:20', '2019-07-09 09:04:20'),
(216, 'data_types', 'display_name_singular', 71, 'ru', 'Pc Staff', '2019-07-09 09:04:20', '2019-07-09 09:04:20'),
(217, 'data_types', 'display_name_plural', 71, 'hy', 'Pc Staffs', '2019-07-09 09:04:20', '2019-07-09 09:04:20'),
(218, 'data_types', 'display_name_plural', 71, 'ru', 'Pc Staffs', '2019-07-09 09:04:20', '2019-07-09 09:04:20'),
(219, 'data_types', 'display_name_singular', 72, 'hy', 'Staffing Job Acceptance', '2019-07-09 10:57:06', '2019-07-09 10:57:06'),
(220, 'data_types', 'display_name_singular', 72, 'ru', 'Staffing Job Acceptance', '2019-07-09 10:57:06', '2019-07-09 10:57:06'),
(221, 'data_types', 'display_name_plural', 72, 'hy', 'Staffing Job Acceptances', '2019-07-09 10:57:06', '2019-07-09 10:57:06'),
(222, 'data_types', 'display_name_plural', 72, 'ru', 'Staffing Job Acceptances', '2019-07-09 10:57:06', '2019-07-09 10:57:06'),
(223, 'data_types', 'display_name_singular', 73, 'hy', 'Staffing Staff List', '2019-07-09 10:58:25', '2019-07-09 10:58:25'),
(224, 'data_types', 'display_name_singular', 73, 'ru', 'Staffing Staff List', '2019-07-09 10:58:25', '2019-07-09 10:58:25'),
(225, 'data_types', 'display_name_plural', 73, 'hy', 'Staffing Staff Lists', '2019-07-09 10:58:25', '2019-07-09 10:58:25'),
(226, 'data_types', 'display_name_plural', 73, 'ru', 'Staffing Staff Lists', '2019-07-09 10:58:25', '2019-07-09 10:58:25'),
(227, 'data_types', 'display_name_singular', 74, 'hy', 'Staffing Tender Result', '2019-07-09 10:59:34', '2019-07-09 10:59:34'),
(228, 'data_types', 'display_name_singular', 74, 'ru', 'Staffing Tender Result', '2019-07-09 10:59:34', '2019-07-09 10:59:34'),
(229, 'data_types', 'display_name_plural', 74, 'hy', 'Staffing Tender Results', '2019-07-09 10:59:34', '2019-07-09 10:59:34'),
(230, 'data_types', 'display_name_plural', 74, 'ru', 'Staffing Tender Results', '2019-07-09 10:59:34', '2019-07-09 10:59:34'),
(231, 'data_types', 'display_name_singular', 75, 'hy', 'Staffing Vacancy', '2019-07-09 11:00:40', '2019-07-09 11:00:40'),
(232, 'data_types', 'display_name_singular', 75, 'ru', 'Staffing Vacancy', '2019-07-09 11:00:40', '2019-07-09 11:00:40'),
(233, 'data_types', 'display_name_plural', 75, 'hy', 'Staffing Vacancies', '2019-07-09 11:00:40', '2019-07-09 11:00:40'),
(234, 'data_types', 'display_name_plural', 75, 'ru', 'Staffing Vacancies', '2019-07-09 11:00:40', '2019-07-09 11:00:40'),
(235, 'data_types', 'display_name_singular', 76, 'hy', 'Your Rights File', '2019-07-10 04:36:48', '2019-07-10 04:36:48'),
(236, 'data_types', 'display_name_singular', 76, 'ru', 'Your Rights File', '2019-07-10 04:36:48', '2019-07-10 04:36:48'),
(237, 'data_types', 'display_name_plural', 76, 'hy', 'Your Rights Files', '2019-07-10 04:36:48', '2019-07-10 04:36:48'),
(238, 'data_types', 'display_name_plural', 76, 'ru', 'Your Rights Files', '2019-07-10 04:36:48', '2019-07-10 04:36:48'),
(239, 'data_types', 'display_name_singular', 80, 'hy', 'License Org File', '2019-07-12 12:04:06', '2019-07-12 12:04:06'),
(240, 'data_types', 'display_name_singular', 80, 'ru', 'License Org File', '2019-07-12 12:04:06', '2019-07-12 12:04:06'),
(241, 'data_types', 'display_name_plural', 80, 'hy', 'License Org Files', '2019-07-12 12:04:06', '2019-07-12 12:04:06'),
(242, 'data_types', 'display_name_plural', 80, 'ru', 'License Org Files', '2019-07-12 12:04:06', '2019-07-12 12:04:06'),
(243, 'data_types', 'display_name_singular', 82, 'hy', 'Ss Drug Medical Expert File', '2019-07-12 12:07:24', '2019-07-12 12:07:24'),
(244, 'data_types', 'display_name_singular', 82, 'ru', 'Ss Drug Medical Expert File', '2019-07-12 12:07:24', '2019-07-12 12:07:24'),
(245, 'data_types', 'display_name_plural', 82, 'hy', 'Ss Drug Medical Expert Files', '2019-07-12 12:07:24', '2019-07-12 12:07:24'),
(246, 'data_types', 'display_name_plural', 82, 'ru', 'Ss Drug Medical Expert Files', '2019-07-12 12:07:24', '2019-07-12 12:07:24'),
(247, 'data_types', 'display_name_singular', 84, 'hy', 'Ss Health Institute File', '2019-07-12 12:10:42', '2019-07-12 12:10:42'),
(248, 'data_types', 'display_name_singular', 84, 'ru', 'Ss Health Institute File', '2019-07-12 12:10:42', '2019-07-12 12:10:42'),
(249, 'data_types', 'display_name_plural', 84, 'hy', 'Ss Health Institute Files', '2019-07-12 12:10:42', '2019-07-12 12:10:42'),
(250, 'data_types', 'display_name_plural', 84, 'ru', 'Ss Health Institute Files', '2019-07-12 12:10:42', '2019-07-12 12:10:42'),
(251, 'data_types', 'display_name_singular', 87, 'hy', 'Ss Medical Library File', '2019-07-12 12:13:28', '2019-07-12 12:13:28'),
(252, 'data_types', 'display_name_singular', 87, 'ru', 'Ss Medical Library File', '2019-07-12 12:13:28', '2019-07-12 12:13:28'),
(253, 'data_types', 'display_name_plural', 87, 'hy', 'Ss Medical Library Files', '2019-07-12 12:13:28', '2019-07-12 12:13:28'),
(254, 'data_types', 'display_name_plural', 87, 'ru', 'Ss Medical Library Files', '2019-07-12 12:13:28', '2019-07-12 12:13:28'),
(255, 'pages_texts', 'page_text2', 1, 'hy', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>hy</p>\n</body>\n</html>', '2019-07-15 09:43:30', '2019-07-15 09:43:30'),
(256, 'pages_texts', 'page_text2', 1, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ru</p>\n</body>\n</html>', '2019-07-15 09:43:30', '2019-07-15 09:43:30'),
(257, 'pages_texts', 'page_text3', 1, 'hy', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '2019-07-15 09:43:30', '2019-07-15 09:43:30'),
(258, 'pages_texts', 'page_text3', 1, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '2019-07-15 09:43:30', '2019-07-15 09:43:30'),
(259, 'data_types', 'display_name_singular', 46, 'hy', 'Min History Category', '2019-07-16 09:28:49', '2019-07-16 09:28:49'),
(260, 'data_types', 'display_name_singular', 46, 'ru', 'Min History Category', '2019-07-16 09:28:49', '2019-07-16 09:28:49'),
(261, 'data_types', 'display_name_plural', 46, 'hy', 'Min History Categories', '2019-07-16 09:28:49', '2019-07-16 09:28:49'),
(262, 'data_types', 'display_name_plural', 46, 'ru', 'Min History Categories', '2019-07-16 09:28:49', '2019-07-16 09:28:49'),
(263, 'min_history_categories', 'description', 1, 'hy', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p> </p>\r\n<p> </p>\r\n<p>Հայաստանի Առաջին Հանրապետության երկրորդ կառավարության վերակազմավորման ժամանակ` 1918 թվականի նոյեմբերին, ստեղծվել է հանրային խնամատարության նախարարությունը, որը 1919 թվականի ապրիլի 8-ին վերանվանվել է հանրային խնամատարության և աշխատանքի նախարարություն:</p>\r\n<p> </p>\r\n</body>\r\n</html>', '2019-07-16 09:29:07', '2019-07-16 09:29:07'),
(264, 'min_history_categories', 'description', 1, 'ru', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p> </p>\r\n<p> </p>\r\n<p>Հայաստանի Առաջին Հանրապետության երկրորդ կառավարության վերակազմավորման ժամանակ` 1918 թվականի նոյեմբերին, ստեղծվել է հանրային խնամատարության նախարարությունը, որը 1919 թվականի ապրիլի 8-ին վերանվանվել է հանրային խնամատարության և աշխատանքի նախարարություն:</p>\r\n<p> </p>\r\n</body>\r\n</html>', '2019-07-16 09:29:07', '2019-07-16 09:29:07'),
(265, 'homepage_sliders', 'title', 5, 'hy', 'ԵՐԿՐՆԵՐՆ ԸՆԴՈՒՆԵԼ ԵՆ <span> ԼՅՈՒԲԼՅԱՆԱՅԻ ՀԱՅՏԱՐԱՐԱԳԻՐԸ</span> «ԱՌՈՂՋԱՊԱՀԱԿԱՆ ԾԱՌԱՅՈՒԹՅՈՒՆՆԵՐԻ ՀԱՍԱՆԵԼԻՈՒԹՅԱՆ ՀԱՎԱՍԱՐՈՒԹՅՈՒՆ»', '2019-07-17 04:29:22', '2019-07-17 04:29:22'),
(266, 'homepage_sliders', 'title', 5, 'ru', 'ԵՐԿՐՆԵՐՆ ԸՆԴՈՒՆԵԼ ԵՆ <span> ԼՅՈՒԲԼՅԱՆԱՅԻ ՀԱՅՏԱՐԱՐԱԳԻՐԸ</span> «ԱՌՈՂՋԱՊԱՀԱԿԱՆ ԾԱՌԱՅՈՒԹՅՈՒՆՆԵՐԻ ՀԱՍԱՆԵԼԻՈՒԹՅԱՆ ՀԱՎԱՍԱՐՈՒԹՅՈՒՆ»', '2019-07-17 04:29:22', '2019-07-17 04:29:22'),
(267, 'homepage_sliders', 'text', 5, 'hy', 'Հայաստանի առողջապահական համակարգի հզորացման հարցերը', '2019-07-17 04:29:22', '2019-07-17 04:29:22'),
(268, 'homepage_sliders', 'text', 5, 'ru', 'Հայաստանի առողջապահական համակարգի հզորացման հարցերը', '2019-07-17 04:29:22', '2019-07-17 04:29:22'),
(269, 'data_types', 'display_name_singular', 90, 'en', 'Dynamic Page', '2019-07-19 10:36:56', '2019-07-19 10:36:56'),
(270, 'data_types', 'display_name_plural', 90, 'en', 'Dynamic Pages', '2019-07-19 10:36:56', '2019-07-19 10:36:56'),
(271, 'data_types', 'display_name_singular', 90, 'ru', 'Dynamic Page', '2019-07-19 10:44:35', '2019-07-19 10:44:35'),
(272, 'data_types', 'display_name_plural', 90, 'ru', 'Dynamic Pages', '2019-07-19 10:44:35', '2019-07-19 10:44:35'),
(273, 'data_types', 'display_name_singular', 89, 'en', 'Dynamic Section', '2019-07-19 10:47:51', '2019-07-19 10:47:51'),
(274, 'data_types', 'display_name_plural', 89, 'en', 'Dynamic Sections', '2019-07-19 10:47:51', '2019-07-19 10:47:51'),
(275, 'data_types', 'display_name_singular', 91, 'en', 'Dynamic Sub Page', '2019-07-19 10:48:15', '2019-07-19 10:48:15'),
(276, 'data_types', 'display_name_plural', 91, 'en', 'Dynamic Sub Pages', '2019-07-19 10:48:15', '2019-07-19 10:48:15'),
(277, 'data_types', 'display_name_singular', 89, 'ru', 'Dynamic Section', '2019-07-19 10:49:44', '2019-07-19 10:49:44'),
(278, 'data_types', 'display_name_plural', 89, 'ru', 'Dynamic Sections', '2019-07-19 10:49:44', '2019-07-19 10:49:44'),
(279, 'data_types', 'display_name_singular', 91, 'ru', 'Dynamic Sub Page', '2019-07-19 10:50:09', '2019-07-19 10:50:09'),
(280, 'data_types', 'display_name_plural', 91, 'ru', 'Dynamic Sub Pages', '2019-07-19 10:50:09', '2019-07-19 10:50:09'),
(281, 'data_types', 'display_name_singular', 88, 'en', 'Dynamic Page File', '2019-07-19 10:59:53', '2019-07-19 10:59:53'),
(282, 'data_types', 'display_name_plural', 88, 'en', 'Dynamic Page Files', '2019-07-19 10:59:53', '2019-07-19 10:59:53'),
(283, 'dynamic_pages', 'name', 2, 'en', 'page2', '2019-07-24 05:25:21', '2019-07-24 05:25:21'),
(284, 'dynamic_pages', 'name', 2, 'ru', 'page2', '2019-07-24 05:37:51', '2019-07-24 05:37:51'),
(285, 'dynamic_pages', 'name', 4, 'en', 'test4', '2019-07-24 06:45:46', '2019-07-24 06:45:46'),
(286, 'web_site_translations', 'page_name', 1, 'en', 'Footer', '2019-07-26 04:51:18', '2019-07-26 04:51:18'),
(287, 'web_site_translations', 'page_name', 1, 'ru', 'Footer', '2019-07-26 04:51:18', '2019-07-26 04:51:18'),
(288, 'web_site_translations', 'text', 1, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Address</p>\n</body>\n</html>', '2019-07-26 04:51:18', '2019-07-30 12:32:30'),
(289, 'web_site_translations', 'text', 1, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Адрес</p>\n</body>\n</html>', '2019-07-26 04:51:18', '2019-07-30 12:32:30'),
(290, 'data_types', 'display_name_singular', 92, 'en', 'Web Site Translation', '2019-07-26 05:10:44', '2019-07-26 05:10:44'),
(291, 'data_types', 'display_name_plural', 92, 'en', 'Web Site Translations', '2019-07-26 05:10:44', '2019-07-26 05:10:44'),
(292, 'web_site_translations', 'page_name', 2, 'en', 'Footer', '2019-07-26 05:14:47', '2019-07-26 05:14:47'),
(293, 'web_site_translations', 'page_name', 2, 'ru', 'Footer', '2019-07-26 05:14:47', '2019-07-26 05:14:47'),
(294, 'web_site_translations', 'text', 2, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Yerevan 0010,</p>\n<p>Government House N 3</p>\n</body>\n</html>', '2019-07-26 05:14:47', '2019-07-30 12:33:21'),
(295, 'web_site_translations', 'text', 2, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ереван 0010,</p>\n<p>Дом Правительства № 3</p>\n</body>\n</html>', '2019-07-26 05:14:47', '2019-07-30 12:33:21'),
(296, 'web_site_translations', 'page_name', 3, 'en', 'Footer', '2019-07-26 07:00:35', '2019-07-26 07:00:35'),
(297, 'web_site_translations', 'page_name', 3, 'ru', 'Footer', '2019-07-26 07:00:35', '2019-07-26 07:00:35'),
(298, 'web_site_translations', 'text', 3, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>E-mail</p>\n</body>\n</html>', '2019-07-26 07:00:35', '2019-07-26 07:00:35'),
(299, 'web_site_translations', 'text', 3, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Эл-почта</p>\n</body>\n</html>', '2019-07-26 07:00:35', '2019-07-26 07:00:35'),
(300, 'web_site_translations', 'page_name', 4, 'en', 'Footer', '2019-07-26 07:07:23', '2019-07-26 07:07:23'),
(301, 'web_site_translations', 'page_name', 4, 'ru', 'Footer', '2019-07-26 07:07:23', '2019-07-26 07:07:23'),
(302, 'web_site_translations', 'text', 4, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Reference phone</p>\n</body>\n</html>', '2019-07-26 07:07:23', '2019-07-26 07:07:23'),
(303, 'web_site_translations', 'text', 4, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Справочный телефон</p>\n</body>\n</html>', '2019-07-26 07:07:23', '2019-07-26 07:07:23'),
(304, 'web_site_translations', 'page_name', 5, 'en', 'Footer', '2019-07-26 07:13:20', '2019-07-26 07:13:20'),
(305, 'web_site_translations', 'page_name', 5, 'ru', 'Footer', '2019-07-26 07:13:20', '2019-07-26 07:13:20'),
(306, 'web_site_translations', 'text', 5, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Information responsible</p>\n</body>\n</html>', '2019-07-26 07:13:20', '2019-07-26 07:13:20'),
(307, 'web_site_translations', 'text', 5, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Информационный телефон</p>\n</body>\n</html>', '2019-07-26 07:13:20', '2019-07-26 07:13:20'),
(308, 'web_site_translations', 'page_name', 6, 'en', 'Footer', '2019-07-26 08:39:23', '2019-07-26 08:39:23'),
(309, 'web_site_translations', 'page_name', 6, 'ru', 'Footer', '2019-07-26 08:39:23', '2019-07-26 08:39:23'),
(310, 'web_site_translations', 'text', 6, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>or</p>\n</body>\n</html>', '2019-07-26 08:39:23', '2019-07-26 08:39:23'),
(311, 'web_site_translations', 'text', 6, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>или</p>\n</body>\n</html>', '2019-07-26 08:39:23', '2019-07-26 08:39:23'),
(312, 'web_site_translations', 'page_name', 7, 'en', 'Footer', '2019-07-26 08:42:41', '2019-07-26 08:42:41'),
(313, 'web_site_translations', 'page_name', 7, 'ru', 'Footer', '2019-07-26 08:42:41', '2019-07-26 08:42:41'),
(314, 'web_site_translations', 'text', 7, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Last update</p>\n</body>\n</html>', '2019-07-26 08:42:41', '2019-07-26 08:42:41'),
(315, 'web_site_translations', 'text', 7, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Последнее обновление</p>\n</body>\n</html>', '2019-07-26 08:42:41', '2019-07-26 08:42:41'),
(316, 'web_site_translations', 'page_name', 8, 'en', 'Footer', '2019-07-26 08:54:00', '2019-07-26 08:54:00'),
(317, 'web_site_translations', 'page_name', 8, 'ru', 'Footer', '2019-07-26 08:54:00', '2019-07-26 08:54:00'),
(318, 'web_site_translations', 'text', 8, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>All rights reserved.</p>\n</body>\n</html>', '2019-07-26 08:54:00', '2019-07-26 08:54:00'),
(319, 'web_site_translations', 'text', 8, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Все права защищены.</p>\n</body>\n</html>', '2019-07-26 08:54:00', '2019-07-26 08:54:00'),
(320, 'web_site_translations', 'page_name', 9, 'en', 'Header', '2019-07-29 05:47:21', '2019-07-29 05:47:21'),
(321, 'web_site_translations', 'page_name', 9, 'ru', 'Haeder', '2019-07-29 05:47:21', '2019-07-29 05:47:21'),
(322, 'web_site_translations', 'text', 9, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>MINISTRY OF HEALTH OF</p>\n<p>THE REPUBLIC OF ARMENIA</p>\n</body>\n</html>', '2019-07-29 05:47:21', '2019-07-30 12:25:57'),
(323, 'web_site_translations', 'text', 9, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>МИНИСТЕРСТВО ЗДРАВООХРАНЕНИЯ</p>\n<p>РЕСПУБЛИКИ АРМЕНИЯ</p>\n</body>\n</html>', '2019-07-29 05:47:21', '2019-07-30 12:25:57'),
(324, 'web_site_translations', 'page_name', 10, 'en', 'Header', '2019-07-29 05:50:26', '2019-07-29 05:50:26'),
(325, 'web_site_translations', 'page_name', 10, 'ru', 'Header', '2019-07-29 05:50:26', '2019-07-29 06:00:45'),
(326, 'web_site_translations', 'text', 10, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Home</p>\n</body>\n</html>', '2019-07-29 05:50:26', '2019-07-29 05:50:26'),
(327, 'web_site_translations', 'text', 10, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Главный</p>\n</body>\n</html>', '2019-07-29 05:50:26', '2019-07-29 05:50:26'),
(328, 'web_site_translations', 'page_name', 11, 'en', 'Header', '2019-07-29 05:59:52', '2019-07-29 05:59:52'),
(329, 'web_site_translations', 'page_name', 11, 'ru', 'Header', '2019-07-29 05:59:52', '2019-07-29 05:59:52'),
(330, 'web_site_translations', 'text', 11, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Contact Us</p>\n</body>\n</html>', '2019-07-29 05:59:52', '2019-07-29 05:59:52'),
(331, 'web_site_translations', 'text', 11, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Контакты</p>\n</body>\n</html>', '2019-07-29 05:59:52', '2019-07-29 05:59:52'),
(332, 'web_site_translations', 'page_name', 12, 'en', 'Header', '2019-07-29 06:05:31', '2019-07-29 06:05:31'),
(333, 'web_site_translations', 'page_name', 12, 'ru', 'Header', '2019-07-29 06:05:31', '2019-07-29 06:05:31'),
(334, 'web_site_translations', 'text', 12, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Minister</p>\n</body>\n</html>', '2019-07-29 06:05:31', '2019-07-29 06:05:31'),
(335, 'web_site_translations', 'text', 12, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Министр</p>\n</body>\n</html>', '2019-07-29 06:05:31', '2019-07-29 06:05:31'),
(336, 'web_site_translations', 'page_name', 13, 'en', 'Header', '2019-07-29 06:07:49', '2019-07-29 06:07:49'),
(337, 'web_site_translations', 'page_name', 13, 'ru', 'Header', '2019-07-29 06:07:49', '2019-07-29 06:07:49'),
(338, 'web_site_translations', 'text', 13, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Legal acts</p>\n</body>\n</html>', '2019-07-29 06:07:49', '2019-07-29 06:07:49'),
(339, 'web_site_translations', 'text', 13, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Правовые акты</p>\n</body>\n</html>', '2019-07-29 06:07:49', '2019-07-29 06:07:49'),
(340, 'web_site_translations', 'page_name', 14, 'en', 'Subscription', '2019-07-29 07:59:50', '2019-07-29 07:59:50'),
(341, 'web_site_translations', 'page_name', 14, 'ru', 'Subscription', '2019-07-29 07:59:50', '2019-07-29 07:59:50'),
(342, 'web_site_translations', 'text', 14, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Subscribe</p>\n</body>\n</html>', '2019-07-29 07:59:50', '2019-07-29 07:59:50'),
(343, 'web_site_translations', 'text', 14, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Подписаться</p>\n</body>\n</html>', '2019-07-29 07:59:50', '2019-07-29 07:59:50'),
(344, 'web_site_translations', 'page_name', 15, 'en', 'Subscription', '2019-07-29 08:02:57', '2019-07-29 08:02:57'),
(345, 'web_site_translations', 'page_name', 15, 'ru', 'Subscription', '2019-07-29 08:02:57', '2019-07-29 08:02:57'),
(346, 'web_site_translations', 'text', 15, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Read our privacy here</p>\n</body>\n</html>', '2019-07-29 08:02:57', '2019-07-29 08:02:57'),
(347, 'web_site_translations', 'text', 15, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Прочитайте нашу конфиденциальность здесь.</p>\n</body>\n</html>', '2019-07-29 08:02:57', '2019-07-29 08:02:57'),
(348, 'web_site_translations', 'page_name', 16, 'en', 'Sidebar', '2019-07-29 08:36:00', '2019-07-29 08:36:00'),
(349, 'web_site_translations', 'page_name', 16, 'ru', 'Sidebar', '2019-07-29 08:36:00', '2019-07-29 08:36:00'),
(350, 'web_site_translations', 'text', 16, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ministry</p>\n</body>\n</html>', '2019-07-29 08:36:00', '2019-07-29 08:36:00'),
(351, 'web_site_translations', 'text', 16, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Министерство</p>\n</body>\n</html>', '2019-07-29 08:36:00', '2019-07-29 08:36:00'),
(352, 'web_site_translations', 'page_name', 17, 'en', 'Sidebar', '2019-07-29 08:41:44', '2019-07-29 08:41:44'),
(353, 'web_site_translations', 'page_name', 17, 'ru', 'Sidebar', '2019-07-29 08:41:44', '2019-07-29 08:41:44'),
(354, 'web_site_translations', 'text', 17, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>History</p>\n</body>\n</html>', '2019-07-29 08:41:44', '2019-07-29 08:41:44'),
(355, 'web_site_translations', 'text', 17, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>История</p>\n</body>\n</html>', '2019-07-29 08:41:44', '2019-07-29 08:41:44'),
(356, 'web_site_translations', 'page_name', 18, 'en', 'Sidebar', '2019-07-29 08:47:11', '2019-07-29 08:47:11'),
(357, 'web_site_translations', 'page_name', 18, 'ru', 'Sidebar', '2019-07-29 08:47:11', '2019-07-29 08:47:11'),
(358, 'web_site_translations', 'text', 18, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Mission</p>\n</body>\n</html>', '2019-07-29 08:47:11', '2019-07-29 08:47:11'),
(359, 'web_site_translations', 'text', 18, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Миссия</p>\n</body>\n</html>', '2019-07-29 08:47:11', '2019-07-29 08:47:11'),
(360, 'web_site_translations', 'page_name', 19, 'en', 'Sidebar', '2019-07-29 08:57:37', '2019-07-29 08:57:37'),
(361, 'web_site_translations', 'page_name', 19, 'ru', 'Sidebar', '2019-07-29 08:57:37', '2019-07-29 08:57:37'),
(362, 'web_site_translations', 'text', 19, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Legislation</p>\n</body>\n</html>', '2019-07-29 08:57:37', '2019-07-29 08:57:37'),
(363, 'web_site_translations', 'text', 19, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Устав</p>\n</body>\n</html>', '2019-07-29 08:57:37', '2019-07-29 08:57:37'),
(364, 'web_site_translations', 'page_name', 20, 'en', 'Sidebar', '2019-07-29 09:00:05', '2019-07-29 09:00:05'),
(365, 'web_site_translations', 'page_name', 20, 'ru', 'Sidebar', '2019-07-29 09:00:05', '2019-07-29 09:00:05'),
(366, 'web_site_translations', 'text', 20, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Structure</p>\n</body>\n</html>', '2019-07-29 09:00:05', '2019-07-29 09:00:05');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(367, 'web_site_translations', 'text', 20, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Структура</p>\n</body>\n</html>', '2019-07-29 09:00:05', '2019-07-29 09:00:05'),
(368, 'web_site_translations', 'page_name', 21, 'en', 'Sidebar', '2019-07-29 09:02:12', '2019-07-29 09:02:12'),
(369, 'web_site_translations', 'page_name', 21, 'ru', 'Sidebar', '2019-07-29 09:02:12', '2019-07-29 09:02:12'),
(370, 'web_site_translations', 'text', 21, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Administration Staff of the Ministry</p>\n</body>\n</html>', '2019-07-29 09:02:12', '2019-07-29 09:02:12'),
(371, 'web_site_translations', 'text', 21, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Состав сотрудников министерства</p>\n</body>\n</html>', '2019-07-29 09:02:12', '2019-07-29 09:02:12'),
(372, 'web_site_translations', 'page_name', 22, 'en', 'Sidebar', '2019-07-29 09:05:16', '2019-07-29 09:05:16'),
(373, 'web_site_translations', 'page_name', 22, 'ru', 'Sidebar', '2019-07-29 09:05:16', '2019-07-29 09:05:16'),
(374, 'web_site_translations', 'text', 22, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Staff of the Minister</p>\n</body>\n</html>', '2019-07-29 09:05:16', '2019-07-29 09:05:16'),
(375, 'web_site_translations', 'text', 22, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<div class=\"main-menu-item\">Заместители, помощники, советники Министра</div>\n</body>\n</html>', '2019-07-29 09:05:16', '2019-07-29 09:05:16'),
(376, 'web_site_translations', 'page_name', 23, 'en', 'Sidebar', '2019-07-29 09:07:26', '2019-07-29 09:07:26'),
(377, 'web_site_translations', 'page_name', 23, 'ru', 'Sidebar', '2019-07-29 09:07:26', '2019-07-29 09:07:26'),
(378, 'web_site_translations', 'text', 23, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Organizational chart</p>\n</body>\n</html>', '2019-07-29 09:07:26', '2019-07-29 09:07:26'),
(379, 'web_site_translations', 'text', 23, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Организационная структура</p>\n</body>\n</html>', '2019-07-29 09:07:26', '2019-07-29 09:07:26'),
(380, 'web_site_translations', 'page_name', 24, 'en', 'Sidebar', '2019-07-29 09:10:18', '2019-07-29 09:10:18'),
(381, 'web_site_translations', 'page_name', 24, 'ru', 'Sidebar', '2019-07-29 09:10:18', '2019-07-29 09:10:18'),
(382, 'web_site_translations', 'text', 24, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Licensing Agency</p>\n</body>\n</html>', '2019-07-29 09:10:18', '2019-07-29 09:10:18'),
(383, 'web_site_translations', 'text', 24, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Инспекция лицензирования</p>\n</body>\n</html>', '2019-07-29 09:10:18', '2019-07-29 09:10:18'),
(384, 'web_site_translations', 'page_name', 25, 'en', 'Sidebar', '2019-07-29 09:12:42', '2019-07-29 09:12:42'),
(385, 'web_site_translations', 'page_name', 25, 'ru', 'Sidebar', '2019-07-29 09:12:42', '2019-07-29 09:12:42'),
(386, 'web_site_translations', 'text', 25, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Health State Implementation Unit</p>\n</body>\n</html>', '2019-07-29 09:12:42', '2019-07-29 09:12:42'),
(387, 'web_site_translations', 'text', 25, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Группа реализации проекта Здоровье</p>\n</body>\n</html>', '2019-07-29 09:12:42', '2019-07-29 09:12:42'),
(388, 'web_site_translations', 'page_name', 26, 'en', 'Sidebar', '2019-07-29 09:14:48', '2019-07-29 09:14:48'),
(389, 'web_site_translations', 'page_name', 26, 'ru', 'Sidebar', '2019-07-29 09:14:48', '2019-07-29 09:14:48'),
(390, 'web_site_translations', 'text', 26, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Provision of Staff</p>\n</body>\n</html>', '2019-07-29 09:14:48', '2019-07-29 09:14:48'),
(391, 'web_site_translations', 'text', 26, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Кадровое обеспечение</p>\n</body>\n</html>', '2019-07-29 09:14:48', '2019-07-29 09:14:48'),
(392, 'web_site_translations', 'page_name', 27, 'en', 'Sidebar', '2019-07-29 09:17:44', '2019-07-29 09:17:44'),
(393, 'web_site_translations', 'page_name', 27, 'ru', 'Sidebar', '2019-07-29 09:17:44', '2019-07-29 09:17:44'),
(394, 'web_site_translations', 'text', 27, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Staff list</p>\n</body>\n</html>', '2019-07-29 09:17:44', '2019-07-29 09:17:44'),
(395, 'web_site_translations', 'text', 27, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Кадровый список</p>\n</body>\n</html>', '2019-07-29 09:17:44', '2019-07-29 09:17:44'),
(396, 'web_site_translations', 'page_name', 28, 'en', 'Sidebar', '2019-07-29 09:22:42', '2019-07-29 09:22:42'),
(397, 'web_site_translations', 'page_name', 28, 'ru', 'Sidebar', '2019-07-29 09:22:42', '2019-07-29 09:22:42'),
(398, 'web_site_translations', 'text', 28, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Vacancies</p>\n</body>\n</html>', '2019-07-29 09:22:42', '2019-07-29 09:22:42'),
(399, 'web_site_translations', 'text', 28, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Вакансии</p>\n</body>\n</html>', '2019-07-29 09:22:42', '2019-07-29 09:22:42'),
(400, 'web_site_translations', 'page_name', 29, 'en', 'Sidebar', '2019-07-29 09:23:27', '2019-07-29 09:23:27'),
(401, 'web_site_translations', 'page_name', 29, 'ru', 'Sidebar', '2019-07-29 09:23:27', '2019-07-29 09:23:27'),
(402, 'web_site_translations', 'text', 29, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<div class=\"main-menu-item\">Announcements of competitions,results</div>\n</body>\n</html>', '2019-07-29 09:23:27', '2019-07-29 09:23:27'),
(403, 'web_site_translations', 'text', 29, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<div class=\"main-menu-item\">Свободные вакансии и объявления о проведении конкурсов, Результаты</div>\n</body>\n</html>', '2019-07-29 09:23:27', '2019-07-29 09:23:27'),
(404, 'web_site_translations', 'page_name', 30, 'en', 'Sidebar', '2019-07-29 09:23:51', '2019-07-29 09:23:51'),
(405, 'web_site_translations', 'page_name', 30, 'ru', 'Sidebar', '2019-07-29 09:23:51', '2019-07-29 09:23:51'),
(406, 'web_site_translations', 'text', 30, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Job Procedure</p>\n</body>\n</html>', '2019-07-29 09:23:51', '2019-07-29 09:23:51'),
(407, 'web_site_translations', 'text', 30, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Порядок приема на работу</p>\n</body>\n</html>', '2019-07-29 09:23:51', '2019-07-29 09:23:51'),
(408, 'web_site_translations', 'page_name', 31, 'en', 'Sidebar', '2019-07-29 09:27:12', '2019-07-29 09:27:12'),
(409, 'web_site_translations', 'page_name', 31, 'ru', 'Sidebar', '2019-07-29 09:27:12', '2019-07-29 09:27:12'),
(410, 'web_site_translations', 'text', 31, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Institutions under the ministry of health</p>\n</body>\n</html>', '2019-07-29 09:27:12', '2019-07-29 09:27:12'),
(411, 'web_site_translations', 'text', 31, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Учреждения, находящиеся в ведении Министерства здравоохранения</p>\n</body>\n</html>', '2019-07-29 09:27:12', '2019-07-29 09:27:12'),
(412, 'web_site_translations', 'page_name', 32, 'en', 'Sidebar', '2019-07-29 09:28:24', '2019-07-29 09:28:24'),
(413, 'web_site_translations', 'page_name', 32, 'ru', 'Sidebar', '2019-07-29 09:28:24', '2019-07-29 09:28:24'),
(414, 'web_site_translations', 'text', 32, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>National Institute of Health</p>\n</body>\n</html>', '2019-07-29 09:28:24', '2019-07-29 09:28:24'),
(415, 'web_site_translations', 'text', 32, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Национальный институт здоровья</p>\n</body>\n</html>', '2019-07-29 09:28:24', '2019-07-29 09:28:24'),
(416, 'web_site_translations', 'page_name', 33, 'en', 'Sidebar', '2019-07-29 09:30:00', '2019-07-29 09:30:00'),
(417, 'web_site_translations', 'page_name', 33, 'ru', 'Sidebar', '2019-07-29 09:30:00', '2019-07-29 09:30:00'),
(418, 'web_site_translations', 'text', 33, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Drug Medical technology expertise center</p>\n</body>\n</html>', '2019-07-29 09:30:00', '2019-07-29 09:30:00'),
(419, 'web_site_translations', 'text', 33, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Научный центр экспертизы лекарств и медицинских технологий</p>\n</body>\n</html>', '2019-07-29 09:30:00', '2019-07-29 09:30:00'),
(420, 'web_site_translations', 'page_name', 34, 'en', 'Sidebar', '2019-07-29 09:31:26', '2019-07-29 09:31:26'),
(421, 'web_site_translations', 'page_name', 34, 'ru', 'Sidebar', '2019-07-29 09:31:26', '2019-07-29 09:31:26'),
(422, 'web_site_translations', 'text', 34, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Republican Scientific medical library of Armenia</p>\n</body>\n</html>', '2019-07-29 09:31:26', '2019-07-29 09:31:26'),
(423, 'web_site_translations', 'text', 34, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Республиканская научная медицинская библиотека</p>\n</body>\n</html>', '2019-07-29 09:31:26', '2019-07-29 09:31:26'),
(424, 'web_site_translations', 'page_name', 35, 'en', 'Sidebar', '2019-07-29 09:33:05', '2019-07-29 09:33:05'),
(425, 'web_site_translations', 'page_name', 35, 'ru', 'Sidebar', '2019-07-29 09:33:05', '2019-07-29 09:33:05'),
(426, 'web_site_translations', 'text', 35, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Assistance in Health Care Facilities</p>\n</body>\n</html>', '2019-07-29 09:33:05', '2019-07-29 09:33:05'),
(427, 'web_site_translations', 'text', 35, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Медицинская помощь учреждениям</p>\n</body>\n</html>', '2019-07-29 09:33:05', '2019-07-29 09:33:05'),
(428, 'web_site_translations', 'page_name', 36, 'en', 'Sidebar', '2019-07-29 09:34:10', '2019-07-29 09:34:10'),
(429, 'web_site_translations', 'page_name', 36, 'ru', 'Sidebar', '2019-07-29 09:34:10', '2019-07-29 09:34:10'),
(430, 'web_site_translations', 'text', 36, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Other organizations</p>\n</body>\n</html>', '2019-07-29 09:34:10', '2019-07-29 09:34:10'),
(431, 'web_site_translations', 'text', 36, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Другие организации</p>\n</body>\n</html>', '2019-07-29 09:34:10', '2019-07-29 09:34:10'),
(432, 'web_site_translations', 'page_name', 37, 'en', 'Sidebar', '2019-07-29 09:35:11', '2019-07-29 09:35:11'),
(433, 'web_site_translations', 'page_name', 37, 'ru', 'Sidebar', '2019-07-29 09:35:11', '2019-07-29 09:35:11'),
(434, 'web_site_translations', 'text', 37, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Budget</p>\n</body>\n</html>', '2019-07-29 09:35:11', '2019-07-29 09:35:11'),
(435, 'web_site_translations', 'text', 37, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Бюджет</p>\n</body>\n</html>', '2019-07-29 09:35:11', '2019-07-29 09:35:11'),
(436, 'web_site_translations', 'page_name', 38, 'en', 'Sidebar', '2019-07-29 09:39:54', '2019-07-29 09:39:54'),
(437, 'web_site_translations', 'page_name', 38, 'ru', 'Sidebar', '2019-07-29 09:39:54', '2019-07-29 09:39:54'),
(438, 'web_site_translations', 'text', 38, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Public council under the minister</p>\n</body>\n</html>', '2019-07-29 09:39:54', '2019-07-29 09:39:54'),
(439, 'web_site_translations', 'text', 38, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Общественный совет при министерстве</p>\n</body>\n</html>', '2019-07-29 09:39:54', '2019-07-29 09:39:54'),
(440, 'web_site_translations', 'page_name', 39, 'en', 'Sidebar', '2019-07-29 09:42:26', '2019-07-29 09:42:26'),
(441, 'web_site_translations', 'page_name', 39, 'ru', 'Sidebar', '2019-07-29 09:42:26', '2019-07-29 09:42:26'),
(442, 'web_site_translations', 'text', 39, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Chief Specialists</p>\n</body>\n</html>', '2019-07-29 09:42:26', '2019-07-29 09:42:26'),
(443, 'web_site_translations', 'text', 39, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Главные специалисты</p>\n</body>\n</html>', '2019-07-29 09:42:26', '2019-07-29 09:42:26'),
(448, 'web_site_translations', 'page_name', 41, 'en', 'Sidebar', '2019-07-29 09:49:39', '2019-07-29 09:49:39'),
(449, 'web_site_translations', 'page_name', 41, 'ru', 'Sidebar', '2019-07-29 09:49:39', '2019-07-29 09:49:39'),
(450, 'web_site_translations', 'text', 41, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>News</p>\n</body>\n</html>', '2019-07-29 09:49:39', '2019-07-29 09:49:39'),
(451, 'web_site_translations', 'text', 41, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>новости</p>\n</body>\n</html>', '2019-07-29 09:49:39', '2019-07-29 09:49:39'),
(452, 'web_site_translations', 'page_name', 42, 'en', 'Sidebar', '2019-07-29 09:52:32', '2019-07-29 09:52:32'),
(453, 'web_site_translations', 'page_name', 42, 'ru', 'Sidebar', '2019-07-29 09:52:32', '2019-07-29 09:52:32'),
(454, 'web_site_translations', 'text', 42, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Announcements</p>\n</body>\n</html>', '2019-07-29 09:52:32', '2019-07-29 09:52:32'),
(455, 'web_site_translations', 'text', 42, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Объявления</p>\n</body>\n</html>', '2019-07-29 09:52:32', '2019-07-29 09:52:32'),
(456, 'web_site_translations', 'page_name', 43, 'en', 'Sidebar', '2019-07-29 09:54:55', '2019-07-29 09:54:55'),
(457, 'web_site_translations', 'page_name', 43, 'ru', 'Sidebar', '2019-07-29 09:54:55', '2019-07-29 09:54:55'),
(458, 'web_site_translations', 'text', 43, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Videos</p>\n</body>\n</html>', '2019-07-29 09:54:55', '2019-07-29 09:54:55'),
(459, 'web_site_translations', 'text', 43, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Видео</p>\n</body>\n</html>', '2019-07-29 09:54:55', '2019-07-29 09:54:55'),
(460, 'web_site_translations', 'page_name', 44, 'en', 'Sidebar', '2019-07-29 09:57:48', '2019-07-29 09:57:48'),
(461, 'web_site_translations', 'page_name', 44, 'ru', 'Sidebar', '2019-07-29 09:57:48', '2019-07-29 09:57:48'),
(462, 'web_site_translations', 'text', 44, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Speeches and Interviews</p>\n</body>\n</html>', '2019-07-29 09:57:48', '2019-07-29 09:57:48'),
(463, 'web_site_translations', 'text', 44, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Выступления и интервью</p>\n</body>\n</html>', '2019-07-29 09:57:48', '2019-07-29 09:57:48'),
(464, 'web_site_translations', 'page_name', 45, 'en', 'Sidebar', '2019-07-29 09:59:14', '2019-07-29 09:59:14'),
(465, 'web_site_translations', 'page_name', 45, 'ru', 'Sidebar', '2019-07-29 09:59:14', '2019-07-29 09:59:14'),
(466, 'web_site_translations', 'text', 45, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Reports</p>\n</body>\n</html>', '2019-07-29 09:59:14', '2019-07-29 09:59:14'),
(467, 'web_site_translations', 'text', 45, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Отчеты</p>\n</body>\n</html>', '2019-07-29 09:59:14', '2019-07-29 09:59:14'),
(468, 'web_site_translations', 'page_name', 46, 'en', 'Sidebar', '2019-07-29 10:00:29', '2019-07-29 10:00:29'),
(469, 'web_site_translations', 'page_name', 46, 'ru', 'Sidebar', '2019-07-29 10:00:29', '2019-07-29 10:00:29'),
(470, 'web_site_translations', 'text', 46, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Press Release</p>\n</body>\n</html>', '2019-07-29 10:00:30', '2019-07-29 10:00:30'),
(471, 'web_site_translations', 'text', 46, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Пресс-релиз</p>\n</body>\n</html>', '2019-07-29 10:00:30', '2019-07-29 10:00:30'),
(472, 'web_site_translations', 'page_name', 47, 'en', 'Sidebar', '2019-07-29 10:01:38', '2019-07-29 10:01:38'),
(473, 'web_site_translations', 'page_name', 47, 'ru', 'Sidebar', '2019-07-29 10:01:38', '2019-07-29 10:01:38'),
(474, 'web_site_translations', 'text', 47, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Research</p>\n</body>\n</html>', '2019-07-29 10:01:38', '2019-07-29 10:01:38'),
(475, 'web_site_translations', 'text', 47, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Исследования</p>\n</body>\n</html>', '2019-07-29 10:01:38', '2019-07-29 10:01:38'),
(476, 'web_site_translations', 'page_name', 48, 'en', 'Sidebar', '2019-07-29 10:02:35', '2019-07-29 10:02:35'),
(477, 'web_site_translations', 'page_name', 48, 'ru', 'Sidebar', '2019-07-29 10:02:35', '2019-07-29 10:02:35'),
(478, 'web_site_translations', 'text', 48, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Statistics</p>\n</body>\n</html>', '2019-07-29 10:02:35', '2019-07-29 10:02:35'),
(479, 'web_site_translations', 'text', 48, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Статистика</p>\n</body>\n</html>', '2019-07-29 10:02:35', '2019-07-29 11:14:27'),
(480, 'web_site_translations', 'page_name', 49, 'en', 'Sidebar', '2019-07-29 12:26:26', '2019-07-29 12:26:26'),
(481, 'web_site_translations', 'page_name', 49, 'ru', 'Sidebar', '2019-07-29 12:26:26', '2019-07-29 12:26:26'),
(482, 'web_site_translations', 'text', 49, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Directory</p>\n</body>\n</html>', '2019-07-29 12:26:26', '2019-07-29 12:26:26'),
(483, 'web_site_translations', 'text', 49, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>справочник</p>\n</body>\n</html>', '2019-07-29 12:26:26', '2019-07-29 12:26:26'),
(484, 'web_site_translations', 'page_name', 50, 'en', 'Sidebar', '2019-07-29 12:28:31', '2019-07-29 12:28:31'),
(485, 'web_site_translations', 'page_name', 50, 'ru', 'Sidebar', '2019-07-29 12:28:32', '2019-07-29 12:28:32'),
(486, 'web_site_translations', 'text', 50, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Projects</p>\n</body>\n</html>', '2019-07-29 12:28:32', '2019-07-29 12:28:32'),
(487, 'web_site_translations', 'text', 50, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Программы</p>\n</body>\n</html>', '2019-07-29 12:28:32', '2019-07-29 12:28:32'),
(488, 'web_site_translations', 'page_name', 51, 'en', 'Sidebar', '2019-07-29 12:29:26', '2019-07-29 12:29:26'),
(489, 'web_site_translations', 'page_name', 51, 'ru', 'Sidebar', '2019-07-29 12:29:26', '2019-07-29 12:29:26'),
(490, 'web_site_translations', 'text', 51, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Policy</p>\n</body>\n</html>', '2019-07-29 12:29:26', '2019-07-29 12:29:26'),
(491, 'web_site_translations', 'text', 51, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Политика</p>\n</body>\n</html>', '2019-07-29 12:29:26', '2019-07-29 12:29:26'),
(492, 'web_site_translations', 'page_name', 52, 'en', 'Sidebar', '2019-07-29 12:30:13', '2019-07-29 12:30:13'),
(493, 'web_site_translations', 'page_name', 52, 'ru', 'Sidebar', '2019-07-29 12:30:13', '2019-07-29 12:30:13'),
(494, 'web_site_translations', 'text', 52, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Priority projects</p>\n</body>\n</html>', '2019-07-29 12:30:13', '2019-07-29 12:30:13'),
(495, 'web_site_translations', 'text', 52, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Приоритетные программы</p>\n</body>\n</html>', '2019-07-29 12:30:13', '2019-07-29 12:30:13'),
(496, 'web_site_translations', 'page_name', 53, 'en', 'Sidebar', '2019-07-29 12:30:43', '2019-07-29 12:30:43'),
(497, 'web_site_translations', 'text', 53, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>National projects</p>\n</body>\n</html>', '2019-07-29 12:30:43', '2019-07-29 12:30:43'),
(498, 'web_site_translations', 'page_name', 53, 'ru', 'Sidebar', '2019-07-29 12:31:10', '2019-07-29 12:31:10'),
(499, 'web_site_translations', 'text', 53, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Национальные программы</p>\n</body>\n</html>', '2019-07-29 12:31:10', '2019-07-29 12:31:10'),
(500, 'web_site_translations', 'page_name', 54, 'en', 'Sidebar', '2019-07-29 12:32:20', '2019-07-29 12:32:20'),
(501, 'web_site_translations', 'page_name', 54, 'ru', 'Sidebar', '2019-07-29 12:32:20', '2019-07-29 12:32:20'),
(502, 'web_site_translations', 'text', 54, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>International collaboration</p>\n</body>\n</html>', '2019-07-29 12:32:20', '2019-07-29 12:32:20'),
(503, 'web_site_translations', 'text', 54, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Международное сотрудничество</p>\n</body>\n</html>', '2019-07-29 12:32:20', '2019-07-29 12:32:20'),
(504, 'web_site_translations', 'page_name', 55, 'en', 'Sidebar', '2019-07-29 12:33:25', '2019-07-29 12:33:25'),
(505, 'web_site_translations', 'page_name', 55, 'ru', 'Sidebar', '2019-07-29 12:33:25', '2019-07-29 12:33:25'),
(506, 'web_site_translations', 'text', 55, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Screening</p>\n</body>\n</html>', '2019-07-29 12:33:25', '2019-07-29 12:33:25'),
(507, 'web_site_translations', 'text', 55, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>скрининг</p>\n</body>\n</html>', '2019-07-29 12:33:25', '2019-07-29 12:33:25'),
(508, 'web_site_translations', 'page_name', 56, 'en', 'Sidebar', '2019-07-29 12:34:22', '2019-07-29 12:34:22'),
(509, 'web_site_translations', 'page_name', 56, 'ru', 'Sidebar', '2019-07-29 12:34:22', '2019-07-29 12:34:22'),
(510, 'web_site_translations', 'text', 56, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Anti-corruption measures</p>\n</body>\n</html>', '2019-07-29 12:34:22', '2019-07-29 12:34:22'),
(511, 'web_site_translations', 'text', 56, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Мероприятия направленные против коррупции</p>\n</body>\n</html>', '2019-07-29 12:34:22', '2019-07-29 12:34:22'),
(512, 'web_site_translations', 'page_name', 57, 'en', 'Sidebar', '2019-07-29 12:36:07', '2019-07-29 12:36:07'),
(513, 'web_site_translations', 'page_name', 57, 'ru', 'Sidebar', '2019-07-29 12:36:07', '2019-07-29 12:36:07'),
(514, 'web_site_translations', 'text', 57, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Services</p>\n</body>\n</html>', '2019-07-29 12:36:07', '2019-07-29 12:36:07'),
(515, 'web_site_translations', 'text', 57, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Службы</p>\n</body>\n</html>', '2019-07-29 12:36:07', '2019-07-29 12:36:07'),
(516, 'web_site_translations', 'page_name', 58, 'en', 'Sidebar', '2019-07-29 12:40:51', '2019-07-29 12:40:51'),
(517, 'web_site_translations', 'page_name', 58, 'ru', 'Sidebar', '2019-07-29 12:40:51', '2019-07-29 12:40:51'),
(518, 'web_site_translations', 'text', 58, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Licensing, lists of documents and application forms</p>\n</body>\n</html>', '2019-07-29 12:40:51', '2019-07-29 12:40:51'),
(519, 'web_site_translations', 'text', 58, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Лицензирование, Перечни документов и формы заявок</p>\n</body>\n</html>', '2019-07-29 12:40:51', '2019-07-29 12:40:51'),
(520, 'web_site_translations', 'page_name', 59, 'en', 'Sidebar', '2019-07-29 12:42:30', '2019-07-29 12:42:30'),
(521, 'web_site_translations', 'page_name', 59, 'ru', 'Sidebar', '2019-07-29 12:42:30', '2019-07-29 12:42:30'),
(522, 'web_site_translations', 'text', 59, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Advertisment permission</p>\n</body>\n</html>', '2019-07-29 12:42:30', '2019-07-29 12:42:30'),
(523, 'web_site_translations', 'text', 59, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Разрешение на рекламу</p>\n</body>\n</html>', '2019-07-29 12:42:30', '2019-07-29 12:42:30'),
(524, 'web_site_translations', 'page_name', 60, 'en', 'Sidebar', '2019-07-29 12:44:29', '2019-07-29 12:44:29'),
(525, 'web_site_translations', 'page_name', 60, 'ru', 'Sidebar', '2019-07-29 12:44:29', '2019-07-29 12:44:29'),
(526, 'web_site_translations', 'text', 60, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Social package</p>\n</body>\n</html>', '2019-07-29 12:44:29', '2019-07-29 12:44:29'),
(527, 'web_site_translations', 'text', 60, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Социальный пакет</p>\n</body>\n</html>', '2019-07-29 12:44:29', '2019-07-29 12:44:29'),
(528, 'web_site_translations', 'page_name', 61, 'en', 'Sidebar', '2019-07-29 12:45:41', '2019-07-29 12:45:41'),
(529, 'web_site_translations', 'page_name', 61, 'ru', 'Sidebar', '2019-07-29 12:45:41', '2019-07-29 12:45:41'),
(530, 'web_site_translations', 'text', 61, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Reception / Order, List, Results</p>\n</body>\n</html>', '2019-07-29 12:45:41', '2019-07-31 04:27:16'),
(531, 'web_site_translations', 'text', 61, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Прием / Заказ, Список, Результаты</p>\n</body>\n</html>', '2019-07-29 12:45:41', '2019-07-31 04:27:16'),
(532, 'web_site_translations', 'page_name', 62, 'en', 'Sidebar', '2019-07-29 12:46:48', '2019-07-29 12:46:48'),
(533, 'web_site_translations', 'page_name', 62, 'ru', 'Sidebar', '2019-07-29 12:46:48', '2019-07-29 12:46:48'),
(534, 'web_site_translations', 'text', 62, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Frequently asked Questions</p>\n</body>\n</html>', '2019-07-29 12:46:48', '2019-07-29 12:46:48'),
(535, 'web_site_translations', 'text', 62, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Часто задаваемые вопросы</p>\n</body>\n</html>', '2019-07-29 12:46:48', '2019-07-29 12:46:48'),
(536, 'web_site_translations', 'page_name', 63, 'en', 'Sidebar', '2019-07-29 12:47:51', '2019-07-29 12:47:51'),
(537, 'web_site_translations', 'page_name', 63, 'ru', 'Sidebar', '2019-07-29 12:47:51', '2019-07-29 12:47:51'),
(538, 'web_site_translations', 'text', 63, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Links</p>\n</body>\n</html>', '2019-07-29 12:47:51', '2019-07-29 12:47:51'),
(539, 'web_site_translations', 'text', 63, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ссылки</p>\n</body>\n</html>', '2019-07-29 12:47:51', '2019-07-29 12:47:51'),
(540, 'web_site_translations', 'page_name', 64, 'en', 'Sidebar', '2019-07-29 12:48:52', '2019-07-29 12:48:52'),
(541, 'web_site_translations', 'page_name', 64, 'ru', 'Sidebar', '2019-07-29 12:48:52', '2019-07-29 12:48:52'),
(542, 'web_site_translations', 'text', 64, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Your right</p>\n</body>\n</html>', '2019-07-29 12:48:52', '2019-07-29 12:48:52'),
(543, 'web_site_translations', 'text', 64, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Твоё право</p>\n</body>\n</html>', '2019-07-29 12:48:52', '2019-07-29 12:48:52'),
(544, 'web_site_translations', 'page_name', 65, 'en', 'Contact Us', '2019-07-30 04:44:43', '2019-07-30 04:44:43'),
(545, 'web_site_translations', 'page_name', 65, 'ru', 'Contact Us', '2019-07-30 04:44:43', '2019-07-30 04:44:43'),
(546, 'web_site_translations', 'text', 65, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Delete</p>\n</body>\n</html>', '2019-07-30 04:44:43', '2019-07-30 04:44:43'),
(547, 'web_site_translations', 'text', 65, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>удалять</p>\n</body>\n</html>', '2019-07-30 04:44:43', '2019-07-30 04:44:43'),
(548, 'web_site_translations', 'page_name', 66, 'en', 'Contact Us', '2019-07-30 04:45:55', '2019-07-30 04:45:55'),
(549, 'web_site_translations', 'page_name', 66, 'ru', 'Contact Us', '2019-07-30 04:45:55', '2019-07-30 04:45:55'),
(550, 'web_site_translations', 'text', 66, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Send</p>\n</body>\n</html>', '2019-07-30 04:45:55', '2019-07-30 04:45:55'),
(551, 'web_site_translations', 'text', 66, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>послать</p>\n</body>\n</html>', '2019-07-30 04:45:55', '2019-07-30 04:45:55'),
(552, 'web_site_translations', 'page_name', 67, 'en', 'Home', '2019-07-30 04:47:48', '2019-07-30 04:47:48'),
(553, 'web_site_translations', 'page_name', 67, 'ru', 'Home', '2019-07-30 04:47:48', '2019-07-30 04:47:48'),
(554, 'web_site_translations', 'text', 67, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>More</p>\n</body>\n</html>', '2019-07-30 04:47:48', '2019-07-30 04:47:48'),
(555, 'web_site_translations', 'text', 67, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Больше</p>\n</body>\n</html>', '2019-07-30 04:47:48', '2019-07-30 04:47:48'),
(556, 'web_site_translations', 'page_name', 68, 'en', 'Legal-Acts', '2019-07-30 04:50:45', '2019-07-30 04:50:45'),
(557, 'web_site_translations', 'page_name', 68, 'ru', 'Legal Acts', '2019-07-30 04:50:45', '2019-07-30 04:50:45'),
(558, 'web_site_translations', 'text', 68, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Type</p>\n</body>\n</html>', '2019-07-30 04:50:45', '2019-07-30 04:50:45'),
(559, 'web_site_translations', 'text', 68, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Тип</p>\n</body>\n</html>', '2019-07-30 04:50:45', '2019-07-30 04:50:45'),
(560, 'web_site_translations', 'page_name', 69, 'en', 'Legal Acts', '2019-07-30 04:51:36', '2019-07-30 04:51:36'),
(561, 'web_site_translations', 'page_name', 69, 'ru', 'Legal Acts', '2019-07-30 04:51:36', '2019-07-30 04:51:36'),
(562, 'web_site_translations', 'text', 69, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>All</p>\n</body>\n</html>', '2019-07-30 04:51:36', '2019-07-30 04:51:36'),
(563, 'web_site_translations', 'text', 69, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Все</p>\n</body>\n</html>', '2019-07-30 04:51:36', '2019-07-30 04:51:36'),
(564, 'web_site_translations', 'page_name', 70, 'en', 'Legal Acts', '2019-07-30 04:53:28', '2019-07-30 04:53:28'),
(565, 'web_site_translations', 'page_name', 70, 'ru', 'Legal Acts', '2019-07-30 04:53:28', '2019-07-30 04:53:28'),
(566, 'web_site_translations', 'text', 70, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Date</p>\n</body>\n</html>', '2019-07-30 04:53:28', '2019-07-30 04:53:28'),
(567, 'web_site_translations', 'text', 70, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Дата</p>\n</body>\n</html>', '2019-07-30 04:53:28', '2019-07-30 04:53:28'),
(568, 'web_site_translations', 'page_name', 71, 'en', 'Legal Acts', '2019-07-30 04:57:22', '2019-07-30 04:57:22'),
(569, 'web_site_translations', 'page_name', 71, 'ru', 'Legal Acts', '2019-07-30 04:57:22', '2019-07-30 04:57:22'),
(570, 'web_site_translations', 'text', 71, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>File Name</p>\n</body>\n</html>', '2019-07-30 04:57:22', '2019-07-30 04:57:22'),
(571, 'web_site_translations', 'text', 71, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Имя файла</p>\n</body>\n</html>', '2019-07-30 04:57:22', '2019-07-30 04:57:22'),
(572, 'web_site_translations', 'page_name', 72, 'en', 'Legal Acts', '2019-07-30 05:01:00', '2019-07-30 05:01:00'),
(573, 'web_site_translations', 'page_name', 72, 'ru', 'Legal Acts', '2019-07-30 05:01:00', '2019-07-30 05:01:00'),
(574, 'web_site_translations', 'text', 72, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Search</p>\n</body>\n</html>', '2019-07-30 05:01:00', '2019-07-30 05:01:00'),
(575, 'web_site_translations', 'text', 72, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Поиск</p>\n</body>\n</html>', '2019-07-30 05:01:00', '2019-07-30 05:01:00'),
(576, 'web_site_translations', 'page_name', 73, 'en', 'Links', '2019-07-30 05:42:12', '2019-07-30 05:42:12'),
(577, 'web_site_translations', 'page_name', 73, 'ru', 'Links', '2019-07-30 05:42:12', '2019-07-30 05:42:12'),
(578, 'web_site_translations', 'text', 73, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Partners</p>\n</body>\n</html>', '2019-07-30 05:42:12', '2019-07-30 05:42:12'),
(579, 'web_site_translations', 'text', 73, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>партнеры</p>\n</body>\n</html>', '2019-07-30 05:42:12', '2019-07-30 05:42:12'),
(580, 'web_site_translations', 'page_name', 74, 'en', 'Links', '2019-07-30 05:43:45', '2019-07-30 05:43:45'),
(581, 'web_site_translations', 'page_name', 74, 'ru', 'Links', '2019-07-30 05:43:45', '2019-07-30 05:43:45'),
(582, 'web_site_translations', 'text', 74, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Non-Governmental Organizations</p>\n</body>\n</html>', '2019-07-30 05:43:45', '2019-07-30 05:43:45'),
(583, 'web_site_translations', 'text', 74, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Неправительственные организации</p>\n</body>\n</html>', '2019-07-30 05:43:45', '2019-07-30 05:43:45'),
(584, 'web_site_translations', 'page_name', 75, 'en', 'Links', '2019-07-30 05:46:17', '2019-07-30 05:46:17'),
(585, 'web_site_translations', 'page_name', 75, 'ru', 'Links', '2019-07-30 05:46:17', '2019-07-30 05:46:17'),
(586, 'web_site_translations', 'text', 75, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Children\'s charity organizations</p>\n</body>\n</html>', '2019-07-30 05:46:17', '2019-07-30 05:46:17'),
(587, 'web_site_translations', 'text', 75, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>детские благотворительные организации</p>\n</body>\n</html>', '2019-07-30 05:46:17', '2019-07-30 05:46:17'),
(588, 'web_site_translations', 'page_name', 76, 'en', 'Links', '2019-07-30 06:05:41', '2019-07-30 06:05:41'),
(589, 'web_site_translations', 'page_name', 76, 'ru', 'Links', '2019-07-30 06:05:41', '2019-07-30 06:05:41'),
(590, 'web_site_translations', 'text', 76, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ministries</p>\n</body>\n</html>', '2019-07-30 06:05:41', '2019-07-30 06:05:41'),
(591, 'web_site_translations', 'text', 76, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Министерства</p>\n</body>\n</html>', '2019-07-30 06:05:41', '2019-07-30 06:05:41'),
(592, 'web_site_translations', 'page_name', 77, 'en', 'Links', '2019-07-30 06:07:40', '2019-07-30 06:07:40'),
(593, 'web_site_translations', 'page_name', 77, 'ru', 'Links', '2019-07-30 06:07:40', '2019-07-30 06:07:40'),
(594, 'web_site_translations', 'text', 77, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Governmental bodies</p>\n</body>\n</html>', '2019-07-30 06:07:40', '2019-07-30 06:07:40'),
(595, 'web_site_translations', 'text', 77, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Правительственные органы</p>\n</body>\n</html>', '2019-07-30 06:07:40', '2019-07-30 06:07:40'),
(596, 'web_site_translations', 'page_name', 78, 'en', 'Links', '2019-07-30 06:08:49', '2019-07-30 06:08:49'),
(597, 'web_site_translations', 'page_name', 78, 'ru', 'Links', '2019-07-30 06:08:49', '2019-07-30 06:08:49'),
(598, 'web_site_translations', 'text', 78, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Other Links</p>\n</body>\n</html>', '2019-07-30 06:08:49', '2019-07-30 06:08:49'),
(599, 'web_site_translations', 'text', 78, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Другие ссылки</p>\n</body>\n</html>', '2019-07-30 06:08:49', '2019-07-30 06:08:49'),
(600, 'web_site_translations', 'page_name', 79, 'en', 'Links', '2019-07-30 06:10:35', '2019-07-30 06:10:35'),
(601, 'web_site_translations', 'page_name', 79, 'ru', 'Links', '2019-07-30 06:10:35', '2019-07-30 06:10:35'),
(602, 'web_site_translations', 'text', 79, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Regions</p>\n</body>\n</html>', '2019-07-30 06:10:35', '2019-07-30 06:10:35'),
(603, 'web_site_translations', 'text', 79, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>районы</p>\n</body>\n</html>', '2019-07-30 06:10:35', '2019-07-30 06:10:35'),
(604, 'web_site_translations', 'page_name', 80, 'en', 'Minister Page', '2019-07-30 06:13:40', '2019-07-30 06:13:40'),
(605, 'web_site_translations', 'page_name', 80, 'ru', 'Minister Page', '2019-07-30 06:13:40', '2019-07-30 06:13:40'),
(606, 'web_site_translations', 'text', 80, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Biography</p>\n</body>\n</html>', '2019-07-30 06:13:40', '2019-07-30 06:13:40'),
(607, 'web_site_translations', 'text', 80, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>биография</p>\n</body>\n</html>', '2019-07-30 06:13:40', '2019-07-30 06:13:40'),
(608, 'web_site_translations', 'page_name', 81, 'en', 'Minister Page', '2019-07-30 06:16:09', '2019-07-30 06:16:09'),
(609, 'web_site_translations', 'page_name', 81, 'ru', 'Minister Page', '2019-07-30 06:16:09', '2019-07-30 06:16:09'),
(610, 'web_site_translations', 'text', 81, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>question to the minister</p>\n</body>\n</html>', '2019-07-30 06:16:09', '2019-07-30 06:16:09'),
(611, 'web_site_translations', 'text', 81, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>вопрос к министру</p>\n</body>\n</html>', '2019-07-30 06:16:09', '2019-07-30 06:16:09'),
(612, 'web_site_translations', 'page_name', 82, 'en', 'Minister Page', '2019-07-30 06:18:08', '2019-07-30 06:18:08'),
(613, 'web_site_translations', 'page_name', 82, 'ru', 'Minister Page', '2019-07-30 06:18:09', '2019-07-30 06:18:09'),
(614, 'web_site_translations', 'text', 82, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>We look forward to your questions</p>\n</body>\n</html>', '2019-07-30 06:18:09', '2019-07-30 06:18:09'),
(615, 'web_site_translations', 'text', 82, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Мы с нетерпением ждем ваших вопросов</p>\n</body>\n</html>', '2019-07-30 06:18:09', '2019-07-30 06:18:09'),
(616, 'web_site_translations', 'page_name', 83, 'en', 'Public Council', '2019-07-30 06:26:22', '2019-07-30 06:26:22'),
(617, 'web_site_translations', 'page_name', 83, 'ru', 'Public Council', '2019-07-30 06:26:22', '2019-07-30 06:26:22'),
(618, 'web_site_translations', 'text', 83, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Staff and working procedures</p>\n</body>\n</html>', '2019-07-30 06:26:22', '2019-07-30 06:26:22'),
(619, 'web_site_translations', 'text', 83, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Состав и порядок работы</p>\n</body>\n</html>', '2019-07-30 06:26:22', '2019-07-30 06:26:22'),
(620, 'web_site_translations', 'page_name', 84, 'en', 'Public Council', '2019-07-30 06:27:40', '2019-07-30 06:27:40'),
(621, 'web_site_translations', 'page_name', 84, 'ru', 'Public Council', '2019-07-30 06:27:40', '2019-07-30 06:27:40'),
(622, 'web_site_translations', 'text', 84, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Sessions</p>\n</body>\n</html>', '2019-07-30 06:27:40', '2019-07-30 06:27:40'),
(623, 'web_site_translations', 'text', 84, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>сессий</p>\n</body>\n</html>', '2019-07-30 06:27:40', '2019-07-30 06:27:40'),
(624, 'web_site_translations', 'page_name', 85, 'en', 'Public Council', '2019-07-30 06:29:11', '2019-07-30 06:29:11'),
(625, 'web_site_translations', 'page_name', 85, 'ru', 'Public Council', '2019-07-30 06:29:11', '2019-07-30 06:29:11'),
(626, 'web_site_translations', 'text', 85, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Bids</p>\n</body>\n</html>', '2019-07-30 06:29:11', '2019-07-30 06:29:11'),
(627, 'web_site_translations', 'text', 85, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>предложения</p>\n</body>\n</html>', '2019-07-30 06:29:11', '2019-07-30 06:29:11'),
(628, 'web_site_translations', 'page_name', 86, 'en', 'Public Council', '2019-07-30 06:30:12', '2019-07-30 06:30:12'),
(629, 'web_site_translations', 'page_name', 86, 'ru', 'Public Council', '2019-07-30 06:30:12', '2019-07-30 06:30:12'),
(630, 'web_site_translations', 'text', 86, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Results</p>\n</body>\n</html>', '2019-07-30 06:30:12', '2019-07-30 06:30:12'),
(631, 'web_site_translations', 'text', 86, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Результаты</p>\n</body>\n</html>', '2019-07-30 06:30:12', '2019-07-30 06:30:12'),
(632, 'web_site_translations', 'page_name', 87, 'en', 'Announcement Individual', '2019-07-30 06:34:41', '2019-07-30 06:34:41'),
(633, 'web_site_translations', 'page_name', 87, 'ru', 'Announcement Individual', '2019-07-30 06:34:41', '2019-07-30 06:34:41'),
(634, 'web_site_translations', 'text', 87, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Announcement</p>\n</body>\n</html>', '2019-07-30 06:34:41', '2019-07-30 06:34:41'),
(635, 'web_site_translations', 'text', 87, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Объявление</p>\n</body>\n</html>', '2019-07-30 06:34:41', '2019-07-30 06:34:41'),
(636, 'web_site_translations', 'page_name', 88, 'en', 'Ministry Structure', '2019-07-30 06:46:30', '2019-07-30 06:46:30'),
(637, 'web_site_translations', 'page_name', 88, 'ru', 'Ministry Structure', '2019-07-30 06:46:30', '2019-07-30 06:46:30'),
(638, 'web_site_translations', 'text', 88, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>General Secretary</p>\n</body>\n</html>', '2019-07-30 06:46:30', '2019-07-30 06:46:30'),
(639, 'web_site_translations', 'text', 88, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Генеральный секретарь</p>\n</body>\n</html>', '2019-07-30 06:46:30', '2019-07-30 06:46:30'),
(640, 'web_site_translations', 'page_name', 89, 'en', 'Ministry Structure', '2019-07-30 06:47:53', '2019-07-30 06:47:53'),
(641, 'web_site_translations', 'page_name', 89, 'ru', 'Ministry Structure', '2019-07-30 06:47:53', '2019-07-30 06:47:53'),
(642, 'web_site_translations', 'text', 89, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Deputy Minister</p>\n</body>\n</html>', '2019-07-30 06:47:53', '2019-07-30 06:47:53'),
(643, 'web_site_translations', 'text', 89, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Заместитель министра</p>\n</body>\n</html>', '2019-07-30 06:47:53', '2019-07-30 06:47:53'),
(644, 'web_site_translations', 'page_name', 90, 'en', 'Ministry Structure', '2019-07-30 06:49:10', '2019-07-30 06:49:10'),
(645, 'web_site_translations', 'page_name', 90, 'ru', 'Ministry Structure', '2019-07-30 06:49:10', '2019-07-30 06:49:10'),
(646, 'web_site_translations', 'text', 90, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Minister Adviser</p>\n</body>\n</html>', '2019-07-30 06:49:10', '2019-07-30 06:49:10'),
(647, 'web_site_translations', 'text', 90, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Советник министра</p>\n</body>\n</html>', '2019-07-30 06:49:10', '2019-07-30 06:49:10'),
(648, 'web_site_translations', 'page_name', 91, 'en', 'Ministry Structure', '2019-07-30 06:52:14', '2019-07-30 06:52:14'),
(649, 'web_site_translations', 'page_name', 91, 'ru', 'Ministry Structure', '2019-07-30 06:52:14', '2019-07-30 06:52:14'),
(650, 'web_site_translations', 'text', 91, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Minister\'s Speaker</p>\n</body>\n</html>', '2019-07-30 06:52:14', '2019-07-30 06:52:14'),
(651, 'web_site_translations', 'text', 91, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Пресс-секретарь министра</p>\n</body>\n</html>', '2019-07-30 06:52:14', '2019-07-30 06:52:14'),
(652, 'web_site_translations', 'page_name', 92, 'en', 'Ministry Structure', '2019-07-30 06:53:32', '2019-07-30 06:53:32'),
(653, 'web_site_translations', 'page_name', 92, 'ru', 'Ministry Structure', '2019-07-30 06:53:32', '2019-07-30 06:53:32'),
(654, 'web_site_translations', 'text', 92, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Assistant to Minister</p>\n</body>\n</html>', '2019-07-30 06:53:32', '2019-07-30 06:53:32'),
(655, 'web_site_translations', 'text', 92, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Помощник министра</p>\n</body>\n</html>', '2019-07-30 06:53:32', '2019-07-30 06:53:32'),
(656, 'web_site_translations', 'page_name', 93, 'en', 'Ministry Structure', '2019-07-30 06:56:05', '2019-07-30 06:56:05'),
(657, 'web_site_translations', 'page_name', 93, 'ru', 'Ministry Structure', '2019-07-30 06:56:05', '2019-07-30 06:56:05'),
(658, 'web_site_translations', 'text', 93, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Secretary General Deputy</p>\n</body>\n</html>', '2019-07-30 06:56:05', '2019-07-30 06:56:05'),
(659, 'web_site_translations', 'text', 93, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Заместитель генерального секретаря</p>\n</body>\n</html>', '2019-07-30 06:56:05', '2019-07-30 06:56:05'),
(660, 'web_site_translations', 'page_name', 94, 'en', 'Ministry Structure', '2019-07-30 06:57:55', '2019-07-30 06:57:55'),
(661, 'web_site_translations', 'page_name', 94, 'ru', 'Ministry Structure', '2019-07-30 06:57:55', '2019-07-30 06:57:55'),
(662, 'web_site_translations', 'text', 94, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Medical care policy assistance</p>\n</body>\n</html>', '2019-07-30 06:57:55', '2019-07-30 06:57:55'),
(663, 'web_site_translations', 'text', 94, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>медицинская помощь</p>\n</body>\n</html>', '2019-07-30 06:57:55', '2019-07-30 06:57:55'),
(664, 'web_site_translations', 'page_name', 95, 'en', 'Ministry Structure', '2019-07-30 06:59:36', '2019-07-30 06:59:36'),
(665, 'web_site_translations', 'page_name', 95, 'ru', 'Ministry Structure', '2019-07-30 06:59:36', '2019-07-30 06:59:36'),
(666, 'web_site_translations', 'text', 95, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Hospital Medical Assistance Policy</p>\n</body>\n</html>', '2019-07-30 06:59:36', '2019-07-30 06:59:36'),
(667, 'web_site_translations', 'text', 95, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент политики медицинской помощи больниц</p>\n</body>\n</html>', '2019-07-30 06:59:36', '2019-07-30 06:59:36'),
(668, 'web_site_translations', 'page_name', 96, 'en', 'Ministry Structure', '2019-07-30 07:01:41', '2019-07-30 07:01:41'),
(669, 'web_site_translations', 'page_name', 96, 'ru', 'Ministry Structure', '2019-07-30 07:01:41', '2019-07-30 07:01:41'),
(670, 'web_site_translations', 'text', 96, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Maternal and Child Health Protection</p>\n</body>\n</html>', '2019-07-30 07:01:41', '2019-07-30 07:01:41'),
(671, 'web_site_translations', 'text', 96, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент охраны здоровья матери и ребенка</p>\n</body>\n</html>', '2019-07-30 07:01:41', '2019-07-30 07:01:41'),
(672, 'web_site_translations', 'page_name', 97, 'en', 'Ministry Structure', '2019-07-30 07:03:30', '2019-07-30 07:03:30'),
(673, 'web_site_translations', 'page_name', 97, 'ru', 'Ministry Structure', '2019-07-30 07:03:30', '2019-07-30 07:03:30'),
(674, 'web_site_translations', 'text', 97, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Maternal and Reproductive Health Care</p>\n</body>\n</html>', '2019-07-30 07:03:30', '2019-07-30 07:03:30'),
(675, 'web_site_translations', 'text', 97, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент охраны материнства и репродуктивного здоровья</p>\n</body>\n</html>', '2019-07-30 07:03:30', '2019-07-30 07:03:30'),
(676, 'web_site_translations', 'page_name', 98, 'en', 'Ministry Structure', '2019-07-30 07:04:46', '2019-07-30 07:04:46'),
(677, 'web_site_translations', 'page_name', 98, 'ru', 'Ministry Structure', '2019-07-30 07:04:46', '2019-07-30 07:04:46'),
(678, 'web_site_translations', 'text', 98, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Child Health</p>\n</body>\n</html>', '2019-07-30 07:04:46', '2019-07-30 07:04:46'),
(679, 'web_site_translations', 'text', 98, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент детского здоровья</p>\n</body>\n</html>', '2019-07-30 07:04:46', '2019-07-30 07:04:46'),
(680, 'web_site_translations', 'page_name', 99, 'en', 'Ministry Structure', '2019-07-30 07:06:45', '2019-07-30 07:06:45'),
(681, 'web_site_translations', 'page_name', 99, 'ru', 'Ministry Structure', '2019-07-30 07:06:45', '2019-07-30 07:06:45'),
(682, 'web_site_translations', 'text', 99, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Drug Policy and Medical Technology</p>\n</body>\n</html>', '2019-07-30 07:06:45', '2019-07-30 07:06:45'),
(683, 'web_site_translations', 'text', 99, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент наркополитики и медицинской техники</p>\n</body>\n</html>', '2019-07-30 07:06:45', '2019-07-30 07:06:45'),
(684, 'web_site_translations', 'page_name', 100, 'en', 'Ministry Structure', '2019-07-30 07:08:20', '2019-07-30 07:08:20'),
(685, 'web_site_translations', 'page_name', 100, 'ru', 'Ministry Structure', '2019-07-30 07:08:20', '2019-07-30 07:08:20'),
(686, 'web_site_translations', 'text', 100, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Medicines Policy</p>\n</body>\n</html>', '2019-07-30 07:08:20', '2019-07-30 07:08:20'),
(687, 'web_site_translations', 'text', 100, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент лекарственной политики</p>\n</body>\n</html>', '2019-07-30 07:08:20', '2019-07-30 07:08:20'),
(688, 'web_site_translations', 'page_name', 101, 'en', 'Ministry Structure', '2019-07-30 07:10:08', '2019-07-30 07:10:08'),
(689, 'web_site_translations', 'page_name', 101, 'ru', 'Ministry Structure', '2019-07-30 07:10:08', '2019-07-30 07:10:08'),
(690, 'web_site_translations', 'text', 101, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Medical Technology and Humanitarian Assistance Coordination</p>\n</body>\n</html>', '2019-07-30 07:10:08', '2019-07-30 07:10:08'),
(691, 'web_site_translations', 'text', 101, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент медицинской техники и координации гуманитарной помощи</p>\n</body>\n</html>', '2019-07-30 07:10:08', '2019-07-30 07:10:08'),
(692, 'web_site_translations', 'page_name', 102, 'en', 'Ministry Structure', '2019-07-30 07:11:17', '2019-07-30 07:11:17'),
(693, 'web_site_translations', 'page_name', 102, 'ru', 'Ministry Structure', '2019-07-30 07:11:17', '2019-07-30 07:11:17'),
(694, 'web_site_translations', 'text', 102, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Personnel Management</p>\n</body>\n</html>', '2019-07-30 07:11:17', '2019-07-30 07:11:17');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(695, 'web_site_translations', 'text', 102, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Управление персоналом</p>\n</body>\n</html>', '2019-07-30 07:11:17', '2019-07-30 07:11:17'),
(696, 'web_site_translations', 'page_name', 103, 'en', 'Ministry Structure', '2019-07-30 07:12:40', '2019-07-30 07:12:40'),
(697, 'web_site_translations', 'page_name', 103, 'ru', 'Ministry Structure', '2019-07-30 07:12:40', '2019-07-30 07:12:40'),
(698, 'web_site_translations', 'text', 103, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of legacy</p>\n</body>\n</html>', '2019-07-30 07:12:40', '2019-07-30 07:12:40'),
(699, 'web_site_translations', 'text', 103, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Юридический отдел</p>\n</body>\n</html>', '2019-07-30 07:12:40', '2019-07-30 07:12:40'),
(700, 'web_site_translations', 'page_name', 104, 'en', 'Ministry Structure', '2019-07-30 07:14:23', '2019-07-30 07:14:23'),
(701, 'web_site_translations', 'page_name', 104, 'ru', 'Ministry Structure', '2019-07-30 07:14:23', '2019-07-30 07:14:23'),
(702, 'web_site_translations', 'text', 104, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Division of Legislation Improvement and Analysis</p>\n</body>\n</html>', '2019-07-30 07:14:23', '2019-07-30 07:14:23'),
(703, 'web_site_translations', 'text', 104, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Отдел совершенствования и анализа законодательства</p>\n</body>\n</html>', '2019-07-30 07:14:23', '2019-07-30 07:14:23'),
(704, 'web_site_translations', 'page_name', 105, 'en', 'Ministry Structure', '2019-07-30 07:15:34', '2019-07-30 07:15:34'),
(705, 'web_site_translations', 'page_name', 105, 'ru', 'Ministry Structure', '2019-07-30 07:15:34', '2019-07-30 07:15:34'),
(706, 'web_site_translations', 'text', 105, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Legal Assistance Division</p>\n</body>\n</html>', '2019-07-30 07:15:34', '2019-07-30 07:15:34'),
(707, 'web_site_translations', 'text', 105, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Отдел юридической помощи</p>\n</body>\n</html>', '2019-07-30 07:15:34', '2019-07-30 07:15:34'),
(708, 'web_site_translations', 'page_name', 106, 'en', 'Ministry Structure', '2019-07-30 07:17:17', '2019-07-30 07:17:17'),
(709, 'web_site_translations', 'page_name', 106, 'ru', 'Ministry Structure', '2019-07-30 07:17:17', '2019-07-30 07:17:17'),
(710, 'web_site_translations', 'text', 106, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Public Health</p>\n</body>\n</html>', '2019-07-30 07:17:17', '2019-07-30 07:17:17'),
(711, 'web_site_translations', 'text', 106, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент общественного здравоохранения</p>\n</body>\n</html>', '2019-07-30 07:17:17', '2019-07-30 07:17:17'),
(712, 'web_site_translations', 'page_name', 107, 'en', 'Ministry Structure', '2019-07-30 07:18:43', '2019-07-30 07:18:43'),
(713, 'web_site_translations', 'page_name', 107, 'ru', 'Ministry Structure', '2019-07-30 07:18:43', '2019-07-30 07:18:43'),
(714, 'web_site_translations', 'text', 107, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Emergency Situations and Mobilization</p>\n</body>\n</html>', '2019-07-30 07:18:43', '2019-07-30 07:18:43'),
(715, 'web_site_translations', 'text', 107, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент по чрезвычайным ситуациям и мобилизации</p>\n</body>\n</html>', '2019-07-30 07:18:43', '2019-07-30 07:18:43'),
(716, 'web_site_translations', 'page_name', 108, 'en', 'Ministry Structure', '2019-07-30 07:22:05', '2019-07-30 07:22:05'),
(717, 'web_site_translations', 'page_name', 108, 'ru', 'Ministry Structure', '2019-07-30 07:22:05', '2019-07-30 07:22:05'),
(718, 'web_site_translations', 'text', 108, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Foreign Relations Department</p>\n</body>\n</html>', '2019-07-30 07:22:05', '2019-07-30 07:22:05'),
(719, 'web_site_translations', 'text', 108, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Отдел внешних связей</p>\n</body>\n</html>', '2019-07-30 07:22:05', '2019-07-30 07:22:05'),
(720, 'web_site_translations', 'page_name', 109, 'en', 'Ministry Structure', '2019-07-30 07:23:15', '2019-07-30 07:23:15'),
(721, 'web_site_translations', 'page_name', 109, 'ru', 'Ministry Structure', '2019-07-30 07:23:15', '2019-07-30 07:23:15'),
(722, 'web_site_translations', 'text', 109, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>public relations department</p>\n</body>\n</html>', '2019-07-30 07:23:15', '2019-07-30 07:23:15'),
(723, 'web_site_translations', 'text', 109, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>отдел по связям с общественностью</p>\n</body>\n</html>', '2019-07-30 07:23:15', '2019-07-30 07:23:15'),
(724, 'web_site_translations', 'page_name', 110, 'en', 'Ministry Structure', '2019-07-30 07:24:36', '2019-07-30 07:24:36'),
(725, 'web_site_translations', 'page_name', 110, 'ru', 'Ministry Structure', '2019-07-30 07:24:36', '2019-07-30 07:24:36'),
(726, 'web_site_translations', 'text', 110, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Department of Finance and Economics</p>\n</body>\n</html>', '2019-07-30 07:24:36', '2019-07-30 07:24:36'),
(727, 'web_site_translations', 'text', 110, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент финансов и экономики</p>\n</body>\n</html>', '2019-07-30 07:24:36', '2019-07-30 07:24:36'),
(728, 'web_site_translations', 'page_name', 111, 'en', 'Ministry Structure', '2019-07-30 07:25:40', '2019-07-30 07:25:40'),
(729, 'web_site_translations', 'page_name', 111, 'ru', 'Ministry Structure', '2019-07-30 07:25:40', '2019-07-30 07:25:40'),
(730, 'web_site_translations', 'text', 111, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Accounting department</p>\n</body>\n</html>', '2019-07-30 07:25:40', '2019-07-30 07:25:40'),
(731, 'web_site_translations', 'text', 111, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>бухгалтерия</p>\n</body>\n</html>', '2019-07-30 07:25:40', '2019-07-30 07:25:40'),
(732, 'web_site_translations', 'page_name', 112, 'en', 'Ministry Structure', '2019-07-30 07:26:49', '2019-07-30 07:26:49'),
(733, 'web_site_translations', 'page_name', 112, 'ru', 'Ministry Structure', '2019-07-30 07:26:49', '2019-07-30 07:26:49'),
(734, 'web_site_translations', 'text', 112, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Internal Audit Department</p>\n</body>\n</html>', '2019-07-30 07:26:49', '2019-07-30 07:26:49'),
(735, 'web_site_translations', 'text', 112, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Департамент внутреннего аудита</p>\n</body>\n</html>', '2019-07-30 07:26:49', '2019-07-30 07:26:49'),
(736, 'web_site_translations', 'page_name', 113, 'en', 'Ministry Structure', '2019-07-30 07:27:37', '2019-07-30 07:27:37'),
(737, 'web_site_translations', 'page_name', 113, 'ru', 'Ministry Structure', '2019-07-30 07:27:37', '2019-07-30 07:27:37'),
(738, 'web_site_translations', 'text', 113, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>first section</p>\n</body>\n</html>', '2019-07-30 07:27:37', '2019-07-30 07:27:37'),
(739, 'web_site_translations', 'text', 113, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Первый раздел</p>\n</body>\n</html>', '2019-07-30 07:27:37', '2019-07-30 07:27:37'),
(740, 'web_site_translations', 'page_name', 114, 'en', 'Ministry Structure', '2019-07-30 07:28:31', '2019-07-30 07:28:31'),
(741, 'web_site_translations', 'page_name', 114, 'ru', 'Ministry Structure', '2019-07-30 07:28:31', '2019-07-30 07:28:31'),
(742, 'web_site_translations', 'text', 114, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>secretariat</p>\n</body>\n</html>', '2019-07-30 07:28:31', '2019-07-30 07:28:31'),
(743, 'web_site_translations', 'text', 114, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>секретариат</p>\n</body>\n</html>', '2019-07-30 07:28:31', '2019-07-30 07:28:31'),
(744, 'web_site_translations', 'page_name', 115, 'en', 'Ministry Structure', '2019-07-30 07:29:39', '2019-07-30 07:29:39'),
(745, 'web_site_translations', 'page_name', 115, 'ru', 'Ministry Structure', '2019-07-30 07:29:39', '2019-07-30 07:29:39'),
(746, 'web_site_translations', 'text', 115, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Licensing agency</p>\n</body>\n</html>', '2019-07-30 07:29:39', '2019-07-30 07:29:39'),
(747, 'web_site_translations', 'text', 115, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>лицензирующее агентство</p>\n</body>\n</html>', '2019-07-30 07:29:39', '2019-07-30 07:29:39'),
(748, 'web_site_translations', 'page_name', 116, 'en', 'Ministry Structure', '2019-07-30 07:30:58', '2019-07-30 07:30:58'),
(749, 'web_site_translations', 'page_name', 116, 'ru', 'Ministry Structure', '2019-07-30 07:30:58', '2019-07-30 07:30:58'),
(750, 'web_site_translations', 'text', 116, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>State Health Agency</p>\n</body>\n</html>', '2019-07-30 07:30:58', '2019-07-30 07:30:58'),
(751, 'web_site_translations', 'text', 116, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Государственное агентство здравоохранения</p>\n</body>\n</html>', '2019-07-30 07:30:58', '2019-07-30 07:30:58'),
(752, 'web_site_translations', 'page_name', 117, 'en', 'Minister Page', '2019-07-30 10:59:41', '2019-07-30 10:59:41'),
(753, 'web_site_translations', 'page_name', 117, 'ru', 'Minister Page', '2019-07-30 10:59:41', '2019-07-30 10:59:41'),
(754, 'web_site_translations', 'text', 117, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Message</p>\n</body>\n</html>', '2019-07-30 10:59:41', '2019-07-30 10:59:41'),
(755, 'web_site_translations', 'text', 117, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>сообщение</p>\n</body>\n</html>', '2019-07-30 10:59:41', '2019-07-30 10:59:41'),
(756, 'web_site_translations', 'page_name', 118, 'en', 'Placeholder', '2019-07-31 05:06:23', '2019-07-31 05:06:23'),
(757, 'web_site_translations', 'page_name', 118, 'ru', 'Placeholder', '2019-07-31 05:06:23', '2019-07-31 05:06:23'),
(758, 'web_site_translations', 'text', 118, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Name</p>\n</body>\n</html>', '2019-07-31 05:06:23', '2019-07-31 05:06:23'),
(759, 'web_site_translations', 'text', 118, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>имя</p>\n</body>\n</html>', '2019-07-31 05:06:23', '2019-07-31 05:06:23'),
(760, 'web_site_translations', 'page_name', 119, 'en', 'Placeholder', '2019-07-31 05:09:37', '2019-07-31 05:09:37'),
(761, 'web_site_translations', 'page_name', 119, 'ru', 'Placeholder', '2019-07-31 05:09:37', '2019-07-31 05:09:37'),
(762, 'web_site_translations', 'text', 119, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Name surname</p>\n</body>\n</html>', '2019-07-31 05:09:37', '2019-07-31 05:09:37'),
(763, 'web_site_translations', 'text', 119, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Имя Фамилия</p>\n</body>\n</html>', '2019-07-31 05:09:37', '2019-07-31 05:09:37'),
(764, 'web_site_translations', 'page_name', 120, 'en', 'Placeholder', '2019-07-31 05:11:58', '2019-07-31 05:11:58'),
(765, 'web_site_translations', 'page_name', 120, 'ru', 'Placeholder', '2019-07-31 05:11:58', '2019-07-31 05:11:58'),
(766, 'web_site_translations', 'text', 120, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Theme</p>\n</body>\n</html>', '2019-07-31 05:11:58', '2019-07-31 05:11:58'),
(767, 'web_site_translations', 'text', 120, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>тема</p>\n</body>\n</html>', '2019-07-31 05:11:58', '2019-07-31 05:11:58'),
(768, 'web_site_translations', 'page_name', 121, 'en', 'Placeholder', '2019-07-31 05:14:16', '2019-07-31 05:14:16'),
(769, 'web_site_translations', 'page_name', 121, 'ru', 'Placeholder', '2019-07-31 05:14:16', '2019-07-31 05:14:16'),
(770, 'web_site_translations', 'text', 121, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Message</p>\n</body>\n</html>', '2019-07-31 05:14:16', '2019-07-31 05:14:16'),
(771, 'web_site_translations', 'text', 121, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>сообщение</p>\n</body>\n</html>', '2019-07-31 05:14:16', '2019-07-31 05:14:16'),
(772, 'data_types', 'display_name_singular', 92, 'ru', 'Web Site Translation', '2019-08-01 04:02:46', '2019-08-01 04:02:46'),
(773, 'data_types', 'display_name_plural', 92, 'ru', 'Web Site Translations', '2019-08-01 04:02:46', '2019-08-01 04:02:46'),
(774, 'data_types', 'display_name_singular', 93, 'en', 'Social', '2019-08-01 04:31:50', '2019-08-01 04:31:50'),
(775, 'data_types', 'display_name_plural', 93, 'en', 'Socials', '2019-08-01 04:31:50', '2019-08-01 04:31:50'),
(776, 'web_site_translations', 'page_name', 122, 'en', 'Search', '2019-08-08 13:43:54', '2019-08-08 13:43:54'),
(777, 'web_site_translations', 'page_name', 122, 'ru', 'Search', '2019-08-08 13:43:54', '2019-08-08 13:43:54'),
(778, 'web_site_translations', 'text', 122, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>No result found!!!</p>\n</body>\n</html>', '2019-08-08 13:43:54', '2019-08-08 13:43:54'),
(779, 'web_site_translations', 'text', 122, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Результатов не найдено!!!</p>\n</body>\n</html>', '2019-08-08 13:43:54', '2019-08-08 13:43:54'),
(780, 'web_site_translations', 'page_name', 123, 'en', 'Search', '2019-08-08 13:48:52', '2019-08-08 13:48:52'),
(781, 'web_site_translations', 'page_name', 123, 'ru', 'Search', '2019-08-08 13:48:52', '2019-08-08 13:48:52'),
(782, 'web_site_translations', 'text', 123, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>You should enter more than two characters!!!</p>\n</body>\n</html>', '2019-08-08 13:48:52', '2019-08-08 13:48:52'),
(783, 'web_site_translations', 'text', 123, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Вы должны ввести более двух символов !!!</p>\n</body>\n</html>', '2019-08-08 13:48:52', '2019-08-08 13:48:52'),
(784, 'web_site_translations', 'page_name', 124, 'en', 'Email Template', '2019-08-09 12:30:58', '2019-08-09 12:30:58'),
(785, 'web_site_translations', 'page_name', 124, 'ru', 'Email Template', '2019-08-09 12:30:58', '2019-08-09 12:30:58'),
(786, 'web_site_translations', 'text', 124, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Subject</p>\n</body>\n</html>', '2019-08-09 12:30:58', '2019-08-09 12:30:58'),
(787, 'web_site_translations', 'text', 124, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>тема</p>\n</body>\n</html>', '2019-08-09 12:30:58', '2019-08-09 12:30:58'),
(788, 'web_site_translations', 'page_name', 125, 'en', 'Email Template', '2019-08-09 12:34:51', '2019-08-09 12:34:51'),
(789, 'web_site_translations', 'page_name', 125, 'ru', 'Email Template', '2019-08-09 12:34:51', '2019-08-09 12:34:51'),
(790, 'web_site_translations', 'text', 125, 'en', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Message</p>\n</body>\n</html>', '2019-08-09 12:34:51', '2019-08-09 12:34:51'),
(791, 'web_site_translations', 'text', 125, 'ru', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Сообщение</p>\n</body>\n</html>', '2019-08-09 12:34:51', '2019-08-09 12:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$1FUAdyDy0Z//7bBae1erNepySXNN6XWbeOVgaQb6/W/Z.4SnVFm.u', 'DMW7orkeoprvk40qgxKdWBhn6acJ4eBZAlWp1e2R4wl8bZMbOrrNe8yAHOKV', '{\"locale\":\"en\"}', '2019-06-04 08:24:51', '2019-07-19 08:29:54'),
(2, 2, 'User', 'user@mail.com', 'users/default.png', '$2y$10$NtgTwDgkt5DJBwizshRHVe1pBmtLQSdl9qeWw4JEBiwxUie/3HUgO', 'mV2sJOWVyPcPmfMpxAaP0kxHLXgyMpjbUAFLgxdOoKurwdVHCnOZWQOkC9WK', '{\"locale\":\"en\"}', '2019-06-06 05:09:50', '2019-06-06 05:09:50');

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
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `date`, `video_url`, `created_at`, `updated_at`, `order`) VALUES
(4, 'Հունիսի 21` բուժաշխատողի օր', '2019-06-21', 'https://youtu.be/1D-yoMu6Vfo', '2019-06-24 08:18:42', '2019-06-24 08:18:42', 1),
(5, 'Անվտանգ արյուն բոլորի համար', '2019-06-13', 'https://youtu.be/RaoGxo1Ons8', '2019-06-24 08:20:14', '2019-06-24 08:20:14', 1),
(6, 'Ամեն ինչ երեխաների առողջության համար', '2019-06-06', 'https://youtu.be/27QTGaGioss', '2019-06-24 08:21:37', '2019-06-24 08:21:37', 1),
(7, 'Ամեն ինչ երեխաների առողջության համար', '2019-02-05', 'https://youtu.be/wOXZM9Bzhdw', '2019-06-27 07:00:12', '2019-06-27 07:00:12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `web_site_translations`
--

CREATE TABLE `web_site_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_site_translations`
--

INSERT INTO `web_site_translations` (`id`, `page_name`, `page_slug`, `text`, `text_slug`, `created_at`, `updated_at`) VALUES
(1, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հասցե</p>\n</body>\n</html>', 'address', '2019-07-26 04:51:18', '2019-07-26 07:00:53'),
(2, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Երևան 0010,</p>\n<p>Կառավարական տուն N 3</p>\n</body>\n</html>', 'location', '2019-07-26 05:11:21', '2019-07-30 12:33:21'),
(3, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Էլ․ փոստ</p>\n</body>\n</html>', 'email', '2019-07-26 07:00:35', '2019-07-30 12:34:26'),
(4, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Տեղեկատու հեռախոս</p>\n</body>\n</html>', 'phone-number', '2019-07-26 07:07:23', '2019-07-30 12:34:41'),
(5, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Տեղեկատվության պատասխանատու</p>\n</body>\n</html>', 'info-responsible', '2019-07-26 07:13:20', '2019-07-30 12:34:53'),
(6, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>կամ</p>\n</body>\n</html>', 'or', '2019-07-26 08:39:23', '2019-07-30 12:35:05'),
(7, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Թարմացվել է</p>\n</body>\n</html>', 'last-update', '2019-07-26 08:42:41', '2019-07-30 12:35:15'),
(8, 'Footer', 'footer', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հեղինակային իրավունքները պաշտպանված են:</p>\n</body>\n</html>', 'rights-reserved', '2019-07-26 08:54:00', '2019-07-30 12:35:25'),
(9, 'Header', 'header', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ՀԱՅԱՍՏԱՆԻ ՀԱՆՐԱՊԵՏՈւԹՅԱՆ</p>\n<p>ԱՌՈՂՋԱՊԱՀՈւԹՅԱՆ ՆԱԽԱՐԱՐՈւԹՅՈւՆ</p>\n</body>\n</html>', 'ramoh', '2019-07-29 05:47:21', '2019-07-30 12:24:47'),
(10, 'Header', 'header', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Գլխավոր</p>\n</body>\n</html>', 'header_home', '2019-07-29 05:50:26', '2019-07-30 12:29:33'),
(11, 'Header', 'header', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հետադարձ կապ</p>\n</body>\n</html>', 'header_contact-us', '2019-07-29 05:59:52', '2019-07-30 12:30:04'),
(12, 'Header', 'header', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Նախարար</p>\n</body>\n</html>', 'header_minister', '2019-07-29 06:05:31', '2019-07-30 12:27:13'),
(13, 'Header', 'header', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Իրավական ակտեր</p>\n</body>\n</html>', 'header_legal-acts', '2019-07-29 06:07:49', '2019-07-30 12:30:30'),
(14, 'Subscription', 'subscription', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>բաժանորդագրվել</p>\n</body>\n</html>', 'sub_subscribe', '2019-07-29 07:59:50', '2019-07-30 12:36:19'),
(15, 'Subscription', 'subscription', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Կարդացեք մեր գաղտնիությունը այստեղ</p>\n</body>\n</html>', 'sub_privacy', '2019-07-29 08:02:56', '2019-07-30 12:36:10'),
(16, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>նախարարություն</p>\n</body>\n</html>', 'side_ministry', '2019-07-29 08:36:00', '2019-07-30 12:45:38'),
(17, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Պատմություն</p>\n</body>\n</html>', 'side_history', '2019-07-29 08:41:44', '2019-07-30 12:49:04'),
(18, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Առաքելություն</p>\n</body>\n</html>', 'side_mission', '2019-07-29 08:47:11', '2019-07-30 06:20:24'),
(19, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Կանոնադրություն</p>\n</body>\n</html>', 'side_legislation', '2019-07-29 08:57:37', '2019-07-30 12:49:29'),
(20, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Կառուցվածք</p>\n</body>\n</html>', 'side_structure', '2019-07-29 09:00:05', '2019-07-30 12:50:04'),
(21, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Նախարարության աշխատակազմ</p>\n</body>\n</html>', 'side_ministry_staff', '2019-07-29 09:02:12', '2019-07-30 12:52:40'),
(22, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>նախարարի աշխատակազմ</p>\n</body>\n</html>', 'side_minister_staff', '2019-07-29 09:05:16', '2019-07-30 12:53:02'),
(23, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Կառուցվածքի գծապատկեր</p>\n</body>\n</html>', 'side_organizational_chart', '2019-07-29 09:07:26', '2019-07-30 12:49:57'),
(24, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Լիզենզավորման գործակալություն</p>\n</body>\n</html>', 'side_license_agency', '2019-07-29 09:10:18', '2019-07-30 12:53:30'),
(25, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Առողջապահական ծրագրերի իրականացման գրասենյակ</p>\n</body>\n</html>', 'side_health_implementation', '2019-07-29 09:12:42', '2019-07-30 12:53:52'),
(26, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Կադրային ապահովում</p>\n</body>\n</html>', 'side_staff_provision', '2019-07-29 09:14:48', '2019-07-30 12:50:46'),
(27, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հաստիքացուցակ</p>\n</body>\n</html>', 'side_staff_list', '2019-07-29 09:17:44', '2019-07-30 12:54:40'),
(28, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Թափուր հաստիքներ</p>\n</body>\n</html>', 'side_vacancies', '2019-07-29 09:22:42', '2019-07-30 12:54:58'),
(29, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Մրցույթների հայտարարություններ, արդյունքներ</p>\n</body>\n</html>', 'side_announcement_results', '2019-07-29 09:23:27', '2019-07-30 12:55:18'),
(30, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Աշխատանքի ընդունման կարգ</p>\n</body>\n</html>', 'side_job_procedure', '2019-07-29 09:23:51', '2019-07-30 12:55:38'),
(31, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ենթակայության կառուցներ</p>\n</body>\n</html>', 'side_institutions_under_moh', '2019-07-29 09:27:12', '2019-07-30 12:51:14'),
(32, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Առողջապահության ազգային ինստիտուտ</p>\n</body>\n</html>', 'side_health_national_institute', '2019-07-29 09:28:24', '2019-07-30 12:56:16'),
(33, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն</p>\n</body>\n</html>', 'side_drug_medical_center', '2019-07-29 09:30:00', '2019-07-30 12:56:37'),
(34, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հանրապետական գիտաբժշկական գրադարան</p>\n</body>\n</html>', 'side_ars_medical_library', '2019-07-29 09:31:26', '2019-07-30 12:56:56'),
(35, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ստացիոնար բուժօգնություն իրականացնող կազմակերպություններ</p>\n</body>\n</html>', 'side_hcf_assistance', '2019-07-29 09:33:05', '2019-07-30 12:57:16'),
(36, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Այլ կազմակերպություններ</p>\n</body>\n</html>', 'side_other_organisations', '2019-07-29 09:34:10', '2019-07-30 12:57:41'),
(37, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Բյուջե</p>\n</body>\n</html>', 'side_budget', '2019-07-29 09:35:11', '2019-07-30 12:51:41'),
(38, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Նախարարին կից հասարակական խորհուրդ</p>\n</body>\n</html>', 'side_public_council', '2019-07-29 09:39:54', '2019-07-30 12:42:32'),
(39, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ան խորհրդատուներ</p>\n</body>\n</html>', 'side_chief_specialists', '2019-07-29 09:42:26', '2019-07-30 12:52:04'),
(41, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Նորություններ</p>\n</body>\n</html>', 'side_news', '2019-07-29 09:49:39', '2019-07-30 06:35:36'),
(42, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հայտարարություններ</p>\n</body>\n</html>', 'side_announcements', '2019-07-29 09:52:32', '2019-07-30 12:58:26'),
(43, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Տեսադարան</p>\n</body>\n</html>', 'side_videos', '2019-07-29 09:54:55', '2019-07-30 12:58:49'),
(44, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ելույթներ և հարցազրույցներ</p>\n</body>\n</html>', 'side_speeches_interviews', '2019-07-29 09:57:48', '2019-07-30 12:59:08'),
(45, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հաշվետվություններ</p>\n</body>\n</html>', 'side_reports', '2019-07-29 09:59:14', '2019-07-30 12:59:34'),
(46, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Մամուլի հաղորդագրություն</p>\n</body>\n</html>', 'side_press_release', '2019-07-29 10:00:29', '2019-07-30 13:00:01'),
(47, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հետազոտություններ</p>\n</body>\n</html>', 'side_research', '2019-07-29 10:01:38', '2019-07-30 13:00:42'),
(48, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Վիճակագրություն</p>\n</body>\n</html>', 'side_statistics', '2019-07-29 10:02:35', '2019-07-30 13:01:00'),
(49, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Տեղեկատու</p>\n</body>\n</html>', 'side_informative', '2019-07-29 12:26:26', '2019-07-29 12:26:26'),
(50, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ԾՐԱԳՐԵՐ</p>\n</body>\n</html>', 'side_projects', '2019-07-29 12:28:31', '2019-07-30 12:46:11'),
(51, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Քաղաքականություն</p>\n</body>\n</html>', 'side_policy', '2019-07-29 12:29:26', '2019-07-30 13:01:39'),
(52, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Գերակա</p>\n</body>\n</html>', 'side_priority', '2019-07-29 12:30:13', '2019-07-30 13:01:58'),
(53, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ազգային</p>\n</body>\n</html>', 'side_national', '2019-07-29 12:30:43', '2019-07-30 13:02:22'),
(54, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Միջազգային</p>\n</body>\n</html>', 'side_international', '2019-07-29 12:32:20', '2019-07-30 04:34:20'),
(55, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Սկրինինգ</p>\n</body>\n</html>', 'side_screening', '2019-07-29 12:33:25', '2019-07-30 13:02:40'),
(56, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Միջոցառումներ/հակակոռուպցիոն</p>\n<p>&nbsp;</p>\n<pre>&nbsp;</pre>\n</body>\n</html>', 'side_anti_corruption', '2019-07-29 12:34:22', '2019-07-30 10:13:58'),
(57, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ԾԱՌԱՅՈՒԹՅՈՒՆՆԵՐ</p>\n</body>\n</html>', 'side_services', '2019-07-29 12:36:07', '2019-07-30 12:46:40'),
(58, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Լիցենզավորում/Փաստաթղթեր/Հայտ</p>\n</body>\n</html>', 'side_licensing_documents', '2019-07-29 12:40:51', '2019-07-31 03:55:54'),
(59, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Գովազդի թույլտվություն</p>\n</body>\n</html>', 'side_advertisement_permission', '2019-07-29 12:42:30', '2019-07-30 10:16:27'),
(60, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Պետական պատվեր/Սոցիալական փաթեթ</p>\n</body>\n</html>', 'side_social_package', '2019-07-29 12:44:29', '2019-07-31 03:55:45'),
(61, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ընդունելություն/Կարգ, ցանկ, արդյունքներ</p>\n</body>\n</html>', 'side_admission_results', '2019-07-29 12:45:41', '2019-07-31 03:55:33'),
(62, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հաճախ տրվող հարցեր</p>\n</body>\n</html>', 'side_faq', '2019-07-29 12:46:48', '2019-07-30 12:47:19'),
(63, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հղումներ</p>\n</body>\n</html>', 'side_links', '2019-07-29 12:47:51', '2019-07-30 12:48:05'),
(64, 'Sidebar', 'sidebar', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Քո իրավունքը</p>\n</body>\n</html>', 'side_your_rights', '2019-07-29 12:48:52', '2019-07-30 12:48:37'),
(65, 'Contact Us', 'contact-us', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ջնջել</p>\n</body>\n</html>', 'delete', '2019-07-30 04:44:43', '2019-07-30 12:41:31'),
(66, 'Contact Us', 'contact-us', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ուղարկել</p>\n</body>\n</html>', 'send', '2019-07-30 04:45:55', '2019-07-30 04:45:55'),
(67, 'Home', 'home', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ավելին</p>\n</body>\n</html>', 'more', '2019-07-30 04:47:48', '2019-07-30 04:47:48'),
(68, 'Legal Acts', 'legal-acts', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>տեսակ</p>\n</body>\n</html>', 'type', '2019-07-30 04:50:45', '2019-07-30 12:44:49'),
(69, 'Legal Acts', 'legal-acts', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Բոլորը</p>\n</body>\n</html>', 'all', '2019-07-30 04:51:36', '2019-07-30 12:44:40'),
(70, 'Legal Acts', 'legal-acts', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ամսաթիվ</p>\n</body>\n</html>', 'date', '2019-07-30 04:53:28', '2019-07-30 12:44:29'),
(71, 'Legal Acts', 'legal-acts', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ֆայլի անվանում</p>\n</body>\n</html>', 'file_name', '2019-07-30 04:57:22', '2019-07-30 04:57:22'),
(72, 'Legal Acts', 'legal-acts', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Որոնել</p>\n</body>\n</html>', 'search', '2019-07-30 05:01:00', '2019-07-30 12:44:18'),
(73, 'Links', 'links', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>գործընկերներ</p>\n</body>\n</html>', 'partners', '2019-07-30 05:42:12', '2019-07-31 03:54:07'),
(74, 'Links', 'links', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հասարակական կազմակերպություններ</p>\n</body>\n</html>', 'ngos', '2019-07-30 05:43:45', '2019-07-30 05:43:45'),
(75, 'Links', 'links', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>մանկական բարեգործական կազմակերպություններ</p>\n</body>\n</html>', 'ccos', '2019-07-30 05:46:17', '2019-07-31 03:53:58'),
(76, 'Links', 'links', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Նախարարություններ</p>\n</body>\n</html>', 'ministries', '2019-07-30 06:05:41', '2019-07-30 06:05:41'),
(77, 'Links', 'links', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ՀՀ կառավարության առընթեր մարմիններ</p>\n</body>\n</html>', 'governmental_bodies', '2019-07-30 06:07:40', '2019-07-31 03:53:51'),
(78, 'Links', 'links', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Այլ հղումներ</p>\n</body>\n</html>', 'other_links', '2019-07-30 06:08:49', '2019-07-30 12:47:56'),
(79, 'Links', 'links', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Մարզեր</p>\n</body>\n</html>', 'regions', '2019-07-30 06:10:35', '2019-07-31 03:53:43'),
(80, 'Minister Page', 'minister-page', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>կենսագրություն</p>\n</body>\n</html>', 'biography', '2019-07-30 06:13:40', '2019-07-30 12:40:15'),
(81, 'Minister Page', 'minister-page', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>հարց նախարարին</p>\n</body>\n</html>', 'question_to_minister', '2019-07-30 06:16:09', '2019-07-30 12:40:04'),
(82, 'Minister Page', 'minister-page', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Սիրով սպասում ենք Ձեր հարցերին</p>\n</body>\n</html>', 'waiting_to_your_question', '2019-07-30 06:18:08', '2019-07-30 12:39:51'),
(83, 'Public Council', 'public-council', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Կազմը եվ աշխատակարգը</p>\n</body>\n</html>', 'staff_working_procedures', '2019-07-30 06:26:21', '2019-07-31 03:43:42'),
(84, 'Public Council', 'public-council', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Նիստեր</p>\n</body>\n</html>', 'sessions', '2019-07-30 06:27:40', '2019-07-30 06:27:40'),
(85, 'Public Council', 'public-council', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հայտեր</p>\n</body>\n</html>', 'bids', '2019-07-30 06:29:11', '2019-07-30 06:29:11'),
(86, 'Public Council', 'public-council', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Արդյունքներ</p>\n</body>\n</html>', 'results', '2019-07-30 06:30:12', '2019-07-31 03:43:15'),
(87, 'Announcement Individual', 'announcement-individual', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>հայտարարություն</p>\n</body>\n</html>', 'announcement', '2019-07-30 06:34:41', '2019-07-30 06:34:41'),
(88, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>գլխավոր քարտուղար</p>\n</body>\n</html>', 'general_secretary', '2019-07-30 06:46:30', '2019-07-31 03:53:35'),
(89, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>նախարարի տեղակալ</p>\n</body>\n</html>', 'deputy_minister', '2019-07-30 06:47:53', '2019-07-31 03:53:27'),
(90, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>նախարարի խորհրդական</p>\n</body>\n</html>', 'minister_adviser', '2019-07-30 06:49:10', '2019-07-31 03:53:18'),
(91, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>նախարարի մամլո քարտուղար</p>\n</body>\n</html>', 'minister_speaker', '2019-07-30 06:52:14', '2019-07-31 03:53:07'),
(92, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>նախարարի օգնական</p>\n</body>\n</html>', 'minister_assistant', '2019-07-30 06:53:32', '2019-07-31 03:52:58'),
(93, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>գլխավոր քարտուղարի տեղակալ</p>\n</body>\n</html>', 'general_secretary_deputy', '2019-07-30 06:56:05', '2019-07-31 03:52:49'),
(94, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>բժշկական օգնության քաղաքականության օգնություն</p>\n</body>\n</html>', 'medical_care_policy_assistant', '2019-07-30 06:57:55', '2019-07-30 06:57:55'),
(95, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>հիվանդանոցային բժշկական օգնության քաղաքականության բաժին</p>\n</body>\n</html>', 'medical_care_policy_assistance_dep', '2019-07-30 06:59:36', '2019-07-31 03:52:41'),
(96, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>մոր եվ մանկան առողջության պահպանման վարչություն</p>\n</body>\n</html>', 'maternal_child_department', '2019-07-30 07:01:41', '2019-07-31 03:52:31'),
(97, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>մայրական եվ վերարտադրողական առողջության պահպանման բաժին</p>\n</body>\n</html>', 'maternal_reproductive_department', '2019-07-30 07:03:30', '2019-07-31 03:52:20'),
(98, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>երեխաների առողջության պահպանման բաժին</p>\n</body>\n</html>', 'child_health_department', '2019-07-30 07:04:46', '2019-07-31 03:50:41'),
(99, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>դեղորայքային քաղաքականության եվ բժշկական տեխնոլոգիաների վարչություն</p>\n</body>\n</html>', 'drug_policy_department', '2019-07-30 07:06:45', '2019-07-31 03:50:21'),
(100, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>դեղորայքային քաղաքականության բաժին</p>\n</body>\n</html>', 'medicines_policy_department', '2019-07-30 07:08:20', '2019-07-30 07:08:20'),
(101, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>բժշկական տեխնոլոգիաների եվ մարդասիրական օգնության համակարգման բաժին</p>\n</body>\n</html>', 'medical_technology_humanitarian_department', '2019-07-30 07:10:08', '2019-07-31 03:50:11'),
(102, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>անձնակազմի կառավարում</p>\n</body>\n</html>', 'personal_management', '2019-07-30 07:11:17', '2019-07-31 03:49:26'),
(103, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>իրավաբանական վարչություն</p>\n</body>\n</html>', 'legacy_department', '2019-07-30 07:12:40', '2019-07-31 03:49:16'),
(104, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>օրենսդրության կատարելագործման եվ վերլուծության բաժին</p>\n</body>\n</html>', 'legislation_improvement_analysis', '2019-07-30 07:14:23', '2019-07-31 03:49:08'),
(105, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>իրավական ապահովման բաժին</p>\n</body>\n</html>', 'legal_assistance_division', '2019-07-30 07:15:34', '2019-07-31 03:48:58'),
(106, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>հանրային առողջության բաժին</p>\n</body>\n</html>', 'public_health_department', '2019-07-30 07:17:17', '2019-07-31 03:48:45'),
(107, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>արտակարգ իրավիճակների եվ զորահավաքային նախարարության բաժին</p>\n</body>\n</html>', 'emergency_department', '2019-07-30 07:18:43', '2019-07-31 03:48:28'),
(108, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>արտաքին կապերի բաժին</p>\n</body>\n</html>', 'foreign_relations_department', '2019-07-30 07:22:05', '2019-07-31 03:47:34'),
(109, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>հասարակայնության հետ կապերի բաժին</p>\n</body>\n</html>', 'public_relations_department', '2019-07-30 07:23:15', '2019-07-30 07:23:15'),
(110, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ֆինանսատնտեսագիտական բաժին</p>\n</body>\n</html>', 'finance_economics_department', '2019-07-30 07:24:36', '2019-07-31 03:47:15'),
(111, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>հաշվապահական հաշվառման բաժին</p>\n</body>\n</html>', 'accounting_department', '2019-07-30 07:25:40', '2019-07-31 03:46:51'),
(112, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>ներքին աուդիտի բաժին</p>\n</body>\n</html>', 'internal_audit_department', '2019-07-30 07:26:48', '2019-07-31 03:46:37'),
(113, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>առաջին բաժին</p>\n</body>\n</html>', 'first_section', '2019-07-30 07:27:37', '2019-07-31 03:46:11'),
(114, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>քարտուղարություն</p>\n</body>\n</html>', 'secretariat', '2019-07-30 07:28:31', '2019-07-31 03:45:53'),
(115, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>լիցենզավորման գործակալություն</p>\n</body>\n</html>', 'licensing_agency', '2019-07-30 07:29:39', '2019-07-31 03:45:34'),
(116, 'Ministry Structure', 'ministry-structure', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>պետական առողջապահական գործակալություն</p>\n</body>\n</html>', 'state_health_agency', '2019-07-30 07:30:58', '2019-07-31 03:45:04'),
(117, 'Minister Page', 'minister-page', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Ուղերձ</p>\n</body>\n</html>', 'minister_message', '2019-07-30 10:59:41', '2019-08-09 12:33:24'),
(118, 'Placeholder', 'placeholder', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Անուն</p>\n</body>\n</html>', 'name', '2019-07-31 05:06:23', '2019-07-31 05:12:16'),
(119, 'Placeholder', 'placeholder', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Անուն Ազգանուն</p>\n</body>\n</html>', 'name_surname', '2019-07-31 05:09:37', '2019-07-31 05:09:37'),
(120, 'Placeholder', 'placeholder', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Թեմա</p>\n</body>\n</html>', 'theme', '2019-07-31 05:11:58', '2019-07-31 05:11:58'),
(121, 'Placeholder', 'placeholder', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հաղորդագրություն</p>\n</body>\n</html>', 'placeholder_message', '2019-07-31 05:14:16', '2019-07-31 05:14:16'),
(122, 'Search', 'search', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>No result found!!!</p>\n</body>\n</html>', 'search_no_result', '2019-08-08 13:43:54', '2019-08-08 13:43:54'),
(123, 'Search', 'search', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Մուտքագրեք ավելի քան երկու նիշ !!!</p>\n</body>\n</html>', 'search_validation_message', '2019-08-08 13:48:52', '2019-08-08 13:48:52'),
(124, 'Email Template', 'email_template', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Թեմա</p>\n</body>\n</html>', 'subject', '2019-08-09 12:30:58', '2019-08-09 12:30:58'),
(125, 'Email Template', 'email_template', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p>Հաղորդագրություն</p>\n</body>\n</html>', 'message', '2019-08-09 12:34:51', '2019-08-09 12:34:51');

-- --------------------------------------------------------

--
-- Table structure for table `your_rights_files`
--

CREATE TABLE `your_rights_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_date` date NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `your_rights_files`
--

INSERT INTO `your_rights_files` (`id`, `file_name`, `file_upload`, `file_url`, `file_date`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Your Rights Parent File', '[{\"download_link\":\"your-rights-files\\/July2019\\/nujJNjjVMZCtFrNjiqKp.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', NULL, 1, '2019-07-10 04:39:14', '2019-07-10 04:39:14'),
(2, 'Your Rights Child File', '[{\"download_link\":\"your-rights-files\\/July2019\\/5Eies1yu0NLEWuZzjWNW.pdf\",\"original_name\":\"pdf-test.pdf\"}]', NULL, '2019-01-01', 1, 1, '2019-07-10 04:39:35', '2019-07-10 04:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `your_rights_videos`
--

CREATE TABLE `your_rights_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `your_rights_videos`
--

INSERT INTO `your_rights_videos` (`id`, `title`, `date`, `video_url`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Զինծառայողների բուժօգնությունը', '2019-01-01', 'https://www.youtube.com/watch?v=MbiJxL9oTlQ', 1, '2019-07-10 04:40:48', '2019-07-10 04:40:48'),
(2, 'Առաջնային բուժօգնություն', '2019-01-02', 'https://www.youtube.com/watch?v=5IFtC-zKDtc', 1, '2019-07-10 04:41:19', '2019-07-10 04:41:19'),
(3, 'Հղիության հաշվառման կարգ ու կանոն', '2019-01-01', 'https://www.youtube.com/watch?v=uanfaZTKe9M', 1, '2019-07-10 04:41:51', '2019-07-10 04:41:51'),
(4, 'Երեխաների անվճար բուժօգնության իրավունքը', '2019-01-01', 'https://www.youtube.com/watch?v=E8mXVX83IiM', 1, '2019-07-10 04:42:27', '2019-07-10 04:42:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertising_permissions`
--
ALTER TABLE `advertising_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `anti_corruption_events`
--
ALTER TABLE `anti_corruption_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `budgets_category_id_foreign` (`category_id`);

--
-- Indexes for table `budget_categories`
--
ALTER TABLE `budget_categories`
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
-- Indexes for table `dynamic_intermediate_table`
--
ALTER TABLE `dynamic_intermediate_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dynamic_intermediate_table_dynamic_page_file_id_foreign` (`dynamic_page_file_id`),
  ADD KEY `dynamic_intermediate_table_dynamic_page_id_foreign` (`dynamic_page_id`);

--
-- Indexes for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dynamic_pages_dynamic_section_id_foreign` (`dynamic_section_id`);

--
-- Indexes for table `dynamic_page_files`
--
ALTER TABLE `dynamic_page_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_sections`
--
ALTER TABLE `dynamic_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_sub_pages`
--
ALTER TABLE `dynamic_sub_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dynamic_sub_pages_dynamic_page_id_foreign` (`dynamic_page_id`);

--
-- Indexes for table `dynamic_sub_page_intermediate`
--
ALTER TABLE `dynamic_sub_page_intermediate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dynamic_sub_page_intermediate_dynamic_page_file_id_foreign` (`dynamic_page_file_id`),
  ADD KEY `dynamic_sub_page_intermediate_dynamic_sub_page_id_foreign` (`dynamic_sub_page_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_category_id_foreign` (`category_id`);

--
-- Indexes for table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_sliders`
--
ALTER TABLE `homepage_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informatives`
--
ALTER TABLE `informatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internationals`
--
ALTER TABLE `internationals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_acts`
--
ALTER TABLE `legal_acts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `legal_acts_type_id_foreign` (`type_id`);

--
-- Indexes for table `legal_acts_types`
--
ALTER TABLE `legal_acts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_org_files`
--
ALTER TABLE `license_org_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_org_infos`
--
ALTER TABLE `license_org_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licens_documents_applications`
--
ALTER TABLE `licens_documents_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links_ccos`
--
ALTER TABLE `links_ccos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links_co_workers`
--
ALTER TABLE `links_co_workers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links_links`
--
ALTER TABLE `links_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `links_ngos`
--
ALTER TABLE `links_ngos`
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
-- Indexes for table `min_history_categories`
--
ALTER TABLE `min_history_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `min_history_items`
--
ALTER TABLE `min_history_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `min_history_items_category_id_foreign` (`category_id`);

--
-- Indexes for table `moh_consultants`
--
ALTER TABLE `moh_consultants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationals`
--
ALTER TABLE `nationals`
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
-- Indexes for table `pc_appeals`
--
ALTER TABLE `pc_appeals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_results`
--
ALTER TABLE `pc_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_sessions`
--
ALTER TABLE `pc_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc_staffs`
--
ALTER TABLE `pc_staffs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `politics`
--
ALTER TABLE `politics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `press_releases`
--
ALTER TABLE `press_releases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `researches`
--
ALTER TABLE `researches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `screenings`
--
ALTER TABLE `screenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speech_and_interviews`
--
ALTER TABLE `speech_and_interviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_drug_medical_expert_files`
--
ALTER TABLE `ss_drug_medical_expert_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_drug_medical_expert_infos`
--
ALTER TABLE `ss_drug_medical_expert_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_health_institute_files`
--
ALTER TABLE `ss_health_institute_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_health_institute_infos`
--
ALTER TABLE `ss_health_institute_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_medical_library_files`
--
ALTER TABLE `ss_medical_library_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_medical_library_infos`
--
ALTER TABLE `ss_medical_library_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_other_orgs`
--
ALTER TABLE `ss_other_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ss_stationery_orgs`
--
ALTER TABLE `ss_stationery_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffing_job_acceptances`
--
ALTER TABLE `staffing_job_acceptances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffing_staff_lists`
--
ALTER TABLE `staffing_staff_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffing_tender_results`
--
ALTER TABLE `staffing_tender_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffing_vacancies`
--
ALTER TABLE `staffing_vacancies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state_orders`
--
ALTER TABLE `state_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superiors`
--
ALTER TABLE `superiors`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `web_site_translations`
--
ALTER TABLE `web_site_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `your_rights_files`
--
ALTER TABLE `your_rights_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `your_rights_videos`
--
ALTER TABLE `your_rights_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertising_permissions`
--
ALTER TABLE `advertising_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `anti_corruption_events`
--
ALTER TABLE `anti_corruption_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `budget_categories`
--
ALTER TABLE `budget_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=739;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `dynamic_intermediate_table`
--
ALTER TABLE `dynamic_intermediate_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dynamic_page_files`
--
ALTER TABLE `dynamic_page_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dynamic_sections`
--
ALTER TABLE `dynamic_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dynamic_sub_pages`
--
ALTER TABLE `dynamic_sub_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dynamic_sub_page_intermediate`
--
ALTER TABLE `dynamic_sub_page_intermediate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `homepage_sliders`
--
ALTER TABLE `homepage_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `informatives`
--
ALTER TABLE `informatives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `internationals`
--
ALTER TABLE `internationals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `legal_acts`
--
ALTER TABLE `legal_acts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `legal_acts_types`
--
ALTER TABLE `legal_acts_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `license_org_files`
--
ALTER TABLE `license_org_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_org_infos`
--
ALTER TABLE `license_org_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `licens_documents_applications`
--
ALTER TABLE `licens_documents_applications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `links_ccos`
--
ALTER TABLE `links_ccos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `links_co_workers`
--
ALTER TABLE `links_co_workers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `links_links`
--
ALTER TABLE `links_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `links_ngos`
--
ALTER TABLE `links_ngos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ministry_staffs`
--
ALTER TABLE `ministry_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `min_history_categories`
--
ALTER TABLE `min_history_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `min_history_items`
--
ALTER TABLE `min_history_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `moh_consultants`
--
ALTER TABLE `moh_consultants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nationals`
--
ALTER TABLE `nationals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages_texts`
--
ALTER TABLE `pages_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pc_appeals`
--
ALTER TABLE `pc_appeals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pc_results`
--
ALTER TABLE `pc_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pc_sessions`
--
ALTER TABLE `pc_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pc_staffs`
--
ALTER TABLE `pc_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- AUTO_INCREMENT for table `politics`
--
ALTER TABLE `politics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `press_releases`
--
ALTER TABLE `press_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `researches`
--
ALTER TABLE `researches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `screenings`
--
ALTER TABLE `screenings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `speech_and_interviews`
--
ALTER TABLE `speech_and_interviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ss_drug_medical_expert_files`
--
ALTER TABLE `ss_drug_medical_expert_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ss_drug_medical_expert_infos`
--
ALTER TABLE `ss_drug_medical_expert_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ss_health_institute_files`
--
ALTER TABLE `ss_health_institute_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ss_health_institute_infos`
--
ALTER TABLE `ss_health_institute_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ss_medical_library_files`
--
ALTER TABLE `ss_medical_library_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ss_medical_library_infos`
--
ALTER TABLE `ss_medical_library_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ss_other_orgs`
--
ALTER TABLE `ss_other_orgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ss_stationery_orgs`
--
ALTER TABLE `ss_stationery_orgs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffing_job_acceptances`
--
ALTER TABLE `staffing_job_acceptances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffing_staff_lists`
--
ALTER TABLE `staffing_staff_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffing_tender_results`
--
ALTER TABLE `staffing_tender_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffing_vacancies`
--
ALTER TABLE `staffing_vacancies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state_orders`
--
ALTER TABLE `state_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `superiors`
--
ALTER TABLE `superiors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=792;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `web_site_translations`
--
ALTER TABLE `web_site_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `your_rights_files`
--
ALTER TABLE `your_rights_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `your_rights_videos`
--
ALTER TABLE `your_rights_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `budgets`
--
ALTER TABLE `budgets`
  ADD CONSTRAINT `budgets_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `budget_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `dynamic_intermediate_table`
--
ALTER TABLE `dynamic_intermediate_table`
  ADD CONSTRAINT `dynamic_intermediate_table_dynamic_page_file_id_foreign` FOREIGN KEY (`dynamic_page_file_id`) REFERENCES `dynamic_page_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dynamic_intermediate_table_dynamic_page_id_foreign` FOREIGN KEY (`dynamic_page_id`) REFERENCES `dynamic_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dynamic_pages`
--
ALTER TABLE `dynamic_pages`
  ADD CONSTRAINT `dynamic_pages_dynamic_section_id_foreign` FOREIGN KEY (`dynamic_section_id`) REFERENCES `dynamic_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dynamic_sub_pages`
--
ALTER TABLE `dynamic_sub_pages`
  ADD CONSTRAINT `dynamic_sub_pages_dynamic_page_id_foreign` FOREIGN KEY (`dynamic_page_id`) REFERENCES `dynamic_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dynamic_sub_page_intermediate`
--
ALTER TABLE `dynamic_sub_page_intermediate`
  ADD CONSTRAINT `dynamic_sub_page_intermediate_dynamic_page_file_id_foreign` FOREIGN KEY (`dynamic_page_file_id`) REFERENCES `dynamic_page_files` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dynamic_sub_page_intermediate_dynamic_sub_page_id_foreign` FOREIGN KEY (`dynamic_sub_page_id`) REFERENCES `dynamic_sub_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `legal_acts`
--
ALTER TABLE `legal_acts`
  ADD CONSTRAINT `legal_acts_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `legal_acts_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `min_history_items`
--
ALTER TABLE `min_history_items`
  ADD CONSTRAINT `min_history_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `min_history_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
