-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.3.10-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ecomtez.cart
DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.cart: 1 rows
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `products_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
	(35, 34, 'Lenovo ThinkPad', 'SKU-Lenovo X1', 'Black', '15 inch', 10.00, 2, 'weshare@gmail.com', 'OrHCEFHcACdGNXet3m2jVbzlJS0VybkkeknXXilx', '2018-12-06 04:32:01', '2018-12-06 04:32:01');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table ecomtez.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.categories: 8 rows
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(12, 0, 'Car', 'Car Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:32:33', '2018-11-16 05:00:00');
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(10, 0, 'House', 'House Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:31:29', '2018-11-16 05:05:53');
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(11, 0, 'Shoes', 'Shoes Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:32:14', '2018-11-16 05:07:15');
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(13, 0, 'Computer', 'Computer Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:33:26', '2018-11-16 05:05:43');
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(14, 0, 'Cloths', 'Cloths Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:34:31', '2018-11-16 05:05:18');
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(15, 12, 'Toyota', 'Toyota Sub Category of Car', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:35:08', '2018-11-16 04:54:49');
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(16, 10, 'Link House', 'Link House Sub Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:56:56', '2018-11-16 05:07:05');
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(17, 11, 'Man Shoes', 'Man Shoes Sub Category of Shoes', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:58:13', '2018-11-16 04:53:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table ecomtez.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.countries: 296 rows
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(2, 'AL', 'Albania', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(3, 'DZ', 'Algeria', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(4, 'DS', 'American Samoa', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(5, 'AD', 'Andorra', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(6, 'AO', 'Angola', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(7, 'AI', 'Anguilla', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(8, 'AQ', 'Antarctica', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(9, 'AG', 'Antigua and Barbuda', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(10, 'AR', 'Argentina', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(11, 'AM', 'Armenia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(12, 'AW', 'Aruba', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(13, 'AU', 'Australia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(14, 'AT', 'Austria', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(15, 'AZ', 'Azerbaijan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(16, 'BS', 'Bahamas', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(17, 'BH', 'Bahrain', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(18, 'BD', 'Bangladesh', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(19, 'BB', 'Barbados', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(20, 'BY', 'Belarus', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(21, 'BE', 'Belgium', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(22, 'BZ', 'Belize', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(23, 'BJ', 'Benin', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(24, 'BM', 'Bermuda', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(25, 'BT', 'Bhutan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(26, 'BO', 'Bolivia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(27, 'BA', 'Bosnia and Herzegovina', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(28, 'BW', 'Botswana', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(29, 'BV', 'Bouvet Island', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(30, 'BR', 'Brazil', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(31, 'IO', 'British Indian Ocean Territory', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(32, 'BN', 'Brunei Darussalam', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(33, 'BG', 'Bulgaria', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(34, 'BF', 'Burkina Faso', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(35, 'BI', 'Burundi', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(36, 'KH', 'Cambodia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(37, 'CM', 'Cameroon', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(38, 'CA', 'Canada', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(39, 'CV', 'Cape Verde', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(40, 'KY', 'Cayman Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(41, 'CF', 'Central African Republic', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(42, 'TD', 'Chad', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(43, 'CL', 'Chile', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(44, 'CN', 'China', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(45, 'CX', 'Christmas Island', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(47, 'CO', 'Colombia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(48, 'KM', 'Comoros', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(49, 'CG', 'Congo', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(50, 'CK', 'Cook Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(51, 'CR', 'Costa Rica', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(52, 'AF', 'Afghanistan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(53, 'AL', 'Albania', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(54, 'DZ', 'Algeria', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(55, 'DS', 'American Samoa', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(56, 'AD', 'Andorra', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(57, 'AO', 'Angola', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(58, 'AI', 'Anguilla', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(59, 'AQ', 'Antarctica', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(60, 'AG', 'Antigua and Barbuda', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(61, 'AR', 'Argentina', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(62, 'AM', 'Armenia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(63, 'AW', 'Aruba', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(64, 'AU', 'Australia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(65, 'AT', 'Austria', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(66, 'AZ', 'Azerbaijan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(67, 'BS', 'Bahamas', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(68, 'BH', 'Bahrain', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(69, 'BD', 'Bangladesh', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(70, 'BB', 'Barbados', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(71, 'BY', 'Belarus', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(72, 'BE', 'Belgium', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(73, 'BZ', 'Belize', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(74, 'BJ', 'Benin', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(75, 'BM', 'Bermuda', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(76, 'BT', 'Bhutan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(77, 'BO', 'Bolivia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(78, 'BA', 'Bosnia and Herzegovina', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(79, 'BW', 'Botswana', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(80, 'BV', 'Bouvet Island', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(81, 'BR', 'Brazil', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(82, 'IO', 'British Indian Ocean Territory', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(83, 'BN', 'Brunei Darussalam', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(84, 'BG', 'Bulgaria', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(85, 'BF', 'Burkina Faso', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(86, 'BI', 'Burundi', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(87, 'KH', 'Cambodia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(88, 'CM', 'Cameroon', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(89, 'CA', 'Canada', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(90, 'CV', 'Cape Verde', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(91, 'KY', 'Cayman Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(92, 'CF', 'Central African Republic', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(93, 'TD', 'Chad', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(94, 'CL', 'Chile', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(95, 'CN', 'China', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(96, 'CX', 'Christmas Island', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(97, 'CC', 'Cocos (Keeling) Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(98, 'CO', 'Colombia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(99, 'KM', 'Comoros', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(100, 'CG', 'Congo', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(101, 'CK', 'Cook Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(102, 'CR', 'Costa Rica', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(103, 'HR', 'Croatia (Hrvatska)', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(104, 'CU', 'Cuba', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(105, 'CY', 'Cyprus', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(106, 'CZ', 'Czech Republic', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(107, 'DK', 'Denmark', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(108, 'DJ', 'Djibouti', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(109, 'DM', 'Dominica', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(110, 'DO', 'Dominican Republic', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(111, 'TP', 'East Timor', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(112, 'EC', 'Ecuador', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(113, 'EG', 'Egypt', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(114, 'SV', 'El Salvador', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(115, 'GQ', 'Equatorial Guinea', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(116, 'ER', 'Eritrea', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(117, 'EE', 'Estonia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(118, 'ET', 'Ethiopia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(119, 'FK', 'Falkland Islands (Malvinas)', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(120, 'FO', 'Faroe Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(121, 'FJ', 'Fiji', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(122, 'FI', 'Finland', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(123, 'FR', 'France', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(124, 'FX', 'France, Metropolitan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(125, 'GF', 'French Guiana', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(126, 'PF', 'French Polynesia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(127, 'TF', 'French Southern Territories', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(128, 'GA', 'Gabon', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(129, 'GM', 'Gambia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(130, 'GE', 'Georgia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(131, 'DE', 'Germany', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(132, 'GH', 'Ghana', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(133, 'GI', 'Gibraltar', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(134, 'GK', 'Guernsey', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(135, 'GR', 'Greece', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(136, 'GL', 'Greenland', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(137, 'GD', 'Grenada', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(138, 'GP', 'Guadeloupe', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(139, 'GU', 'Guam', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(140, 'GT', 'Guatemala', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(141, 'GN', 'Guinea', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(142, 'GW', 'Guinea-Bissau', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(143, 'GY', 'Guyana', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(144, 'HT', 'Haiti', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(145, 'HM', 'Heard and Mc Donald Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(146, 'HN', 'Honduras', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(147, 'HK', 'Hong Kong', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(148, 'HU', 'Hungary', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(149, 'IS', 'Iceland', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(150, 'IN', 'India', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(151, 'IM', 'Isle of Man', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(152, 'ID', 'Indonesia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(153, 'IR', 'Iran (Islamic Republic of)', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(154, 'IQ', 'Iraq', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(155, 'IE', 'Ireland', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(156, 'IL', 'Israel', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(157, 'IT', 'Italy', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(158, 'CI', 'Ivory Coast', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(159, 'JE', 'Jersey', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(160, 'JM', 'Jamaica', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(161, 'JP', 'Japan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(162, 'JO', 'Jordan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(163, 'KZ', 'Kazakhstan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(164, 'KE', 'Kenya', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(165, 'KI', 'Kiribati', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(166, 'KP', 'Korea, Democratic People\'s Republic of', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(167, 'KR', 'Korea, Republic of', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(168, 'XK', 'Kosovo', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(169, 'KW', 'Kuwait', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(170, 'KG', 'Kyrgyzstan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(171, 'LA', 'Lao People\'s Democratic Republic', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(172, 'LV', 'Latvia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(173, 'LB', 'Lebanon', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(174, 'LS', 'Lesotho', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(175, 'LR', 'Liberia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(176, 'LY', 'Libyan Arab Jamahiriya', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(177, 'LI', 'Liechtenstein', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(178, 'LT', 'Lithuania', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(179, 'LU', 'Luxembourg', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(180, 'MO', 'Macau', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(181, 'MK', 'Macedonia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(182, 'MG', 'Madagascar', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(183, 'MW', 'Malawi', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(184, 'MY', 'Malaysia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(185, 'MV', 'Maldives', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(186, 'ML', 'Mali', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(187, 'MT', 'Malta', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(188, 'MH', 'Marshall Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(189, 'MQ', 'Martinique', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(190, 'MR', 'Mauritania', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(191, 'MU', 'Mauritius', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(192, 'TY', 'Mayotte', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(193, 'MX', 'Mexico', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(194, 'FM', 'Micronesia, Federated States of', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(195, 'MD', 'Moldova, Republic of', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(196, 'MC', 'Monaco', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(197, 'MN', 'Mongolia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(198, 'ME', 'Montenegro', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(199, 'MS', 'Montserrat', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(200, 'MA', 'Morocco', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(201, 'MZ', 'Mozambique', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(202, 'MM', 'Myanmar', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(203, 'NA', 'Namibia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(204, 'NR', 'Nauru', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(205, 'NP', 'Nepal', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(206, 'NL', 'Netherlands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(207, 'AN', 'Netherlands Antilles', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(208, 'NC', 'New Caledonia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(209, 'NZ', 'New Zealand', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(210, 'NI', 'Nicaragua', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(211, 'NE', 'Niger', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(212, 'NG', 'Nigeria', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(213, 'NU', 'Niue', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(214, 'NF', 'Norfolk Island', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(215, 'MP', 'Northern Mariana Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(216, 'NO', 'Norway', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(217, 'OM', 'Oman', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(218, 'PK', 'Pakistan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(219, 'PW', 'Palau', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(220, 'PS', 'Palestine', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(221, 'PA', 'Panama', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(222, 'PG', 'Papua New Guinea', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(223, 'PY', 'Paraguay', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(224, 'PE', 'Peru', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(225, 'PH', 'Philippines', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(226, 'PN', 'Pitcairn', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(227, 'PL', 'Poland', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(228, 'PT', 'Portugal', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(229, 'PR', 'Puerto Rico', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(230, 'QA', 'Qatar', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(231, 'RE', 'Reunion', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(232, 'RO', 'Romania', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(233, 'RU', 'Russian Federation', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(234, 'RW', 'Rwanda', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(235, 'KN', 'Saint Kitts and Nevis', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(236, 'LC', 'Saint Lucia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(237, 'VC', 'Saint Vincent and the Grenadines', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(238, 'WS', 'Samoa', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(239, 'SM', 'San Marino', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(240, 'ST', 'Sao Tome and Principe', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(241, 'SA', 'Saudi Arabia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(242, 'SN', 'Senegal', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(243, 'RS', 'Serbia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(244, 'SC', 'Seychelles', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(245, 'SL', 'Sierra Leone', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(246, 'SG', 'Singapore', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(247, 'SK', 'Slovakia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(248, 'SI', 'Slovenia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(249, 'SB', 'Solomon Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(250, 'SO', 'Somalia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(251, 'ZA', 'South Africa', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(252, 'GS', 'South Georgia South Sandwich Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(253, 'SS', 'South Sudan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(254, 'ES', 'Spain', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(255, 'LK', 'Sri Lanka', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(256, 'SH', 'St. Helena', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(257, 'PM', 'St. Pierre and Miquelon', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(258, 'SD', 'Sudan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(259, 'SR', 'Suriname', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(260, 'SJ', 'Svalbard and Jan Mayen Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(261, 'SZ', 'Swaziland', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(262, 'SE', 'Sweden', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(263, 'CH', 'Switzerland', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(264, 'SY', 'Syrian Arab Republic', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(265, 'TW', 'Taiwan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(266, 'TJ', 'Tajikistan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(267, 'TZ', 'Tanzania, United Republic of', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(268, 'TH', 'Thailand', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(269, 'TG', 'Togo', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(270, 'TK', 'Tokelau', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(271, 'TO', 'Tonga', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(272, 'TT', 'Trinidad and Tobago', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(273, 'TN', 'Tunisia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(274, 'TR', 'Turkey', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(275, 'TM', 'Turkmenistan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(276, 'TC', 'Turks and Caicos Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(277, 'TV', 'Tuvalu', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(278, 'UG', 'Uganda', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(279, 'UA', 'Ukraine', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(280, 'AE', 'United Arab Emirates', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(281, 'GB', 'United Kingdom', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(282, 'US', 'United States', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(283, 'UM', 'United States minor outlying islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(284, 'UY', 'Uruguay', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(285, 'UZ', 'Uzbekistan', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(286, 'VU', 'Vanuatu', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(287, 'VA', 'Vatican City State', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(288, 'VE', 'Venezuela', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(289, 'VN', 'Vietnam', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(290, 'VG', 'Virgin Islands (British)', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(291, 'VI', 'Virgin Islands (U.S.)', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(292, 'WF', 'Wallis and Futuna Islands', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(293, 'EH', 'Western Sahara', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(294, 'YE', 'Yemen', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(295, 'ZR', 'Zaire', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(296, 'ZM', 'Zambia', NULL, NULL);
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(297, 'ZW', 'Zimbabwe', NULL, NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- Dumping structure for table ecomtez.coupons
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.coupons: 1 rows
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
	(6, 'Coupon001', 10, 'Percentage', '2019-12-06', 1, '2018-12-05 23:19:15', '2018-12-05 23:19:15');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Dumping structure for table ecomtez.delivery_address
DROP TABLE IF EXISTS `delivery_address`;
CREATE TABLE IF NOT EXISTS `delivery_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.delivery_address: 1 rows
/*!40000 ALTER TABLE `delivery_address` DISABLE KEYS */;
INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
	(2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL);
/*!40000 ALTER TABLE `delivery_address` ENABLE KEYS */;

-- Dumping structure for table ecomtez.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.migrations: 12 rows
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(3, '2014_10_12_000000_create_users_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(8, '2018_10_20_040609_create_categories_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(9, '2018_10_24_075802_create_products_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(10, '2018_11_08_024109_create_product_att_table', 5);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(11, '2018_11_20_055123_create_tblgallery_table', 6);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(12, '2018_11_26_070031_create_cart_table', 7);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2018_11_28_072535_create_coupons_table', 8);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(15, '2018_12_01_042342_create_countries_table', 10);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(19, '2018_12_03_043804_add_more_fields_to_users_table', 14);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(17, '2018_12_03_093548_create_delivery_address_table', 12);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(18, '2018_12_05_024718_create_orders_table', 13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ecomtez.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `users_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.orders: 1 rows
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
	(6, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'pincode', 'Cambodia', 'mobile', 0.00, 'Coupon001', '2', 'success', 'Paypal', '18', '2018-12-06 04:45:09', '2018-12-06 04:45:09');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table ecomtez.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.password_resets: 0 rows
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table ecomtez.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) NOT NULL,
  `p_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.products: 9 rows
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(28, 15, 'Lexus Rx 330', '12152', 'White', 'EXCELLENT SAFETY FOR YOUR FAMILY<br>Child Safety Locks, Electronic Stability Control, Brake Assist, 4-Wheel ABS, Tire Pressure Monitoring System, 4-Wheel Disc Brakes Safety equipment includes Child Safety Locks', 15.00, '1544063712-lexus-rx-330.jpg', '2018-12-05 22:35:12', '2018-12-05 22:43:48');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(27, 15, '2019 New Toyota Highlander XLE V6', 'XLE V6 FWD', 'White', 'Sunroof, Heated Leather Seats, NAV, 3rd Row Seat, Alloy Wheels, Quad Seats, Rear Air, Power Liftgate. XLE trim. Warranty 5 yrs/60k Miles - Drivetrain Warranty; AND MORE!', 20.00, '1544063425-2019-new-toyota-highlander-xle-v6.jpg', '2018-12-05 22:30:25', '2018-12-05 22:43:57');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(29, 12, '2018 Toyota Prius', '1252', 'Red', 'VEHICLE FEATURES<br>Rear Spoiler, MP3 Player, Remote Trunk Release, Keyless Entry, Privacy Glass.&nbsp;', 5.00, '1544063924-2018-toyota-prius.jpg', '2018-12-05 22:38:44', '2018-12-05 22:43:38');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(30, 16, 'Link House New LC2', 'L_1252', 'Gray', 'Borey Peng Huoth Cambodia', 10.00, '1544064142-link-house-new-lc2.jpg', '2018-12-05 22:42:22', '2018-12-05 22:42:22');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(31, 10, 'House', '5214', 'White and Brown', 'House For Sale', 10.00, '1544064430-house.jpg', '2018-12-05 22:47:10', '2018-12-05 22:47:10');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(32, 11, 'Vionic Shoes Brand', '5265', 'All Colors', 'Women Shoes', 12.00, '1544064607-vionic-shoes-brand.jpg', '2018-12-05 22:50:07', '2018-12-05 22:50:07');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(33, 17, 'Cole Haan', 'KHR 775659.29', 'Brown', 'Men\'s Original Grand Wingtip Oxfords', 5.00, '1544064903-cole-haan.jpg', '2018-12-05 22:55:03', '2018-12-05 22:55:03');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(34, 13, 'Lenovo ThinkPad', '1252', 'Black', 'Lenovo Thinkpad From China', 2.00, '1544065331-lenovo-thinkpad.jpg', '2018-12-05 23:02:12', '2018-12-05 23:02:12');
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(35, 14, 'Cloths', 'The Man', 'Black', 'Cloths Description here', 2.00, '1544065493-cloths.png', '2018-12-05 23:04:54', '2018-12-05 23:04:54');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table ecomtez.product_att
DROP TABLE IF EXISTS `product_att`;
CREATE TABLE IF NOT EXISTS `product_att` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.product_att: 24 rows
/*!40000 ALTER TABLE `product_att` DISABLE KEYS */;
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(14, 34, 'SKU-Lenovo X1', '15 inch', 10.00, 2, '2018-12-05 23:08:43', '2018-12-05 23:08:43');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(13, 35, 'SKU-Red', 'S', 2.00, 5, '2018-12-05 23:08:08', '2018-12-05 23:08:08');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(12, 35, 'SKU-White', 'L', 6.00, 2, '2018-12-05 23:07:42', '2018-12-05 23:07:42');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(11, 35, 'SKU-Black', 'M', 5.00, 10, '2018-12-05 23:07:11', '2018-12-05 23:07:11');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(15, 34, 'SKU-Carbon', '14 inch', 4.00, 5, '2018-12-05 23:09:05', '2018-12-05 23:09:05');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(16, 33, 'SKU-Haan1', '25', 12.00, 3, '2018-12-05 23:09:45', '2018-12-05 23:09:45');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(17, 33, 'SKU-Haan2', '22', 10.00, 1, '2018-12-05 23:09:58', '2018-12-05 23:09:58');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(18, 33, 'SKU-Haan3', '19', 2.00, 3, '2018-12-05 23:10:16', '2018-12-05 23:10:16');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(19, 32, 'SKU-Vionic1', '20', 10.00, 5, '2018-12-05 23:11:02', '2018-12-05 23:11:02');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(20, 32, 'SKU-Vionic2', '20', 15.00, 4, '2018-12-05 23:11:24', '2018-12-05 23:11:24');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(21, 32, 'SKU-Vionic3', '30', 20.00, 1, '2018-12-05 23:11:38', '2018-12-05 23:11:38');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(22, 31, 'SKU-House1', '5*20', 25.00, 4, '2018-12-05 23:12:13', '2018-12-05 23:12:13');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(23, 31, 'SKU-House2', '10*10', 20.00, 2, '2018-12-05 23:12:30', '2018-12-05 23:12:30');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(24, 31, 'SKU-House3', '20*20', 20.00, 5, '2018-12-05 23:12:46', '2018-12-05 23:12:46');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(25, 30, 'SKU-Link House1', 'Small', 10.00, 5, '2018-12-05 23:13:06', '2018-12-05 23:13:06');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(26, 30, 'SKU-House2', 'Medium', 15.00, 23, '2018-12-05 23:13:23', '2018-12-05 23:13:23');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(27, 30, 'SKU-House3', 'Large', 5.00, 2, '2018-12-05 23:14:55', '2018-12-05 23:14:55');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(28, 29, 'SKU-Prius1', 'One Size', 12.00, 2, '2018-12-05 23:15:43', '2018-12-05 23:15:43');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(29, 28, 'SKU-Lexus Red', 'Size Red', 12.00, 12, '2018-12-05 23:16:28', '2018-12-05 23:16:28');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(30, 28, 'SKU-Lexus2', 'Size Black', 11.00, 22, '2018-12-05 23:16:48', '2018-12-05 23:16:48');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(31, 28, 'SKU-Lexus3', 'Size White', 12.00, 2, '2018-12-05 23:17:02', '2018-12-05 23:17:02');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(32, 27, 'SKU-Hilander', 'Size Black', 50.00, 10, '2018-12-05 23:17:35', '2018-12-05 23:17:35');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(33, 27, 'SKU-Hilander1', 'Size White', 20.00, 10, '2018-12-05 23:17:46', '2018-12-05 23:17:46');
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(34, 27, 'SKU-Hilande3', 'Size Red', 20.00, 10, '2018-12-05 23:18:01', '2018-12-05 23:18:01');
/*!40000 ALTER TABLE `product_att` ENABLE KEYS */;

-- Dumping structure for table ecomtez.tblgallery
DROP TABLE IF EXISTS `tblgallery`;
CREATE TABLE IF NOT EXISTS `tblgallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.tblgallery: 27 rows
/*!40000 ALTER TABLE `tblgallery` DISABLE KEYS */;
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(8, 27, '7664271544063472.jpg', '2018-12-05 22:31:12', '2018-12-05 22:31:12');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(9, 27, '6768551544063472.jpg', '2018-12-05 22:31:13', '2018-12-05 22:31:13');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(10, 27, '4131281544063473.jpg', '2018-12-05 22:31:13', '2018-12-05 22:31:13');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(11, 28, '6720891544063734.jpg', '2018-12-05 22:35:34', '2018-12-05 22:35:34');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(12, 28, '4686631544063734.jpg', '2018-12-05 22:35:34', '2018-12-05 22:35:34');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(13, 28, '5960611544063759.jpeg', '2018-12-05 22:35:59', '2018-12-05 22:35:59');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(14, 29, '5146071544063935.JPG', '2018-12-05 22:38:55', '2018-12-05 22:38:55');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(15, 29, '762811544063935.jpg', '2018-12-05 22:38:55', '2018-12-05 22:38:55');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(16, 29, '3716041544063935.jpg', '2018-12-05 22:38:56', '2018-12-05 22:38:56');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(17, 30, '6832831544064156.jpg', '2018-12-05 22:42:37', '2018-12-05 22:42:37');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(18, 30, '1655391544064157.jpg', '2018-12-05 22:42:37', '2018-12-05 22:42:37');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(19, 30, '4693601544064157.jpg', '2018-12-05 22:42:37', '2018-12-05 22:42:37');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(20, 31, '9233341544064441.jpg', '2018-12-05 22:47:21', '2018-12-05 22:47:21');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(21, 31, '8167501544064441.jpg', '2018-12-05 22:47:22', '2018-12-05 22:47:22');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(22, 31, '3887071544064442.jpg', '2018-12-05 22:47:22', '2018-12-05 22:47:22');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(23, 32, '3998691544064618.jpg', '2018-12-05 22:50:18', '2018-12-05 22:50:18');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(24, 32, '1159141544064618.jpg', '2018-12-05 22:50:18', '2018-12-05 22:50:18');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(25, 32, '2035101544064618.jpg', '2018-12-05 22:50:18', '2018-12-05 22:50:18');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(26, 33, '2128501544064917.jpg', '2018-12-05 22:55:17', '2018-12-05 22:55:17');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(27, 33, '5649911544064917.jpg', '2018-12-05 22:55:17', '2018-12-05 22:55:17');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(28, 33, '3704141544064917.jpg', '2018-12-05 22:55:17', '2018-12-05 22:55:17');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(29, 34, '3899431544065346.JPG', '2018-12-05 23:02:26', '2018-12-05 23:02:26');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(30, 34, '119131544065346.jpg', '2018-12-05 23:02:27', '2018-12-05 23:02:27');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(31, 34, '6905491544065347.jpg', '2018-12-05 23:02:27', '2018-12-05 23:02:27');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(32, 35, '981591544065510.jpeg', '2018-12-05 23:05:10', '2018-12-05 23:05:10');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(33, 35, '5320811544065510.jpg', '2018-12-05 23:05:11', '2018-12-05 23:05:11');
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(34, 35, '1153181544065511.jpg', '2018-12-05 23:05:11', '2018-12-05 23:05:11');
/*!40000 ALTER TABLE `tblgallery` ENABLE KEYS */;

-- Dumping structure for table ecomtez.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecomtez.users: 2 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
	(1, 'HENG MENGHEANG', 'demo@gmail.com', NULL, '$2a$10$aEE3WfpfTp8ntvnaHN23c.8mJ9iL5eeqKVf/EmhAhPAdoZ6x9SBKi', 1, 'pNMYAZOydnJKLN00xH6S2gLGhVj4fUPYteawDKAax7mvcZikvfiGoJhT5PUC', '2018-10-15 05:32:54', '2018-12-05 04:39:52', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
	(4, 'weshare', 'weshare@gmail.com', NULL, '$2a$10$aEE3WfpfTp8ntvnaHN23c.8mJ9iL5eeqKVf/EmhAhPAdoZ6x9SBKi', NULL, 'EgOSF78JKXNMNL9R4P8wo9w8kLoejSrAElM2mc499GISl6Hwh5Zr247Jl0OD', '2018-12-06 04:40:27', '2018-12-06 04:40:27', NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
