-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: moh
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ','<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին</p>','2019-06-07','2019-06-07 07:11:00','2019-06-07 07:14:06'),(2,'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ 2','<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին 2</p>','2019-06-07','2019-06-07 07:13:00','2019-06-07 08:54:50'),(3,'էԼԵԿՏՐՈՆԱՅԻՆ ՀԱՐՑՈՒՄՆԵՐԻ ՄԻԱՍՆԱԿԱՆ ՀԱՐԹԱԿ 3','<p>Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում, հարցում կամ բողոք Ձեր ցանկացած պետական մարմին Տվյալ կայքի միջոցով կարող եք առցանց ներկայացնել դիմում,&nbsp; հարցում կամ բողոք Ձեր ցանկացած պետական մարմին 3</p>','2019-06-07','2019-06-07 09:24:44','2019-06-07 09:24:44');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'BMW','Awesome Car !!!','cars/June2019/wNnnYQXJ2PTfgsxEwoYa.png','2019-06-05 10:42:09','2019-06-05 10:42:09');
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2019-06-04 08:24:51','2019-06-04 08:24:51'),(2,NULL,1,'Category 2','category-2','2019-06-04 08:24:51','2019-06-04 08:24:51');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cover_photos`
--

DROP TABLE IF EXISTS `cover_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cover_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_cover_photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cover_photos`
--

LOCK TABLES `cover_photos` WRITE;
/*!40000 ALTER TABLE `cover_photos` DISABLE KEYS */;
INSERT INTO `cover_photos` VALUES (1,'ՀԵՏԱԴԱՐՁ ԿԱՊ','contact-us','cover-photos/June2019/MUteE6WVivYuChXVz2Ge.png','2019-06-17 10:19:59','2019-06-17 10:19:59'),(2,'ՆԱԽԱՐԱՐ','minister-page','cover-photos/June2019/emPrkoNnfZzQQaRVgpgX.png','2019-06-17 10:20:00','2019-06-17 10:42:01'),(3,'ՆԱԽԱՐԱՐԻ ԱՇԽԱՏԱԿԱԶՄ','minister-staff','cover-photos/June2019/7SGtJ1qoDdzGcDT4KcpA.png','2019-06-17 10:31:42','2019-06-17 10:31:42'),(4,'ՆՈՐՈՒԹՅՈՒՆՆԵՐ','all-news','cover-photos/June2019/eqb10s4WtArTkCc6nCrL.png','2019-06-17 10:39:39','2019-06-17 10:39:39'),(5,'ՀԱՅՏԱՐԱՐՈՒԹՅՈՒՆՆԵՐ','announcement','cover-photos/June2019/mwmJ9VuHNwjZ7kqwOhCe.png','2019-06-17 10:41:47','2019-06-17 10:41:47'),(6,'ԲՅՈՒՋԵ','budget','cover-photos/June2019/UPOaN8T8MbpKvmMbME9U.png','2019-06-17 10:49:15','2019-06-17 10:49:15'),(7,'ԿԱՆՈՆԱԴՐՈՒԹՅՈՒՆ','charter','cover-photos/June2019/2njGsRFoJ8LCNUaU5Ava.png','2019-06-17 10:52:36','2019-06-17 10:52:36'),(8,'FAQ','faq','cover-photos/June2019/w6mXaZCMAu070dzDFuqe.png','2019-06-17 10:55:01','2019-06-17 10:55:01'),(9,'ՊԱՏՄՈՒԹՅՈՒՆ','history','cover-photos/June2019/FHwoHER5XIjiQpVw5EWn.png','2019-06-17 10:57:09','2019-06-17 10:57:09'),(10,'ԻՐԱՎԱԿԱՆ ԱԿՏԵՐ','legal-acts','cover-photos/June2019/EWEMrGzVT2rxWuqCE94P.png','2019-06-17 10:59:42','2019-06-17 10:59:42'),(11,'ՀՂՈՒՄՆԵՐ','links','cover-photos/June2019/1XhTXoCFv1qTp6RqJO6F.png','2019-06-17 11:01:36','2019-06-17 11:01:36'),(12,'ՆԱԽԱՐԱՐՈՒԹՅԱՆ ԱՇԽԱՏԱԿԱԶՄ','ministry-staff','cover-photos/June2019/IAxm1y1VuQj7oXXbgpng.png','2019-06-17 11:04:50','2019-06-17 11:04:50'),(13,'ԿԱՌՈՒՑՎԱԾՔԻ ԳԾԱՊԱՏԿԵՐ','ministry-structure','cover-photos/June2019/7jt0DO7z26o9g0a9s4zF.png','2019-06-17 11:07:06','2019-06-17 11:07:06'),(14,'ԱՌԱՔԵԼՈՒԹՅՈՒՆ','mission','cover-photos/June2019/yeUxcZGgpf8VwGnuljza.png','2019-06-17 11:08:49','2019-06-17 11:08:49'),(15,'ՆԱԽԱՐԱՐԻՆ ԿԻՑ ՀԱՍԱՐԱԿԱԿԱՆ ԽՈՐՀՈՒՐԴ','public-council','cover-photos/June2019/wTg82iPpHLRtLiCce9j0.png','2019-06-17 11:11:11','2019-06-17 11:11:11'),(16,'ՀԱՅՏԱՐԱՐՈՒԹՅՈՒՆ','single-announcement','cover-photos/June2019/uQxRPCAii6s4wdlKk2rE.png','2019-06-17 11:16:16','2019-06-17 11:16:16'),(17,'ՆՈՐՈՒԹՅՈՒՆ','single-news','cover-photos/June2019/m5J9SH5pz79eTF2QnE0l.png','2019-06-17 11:18:59','2019-06-17 11:18:59'),(18,'Վիդեո-Ինդիվիդուալ','single-video','cover-photos/June2019/nhDRcj5ITQFSaBxx2Yu7.png','2019-06-17 11:21:00','2019-06-17 11:22:02'),(19,'ՀԱՍՏԻՔԱՑՈՒՑԱԿ','staff-list','cover-photos/June2019/i9emFwU7dtFHGfOlEwto.png','2019-06-17 11:24:01','2019-06-17 11:24:01'),(20,'Ելույթներ և հարցազրույցներ','speeches-interviews','cover-photos/June2019/SPF2Ksd4TbU110YQc3wB.png','2019-06-19 04:53:19','2019-06-19 04:53:19'),(21,'Հաշվետվություններ','reports','cover-photos/June2019/YvFlqMaf9ZoxP8LU6Tqp.png','2019-06-19 09:02:26','2019-06-19 09:02:26'),(22,'Մամուլի հաղորդագրություն','press-release','cover-photos/June2019/enVvg4ydCuzwOhRD8RNg.png','2019-06-20 05:31:43','2019-06-20 05:31:43'),(23,'Հետազոտություններ','researches','cover-photos/June2019/AY1hqtD42Ymg7Xg5ZhiK.png','2019-06-20 07:24:08','2019-06-20 07:24:08'),(24,'Վիճակագրություն','statistics','cover-photos/June2019/AuWyxwgJyPLpTfsPPmVN.png','2019-06-20 07:34:49','2019-06-20 07:34:49'),(25,'Տեղեկատու','informative','cover-photos/June2019/3alGr9cQOd1FbvZtMixB.png','2019-06-20 07:51:26','2019-06-20 07:51:26');
/*!40000 ALTER TABLE `cover_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
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
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,'{}',1),(45,6,'author_id','text','Author',1,0,0,0,0,0,'{}',2),(46,6,'title','text','Title',1,1,1,1,1,1,'{}',3),(47,6,'excerpt','text_area','Excerpt',0,0,1,1,1,1,'{}',4),(48,6,'body','rich_text_box','Body',0,0,1,1,1,1,'{}',5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',0,0,1,1,1,1,'{}',7),(51,6,'meta_keywords','text','Meta Keywords',0,0,1,1,1,1,'{}',8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',10),(54,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(55,6,'image','media_picker','Page Image',0,1,1,1,1,1,'{}',12),(56,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,7,'name','select_dropdown','Name',1,1,1,1,1,1,'{}',2),(58,7,'description','text_area','Description',1,1,1,1,1,1,'{}',3),(59,7,'image','image','Image',1,1,1,1,1,1,'{}',4),(60,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(61,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(70,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(71,9,'title','text','Title',1,1,1,1,1,1,'{}',2),(72,9,'text','text_area','Text',1,1,1,1,1,1,'{}',3),(73,9,'image','image','Image',1,1,1,1,1,1,'{}',4),(74,9,'url','text','Url',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable\"}}',5),(75,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(76,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(93,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(94,12,'title','text','Title',1,1,1,1,1,1,'{}',2),(95,12,'description','rich_text_box','Description',1,1,1,1,1,1,'{}',3),(96,12,'images','multiple_images','Images',1,1,1,1,1,1,'{}',4),(97,12,'video','text','Video',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable\"}}',5),(98,12,'date','date','Date',1,1,1,1,1,1,'{}',6),(100,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(101,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(102,20,'id','text','Id',1,0,0,0,0,0,'{}',1),(103,20,'title','text','Title',1,1,1,1,1,1,'{}',2),(104,20,'description','rich_text_box','Description',1,1,1,1,1,1,'{}',3),(105,20,'date','date','Date',1,1,1,1,1,1,'{}',4),(107,20,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(108,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(109,22,'id','text','Id',1,0,0,0,0,0,'{}',1),(110,22,'title','text','Title',1,1,1,1,1,1,'{}',2),(111,22,'date','date','Date',1,1,1,1,1,1,'{}',3),(112,22,'video_url','text','Video Url',1,1,1,1,1,1,'{}',4),(114,22,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(115,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(125,25,'id','text','Id',1,0,0,0,0,0,'{}',1),(126,25,'position','text','Position',1,1,1,1,1,1,'{}',2),(127,25,'name','select_dropdown','Name',1,1,1,1,1,1,'{}',3),(128,25,'phone_number','text','Phone Number',1,1,1,1,1,1,'{}',4),(129,25,'email','text','Email',1,1,1,1,1,1,'{}',5),(130,25,'image','image','Image',1,1,1,1,1,1,'{}',6),(131,25,'text','rich_text_box','Text',1,1,1,1,1,1,'{}',7),(132,25,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(133,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(134,26,'id','text','Id',1,0,0,0,0,0,'{}',1),(135,26,'position','text','Position',1,1,1,1,1,1,'{}',2),(136,26,'name','text','Name',1,1,1,1,1,1,'{}',3),(137,26,'phone_number','text','Phone Number',1,1,1,1,1,1,'{}',4),(138,26,'email','text','Email',1,1,1,1,1,1,'{}',5),(139,26,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(140,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(141,28,'id','text','Id',1,0,0,0,0,0,'{}',1),(142,28,'image','image','Image',1,1,1,1,1,1,'{}',2),(143,28,'url','text','Url',1,1,1,1,1,1,'{}',3),(144,28,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(145,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(146,29,'id','text','Id',1,0,0,0,0,0,'{}',1),(147,29,'page_name','text','Page Name',1,1,1,0,0,0,'{}',2),(148,29,'page_slug','text','Page Slug',1,1,1,0,0,0,'{}',3),(149,29,'page_text1','rich_text_box','Page Text1',1,1,1,1,1,1,'{}',4),(150,29,'page_text2','rich_text_box','Page Text2',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable\"}}',5),(151,29,'page_text3','rich_text_box','Page Text3',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable\"}}',6),(152,29,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(153,29,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(172,33,'id','text','Id',1,0,0,0,0,0,'{}',1),(173,33,'minister_pic','image','Minister Picture',1,1,1,1,1,1,'{}',2),(174,33,'minister_personal_info_pic','image','Minister Personal Info Picture',1,1,1,1,1,1,'{}',3),(175,33,'minister_personal_info_pic_title','text','Minister Personal Info Picture Title',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable\"}}',4),(176,33,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(177,33,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(178,34,'id','text','Id',1,0,0,0,0,0,'{}',1),(179,34,'name','text','Name',1,1,1,1,1,1,'{}',2),(180,34,'slug','text','Slug',1,1,1,1,1,1,'{}',3),(181,34,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(182,34,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(183,35,'id','text','Id',1,0,0,0,0,0,'{}',1),(184,35,'name','text','Info Date/Year',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable\"}}',3),(185,35,'description','text','Info Description',1,1,1,1,1,1,'{}',4),(186,35,'category_id','text','Category Id',1,1,1,1,1,1,'{}',2),(187,35,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(188,35,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(189,35,'minister_info_belongsto_minister_info_category_relationship','relationship','minister_info_categories',0,1,1,1,1,1,'{\"model\":\"App\\\\MinisterInfoCategory\",\"table\":\"minister_info_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"announcements\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(190,35,'url','text','Url',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"nullable\"}}',5),(191,37,'id','text','Id',1,0,0,0,0,0,'{}',1),(192,37,'page_name','text','Page Name',1,1,1,1,1,1,'{}',2),(193,37,'page_slug','text','Page Slug',1,1,1,1,1,1,'{}',3),(194,37,'page_cover_photo','image','Page Cover Photo',1,1,1,1,1,1,'{}',4),(195,37,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(196,37,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(197,38,'id','text','Id',1,0,0,0,0,0,'{}',1),(198,38,'file_name','text','File Name',1,1,1,1,1,1,'{}',2),(199,38,'file_upload','file','File Upload',0,1,1,1,1,1,'{}',3),(200,38,'file_url','text','File Url',0,1,1,1,1,1,'{}',4),(201,38,'file_icon','image','File Icon',1,1,1,1,1,1,'{}',5),(202,38,'file_date','date','File Date',1,1,1,1,1,1,'{}',6),(203,38,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(204,38,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(205,39,'id','text','Id',1,0,0,0,0,0,'{}',1),(206,39,'file_name','text','File Name',1,1,1,1,1,1,'{}',2),(207,39,'file_upload','file','File Upload',0,1,1,1,1,1,'{}',3),(208,39,'file_url','text','File Url',0,1,1,1,1,1,'{}',4),(209,39,'file_icon','image','File Icon',1,1,1,1,1,1,'{}',5),(210,39,'file_date','date','File Date',1,1,1,1,1,1,'{}',6),(211,39,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(212,39,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(213,40,'id','text','Id',1,0,0,0,0,0,'{}',1),(214,40,'file_name','text','File Name',1,1,1,1,1,1,'{}',2),(215,40,'file_upload','file','File Upload',0,1,1,1,1,1,'{}',3),(216,40,'file_url','text','File Url',0,1,1,1,1,1,'{}',4),(217,40,'file_icon','image','File Icon',1,1,1,1,1,1,'{}',5),(218,40,'file_date','date','File Date',1,1,1,1,1,1,'{}',6),(219,40,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(220,40,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(221,41,'id','text','Id',1,0,0,0,0,0,'{}',1),(222,41,'file_name','text','File Name',1,1,1,1,1,1,'{}',2),(223,41,'file_upload','file','File Upload',0,1,1,1,1,1,'{}',3),(224,41,'file_url','text','File Url',0,1,1,1,1,1,'{}',4),(225,41,'file_icon','image','File Icon',1,1,1,1,1,1,'{}',5),(226,41,'file_date','date','File Date',1,1,1,1,1,1,'{}',6),(227,41,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(228,41,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(229,42,'id','text','Id',1,0,0,0,0,0,'{}',1),(230,42,'file_name','text','File Name',1,1,1,1,1,1,'{}',2),(231,42,'file_upload','file','File Upload',0,1,1,1,1,1,'{}',3),(232,42,'file_url','text','File Url',0,1,1,1,1,1,'{}',4),(233,42,'file_icon','image','File Icon',1,1,1,1,1,1,'{}',5),(234,42,'file_date','date','File Date',1,1,1,1,1,1,'{}',6),(235,42,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(236,42,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(237,43,'id','text','Id',1,0,0,0,0,0,'{}',1),(238,43,'file_name','text','File Name',1,1,1,1,1,1,'{}',2),(239,43,'file_upload','file','File Upload',0,1,1,1,1,1,'{}',3),(240,43,'file_url','text','File Url',0,1,1,1,1,1,'{}',4),(241,43,'file_icon','image','File Icon',1,1,1,1,1,1,'{}',5),(242,43,'file_date','date','File Date',1,1,1,1,1,1,'{}',6),(243,43,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(244,43,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2019-06-04 08:24:51','2019-06-04 08:24:51'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2019-06-04 08:24:51','2019-06-04 08:24:51'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2019-06-04 08:24:51','2019-06-14 04:15:22'),(7,'cars','cars','Car','Cars',NULL,'App\\Car',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-05 10:41:25','2019-06-13 08:59:41'),(9,'homepage_sliders','homepage-sliders','Homepage Slider','Homepage Sliders',NULL,'App\\HomepageSlider',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-06 04:32:45','2019-06-06 07:26:58'),(12,'news','news','News','News',NULL,'App\\News',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-07 04:47:54','2019-06-18 06:34:13'),(20,'announcements','announcements','Announcement','Announcements',NULL,'App\\Announcements',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-07 06:49:37','2019-06-07 07:09:12'),(22,'videos','videos','Video','Videos',NULL,'App\\Videos',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-07 08:13:21','2019-06-07 08:13:21'),(25,'minister_staffs','minister-staff','Minister Staff','Minister Staffs',NULL,'App\\MinisterStaff',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-10 05:57:01','2019-06-13 04:12:50'),(26,'ministry_staffs','ministry-staff','Ministry Staff','Ministry Staffs',NULL,'App\\MinistryStaff',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-10 09:10:30','2019-06-10 09:10:30'),(28,'partners','partners','Partner','Partners',NULL,'App\\Partners',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-10 10:04:06','2019-06-10 10:04:06'),(29,'pages_texts','pages-texts','Pages Text','Pages Texts',NULL,'App\\PagesTexts',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-12 04:28:01','2019-06-17 11:28:58'),(33,'minister_pages','minister-page','Minister Page','Minister Page',NULL,'App\\MinisterPage',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-13 08:37:53','2019-06-13 08:42:13'),(34,'minister_info_categories','minister-info-categories','Minister Info Category','Minister Info Categories',NULL,'App\\MinisterInfoCategory',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-13 09:18:22','2019-06-13 09:18:22'),(35,'minister_infos','minister-infos','Minister Info','Minister Infos',NULL,'App\\MinisterInfo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-13 09:32:53','2019-06-13 10:28:25'),(37,'cover_photos','cover-photos','Cover Photo','Cover Photos',NULL,'App\\CoverPhotos',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-17 08:09:10','2019-06-19 04:52:50'),(38,'speech_and_interviews','speech-and-interviews','Speech And Interview','Speech And Interviews',NULL,'App\\SpeechAndInterview',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-19 06:09:46','2019-06-19 06:56:34'),(39,'reports','reports','Report','Reports',NULL,'App\\Report',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-19 09:16:22','2019-06-19 09:25:44'),(40,'press_releases','press-releases','Press Release','Press Releases',NULL,'App\\PressRelease',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-20 05:35:32','2019-06-20 05:35:32'),(41,'researches','researches','Research','Researches',NULL,'App\\Research',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-20 07:26:08','2019-06-20 07:26:08'),(42,'statistics','statistics','Statistic','Statistics',NULL,'App\\Statistic',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-20 07:36:42','2019-06-20 07:36:42'),(43,'informatives','informatives','Informative','Informatives',NULL,'App\\Informative',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-06-20 08:07:26','2019-06-20 08:07:26');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_sliders`
--

DROP TABLE IF EXISTS `homepage_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `homepage_sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homepage_sliders`
--

LOCK TABLES `homepage_sliders` WRITE;
/*!40000 ALTER TABLE `homepage_sliders` DISABLE KEYS */;
INSERT INTO `homepage_sliders` VALUES (5,'<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ','Առողջապահության նախարար Արսեն Թորոսյանն ընդունել է Ռուսաստանի Դաշնության առողջապահության նախարարի տեղակալ','homepage-sliders/June2019/ZlFx7V58RdhYRzbG0Dqh.jpg','#','2019-06-06 07:03:12','2019-06-06 07:03:12'),(6,'<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ','Առողջապահության նախարար Արսեն Թորոսյանն ընդունել է Ռուսաստանի Դաշնության առողջապահության նախարարի տեղակալ','homepage-sliders/June2019/QfNS4DZZN5dZIMxx3fAK.png','#','2019-06-06 07:03:33','2019-06-06 07:03:33'),(8,'<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ','<span>ՔՆՆԱՐԿՎԵԼ ԵՆ ԾԽԱԽՈՏԻ</span>  ԵՎ ԾԽԵԼՈՒ ԴԵՄ ՊԱՅՔԱՐԻ ՎԵՐԱԲԵՐՅԱԼ ՀԱՐՑԵՐ','homepage-sliders/June2019/iNoDqQU1GVnz4rBpzdik.png','','2019-06-06 07:32:44','2019-06-06 07:32:44');
/*!40000 ALTER TABLE `homepage_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informatives`
--

DROP TABLE IF EXISTS `informatives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `informatives` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informatives`
--

LOCK TABLES `informatives` WRITE;
/*!40000 ALTER TABLE `informatives` DISABLE KEYS */;
INSERT INTO `informatives` VALUES (1,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումinfo','[{\"download_link\":\"informatives\\/June2019\\/G5MJUnFyoI6rbx4XG86j.\",\"original_name\":\"test\"}]',NULL,'informatives/June2019/7tyrKuw8ZXGJcQNFbvB7.png','2019-06-20 00:00:00','2019-06-20 08:08:24','2019-06-20 08:08:24'),(2,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումinfo','[]','https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given','informatives/June2019/y0boeVaA8TvhiIrO0sfa.png','2019-06-20 00:00:00','2019-06-20 08:08:55','2019-06-20 08:08:55');
/*!40000 ALTER TABLE `informatives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
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
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2019-06-04 08:24:50','2019-06-04 08:24:50','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2019-06-04 08:24:50','2019-06-06 05:20:49','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2019-06-04 08:24:50','2019-06-04 08:24:50','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2019-06-04 08:24:50','2019-06-04 08:24:50','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,8,'2019-06-04 08:24:50','2019-06-06 05:20:49',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2019-06-04 08:24:50','2019-06-06 05:20:49','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2019-06-04 08:24:50','2019-06-06 05:20:49','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2019-06-04 08:24:50','2019-06-06 05:20:49','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2019-06-04 08:24:50','2019-06-06 05:20:49','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,9,'2019-06-04 08:24:50','2019-06-06 05:20:49','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2019-06-04 08:24:51','2019-06-06 05:20:49','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2019-06-04 08:24:51','2019-06-06 05:20:49','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2019-06-04 08:24:51','2019-06-06 05:20:49','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2019-06-04 08:24:51','2019-06-06 05:20:49','voyager.hooks',NULL),(15,1,'Home','','_self',NULL,'#000000',NULL,12,'2019-06-05 10:41:25','2019-06-17 10:17:30','voyager.home.index','null'),(17,1,'Homepage Sliders','','_self',NULL,NULL,15,1,'2019-06-06 04:32:45','2019-06-06 05:21:30','voyager.homepage-sliders.index',NULL),(18,1,'News','','_self',NULL,'#000000',NULL,14,'2019-06-06 07:35:14','2019-06-19 06:11:17',NULL,''),(21,1,'News','','_self',NULL,NULL,18,1,'2019-06-07 04:47:54','2019-06-07 04:48:31','voyager.news.index',NULL),(22,1,'Announcements','','_self',NULL,NULL,23,1,'2019-06-07 06:49:37','2019-06-07 07:04:06','voyager.announcements.index',NULL),(24,1,'Announcements','/admin/announcements','_self',NULL,'#000000',18,2,'2019-06-07 07:05:29','2019-06-07 07:05:34',NULL,''),(25,1,'Videos','','_self',NULL,NULL,18,3,'2019-06-07 08:13:21','2019-06-07 08:13:50','voyager.videos.index',NULL),(27,1,'Ministry','','_self',NULL,'#000000',NULL,15,'2019-06-10 05:23:41','2019-06-19 06:11:17',NULL,''),(31,1,'Minister\'s Staff','','_self',NULL,'#000000',27,4,'2019-06-10 05:57:01','2019-06-13 09:48:26','voyager.minister-staff.index','null'),(32,1,'Ministry Staff','','_self',NULL,'#000000',27,5,'2019-06-10 09:10:30','2019-06-13 09:48:26','voyager.ministry-staff.index','null'),(33,1,'Partners','','_self',NULL,NULL,NULL,16,'2019-06-10 10:04:06','2019-06-19 06:10:36','voyager.partners.index',NULL),(34,1,'Pages Texts','','_self',NULL,NULL,NULL,10,'2019-06-12 04:28:01','2019-06-17 10:17:25','voyager.pages-texts.index',NULL),(39,1,'Minister Page','','_self',NULL,NULL,27,1,'2019-06-13 08:37:53','2019-06-13 08:38:20','voyager.minister-page.index',NULL),(40,1,'Minister Info Categories','','_self',NULL,NULL,27,2,'2019-06-13 09:18:22','2019-06-13 09:48:22','voyager.minister-info-categories.index',NULL),(41,1,'Minister Infos','','_self',NULL,NULL,27,3,'2019-06-13 09:32:54','2019-06-13 09:48:26','voyager.minister-infos.index',NULL),(42,1,'Cover Photos','','_self',NULL,NULL,NULL,11,'2019-06-17 08:09:10','2019-06-17 10:17:30','voyager.cover-photos.index',NULL),(43,1,'Speech And Interviews','','_self',NULL,NULL,44,1,'2019-06-19 06:09:46','2019-06-19 06:10:39','voyager.speech-and-interviews.index',NULL),(44,1,'Informative','','_self','Information','#000000',NULL,13,'2019-06-19 06:10:23','2019-06-19 10:39:57',NULL,''),(45,1,'Reports','','_self',NULL,NULL,44,2,'2019-06-19 09:16:22','2019-06-19 09:16:46','voyager.reports.index',NULL),(46,1,'Press Releases','','_self',NULL,NULL,44,3,'2019-06-20 05:35:32','2019-06-20 05:35:56','voyager.press-releases.index',NULL),(47,1,'Researches','','_self',NULL,NULL,44,4,'2019-06-20 07:26:08','2019-06-20 07:26:28','voyager.researches.index',NULL),(48,1,'Statistics','','_self',NULL,NULL,44,5,'2019-06-20 07:36:42','2019-06-20 07:39:23','voyager.statistics.index',NULL),(49,1,'Informatives','','_self',NULL,NULL,44,6,'2019-06-20 08:07:26','2019-06-20 08:07:44','voyager.informatives.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2019-06-04 08:24:50','2019-06-04 08:24:50');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (87,'2014_10_12_000000_create_users_table',1),(88,'2014_10_12_100000_create_password_resets_table',1),(89,'2016_01_01_000000_add_voyager_user_fields',1),(90,'2016_01_01_000000_create_data_types_table',1),(91,'2016_01_01_000000_create_pages_table',1),(92,'2016_01_01_000000_create_posts_table',1),(93,'2016_02_15_204651_create_categories_table',1),(94,'2016_05_19_173453_create_menu_table',1),(95,'2016_10_21_190000_create_roles_table',1),(96,'2016_10_21_190000_create_settings_table',1),(97,'2016_11_30_135954_create_permission_table',1),(98,'2016_11_30_141208_create_permission_role_table',1),(99,'2016_12_26_201236_data_types__add__server_side',1),(100,'2017_01_13_000000_add_route_to_menu_items_table',1),(101,'2017_01_14_005015_create_translations_table',1),(102,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(103,'2017_03_06_000000_add_controller_to_data_types_table',1),(104,'2017_04_11_000000_alter_post_nullable_fields_table',1),(105,'2017_04_21_000000_add_order_to_data_rows_table',1),(106,'2017_07_05_210000_add_policyname_to_data_types_table',1),(107,'2017_08_05_000000_add_group_to_settings_table',1),(108,'2017_11_26_013050_add_user_role_relationship',1),(109,'2017_11_26_015000_create_user_roles_table',1),(110,'2018_03_11_000000_add_user_settings',1),(111,'2018_03_14_000000_add_details_to_data_types_table',1),(112,'2018_03_16_000000_make_settings_value_nullable',1),(113,'2019_06_05_143810_create_cars_table',1),(114,'2019_06_06_082150_create_homepage_sliders_table',1),(115,'2019_06_07_084259_create_news_table',1),(116,'2019_06_07_102546_create_announcements_table',1),(117,'2019_06_07_120635_create_videos_table',1),(118,'2019_06_10_095525_create_minister_staffs_table',1),(119,'2019_06_10_130540_create_ministry_staffs_table',1),(120,'2019_06_10_140028_create_partners_table',1),(121,'2019_06_12_080821_create_pages_texts_table',1),(122,'2019_06_13_120030_create_minister_pages_table',1),(123,'2019_06_13_130325_create_minister_info_categories_table',1),(124,'2019_06_13_132757_create_minister_infos_table',1),(125,'2019_06_13_142439_add_url_to_minister_infos_table',1),(126,'2019_06_14_135727_drop_url_from_news_table',1),(127,'2019_06_17_065247_drop_video_individual_url_from_videos_table',1),(128,'2019_06_17_113519_create_cover_photos_table',1),(129,'2019_06_18_110124_drop_url_from_announcements_table',1),(130,'2019_06_19_085443_create_speech_and_interviews_table',2),(131,'2019_06_19_130403_create_reports_table',3),(132,'2019_06_20_084806_create_press_releases_table',4),(133,'2019_06_20_112005_create_researches_table',5),(134,'2019_06_20_113004_create_statistics_table',6),(135,'2019_06_20_114753_create_informatives_table',7),(136,'2019_06_21_102753_add_slider_row_topartners_table',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minister_info_categories`
--

DROP TABLE IF EXISTS `minister_info_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minister_info_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minister_info_categories`
--

LOCK TABLES `minister_info_categories` WRITE;
/*!40000 ALTER TABLE `minister_info_categories` DISABLE KEYS */;
INSERT INTO `minister_info_categories` VALUES (2,'ԿՐԹՈՒԹՅՈՒՆ','education','2019-06-13 09:49:12','2019-06-13 09:49:12'),(3,'ԱՇԽԱՏԱՆՔԱՅԻՆ ԳՈՐԾՈՒՆԵՈՒԹՅՈՒՆ','work-experience','2019-06-13 09:50:09','2019-06-13 09:50:09'),(4,'ԱՅԼ ՏՎՅԱԼՆԵՐ','other-info','2019-06-13 09:50:33','2019-06-13 09:50:33');
/*!40000 ALTER TABLE `minister_info_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minister_infos`
--

DROP TABLE IF EXISTS `minister_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minister_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `minister_infos_category_id_foreign` (`category_id`),
  CONSTRAINT `minister_infos_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `minister_info_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minister_infos`
--

LOCK TABLES `minister_infos` WRITE;
/*!40000 ALTER TABLE `minister_infos` DISABLE KEYS */;
INSERT INTO `minister_infos` VALUES (3,'2004-2006','սովորել է ՀՀ ԱՆ ակադեմիկոս Ս.Ավդալբեկյանի անվան առողջապահության ազգային ինստիտուտում՝ սոցիալական հիգիենա և առողջապահության կազմակերպում մասնագիտությամբ','#',2,'2019-06-13 09:52:00','2019-06-13 10:40:19'),(4,'1988-2004','սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում','',2,'2019-06-13 09:52:59','2019-06-13 09:52:59'),(5,'2004-2005','«Իրական աշխարհ, իրական մարդիկ» ՀԿ, Սոցիալական աշխատողների խմբի ղեկավար','',3,'2019-06-13 09:53:40','2019-06-13 09:53:40'),(6,'2005-2010','Առողջության առաջնային պահպանման բարեփոխումների ծրագիր, Ընտանեկան բժշկության և բուժօգնության որակի համակարգող','',3,'2019-06-13 09:54:03','2019-06-13 09:54:03'),(7,'2010-2011','ՀՀ ԱՆ տուբերկուլոզի դեմ պայքարի ազգային կենտրոն, Մոնիտորինգի և գնահատման բաժնի վարիչ, Տնօրենի ժամանակավոր պաշտոնակատար','',3,'2019-06-13 09:54:26','2019-06-13 09:54:26'),(8,'2011-2015 2016-2018','«ՄԻԲՍ» բժշկա-ախտորոշիչ կենտրոն, տնօրեն','',3,'2019-06-13 09:55:15','2019-06-13 09:55:15'),(9,'12.05.2018','Հայաստանի Հանրապետության առողջապահության նախարարն է','',3,'2019-06-13 09:55:42','2019-06-13 09:55:42'),(10,'18.01.2019','հանրապետության նախագահի հրամանագրով վերանշանակվել է առողջապահության նախարար','',3,'2019-06-13 09:56:14','2019-06-13 09:56:14'),(11,'2015-2016','Ծառայել է ՀՀ զինված ուժերում: Ունի բ/ծ լեյտենանտի կոչում։','',4,'2019-06-13 09:57:01','2019-06-13 09:57:01'),(12,'','Մասնակցել է բազմաթիվ գիտաժողովներիև դասընթացների: Հեղինակ է հայաստանյան և միջազգային գիտական ամսագրերում տպագրված մի շարք հոդվածների:','#',4,'2019-06-13 10:03:00','2019-06-13 10:31:55');
/*!40000 ALTER TABLE `minister_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minister_pages`
--

DROP TABLE IF EXISTS `minister_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minister_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `minister_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minister_personal_info_pic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minister_personal_info_pic_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minister_pages`
--

LOCK TABLES `minister_pages` WRITE;
/*!40000 ALTER TABLE `minister_pages` DISABLE KEYS */;
INSERT INTO `minister_pages` VALUES (2,'minister-page/June2019/tQ3egZnrn5E4rzCwHGxF.png','minister-page/June2019/FiipLV7pNoii183YUSx5.png','Ամուսնացած է ունի երկու զավակ։','2019-06-13 10:33:21','2019-06-13 10:33:21');
/*!40000 ALTER TABLE `minister_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minister_staffs`
--

DROP TABLE IF EXISTS `minister_staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minister_staffs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minister_staffs`
--

LOCK TABLES `minister_staffs` WRITE;
/*!40000 ALTER TABLE `minister_staffs` DISABLE KEYS */;
INSERT INTO `minister_staffs` VALUES (1,'հհ առողջապահության նախարար','ալինա նիկողոսյան','(+74 60)80 80-03/1123','minister@moh.am','minister-staff/June2019/Q2HLlPFPIiP633JDeUR7.png','<p>Ալինա Նիկողոսյանը իրականացնում է՝</p>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n</ul>','2019-06-10 05:58:44','2019-06-10 05:58:44'),(2,'հհ առողջապահության նախարար 2','ալինա նիկողոսյան 2','(+74 60)80 80-03/1123','minister@moh.am','minister-staff/June2019/6N9bLAisTA2ZBJ6KbeIE.png','<p>Ալինա Նիկողոսյանը իրականացնում է՝</p>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n</ul>','2019-06-10 05:59:25','2019-06-10 05:59:25'),(3,'հհ առողջապահության նախարար 3','ալինա նիկողոսյան 3','(+74 60)80 80-03/1123','minister@moh.am','minister-staff/June2019/v0268mElyOOVNQUmrGzz.png','<p>Ալինա Նիկողոսյանը իրականացնում է՝</p>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման&nbsp;ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության&nbsp;քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային&nbsp;կազմակերպության միջոցով,</li>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n</ul>','2019-06-10 06:00:10','2019-06-10 06:00:10'),(4,'հհ առողջապահության նախարար 4','ալինա նիկողոսյան 4','(+74 60)80 80-03/1123','minister@moh.am','minister-staff/June2019/ROcEYES2P2d0oPLcAYzt.png','<h1>Ալինա Նիկողոսյանը իրականացնում է՝</h1>\r\n<ul>\r\n<li>դատաբժշկական, դատահոգեբուժական, ախտաբանաանատոմիական բժշկական օգնության և սպասարկման ծառայություների կազմակերպման աշխատանքների համակարգումը` նախարարության բժշկական օգնության քաղաքականության վարչության, &laquo;Դատաբժշկական գիտագործնական կենտրոն&raquo; պետական ոչ առևտրային կազմակերպության միջոցով,</li>\r\n<li>նախարարության` արտաքին հարաբերությունների ոլորտում իրականացվող միջպետական, ներառյալ ԱՊՀերկրների և Եվրասիական տնտեսական միության հետ համագործակցության շրջանակում իրականացվող աշխատանքների համակարգումը` նախարարության միջազգային հարաբերությունների վարչության միջոցով,</li>\r\n<li>առողջապահության քաղաքականության, ստվերային շրջանառության դեմ պայքարի, առողջապահության ոլորտի օրենսդրության մշակման և կատարելագործման աշխատանքների համակարգումը` նախարարության իրավաբանական վարչության միջոցով,</li>\r\n<li>կոռուպցիայի դեմ պայքարի աշխատանքների համակարգումը` հակակոռուպցիոն ծրագրերի իրականացումը համակարգող ստորաբաժանում հանդիսացող նախարարության իրավաբանական վարչության, քաղաքացիների բողոքների և դիմումների արագ արձագանքման բաժնի, ոլորտային իրավասու այլ կառուցվածքային և առանձնացված ստորաբաժանումների միջոցով,</li>\r\n<li>դեղերի շրջանառության պետական կարգավորման ոլորտում իրականացվող աշխատանքների համակարգումը` նախարարության դեղորայքային քաղաքականության և բժշկական տեխնոլոգիաների վարչության, &laquo;Ակադեմիկոս Էմիլ Գաբրիելյանի անվան դեղերի և բժշկական տեխնոլոգիաների փորձագիտական կենտրոն&raquo; փակ բաժնետիրական ընկերության միջոցով,</li>\r\n<li>առողջապահության բնագավառում լիցենզավորման ենթակա գործունեության տեսակների լիցենզավորման և գովազդի թույլտվությունների տրամադրման աշխատանքների համակարգումը` նախարարության&nbsp; լիցենզավորման գործակալության միջոցով:</li>\r\n</ul>','2019-06-10 06:00:00','2019-06-11 05:06:14');
/*!40000 ALTER TABLE `minister_staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ministry_staffs`
--

DROP TABLE IF EXISTS `ministry_staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ministry_staffs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ministry_staffs`
--

LOCK TABLES `ministry_staffs` WRITE;
/*!40000 ALTER TABLE `ministry_staffs` DISABLE KEYS */;
INSERT INTO `ministry_staffs` VALUES (1,'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար','Վահե Հակոբյան','(+74 60)80 80-03/1123','minister@moh.am','2019-06-10 09:12:17','2019-06-10 09:12:17'),(2,'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 2','Վահե Հակոբյան 2','(+74 60)80 80-03/1123','minister@moh.am','2019-06-10 09:12:41','2019-06-10 09:12:41'),(3,'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 3','Վահե Հակոբյան 3','(+74 60)80 80-03/1123','minister@moh.am','2019-06-10 09:13:00','2019-06-10 09:13:00'),(4,'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 4','Վահե Հակոբյան 4','(+74 60)80 80-03/1123','minister@moh.am','2019-06-10 09:13:15','2019-06-10 09:13:15'),(5,'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 5','Վահե Հակոբյան 5','(+74 60)80 80-03/1123','minister@moh.am','2019-06-10 09:13:35','2019-06-10 09:13:35'),(6,'ՀՀ առողջապահության նախարարության գլխավոր քարտուղարի պաշտոնակատար 6','Վահե Հակոբյան 6','(+74 60)80 80-03/1123','minister@moh.am','2019-06-10 09:13:56','2019-06-10 09:13:56');
/*!40000 ALTER TABLE `ministry_staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ','<p><span style=\"color: #222222; font-family: \'dejavu sans mono\', monospace; font-size: 11px; white-space: pre-wrap;\">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ</span></p>','[\"news\\/June2019\\/uCE6MXjF1srFAA8XyBzE.png\",\"news\\/June2019\\/OZvbpD3nddDWSLq0U3M8.png\",\"news\\/June2019\\/VMr51567mvub0tzN53uK.png\"]','https://youtu.be/h56M8Ti6Ejw','2019-06-12','2019-06-07 07:56:35','2019-06-07 07:56:35'),(2,'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ 2','<p><span style=\"color: #222222; font-family: dejavu sans mono, monospace;\"><span style=\"font-size: 11px; white-space: pre-wrap;\">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ 2</span></span></p>','[\"news\\/June2019\\/65OSEyWqVlwdfDmAL5GH.png\",\"news\\/June2019\\/kw8fxHPaTIzrNCqdm5n1.png\",\"news\\/June2019\\/2bdjyn2d44YpyyrxLUSK.png\"]','https://youtu.be/h56M8Ti6Ejw','2019-06-27','2019-06-07 07:57:00','2019-06-20 09:59:00'),(3,'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»  ԾՐԱԳՐԻ ՆԱԽԱՊԱՏՐԱՍՏԱԿԱՆ ԱՇԽԱՏԱՆՔՆԵՐԸ 3','<p><span style=\"color: #222222; font-family: dejavu sans mono, monospace;\"><span style=\"font-size: 11px; white-space: pre-wrap;\">2019 թվականի բյուջետային հատկացումների շրջանակներում առողջապահության նախարարությունը նախատեսում է աջակցություն ցուցաբերել բնակչության առանձին խմբերի անպտղությամբ պայմանավորված: Պետության կողմից երաշխավորված անվճար և արտոնյալ պայմաններով բժշկական օգնության և սպասարկման շրջանակներում կիրականացվեն անպտղության պատճառագիտության հետազոտություններ և անպտղության բուժում, այդ թվում`վերարտադրողական օժանդակ 3</span></span></p>','[\"news\\/June2019\\/lL13LrPgz4vaNAdop7Qm.png\",\"news\\/June2019\\/MbVKOXwlaHcLob0VeNnK.png\",\"news\\/June2019\\/L3NBHJf1Ngq49G9hmsyR.png\"]','https://youtu.be/h56M8Ti6Ejw','2019-06-04','2019-06-07 07:58:00','2019-06-20 09:58:43');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2019-06-04 08:24:51','2019-06-04 08:24:51'),(2,1,'Test','test','','pages/June2019/fvx3ADOOJu6XKOLTRPXw.png','test','test','test','ACTIVE','2019-06-05 10:07:07','2019-06-14 04:33:41');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_texts`
--

DROP TABLE IF EXISTS `pages_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_texts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_texts`
--

LOCK TABLES `pages_texts` WRITE;
/*!40000 ALTER TABLE `pages_texts` DISABLE KEYS */;
INSERT INTO `pages_texts` VALUES (1,'ԱՌԱՔԵԼՈՒԹՅՈՒՆ','mission','<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111</p>','','','2019-06-12 04:33:00','2019-06-14 05:56:21'),(3,'ՀԵՏԱԴԱՐՁ ԿԱՊ','contact-us','<h1>Հարգելի այցելու,</h1>\r\n<ul>\r\n<li>այս էջի միջոցով կարող եք առցանց դիմում գրել կամ տեղեկատվություն ստանալու համար պաշտոնական հարցում ուղարկել: Հարցման պարագայում խնդրում ենք օգտվել տեղեկատվության հարցման օրինակելի ձևից:</li>\r\n<li>Դիմումի ձևը` <img src=\"http://moh.loc/storage/docx-icon.png\" alt=\"\" /><a href=\"http://moh.loc/storage/test.\" download=\"\">asdasdasd</a></li>\r\n<li>Տեղեկացնում ենք, որ դիմումը և հարցումը պետք է ստորագրված լինեն: Դիմումը կամ հարցումը ստանալուց հետո էլեկտրոնային փոստով Ձեզ կտրամադրվի 12 նիշանոց հսկիչ համար, որը մուտքագրելով այս դաշտում, կարող եք նաև առցանց հետևել նամակի ընթացքին:</li>\r\n</ul>','<ul class=\"contact__us--text2\">\r\n<li>Տեղեկատվության ազատության համար պատասխանատու պաշտոնատար անձ, <span class=\"span\">Լիլիթ Բաբախանյան</span></li>\r\n<li>ՀՀ ԱՆ աշխատակազմի հասարակայնության հետ կապերի բաժին</li>\r\n<li>Հեռ. (+374 60) 80-80-03 / 2301; 2302,</li>\r\n<li>էլ. փոստ՝&nbsp;<a>pr@moh.am</a></li>\r\n</ul>','','2019-06-12 08:01:00','2019-06-13 03:36:52'),(4,'ՆԱԽԱՐԱՐ','minister-page','<h2>Հարգելի քաղաքացի</h2>\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:</p>','<h1>Հարգելիներս</h1>\r\n<p>իմ նպատակը առողջապահության նախարարության թափանցիկ, արդյունավետ և անխափան աշխատանքի ապահովումն է ու պատասխանատվության ճիշտ բաշխումը:</p>\r\n<p>Խոստանում ենք ջանք չխնայել և ուժերի ներածի չափով Ձեր կողքին լինել ու պատրաստ ենք արձագանքել Ձեր խնդիրներին, դժգոհություններին, մեր համակարգում Ձեր առջև ծառացած ամենատարբեր հարցերին: &laquo;Թեժ գծով&raquo;` 8003, պատրաստ ենք լսել Ձեզ: Հարցերի լուծումն անձնապես իմ ուշադրության կենտրոնում է լինելու:</p>\r\n<h4>Սիրով՝ Արսեն Թորոսյան</h4>','','2019-06-13 04:26:00','2019-06-13 07:23:29'),(5,'Կանոնադրություն','charter','<h1>Հայաստանի Հանրապետության վարչապետ</h1>\n<h2>որոշում</h2>\n<h3>11 հունիսի 2018 թվականի N 728-L</h3>','<h1>Հայաստանի Հանրապետության առողջապահության նախարարության կանոնադրությունը հաստատելու մասին</h1>\r\n<p>Հիմք ընդունելով &lt;&lt; Պետական կառավարման համակարգի մարմինների մասին&gt;&gt; Հայաստանի Հանրապետության օրենքի 7-րդ հոդվածի 9-րդ մասը և &lt;&lt; Կառավարության կառուցվածքի և գործունեության մասին&gt;&gt; Հայստանի Հանրապետության օրենքի 7-րդ հոդվածի 10-րդ մասը՝</p>\r\n<p>Հաստատել Հայաստանի Հանրապետության առոջղապահության նախարարության կանոնադրությունը՝ համաձայն հավելվածի</p>\r\n<p>Հայաստանի Հանրապետության վարչապետ <strong>Ն․ Փաշինյան</strong></p>','<p><a href=\"http://moh.loc/storage/test.\">asd</a></p>','2019-06-14 03:33:00','2019-06-14 04:19:18');
/*!40000 ALTER TABLE `pages_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_row` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (1,'partners/June2019/AUNCfibL6TxEmB6KkNIz.png','#','','2019-06-10 10:05:21','2019-06-10 10:05:21'),(2,'partners/June2019/VVZhsLOUNy528MphJKCx.png','#','','2019-06-10 10:05:33','2019-06-10 10:05:33'),(3,'partners/June2019/NqmxzbbL85h9IYLxjF3v.png','#','','2019-06-10 10:05:48','2019-06-10 10:05:48'),(4,'partners/June2019/OqlhMHGYC5LSUxybxAVo.png','#','','2019-06-10 10:06:12','2019-06-10 10:06:12'),(5,'partners/June2019/fKvA5scv88GZP5xv5OFj.png','#','','2019-06-10 10:06:32','2019-06-10 10:06:32'),(6,'partners/June2019/XfZIqFNDBJCbYfZ3jO9w.png','#','','2019-06-10 10:06:41','2019-06-10 10:06:41'),(7,'partners/June2019/OgU6BysZsyhlObG0j96R.png','#','','2019-06-10 10:06:55','2019-06-10 10:06:55'),(8,'partners/June2019/9V2dsrhy13BV69MXMlL5.png','#','','2019-06-10 10:07:16','2019-06-10 10:07:16');
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(42,1),(43,1),(44,1),(45,1),(46,1),(52,1),(52,2),(53,1),(53,2),(54,1),(54,2),(55,1),(55,2),(56,1),(56,2),(67,1),(67,2),(68,1),(68,2),(69,1),(69,2),(70,1),(70,2),(71,1),(71,2),(72,1),(72,2),(73,1),(73,2),(74,1),(74,2),(75,1),(75,2),(76,1),(76,2),(77,1),(77,2),(78,1),(78,2),(79,1),(79,2),(80,1),(80,2),(81,1),(81,2),(92,1),(92,2),(93,1),(93,2),(94,1),(94,2),(95,1),(95,2),(96,1),(96,2),(97,1),(97,2),(98,1),(98,2),(99,1),(99,2),(100,1),(100,2),(101,1),(101,2),(102,1),(102,2),(103,1),(103,2),(104,1),(104,2),(105,1),(105,2),(106,1),(106,2),(107,1),(107,2),(108,1),(108,2),(109,1),(109,2),(110,1),(111,1),(127,1),(127,2),(128,1),(128,2),(129,1),(129,2),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(137,2),(138,1),(138,2),(139,1),(139,2),(140,1),(140,2),(141,1),(141,2),(142,1),(142,2),(143,1),(143,2),(144,1),(144,2),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1),(175,1),(176,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(2,'browse_bread',NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(3,'browse_database',NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(4,'browse_media',NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(5,'browse_compass',NULL,'2019-06-04 08:24:50','2019-06-04 08:24:50'),(6,'browse_menus','menus','2019-06-04 08:24:50','2019-06-04 08:24:50'),(7,'read_menus','menus','2019-06-04 08:24:50','2019-06-04 08:24:50'),(8,'edit_menus','menus','2019-06-04 08:24:50','2019-06-04 08:24:50'),(9,'add_menus','menus','2019-06-04 08:24:50','2019-06-04 08:24:50'),(10,'delete_menus','menus','2019-06-04 08:24:50','2019-06-04 08:24:50'),(11,'browse_roles','roles','2019-06-04 08:24:50','2019-06-04 08:24:50'),(12,'read_roles','roles','2019-06-04 08:24:50','2019-06-04 08:24:50'),(13,'edit_roles','roles','2019-06-04 08:24:50','2019-06-04 08:24:50'),(14,'add_roles','roles','2019-06-04 08:24:50','2019-06-04 08:24:50'),(15,'delete_roles','roles','2019-06-04 08:24:50','2019-06-04 08:24:50'),(16,'browse_users','users','2019-06-04 08:24:50','2019-06-04 08:24:50'),(17,'read_users','users','2019-06-04 08:24:50','2019-06-04 08:24:50'),(18,'edit_users','users','2019-06-04 08:24:50','2019-06-04 08:24:50'),(19,'add_users','users','2019-06-04 08:24:50','2019-06-04 08:24:50'),(20,'delete_users','users','2019-06-04 08:24:50','2019-06-04 08:24:50'),(21,'browse_settings','settings','2019-06-04 08:24:50','2019-06-04 08:24:50'),(22,'read_settings','settings','2019-06-04 08:24:50','2019-06-04 08:24:50'),(23,'edit_settings','settings','2019-06-04 08:24:50','2019-06-04 08:24:50'),(24,'add_settings','settings','2019-06-04 08:24:50','2019-06-04 08:24:50'),(25,'delete_settings','settings','2019-06-04 08:24:50','2019-06-04 08:24:50'),(26,'browse_categories','categories','2019-06-04 08:24:51','2019-06-04 08:24:51'),(27,'read_categories','categories','2019-06-04 08:24:51','2019-06-04 08:24:51'),(28,'edit_categories','categories','2019-06-04 08:24:51','2019-06-04 08:24:51'),(29,'add_categories','categories','2019-06-04 08:24:51','2019-06-04 08:24:51'),(30,'delete_categories','categories','2019-06-04 08:24:51','2019-06-04 08:24:51'),(31,'browse_posts','posts','2019-06-04 08:24:51','2019-06-04 08:24:51'),(32,'read_posts','posts','2019-06-04 08:24:51','2019-06-04 08:24:51'),(33,'edit_posts','posts','2019-06-04 08:24:51','2019-06-04 08:24:51'),(34,'add_posts','posts','2019-06-04 08:24:51','2019-06-04 08:24:51'),(35,'delete_posts','posts','2019-06-04 08:24:51','2019-06-04 08:24:51'),(36,'browse_pages','pages','2019-06-04 08:24:51','2019-06-04 08:24:51'),(37,'read_pages','pages','2019-06-04 08:24:51','2019-06-04 08:24:51'),(38,'edit_pages','pages','2019-06-04 08:24:51','2019-06-04 08:24:51'),(39,'add_pages','pages','2019-06-04 08:24:51','2019-06-04 08:24:51'),(40,'delete_pages','pages','2019-06-04 08:24:51','2019-06-04 08:24:51'),(41,'browse_hooks',NULL,'2019-06-04 08:24:51','2019-06-04 08:24:51'),(42,'browse_cars','cars','2019-06-05 10:41:25','2019-06-05 10:41:25'),(43,'read_cars','cars','2019-06-05 10:41:25','2019-06-05 10:41:25'),(44,'edit_cars','cars','2019-06-05 10:41:25','2019-06-05 10:41:25'),(45,'add_cars','cars','2019-06-05 10:41:25','2019-06-05 10:41:25'),(46,'delete_cars','cars','2019-06-05 10:41:25','2019-06-05 10:41:25'),(52,'browse_homepage_sliders','homepage_sliders','2019-06-06 04:32:45','2019-06-06 04:32:45'),(53,'read_homepage_sliders','homepage_sliders','2019-06-06 04:32:45','2019-06-06 04:32:45'),(54,'edit_homepage_sliders','homepage_sliders','2019-06-06 04:32:45','2019-06-06 04:32:45'),(55,'add_homepage_sliders','homepage_sliders','2019-06-06 04:32:45','2019-06-06 04:32:45'),(56,'delete_homepage_sliders','homepage_sliders','2019-06-06 04:32:45','2019-06-06 04:32:45'),(67,'browse_news','news','2019-06-07 04:47:54','2019-06-07 04:47:54'),(68,'read_news','news','2019-06-07 04:47:54','2019-06-07 04:47:54'),(69,'edit_news','news','2019-06-07 04:47:54','2019-06-07 04:47:54'),(70,'add_news','news','2019-06-07 04:47:54','2019-06-07 04:47:54'),(71,'delete_news','news','2019-06-07 04:47:54','2019-06-07 04:47:54'),(72,'browse_announcements','announcements','2019-06-07 06:49:37','2019-06-07 06:49:37'),(73,'read_announcements','announcements','2019-06-07 06:49:37','2019-06-07 06:49:37'),(74,'edit_announcements','announcements','2019-06-07 06:49:37','2019-06-07 06:49:37'),(75,'add_announcements','announcements','2019-06-07 06:49:37','2019-06-07 06:49:37'),(76,'delete_announcements','announcements','2019-06-07 06:49:37','2019-06-07 06:49:37'),(77,'browse_videos','videos','2019-06-07 08:13:21','2019-06-07 08:13:21'),(78,'read_videos','videos','2019-06-07 08:13:21','2019-06-07 08:13:21'),(79,'edit_videos','videos','2019-06-07 08:13:21','2019-06-07 08:13:21'),(80,'add_videos','videos','2019-06-07 08:13:21','2019-06-07 08:13:21'),(81,'delete_videos','videos','2019-06-07 08:13:21','2019-06-07 08:13:21'),(92,'browse_minister_staffs','minister_staffs','2019-06-10 05:57:01','2019-06-10 05:57:01'),(93,'read_minister_staffs','minister_staffs','2019-06-10 05:57:01','2019-06-10 05:57:01'),(94,'edit_minister_staffs','minister_staffs','2019-06-10 05:57:01','2019-06-10 05:57:01'),(95,'add_minister_staffs','minister_staffs','2019-06-10 05:57:01','2019-06-10 05:57:01'),(96,'delete_minister_staffs','minister_staffs','2019-06-10 05:57:01','2019-06-10 05:57:01'),(97,'browse_ministry_staffs','ministry_staffs','2019-06-10 09:10:30','2019-06-10 09:10:30'),(98,'read_ministry_staffs','ministry_staffs','2019-06-10 09:10:30','2019-06-10 09:10:30'),(99,'edit_ministry_staffs','ministry_staffs','2019-06-10 09:10:30','2019-06-10 09:10:30'),(100,'add_ministry_staffs','ministry_staffs','2019-06-10 09:10:30','2019-06-10 09:10:30'),(101,'delete_ministry_staffs','ministry_staffs','2019-06-10 09:10:30','2019-06-10 09:10:30'),(102,'browse_partners','partners','2019-06-10 10:04:06','2019-06-10 10:04:06'),(103,'read_partners','partners','2019-06-10 10:04:06','2019-06-10 10:04:06'),(104,'edit_partners','partners','2019-06-10 10:04:06','2019-06-10 10:04:06'),(105,'add_partners','partners','2019-06-10 10:04:06','2019-06-10 10:04:06'),(106,'delete_partners','partners','2019-06-10 10:04:06','2019-06-10 10:04:06'),(107,'browse_pages_texts','pages_texts','2019-06-12 04:28:01','2019-06-12 04:28:01'),(108,'read_pages_texts','pages_texts','2019-06-12 04:28:01','2019-06-12 04:28:01'),(109,'edit_pages_texts','pages_texts','2019-06-12 04:28:01','2019-06-12 04:28:01'),(110,'add_pages_texts','pages_texts','2019-06-12 04:28:01','2019-06-12 04:28:01'),(111,'delete_pages_texts','pages_texts','2019-06-12 04:28:01','2019-06-12 04:28:01'),(127,'browse_minister_pages','minister_pages','2019-06-13 08:37:53','2019-06-13 08:37:53'),(128,'read_minister_pages','minister_pages','2019-06-13 08:37:53','2019-06-13 08:37:53'),(129,'edit_minister_pages','minister_pages','2019-06-13 08:37:53','2019-06-13 08:37:53'),(130,'add_minister_pages','minister_pages','2019-06-13 08:37:53','2019-06-13 08:37:53'),(131,'delete_minister_pages','minister_pages','2019-06-13 08:37:53','2019-06-13 08:37:53'),(132,'browse_minister_info_categories','minister_info_categories','2019-06-13 09:18:22','2019-06-13 09:18:22'),(133,'read_minister_info_categories','minister_info_categories','2019-06-13 09:18:22','2019-06-13 09:18:22'),(134,'edit_minister_info_categories','minister_info_categories','2019-06-13 09:18:22','2019-06-13 09:18:22'),(135,'add_minister_info_categories','minister_info_categories','2019-06-13 09:18:22','2019-06-13 09:18:22'),(136,'delete_minister_info_categories','minister_info_categories','2019-06-13 09:18:22','2019-06-13 09:18:22'),(137,'browse_minister_infos','minister_infos','2019-06-13 09:32:54','2019-06-13 09:32:54'),(138,'read_minister_infos','minister_infos','2019-06-13 09:32:54','2019-06-13 09:32:54'),(139,'edit_minister_infos','minister_infos','2019-06-13 09:32:54','2019-06-13 09:32:54'),(140,'add_minister_infos','minister_infos','2019-06-13 09:32:54','2019-06-13 09:32:54'),(141,'delete_minister_infos','minister_infos','2019-06-13 09:32:54','2019-06-13 09:32:54'),(142,'browse_cover_photos','cover_photos','2019-06-17 08:09:10','2019-06-17 08:09:10'),(143,'read_cover_photos','cover_photos','2019-06-17 08:09:10','2019-06-17 08:09:10'),(144,'edit_cover_photos','cover_photos','2019-06-17 08:09:10','2019-06-17 08:09:10'),(145,'add_cover_photos','cover_photos','2019-06-17 08:09:10','2019-06-17 08:09:10'),(146,'delete_cover_photos','cover_photos','2019-06-17 08:09:10','2019-06-17 08:09:10'),(147,'browse_speech_and_interviews','speech_and_interviews','2019-06-19 06:09:46','2019-06-19 06:09:46'),(148,'read_speech_and_interviews','speech_and_interviews','2019-06-19 06:09:46','2019-06-19 06:09:46'),(149,'edit_speech_and_interviews','speech_and_interviews','2019-06-19 06:09:46','2019-06-19 06:09:46'),(150,'add_speech_and_interviews','speech_and_interviews','2019-06-19 06:09:46','2019-06-19 06:09:46'),(151,'delete_speech_and_interviews','speech_and_interviews','2019-06-19 06:09:46','2019-06-19 06:09:46'),(152,'browse_reports','reports','2019-06-19 09:16:22','2019-06-19 09:16:22'),(153,'read_reports','reports','2019-06-19 09:16:22','2019-06-19 09:16:22'),(154,'edit_reports','reports','2019-06-19 09:16:22','2019-06-19 09:16:22'),(155,'add_reports','reports','2019-06-19 09:16:22','2019-06-19 09:16:22'),(156,'delete_reports','reports','2019-06-19 09:16:22','2019-06-19 09:16:22'),(157,'browse_press_releases','press_releases','2019-06-20 05:35:32','2019-06-20 05:35:32'),(158,'read_press_releases','press_releases','2019-06-20 05:35:32','2019-06-20 05:35:32'),(159,'edit_press_releases','press_releases','2019-06-20 05:35:32','2019-06-20 05:35:32'),(160,'add_press_releases','press_releases','2019-06-20 05:35:32','2019-06-20 05:35:32'),(161,'delete_press_releases','press_releases','2019-06-20 05:35:32','2019-06-20 05:35:32'),(162,'browse_researches','researches','2019-06-20 07:26:08','2019-06-20 07:26:08'),(163,'read_researches','researches','2019-06-20 07:26:08','2019-06-20 07:26:08'),(164,'edit_researches','researches','2019-06-20 07:26:08','2019-06-20 07:26:08'),(165,'add_researches','researches','2019-06-20 07:26:08','2019-06-20 07:26:08'),(166,'delete_researches','researches','2019-06-20 07:26:08','2019-06-20 07:26:08'),(167,'browse_statistics','statistics','2019-06-20 07:36:42','2019-06-20 07:36:42'),(168,'read_statistics','statistics','2019-06-20 07:36:42','2019-06-20 07:36:42'),(169,'edit_statistics','statistics','2019-06-20 07:36:42','2019-06-20 07:36:42'),(170,'add_statistics','statistics','2019-06-20 07:36:42','2019-06-20 07:36:42'),(171,'delete_statistics','statistics','2019-06-20 07:36:42','2019-06-20 07:36:42'),(172,'browse_informatives','informatives','2019-06-20 08:07:26','2019-06-20 08:07:26'),(173,'read_informatives','informatives','2019-06-20 08:07:26','2019-06-20 08:07:26'),(174,'edit_informatives','informatives','2019-06-20 08:07:26','2019-06-20 08:07:26'),(175,'add_informatives','informatives','2019-06-20 08:07:26','2019-06-20 08:07:26'),(176,'delete_informatives','informatives','2019-06-20 08:07:26','2019-06-20 08:07:26');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-06-04 08:24:51','2019-06-04 08:24:51'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-06-04 08:24:51','2019-06-04 08:24:51'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-06-04 08:24:51','2019-06-04 08:24:51'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-06-04 08:24:51','2019-06-04 08:24:51');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `press_releases`
--

DROP TABLE IF EXISTS `press_releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `press_releases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `press_releases`
--

LOCK TABLES `press_releases` WRITE;
/*!40000 ALTER TABLE `press_releases` DISABLE KEYS */;
INSERT INTO `press_releases` VALUES (1,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում asd','[]','https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given','press-releases/June2019/CaezqPlf5i8IlVa6ldLG.png','2019-06-20 00:00:00','2019-06-20 05:36:00','2019-06-20 08:17:07'),(2,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումpress','[{\"download_link\":\"press-releases\\/June2019\\/a1dVlGaC9MI5zoFLMbuF.\",\"original_name\":\"test\"}]',NULL,'press-releases/June2019/SvDNUzRFI8fwSYBd7gW2.png','2019-06-20 00:00:00','2019-06-20 08:16:56','2019-06-20 08:16:56');
/*!40000 ALTER TABLE `press_releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում asd','[{\"download_link\":\"reports\\/June2019\\/Qwu86VDG0bU5B0HPyerl.\",\"original_name\":\"test\"}]',NULL,'reports/June2019/ewtftX52dM0D673IoFbG.png','2019-06-19','2019-06-19 09:17:52','2019-06-19 09:17:52'),(2,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում asdfff','[]','https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given','reports/June2019/XyaiYBCGe9trHwZZHYO2.png','2019-06-19','2019-06-19 09:18:00','2019-06-19 09:20:46');
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `researches`
--

DROP TABLE IF EXISTS `researches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `researches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `researches`
--

LOCK TABLES `researches` WRITE;
/*!40000 ALTER TABLE `researches` DISABLE KEYS */;
INSERT INTO `researches` VALUES (1,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումres','[{\"download_link\":\"researches\\/June2019\\/TyyS0wp60ohGguALdr3x.\",\"original_name\":\"test\"}]',NULL,'researches/June2019/VTnlmvmdsCS8F0GRLTum.png','2019-06-19 00:00:00','2019-06-20 07:27:13','2019-06-20 07:27:13'),(2,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումres','[]','https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given','researches/June2019/rei2Z3lh8fB9Vjt6187E.png','2019-06-01 00:00:00','2019-06-20 07:27:55','2019-06-20 07:27:55');
/*!40000 ALTER TABLE `researches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2019-06-04 08:24:50','2019-06-04 08:24:50'),(2,'user','Normal User','2019-06-04 08:24:50','2019-06-04 08:24:50');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `speech_and_interviews`
--

DROP TABLE IF EXISTS `speech_and_interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `speech_and_interviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `speech_and_interviews`
--

LOCK TABLES `speech_and_interviews` WRITE;
/*!40000 ALTER TABLE `speech_and_interviews` DISABLE KEYS */;
INSERT INTO `speech_and_interviews` VALUES (1,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում','[{\"download_link\":\"speech-and-interviews\\/June2019\\/gZbe4lTft6R94dtQ8zB0.jpg\",\"original_name\":\"test\"}]',NULL,'speech-and-interviews/June2019/PlGqgEkYxdg6qe6Uume2.png','2019-06-19','2019-06-19 06:12:00','2019-06-19 06:12:49'),(3,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումaaaa','[]','https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given','speech-and-interviews/June2019/EkKM0o1UTc73IVYGaakh.png','2019-06-21','2019-06-20 06:39:00','2019-06-20 06:39:00');
/*!40000 ALTER TABLE `speech_and_interviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_upload` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
INSERT INTO `statistics` VALUES (1,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետում stat','[{\"download_link\":\"statistics\\/June2019\\/lNZ3aRzZnyhND4PJy6My.\",\"original_name\":\"test\"}]',NULL,'statistics/June2019/Uwb1rfVnN6QzUdMTsl4q.png','2019-06-20 00:00:00','2019-06-20 07:46:20','2019-06-20 07:46:20'),(2,'սովորել է Երևանի Մխիթար Հերացու անվան պետական բժշկական համալսարանի բուժական ֆակուլտետումstat','[]','https://stackoverflow.com/questions/43217872/laravel-htmlspecialchars-expects-parameter-1-to-be-string-object-given','statistics/June2019/6dji34OaSmMflGLfbeBZ.png','2019-06-20 00:00:00','2019-06-20 07:46:48','2019-06-20 07:46:48');
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2019-06-04 08:24:51','2019-06-04 08:24:51'),(2,'data_types','display_name_singular',6,'pt','Página','2019-06-04 08:24:51','2019-06-04 08:24:51'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2019-06-04 08:24:51','2019-06-04 08:24:51'),(4,'data_types','display_name_singular',4,'pt','Categoria','2019-06-04 08:24:51','2019-06-04 08:24:51'),(5,'data_types','display_name_singular',2,'pt','Menu','2019-06-04 08:24:51','2019-06-04 08:24:51'),(6,'data_types','display_name_singular',3,'pt','Função','2019-06-04 08:24:51','2019-06-04 08:24:51'),(7,'data_types','display_name_plural',5,'pt','Posts','2019-06-04 08:24:51','2019-06-04 08:24:51'),(8,'data_types','display_name_plural',6,'pt','Páginas','2019-06-04 08:24:51','2019-06-04 08:24:51'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2019-06-04 08:24:51','2019-06-04 08:24:51'),(10,'data_types','display_name_plural',4,'pt','Categorias','2019-06-04 08:24:51','2019-06-04 08:24:51'),(11,'data_types','display_name_plural',2,'pt','Menus','2019-06-04 08:24:51','2019-06-04 08:24:51'),(12,'data_types','display_name_plural',3,'pt','Funções','2019-06-04 08:24:51','2019-06-04 08:24:51'),(13,'categories','slug',1,'pt','categoria-1','2019-06-04 08:24:51','2019-06-04 08:24:51'),(14,'categories','name',1,'pt','Categoria 1','2019-06-04 08:24:51','2019-06-04 08:24:51'),(15,'categories','slug',2,'pt','categoria-2','2019-06-04 08:24:51','2019-06-04 08:24:51'),(16,'categories','name',2,'pt','Categoria 2','2019-06-04 08:24:51','2019-06-04 08:24:51'),(17,'pages','title',1,'pt','Olá Mundo','2019-06-04 08:24:51','2019-06-04 08:24:51'),(18,'pages','slug',1,'pt','ola-mundo','2019-06-04 08:24:51','2019-06-04 08:24:51'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2019-06-04 08:24:51','2019-06-04 08:24:51'),(20,'menu_items','title',1,'pt','Painel de Controle','2019-06-04 08:24:51','2019-06-04 08:24:51'),(21,'menu_items','title',2,'pt','Media','2019-06-04 08:24:51','2019-06-04 08:24:51'),(22,'menu_items','title',12,'pt','Publicações','2019-06-04 08:24:51','2019-06-04 08:24:51'),(23,'menu_items','title',3,'pt','Utilizadores','2019-06-04 08:24:51','2019-06-04 08:24:51'),(24,'menu_items','title',11,'pt','Categorias','2019-06-04 08:24:51','2019-06-04 08:24:51'),(25,'menu_items','title',13,'pt','Páginas','2019-06-04 08:24:51','2019-06-04 08:24:51'),(26,'menu_items','title',4,'pt','Funções','2019-06-04 08:24:51','2019-06-04 08:24:51'),(27,'menu_items','title',5,'pt','Ferramentas','2019-06-04 08:24:51','2019-06-04 08:24:51'),(28,'menu_items','title',6,'pt','Menus','2019-06-04 08:24:51','2019-06-04 08:24:51'),(29,'menu_items','title',7,'pt','Base de dados','2019-06-04 08:24:51','2019-06-04 08:24:51'),(30,'menu_items','title',10,'pt','Configurações','2019-06-04 08:24:51','2019-06-04 08:24:51'),(31,'pages_texts','page_text1',4,'hy','<h1>Ուղերձ</h1>\r\n<div class=\"message__content--info d-flex\">\r\n<div class=\"message__content--info--text\">\r\n<h2>Հարգելի քաղաքացի</h2>\r\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\r\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\r\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\r\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:1111111111111111</p>\r\n</div>\r\n<div class=\"message__content--info--image\" style=\"background-image: url(\'http://moh.loc/storage/minister-photo.png\');\"> </div>\r\n</div>','2019-06-13 07:02:52','2019-06-13 07:02:52'),(32,'pages_texts','page_text1',4,'ru','<h1>Ուղերձ</h1>\r\n<div class=\"message__content--info d-flex\">\r\n<div class=\"message__content--info--text\">\r\n<h2>Հարգելի քաղաքացի</h2>\r\n<p>Ողջունում եմ Ձեզ առողջապահության նախարարության անունից ու մեծապես կարևորում Ձեզանից յուրաքանչյուրի առողջության պահպանման իրավունքը:</p>\r\n<p>Առողջապահությունը գերակա ոլորտ է, ու մենք պատասխանատու ենք Ձեր առողջության համար՝ ամեն մեկի համար առանձին ու բոլորի համար՝ ընդհանուր: Սա մեծագույն պատիվ ու պարտավորություն է մեզ համար:</p>\r\n<p>Ձեզանից յուրաքանչյուրի առողջությունը թանկ է, ուստի կոչ եմ անում չանտեսել առողջական խնդիրները: Մենք մեր հերթին ամեն ինչ կանենք՝ շահելու Ձեր վստահությունը, ապահովելու բուժօգնության մատչելիությունն ու արդյունավետությունը:</p>\r\n<p>Միաժամանակ, մեր պարտքն է բժիշկների արժանապատիվ կենսամակարդակի ապահովումը, քանի որ մեր համակարգի հաջողությունը պայմանավորված է հենց նրանց աշխատանքով:1111111111111111</p>\r\n</div>\r\n<div class=\"message__content--info--image\" style=\"background-image: url(\'http://moh.loc/storage/minister-photo.png\');\"> </div>\r\n</div>','2019-06-13 07:02:52','2019-06-13 07:02:52'),(33,'pages_texts','page_text1',1,'hy','<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\r\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\r\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\r\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\r\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\r\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111111</p>','2019-06-13 07:24:04','2019-06-13 07:24:04'),(34,'pages_texts','page_text1',1,'ru','<p>Հայաստանի Հանրապետության առողջապահության նախարարությունը գործադիր իշխանության հանրապետական մարմին է, որը մշակում և իրականացնում է առողջապահության բնագավառում Հայաստանի Հանրապետության կառավարության քաղաքականությունը:</p>\r\n<p>Նախարարությունը կազմված է նախարարից, նախարարության աշխատակազմից և նախարարության համակարգում գործող տեսչական մարմնից:</p>\r\n<p>Առողջապահության նախարարության առաքելությունն է առողջապահության զարգացման քաղաքականության, պետական նպատակային ծրագրերի մշակումը, դրանց իրականացման կազմակերպումը, uանիտարահամաճարակային անվտանգության ապահովումը, բնակչության առաջնային և մաuնագիտացված բժշկական oգնության ու ծառայությունների ապահովման կազմակերպումը, մոր և մանկան առողջության պահպանմանն ուղղված քաղաքականության իրականացումը, բնակչության առողջության բարելավման միջոցառումների կազմակերպումը և առողջական վիճակի ուuումնաuիրությունը, հաշմանդամության ու մահացության նվազեցման ծրագրերի մշակումը և իրագործումը:</p>\r\n<p>Առողջապահության բնագավառում միջազգային ու միջգերատեuչական համագործակցության ապահովումը, երեխաների, կանանց կեցության և առողջության իրավիճակային վերլուծության կազմակերպումը, ոլորտի գերակա խնդիրների uահմանումը, նպատակային ծրագրերի մշակումն ու ներդրումը, առողջապահության բնագավառին առնչվող oրենuդրական, իրավական ակտերի նախագծերի մշակումը, ընդունված իրավական ակտերի նկատմամբ վերահuկողության ապահովումը, համակարգի գործունեության կազմակերպումը, կառավարումն ու ֆինանuավորումը ևս իրականացվում է ՀՀ առողջապահության նախարարության կողմից:</p>\r\n<p>Նախարարությունն իր գործունեությունն իրականացնում է Հայաuտանի Հանրապետության oրենuդրությանը եւ այլ իրավական ակտերին համապատաuխան:</p>\r\n<p>Առողջապահության նախարարության աշխատանքների կազմակերպումն ուղղված է Հայաստանի Հանրապետության ողջ տարածքում մատչելի ու որակյալ առողջապահական ծառայությունների ապահովմանը:11111111111111</p>','2019-06-13 07:24:04','2019-06-13 07:24:04'),(53,'data_types','display_name_singular',29,'hy','Pages Text','2019-06-13 08:39:33','2019-06-13 08:39:33'),(54,'data_types','display_name_singular',29,'ru','Pages Text','2019-06-13 08:39:33','2019-06-13 08:39:33'),(55,'data_types','display_name_plural',29,'hy','Pages Texts','2019-06-13 08:39:33','2019-06-13 08:39:33'),(56,'data_types','display_name_plural',29,'ru','Pages Texts','2019-06-13 08:39:33','2019-06-13 08:39:33'),(57,'data_types','display_name_singular',33,'hy','Minister Page','2019-06-13 08:40:42','2019-06-13 08:40:42'),(58,'data_types','display_name_singular',33,'ru','Minister Page','2019-06-13 08:40:42','2019-06-13 08:40:42'),(59,'data_types','display_name_plural',33,'hy','Minister Page','2019-06-13 08:40:42','2019-06-13 08:40:42'),(60,'data_types','display_name_plural',33,'ru','Minister Page','2019-06-13 08:40:42','2019-06-13 08:40:42'),(61,'data_types','display_name_singular',7,'hy','Car','2019-06-13 08:59:41','2019-06-13 08:59:41'),(62,'data_types','display_name_singular',7,'ru','Car','2019-06-13 08:59:42','2019-06-13 08:59:42'),(63,'data_types','display_name_plural',7,'hy','Cars','2019-06-13 08:59:42','2019-06-13 08:59:42'),(64,'data_types','display_name_plural',7,'ru','Cars','2019-06-13 08:59:42','2019-06-13 08:59:42'),(65,'data_types','display_name_singular',35,'hy','Minister Info','2019-06-13 09:58:05','2019-06-13 09:58:05'),(66,'data_types','display_name_singular',35,'ru','Minister Info','2019-06-13 09:58:05','2019-06-13 09:58:05'),(67,'data_types','display_name_plural',35,'hy','Minister Infos','2019-06-13 09:58:05','2019-06-13 09:58:05'),(68,'data_types','display_name_plural',35,'ru','Minister Infos','2019-06-13 09:58:05','2019-06-13 09:58:05'),(69,'pages_texts','page_text1',5,'hy','<h1>Հայաստանի Հանրապետության վարչապետ</h1>\n<h2>որոշում</h2>\n<h3>11 հունիսի 2018 թվականի N 728-L</h3>','2019-06-14 03:39:25','2019-06-14 03:39:25'),(70,'pages_texts','page_text1',5,'ru','<h1>Հայաստանի Հանրապետության վարչապետ</h1>\n<h2>որոշում</h2>\n<h3>11 հունիսի 2018 թվականի N 728-L</h3>','2019-06-14 03:39:25','2019-06-14 03:39:25'),(71,'data_types','display_name_singular',6,'hy','Page','2019-06-14 04:15:22','2019-06-14 04:15:22'),(72,'data_types','display_name_singular',6,'ru','Page','2019-06-14 04:15:22','2019-06-14 04:15:22'),(73,'data_types','display_name_plural',6,'hy','Pages','2019-06-14 04:15:22','2019-06-14 04:15:22'),(74,'data_types','display_name_plural',6,'ru','Pages','2019-06-14 04:15:22','2019-06-14 04:15:22'),(75,'pages','title',2,'hy','Test','2019-06-14 04:17:47','2019-06-14 04:17:47'),(76,'pages','title',2,'ru','Test','2019-06-14 04:17:47','2019-06-14 04:17:47'),(77,'pages','slug',2,'hy','test','2019-06-14 04:17:47','2019-06-14 04:17:47'),(78,'pages','slug',2,'ru','test','2019-06-14 04:17:47','2019-06-14 04:17:47'),(79,'pages','body',2,'hy','<p>test</p>','2019-06-14 04:17:47','2019-06-14 04:17:47'),(80,'pages','body',2,'ru','<p>test</p>','2019-06-14 04:17:47','2019-06-14 04:17:47'),(81,'data_types','display_name_singular',12,'hy','News','2019-06-14 09:18:51','2019-06-14 09:18:51'),(82,'data_types','display_name_singular',12,'ru','News','2019-06-14 09:18:51','2019-06-14 09:18:51'),(83,'data_types','display_name_plural',12,'hy','News','2019-06-14 09:18:51','2019-06-14 09:18:51'),(84,'data_types','display_name_plural',12,'ru','News','2019-06-14 09:18:51','2019-06-14 09:18:51'),(85,'data_types','display_name_singular',37,'hy','Cover Photo','2019-06-17 11:29:09','2019-06-17 11:29:09'),(86,'data_types','display_name_singular',37,'ru','Cover Photo','2019-06-17 11:29:09','2019-06-17 11:29:09'),(87,'data_types','display_name_plural',37,'hy','Cover Photos','2019-06-17 11:29:09','2019-06-17 11:29:09'),(88,'data_types','display_name_plural',37,'ru','Cover Photos','2019-06-17 11:29:09','2019-06-17 11:29:09'),(89,'data_types','display_name_singular',38,'hy','Speech And Interview','2019-06-19 06:55:46','2019-06-19 06:55:46'),(90,'data_types','display_name_singular',38,'ru','Speech And Interview','2019-06-19 06:55:46','2019-06-19 06:55:46'),(91,'data_types','display_name_plural',38,'hy','Speech And Interviews','2019-06-19 06:55:46','2019-06-19 06:55:46'),(92,'data_types','display_name_plural',38,'ru','Speech And Interviews','2019-06-19 06:55:46','2019-06-19 06:55:46'),(93,'data_types','display_name_singular',39,'hy','Report','2019-06-19 09:25:44','2019-06-19 09:25:44'),(94,'data_types','display_name_singular',39,'ru','Report','2019-06-19 09:25:44','2019-06-19 09:25:44'),(95,'data_types','display_name_plural',39,'hy','Reports','2019-06-19 09:25:44','2019-06-19 09:25:44'),(96,'data_types','display_name_plural',39,'ru','Reports','2019-06-19 09:25:44','2019-06-19 09:25:44'),(97,'menu_items','title',44,'hy','Information','2019-06-19 10:39:57','2019-06-19 10:39:57'),(98,'menu_items','title',44,'ru','Information','2019-06-19 10:39:57','2019-06-19 10:39:57');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png','$2y$10$1FUAdyDy0Z//7bBae1erNepySXNN6XWbeOVgaQb6/W/Z.4SnVFm.u','alfSNMTBZZOWDIMNardgYtKZo9woCs5Qc4avLrB98MgMcJmFREzcxGCz4nyG',NULL,'2019-06-04 08:24:51','2019-06-04 08:24:51'),(2,2,'User','user@mail.com','users/default.png','$2y$10$NtgTwDgkt5DJBwizshRHVe1pBmtLQSdl9qeWw4JEBiwxUie/3HUgO','YX6Zrnmn00kzaOkcGHw8Pin4a8nHfDGO7TXO88hDTKAtXZEoTEyRc88r66wq','{\"locale\":\"en\"}','2019-06-06 05:09:50','2019-06-06 05:09:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ»','2019-06-04','https://youtu.be/A_xWDAbnBSU','2019-06-07 08:15:00','2019-06-07 08:29:50'),(2,'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ» 2','2019-06-09','https://youtu.be/wOXZM9Bzhdw','2019-06-07 08:16:00','2019-06-07 08:24:21'),(3,'ԸՆԹԱՆՈՒՄ ԵՆ «ԱՆԶԱՎԱԿ ԱՄՈՒՍՆԱԿԱՆ ԶՈՒԻԳԵՐԻՆ ԱՋԱԿՑՈՒԹՅՈՒՆ» 3','2019-06-07','https://youtu.be/wOXZM9Bzhdw','2019-06-07 08:16:00','2019-06-07 08:24:17');
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-21 16:28:51
