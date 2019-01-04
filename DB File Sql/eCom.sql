-- --------------------------------------------------------
-- Sunucu:                       localhost
-- Sunucu sürümü:                5.7.24 - MySQL Community Server (GPL)
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- ecom için veritabanı yapısı dökülüyor
DROP DATABASE IF EXISTS `ecom`;
CREATE DATABASE IF NOT EXISTS `ecom` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ecom`;

-- tablo yapısı dökülüyor ecom.cart
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.cart: 0 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.categories: 8 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(12, 0, 'Car', 'Car Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:32:33', '2018-11-16 05:00:00'),
	(10, 0, 'House', 'House Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:31:29', '2018-11-16 05:05:53'),
	(11, 0, 'Shoes', 'Shoes Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:32:14', '2018-11-16 05:07:15'),
	(13, 0, 'Computer', 'Computer Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:33:26', '2018-11-16 05:05:43'),
	(14, 0, 'Cloths', 'Cloths Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:34:31', '2018-11-16 05:05:18'),
	(15, 12, 'Toyota', 'Toyota Sub Category of Car', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:35:08', '2018-11-16 04:54:49'),
	(16, 10, 'Link House', 'Link House Sub Category', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:56:56', '2018-11-16 05:07:05'),
	(17, 11, 'Man Shoes', 'Man Shoes Sub Category of Shoes', 'http://wornnarith.cambosoft.com', 1, NULL, '2018-10-23 00:58:13', '2018-11-16 04:53:44');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.comments
DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `products_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.comments: ~0 rows (yaklaşık) tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.countries
DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=298 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.countries: 253 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` (`id`, `country_code`, `country_name`, `created_at`, `updated_at`) VALUES
	(2, 'AL', 'Arnavutluk', NULL, NULL),
	(3, 'DZ', 'Cezayir', NULL, NULL),
	(4, 'DS', 'Amerikan Samoası\r\n', NULL, NULL),
	(5, 'AD', 'Andorra', NULL, NULL),
	(6, 'AO', 'Angora', NULL, NULL),
	(7, 'AI', 'Anguilla', NULL, NULL),
	(8, 'AQ', 'Antarktika\r\n', NULL, NULL),
	(9, 'AG', 'Antigua ve Barbuda\r\n', NULL, NULL),
	(10, 'AR', 'Arjantin\r\n', NULL, NULL),
	(11, 'AM', 'Ermenistan', NULL, NULL),
	(12, 'AW', 'Aruba', NULL, NULL),
	(13, 'AU', 'Avustralya', NULL, NULL),
	(14, 'AT', 'Avusturya\r\n', NULL, NULL),
	(15, 'AZ', 'Azerbeycan', NULL, NULL),
	(16, 'BS', 'Bahamalar', NULL, NULL),
	(17, 'BH', 'Bahreyn', NULL, NULL),
	(18, 'BD', 'Bangladeş', NULL, NULL),
	(19, 'BB', 'Barbados', NULL, NULL),
	(20, 'BY', 'Belarus', NULL, NULL),
	(21, 'BE', 'Belçika', NULL, NULL),
	(22, 'BZ', 'Belize', NULL, NULL),
	(23, 'BJ', 'Benin', NULL, NULL),
	(24, 'BM', 'Bermuda', NULL, NULL),
	(25, 'BT', 'Butan', NULL, NULL),
	(26, 'BO', 'Bolivya', NULL, NULL),
	(27, 'BA', 'Bosna Hersek\r\n', NULL, NULL),
	(28, 'BW', 'Botsvana', NULL, NULL),
	(29, 'BV', 'Bouvet Adası\r\n', NULL, NULL),
	(30, 'BR', 'Brezilya\r\n', NULL, NULL),
	(31, 'IO', 'İngiliz Hint Okyanusu Bölgesi\r\n', NULL, NULL),
	(32, 'BN', 'Brunei Sultanlığı\r\n', NULL, NULL),
	(33, 'BG', 'Bulgaristan', NULL, NULL),
	(34, 'BF', 'Burkina Faso', NULL, NULL),
	(35, 'BI', 'Burundi', NULL, NULL),
	(36, 'KH', 'Kamboçya\r\n', NULL, NULL),
	(37, 'CM', 'Kamerun', NULL, NULL),
	(38, 'CA', 'Kanada', NULL, NULL),
	(39, 'CV', 'Cape Verde\r\n', NULL, NULL),
	(40, 'KY', 'Cayman Adaları\r\n', NULL, NULL),
	(41, 'CF', 'Orta Afrika Cumhuriyeti\r\n', NULL, NULL),
	(42, 'TD', 'Çad', NULL, NULL),
	(43, 'CL', 'Şili', NULL, NULL),
	(44, 'CN', 'Çin', NULL, NULL),
	(45, 'CX', 'Noel Adası\r\n', NULL, NULL),
	(46, 'CC', 'Cocos Adaları', NULL, NULL),
	(47, 'CO', 'Kolombiya', NULL, NULL),
	(48, 'KM', 'Komorlar', NULL, NULL),
	(49, 'CG', 'Kongo', NULL, NULL),
	(50, 'CK', 'Cook Adaları\r\n', NULL, NULL),
	(51, 'CR', 'Kosta Rika\r\n', NULL, NULL),
	(52, 'AF', 'Afganistan', NULL, NULL),
	(96, 'CX', 'Noel Adası', NULL, NULL),
	(97, 'CC', 'Cocos Adaları', NULL, NULL),
	(98, 'CO', 'Kolombiya', NULL, NULL),
	(99, 'KM', 'Komorlar', NULL, NULL),
	(100, 'CG', 'Kongo', NULL, NULL),
	(101, 'CK', 'Cook Adaları', NULL, NULL),
	(102, 'CR', 'Costa Rica', NULL, NULL),
	(103, 'HR', 'Hırvatistan', NULL, NULL),
	(104, 'CU', 'Küba', NULL, NULL),
	(105, 'CY', 'Kıbrıs', NULL, NULL),
	(106, 'CZ', 'Çek Cumhuriyeti', NULL, NULL),
	(107, 'DK', 'Danimarka', NULL, NULL),
	(108, 'DJ', 'Cibuti', NULL, NULL),
	(109, 'DM', 'Dominika', NULL, NULL),
	(110, 'DO', 'Dominik Cumhuriyeti', NULL, NULL),
	(111, 'TP', 'Doğu Timor', NULL, NULL),
	(112, 'EC', 'Ekvador', NULL, NULL),
	(113, 'EG', 'Mısır', NULL, NULL),
	(114, 'SV', 'El Salvador', NULL, NULL),
	(115, 'GQ', 'Ekvator Ginesi', NULL, NULL),
	(116, 'ER', 'Eritre', NULL, NULL),
	(117, 'EE', 'Estonya', NULL, NULL),
	(118, 'ET', 'Etiyopya', NULL, NULL),
	(119, 'FK', 'Falkland Adaları', NULL, NULL),
	(120, 'FO', 'Faroe Adaları', NULL, NULL),
	(121, 'FJ', 'Fiji', NULL, NULL),
	(122, 'FI', 'Finlandiya', NULL, NULL),
	(123, 'FR', 'Fransa', NULL, NULL),
	(124, 'FX', 'Fransa, Büyükşehir', NULL, NULL),
	(125, 'GF', 'Fransız Guyanası', NULL, NULL),
	(126, 'PF', 'Fransız Polinezyası', NULL, NULL),
	(127, 'TF', 'Fransız Güney Toprakları', NULL, NULL),
	(128, 'GA', 'Gabon', NULL, NULL),
	(129, 'GM', 'Gambiya', NULL, NULL),
	(130, 'GE', 'Gürcistan', NULL, NULL),
	(131, 'DE', 'Almanya', NULL, NULL),
	(132, 'GH', 'Gana', NULL, NULL),
	(133, 'GI', 'Cebelitarık', NULL, NULL),
	(134, 'GK', 'Guernsey', NULL, NULL),
	(135, 'GR', 'Yunanistan', NULL, NULL),
	(136, 'GL', 'Grönland', NULL, NULL),
	(137, 'GD', 'Grenada', NULL, NULL),
	(138, 'GP', 'Guadeloupe', NULL, NULL),
	(139, 'GU', 'Guam', NULL, NULL),
	(140, 'GT', 'Guatemala', NULL, NULL),
	(141, 'GN', 'Gine', NULL, NULL),
	(142, 'GW', 'Guinea-Bissau', NULL, NULL),
	(143, 'GY', 'Guyana', NULL, NULL),
	(144, 'HT', 'Haiti', NULL, NULL),
	(145, 'HM', 'Heard ve Mcdonald Adaları', NULL, NULL),
	(146, 'HN', 'Honduras', NULL, NULL),
	(147, 'HK', 'Hong Kong', NULL, NULL),
	(148, 'HU', 'Macaristan', NULL, NULL),
	(149, 'IS', 'İzlanda', NULL, NULL),
	(150, 'IN', 'India', NULL, NULL),
	(151, 'IM', 'Hindistan', NULL, NULL),
	(152, 'ID', 'Endonezya', NULL, NULL),
	(153, 'IR', 'İran', NULL, NULL),
	(154, 'IQ', 'Irak', NULL, NULL),
	(155, 'IE', 'İrlanda', NULL, NULL),
	(156, 'IL', 'İsrail', NULL, NULL),
	(157, 'IT', 'İtalya', NULL, NULL),
	(158, 'CI', 'Fildişi Sahili', NULL, NULL),
	(159, 'JE', 'Jersey', NULL, NULL),
	(160, 'JM', 'Jamaika', NULL, NULL),
	(161, 'JP', 'Japonya', NULL, NULL),
	(162, 'JO', 'Ürdün', NULL, NULL),
	(163, 'KZ', 'Kazakistan', NULL, NULL),
	(164, 'KE', 'Kenya', NULL, NULL),
	(165, 'KI', 'Kiribati', NULL, NULL),
	(166, 'KP', 'Kore Demokratik Halk Cumhuriyeti', NULL, NULL),
	(167, 'KR', 'Kore Cumhuriyeti', NULL, NULL),
	(168, 'XK', 'Kosova', NULL, NULL),
	(169, 'KW', 'Kuveyt', NULL, NULL),
	(170, 'KG', 'Kırgızistan', NULL, NULL),
	(171, 'LA', 'Lao Demokratik Halk Cumhuriyeti', NULL, NULL),
	(172, 'LV', 'Letonya', NULL, NULL),
	(173, 'LB', 'Lübnan', NULL, NULL),
	(174, 'LS', 'Lesotho', NULL, NULL),
	(175, 'LR', 'Liberya', NULL, NULL),
	(176, 'LY', 'Libya Arap Jamahiriya', NULL, NULL),
	(177, 'LI', 'Lihtenştayn', NULL, NULL),
	(178, 'LT', 'Litvanya', NULL, NULL),
	(179, 'LU', 'Lüksemburg', NULL, NULL),
	(180, 'MO', 'Makao', NULL, NULL),
	(181, 'MK', 'Makedonya', NULL, NULL),
	(182, 'MG', 'Madagaskar', NULL, NULL),
	(183, 'MW', 'Malawi', NULL, NULL),
	(184, 'MY', 'Malezya', NULL, NULL),
	(185, 'MV', 'Maldivler', NULL, NULL),
	(186, 'ML', 'Mali', NULL, NULL),
	(187, 'MT', 'Malta', NULL, NULL),
	(188, 'MH', 'Marşal Adaları', NULL, NULL),
	(189, 'MQ', 'Martinik', NULL, NULL),
	(190, 'MR', 'Moritanya', NULL, NULL),
	(191, 'MU', 'Mauritius', NULL, NULL),
	(192, 'TY', 'Mayotte', NULL, NULL),
	(193, 'MX', 'Meksika', NULL, NULL),
	(194, 'FM', 'Mikronezya Federal Devletleri', NULL, NULL),
	(195, 'MD', 'Moldova Cumhuriyeti', NULL, NULL),
	(196, 'MC', 'Monako', NULL, NULL),
	(197, 'MN', 'Moğolistan', NULL, NULL),
	(198, 'ME', 'Karadağ', NULL, NULL),
	(199, 'MS', 'Montserrat', NULL, NULL),
	(200, 'MA', 'Fas', NULL, NULL),
	(201, 'MZ', 'Mozambik', NULL, NULL),
	(202, 'MM', 'Myanmar', NULL, NULL),
	(203, 'NA', 'Namibya', NULL, NULL),
	(204, 'NR', 'Nauru', NULL, NULL),
	(205, 'NP', 'Nepal', NULL, NULL),
	(206, 'NL', 'Hollanda', NULL, NULL),
	(207, 'AN', 'Hollanda Antilleri', NULL, NULL),
	(208, 'NC', 'Yeni Kaledonya', NULL, NULL),
	(209, 'NZ', 'Yeni Zelanda', NULL, NULL),
	(210, 'NI', 'Nikaragua', NULL, NULL),
	(211, 'NE', 'Nijer', NULL, NULL),
	(212, 'NG', 'Nijerya', NULL, NULL),
	(213, 'NU', 'Niue', NULL, NULL),
	(214, 'NF', 'Norfolk Adası', NULL, NULL),
	(215, 'MP', 'Kuzey Mariana Adaları', NULL, NULL),
	(216, 'NO', 'Norveç', NULL, NULL),
	(217, 'OM', 'Umman', NULL, NULL),
	(218, 'PK', 'Pakistan', NULL, NULL),
	(219, 'PW', 'Palau', NULL, NULL),
	(220, 'PS', 'Filistin', NULL, NULL),
	(221, 'PA', 'Panama', NULL, NULL),
	(222, 'PG', 'Papua Yeni Gine', NULL, NULL),
	(223, 'PY', 'Paraguay', NULL, NULL),
	(224, 'PE', 'Peru', NULL, NULL),
	(225, 'PH', 'Filipinler', NULL, NULL),
	(226, 'PN', 'Pitcairn', NULL, NULL),
	(227, 'PL', 'Polonya', NULL, NULL),
	(228, 'PT', 'Portekiz', NULL, NULL),
	(229, 'PR', 'Porto Riko', NULL, NULL),
	(230, 'QA', 'Katar', NULL, NULL),
	(231, 'RE', 'Reunion', NULL, NULL),
	(232, 'RO', 'Romanya', NULL, NULL),
	(233, 'RU', 'Rusya Federasyonu', NULL, NULL),
	(234, 'RW', 'Ruanda', NULL, NULL),
	(235, 'KN', 'Saint Kitts ve Nevis', NULL, NULL),
	(236, 'LC', 'Saint Lucia', NULL, NULL),
	(237, 'VC', 'Saint Vincent ve Grenadinler', NULL, NULL),
	(238, 'WS', 'Samoa', NULL, NULL),
	(239, 'SM', 'San Marino', NULL, NULL),
	(240, 'ST', 'San Marino Sao Tome ve Principe', NULL, NULL),
	(241, 'SA', 'Suudi Arabistan', NULL, NULL),
	(242, 'SN', 'Senegal', NULL, NULL),
	(243, 'RS', 'Sırbistan', NULL, NULL),
	(244, 'SC', 'Seyşeller', NULL, NULL),
	(245, 'SL', 'Sierra Leone', NULL, NULL),
	(246, 'SG', 'Singapur', NULL, NULL),
	(247, 'SK', 'Slovakya', NULL, NULL),
	(248, 'SI', 'Slovenya', NULL, NULL),
	(249, 'SB', 'Solomon Adaları', NULL, NULL),
	(250, 'SO', 'Somali', NULL, NULL),
	(251, 'ZA', 'Güney Afrika', NULL, NULL),
	(252, 'GS', 'Güney Georgia Güney Sandwich Adaları', NULL, NULL),
	(253, 'SS', 'Güney Sudan', NULL, NULL),
	(254, 'ES', 'İspanya', NULL, NULL),
	(255, 'LK', 'Sri Lanka', NULL, NULL),
	(256, 'SH', 'Aziz Helena', NULL, NULL),
	(257, 'PM', 'Pierre ve Miquelon', NULL, NULL),
	(258, 'SD', 'Sudan', NULL, NULL),
	(259, 'SR', 'Surinam', NULL, NULL),
	(260, 'SJ', 'Svalbard ve Jan Mayen Adaları', NULL, NULL),
	(261, 'SZ', 'Svaziland', NULL, NULL),
	(262, 'SE', 'İsveç', NULL, NULL),
	(263, 'CH', 'İsviçre', NULL, NULL),
	(264, 'SY', 'Suriye Arap Cumhuriyeti', NULL, NULL),
	(265, 'TW', 'Tayvan', NULL, NULL),
	(266, 'TJ', 'Tacikistan', NULL, NULL),
	(267, 'TZ', 'Tanzanya, Birleşik Cumhuriyeti', NULL, NULL),
	(268, 'TH', 'Tayland', NULL, NULL),
	(269, 'TG', 'Togo', NULL, NULL),
	(270, 'TK', 'Tokelau', NULL, NULL),
	(271, 'TO', 'Tonga', NULL, NULL),
	(272, 'TT', 'Trinidad ve Tobago', NULL, NULL),
	(273, 'TN', 'Tunus', NULL, NULL),
	(274, 'TR', 'Türkiye', NULL, NULL),
	(275, 'TM', 'Türkmenistan', NULL, NULL),
	(276, 'TC', 'Turks ve Caicos Adaları', NULL, NULL),
	(277, 'TV', 'Tuvalu', NULL, NULL),
	(278, 'UG', 'Uganda', NULL, NULL),
	(279, 'UA', 'Ukrayna', NULL, NULL),
	(280, 'AE', 'Birleşik Arap Emirlikleri', NULL, NULL),
	(281, 'GB', 'Birleşik Krallık', NULL, NULL),
	(282, 'US', 'Amerika Birleşik Devletleri', NULL, NULL),
	(283, 'UM', 'Amerika Birleşik Devletleri Küçük Dış Adaları', NULL, NULL),
	(284, 'UY', 'Uruguay', NULL, NULL),
	(285, 'UZ', 'Özbekistan', NULL, NULL),
	(286, 'VU', 'Vanuatu', NULL, NULL),
	(287, 'VA', 'Vatikan Şehir Devleti', NULL, NULL),
	(288, 'VE', 'Venezuela', NULL, NULL),
	(289, 'VN', 'Vietnam', NULL, NULL),
	(290, 'VG', 'Virgin Adaları (İngiliz)', NULL, NULL),
	(291, 'VI', 'Virjin Adaları (ABD)', NULL, NULL),
	(292, 'WF', 'Wallis ve Futuna Adaları', NULL, NULL),
	(293, 'EH', 'Batı Sahra', NULL, NULL),
	(294, 'YE', 'Yemen', NULL, NULL),
	(295, 'ZR', 'Zaire', NULL, NULL),
	(296, 'ZM', 'Zambiya', NULL, NULL),
	(297, 'ZW', 'Zimbabve', NULL, NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.coupons
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

-- ecom.coupons: 0 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.delivery_address
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.delivery_address: 2 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `delivery_address` DISABLE KEYS */;
INSERT INTO `delivery_address` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
	(2, 4, 'weshare@gmail.com', 'weshare', 'address', 'city', 'state', 'Cambodia', 'pincode', 'mobile', NULL, NULL),
	(3, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', 'Turkey', '34196', '5054702896', NULL, NULL);
/*!40000 ALTER TABLE `delivery_address` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.migrations: 12 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(3, '2014_10_12_000000_create_users_table', 2),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(8, '2018_10_20_040609_create_categories_table', 3),
	(9, '2018_10_24_075802_create_products_table', 4),
	(10, '2018_11_08_024109_create_product_att_table', 5),
	(11, '2018_11_20_055123_create_tblgallery_table', 6),
	(12, '2018_11_26_070031_create_cart_table', 7),
	(13, '2018_11_28_072535_create_coupons_table', 8),
	(15, '2018_12_01_042342_create_countries_table', 10),
	(19, '2018_12_03_043804_add_more_fields_to_users_table', 14),
	(17, '2018_12_03_093548_create_delivery_address_table', 12),
	(18, '2018_12_05_024718_create_orders_table', 13);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.orders
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
  `shipping_charges` double(8,2) NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.orders: 8 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `users_id`, `users_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
	(38, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:25:02', '2019-01-02 23:25:02'),
	(37, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:21:00', '2019-01-02 23:21:00'),
	(36, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:17:27', '2019-01-02 23:17:27'),
	(34, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:15:51', '2019-01-02 23:15:51'),
	(35, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:16:22', '2019-01-02 23:16:22'),
	(33, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:13:54', '2019-01-02 23:13:54'),
	(32, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:12:59', '2019-01-02 23:12:59'),
	(31, 1, 'demo@gmail.com', 'Sergen Temel', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', '34196', 'Turkey', '5054702896', 0.00, 'NO Coupon', '0', 'success', 'CreditCart', '112', '2019-01-02 23:12:34', '2019-01-02 23:12:34');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.password_resets: 0 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.products
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

-- ecom.products: 9 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `categories_id`, `p_name`, `p_code`, `p_color`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(28, 15, 'Lexus Rx 330', '12152', 'White', 'EXCELLENT SAFETY FOR YOUR FAMILY<br>Child Safety Locks, Electronic Stability Control, Brake Assist, 4-Wheel ABS, Tire Pressure Monitoring System, 4-Wheel Disc Brakes Safety equipment includes Child Safety Locks', 15.00, '1544063712-lexus-rx-330.jpg', '2018-12-05 22:35:12', '2018-12-05 22:43:48'),
	(27, 15, '2019 New Toyota Highlander XLE V6', 'XLE V6 FWD', 'White', 'Sunroof, Heated Leather Seats, NAV, 3rd Row Seat, Alloy Wheels, Quad Seats, Rear Air, Power Liftgate. XLE trim. Warranty 5 yrs/60k Miles - Drivetrain Warranty; AND MORE!', 20.00, '1544063425-2019-new-toyota-highlander-xle-v6.jpg', '2018-12-05 22:30:25', '2018-12-05 22:43:57'),
	(29, 12, '2018 Toyota Prius', '1252', 'Red', 'VEHICLE FEATURES<br>Rear Spoiler, MP3 Player, Remote Trunk Release, Keyless Entry, Privacy Glass.&nbsp;', 5.00, '1544063924-2018-toyota-prius.jpg', '2018-12-05 22:38:44', '2018-12-05 22:43:38'),
	(30, 16, 'Link House New LC2', 'L_1252', 'Gray', 'Borey Peng Huoth Cambodia', 10.00, '1544064142-link-house-new-lc2.jpg', '2018-12-05 22:42:22', '2018-12-05 22:42:22'),
	(31, 10, 'House', '5214', 'White and Brown', 'House For Sale', 10.00, '1544064430-house.jpg', '2018-12-05 22:47:10', '2018-12-05 22:47:10'),
	(32, 11, 'Vionic Shoes Brand', '5265', 'All Colors', 'Women Shoes', 12.00, '1544064607-vionic-shoes-brand.jpg', '2018-12-05 22:50:07', '2018-12-05 22:50:07'),
	(33, 17, 'Cole Haan', 'KHR 775659.29', 'Brown', 'Men\'s Original Grand Wingtip Oxfords', 5.00, '1544064903-cole-haan.jpg', '2018-12-05 22:55:03', '2018-12-05 22:55:03'),
	(34, 13, 'Lenovo ThinkPad', '1252', 'Black', 'Lenovo Thinkpad From China', 2.00, '1544065331-lenovo-thinkpad.jpg', '2018-12-05 23:02:12', '2018-12-05 23:02:12'),
	(35, 14, 'Cloths', 'The Man', 'Black', 'Cloths Description here', 2.00, '1544065493-cloths.png', '2018-12-05 23:04:54', '2018-12-05 23:04:54');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.product_att
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

-- ecom.product_att: 24 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `product_att` DISABLE KEYS */;
INSERT INTO `product_att` (`id`, `products_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
	(14, 34, 'SKU-Lenovo X1', '15 inch', 10.00, 2, '2018-12-05 23:08:43', '2018-12-05 23:08:43'),
	(13, 35, 'SKU-Red', 'S', 2.00, 5, '2018-12-05 23:08:08', '2018-12-05 23:08:08'),
	(12, 35, 'SKU-White', 'L', 6.00, 2, '2018-12-05 23:07:42', '2018-12-05 23:07:42'),
	(11, 35, 'SKU-Black', 'M', 5.00, 10, '2018-12-05 23:07:11', '2018-12-05 23:07:11'),
	(15, 34, 'SKU-Carbon', '14 inch', 4.00, 5, '2018-12-05 23:09:05', '2018-12-05 23:09:05'),
	(16, 33, 'SKU-Haan1', '25', 12.00, 3, '2018-12-05 23:09:45', '2018-12-05 23:09:45'),
	(17, 33, 'SKU-Haan2', '22', 10.00, 1, '2018-12-05 23:09:58', '2018-12-05 23:09:58'),
	(18, 33, 'SKU-Haan3', '19', 2.00, 3, '2018-12-05 23:10:16', '2018-12-05 23:10:16'),
	(19, 32, 'SKU-Vionic1', '20', 10.00, 5, '2018-12-05 23:11:02', '2018-12-05 23:11:02'),
	(20, 32, 'SKU-Vionic2', '20', 15.00, 4, '2018-12-05 23:11:24', '2018-12-05 23:11:24'),
	(21, 32, 'SKU-Vionic3', '30', 20.00, 1, '2018-12-05 23:11:38', '2018-12-05 23:11:38'),
	(22, 31, 'SKU-House1', '5*20', 25.00, 4, '2018-12-05 23:12:13', '2018-12-05 23:12:13'),
	(23, 31, 'SKU-House2', '10*10', 20.00, 2, '2018-12-05 23:12:30', '2018-12-05 23:12:30'),
	(24, 31, 'SKU-House3', '20*20', 20.00, 5, '2018-12-05 23:12:46', '2018-12-05 23:12:46'),
	(25, 30, 'SKU-Link House1', 'Small', 10.00, 5, '2018-12-05 23:13:06', '2018-12-05 23:13:06'),
	(26, 30, 'SKU-House2', 'Medium', 15.00, 23, '2018-12-05 23:13:23', '2018-12-05 23:13:23'),
	(27, 30, 'SKU-House3', 'Large', 5.00, 2, '2018-12-05 23:14:55', '2018-12-05 23:14:55'),
	(28, 29, 'SKU-Prius1', 'One Size', 12.00, 2, '2018-12-05 23:15:43', '2018-12-05 23:15:43'),
	(29, 28, 'SKU-Lexus Red', 'Size Red', 12.00, 12, '2018-12-05 23:16:28', '2018-12-05 23:16:28'),
	(30, 28, 'SKU-Lexus2', 'Size Black', 11.00, 22, '2018-12-05 23:16:48', '2018-12-05 23:16:48'),
	(31, 28, 'SKU-Lexus3', 'Size White', 12.00, 2, '2018-12-05 23:17:02', '2018-12-05 23:17:02'),
	(32, 27, 'SKU-Hilander', 'Size Black', 50.00, 10, '2018-12-05 23:17:35', '2018-12-05 23:17:35'),
	(33, 27, 'SKU-Hilander1', 'Size White', 20.00, 10, '2018-12-05 23:17:46', '2018-12-05 23:17:46'),
	(34, 27, 'SKU-Hilande3', 'Size Red', 20.00, 10, '2018-12-05 23:18:01', '2018-12-05 23:18:01');
/*!40000 ALTER TABLE `product_att` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.tblgallery
DROP TABLE IF EXISTS `tblgallery`;
CREATE TABLE IF NOT EXISTS `tblgallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.tblgallery: 27 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `tblgallery` DISABLE KEYS */;
INSERT INTO `tblgallery` (`id`, `products_id`, `image`, `created_at`, `updated_at`) VALUES
	(8, 27, '7664271544063472.jpg', '2018-12-05 22:31:12', '2018-12-05 22:31:12'),
	(9, 27, '6768551544063472.jpg', '2018-12-05 22:31:13', '2018-12-05 22:31:13'),
	(10, 27, '4131281544063473.jpg', '2018-12-05 22:31:13', '2018-12-05 22:31:13'),
	(11, 28, '6720891544063734.jpg', '2018-12-05 22:35:34', '2018-12-05 22:35:34'),
	(12, 28, '4686631544063734.jpg', '2018-12-05 22:35:34', '2018-12-05 22:35:34'),
	(13, 28, '5960611544063759.jpeg', '2018-12-05 22:35:59', '2018-12-05 22:35:59'),
	(14, 29, '5146071544063935.JPG', '2018-12-05 22:38:55', '2018-12-05 22:38:55'),
	(15, 29, '762811544063935.jpg', '2018-12-05 22:38:55', '2018-12-05 22:38:55'),
	(16, 29, '3716041544063935.jpg', '2018-12-05 22:38:56', '2018-12-05 22:38:56'),
	(17, 30, '6832831544064156.jpg', '2018-12-05 22:42:37', '2018-12-05 22:42:37'),
	(18, 30, '1655391544064157.jpg', '2018-12-05 22:42:37', '2018-12-05 22:42:37'),
	(19, 30, '4693601544064157.jpg', '2018-12-05 22:42:37', '2018-12-05 22:42:37'),
	(20, 31, '9233341544064441.jpg', '2018-12-05 22:47:21', '2018-12-05 22:47:21'),
	(21, 31, '8167501544064441.jpg', '2018-12-05 22:47:22', '2018-12-05 22:47:22'),
	(22, 31, '3887071544064442.jpg', '2018-12-05 22:47:22', '2018-12-05 22:47:22'),
	(23, 32, '3998691544064618.jpg', '2018-12-05 22:50:18', '2018-12-05 22:50:18'),
	(24, 32, '1159141544064618.jpg', '2018-12-05 22:50:18', '2018-12-05 22:50:18'),
	(25, 32, '2035101544064618.jpg', '2018-12-05 22:50:18', '2018-12-05 22:50:18'),
	(26, 33, '2128501544064917.jpg', '2018-12-05 22:55:17', '2018-12-05 22:55:17'),
	(27, 33, '5649911544064917.jpg', '2018-12-05 22:55:17', '2018-12-05 22:55:17'),
	(28, 33, '3704141544064917.jpg', '2018-12-05 22:55:17', '2018-12-05 22:55:17'),
	(29, 34, '3899431544065346.JPG', '2018-12-05 23:02:26', '2018-12-05 23:02:26'),
	(30, 34, '119131544065346.jpg', '2018-12-05 23:02:27', '2018-12-05 23:02:27'),
	(31, 34, '6905491544065347.jpg', '2018-12-05 23:02:27', '2018-12-05 23:02:27'),
	(32, 35, '981591544065510.jpeg', '2018-12-05 23:05:10', '2018-12-05 23:05:10'),
	(33, 35, '5320811544065510.jpg', '2018-12-05 23:05:11', '2018-12-05 23:05:11'),
	(34, 35, '1153181544065511.jpg', '2018-12-05 23:05:11', '2018-12-05 23:05:11');
/*!40000 ALTER TABLE `tblgallery` ENABLE KEYS */;

-- tablo yapısı dökülüyor ecom.users
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
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ecom.users: 2 rows tablosu için veriler indiriliyor
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`, `address`, `city`, `state`, `country`, `pincode`, `mobile`) VALUES
	(1, 'Sergen Temel', 'tmlsergen@gmail.com', NULL, '$2a$10$aEE3WfpfTp8ntvnaHN23c.8mJ9iL5eeqKVf/EmhAhPAdoZ6x9SBKi', 1, 'g6jB51us81eim8svJG8RSqGViHYf758l7i4n2Rxt0uDkUFIMQSot5hbSicAm', '2018-10-15 05:32:54', '2018-12-05 04:39:52', 'İstanbul, İstanbul', 'İstanbul', 'İstanbul', 'Turkey', '34196', '5054702896'),
	(4, 'weshare', 'weshare@gmail.com', NULL, '$2a$10$aEE3WfpfTp8ntvnaHN23c.8mJ9iL5eeqKVf/EmhAhPAdoZ6x9SBKi', NULL, '5iuZaXcYDA7Qg8g4KdQ8X2iAsMmzqlEkyX7X9Xtrj9x0WaiPdwGTacidzD5z', '2018-12-06 04:40:27', '2018-12-06 04:40:27', NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
