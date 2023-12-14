-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2023 at 02:14 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starlight`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(9, 'Oil seeds and Grains', 'images/main/categories/1694681353grains and oil seeds Starlight .jpg', '2023-09-14 10:59:58', '2023-10-16 14:26:57'),
(10, 'Food and beverage', 'images/main/categories/1694681321Food and beverage Starlight .jpg', '2023-09-14 11:08:40', '2023-09-14 11:48:41'),
(11, 'Soft commodities', 'images/main/categories/1694681293Soft commodities Starlight .jpg', '2023-09-14 11:17:10', '2023-09-14 11:48:13'),
(12, 'Livestock trading', 'images/main/categories/1694681084Livestock trading Starlight .jpg', '2023-09-14 11:44:44', '2023-09-14 11:44:44'),
(13, 'Nuts', 'images/main/categories/1694681412Nuts Starlight .jpg', '2023-09-14 11:50:12', '2023-09-14 11:50:12'),
(14, 'Agricultural Crops', 'images/main/categories/1701690364images.jfif', '2023-09-14 11:50:47', '2023-12-04 12:46:04'),
(18, 'uyut76756765ewrwe', NULL, '2023-12-13 16:21:35', '2023-12-13 16:21:35'),
(23, 'uyut76756765ewrweterge', NULL, '2023-12-14 10:05:59', '2023-12-14 10:05:59'),
(24, 'test  category 1234 edwqe435we454', NULL, '2023-12-14 10:07:08', '2023-12-14 10:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `first_name`, `second_name`, `email`, `phone`, `message`, `read`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'maro', 'mohamed', 'maro@gmail.com', '01143263096', 'i prefer this company', 1, '2023-10-31 18:42:42', '2023-08-31 12:52:15', '2023-10-31 18:42:42'),
(4, 'maro', 'mohamed', 'maro@gmail.com', '01143263096', 'i prefer this company', 1, '2023-10-31 18:42:41', '2023-08-31 12:52:38', '2023-10-31 18:42:41'),
(5, 'hkjfr', 'drfhu', 'erfji', 'fiohejn', 'rfj', 1, '2023-10-31 18:42:39', '2023-08-31 12:57:35', '2023-10-31 18:42:39'),
(6, 'rahma', 'mm', 'rahma@elkenany.com', '15', 'test', 1, '2023-10-31 18:42:38', '2023-09-12 16:08:53', '2023-10-31 18:42:38'),
(7, 'fhfdh', 'gdfaghd', 'afdh', 'ahfah', 'ahfhah', 1, '2023-10-31 18:42:37', '2023-10-19 14:57:34', '2023-10-31 18:42:37'),
(8, 'ali', 'hamed', 'alihamedrf@gmail.com', '01098087635', 'i want urgent call', 1, '2023-10-31 18:42:35', '2023-10-30 17:41:34', '2023-10-31 18:42:35'),
(9, 'Zeenat', 'Mohammed', 'Zeenat@porterex.com', '00971523371976', 'Hello\n\nMy name is Zeenat Mohammed and I am a Business Development Executive for Porter Express U.A.E\n\nWe are very excited to introduce our services to our customers in the\nUAE who are mainly seeking consistent service levels solid\ntracking APIs competitive transit time and an outstanding COD\nremittance service for International Outbound shipping from UAE to Kuwait Bahrain and Qatar.\n\nWe would like to offer you a very competitive door to door service\nincluding\n\n Delivering 7 days a week from 9 am to 9 pm including official holidays.\n\n\n Weekly COD remittance with no remittance charges.\n\n The ability to reimburse your customers with Cash in case of\nreturn orders.\n\n Quality check for returned items at the time of picking up the\nshipments.\n\n Monthly return to Origin.\n\n AM pickups with DAILY airline connections.\n\n\n PM time customer service support.\n\n Same Day Clearance\n\n Fulfilment service for undelivered shipments in case\nyou want to dispatch it under a new airway bill to a new consignee.\n\nAnticipating a positive response and would be very pleased to\nconnect over a call to discuss our potential partnership further.\n\nLooking forward to hearing from you soon.', 0, NULL, '2023-11-30 08:59:32', '2023-11-30 08:59:32'),
(10, 'test', 'test 678', 'test@test.com', '01010', 'weqwewq', 0, NULL, '2023-12-12 14:52:44', '2023-12-12 14:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint UNSIGNED NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `page_name`, `type`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 'home', 'header', 'images/content/1697982390image.jpg', 'STARLIGHT International Trading Company L.L.C. is a Dubai-based company that specializes in in general trading Exporting  importing in the agri-commodities food and grains industries...', NULL, '2023-11-01 17:27:36'),
(2, 'aboutus', 'header', 'images/content/1693303007image.jpg', 'The First Trading Companies in Dubai', NULL, '2023-08-29 09:56:47'),
(3, 'aboutus', 'whoweare', 'images/content/1693303106image.jpg', 'STARLIGHT INTERNATIONAL TRADING COMPANY L.L.C. is a Dubai-based company that specializes in general trading (Exporting & importing) in the agri-commodities, food, and rains industries. It also provides a wide range of products and services.\r\nThe company is a subsidiary of Elkenany Group, which has over 15 years of experience in the market. Elkenany Group has been able to import and distribute Agri-commodities and raw materials to animal feed, crackers, corn, and soybeans processors plus it supplies traders and local distributors.\r\nNow, STARLIGHT INTERNATIONAL TRADING COMPANY is expanding its activities by trading abroad in a variety of products. The company is also committed to providing businesses and entities with the raw materials they need from the international market.', NULL, '2023-08-29 09:58:26'),
(4, 'aboutus', 'ourvision', 'images/content/1693303127image.jpg', 'To be one of the leading companies in the grains market and improve the entire agri-commodity industry.', NULL, '2023-08-29 09:58:47'),
(5, 'aboutus', 'ourmission', 'images/content/1693300759Mask.jpg', 'We provide high-quality products and services that are used in daily consumer life. We also develop new markets and expand businesses in the Raw Materials and Commodities industry.', NULL, '2023-08-29 09:19:19'),
(6, 'aboutus', 'objectives', 'images/content/1693300807object.jpg', 'We are a trading company that specializes in importing and exporting all types of commodities. We cover the international market with high-quality agri-commodities and food products. We make international trading easier than before by providing all the necessary facilities and removing all obstacles that our customers face.', NULL, '2023-08-29 09:20:07'),
(7, 'aboutus', 'sustainability', 'images/content/1693300833Rectangle.jpg', 'As our products are part of consumers\' lives, what affects them affects us. Therefore, we supply the highest quality to our clients so that they can either use or produce excellent products for the end user.', NULL, '2023-08-29 09:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortdescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focus_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `shortdescription`, `description`, `image`, `alt_text`, `focus_keyword`, `social_title`, `social_description`, `social_image`, `social_alt_text`, `meta_title`, `meta_link`, `meta_description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'New ship', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters as opposed to using Content here content here making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years sometimes by accident sometimes on purpose injected humour and the like.', 'images/main/events/1693307877e32b79a8fc.jpg', 'error', 'New ship', '', '', '', '', '', '', '', '2023-11-15 11:39:57', '2023-08-29 06:26:02', '2023-11-15 11:39:57'),
(9, 'New shipunhiu', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters as opposed to using Content here content here making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years sometimes by accident sometimes on purpose injected humour and the like.', 'images/main/events/1693307877e32b79a8fc.jpg', 'error', 'New ship', '', '', '', '', '', '', '', '2023-11-15 11:39:59', '2023-08-29 06:26:02', '2023-11-15 11:39:59'),
(10, 'Unlocking the Potential of Trading in Grains  Agriculture with STARLIGHT Trading Activities', 'The Backbone of Feed Grains and Agriculture Commodities', 'In the dynamic landscape of global commerce the importance of trading in grains and agriculture cannot be overstated At STARLIGHT we take pride in our role as a key player in international trading Our commitment to excellence is reflected in our unwavering dedication to importing and exporting high-quality commodities and oil seeds. \r\n\r\n\r\nThe Backbone of Feed Grains and Agriculture Commodities \r\nEnsuring raw material feed Security\r\nGrains and agriculture from the backbone of food  animal feed sustaining life and ensuring food security on a global scale In an era where the worlds population continues to burgeon the demand for staple grains like corn Soy wheat rice and skyrocketed Through our meticulous approach to sourcing and trading these essential commodities we contribute to the stability of food supplies worldwide.\r\n\r\n\r\nEconomic Growth and Stability\r\nThe trade of grains and agricultural products plays a pivotal role in fostering economic growth and stability Countries with robust agricultural sectors often find themselves in favorable economic positions At STARLIGHT our commitment to facilitating this growth is evident in our strategic partnerships and international collaborations that strengthen the global agricultural network.\r\n\r\n\r\nInternational Dynamics Importing and Exporting High-Quality Commodities\r\nMeeting Global Demand\r\nIn an interconnected world the import and export of high-quality commodities are integral to meeting global demand STARLIGHT stands as a beacon in this landscape seamlessly bridging the gap between producers and consumers.\r\nOur extensive network allows us to source the finest commodities and deliver them to markets worldwide ensuring a steady supply chain.', 'images/social/events/1700037565ستارلايت للاستيراد والتصدير والتجاره العامه.jpeg', '', '', '', NULL, '1700037565ستارلايت للاستيراد والتصدير والتجاره العامه.jpeg', '', '', '', NULL, NULL, '2023-11-15 11:39:25', '2023-11-15 11:39:25'),
(11, 'Oil Seeds Trading in STARLIGHT', 'The trade of oil seeds represents a lucrative frontier in the world of commodities.', 'Driving Economic Prosperity\r\nThe trade of oil seeds represents a lucrative frontier in the world of commodities. Your Company Name recognizes the immense potential of this sector and actively participates in the import and export of premium oil seeds  Our endeavors in this realm contribute not only to the financial prosperity of our enterprise but also to the economic development of the regions we engage with.\r\n\r\n\r\nSustainable Practices\r\nAs stewards of the environment STARLIGHT places a strong emphasis on sustainable practices in the trade of oil seeds We are dedicated to promoting agricultural methods that prioritize environmental conservation ensuring a harmonious coexistence between progress and ecological responsibility.\r\nWe aim to reduce trading costs around the international and cover the international market with high-quality agri-commodities and food products We make international trading easier than before by providing all the necessary facilities and removing all obstacles that our customers face.\r\n\r\n\r\nQuality Assurance \r\nQuality is non-negotiable at STARLIGHT and our rigorous quality assurance processes guarantee that every commodity we import or export meets the highest standards This commitment to excellence not only strengthens our brand but also instills confidence in our partners and clients.\r\n\r\n\r\nThe importance of trading in grains and agriculture coupled with the import and export of high-quality commodities and oil seeds cannot be overstated At STARLIGHT we operate at the intersection of necessity and opportunity driving global economic growth while ensuring the sustenance of nations. Our unwavering commitment to excellence and sustainability positions us as a leader in this dynamic industry.', 'images/social/events/1700047867starlight for trading-oil seeds-raw-beans-bottle-oil-ٍستارلايت.jpg', 'starlight for trading-oil seeds-raw-beans-bottle-oil-', '', '', NULL, '1700047867starlight for trading-oil seeds-raw-beans-bottle-oil-ٍستارلايت.jpg', 'starlight for trading-oil seeds-raw-beans-bottle-oil-', '', '', NULL, NULL, '2023-11-15 14:31:07', '2023-11-15 14:31:07'),
(12, 'PRINCESS SARA Unleashes Strategic Brilliance', 'Starlights Premium Yellow Corn Shipment Reshapes Animal Feed Landscape in the Middle East', 'Alexandria Egypt - Starlight a key player in the import and distribution of animal feeds marks a pivotal moment in the agricultural landscape with the arrival of a game-changing shipment of premium yellow corn. Aboard the distinguished vessel PRINCESS SARA this import doesnt only raise the bar for quality also holds strategic importance for the Middle Easts animal feed materials.\r\nIn a region where agricultural sustainability is paramount Starlights commitment to importing superior yellow corn emphasizes the strategic significance of high-quality feed materials. This shipment known for its low breakage minimal moisture and fines signifies a turning point for the Egyptian agricultural sector and the broader Middle East.\r\nRecognizing the strategic importance of such high-quality feed materials Starlight continues to play a pivotal role in ensuring a sustainable and thriving agricultural ecosystem in the region. The arrival of this shipment underscores the companys dedication to strategic initiatives that contribute to the long-term success of agricultural industry in the Middle East.', 'images/social/events/1700571767مركب برنسيس ساره للذره الصفراء Princess sara ship for yellow corn.jpg', 'starlight  Princess sara ship for yellow corn      ', 'starlight  Princess sara ship for yellow corn', 'PRINCESS SARA Unleashes Strategic Brilliance  Starlight', '', '1700571767مركب برنسيس ساره للذره الصفراء Princess sara ship for yellow corn.jpg', 'starlight  Princess sara ship for yellow corn', 'PRINCESS SARA Unleashes Strategic Brilliance  Starlight', 'Princess Sara', '', NULL, '2023-11-21 16:02:47', '2023-11-23 16:52:34'),
(13, 'testsfgsddfhsjh', 'dhwuietgwrj8q3hfhwed', 'pdsfsgsfdgsdgsdgdsgsdgimg alt srchttplocalhost8000imagessocialevents1702297254images.jpg p', 'images/social/events/1702297254images.jpg', 't435645y4657l8llkjljhkkjh', '65uhreeu7tytru76io7k76oiuyjk', 'wretytryhjhfdsyuypiooiiou', '', '1702297254images.jpg', 'dfghjklllkjhg', 'sdfgdhklpoiuwerqrwghjkhl', 'dfsdgjhklpoiuytrweqwd', '', NULL, '2023-12-11 13:20:54', '2023-12-11 13:36:49'),
(14, 'rwerewr', 'werwerwerwe', '<h1>hi this is test text&nbsp;</h1>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/upload/17023745952573.jpg\" style=\"height:204px; width:204px\" /></p>\r\n\r\n<h3>sorry we close this</h3>', 'images/main/events/1702374656images.jpg', '888999', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2023-12-12 10:50:56', '2023-12-12 10:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE `infos` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `type`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'address', 'Business Center 1 M Floor The Meydan Hotel Nad Al Sheba Dubai U.A.E.', NULL, '2023-08-28 11:20:49', '2023-09-19 16:41:32'),
(2, 'email', 'info@starlight-ae.com', NULL, '2023-08-28 11:21:18', '2023-09-12 15:27:20'),
(3, 'phone', '223101211', '2023-09-19 16:42:12', '2023-08-28 11:25:59', '2023-09-19 16:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(3, 'App\\Models\\category', 16, '288bab34-fb69-4242-99f5-9e50d81d200b', 'categories', 'images', 'images.jpg', 'image/jpeg', 'public', 'public', 9757, '[]', '[]', '[]', '[]', 1, '2023-12-13 15:41:53', '2023-12-13 15:41:53'),
(5, 'App\\Models\\Meta_data_pages', 4, 'ba991752-4d6a-41d9-8922-165b04e7922f', 'meta_data_pages', 'images', 'images.jpg', 'image/jpeg', 'public', 'public', 9757, '[]', '[]', '[]', '[]', 1, '2023-12-13 16:11:04', '2023-12-13 16:11:04'),
(6, 'App\\Models\\category', 18, '10e4ae9f-fac1-4ece-8aa1-7202936c4997', 'categories', 'images', 'images.jpg', 'image/jpeg', 'public', 'public', 9757, '[]', '{\"alt\": \"start-light-photo\"}', '[]', '[]', 1, '2023-12-13 16:21:35', '2023-12-13 16:21:35'),
(7, 'App\\Models\\Meta_data_pages', 5, 'ac2dfd34-5353-4378-9b9d-f8f07530d4c2', 'meta_data_pages', 'images', 'images.jpg', 'image/jpeg', 'public', 'public', 9757, '[]', '{\"alt\": \"g45u66859\"}', '[]', '[]', 1, '2023-12-13 16:21:35', '2023-12-13 16:21:35'),
(8, 'App\\Models\\category', 23, '867e86f7-e650-4a88-8c09-bf5d1312ad85', 'categories', 'images', 'images.jpg', 'image/jpeg', 'public', 'public', 9757, '[]', '{\"alt\": \"start-light-photo\"}', '[]', '[]', 1, '2023-12-14 10:05:59', '2023-12-14 10:05:59'),
(9, 'App\\Models\\category', 24, '49f303fd-9ac7-4044-a492-5fd9b476c7d3', 'categories', 'images', 'images.jpg', 'image/jpeg', 'public', 'public', 9757, '[]', '{\"alt\": \"start-light-photo\"}', '[]', '[]', 1, '2023-12-14 10:07:08', '2023-12-14 10:07:08'),
(11, 'App\\Models\\Meta_data_pages', 7, '8b998677-7dc1-4d8c-8295-c8c9a6206725', 'meta_data_pages555555alt678', 'desktop-wallpaper-nature-backgrounds-for-editing-backgrounds-nature', 'desktop-wallpaper-nature-backgrounds-for-editing-backgrounds-nature.jpg', 'image/jpeg', 'public', 'public', 133295, '[]', '[]', '[]', '[]', 2, '2023-12-14 10:54:29', '2023-12-14 10:54:29'),
(12, 'App\\Models\\Meta_data_pages', 7, 'a62ae9d1-06e9-47f8-9505-0ce631519565', 'meta_data_pages555555alt6789000', 'desktop-wallpaper-nature-backgrounds-for-editing-backgrounds-nature', 'desktop-wallpaper-nature-backgrounds-for-editing-backgrounds-nature.jpg', 'image/jpeg', 'public', 'public', 133295, '[]', '[]', '[]', '[]', 3, '2023-12-14 10:55:18', '2023-12-14 10:55:18'),
(13, 'App\\Models\\Meta_data_pages', 7, '3d2c2786-5a71-4716-8877-8a3e6a966c28', 'meta_data_pages', 'desktop-wallpaper-nature-backgrounds-for-editing-backgrounds-nature', 'desktop-wallpaper-nature-backgrounds-for-editing-backgrounds-nature.jpg', 'image/jpeg', 'public', 'public', 133295, '[]', '{\"alt\": \"555555alt678999\"}', '[]', '[]', 4, '2023-12-14 10:57:15', '2023-12-14 10:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `meta_data_pages`
--

CREATE TABLE `meta_data_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_social` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_social` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `model_id` bigint UNSIGNED DEFAULT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focus_keyword` text COLLATE utf8mb4_unicode_ci,
  `alt` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_data_pages`
--

INSERT INTO `meta_data_pages` (`id`, `title`, `link`, `description`, `title_social`, `description_social`, `model_id`, `model_type`, `is_page`, `page_name`, `focus_keyword`, `alt`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Oil seeds and Grains  Starlight International Trading Company L.L.C.', 'Oil seeds and Grains', 'Trade and buy with the finest types of yellow cornSoybeanFodderLegumesCanolaWheatCerealsOatsMalaysian Olein oilPalm oilSoybean OilSunflower Oil and Rough rice.', 'Trade and buy with the finest types of Oil seeds and Grains', 'Oil seeds and Grains from Starlight International Trading Company L.L.C.', NULL, NULL, '0', NULL, NULL, 'Starlight International trading company Oil seeds and Grains      ', NULL, 9, '2023-11-09 14:21:04', '2023-11-09 14:21:04'),
(5, 'i76987978o97rte7658687', '7897689hgfasdgh;jli764uy', '8o79p08[-79[ytwrhjkl;opi[', 'wetgwewrtgerwh', 'wtu5yerwyt234th24436h', 18, 'App\\Models\\Category', '0', NULL, NULL, NULL, NULL, NULL, '2023-12-13 16:21:35', '2023-12-13 16:21:35'),
(6, NULL, NULL, NULL, NULL, NULL, 23, 'App\\Models\\Category', '0', NULL, NULL, NULL, NULL, NULL, '2023-12-14 10:05:59', '2023-12-14 10:05:59'),
(7, 'tytytytrr3433', 'uiououoou4324r', ';ipojonkb123123gertret453t', 'test title socailr2332532', 'weqwrwetweryety64756reqw5233', 24, 'App\\Models\\Category', '0', NULL, 'test foucus keyword', NULL, NULL, NULL, '2023-12-14 10:07:08', '2023-12-14 14:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2014_10_12_000000_create_users_table', 1),
(29, '2014_10_12_100000_create_password_resets_table', 1),
(30, '2019_08_19_000000_create_failed_jobs_table', 1),
(31, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(32, '2023_04_12_095701_create_infos_table', 1),
(33, '2023_04_12_095901_create_contact_us_table', 1),
(34, '2023_04_14_160418_create_categories_table', 1),
(35, '2023_04_18_083330_create_products_table', 1),
(36, '2023_05_10_170501_create_meta_data_pages_table', 1),
(37, '2023_05_15_164043_create_events_table', 1),
(38, '2023_07_13_164602_create_contents_table', 1),
(40, '2023_07_17_101534_create_orders_table', 2),
(41, '2023_10_01_205249_update_meta_data_pages_table', 3),
(42, '2023_12_05_152657_create_media_table', 4),
(43, '2023_12_13_151323_add_page_to_meta_data_pages', 5),
(44, '2023_12_14_163751_add_keyword_to_meta_data_pages', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `product`, `message`, `read`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'marwan', 'maro@gmail.com', '01143263096', 'Soya beans', 'i prefer this company', 0, NULL, '2023-08-31 12:01:32', '2023-08-31 12:01:32'),
(4, 'marwan', 'maro@gmail.com', '01143263096', 'Soya beans', 'i prefer this company', 0, NULL, '2023-08-31 12:07:07', '2023-08-31 12:07:07'),
(5, 'marwan', 'maro@gmail.com', '01143263096', 'Soya beans', 'i prefer this company', 0, NULL, '2023-08-31 12:07:42', '2023-08-31 12:07:42'),
(6, 'marwan', 'maro@gmail.com', '01143263096', 'Soya beans', 'i prefer this company', 0, NULL, '2023-08-31 12:09:08', '2023-08-31 12:09:08'),
(7, 'sara mohame', 'sara@gmail.com', '01026463434', 'Soya beans', 'asgayihgbd sdkjbhvuk', 0, NULL, '2023-08-31 12:20:21', '2023-08-31 12:20:21'),
(8, 'bhk', 'djf', 'dsf', 'Soya beans', 'rf', 0, NULL, '2023-08-31 12:23:44', '2023-08-31 12:23:44'),
(9, 'efe', 'htr', 'erbg', 'Soya beans', 'ebgeht', 0, NULL, '2023-08-31 12:37:47', '2023-08-31 12:37:47'),
(10, 'efe', 'htr', 'erbg', 'Soya beans', 'ebgeht', 0, NULL, '2023-08-31 12:38:13', '2023-08-31 12:38:13'),
(11, 'fgj', 'dfjv', 'dfvj', 'Soya beans', 'dfjvnh', 0, NULL, '2023-08-31 12:42:33', '2023-08-31 12:42:33'),
(12, 'aradf', 'marwanmohamed7887@gmail.com', '6347889', 'Soya beans', 'message', 0, NULL, '2023-09-03 12:08:20', '2023-09-03 12:08:20'),
(13, '<script>alert(\"dfsdf\")<script/>', '<script>alert(\"dfsdf\")<script/>', '<script>alert(\"dfsdf\")<script/>', 'Soya beans', '<script>alert(\"dfsdf\")<script/>', 1, NULL, '2023-09-05 13:11:47', '2023-10-31 18:42:55'),
(14, '<script>alert(\"dfsdf\")</script>', '<script>alert(\"dfsdf\")</script>', '<script>alert(\"dfsdf\")</script>', 'Soya beans', '<script>alert(\"dfsdf\")</script>', 1, NULL, '2023-09-05 13:14:16', '2023-10-31 18:42:51'),
(15, '<script>var functionString = \"(function whatever(name) { return name + 1; })\"; var x = eval(functionString); console.log(x(\"bob\")); // logs \"bob1\"</script>', '<script>var functionString = \"(function whatever(name) { return name + 1; })\"; var x = eval(functionString); console.log(x(\"bob\")); // logs \"bob1\"</script>', '<script>var functionString = \"(function whatever(name) { return name + 1; })\"; var x = eval(functionString); console.log(x(\"bob\")); // logs \"bob1\"</script>', 'Soya beans', '<script>var functionString = \"(function whatever(name) { return name + 1; })\";\nvar x = eval(functionString);\nconsole.log(x(\"bob\")); // logs \"bob1\"</script>', 1, NULL, '2023-09-05 13:16:08', '2023-10-31 18:41:31'),
(16, '<script>var functionString = \"(function whatever(name) { return name + 1; })\"; var x = eval(functionString); console.log(x(\"bob\")); // logs \"bob1\"</script>', '<script>var functionString = \"(function whatever(name) { return name + 1; })\"; var x = eval(functionString); console.log(x(\"bob\")); // logs \"bob1\"</script>', '<script>var functionString = \"(function whatever(name) { return name + 1; })\"; var x = eval(functionString); console.log(x(\"bob\")); // logs \"bob1\"</script>', 'Soya beans', '<script>var functionString = \"(function whatever(name) { return name + 1; })\";\nvar x = eval(functionString);\nconsole.log(x(\"bob\")); // logs \"bob1\"</script>', 1, NULL, '2023-09-05 13:16:57', '2023-10-31 18:41:29'),
(17, 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'Soya beans', 'eval(\'alert(\\\'hello\\\')\')var x = eval(functionString);\nconsole.log(x(\"bob\")); // logs \"bob1\"</script>', 1, NULL, '2023-09-05 13:17:38', '2023-10-31 18:41:25'),
(18, 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'Soya beans', 'eval(\'alert(\\\'hello\\\')\')', 1, NULL, '2023-09-05 13:24:53', '2023-10-31 18:41:21'),
(19, 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'Soya beans', 'eval(\'alert(\\\'hello\\\')\')', 1, NULL, '2023-09-05 13:31:35', '2023-10-31 18:41:12'),
(20, 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'Soya beans', 'eval(\'alert(\\\'hello\\\')\')', 1, NULL, '2023-09-05 13:34:30', '2023-10-31 18:40:58'),
(21, '', 'eval(\'alert(\\\'hello\\\')\')', 'eval(\'alert(\\\'hello\\\')\')', 'Soya beans', 'eval(\'alert(\\\'hello\\\')\')', 1, NULL, '2023-09-05 13:35:20', '2023-10-31 18:40:55'),
(22, '\' and select *', '\' and select *', '\' and select *', 'Soya beans', '\' and select *', 1, '2023-11-01 13:38:01', '2023-09-05 13:41:40', '2023-11-01 13:38:01'),
(23, '\' and select *', '\' and select *', '\' and select *', 'Soya beans', '\' and select *', 1, '2023-11-01 13:37:37', '2023-09-05 13:59:29', '2023-11-01 13:37:37'),
(24, 'eval(\'alert(\\\'hello\\\')\')', '\' and select *', '\' and select *', 'Soya beans', '\' and select *', 1, '2023-11-01 13:37:31', '2023-09-05 14:00:13', '2023-11-01 13:37:31'),
(25, 'dfjlfsdfvjgn', 'dvnjhlf', '83943748', 'Soya beans', 'sdvnhof', 1, '2023-11-01 13:37:48', '2023-09-05 14:31:58', '2023-11-01 13:37:48'),
(26, 'dfjlfsdfvjgn', 'dvnjhlf', '83943748', 'Soya beans', 'sdvnhof', 1, '2023-11-01 13:37:51', '2023-09-05 14:33:53', '2023-11-01 13:37:51'),
(27, 'dfjlfsdfvjgn', 'dvnjhlf', '83943748', 'Soya beans', 'sdvnhof', 1, '2023-11-01 13:37:56', '2023-09-05 14:34:17', '2023-11-01 13:37:56'),
(28, 'scriptalertdfsdfscript', 'dvnjhlf', '83943748', 'Soya beans', 'sdvnhof', 1, '2023-11-01 13:37:22', '2023-09-05 14:34:26', '2023-11-01 13:37:22'),
(29, 'scriptalertdfsdfscript', 'evalalerthello', '83943748', 'Soya beans', 'sdvnhof', 1, NULL, '2023-09-05 14:35:03', '2023-10-31 18:39:51'),
(30, 'sara', 'saramahamed7878gmailcom', '83943748', 'Soya beans', 'sdvnhof', 1, NULL, '2023-09-05 15:31:51', '2023-09-20 13:26:43'),
(31, 'sara', 'sara.mahamed7878@gmail.com', '83943748', 'Soya beans', 'sdvnhof', 1, '2023-11-01 13:37:23', '2023-09-05 15:34:02', '2023-11-01 13:37:23'),
(32, 'l;k', 'rahma@elkenany.com', '54', 'Soya beans', 'test', 1, NULL, '2023-09-12 16:10:27', '2023-10-31 18:39:47'),
(33, '5', 'ج', 'ج', 'Soybean', 'ج', 1, '2023-11-01 13:37:16', '2023-09-14 12:32:03', '2023-11-01 13:37:16'),
(34, '2', 's@g.com', '2', 'Yellow Corn Maize', '525', 1, NULL, '2023-10-01 13:09:13', '2023-10-31 18:40:11'),
(35, 'dsfgs', 'emai@o.com', '123015886', 'Soybean', 'i', 1, NULL, '2023-10-18 14:08:38', '2023-10-31 18:39:42'),
(36, 'dsfgs', 'emai@o.com', '123015886', 'Soybean', 'i', 1, NULL, '2023-10-18 14:08:45', '2023-10-31 18:39:38'),
(37, 'dsfgs', 'emai@o.com', '123015886', 'Soybean', 'i', 1, '2023-11-01 13:37:12', '2023-10-18 14:08:53', '2023-11-01 13:37:12'),
(38, 'test', 'test@o.com', 'test', 'Soybean', 'test', 1, '2023-11-01 13:37:10', '2023-10-18 14:09:08', '2023-11-01 13:37:10'),
(39, 'test', 'test@test.com', '01010', 'Soybean', 'weqwewq', 0, NULL, '2023-12-12 14:47:34', '2023-12-12 14:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `focus_keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `images`, `shortdescription`, `description`, `alt_text`, `focus_keyword`, `social_title`, `social_image`, `social_description`, `social_alt_text`, `meta_title`, `meta_link`, `meta_description`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'Yellow Corn Maize', '[\"images\\/main\\/products\\/1698002963Yellow Corn Maize starlight.jpg\",\"images\\/main\\/products\\/1698002963Yellow Corn Maize starlight (2).jpg\",\"images\\/main\\/products\\/1698002963Yellow Corn Maize starlight (1).jpg\"]', 'Yellow corn is used in produce (Animal Feed Yellow Corn) & a general food for people, used for poultry, and cattle Also corn oil as it is very little fat content oil.', 'Yellow corn is used in produce Animal Feed Yellow Corn  a general food for people used for poultry and cattle Also corn oil as it is very little fat content oil.\r\nStarlight provides different types of corn as Argentine high-quality yellow corn - Brazilian high-quality Corn - Ukrainian yellow corn - American high-quality Corn Those are all valid for producing all corn products.\r\nGlobal Product Classification GPC Code yellow corn is 30000755', '[\"Yellow Corn Maizefor starlight company-\",\"Yellow Corn Maizefor starlight company-\",\"Yellow Corn Maizefor starlight company-\"]', 'yellow corn    Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events trading events international events event updates networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of yellow corn', 'images/social/news/1698002963Yellow Corn Maize starlight (2).jpg', 'All types of Yellow corn from Starlight International Trading Company L.L.C.', 'Yellow Corn Maizefor starlight company-', 'Yellow corn for animal feed-Starlight International Trading Company L.L.C', 'Yellow Corn Maize', 'Trade and buy the highest quality of Corn as Argentine yellow corn Brazilian yellow Corn Ukrainian yellow corn American yellow Corn. yellow corn GPC code', 9, '2023-11-16 15:07:51', '2023-09-14 11:14:30', '2023-11-16 15:07:51'),
(9, 'Soybean', '[\"images\\/main\\/products\\/1697986817Soy -Soybean-Starlight.jpg\"]', 'Soybean seeds are harvested from mature pods of the soybean plant, are used in producing Animal Feeds, and are classified as oil seeds because of their high oil percentage.', 'Soybean seeds are harvested from mature pods of the soybean plant are used in producing Animal Feeds and are classified as oil seeds because of their high oil percentage.\r\nWe trade in soybean Soybean meal - Soybean hull from many countries of origin as\r\nBrazilian Soybean - Ukrainian Soybean - American Soybean.\r\nGlobal Product Classification GPC Code of Soybean is 30006652\r\nSoybean meal and  Soybean hull\r\nIs the most important protein source used to feed poultry and livestock animals Cattle chickens horses fish and sheep.', '[\"soybean-soy-starlight--\"]', 'soybean Soybean Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Soybean', 'images/social/news/1699532498Soybean Starlight.jpg', 'All types of Soybean from Starlight International Trading Company L.L.C.', 'soybean-soy-starlight', 'Soybean for animal feed Starlight International Trading Company L.L.C', 'soybean', 'Trade and buy the highest quality of Soybean meal or hull from the best sources as Brazilian Soybean Ukrainian Soybean American Soybean. Soybean GPC code.', 9, NULL, '2023-09-14 12:31:32', '2023-11-09 15:21:38'),
(10, 'Wheat', '[\"images\\/main\\/products\\/1697986603wheat flour Starlight..avif\"]', 'We focus on trade effectively in 2 flagships soft wheat', 'We focus on trade effectively in 2 flagships soft wheat and durum wheat as we always choose the most mature and quality wheat crops with excellent golden color in the market to meet the highest quality standards.\r\nRussian Wheat. \r\nUkrainian Wheat. \r\nUnited States US Wheat.\r\n\r\nThe Global Product Classification GPC Code of Wheat is 30002599', '[\"wheat-flour-starlight- -\"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events networking unique experiences business Dubai Exporting  exporting  Wheat soft wheat durum wheat', 'Trade and buy with the finest types of Wheat', 'images/social/news/1699532637Wheat starlight.jpg', 'All types of Wheat from Starlight International Trading Company L.L.C.', 'wheat-flour-starlight- -', 'Wheat   Starlight International Trading Company L.L.C', 'Wheat', 'Trade and buy the highest quality of soft wheat and durum wheat from the best as Russian Wheat. Ukrainian Wheat. United States US Wheat. Wheat GPC code.', 9, NULL, '2023-09-14 12:37:35', '2023-11-09 15:23:57'),
(11, 'Cereals', '[\"images\\/main\\/products\\/1697986633Cereal Starlight.jpg\"]', 'Trading in cereals crops “any grass cultivated for the edible components of its grain (botanically)', 'Trading in cereals crops any grass cultivated for the edible components of its grain botanically composed of the endosperm germ and bran.\r\nGlobal Product Classification GPC Code of Cerealsis is 30000563', '[\"cereals- cereals from starlight-crackers-- -\"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events trading events international events event updates networking unique experiences business Dubai Exporting  exporting', '', 'images/social/news/1699532690Cereal Starlight.jpg', '', 'cereals- cereals from starlight-crackers-- -', 'Cereals family Starlight International Trading Company L.L.C', 'cereals', '', 9, NULL, '2023-09-14 12:41:38', '2023-11-09 15:24:50'),
(12, 'Oats', '[\"images\\/main\\/products\\/1697986757Oats Starlight.jpg\"]', 'You can count on us as your Oats export and import partner as we provide the greatest types of it.\r\nGlobal Product Classification (GPC) Code of Oats is 30001712', 'You can count on us as your Oats export and import partner as we provide the most excellent types of it and we ensure that every choice you make with us is a step toward successful trading.\r\nGlobal Product Classification GPC Code of Oats is 30001712', '[\"oats-starlight--\"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events trading events international events event updates networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Oats', 'images/social/news/1699532730Oats Starlight.jpg', 'All types of Oats from Starlight International Trading Company L.L.C.', 'oats-starlight--', 'Oats  Starlight International Trading Company L.L.C', 'Oats', 'Trade and buy the highest quality Oats types like Raw Oats Whole Oat Groats Steel Cut Oats Scottish Oatmeal Rolled Oats and Oat Flour. Oats GPC code.', 9, NULL, '2023-09-14 12:47:08', '2023-11-09 15:25:30'),
(13, 'Palm oil-Malaysian Olein oil', '[\"images\\/main\\/products\\/1694686090Palm Oil Starlight.jpg\",\"images\\/main\\/products\\/1695046306Palm Oil Starlight 2.jpeg\"]', 'The company is actively involved in importing and exporting Malaysian oil.', 'Malaysian Olein oil or Palm oil\r\nThe company is actively involved in importing and exporting Malaysian oil - palm oil as It is commonly used as a cooking oil as well as a frying oil for food industries such as readytoeat food and snack food industries.\r\nIt has different characteristics as its liquid fraction was obtained by the fractionation of palm oil after crystallization at controlled temperatures. It is fully liquid in warm climates and has a narrow range of glycerides. Palm olein is widely used as a frying oil and much of its popularity is due to its good resistance to oxidation and formation of breakdown products at frying temperatures and longer shelf life of finished products.\r\n\r\nGlobal Product Classification GPC Code for Palm oil is 30001751.', '[\"palm oil-Malaysian Olein oil- -\",\"palm oil-Malaysian Olein oil- -\"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events trading events international events event updates networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Palm oil-Malaysian Olein oil', 'images/social/news/1699532767Palm Oil Starlight 2.jpeg', 'All types of Palm oil-Malaysian Olein oil from Starlight International Trading Company L.L.C.', 'palm oil-Malaysian Olein oil- -', 'Palm oil-Malaysian Olein oil Starlight International Trading Company L.L.C', 'Palm oil-Malaysian Olein oil', 'Trade and buy the highest quality of Palm oil-Malaysian Olein oil all over world . Palm oil-Malaysian Olein oil', 9, NULL, '2023-09-14 13:08:10', '2023-11-09 15:26:07'),
(14, 'Soybean Oil', '[\"images\\/main\\/products\\/1694687097Soybean Oil Starlight.jpg\"]', 'Vegetable oil extracted from the seeds of the soybean as its one of the most widely consumed cooking oils', 'Vegetable oil extracted from the seeds of the soybean as its one of the most widely consumed cooking oils. As a drying oil processed soybean oil is also used as a base for printing inks and oil paints.\r\nGlobal Product Classification GPC Code for soybean Oil is 30002287\r\nGlobal Product Classification GPC Code for soybean SHORTENING is 30002288', '[\"Soybean Oil starlight-\"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events trading events international events event updates networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Soybean Oil', 'images/social/news/1699532791Soybean Oil Starlight.jpg', 'All types of Soybean Oil from Starlight International Trading Company L.L.C.', 'Soybean Oil starlight-', 'Soybean Oil  Starlight International Trading Company L.L.C', 'Soybean Oil', 'Trade and buy the highest quality of Soybean Oil and get to know soybean oil benefits. soybean oil GPC code. soybean SHORTENING GPC code.', 9, NULL, '2023-09-14 13:24:57', '2023-11-09 15:26:31'),
(15, 'Egg', '[\"images\\/main\\/products\\/1697986853Egg Starlight.jpg\"]', 'We take pride in presenting an extensive range of high-quality fresh eggs from the best poultry farms.', 'We take pride in presenting an extensive range of high-quality fresh eggs from the best poultry farms.\r\nGlobal Product Classification GPC Code for Egg 30000927', '[\"Egg Starlight International trading company       \"]', 'Egg Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Egg', 'images/social/news/1699534228Egg Starlight2.jpg', 'All types of Egg from Starlight International Trading Company L.L.C.', 'Egg Starlight International trading company       ', 'Egg Starlight ae International Trading Company L.L.C', 'Egg', 'Egg as an important food and beverage product  Trade and buy the highest quality of Egg and and what is Egg Global Product Classification GPC Code', 10, NULL, '2023-09-14 13:38:45', '2023-11-09 15:50:28'),
(16, 'Salt', '[\"images\\/main\\/products\\/1697986888Salt Starlight..jpg\"]', 'Providing types as salt trading around the world.', 'Providing types as salt trading around the world has been a cornerstone of commerce this essential mineral prized for its ability to enhance flavors and preserve food salts significance in both culinary and economic realms remains unparalleled.\r\nGlobal Product Classification GPC Code for Salt 30002103', '[\"salt  Starlight International trading company         \"]', 'salt        Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of salt.', 'images/social/news/1699534245Salt Starlight.jpg', 'All types of salt from Starlight International Trading Company L.L.C.', 'salt  Starlight International trading company         ', 'Salt     Starlight ae International Trading Company L.L.C.', 'Salt', 'Salt  as an important food and beverage product  Trade and buy the highest quality of salt and and what is salt     Global Product Classification GPC Code', 10, NULL, '2023-09-14 14:17:48', '2023-11-09 15:50:45'),
(17, 'Spices', '[\"images\\/main\\/products\\/1697986919SPICE Starlight...webp\",\"images\\/main\\/products\\/1695124186SPICE Starlight ..jpg\",\"images\\/main\\/products\\/1695124186SPICE Starlight...webp\",\"images\\/main\\/products\\/1695124186SPICE Starlight.jpg\"]', 'Provide export and import of a lot of spices', 'Provide import and export a lot of spices such as Black Pepper Cumin Seed  Cuminum  Chilly Garden Pepper Capsicum and other types of Spices. We also offer Dehydrated White Onion Dehydrated Garlic Dehydrated Leeks and Dehydrated Chilly.\r\nGlobal Product Classification GPC Code for Spices 30002908', '[\"Spices   Starlight International trading company        \",\"Spices   Starlight International trading company        \",\"Spices   Starlight International trading company        \",\"Spices   Starlight International trading company        \"]', 'spices     Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Spices', 'images/social/news/1699533958Spices   Starlight.webp', 'All types of  Spices  from Starlight International Trading Company L.L.C.', 'Spices   Starlight International trading company        ', 'Spices  Starlight ae International Trading Company L.L.C.', 'Spices', 'Spices as an important food and beverage product  Trade and buy the highest quality of  Spices and and what is Spices Global Product Classification GPC Code', 10, NULL, '2023-09-19 14:49:46', '2023-11-09 15:45:58'),
(18, 'Flour', '[\"images\\/main\\/products\\/1697986985Tybes of flour Starlight..jpg\",\"images\\/main\\/products\\/1695127129Tybes of flour Starlight. (1).jpg\"]', 'Providing all flour typs.', 'Providing flour for baking and all types significantly impacts the final product as all-purpose flour bread flour cake flour and whole wheat flour have distinct protein contents that affect the structure and texture of baked goods.\r\nGlobal Product Classification GPC Code for types of flour 20000069', '[\"Flour  Starlight International trading company         \",\"Flour  Starlight International trading company         \"]', 'Flour   Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Flour', 'images/social/news/1695127228Tybes of flour Starlight. (1).jpg', 'All types of Flour from Starlight International Trading Company L.L.C.', 'Flour  Starlight International trading company         ', 'Flour  Starlight ae International Trading Company L.L.C.', 'Flour', 'Flour as an important food and beverage product  Trade and buy the highest quality of Flour and and what is Flour Global Product Classification GPC Code', 10, NULL, '2023-09-19 15:38:49', '2023-11-09 15:44:29'),
(19, 'Pastry', '[\"images\\/main\\/products\\/16979971871695127516sweet pie or pastry Starlight.jpg\",\"images\\/main\\/products\\/1695127516Starlightsweet pie or pastry.jpg\"]', 'Pastry trading involves the exchange of delectable baked goods that span sweet and savory delights as we provide pastries From Pasta types and croissants to puff pastries.', 'Pastry trading involves the exchange of delectable baked goods that span sweet and savory delights as we provide pastries From Pasta types and croissants to puff pastries.\r\nGlobal Product Classification GPC Code of Pastry 20000147', '[\"Pastry starlight trading company\",\"Pastry starlight trading company\"]', 'Pastry  Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Pastry', 'images/social/news/1699531737sweet pie or pastry Starlight.jpg', 'All types of Pastry  from Starlight International Trading Company L.L.C.', 'Pastry starlight trading company', 'Pastry    Starlight ae International Trading Company L.L.C.', 'Pastry', 'Pastry as an important food and beverage product  Trade and buy the highest quality of Pastry and and what is Pastry Global Product Classification GPC Code', 10, NULL, '2023-09-19 15:45:16', '2023-11-09 15:08:57'),
(20, 'Honey and Apiary accessories', '[\"images\\/main\\/products\\/1697997216Honey Starlight2.webp\",\"images\\/main\\/products\\/1695128706Honey Starlight2.webp\",\"images\\/main\\/products\\/1695128706Honey Starlight.jpg\",\"images\\/main\\/products\\/1695128706Honey Starlight3.jpg\"]', 'We supply top-quality Beekeeping honey and equipment such as honey extractors wax melters Tanks for honey Vessels of juice and Candle making.', 'We supply top-quality Beekeeping honey and equipment such as honey extractors wax melters Tanks for honey Vessels of juice and Candle making.\r\nGlobal Product Classification GPC Code for Honey and Apiary accessories 30001268', '[\"Honey and Apiary accessories starlight trading\",\"Honey and Apiary accessories starlight trading\",\"Honey and Apiary accessories starlight trading\",\"Honey and Apiary accessories starlight trading\"]', 'Honey and Apiary accessories', 'Trade and buy with the finest types of Honey and Apiary accessories', 'images/social/news/1695128833Honey Starlight (1).jpg', 'All types of Honey and Apiary accessories from Starlight International Trading Company L.L.C.', 'Honey and Apiary accessories starlight trading', 'Honey and Apiary accessories  Starlight International Trading Company L.L.C', 'Honey and Apiary accessories', 'Trade and buy the highest quality of honey and equipment such as honey extractorswax meltersTanks for honeyVessels of juice and Candle makingHoney Global Product Classification GPC Code', 10, NULL, '2023-09-19 16:05:06', '2023-11-09 15:09:33'),
(21, 'Flavors and Fragrances', '[\"images\\/main\\/products\\/16979972511695129540FRAGRANCES (class) Starlight  (1).jpg\",\"images\\/main\\/products\\/1695129540FRAGRANCES (class) Starlight  (1).jpg\"]', 'Flavor is a multisensory experience involving taste smell and sight.', 'Flavor is a multisensory experience involving taste smell and sight. The combination of taste and aroma creates a complex perception of flavor influencing how we enjoy food and beverages so we provide high-quality Flavors and Fragrances to give your product a particular clue.\r\nGlobal Product Classification GPC Code for Fragrances 53161300\r\nGlobal Product Classification GPC Code for SPICE and flavouring 30017730', '[\"Flavors and Fragrances Starlight International trading company         \",\"Flavors and Fragrances Starlight International trading company         \"]', '  Flavors and Fragrances Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Flavors and Fragrances', 'images/social/news/1699532950Flavors and Fragrances starlight.jpg', 'All types of  Flavors and Fragrances  from Starlight International Trading Company L.L.C.', 'Flavors and Fragrances Starlight International trading company         ', 'Flavors and Fragrances    Starlight ae International Trading Company L.L.C.', 'Flavors and Fragrances', 'Trade and buy the highest quality of Flavors and Fragrances get to know and and what is  Flavors and Fragrances Global Product Classification GPC Code', 10, NULL, '2023-09-19 16:19:00', '2023-11-09 15:29:10'),
(22, 'Tea', '[\"images\\/main\\/products\\/1697997100Tea Starlight..jpg\",\"images\\/main\\/products\\/1695130029Tea Starlight.jpg\",\"images\\/main\\/products\\/1695130029Tea Starlight1.jpg\"]', 'Tea is a delicious beverage that offers a spectrum of flavors and health benefits and is used worldwide.', 'Tea is a delicious beverage that offers a spectrum of flavors and health benefits and is used worldwide we provide a diverse range of tea leaves From the boldness of black tea to the earthiness of green tea and the soothing nature of herbal infusions.\r\nGlobal Product Classification GPC Code for types of tea 20000205', '[\"tea  Starlight International trading company        \",\"tea  Starlight International trading company        \",\"tea  Starlight International trading company        \"]', 'tea  Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of tea', 'images/social/news/1699532810Tea Starlight1.jpg', 'All types of  tea  from Starlight International Trading Company L.L.C.', 'tea  Starlight International trading company        ', 'Tea  Starlight ae International Trading Company L.L.C.', 'Tea', 'Tea as an aromatic beverage Trade and buy the highest quality of  Tea and know what is Tea Global Product Classification GPC Code', 10, NULL, '2023-09-19 16:27:09', '2023-11-09 15:26:50'),
(23, 'Pet feed', '[\"images\\/main\\/products\\/1697996969pet food Starlight..jpg\",\"images\\/main\\/products\\/1695130221pet food Starlight..jpg\",\"images\\/main\\/products\\/1695130221pet food Starlight.jpg\",\"images\\/main\\/products\\/1699532634pet food Starlight.jpg\"]', 'Provide the best types of pet feed as it is formulated to meet the specific nutritional needs of dogs cats and other animals. It provides essential nutrients to support growth energy and overall health.', 'Provide the best types of pet feed as it is formulated to meet the specific nutritional needs of dogs cats and other animals. It provides essential nutrients to support growth energy and overall health.\r\nGlobal Product Classification GPC Code of Pet Food 10111600', '[\"pet feed    Starlight International trading company          \",\"pet feed    Starlight International trading company          \",\"pet feed    Starlight International trading company          \"]', '    pet feed trading Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of pet feed', 'images/social/news/1699532634pet food Starlight.jpg', 'All types of pet feed from Starlight International Trading Company L.L.C.', 'pet feed    Starlight International trading company          ', 'Pet feed  Starlight ae International Trading Company L.L.C.', 'Pet feed', 'Pet feed as an important beverage product  Trade and buy the highest quality of pet feed products  with pet feed Global Product Classification GPC Code', 10, NULL, '2023-09-19 16:30:21', '2023-11-09 15:23:54'),
(24, 'Rough rice', '[\"images\\/main\\/products\\/1695130463Rough rice starlight.jpg\",\"images\\/main\\/products\\/1695130463Rough rice starlight1.jpg\",\"images\\/main\\/products\\/1695130463Rough rice starlight.jpg\"]', 'Rice is a sensitive cereal according to temperature and moisture so it requires expertise for perfect control trading process.', 'Rice is a sensitive cereal according to temperature and moisture so it requires expertise for the perfect control trading process In the competitive world of grains we provide the best types of rice.\r\nGlobal Product Classification GPC Code of Cerealsis is Rice is 30002007', '[\"Rough rice  trading allover world\",\"Rough rice  trading allover world\",\"Rough rice  trading allover world\"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events trading events international events event updates networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Rough rice', 'images/social/news/1699532836Rough rice starlight.jpg', 'All types of Rough rice from Starlight International Trading Company L.L.C.', 'Rough rice  trading allover world', 'Rough rice Starlight International Trading Company L.L.C', 'Rough rice', 'Trade and buy the highest quality of Rough Rice and get to know Rough rice benefits. Rough rice GPC code.', 9, NULL, '2023-09-19 16:34:23', '2023-11-09 15:27:16'),
(25, 'Canola', '[\"images\\/main\\/products\\/1697997539Canola starlight1 (1).jpg\",\"images\\/main\\/products\\/1699532923Canola starlight (2).jpg\",\"images\\/main\\/products\\/1695130622Canola starlight1.jpg\",\"images\\/main\\/products\\/1699532923Canola starlight (1).jpg\"]', 'Canola is a member of a large family of plants called crucifers', 'Canola is a member of a large family of plants called crucifers We work in canola seed trading as\r\nOur experienced team in agricultural  grains trading enables us to create value and growth opportunities for canola seed suppliers and buyers in markets around the world.\r\nGlobal Product Classification GPC Code of Canola is 10007310', '[\"Canola world trading allover world\",\"Canola world trading allover world\",\"Canola world trading allover world\"]', 'Canola canola seeds  Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Canola', 'images/social/news/1699532923Canola starlight (1).jpg', 'All types of Canola from Starlight International Trading Company L.L.C.', 'Canola world trading allover world', 'CanolaStarlight International Trading Company L.L.C', 'Canola', 'Trade and buy the highest quality of Canola and get to know Canolas benefits and what is Canola. Canola Global Product Classification GPC Code', 9, '2023-11-09 16:58:17', '2023-09-19 16:37:02', '2023-11-09 16:58:17'),
(26, 'Legumes', '[\"images\\/main\\/products\\/1695130861Legumes starlight.jpg\",\"images\\/main\\/products\\/1695130861Legumes starlight2 (1).jpg\"]', 'Best source of plant-based protein our beans and legumes are available worldwide', 'Best source of plant-based protein our beans and legumes are available worldwide including\r\nKidney Beans - Adzuki Beans - Borlotti Beans - Mung Dahl - Pinto Beans - Chickpeas - Lima Beans - Navy Beans - Great Northern Beans - Black Turtle Beans.\r\n\r\nGlobal Product Classification GPC Code of Legume Feed Crops  CLASS is 94030300', '[\"Legumes  trading in starlight -\",\"Legumes  trading in starlight -\"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading unique experiences business Dubai Exporting  exporting  Legumes', 'Trade and buy with the finest types of Legumes', 'images/social/news/1699532955Legumes starlight2 (1).jpg', 'All types of Legumes from Starlight International Trading Company L.L.C.', 'Legumes  trading in starlight -', 'Legumes and beans Starlight International Trading Company L.L.C', 'Legumes', 'Trade the highest quality of all types like KidneyAdzukiBorlottiMung DahlPintoChickpeasLimaNavyGreat NorthernBlack Turtle Beans. Legumes GPC code.', 9, NULL, '2023-09-19 16:41:01', '2023-11-09 15:29:15'),
(27, 'Sunflower oil', '[\"images\\/main\\/products\\/1697987080Sunflower oil starlight (1).jpg\",\"images\\/main\\/products\\/1695131951Sunflower oil starlight.jpg\"]', 'Sunflower oil is a non-volatile oil sourced from sunflower seeds and is commonly used in food as a frying oil and in cosmetic formulations as an emollient in Ukraine and Russia as the largest producers.', 'Sunflower oil is a non-volatile oil sourced from sunflower seeds and is commonly used in food as a frying oil and in cosmetic formulations as an emollient in Ukraine and Russia as the largest producers.\r\nIn sunflower oil manufacturing there are four types of processed oil containing different amounts of the major fatty acids produced The expressed oil has a light amber color with a mild flavor. The oil contains a rich content of vitamin E.\r\nThe Global Product Classification GPC Code for Sunflower oil is 30002363', '[\"Sunflower oil trading in starlight\",\"Sunflower oil trading in starlight\"]', 'fodder Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Sunflower oil', 'images/social/news/1699532986Sunflower oil starlight.jpg', 'All types of Sunflower oil from Starlight International Trading Company L.L.C.', 'Sunflower oil trading in starlight', 'Sunflower oil   Starlight International Trading Company L.L.C', 'Sunflower oil', 'Trade and buy the highest quality of Sunflower oil and know Sunflower oils benefits and what is.Sunflower oil Global Product Classification GPC Code.', 9, NULL, '2023-09-19 16:59:11', '2023-11-09 15:29:46'),
(28, 'Soybean Oil', '[\"images\\/main\\/products\\/1695196725Starlight for internation trading company\\u0634\\u0631\\u0643\\u0647 \\u0633\\u062a\\u0627\\u0631\\u0644\\u0627\\u064a\\u062a \\u0644\\u0644\\u062a\\u062c\\u0627\\u0631\\u0647 \\u0627\\u0644\\u062f\\u0648\\u0644\\u064a\\u0647.png\"]', 'Vegetable oil extracted from the seeds of the soybean as its one of the most widely consumed cooking oils. As a drying oil processed soybean oil is also used as a base for printing inks and oil paints.', 'Vegetable oil extracted from the seeds of the soybean as its one of the most widely consumed cooking oils. As a drying oil processed soybean oil is also used as a base for printing inks and oil paints.\r\nGlobal Product Classification GPC Code for soybean Oil is 30002287\r\nGlobal Product Classification GPC Code for soybean SHORTENING is 30002288', '[\"\"]', '', '', '', '', '', '', '', '', 9, '2023-09-21 12:42:00', '2023-09-20 10:13:25', '2023-09-21 12:42:00'),
(29, 'Coffee', '[\"images\\/main\\/products\\/1697987052Coffee - whole beans Starlight..jpg\",\"images\\/main\\/products\\/1695197882Coffee - whole beans Starlight.png\"]', 'One of the most traded commodities worldwide It is grown in more than 50 countries all with tropical and subtropical climates.', 'One of the most traded commodities worldwide It is grown in more than 50 countries all with tropical and subtropical climates. \r\nBrazil is the worlds leading coffee producer with around 39 of global supply The other top producers include Vietnam Colombia Indonesia and Ethiopia. \r\nWe provide all types of coffee as Robusta coffee and Arabian coffee flat seeds with the highest quality at the best price from all countries each time.\r\nGlobal Product Classification GPC  Code for Coffe\r\n\r\nCOFFEEshrubs crushed Coffea 10007217\r\nCOFFEE - Ground Beans 10008179\r\nCOFFEE - Whole Beans Whole bean 10008178', '[\"coffee  Starlight International trading company       \",\"coffee  Starlight International trading company       \"]', 'coffee trading   Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of coffee', 'images/social/news/1699531561Coffee - ground beans Starlight.jpg', 'All types of coffee from Starlight International Trading Company L.L.C.', 'coffee  Starlight International trading company       ', 'Coffee   Starlight ae International Trading Company L.L.C.', 'Coffee', 'Coffee   as an important food and beverage product  Trade and buy the highest quality of coffee and and what is coffee Global Product Classification GPC Code', 11, NULL, '2023-09-20 11:18:02', '2023-11-09 15:19:44'),
(30, 'COFFEE', '[\"images\\/main\\/products\\/1695198417starlight all categories.jpeg\",\"images\\/main\\/products\\/1695198417Coffee - whole beans..jpg\"]', 'One of the most traded commodities worldwide It is grown in more than 50 countries all with tropical and subtropical climates.', 'One of the most traded commodities worldwide It is grown in more than 50 countries all with tropical and subtropical climates. \r\nBrazil is the worlds leading coffee producer with around 39 of global supply The other top producers include Vietnam Colombia Indonesia and Ethiopia. \r\nWe provide all types of coffee as Robusta coffee and Arabian coffee flat seeds with the highest quality at the best price from all countries each time.\r\nGlobal Product Classification GPC  Code for Coffe\r\n\r\nCOFFEEshrubs crushed Coffea 10007217\r\nCOFFEE - Ground Beans 10008179\r\nCOFFEE - Whole Beans Whole bean 10008178', '[\"\",\"\"]', '', '', '', NULL, '', '', '', NULL, 11, '2023-09-20 11:47:56', '2023-09-20 11:26:57', '2023-09-20 11:47:56'),
(31, 'live cattle', '[\"images\\/main\\/products\\/1698002555live cattle starlight.jpg\",\"images\\/main\\/products\\/1695198490LIVE ANIMALS (segment) Starlight .jpg\",\"images\\/main\\/products\\/1695202795live cattle starlight.jpg\"]', 'For the importance of live cattle our trading services cover the ends of the spectrum. We provide top-tier live cattle for various purposes from breeding to consumption always prioritizing the health and well-being of the animals.', 'For the importance of live cattle our trading services cover the ends of the spectrum. We provide top-tier live cattle for various purposes from breeding to consumption always prioritizing the health and well-being of the animals. \r\nGlobal Product Classification GPC Code for Live Animals 89000000', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980025551695202795live cattle starlight.jpg', '', '', '', '', '', 12, NULL, '2023-09-20 11:28:10', '2023-10-22 22:22:35'),
(32, 'Poultry', '[\"images\\/main\\/products\\/1698002692Poultry starlight.jpg\",\"images\\/main\\/products\\/1695198565POULTRY Starlight .jpg\",\"images\\/main\\/products\\/1695202658Poultry starlight (2).jpg\",\"images\\/main\\/products\\/1695202658Poultry starlight.jpg\"]', 'Our comprehensive range includes premium fresh and frozen poultry products delivering convenience without compromising on taste or quality. We take pride in offering a diverse selection that caters to various culinary preferences and demands.', 'Our comprehensive range includes premium fresh and frozen poultry products delivering convenience without compromising on taste or quality. We take pride in offering a diverse selection that caters to various culinary preferences and demands.\r\nGlobal Product Classification GPC Code for Poultry 30001908', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/16980026921695202658Poultry starlight.jpg', '', '', '', '', '', 12, NULL, '2023-09-20 11:29:25', '2023-10-22 22:24:52'),
(33, 'Fish', '[\"images\\/main\\/products\\/16979978681695202591fish starlight (2).jpg\",\"images\\/main\\/products\\/1695198639FISH AND SEAFOOD Starlight .jpg\",\"images\\/main\\/products\\/1695202591fish starlight.jpg\",\"images\\/main\\/products\\/1695202591fish starlight (2).jpg\"]', 'Our trading company takes pride in offering a wide selection of fresh and frozen fish as well as salted seafood products With stringent quality control measures in place we ensure that only the finest seafood reaches the end customers tables.', 'Our trading company takes pride in offering a wide selection of fresh and frozen fish as well as salted seafood products With stringent quality control measures in place we ensure that only the finest seafood reaches the end customers tables.\r\nGlobal Product Classification GPC Code for Fish and SEAFOOD 50120000', '[\"\",\"\",\"\",\"\"]', '', '', '', '', '', '', '', '', 12, NULL, '2023-09-20 11:30:39', '2023-10-22 21:04:28'),
(34, 'cocoa', '[\"images\\/main\\/products\\/1695198699starlight all categories.jpeg\",\"images\\/main\\/products\\/1695198699cocoa..jpg\",\"images\\/main\\/products\\/1695199167cocoa Starlight..jpg\"]', 'cocoa is a soft commodity famously known for producing all types of Chocolatecocoa', 'cocoa is a soft commodity famously known for producing all types of Chocolatecocoa The top producers of cocoa are West African countries like Cote dIvoire and Ghana also Latin American countries like Brazil and Ecuador the majority of cocoa production worldwide is from West Africa.\r\nWe trade import and export cocoa in different countries such as Brazil Ghana Ivory Coast Indonesia Nigeria and Cameroon.\r\nGlobal Product Classification GPC  Code for Cocoa is 30003115\r\nGlobal Product Classification GPC  Code for Types of ChocolatecocoaMalt Attribute 20000228', '[\"\",\"\"]', '', '', 'images/social/news/1695199167cocoa Starlight.jpg', '', '', '', '', '', 11, '2023-10-23 10:02:31', '2023-09-20 11:31:39', '2023-10-23 10:02:31'),
(35, 'Sugar Crops Class', '[\"images\\/main\\/products\\/1695198791starlight all categories.jpeg\",\"images\\/main\\/products\\/1695198791Sugar crops..jpg\",\"images\\/main\\/products\\/1695199202Sugar crops Starlight..jpg\"]', 'Sugar trading is a unique opportunity that can enhance your trades Like all commodities', 'Sugar trading is a unique opportunity that can enhance your trades Like all commodities it is traded as a unique and rarely traded soft commodity. \r\nGlobal Product Classification GPC Code for Sugar 94022000', '[\"\",\"\"]', '', '', 'images/social/news/1695199202Sugar crops Starlight.jpg', '', '', '', '', '', 11, '2023-10-23 10:02:38', '2023-09-20 11:33:11', '2023-10-23 10:02:38'),
(36, 'Cashew', '[\"images\\/main\\/products\\/1697997811cashew Starlight.. (1).avif\",\"images\\/main\\/products\\/1695199077cashew Starlight...avif\"]', 'Cashews with their rich buttery taste have gained popularity not only for snacking but also for their culinary versatility.', 'Cashews with their rich buttery taste have gained popularity not only for snacking but also for their culinary versatility. Their kidney-shaped appearance and smooth texture make them stand out. Trading companies value cashews for their high demand in both raw and processed forms.\r\nGlobal Product Classification GPC Code for Cashew 30000544', '[\"\",\"\"]', '', '', 'images/social/news/1695199237cashew Starlight.jpg', '', '', '', '', '', 13, NULL, '2023-09-20 11:37:57', '2023-10-22 21:03:31'),
(37, 'Feed cattle', '[\"images\\/main\\/products\\/1695199295starlight all categories.jpeg\",\"images\\/main\\/products\\/1695199295istockphoto-944687452-612x612.jpg\",\"images\\/main\\/products\\/1695199553Feed cattle starlight (2).jpg\"]', 'Our feed cattle supplying services are meticulously chosen to provide optimal nutrition and support for livestock growth aligning with modern agricultural standards.', 'Our feed cattle supplying services are meticulously chosen to provide optimal nutrition and support for livestock growth aligning with modern agricultural standards.', '[\"\",\"\"]', '', '', 'images/social/news/1695199553Feed cattle starlight.jpg', '', '', '', '', '', 12, '2023-09-20 11:46:06', '2023-09-20 11:41:35', '2023-09-20 11:46:06'),
(38, 'Walnuts', '[\"images\\/main\\/products\\/1697997784Walnuts Starlight (1).jpg\",\"images\\/main\\/products\\/1695199315Walnuts Starlight.jpg\"]', 'Walnuts resembling miniature brains are packed with nutrients like omega-3 fatty acids and antioxidants.', 'Walnuts resembling miniature brains are packed with nutrients like omega-3 fatty acids and antioxidants. Their distinct earthy flavor makes them a favorite for baking and cooking. From oil extraction to confectionery walnuts offer a broad spectrum of trading opportunities.\r\nGlobal Product Classification GPC Code for Walnuts 30002584', '[\"\",\"\"]', '', '', '1695199315Walnuts Starlight..jpg', '', '', '', '', '', 13, NULL, '2023-09-20 11:41:55', '2023-10-22 21:03:04'),
(39, 'Pistachio', '[\"images\\/main\\/products\\/1697997737pistachio Starlight (1).jpg\",\"images\\/main\\/products\\/1695199390pistachio Starlight.jpg\"]', 'Pistachios with their slightly sweet and salty taste have become synonymous with snacking.', 'Pistachios with their slightly sweet and salty taste have become synonymous with snacking. Their vibrant green color and the joy of cracking open the shell enhance their appeal. The snack industry drives a significant portion of pistachio trading.\r\nGlobal Product Classification GPC Code for Pistachio 30001869', '[\"\",\"\"]', '', '', '1695199390pistachio Starlight..jpg', '', '', '', '', '', 13, NULL, '2023-09-20 11:43:10', '2023-10-22 21:02:17'),
(40, 'Almonds', '[\"images\\/main\\/products\\/1697997685almonds Starlight (1).jpg\",\"images\\/main\\/products\\/1695199448almonds Starlight..jpg\"]', 'Almonds known for their versatility are consumed raw roasted and in various processed forms.', 'Almonds known for their versatility are consumed raw roasted and in various processed forms. With a high protein content and diverse applications they are a staple for health-conscious consumers and the food industry alike.\r\nGlobal Product Classification GPC Code for Almonds 30000171', '[\"\",\"\"]', '', '', '1695199448almonds Starlight.jpg', '', '', '', '', '', 13, NULL, '2023-09-20 11:44:08', '2023-10-22 21:01:25'),
(41, 'Hazelnut', '[\"images\\/main\\/products\\/1697997651Hazelnut Starlight. (1).webp\",\"images\\/main\\/products\\/1695199548Hazelnut Starlight..webp\"]', 'Hazelnuts distinct flavor profile intensifies when roasted making them popular in desserts spreads and even liqueurs.', 'Hazelnuts distinct flavor profile intensifies when roasted making them popular in desserts spreads and even liqueurs. Their contribution to the flavor and texture of products opens doors for trading companies across the globe.\r\nGlobal Product Classification GPC Code for Hazelnut 30017004', '[\"\",\"\"]', '', '', '1695199548Hazelnut Starlight.jpg', '', '', '', '', '', 13, NULL, '2023-09-20 11:45:48', '2023-10-22 21:00:51'),
(42, 'Feed cattle', '[\"images\\/main\\/products\\/1698002424Feed cattle starlight (3).jpg\",\"images\\/main\\/products\\/1695199598Feed cattle starlight (2).jpg\",\"images\\/main\\/products\\/1695202814Feed cattle starlight.jpg\"]', 'Our feed cattle supplying services are meticulously chosen to provide optimal nutrition and support for livestock growth aligning with modern agricultural standards.', 'Our feed cattle supplying services are meticulously chosen to provide optimal nutrition and support for livestock growth aligning with modern agricultural standards.', '[\"\",\"\",\"\"]', '', '', 'images/social/news/1698002424Feed cattle starlight.jpg', '', '', '', '', '', 12, NULL, '2023-09-20 11:46:38', '2023-10-22 22:20:24'),
(43, 'Peanut', '[\"images\\/main\\/products\\/1698002117peanuts Starlight.jpg\",\"images\\/main\\/products\\/1695199624peanuts Starlight.jpg\",\"images\\/main\\/products\\/1698002117peanuts Starlight (2).jpg\"]', 'Peanuts technically legumes are valued for their affordability and widespread use.', 'Peanuts technically legumes are valued for their affordability and widespread use. Whether as peanut butter oil or whole peanuts their role in the snacking cooking and confectionery sectors ensures a steady demand.\r\nGlobal Product Classification GPC Code for Peanut 30001797', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/16980021171695199624peanuts Starlight.jpg', '', '', '', '', '', 13, NULL, '2023-09-20 11:47:04', '2023-10-22 22:15:17'),
(44, 'Pine nuts', '[\"images\\/main\\/products\\/1698001976Pine Nuts Starlight.jpg\",\"images\\/main\\/products\\/1695199803Pine Nuts Starlight.jpg\",\"images\\/main\\/products\\/1698001976Pine Nuts Starlight (2).jpg\",\"images\\/main\\/products\\/1698001976Pine Nuts Starlight (1).jpg\"]', 'Pine nuts often referred to as pignoli have a delicate yet distinct flavor.', 'Pine nuts often referred to as pignoli have a delicate yet distinct flavor. Theyre a culinary delight in salads pesto and various Mediterranean dishes. Their niche appeal makes them an intriguing commodity in the trading world.\r\nGlobal Product Classification GPC Code for Pine nuts 30001836', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/16980019761695199803Pine Nuts Starlight.jpg', '', '', '', '', '', 13, NULL, '2023-09-20 11:50:03', '2023-10-22 22:12:56'),
(45, 'Citrus fruits', '[\"images\\/main\\/products\\/1698001785citrus fruits Starlight.jpg\",\"images\\/main\\/products\\/1695199848Citrus fruits  starlight.jpg\",\"images\\/main\\/products\\/1695202364citrus fruits Starlight.jpg\"]', 'Our trading company takes pride in supplying a variety of citrus fruits from zesty oranges and Mandarin oranges to tangy lemons and grapefruit With our rigorous quality control we ensure that the bright flavors and vibrant colors of these citrus delights are enjoyed by people.', 'Our trading company takes pride in supplying a variety of citrus fruits from zesty oranges and Mandarin oranges to tangy lemons and grapefruit With our rigorous quality control we ensure that the bright flavors and vibrant colors of these citrus delights are enjoyed by people.\r\nGlobal Product Classification GPC Code of Citrus fruits 30003083', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980017851695202364citrus fruits Starlight (1).jpg', '', '', '', '', '', 14, NULL, '2023-09-20 11:50:48', '2023-10-22 22:09:45'),
(46, 'Tropical fruits', '[\"images\\/main\\/products\\/1698001138Tropical fruits starlight.jpg\",\"images\\/main\\/products\\/1695200025Tropical fruits starlight (2).jpg\",\"images\\/main\\/products\\/1695202253Tropical fruits starlight.jpg\"]', 'As a reputable trading company we specialize in bringing the exotic allure of tropical fruits our commitment to quality means you can enjoy the rich flavors and vibrant colors of tropical delights like mangoes pineapples and papayas all carefully selected and delivered with care.', 'As a reputable trading company we specialize in bringing the exotic allure of tropical fruits our commitment to quality means you can enjoy the rich flavors and vibrant colors of tropical delights like mangoes pineapples and papayas all carefully selected and delivered with care.\r\nGlobal Product Classification GPC Code of Tropical Fruits 30002489', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980011381695202253Tropical fruits starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 11:53:45', '2023-10-22 21:58:58'),
(47, 'Apples', '[\"images\\/main\\/products\\/1698001014Apples Starlight.jpg\",\"images\\/main\\/products\\/1695200179Apples (Brick) Starlight..jpg\",\"images\\/main\\/products\\/1695202320Apples (Brick) Starlight.jpg\"]', 'We offer a diverse range of fruits including the ever-popular apples. Our commitment to excellence ensures that the end consumer receives apples of impeccable quality.', 'We offer a diverse range of fruits including the ever-popular apples. Our commitment to excellence ensures that the end consumer receives apples of impeccable quality.\r\nGlobal Product Classification GPC Code of Apples Variety Attribute 20002794\r\nGlobal Product Classification GPC Code of Apples Brick 10005900', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980010141695202320Apples (Brick) Starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 11:56:19', '2023-10-22 21:56:54'),
(48, 'Pears', '[\"images\\/main\\/products\\/1698000914Pears Starlight.jpg\",\"images\\/main\\/products\\/1695200268Pears Starlight..jpg\",\"images\\/main\\/products\\/1695202178Pears Starlight.jpg\"]', 'Proudly trading  distributing pears our trading company brings the delightfully sweet and juicy flavors of this fruit to consumers worldwide With a keen eye for selecting the finest specimens we deliver pears that meet the highest standards of taste and freshness.', 'Proudly trading  distributing pears our trading company brings the delightfully sweet and juicy flavors of this fruit to consumers worldwide With a keen eye for selecting the finest specimens we deliver pears that meet the highest standards of taste and freshness.\r\nGlobal Product Classification GPC Code of Pears Variety Attribute 20002795\r\nGlobal Product Classification GPC Code of Pears Brick 10005903', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980009141695202178Pears Starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 11:57:48', '2023-10-22 21:55:14'),
(49, 'Berries', '[\"images\\/main\\/products\\/1698000798berries Starlight.jpg\",\"images\\/main\\/products\\/1695200491berries Starlight (1).jpg\",\"images\\/main\\/products\\/1695202143berries Starlight.jpg\",\"images\\/main\\/products\\/1695202143berries Starlight (2).jpg\"]', 'With a focus on freshness and taste our trading company is your source for a wide variety of berries. From juicy strawberries to antioxidant-rich blueberries our selection ensures that you savor the goodness of natures treasures at their best.', 'With a focus on freshness and taste our trading company is your source for a wide variety of berries. From juicy strawberries to antioxidant-rich blueberries our selection ensures that you savor the goodness of natures treasures at their best.\r\nGlobal Product Classification GPC Code for Berries Class 50251000\r\nGlobal Product Classification GPC Code for BlackBerries 10005923\r\nGlobal Product Classification GPC Code for BlueBerries 10005929\r\nGlobal Product Classification GPC Code for RaspBerries 10005927\r\nGlobal Product Classification GPC Code for StrawBerries 10005921', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/16980007981695202143berries Starlight (2).jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:01:31', '2023-10-22 21:53:18');
INSERT INTO `products` (`id`, `title`, `images`, `shortdescription`, `description`, `alt_text`, `focus_keyword`, `social_title`, `social_image`, `social_description`, `social_alt_text`, `meta_title`, `meta_link`, `meta_description`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(50, 'Beets', '[\"images\\/main\\/products\\/1698000528Beets starlight.jpg\",\"images\\/main\\/products\\/1695200730Beets starlight.jpg\",\"images\\/main\\/products\\/1695202109Beets starlight (2).jpg\"]', 'providing a wide variety of root vegetables including earthy and vibrant beets. Our commitment to quality ensures that you receive beets that are fresh flavorful and perfect for both culinary and nutritional needs.', 'providing a wide variety of root vegetables including earthy and vibrant beets. Our commitment to quality ensures that you receive beets that are fresh flavorful and perfect for both culinary and nutritional needs.\r\nGlobal Product Classification GPC Code of Beets 30000311\r\nGlobal Product Classification GPC Code of Beetroot Leaves 30016218\r\nGlobal Product Classification GPC Code of Beet Greens 30000312\r\nGlobal Product Classification GPC Code of Red Beet 30000312\r\nGlobal Product Classification GPC Code of Beetroot 10006121', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980005281695202109Beets starlight (2).jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:05:30', '2023-10-22 21:48:48'),
(51, 'Carrots', '[\"images\\/main\\/products\\/1698000444Carrots starlight (1).jpg\",\"images\\/main\\/products\\/1695200778carrots Starlight.jpg\",\"images\\/main\\/products\\/1695202082carrots Starlight..jpg\"]', 'Proudly trading and distributing carrots our trading company brings the crisp and sweet flavors of this versatile root vegetable to businesses with our dedication to excellence.', 'Proudly trading and distributing carrots our trading company brings the crisp and sweet flavors of this versatile root vegetable to businesses with our dedication to excellence.\r\nGlobal Product Classification GPC Code of Carrots 10006122', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980004441695202082carrots Starlight..jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:06:18', '2023-10-22 21:47:24'),
(52, 'Turnips', '[\"images\\/main\\/products\\/1698000252Turnips starlight.jpg\",\"images\\/main\\/products\\/1695200934TURNIPS Starlight .jpg\",\"images\\/main\\/products\\/1695202066Turnips starlight.jpg\",\"images\\/main\\/products\\/1698000327Turnips starlight (2).jpg\"]', 'Providing turnips from root vegetables Our commitment to quality ensures that you receive turnips with a crisp texture and mild flavor perfect for roasting and stewing.', 'Providing turnips from root vegetables Our commitment to quality ensures that you receive turnips with a crisp texture and mild flavor perfect for roasting and stewing.\r\nGlobal Product Classification GPC Code of Turnips 10006120', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980002521695202066Turnips starlight.jpg', '', '', '', '', '', 14, '2023-11-09 17:43:37', '2023-09-20 12:08:54', '2023-11-09 17:43:37'),
(53, 'Potatoes', '[\"images\\/main\\/products\\/1698000136potato Starlight..jpg\",\"images\\/main\\/products\\/1695201107Potatoes starlight.jpg\",\"images\\/main\\/products\\/1695202045potato Starlight..jpg\",\"images\\/main\\/products\\/1695202045potato Starlight.jpg\"]', 'At our trading company we understand the importance of the potato as a staple in many cuisines From fluffy russets to creamy Yukon Golds our selection caters to diverse preferences and our meticulous sourcing and delivery process guarantees that you receive potatoes of the highest quality.', 'At our trading company we understand the importance of the potato as a staple in many cuisines From fluffy russets to creamy Yukon Golds our selection caters to diverse preferences and our meticulous sourcing and delivery process guarantees that you receive potatoes of the highest quality.\r\nGlobal Product Classification GPC Code of Potatoes 30001903', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/16980001361695202045potato Starlight..jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:11:47', '2023-10-22 21:42:16'),
(54, 'Sweet potatoes', '[\"images\\/main\\/products\\/1698000053sweet potato Starlight.jpg\",\"images\\/main\\/products\\/1695201232sweet potato Starlight..jpg\",\"images\\/main\\/products\\/1695201974sweet potato Starlight.jpg\"]', 'As a reputable trading company we specialize in providing a variety of sweet potatoes from the vibrant orange hues of sweet potatoes to the starchy goodness of yams.', 'As a reputable trading company we specialize in providing a variety of sweet potatoes from the vibrant orange hues of sweet potatoes to the starchy goodness of yams.\r\nGlobal Product Classification GPC Code of Sweet potatoes 30002783', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16980000531695201974sweet potato Starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:13:52', '2023-10-22 21:40:53'),
(55, 'Asparagus', '[\"images\\/main\\/products\\/1697999966ASPARAGUS Starlight.jpg\",\"images\\/main\\/products\\/1695201285ASPARAGUS PLANTS (ASPARAGUS officinalis) Starlight .jpg\",\"images\\/main\\/products\\/1695201952ASPARAGUS PEAPLANTS Starlight .jpg\"]', 'Proudly sourcing and distributing asparagus our trading company provides you with the tender nutrient-packed spears of this versatile vegetable with our careful selection process.', 'Proudly sourcing and distributing asparagus our trading company provides you with the tender nutrient-packed spears of this versatile vegetable with our careful selection process.\r\nGlobal Product Classification GPC Code of ASPARAGUS plants Asparagus Officinalis 10007651\r\nGlobal Product Classification GPC Code of ASPARAGUS Peaplants Tetragonolobus Purpureus 10007569', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16979999661695201952ASPARAGUS PEAPLANTS Starlight .jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:14:45', '2023-10-22 21:39:26'),
(56, 'Kohlrabi', '[\"images\\/main\\/products\\/1697999752Kohlrabi starlight.jpg\",\"images\\/main\\/products\\/1695201375KOHLRABI Starlight .jpg\",\"images\\/main\\/products\\/1695201937Kohlrabi starlight.jpg\"]', 'We understand the unique appeal of kohlrabi and its crunchy slightly sweet taste. Our meticulous sourcing ensures that the end consumer can enjoy this versatile vegetable whether sliced into salads roasted or used as a healthy snack.', 'We understand the unique appeal of kohlrabi and its crunchy slightly sweet taste. Our meticulous sourcing ensures that the end consumer can enjoy this versatile vegetable whether sliced into salads roasted or used as a healthy snack.\r\nGlobal Product Classification GPC Code of Kohlrabi 10006146', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16979997521695201937Kohlrabi starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:16:15', '2023-10-22 21:35:52'),
(57, 'Celery', '[\"images\\/main\\/products\\/1697999625Celery starlight.jpg\",\"images\\/main\\/products\\/1695201429CELERY Starlight .jpg\",\"images\\/main\\/products\\/1695201921CELERY PLANTS (apium graveolens) Starlight .jpg\"]', 'For the beloved celery our trading company ensures that you receive fresh crunchy stalks that are perfect for adding flavor and crunch to various dishes. With our commitment to quality you can enjoy the distinct taste and nutritional benefits of celery in the meals.', 'For the beloved celery our trading company ensures that you receive fresh crunchy stalks that are perfect for adding flavor and crunch to various dishes. With our commitment to quality you can enjoy the distinct taste and nutritional benefits of celery in the meals.\r\nGlobal Product Classification GPC Code of Celery 30000559\r\nLeafy green lettuce spinach silverbeet.', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16979996251695201921CELERY PLANTS (apium graveolens) Starlight .jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:17:09', '2023-10-22 21:33:45'),
(58, 'Lettuce', '[\"images\\/main\\/products\\/1697999505LETTUCE Starlight.jpg\",\"images\\/main\\/products\\/1695201651LETTUCE Starlight .jpg\",\"images\\/main\\/products\\/1695201651LETTUCE Starlight.jpg\"]', 'We specialize in providing a range of fresh greens including lettuce. Our commitment to quality ensures that you receive crisp and vibrant lettuce leaves perfect for salads wraps and various culinary creations.', 'We specialize in providing a range of fresh greens including lettuce. Our commitment to quality ensures that you receive crisp and vibrant lettuce leaves perfect for salads wraps and various culinary creations.\r\nGlobal Product Classification GPC Code of Lettuce 30001424', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16979995051695201651LETTUCE Starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:20:51', '2023-10-22 21:31:45'),
(59, 'Spinach', '[\"images\\/main\\/products\\/1697999388Spinach starlight.jpg\",\"images\\/main\\/products\\/1695204654SPINACH Starlight .jpg\",\"images\\/main\\/products\\/1695204654Spinach starlight.jpg\"]', 'Proudly trading in spinach our trading company brings you the nutrient-rich and versatile leafy green. With our careful selection process you can see the tender texture and earthy flavor.', 'Proudly trading in spinach our trading company brings you the nutrient-rich and versatile leafy green. With our careful selection process you can see the tender texture and earthy flavor.\r\nGlobal Product Classification GPC Code of Spinach 30002310', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16979993881695204654Spinach starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:41:58', '2023-10-22 21:29:48'),
(60, 'Silverbeet Chard', '[\"images\\/main\\/products\\/1697999305Silverbeet starlight.jpg\",\"images\\/main\\/products\\/1695203076Silverbeet starlight  (3).jpg\",\"images\\/main\\/products\\/1695203076Silverbeet starlight  (2).jpg\"]', 'We understand the value of silverbeet also known as Swiss chard in diverse cuisines. With its colorful stems and robust leaves we supply you with silverbeet thats fresh and full of vitamins and minerals.', 'We understand the value of silverbeet also known as Swiss chard in diverse cuisines. With its colorful stems and robust leaves we supply you with silverbeet thats fresh and full of vitamins and minerals.\r\nGlobal Product Classification GPC Code of Silverbeet Chard 30000573\r\nAllium or bulb vegetables garlic leeks onions shallots.', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16979993051695203076Silverbeet starlight  (2).jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:44:36', '2023-10-22 21:28:25'),
(61, 'Garlic', '[\"images\\/main\\/products\\/1697999234Garlic starlight.jpg\",\"images\\/main\\/products\\/1695203193GARLIC Starlight .jpg\",\"images\\/main\\/products\\/1695203193Garlic starlight (2).jpg\",\"images\\/main\\/products\\/1695203193Garlic starlight (1).jpg\"]', 'As a trusted trading company we specialize in offering a range of aromatic vegetables including garlic. Our commitment to quality ensures that you receive flavorful garlic bulbs perfect for enhancing the taste of various dishes and cuisines.', 'As a trusted trading company we specialize in offering a range of aromatic vegetables including garlic. Our commitment to quality ensures that you receive flavorful garlic bulbs perfect for enhancing the taste of various dishes and cuisines.\r\nGlobal Product Classification GPC Code of Garlic 10006003', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/16979992341695203193Garlic starlight (1).jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:46:33', '2023-10-22 21:27:14'),
(62, 'Leeks', '[\"images\\/main\\/products\\/1697999083Leeks starlight (1).jpg\",\"images\\/main\\/products\\/1695203246LEEK Starlight .jpg\",\"images\\/main\\/products\\/1695203246LEEK PLANTS (allium porrum) Starlight .jpg\"]', 'Proudly sourcing and distributing leeks our trading company provides you with the greatest flavor of this vegetable. With our careful selection process this can be used in soups stews and sauts adding a unique depth of flavor to your recipes.', 'Proudly sourcing and distributing leeks our trading company provides you with the greatest flavor of this vegetable. With our careful selection process this can be used in soups stews and sauts adding a unique depth of flavor to your recipes.\r\nGlobal Product Classification GPC Code of Leeks 30001408', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16979990831695203246LEEK Starlight .jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:47:26', '2023-10-22 21:24:43'),
(63, 'Onions', '[\"images\\/main\\/products\\/1697998967Onions starlight.jpg\",\"images\\/main\\/products\\/1695203399ONION Starlight .jpg\",\"images\\/main\\/products\\/1695203399Onions starlight (2).jpg\",\"images\\/main\\/products\\/1695203399Onions starlight (1).jpg\"]', 'At our trading company we understand the essential role of onions in cooking. With our commitment to quality you can expect to receive onions with a pungent yet sweet flavor suitable for a wide range of culinary applications.', 'At our trading company we understand the essential role of onions in cooking. With our commitment to quality you can expect to receive onions with a pungent yet sweet flavor suitable for a wide range of culinary applications.\r\nGlobal Product Classification GPC Code of Onions 30001722', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/16979989671695203399Onions starlight (2).jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:49:59', '2023-10-22 21:22:47'),
(64, 'Shallots', '[\"images\\/main\\/products\\/1697993350Shallots starlight (2) (1).jpg\",\"images\\/main\\/products\\/1695203496SHALLOTS Starlight .jpg\",\"images\\/main\\/products\\/1695203496Shallots starlight.jpg\"]', 'We are trading  distributing shallots that add a subtle yet distinct flavor to culinary creations.', 'We are trading and distributing shallots that add a subtle yet distinct flavor to culinary creations.\r\nGlobal Product Classification GPC Code of Shallots 10006009', '[\"\",\"\",\"\"]', '', '', 'images/social/news/1697993350Shallots starlight.jpg', '', '', '', '', '', 14, NULL, '2023-09-20 12:51:36', '2023-10-22 19:49:10'),
(65, 'Artichokes', '[\"images\\/main\\/products\\/1697990053ARTICHOKES Starlight (2).jpg\",\"images\\/main\\/products\\/1695203603ISRAEL ARTICHOKES Starlight .jpg\",\"images\\/main\\/products\\/1695203603GLOBE ARTICHOKES Starlight .jpg\"]', 'Proudly providing artichokes our trading company supplies the tender heart of this unique vegetable a delicacy in various cuisines with the rich and nutty flavor of artichokes whether steamed roasted or used as a versatile ingredient.', 'Proudly providing artichokes our trading company supplies the tender heart of this unique vegetable a delicacy in various cuisines with the rich and nutty flavor of artichokes whether steamed roasted or used as a versatile ingredient.\r\nGlobal Product Classification GPC Code of Globe Artichokes 10006130', '[\"\",\"\",\"\"]', '', '', 'images/social/news/1697990053ARTICHOKES Starlight.jpg', '', '', '', '', '', 14, '2023-11-04 22:46:00', '2023-09-20 12:53:23', '2023-11-04 22:46:00'),
(66, 'Cabbage', '[\"images\\/main\\/products\\/1697989782Cabbage starlight.jpg\",\"images\\/main\\/products\\/1695203726Cabbage starlight (1).jpg\",\"images\\/main\\/products\\/1695203726CABBAGE Starlight .jpg\",\"images\\/main\\/products\\/1695203736Cabbage starlight (2).jpg\"]', 'At our trading company we understand the culinary versatility of cabbage offering fresh and crisp varieties suitable for coleslaws sauerkrauts and more.', 'At our trading company we understand the culinary versatility of cabbage offering fresh and crisp varieties suitable for coleslaws sauerkrauts and more.\r\nGlobal Product Classification GPC Code of Cabbage 30000477', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/1697989782Cabbage starlight (2).jpg', '', '', '', '', '', 14, '2023-11-04 22:46:00', '2023-09-20 12:55:26', '2023-11-04 22:46:00'),
(67, 'Cauliflower', '[\"images\\/main\\/products\\/1697989690Cauliflower starlight (2).jpg\",\"images\\/main\\/products\\/1695203782CAULIFLOWER Starlight .jpg\",\"images\\/main\\/products\\/1695203782CAULIFLOWERPLANTS(rassica oleracea var. botrytis) Starlight .jpg\"]', 'For cauliflower our trading company ensures that you receive mild and nutty-flavored florets perfect for roasting mashing or turning into gluten-free pizza crusts according to our focus on quality.', 'For cauliflower our trading company ensures that you receive mild and nutty-flavored florets perfect for roasting mashing or turning into gluten-free pizza crusts according to our focus on quality.\r\nGlobal Product Classification GPC Code of Cauliflower 30000554', '[\"\",\"\",\"\"]', '', '', 'images/social/news/1697989690Cauliflower starlight.jpg', '', '', '', '', '', 14, '2023-11-04 22:46:00', '2023-09-20 12:56:22', '2023-11-04 22:46:00'),
(68, 'Pumpkin', '[\"images\\/main\\/products\\/1697987959Pumpkin starlight.jpg\",\"images\\/main\\/products\\/1695203928Pumpkin starlight (1).jpg\",\"images\\/main\\/products\\/1695203928PUMPKIN Starlight .jpg\",\"images\\/main\\/products\\/1695203940Pumpkin starlight (2).jpg\"]', 'As a trusted trading company we specialize in providing a range of fresh produce including pumpkins. Our commitment to quality ensures that you receive pumpkins with their sweet and nutty flavor perfect for hearty soups pies and roasts.', 'As a trusted trading company we specialize in providing a range of fresh produce including pumpkins. Our commitment to quality ensures that you receive pumpkins with their sweet and nutty flavor perfect for hearty soups pies and roasts.\r\nGlobal Product Classification GPC Code of Pumpkin 30001942', '[\"\",\"\",\"\",\"\"]', '', '', 'images/social/news/1697989971Pumpkin starlight.jpg', '', '', '', '', '', 14, '2023-11-04 22:46:00', '2023-09-20 12:58:48', '2023-11-04 22:46:00'),
(69, 'Cucumber', '[\"images\\/main\\/products\\/1697988686Cucumber starlight.jpg\",\"images\\/main\\/products\\/1695203981CUCUMBER Starlight .jpg\",\"images\\/main\\/products\\/1695203981CUCUMBER Starlight  (1).jpg\"]', 'Proudly offering cucumbers our trading company provides it with the crisp and refreshing crunch of this versatile vegetable with our careful selection process.', 'Proudly offering cucumbers our trading company provides it with the crisp and refreshing crunch of this versatile vegetable with our careful selection process.\r\nGlobal Product Classification GPC Code of Cucumber 30003027', '[\"\",\"\",\"\"]', '', '', 'images/social/news/1697989960Cucumber starlight.jpg', '', '', '', '', '', 14, '2023-11-04 22:46:00', '2023-09-20 12:59:41', '2023-11-04 22:46:00'),
(70, 'Zucchini', '[\"images\\/main\\/products\\/1697988558Zucchini starlight.jpg\",\"images\\/main\\/products\\/1695204203Zucchini starlight (2).jpg\",\"images\\/main\\/products\\/1695204203Zucchini starlight (3).jpg\"]', 'At our trading company we understand the culinary potential of zucchini offering fresh and tender varieties suitable for grilling and frying with our focus on quality.', 'At our trading company we understand the culinary potential of zucchini offering fresh and tender varieties suitable for grilling and frying with our focus on quality.\r\nGlobal Product Classification GPC Code of Zucchini or COURGETTE 30000782', '[\"\",\"\",\"\"]', '', '', 'images/social/news/16955548061695204203Zucchini starlight (2).jpg', '', '', '', '', '', 14, '2023-11-04 22:46:00', '2023-09-20 13:03:23', '2023-11-04 22:46:00'),
(71, 'Fodder', '[\"images\\/main\\/products\\/1697988247Fodder starlight.jpg\",\"images\\/main\\/products\\/1697989292Fodder starlight (3).jpg\"]', 'Provides fodder products animal and birds feed supplements', 'provides animal feed products animal and birds feed supplements and food commodities so we are responsible for distributing  trading them in a safe way.', '[\"\",\"\"]', '', '', 'images/social/news/1697989292Fodder starlight (2).jpg', '', '', '', '', '', 9, '2023-11-04 22:46:00', '2023-09-20 15:02:53', '2023-11-04 22:46:00'),
(72, 'Cocoa', '[\"images\\/main\\/products\\/1698044001cocoa starlight (2).jpg\",\"images\\/main\\/products\\/1698044001cocoa starlight (3).jpg\",\"images\\/main\\/products\\/1698044001cocoa starlight (1).jpg\"]', 'cocoa is a soft commodity famously known for producing all types of Chocolatecocoa The top producers of cocoa are West African countries like Cote dIvoire and Ghana also Latin American countries like Brazil and Ecuador the majority of cocoa production worldwide is from West Africa.', 'cocoa is a soft commodity famously known for producing all types of Chocolatecocoa The top producers of cocoa are West African countries like Cote dIvoire and Ghana also Latin American countries like Brazil and Ecuador the majority of cocoa production worldwide is from West Africa.\r\nWe trade import and export cocoa in different countries such as Brazil Ghana Ivory Coast Indonesia Nigeria and Cameroon.\r\nGlobal Product Classification GPC  Code for Cocoa is 30003115\r\nGlobal Product Classification GPC  Code for Types of ChocolatecocoaMalt Attribute 20000228', '[\"\",\"\",\"\"]', '', '', '1698044001cocoa starlight (3).jpg', NULL, '', '', '', NULL, 11, '2023-11-04 22:46:00', '2023-10-23 09:53:21', '2023-11-04 22:46:00'),
(73, 'Sugar Crops Class', '[\"images\\/main\\/products\\/1698044506suger crops class (1).jpg\",\"images\\/main\\/products\\/1698044506suger crops class (3).jpg\",\"images\\/main\\/products\\/1698044506suger crops class (2).jpg\",\"images\\/main\\/products\\/1698044506suger crops class (4).jpg\"]', 'Sugar trading is a unique opportunity that can enhance your trades Like all commodities it is traded as a unique and rarely traded soft commodity.', 'Sugar trading is a unique opportunity that can enhance your trades Like all commodities it is traded as a unique and rarely traded soft commodity. \r\nGlobal Product Classification GPC Code for Sugar 94022000', '[\"\",\"\",\"\",\"\"]', '', '', '1698044506suger crops class (4).jpg', NULL, '', '', '', NULL, 11, '2023-11-04 22:46:00', '2023-10-23 10:01:46', '2023-11-04 22:46:00'),
(74, 'Cocoa', '[\"images\\/main\\/products\\/1699531087cocoa starlight (3).jpg\",\"images\\/main\\/products\\/1699531087cocoa starlight (1).jpg\",\"images\\/main\\/products\\/1699531087cocoa starlight (2).jpg\"]', 'cocoa is a soft commodity famously known for producing all types of Chocolatecocoa The top producers of cocoa are West African countries like Cote dIvoire and Ghana also Latin American countries like Brazil and Ecuador the majority of cocoa production worldwide is from West Africa.', 'cocoa is a soft commodity famously known for producing all types of Chocolatecocoa The top producers of cocoa are West African countries like Cote dIvoire and Ghana also Latin American countries like Brazil and Ecuador the majority of cocoa production worldwide is from West Africa.\r\nWe trade import and export cocoa in different countries such as Brazil Ghana Ivory Coast Indonesia Nigeria and Cameroon.\r\nGlobal Product Classification GPC  Code for Cocoa is 30003115\r\nGlobal Product Classification GPC  Code for Types of ChocolatecocoaMalt Attribute 20000228', '[\"Cocoa Starlight International trading company\",\"Cocoa Starlight International trading company\",\"Cocoa Starlight International trading company\"]', 'Cocoa   Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Cocoa', 'images/social/news/1699531457cocoa Starlight (2).jpg', 'All types of  Cocoa from Starlight International Trading Company L.L.C.', 'Cocoa Starlight International trading company        ', 'cocoa    Starlight ae International Trading Company L.L.C.', 'cocoa', 'Cocoa  as an important food and beverage product  Trade and buy the highest quality of  Cocoa and and what is Cocoa  Global Product Classification GPC Code', 11, NULL, '2023-11-09 14:58:07', '2023-11-09 16:35:52'),
(75, 'Sugar Crops Class', '[\"images\\/main\\/products\\/1699531804suger starlight (4).jpg\",\"images\\/main\\/products\\/1699531804suger starlight (1).jpg\",\"images\\/main\\/products\\/1699531804suger starlight.jpg\"]', 'Sugar trading is a unique opportunity that can enhance your trades Like all commodities it is traded as a unique and rarely traded soft commodity.', 'Sugar trading is a unique opportunity that can enhance your trades Like all commodities it is traded as a unique and rarely traded soft commodity. \r\nGlobal Product Classification GPC Code for Sugar 94022000', '[\"Sugar Crops   Starlight International trading company          \",\"Sugar Crops   Starlight International trading company          \",\"Sugar Crops   Starlight International trading company          \"]', 'Sugar Crops Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Sugar Crops', 'images/social/news/1699533671Sugar Crops   Starlight.jpg', 'All types of  Sugar Crops from Starlight International Trading Company L.L.C.', 'Sugar Crops   Starlight International trading company          ', 'Sugar Crops Starlight ae International Trading Company L.L.C.', 'Sugar Crops', 'Sugar Crops    as an important food and beverage product  Trade and buy the highest quality of  and and what is  Global Product Classification GPC Code', 11, NULL, '2023-11-09 15:10:04', '2023-11-09 15:41:11'),
(76, 'Fodder', '[\"images\\/main\\/products\\/1699532012fodder starlight (3).jpg\",\"images\\/main\\/products\\/1699532012fodder starlight (2).jpg\",\"images\\/main\\/products\\/1699532012fodder starlight (1).jpg\"]', 'provides animal feed products animal and birds feed supplements and food commodities so we are responsible for distributing  trading them in a safe way.', 'provides animal feed products animal and birds feed supplements and food commodities so we are responsible for distributing  trading them in a safe way.', '[\"fodderl Starlight International trading company       \",\"fodderl Starlight International trading company       \",\"fodderl Starlight International trading company       \"]', 'fodder Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Sunflower oil', 'images/social/news/1699533023fodder starlight (1).jpg', 'All types of Sunflower oil from Starlight International Trading Company L.L.C.', 'fodderl Starlight International trading company', 'Fodder  Starlight ae International Trading Company L.L.C', 'Fodder', 'Trade and buy the highest quality of Fodder and know Fodders benefits and what is Fodder Global Product Classification GPC Code', 9, NULL, '2023-11-09 15:13:32', '2023-11-09 15:30:23'),
(77, 'Canola', '[\"images\\/main\\/products\\/1699538386Canola starlight (3).jpg\",\"images\\/main\\/products\\/1699538386Canola starlight (4).jpg\",\"images\\/main\\/products\\/1699538386Canola starlight (1).jpg\"]', 'Canola is a member of a large family of plants called crucifers We work in canola seed trading as\r\nOur experienced team in agricultural  grains trading enables us to create value and growth opportunities for canola seed suppliers and buyers in markets around the world.', 'Canola is a member of a large family of plants called crucifers We work in canola seed trading as\r\nOur experienced team in agricultural  grains trading enables us to create value and growth opportunities for canola seed suppliers and buyers in markets around the world.\r\nGlobal Product Classification GPC Code of Canola is 10007310', '[\"Starlight International trading company Canola         \",\"Starlight International trading company Canola         \",\"Starlight International trading company Canola         \"]', 'Canola canola seeds  Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of Canola', 'images/social/news/1699538421Canola starlight (2).jpg', 'All types of Canola from Starlight International Trading Company L.L.C.', 'Starlight International trading company Canola         ', 'CanolaStarlight International Trading Company L.L.C', 'Canola', 'Trade and buy the highest quality of Canola and get to know Canolas benefits and what is Canola. Canola Global Product Classification GPC Code', 9, NULL, '2023-11-09 16:59:46', '2023-11-09 17:01:58'),
(78, 'Turnips', '[\"images\\/main\\/products\\/1699541061Turnips starlight.jpg\",\"images\\/main\\/products\\/1699541061Turnips starlight (3).jpg\",\"images\\/main\\/products\\/1699541061Turnips starlight (1).jpg\"]', 'Providing turnips from root vegetables Our commitment to quality ensures that you receive turnips with a crisp texture and mild flavor perfect for roasting and stewing.', 'Providing turnips from root vegetables Our commitment to quality ensures that you receive turnips with a crisp texture and mild flavor perfect for roasting and stewing.\r\nGlobal Product Classification GPC Code of Turnips 10006120', '[\"\",\"\",\"\"]', '', '', 'images/social/news/1699541112Turnips starlight (3).jpg', '', '', '', '', '', 14, NULL, '2023-11-09 17:44:21', '2023-11-09 17:45:12'),
(79, 'Yellow Corn', '[\"images\\/main\\/products\\/1700136857Yellow Corn starlight (2).jpg\",\"images\\/main\\/products\\/1700136857Yellow Corn starlight (4).jpg\",\"images\\/main\\/products\\/1700136857Yellow Corn starlight (3).jpg\"]', 'Yellow corn is used in produce Animal Feed Yellow Corn  a general food for people used for poultry and cattle Also corn oil as it is very little fat content oil.', 'Yellow corn is used in produce Animal Feed Yellow Corn  a general food for people used for poultry and cattle Also corn oil as it is very little fat content oil.\r\nStarlight provides different types of corn as Argentine high-quality yellow corn - Brazilian high-quality Corn - Ukrainian yellow corn - American high-quality Corn Those are all valid for producing all corn products.\r\nGlobal Product Classification GPC Code yellow corn is 30000755', '[\"Starlight International trading company trading yellow corn\",\"Starlight International trading company trading yellow corn\",\"Starlight International trading company trading yellow corn\"]', 'yellow corn    Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events trading events international events event updates networking unique experiences business Dubai Exporting  exporting', 'Trade and buy with the finest types of yellow corn', 'images/social/news/1700136886Yellow Corn starlight (2).jpg', 'All types of Yellow corn from Starlight International Trading Company L.L.C.', 'Starlight International trading company trading yellow corn', 'Yellow corn for animal feed -Starlight International Trading Company L.L.C', 'Yellow Corn Maize', 'Trade and buy the highest quality of Corn as Argentine yellow corn Brazilian yellow Corn Ukrainian yellow corn American yellow Corn. yellow corn GPC code', 9, NULL, '2023-11-16 15:14:17', '2023-11-16 15:14:46'),
(80, 'Wheat', '[\"images\\/main\\/products\\/1700436094wheat starlight (5).jpg\",\"images\\/main\\/products\\/1700436094wheat starlight (2).jpg\",\"images\\/main\\/products\\/1700436094wheat starlight (1).jpg\",\"images\\/main\\/products\\/1700436094wheat starlight (6).jpg\"]', 'We focus on trade effectively in 2 flagships soft wheat and durum wheat as we always choose the most mature and quality wheat crops with excellent golden color in the market to meet the highest quality standards.', 'We focus on trade effectively in 2 flagships soft wheat and durum wheat as we always choose the most mature and quality wheat crops with excellent golden color in the market to meet the highest quality standards.\r\nRussian Wheat. \r\nUkrainian Wheat. \r\nUnited States US Wheat.\r\nThe Global Product Classification GPC Code of Wheat is 30002599', '[\"Starlight International trading company wheat         \",\"Starlight International trading company wheat         \",\"Starlight International trading company wheat         \",\"Starlight International trading company wheat         \"]', 'Starlight  international trading commodities business Dubai Exporting  importing Starlight International Trading events networking unique experiences business Dubai Exporting  exporting  Wheat soft wheat durum wheat ', 'Trade and buy with the finest types of Wheat', '1700436094wheat starlight (3).jpg', NULL, 'Starlight International trading company wheat         ', 'Wheat   Starlight International Trading Company L.L.C', 'wheat', NULL, 9, '2023-11-20 02:25:03', '2023-11-20 02:21:34', '2023-11-20 02:25:03'),
(81, 'eqweqweqwqweqwe21312eqw', '[\"images\\/main\\/products\\/1702296252images.jpg\"]', 'sdafsdfw3r23d23d23d', '3d23d23dfwrewerwer23r2332r3', '[\"rwerwer2323r23r234\"]', '3r2fweq3rt345634g534', 'g453hg3564yh465y45', '1702296252images (1).jfif', 'wdfsdfsafsadfsdafsda', 'w3rwerqwerwqertwqerweq', 'fewefsdfsdfsdafwefwqrf', 'gfsghdfhrtyret3werwer', 'fsdagwqegwgewg', 9, NULL, '2023-12-11 13:04:12', '2023-12-11 13:09:38'),
(82, 'z3x4cv56b7n8m', '[\"images\\/main\\/products\\/1702296750images (1).jfif\",\"images\\/main\\/products\\/1702296750images.jfif\"]', '7m890.-0.9m87nb65v4c3x', 'z23x4c5b657n68m9708.m78nb', '[\"cvbnm.0.mnv\",\"weqweqweqw\"]', 'cvbnm..mjnhgfdfg', 'tyuiopiuytre345768', '1702296750images.jfif', 'hjp0-8976trghjkioupo', 'uyopiooiuy46576898p', 'yuiopu-09877uhg', 'yrtuipoiljhgfgdj', 'treyiop897653425tyukljh', 9, NULL, '2023-12-11 13:12:30', '2023-12-11 13:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(2, 'Rahma Elkenany', 'rahma@starlight.com', NULL, '$2y$10$C9WTGqpJQlCki7mcCsWWoOmTISK23LaaqSTyJAxoVr9cBunE54R/y', NULL, 'user', '2023-09-12 15:49:23', '2023-12-13 11:47:31'),
(3, 'Nourhan', 'nourhan@starlight.com', NULL, '$2y$10$SGJ3xVD2vrHJInLJSj29F.IukTFGA4xftpN3.2PI9Put43QkEiA3C', NULL, 'user', '2023-09-20 10:27:23', '2023-12-13 11:47:34'),
(4, 'hossam', 'hossam@starlight.com', NULL, '$2y$10$/e5GNA1idMUgJmsyLREbluMPRnM4X77HCIP9HEP5cLO3ehT/PGrJm', NULL, 'admin', '2023-09-20 10:28:06', '2023-12-13 11:45:42'),
(5, 'Hager', 'hager@starlight.com', NULL, '$2y$10$hb49p7SRYxNQktmhPWpIyO5QD/bkGaKpi4HswT3na4IzTAPAXoRF.', NULL, 'user', '2023-09-20 10:29:06', '2023-09-20 10:29:06'),
(6, 'Asmaa', 'asmaa@starlight.com', NULL, '$2y$10$R7EYJ3nQDR7XM2CpiFRp0eDOouHTI1u1bro/F4/xAw2y/mLntFHhu', NULL, 'user', '2023-09-20 10:32:02', '2023-09-20 10:32:02'),
(7, 'marawan', 'marwanmohamed7887@gmail.com', NULL, '$2y$10$ajyJFRHDS06Ad9Qovcaal.7W8s1gh8OZ.RKqeob/PhEWb/asujgdm', NULL, 'user', '2023-09-20 10:38:25', '2023-12-04 13:39:28'),
(8, 'Ayaa', 'ayaa@starlight.com', NULL, '$2y$10$8D1ORLOUIOlPZFNPQ2QA7.dVSCTknlBOsEDk5F2tI5c39AZkTdbEW', NULL, 'user', '2023-09-20 11:11:40', '2023-09-20 11:11:40'),
(9, 'Mohamed Magdy', 'mohamed.magdy@elkenanygroup.com', NULL, '$2y$10$.aRszxGbG39KsSSFIXumyOd15e/d3hqA.WIJjZ0EesOOCsflB6.66', NULL, 'user', '2023-12-04 13:40:51', '2023-12-04 13:40:51'),
(10, 'ahmed', 'ahmedmahfouz@gmail.com', NULL, '$2y$10$qkYq1QXMJh2AVXKYpM46oewEspPRqlyPpj0zpXMGHbK8ZXKEMwNyu', NULL, 'admin', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `infos`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `meta_data_pages`
--
ALTER TABLE `meta_data_pages`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infos`
--
ALTER TABLE `infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `meta_data_pages`
--
ALTER TABLE `meta_data_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
