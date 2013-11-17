# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: mysql_test
# Generation Time: 2013-11-17 06:14:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table test
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `video` int(11) DEFAULT NULL,
  `ref` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;

INSERT INTO `test` (`id`, `email`, `video`, `ref`)
VALUES
	(7,'heydanwaz@gmail.com',1,'a'),
	(8,'heydanwaz@gmail.com',3,'a'),
	(9,'heydanwaz@gmail.com',2,'a'),
	(10,'heydanwaz@gmail.com',2,'b'),
	(11,'heydanwaz@gmail.com',1,'b'),
	(12,'bob@gmail.com',1,'b'),
	(13,'bob@gmail.com',2,'b'),
	(14,'bob@gmail.com',2,'a'),
	(15,'jonh@gmail.com',2,'a'),
	(16,'jonh@gmail.com',2,'b'),
	(17,'gary@gmail.com',2,'b'),
	(18,'gary@gmail.com',2,'a'),
	(19,'jerry@gmail.com',1,'a'),
	(20,'jerry@gmail.com',1,'b'),
	(21,'larry@gmail.com',1,'b'),
	(22,'larry@gmail.com',2,'b'),
	(23,'larry@gmail.com',4,'b'),
	(24,'larry@gmail.com',4,'a'),
	(25,'billy@gmail.com',1,'a'),
	(26,'billy@gmail.com',1,'b'),
	(27,'sarah@gmail.com',2,'b'),
	(28,'sarah@gmail.com',2,'a'),
	(29,'james@gmail.com',1,'a'),
	(30,'james@gmail.com',3,'a'),
	(31,'json@in.com',3,'b'),
	(32,'melissa@gmail.com',1,'a'),
	(33,'brian@gmail.com',1,'a'),
	(34,'var@gmail.com',1,'a'),
	(35,'riley@gmai.com',1,'a'),
	(36,'cool@gmail.com',1,'a'),
	(37,'gmail@gmail.com',4,'a'),
	(38,'cool@gjmail.com',1,'b'),
	(39,'hey@a.com',1,'a'),
	(40,'fake@gmail.com',1,'a'),
	(41,'heydanwaz@gmail.com',3,'b'),
	(42,'',3,'b');

/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
