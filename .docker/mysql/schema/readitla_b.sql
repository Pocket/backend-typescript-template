CREATE DATABASE IF NOT EXISTS `readitla_b`;

USE `readitla_b`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# Dump of table items_resolver
# ------------------------------------------------------------

CREATE TABLE `items_resolver` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `normal_url` text COLLATE utf8_unicode_ci NOT NULL,
  `search_hash` varchar(42) CHARACTER SET latin1 DEFAULT NULL,
  `resolved_id` int(10) unsigned NOT NULL,
  `has_old_dupes` tinyint(1) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `search_hash` (`search_hash`(7)),
  KEY `resolved_id` (`resolved_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8;

