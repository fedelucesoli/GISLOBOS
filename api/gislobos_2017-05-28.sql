# ************************************************************
# Sequel Pro SQL dump
# Versión 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.35)
# Base de datos: gislobos
# Tiempo de Generación: 2017-05-28 22:45:02 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Volcado de tabla migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(4,'2016_06_01_000004_create_oauth_clients_table',1),
	(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(6,'2017_03_01_155453_create_users_table',1),
	(7,'2017_05_27_221038_create_nomencladores_table',2),
	(9,'2017_05_27_225931_nomencladores',3);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla nomencladores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nomencladores`;

CREATE TABLE `nomencladores` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `userId` int(10) unsigned NOT NULL,
  `direccion` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `long` decimal(11,7) NOT NULL,
  `lat` decimal(11,7) NOT NULL,
  `falta_cano` tinyint(1) NOT NULL DEFAULT '0',
  `falta_nomenclador` tinyint(1) NOT NULL DEFAULT '0',
  `falta_flecha` tinyint(1) NOT NULL DEFAULT '0',
  `mal_estado` tinyint(1) NOT NULL DEFAULT '0',
  `revision` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `nomencladores` WRITE;
/*!40000 ALTER TABLE `nomencladores` DISABLE KEYS */;

INSERT INTO `nomencladores` (`id`, `uid`, `userId`, `direccion`, `long`, `lat`, `falta_cano`, `falta_nomenclador`, `falta_flecha`, `mal_estado`, `revision`, `created_at`, `updated_at`)
VALUES
	(39,'',0,'Domingo Faustino Sarmiento 1099-1199',-59.0938711,-35.1970275,0,0,0,0,0,'2017-05-28 02:49:08','2017-05-28 02:49:08'),
	(40,'',0,'Domingo Faustino Sarmiento 1099-1199',-59.0938711,-35.1970275,0,0,0,0,0,'2017-05-28 02:49:21','2017-05-28 02:49:21'),
	(42,'',0,'Sergio O. Sdo. de Malvinas Azcarate 965',-59.0903521,-35.1950636,0,0,0,0,0,'2017-05-28 02:49:45','2017-05-28 02:49:45'),
	(43,'',0,'Carlos Riggieri 399-499',-59.1032267,-35.1712124,0,1,1,0,0,'2017-05-28 02:58:18','2017-05-28 02:58:18'),
	(45,'',0,'Libertad 942',-59.0827131,-35.1950636,0,0,1,0,0,'2017-05-28 03:30:16','2017-05-28 03:30:16'),
	(46,'',0,'O. Piñeiro 500-598',-59.0904379,-35.1892418,0,0,0,1,0,'2017-05-28 04:03:21','2017-05-28 04:03:21'),
	(47,'',0,'O. Piñeiro 500-598',-59.0904379,-35.1892418,0,0,0,1,0,'2017-05-28 04:03:22','2017-05-28 04:03:22'),
	(48,'',0,'Moreno 365',-59.0967035,-35.1889612,0,0,0,1,0,'2017-05-28 04:03:26','2017-05-28 04:03:26'),
	(49,'',0,'J. J. Blaquier 500-598',-59.0900570,-35.1916530,0,0,0,0,0,'2017-05-28 04:17:30','2017-05-28 04:17:30'),
	(50,'',0,'J. J. Blaquier 500-598',-59.0900570,-35.1916530,0,0,0,0,0,'2017-05-28 04:17:30','2017-05-28 04:17:30'),
	(51,'',0,'Sergio O. Sdo. de Malvinas Azcarate 598',-59.0898103,-35.1916004,0,0,0,0,0,'2017-05-28 04:17:33','2017-05-28 04:17:33'),
	(52,'',0,'Sergio O. Sdo. de Malvinas Azcarate 400-498',-59.0898424,-35.1903378,0,0,0,0,0,'2017-05-28 04:17:35','2017-05-28 04:17:35'),
	(53,'',0,'Sergio O. Sdo. de Malvinas Azcarate 489',-59.0901107,-35.1903290,0,0,0,0,0,'2017-05-28 04:17:38','2017-05-28 04:17:38'),
	(54,'',0,'Sergio O. Sdo. de Malvinas Azcarate 344',-59.0898854,-35.1891102,0,0,0,0,0,'2017-05-28 04:17:40','2017-05-28 04:17:40'),
	(55,'',0,'Bartolomé Mitre 500-598',-59.0902072,-35.1882597,0,0,0,0,0,'2017-05-28 04:17:43','2017-05-28 04:17:43'),
	(56,'',0,'Coronel Domingo Soriano Arévalo 79',-59.0899497,-35.1855766,0,0,1,0,0,'2017-05-28 04:22:58','2017-05-28 04:22:58'),
	(57,'',0,'General Belgrano 1400-1498',-59.0992785,-35.1724753,0,1,0,0,0,'2017-05-28 04:50:27','2017-05-28 04:50:27'),
	(58,'',0,'General Belgrano 1400-1498',-59.0988091,-35.1719184,0,0,0,0,0,'2017-05-28 04:50:36','2017-05-28 04:50:36'),
	(59,'',0,'Carlos Riggieri 1-98',-59.0977791,-35.1719009,0,0,0,0,0,'2017-05-28 04:50:39','2017-05-28 04:50:39'),
	(60,'',0,'Cattaneo 1-99',-59.0967116,-35.1718921,0,0,0,0,0,'2017-05-28 04:50:42','2017-05-28 04:50:42'),
	(61,'',0,'Ayacucho 1400-1498',-59.0955636,-35.1718658,0,0,0,0,0,'2017-05-28 04:50:45','2017-05-28 04:50:45'),
	(62,'',0,'A. Cardoner 1399-1499',-59.0944478,-35.1718614,0,0,0,0,0,'2017-05-28 04:50:47','2017-05-28 04:50:47'),
	(63,'',0,'Cattaneo 299-399',-59.0933159,-35.1718044,0,0,0,0,0,'2017-05-28 04:50:49','2017-05-28 04:50:49'),
	(64,'',0,'Cattaneo 399-499',-59.0918943,-35.1718000,0,0,0,0,0,'2017-05-28 04:50:52','2017-05-28 04:50:52'),
	(65,'',0,'Cattaneo 499-599',-59.0905103,-35.1717737,0,0,0,0,0,'2017-05-28 04:50:54','2017-05-28 04:50:54'),
	(66,'',0,'Cattaneo 599-699',-59.0891638,-35.1717605,0,0,0,0,0,'2017-05-28 04:50:56','2017-05-28 04:50:56'),
	(67,'',0,'Cattaneo 699-799',-59.0877423,-35.1717561,0,0,0,0,0,'2017-05-28 04:50:58','2017-05-28 04:50:58'),
	(68,'',0,'Cattaneo 799-899',-59.0862080,-35.1717079,0,0,0,0,0,'2017-05-28 04:51:02','2017-05-28 04:51:02'),
	(69,'',0,'Güemes 889',-59.0861490,-35.1735408,0,0,0,0,0,'2017-05-28 15:53:39','2017-05-28 15:53:39');

/*!40000 ALTER TABLE `nomencladores` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`)
VALUES
	('1bed6f5fd9cce334f3109b3f86cc5994ade7dd075cbb239ac5647521c7443840ee439d0ff4c5c88b',11,11,NULL,'[]',1,'2017-05-27 19:00:11','2017-05-27 19:00:11','2018-05-27 22:00:11'),
	('995e7eb9469506714c234ff0f0d967725e55a25f993ae8ab203cfedf9f75757b91306188d5dfa976',11,11,NULL,'[]',1,'2017-05-27 19:01:30','2017-05-27 19:01:30','2018-05-27 22:01:30'),
	('b8972f898939a162957094e879341f0f5dfafce4a0cd2eda18faae85b362bab63c1339d0c8a4e33d',11,11,NULL,'[]',0,'2017-05-27 19:03:20','2017-05-27 19:03:20','2018-05-27 22:03:20');

/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Volcado de tabla oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`)
VALUES
	(7,NULL,' Personal Access Client','ZYBHCHxKR3c9IC8co6Qr6n3EBIHagHrlqTgSXkJi','http://localhost',1,0,0,'2017-05-27 18:45:00','2017-05-27 18:45:00'),
	(8,NULL,' Password Grant Client','3TL9j4UMNL7omva9fbMm23zIopK8AnwRy3nT8Gvk','http://localhost',0,1,0,'2017-05-27 18:45:00','2017-05-27 18:45:00'),
	(9,16,'fede','KlVE7VZciZxsHDD0MTF689ve0caFhQbTPJ4ZmttZ','http://:/auth/callback',0,0,0,'2017-05-27 18:49:50','2017-05-27 18:49:50'),
	(10,NULL,' Personal Access Client','pSEftskRn1xRRZPKc94pOLWdDQ2Z9v0YA5DFoPsV','http://localhost',1,0,0,'2017-05-27 18:59:38','2017-05-27 18:59:38'),
	(11,NULL,' Password Grant Client','vV0IyPxBP0tCR15o5vIIdroC45vSDb9PJSyofAua','http://localhost',0,1,0,'2017-05-27 18:59:38','2017-05-27 18:59:38');

/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`)
VALUES
	(4,7,'2017-05-27 18:45:00','2017-05-27 18:45:00'),
	(5,10,'2017-05-27 18:59:38','2017-05-27 18:59:38');

/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`)
VALUES
	('3e17ae35007af572afb79956129aa029b5f5513a36adb7e0a05d45f8fd0068eeb1966ec76427546c','995e7eb9469506714c234ff0f0d967725e55a25f993ae8ab203cfedf9f75757b91306188d5dfa976',0,'2018-05-27 22:01:30'),
	('79043beccef6db018773e41858f491317457134aab4876e279496254754a34dbfe913b1f869f7445','b8972f898939a162957094e879341f0f5dfafce4a0cd2eda18faae85b362bab63c1339d0c8a4e33d',0,'2018-05-27 22:03:20'),
	('b26c093859f737cbf7d62f52ae87ce61055eead4f8abad6952c11417bf54d66f3cc361b3ab8c6696','1bed6f5fd9cce334f3109b3f86cc5994ade7dd075cbb239ac5647521c7443840ee439d0ff4c5c88b',0,'2018-05-27 22:00:11');

/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Volcado de tabla users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipCode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` enum('BASIC_USER','ADMIN_USER') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BASIC_USER',
  `isActive` tinyint(4) NOT NULL,
  `profileImage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_uid_unique` (`uid`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `uid`, `firstName`, `lastName`, `middleName`, `username`, `email`, `password`, `address`, `zipCode`, `phone`, `mobile`, `city`, `state`, `country`, `role`, `isActive`, `profileImage`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(7,'4gTHBJqoiO74lV8Orn03UN0RxpJeD3k5','Eliezer','O\'Keefe','Hills','libbie54','eloy.hamill@gottlieb.com','$2y$10$JwO40a/edvAnCAc.JwU0tOccuM1IalyvHGsFd9glBZgXBQgK.QyrW','768 Etha Hollow\nLake Jakob, WI 37955','14434','(813) 502-4213 x673','+1-697-300-3902','Adantown','Vermont','Pitcairn Islands','BASIC_USER',0,'http://lorempixel.com/100/480/?47174','2017-05-27 18:44:44','2017-05-27 18:44:44',NULL),
	(8,'PAaFdfXnJkcAHSa7zPdbyUwX8DzCUrgt','Sandra','Crooks','O\'Reilly','keven87','spinka.hobart@yahoo.com','$2y$10$gkWX/oMyQccOxe3TntvB2.qpfUs.1UFFP0HJOAUnhyUeqtgcJyWbG','565 Becker Knoll Suite 733\nBerenicehaven, AL 05052-4943','10234','887-228-9217 x21358','829.565.2154 x821','Henriview','New York','Trinidad and Tobago','BASIC_USER',0,'http://lorempixel.com/100/480/?57856','2017-05-27 18:44:44','2017-05-27 18:44:44',NULL),
	(9,'0qJTmZoln64DSuzE9gqnFOnVk7TLxyog','Alia','Abernathy','Cruickshank','heaney.maxwell','ward11@hotmail.com','$2y$10$OpBOXZ7Ygx/ioqM2VJ4BAuyf1jn9g03aZ6qxa0d9aX4EB/pgs1p5S','8238 Earlene Oval Apt. 826\nCruzborough, RI 40886-3755','71513','(818) 541-4951','782-670-8114 x87341','Crooksburgh','New Hampshire','Gabon','BASIC_USER',1,'http://lorempixel.com/100/480/?19729','2017-05-27 18:44:44','2017-05-27 18:44:44',NULL),
	(10,'XVcYGwFumx1WrdqivyOmmJ7O76t9FR1m','Zelda','Keebler','Okuneva','meghan.witting','xschoen@cremin.com','$2y$10$lz4iKHyrB0dH4F4UV2gXOuDYUGjiFIkGrqOvPBeFhO5iOy6kFMnVa','26797 Yvonne Junctions\nAlexaneport, SC 74745-0469','13597-3630','507.682.7296','(413) 613-8097','East Avery','Arizona','Thailand','BASIC_USER',1,'http://lorempixel.com/100/480/?85569','2017-05-27 18:44:44','2017-05-27 18:44:44',NULL),
	(11,'xmgV1E6l315SdBmMEeF7nTjle0e3shQJ','Maxie','Homenick','DuBuque','devonte.keebler','rosenbaum.reilly@carter.com','$2y$10$k5m2XNpnV3kSYEWixwnZJ.nhk4I27zqlwK/AOyhJM8lJNWJlBwHwa','91374 Serenity Burg Apt. 865\nLindshire, TX 43115','26801-1752','+14617602324','+1 (408) 829-0262','North Edythe','North Dakota','Dominica','ADMIN_USER',1,'http://lorempixel.com/100/480/?84214','2017-05-27 18:44:44','2017-05-27 18:44:44',NULL);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
