-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.34 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for shoppingcart
DROP DATABASE IF EXISTS `shoppingcart`;
CREATE DATABASE IF NOT EXISTS `shoppingcart` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shoppingcart`;

-- Dumping structure for table shoppingcart.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoppingcart.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table shoppingcart.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoppingcart.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table shoppingcart.orderdetail
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE IF NOT EXISTS `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` decimal(18,3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `productid` (`productid`),
  KEY `orderid` (`orderid`),
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`orderid`) REFERENCES `scorder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingcart.orderdetail: ~18 rows (approximately)
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` (`id`, `productid`, `orderid`, `quantity`, `subtotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 1, 2, 2, NULL, NULL, NULL, NULL),
	(2, 1, 2, 2, NULL, NULL, NULL, NULL),
	(3, 3, 4, 1, NULL, '2020-05-01 13:39:26', '2020-05-01 13:39:26', NULL),
	(4, 2, 4, 1, NULL, '2020-05-01 13:39:26', '2020-05-01 13:39:26', NULL),
	(5, 5, 5, 4, NULL, '2020-05-01 14:44:53', '2020-05-01 14:44:53', NULL),
	(6, 3, 6, 3, NULL, '2020-05-03 11:44:44', '2020-05-03 11:44:44', NULL),
	(7, 2, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(8, 3, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(9, 6, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(10, 5, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(11, 9, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(12, 8, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(13, 7, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(14, 4, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(15, 1, 7, 1, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(16, 3, 8, 1, NULL, '2020-05-03 11:49:41', '2020-05-03 11:49:41', NULL),
	(17, 2, 8, 1, NULL, '2020-05-03 11:49:41', '2020-05-03 11:49:41', NULL),
	(18, 3, 9, 1, NULL, '2020-05-03 11:54:00', '2020-05-03 11:54:00', NULL),
	(19, 3, 10, 1, NULL, '2020-05-05 13:30:36', '2020-05-05 13:30:36', NULL),
	(20, 2, 10, 1, NULL, '2020-05-05 13:30:36', '2020-05-05 13:30:36', NULL),
	(21, 5, 10, 1, NULL, '2020-05-05 13:30:36', '2020-05-05 13:30:36', NULL),
	(22, 1, 11, 4, NULL, '2020-05-06 13:11:44', '2020-05-06 13:11:44', NULL),
	(23, 2, 11, 1, NULL, '2020-05-06 13:11:44', '2020-05-06 13:11:44', NULL),
	(24, 3, 11, 2, NULL, '2020-05-06 13:11:44', '2020-05-06 13:11:44', NULL);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;

-- Dumping structure for table shoppingcart.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoppingcart.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table shoppingcart.product
DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `colour` varchar(30) DEFAULT NULL,
  `price` decimal(18,3) DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingcart.product: ~9 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `description`, `colour`, `price`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Canon G7x', 'Mirrorless', 'Back', 700.000, 'camera.jpg', NULL, NULL, NULL),
	(2, 'Canon M50', 'Mirrorless', 'Black', 650.000, 'canonEos.jpg', NULL, NULL, NULL),
	(3, 'Canon 5D', 'DSLR', 'Back/Silver', 1700.000, 'canonMarkD.jpg', NULL, NULL, NULL),
	(4, 'Sony APS-C', 'Mirrorless', 'Black', 1200.000, 'sonyApsc.jpg', NULL, NULL, NULL),
	(5, 'Lumix', 'Mirrorless', 'Back', 900.000, 'panasonicLumix.jpg', NULL, NULL, NULL),
	(6, 'Nikon Z', 'Mirrorless', 'Black', 1500.000, 'NikonZ.jpg', NULL, NULL, NULL),
	(7, 'Olympus', 'Mirrorless', 'Silver', 800.000, 'olympus.jpg', NULL, NULL, NULL),
	(8, 'Panasonic ', 'DSLR', 'Black', 600.000, 'panasonicCyber.jpg', NULL, NULL, NULL),
	(9, 'Sony Alpha', 'Mirrorless', 'Black', 1500.000, 'sonyFullFrame.jpg', NULL, NULL, NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table shoppingcart.scorder
DROP TABLE IF EXISTS `scorder`;
CREATE TABLE IF NOT EXISTS `scorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderdate` datetime DEFAULT NULL,
  `deliverystreet` varchar(30) DEFAULT NULL,
  `deliverycity` varchar(30) DEFAULT NULL,
  `deliverycounty` varchar(30) DEFAULT NULL,
  `ordertotal` decimal(18,3) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table shoppingcart.scorder: ~9 rows (approximately)
/*!40000 ALTER TABLE `scorder` DISABLE KEYS */;
INSERT INTO `scorder` (`id`, `orderdate`, `deliverystreet`, `deliverycity`, `deliverycounty`, `ordertotal`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '2018-01-05 10:05:00', '1 Main Street', 'Blanchardstown', 'Dublin', NULL, NULL, NULL, NULL),
	(2, '2018-01-07 17:15:00', '25 High Street', 'Lucan', 'Dublin', NULL, NULL, NULL, NULL),
	(3, '2018-01-05 10:05:00', '19 New Road', 'Finglas', 'Dublin', NULL, NULL, NULL, NULL),
	(4, '2020-05-01 13:39:26', NULL, NULL, NULL, NULL, '2020-05-01 13:39:26', '2020-05-01 13:39:26', NULL),
	(5, '2020-05-01 14:44:53', NULL, NULL, NULL, NULL, '2020-05-01 14:44:53', '2020-05-01 14:44:53', NULL),
	(6, '2020-05-03 11:44:44', NULL, NULL, NULL, NULL, '2020-05-03 11:44:44', '2020-05-03 11:44:44', NULL),
	(7, '2020-05-03 11:46:36', NULL, NULL, NULL, NULL, '2020-05-03 11:46:36', '2020-05-03 11:46:36', NULL),
	(8, '2020-05-03 11:49:41', NULL, NULL, NULL, NULL, '2020-05-03 11:49:41', '2020-05-03 11:49:41', NULL),
	(9, '2020-05-03 11:54:00', NULL, NULL, NULL, NULL, '2020-05-03 11:54:00', '2020-05-03 11:54:00', NULL),
	(10, '2020-05-05 13:30:36', NULL, NULL, NULL, NULL, '2020-05-05 13:30:36', '2020-05-05 13:30:36', NULL),
	(11, '2020-05-06 13:11:44', NULL, NULL, NULL, NULL, '2020-05-06 13:11:44', '2020-05-06 13:11:44', NULL);
/*!40000 ALTER TABLE `scorder` ENABLE KEYS */;

-- Dumping structure for table shoppingcart.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table shoppingcart.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Abdul', 'abdulalsafadi@gmail.com', NULL, '$2y$10$AmhIJTe2y.pi3FeX9VTYEexXCQMeHFhA0P1VGWTQ078OTkkaNyjo.', NULL, '2020-05-01 14:28:40', '2020-05-01 14:28:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
