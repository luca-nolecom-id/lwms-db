-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: rsmr_lwms
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB-1~bionic

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
-- Table structure for table `allocazione_celle`
--

DROP TABLE IF EXISTS `allocazione_celle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allocazione_celle` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `pallet_id` int(16) NOT NULL,
  `cella_id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stato` enum('rettifica','in transito','ok') DEFAULT NULL,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ac_p` (`pallet_id`),
  KEY `fk_ac_c` (`cella_id`),
  CONSTRAINT `fk_ac_c` FOREIGN KEY (`cella_id`) REFERENCES `cella` (`id`),
  CONSTRAINT `fk_ac_p` FOREIGN KEY (`pallet_id`) REFERENCES `pallet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocazione_celle`
--

LOCK TABLES `allocazione_celle` WRITE;
/*!40000 ALTER TABLE `allocazione_celle` DISABLE KEYS */;
INSERT INTO `allocazione_celle` VALUES (1,12,1,'2021-02-19 08:49:49','2021-02-19 08:49:49','ok','yy7PGSm53puuLxInon3mCiwEelnrNunJ',NULL),(2,13,1,'2021-02-19 08:50:53','2021-02-19 08:50:53','ok','IoKJuvPeqzsRbD0fXVvtmxC1cqx9XO4l',NULL),(3,14,1,'2021-02-19 09:02:53','2021-02-19 09:02:53','ok','rHRo106UIbILkdHR9y5fir8cUq3MNFgI',NULL),(4,15,1,'2021-02-19 13:34:16','2021-02-19 13:34:16','ok','n0exVYUwybFRdtzbTzJV5z15yXWwWUSv',NULL),(5,16,1,'2021-02-19 13:34:50','2021-02-19 13:34:50','ok','fEEQhCT3RjZtrEk9oJUFCIsur1RqvAXX',NULL),(6,17,1,'2021-02-19 13:38:59','2021-02-19 13:38:59','ok','dMIlyMqx0Fk7GMuRNozjXcBbyuLoNwgA',NULL),(7,18,1,'2021-02-19 13:46:40','2021-02-19 13:46:40','ok','HxAdY4yvqnjcozRTMfWlnmT8br9QUcV6',NULL),(8,19,1,'2021-02-19 13:47:32','2021-02-19 13:47:32','ok','4iqx5F5ywByR5cr5zPUIM6i8GeE1wRvZ',NULL),(9,20,1,'2021-02-19 13:49:30','2021-02-19 13:49:30','ok','vIxCrb0pshRtgjH11cxyJBTuBrx3XJUr',NULL),(10,21,1,'2021-02-25 09:52:09','2021-02-25 09:52:09','ok','FcS8Cta95JZzxeWoT4iiHyJe3oH5I2QR',NULL),(11,22,1,'2021-02-25 09:53:47','2021-02-25 09:53:47','ok','l7nSBTY4KH3QehLLFGC2d881UNQGGG6p',NULL),(12,23,1,'2021-02-25 09:54:58','2021-02-25 09:54:58','ok','PxdhkVEaVOb9q47nzrGZ08IBchTk4FnB',NULL),(13,24,1,'2021-02-25 09:56:00','2021-02-25 09:56:00','ok','75lYkECzEcpw3oPCEtBhsr4ILw1FXq40',NULL),(14,25,1,'2021-02-25 09:56:30','2021-02-25 09:56:30','ok','LY48FAa9IElLNTcrx1SaGrDF0ybPIdXJ',NULL),(15,26,1,'2021-02-25 09:57:32','2021-02-25 09:57:32','ok','zIcTKrIQgwd4dWK72vatmWx5ljXoUmLz',NULL),(16,27,1,'2021-02-25 10:09:40','2021-02-25 10:09:40','ok','ylHUsG6yO6sHBdM4NT1SVnZZ4fLyKWr9',NULL),(17,28,1,'2021-02-25 10:10:11','2021-02-25 10:10:11','ok','SLqZKf79rpgar3QqglAPjc6bZNv3C8uj',NULL),(18,29,1,'2021-02-25 10:10:39','2021-02-25 10:10:39','ok','cINo9zXMx2lreWh5CidoWhBEMDcNa0rn',NULL),(19,30,1,'2021-02-25 10:11:01','2021-02-25 10:11:01','ok','yPyUY9N7vzoFlnz68xolfngo2HjZuGUU',NULL),(20,31,1,'2021-02-25 10:11:42','2021-02-25 10:11:42','ok','crAntmFD5yG8pl46PJ7MxqzexOYpxwX5',NULL),(21,32,1,'2021-02-25 10:11:42','2021-02-25 10:11:42','ok','gjz3mG4V1d52XA5cmwWAdyUHWVSS4F5L',NULL),(22,33,1,'2021-02-25 10:11:54','2021-02-25 10:11:54','ok','fbMeznGR7GzCTplfuMXjPR1la69dgcHW',NULL),(23,34,1,'2021-02-25 10:20:22','2021-02-25 10:20:22','ok','NwrWQTSdxY9cZOF2BwrNvsi2XXeam3x0',NULL),(24,35,1,'2021-02-25 10:21:55','2021-02-25 10:21:55','ok','a7PbUmNhnOlHlOXlXS2mmCJBiGO7NTqm',NULL),(25,36,1,'2021-02-25 10:22:35','2021-02-25 10:22:35','ok','SIVrpFmrquXNMMOusZmdJh79IFWcVsHi',NULL),(26,37,1,'2021-02-25 10:23:03','2021-02-25 10:23:03','ok','3hV9MrMqDEUocdVyirIkZxz4WwMu0q8H',NULL),(27,38,1,'2021-02-25 10:23:05','2021-02-25 10:23:05','ok','H6K8JcoXEmbUdxvOkik7u81AiLCSJBPr',NULL),(28,39,1,'2021-02-25 10:23:11','2021-02-25 10:23:11','ok','YRtZ5MGEGcVAXuNzEZmad8iTDdOXIrs4',NULL),(29,40,1,'2021-02-25 10:23:13','2021-02-25 10:23:13','ok','wN2btVizJvFIR8oIyUiZKeRvzQ6Zw18f',NULL),(30,41,1,'2021-02-26 08:52:01','2021-02-26 08:52:01','ok','NXHbDC310TGFYeF7VapYGNIyyAIXMSJA',NULL),(32,43,1,'2021-02-26 11:04:56','2021-02-26 11:04:56','ok','0cVIeLnVJRCWIeEh66GMwZ52BbG8q76p',NULL),(33,44,1,'2021-02-26 11:05:34','2021-02-26 11:05:34','ok','QVKlXIn4eY0L1PJZzG7VMPVqcMVpOFUO',NULL),(34,45,1,'2021-02-26 15:34:33','2021-02-26 15:34:33','ok','GEfHMQIiz8clfdTPvD8Fr1hbNSnuPXQy',NULL),(35,46,1,'2021-02-26 16:42:29','2021-02-26 16:42:29','ok','gi0w1eUX8kpo2p5l5qKKpqg64uQSdsYW',NULL),(36,47,1,'2021-03-01 10:45:29','2021-03-01 10:45:29','ok','8uLYL3Gl8xBfajo6sv4dTQNY3QjR6MW1',NULL),(37,48,1,'2021-03-01 10:52:20','2021-03-01 10:52:20','ok','x2Byy9Jv6BGfUEe4VAVvAQ3PcWCULVdm',NULL),(38,49,1,'2021-03-01 11:13:45','2021-03-01 11:13:45','ok','hyzyxsEU8ntoMwGAj7DZeJ73SYa1qEMN',NULL),(39,50,1,'2021-03-01 11:13:50','2021-03-01 11:13:50','ok','RrWSPjkWddcKbw2WbLZCaeOa8fJ1AII4',NULL),(40,51,1,'2021-03-01 11:15:02','2021-03-01 11:15:02','ok','qg464adpOXah7y3Oo1RrEsuTzUlh4GKT',NULL),(41,52,1,'2021-03-01 11:15:56','2021-03-01 11:15:56','ok','SrcHdCN6f0njkzNm2TNNrN3LM04k80WX',NULL),(42,53,1,'2021-03-01 11:15:58','2021-03-01 11:15:58','ok','aOtaINMRptVQG3eTzS8SWVol070iXu4S',NULL),(43,54,1,'2021-03-02 16:32:07','2021-03-02 16:32:07','ok','kI5BW0cjRnh1WmdIqaHzmRxj1YeRCRtf',NULL);
/*!40000 ALTER TABLE `allocazione_celle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allocazione_pallet`
--

DROP TABLE IF EXISTS `allocazione_pallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allocazione_pallet` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `articolo_id` int(16) DEFAULT NULL,
  `collo_id` int(16) DEFAULT NULL,
  `quantita` int(10) NOT NULL,
  `pallet_id` int(16) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ap_p` (`pallet_id`),
  CONSTRAINT `fk_ap_p` FOREIGN KEY (`pallet_id`) REFERENCES `pallet` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocazione_pallet`
--

LOCK TABLES `allocazione_pallet` WRITE;
/*!40000 ALTER TABLE `allocazione_pallet` DISABLE KEYS */;
INSERT INTO `allocazione_pallet` VALUES (1,1,0,10,1,'2021-01-26 09:19:12','2021-01-26 09:19:12','T4rOewmappDSELrUfExoyCbUUXKbdopY',NULL),(2,2,0,1,2,'2021-02-15 14:52:34','2021-02-15 14:52:34','tNh7PF1cqVbcZVa15pmvRm02sKbCTd2D',NULL),(3,3,0,2,3,'2021-02-15 14:52:35','2021-02-15 14:52:35','ajW4r0Fp7r5jYspECfdBovK49n0kSfJH',NULL),(4,4,0,2,4,'2021-02-15 14:52:35','2021-02-15 14:52:35','x5iMPlEHqZCVMM1yYHuvy6ZnY88t6Aw7',NULL),(5,0,0,45,5,'2021-02-17 16:15:03','2021-02-17 16:15:03','Jthi1tqTzUiSmPV86qrjzBn0ZYwnley4',NULL),(6,0,0,45,6,'2021-02-17 16:15:50','2021-02-17 16:15:50','KvQZdmOczZRqTU5BHX10rdejApVsOQcE',NULL),(7,0,0,45,6,'2021-02-17 16:15:50','2021-02-17 16:15:50','HEXr2qxKCrwwrY8lsn4H2I61vPrX7id2',NULL),(8,0,0,45,7,'2021-02-19 08:35:10','2021-02-19 08:35:10','hAaIucvwDiO5bPeaQydcQwpaPJgKpIm4',NULL),(9,0,0,45,7,'2021-02-19 08:35:10','2021-02-19 08:35:10','GULNPTt1mDylV9yl0QejKxA7fFF89PF7',NULL),(10,0,0,45,7,'2021-02-19 08:35:10','2021-02-19 08:35:10','niDMXsM8rw0OQ4UrXVh5860oyjGMtMqN',NULL),(11,0,0,45,8,'2021-02-19 08:40:12','2021-02-19 08:40:12','lc1wj6L01rifraUbrUGggmXy0CemzTfU',NULL),(12,0,0,45,8,'2021-02-19 08:40:12','2021-02-19 08:40:12','90q4WRIebkVDY1IXvEu1iNV51MzdYUka',NULL),(13,0,0,45,8,'2021-02-19 08:40:12','2021-02-19 08:40:12','cxHeHTyNrMVdiPuWtIptqpH9bv1ndZod',NULL),(14,0,0,45,8,'2021-02-19 08:40:12','2021-02-19 08:40:12','fMd1J3SjrMIiMyfMmlG6lNkkC7UNl56g',NULL),(15,0,0,45,9,'2021-02-19 08:45:38','2021-02-19 08:45:38','oGA7yehOUPBDeI0Gm3aQll8QwgC2aMBR',NULL),(16,0,0,45,9,'2021-02-19 08:45:38','2021-02-19 08:45:38','gVXQZAB4gnGZYl5NLuVEO5VLJvo1Wizd',NULL),(17,0,0,45,9,'2021-02-19 08:45:38','2021-02-19 08:45:38','ONkIQCkaakuWMqCBUojEE9mqXUinl4yV',NULL),(18,0,0,45,9,'2021-02-19 08:45:38','2021-02-19 08:45:38','lNVx939jRk5u6uwmg7xClo4wxW8DC30O',NULL),(19,0,0,45,9,'2021-02-19 08:45:38','2021-02-19 08:45:38','mw1YRZy2bhwtRmAlg60huUwlUhAUB0C4',NULL),(20,0,0,45,10,'2021-02-19 08:48:13','2021-02-19 08:48:13','mVJ5ETA1hMxdHTJDoX8SAPW8a3Dn4g27',NULL),(21,0,0,45,10,'2021-02-19 08:48:14','2021-02-19 08:48:14','2HSfVVgemmkkihxulXGutyyK0eK749jx',NULL),(22,0,0,45,10,'2021-02-19 08:48:14','2021-02-19 08:48:14','1G5oAck9zriPxzcNMsaYmLUiP3Z2h3tg',NULL),(23,0,0,45,10,'2021-02-19 08:48:14','2021-02-19 08:48:14','T1ofygEbdg4DNbdUmDGQ8GcwyAQlshNt',NULL),(24,0,0,45,10,'2021-02-19 08:48:14','2021-02-19 08:48:14','pU0aiYapv2HrIupiQ8flYLa6YThCMaIz',NULL),(25,0,0,45,10,'2021-02-19 08:48:14','2021-02-19 08:48:14','UuRw1Iu08SS7CODvBhJ2fv82Gd5zWuwa',NULL),(26,0,0,45,11,'2021-02-19 08:49:18','2021-02-19 08:49:18','cmsNXkHrSBkh0Y8dJBs15yPT642KOmEI',NULL),(27,0,0,45,11,'2021-02-19 08:49:18','2021-02-19 08:49:18','Di9yOhc0K93A0yHvMUq5XXzyRwe4XA7w',NULL),(28,0,0,45,11,'2021-02-19 08:49:18','2021-02-19 08:49:18','145WJHjvzPI34vhajSnIt5BMAQ0yfrbF',NULL),(29,0,0,45,11,'2021-02-19 08:49:18','2021-02-19 08:49:18','npYIMfPFaPA5T4G1jUpfncMGflIGvyBL',NULL),(30,0,0,45,11,'2021-02-19 08:49:18','2021-02-19 08:49:18','Mu9S98QwtqBYhpE7DMfgMpDi1kCYbqf4',NULL),(31,0,0,45,11,'2021-02-19 08:49:18','2021-02-19 08:49:18','CEf2i9Jwk4bquSfCHOk8LgbSgzwiKYCO',NULL),(32,0,0,45,11,'2021-02-19 08:49:18','2021-02-19 08:49:18','ZXcwuQzFwNsVLnFi7ll4ITnMVwswIWAA',NULL),(33,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','oMWPPkVOtSRsvkF4kWyTjnZDcZOdl7W0',NULL),(34,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','ti03RahcO7jJ4x4sdVaaGXLVqXRzN6Ee',NULL),(35,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','fWkGYUglBs4DivxzGzsvm54vr2O1mKdF',NULL),(36,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','L4WlVkXeZdsJX8qI1LQhul6q6Dm1WT3C',NULL),(37,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','57k5BPJ7ctUaWan9ylIzBOQ7Bv4hngR8',NULL),(38,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','9UHx9pBJyzIA369vepJDJyr1cMOAqnh4',NULL),(39,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','iV7xeIMOCIB8gmIkuYGjJCjIsctl3d1t',NULL),(40,0,0,45,12,'2021-02-19 08:49:49','2021-02-19 08:49:49','zt3L5dq4m53uL8NGZM4yRATvyVAaF8L8',NULL),(41,0,0,45,13,'2021-02-19 08:50:52','2021-02-19 08:50:52','crgy0VXA7x7C9V2J5miBVMeO6VrdiBg8',NULL),(42,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','tL83d7he0xyVKjmoBo5wZvAQQa6sJ1YM',NULL),(43,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','99hYJcdIzej0jq5zdezVI4JJiXwYfOK9',NULL),(44,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','e6r4wKShAkfL34uLcIUKE9cwtCjNh0de',NULL),(45,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','KBicxdsszNqJ8Z2nrrmY5UZIub59rLxF',NULL),(46,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','Ay0UCXQRbJUUswfRO7PoEOBAv1Xjrqpy',NULL),(47,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','HdeHSv49QPPUhmKWZM6qDUqd1tokfuDr',NULL),(48,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','cad9ONgMEaySR09I15ltONxpapWy2Voq',NULL),(49,0,0,45,13,'2021-02-19 08:50:53','2021-02-19 08:50:53','WctrvRPD0lUKrHHWAVgH4ex1cMELpXn4',NULL),(50,0,0,45,14,'2021-02-19 09:02:52','2021-02-19 09:02:52','L2ffbpuWEXjzzt7pAnFCheIAPdf5KTNa',NULL),(51,0,0,45,14,'2021-02-19 09:02:52','2021-02-19 09:02:52','jzo3p3kP3GK0Z9bmPuHsCBj2ObkUHT9B',NULL),(52,0,0,45,14,'2021-02-19 09:02:53','2021-02-19 09:02:53','yhtIv5pGjc5ywwhFk1orwE2CMJehw5A2',NULL),(53,0,0,45,14,'2021-02-19 09:02:53','2021-02-19 09:02:53','B1QMJeBk04IYrTMad1RoKqEQEDlGJ480',NULL),(54,0,0,45,14,'2021-02-19 09:02:53','2021-02-19 09:02:53','JUqcZOI4LyCNCYBPhFncnNPxUtrvRBJM',NULL),(55,0,0,45,14,'2021-02-19 09:02:53','2021-02-19 09:02:53','y9inhgjdGnzg67lOqeDXgLqruwJtJNdq',NULL),(56,0,0,45,14,'2021-02-19 09:02:53','2021-02-19 09:02:53','txnxju14CgOup0U4aFrPlioImhTtuZuw',NULL),(57,0,0,45,14,'2021-02-19 09:02:53','2021-02-19 09:02:53','0kAVxbeBJXAU6ZHDgMFwyqdhTT17Yjog',NULL),(58,0,0,45,14,'2021-02-19 09:02:53','2021-02-19 09:02:53','R5CZOJs8sqhoiSAVb1zlmMiXcAZevthF',NULL),(59,0,0,45,15,'2021-02-19 13:34:15','2021-02-19 13:34:15','myrvTYlWfuuDKFan7bcEQOSGojAqepeZ',NULL),(60,0,0,45,16,'2021-02-19 13:34:49','2021-02-19 13:34:49','WLJSg3NPehSj81mRFrCulFLbEPNahvYU',NULL),(61,5,0,45,17,'2021-02-19 13:38:59','2021-02-19 13:38:59','DlU84wSBiamOBFLSrfO4959VwxBIMhsY',NULL),(62,5,0,45,18,'2021-02-19 13:46:40','2021-02-19 13:46:40','2z0alBV3oah27O9jUzz9mdouqRFyCXPw',NULL),(63,5,0,45,19,'2021-02-19 13:47:31','2021-02-19 13:47:31','i1zxsChM2CTrnlv8jTNEqsizdTiOVNKO',NULL),(64,5,0,45,20,'2021-02-19 13:49:29','2021-02-19 13:49:29','hO0Q0LmwaSiMpaVjvpbNntBuiXwJtiDN',NULL),(65,0,0,45,21,'2021-02-25 09:52:08','2021-02-25 09:52:08','BO4I7ldpQ2SzjPefAOORjmNR3O0DkZke',NULL),(66,5,0,45,22,'2021-02-25 09:53:46','2021-02-25 09:53:46','j5OcLgLllIBrcuaWAX1cpXU7GrLNPeEQ',NULL),(67,0,0,45,23,'2021-02-25 09:54:58','2021-02-25 09:54:58','duzvXjXzQGEFTkwNjXEiyuSBZYICLhc3',NULL),(68,0,0,45,24,'2021-02-25 09:56:00','2021-02-25 09:56:00','ScDPkr43sKxX3gwkmpaOYJ8BBt5i1EBq',NULL),(69,0,0,45,25,'2021-02-25 09:56:30','2021-02-25 09:56:30','Bgtj3n5pDtWkFyDkdFRFXn17Q0BCrec2',NULL),(70,7,0,45,26,'2021-02-25 09:57:32','2021-02-25 09:57:32','ws6OmxGdL3lj2EifPVwD0F2fnVAM1JK9',NULL),(71,7,0,45,27,'2021-02-25 10:09:39','2021-02-25 10:09:39','9poDGWc2xDe8B7Yhz0N5gKnCeqVFRmN5',NULL),(72,7,0,45,28,'2021-02-25 10:10:11','2021-02-25 10:10:11','wL7GsVJNd9t6Ti6RhD8AoeuvAh4oSmhq',NULL),(73,7,0,45,29,'2021-02-25 10:10:39','2021-02-25 10:10:39','l95srdwXsM4kd4OJhBDgEHeaQn1D8WES',NULL),(74,7,0,45,30,'2021-02-25 10:11:01','2021-02-25 10:11:01','AAbZHyZNcyUzwXqYIA90Yw8TXTehIPIz',NULL),(75,7,0,45,31,'2021-02-25 10:11:42','2021-02-25 10:11:42','uAVD3I4sVZFB1seFFXcGdVaSliQszNqa',NULL),(76,7,0,45,32,'2021-02-25 10:11:42','2021-02-25 10:11:42','hZKwqisvl9pi88r7LqidIMRc2pONkq5q',NULL),(77,7,0,45,33,'2021-02-25 10:11:54','2021-02-25 10:11:54','WyYwSSVUq8xHrFg21RDyZopJp1h15UTH',NULL),(78,7,0,45,34,'2021-02-25 10:20:21','2021-02-25 10:20:21','40ly3683BAjej3GVzHx2ZPagPrOUMrS0',NULL),(79,7,0,45,35,'2021-02-25 10:21:54','2021-02-25 10:21:54','F0foJT3AA9KnJN9Dlw0IYGisyeArnEbi',NULL),(80,7,0,45,36,'2021-02-25 10:22:34','2021-02-25 10:22:34','gosu8BVybWY7Cccx2bRmHqoQnBMsy1ZC',NULL),(81,7,0,45,37,'2021-02-25 10:23:02','2021-02-25 10:23:02','nH4pbQe3sFztAODwxpKVeC0nLqqsOxdS',NULL),(82,7,0,45,38,'2021-02-25 10:23:05','2021-02-25 10:23:05','CDiDrftjIK1A0mjNLsE4izPRipqOnbNZ',NULL),(83,7,0,45,39,'2021-02-25 10:23:11','2021-02-25 10:23:11','nz2WVJiOZcYdYrFdmd9SDzfJsSHjNHq3',NULL),(84,7,0,45,40,'2021-02-25 10:23:13','2021-02-25 10:23:13','FPQ75YPcRZl86dGaeAfVOAY0ThsLqKSE',NULL),(85,7,0,45,41,'2021-02-26 08:52:00','2021-02-26 08:52:00','mVGp07nrGcD5cW9Gpt8RvjVe7xTXlSPa',NULL),(86,7,0,45,42,'2021-02-26 08:56:32','2021-02-26 08:56:32','byyc557hzA8unK29qd3oLTm9KYInxqVS',NULL),(87,7,0,45,43,'2021-02-26 11:04:56','2021-02-26 11:04:56','TDs09DAjrEuAWSOTE7a77pJtw4N4ACGy',NULL),(88,7,0,45,44,'2021-02-26 11:05:34','2021-02-26 11:05:34','pmMSe8ZM1WhVfFL1CpZpaiJpPnfLl47I',NULL),(89,7,0,45,45,'2021-02-26 15:34:33','2021-02-26 15:34:33','8BOY9pql8c0fOJ0BdPTwI4zTOSIpeQ11',NULL),(90,7,0,45,46,'2021-02-26 16:42:28','2021-02-26 16:42:28','8h20Sp5pPN1vuMo3NrUFa5mClnZVSVZh',NULL),(91,7,0,45,47,'2021-03-01 10:45:29','2021-03-01 10:45:29','GslH7iTq3hwzLj3Oypln4bKoodvLeTih',NULL),(92,7,0,45,48,'2021-03-01 10:52:20','2021-03-01 10:52:20','PFehB6O4IzBiEMsS0af6IcebxpT1I2no',NULL),(93,8,0,44,49,'2021-03-01 11:13:45','2021-03-01 11:13:45','oLgc5JaHc02DpdgdPKr4ntq066ezkMFT',NULL),(94,9,0,33,50,'2021-03-01 11:13:50','2021-03-01 11:13:50','IJxok9earZPHu2KtpJTBO93ofikbmMh2',NULL),(95,8,0,44,51,'2021-03-01 11:15:01','2021-03-01 11:15:01','deNICbELj6lf52UEo4M8suB1PgPkUC9s',NULL),(96,8,0,44,52,'2021-03-01 11:15:56','2021-03-01 11:15:56','KbwGxQNrxtfYWMwLufXAAhiNpKYBhmJp',NULL),(97,9,0,33,53,'2021-03-01 11:15:58','2021-03-01 11:15:58','bKO2Q2I164vbK5yaJIixtXc0ZfgMPr1A',NULL),(98,8,0,44,54,'2021-03-02 16:32:06','2021-03-02 16:32:06','rzAOytua36vgEGOXVVbvGB7tpUAxslgF',NULL);
/*!40000 ALTER TABLE `allocazione_pallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articolo`
--

DROP TABLE IF EXISTS `articolo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articolo` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `codice` char(20) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `descrizione` text NOT NULL,
  `note` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articolo`
--

LOCK TABLES `articolo` WRITE;
/*!40000 ALTER TABLE `articolo` DISABLE KEYS */;
INSERT INTO `articolo` VALUES (1,'11124596','ingresso prova','Manutenzione ordinaria','no','2021-01-26 09:18:16','2021-01-26 09:18:16','ysXOq97UNh9IkKAA7dyQZKv8Ao73BkXy',NULL),(2,'MEDICAL001','MEDICAL 1','MEDICAL 1',NULL,'2021-02-15 14:52:34','2021-02-15 14:52:34','7BAVonbCbzr0P8RmsTcnNyaAjBFEkcCC',NULL),(3,'MEDICAL002','MEDICAL 2','MEDICAL 2',NULL,'2021-02-15 14:52:34','2021-02-15 14:52:34','22jWiUWrQz3vwA9W5rXfymTmQInP5dAj',NULL),(4,'ARTF00002000001','CHIAVE INGLESE','CHIAVE INGLESE',NULL,'2021-02-15 14:52:35','2021-02-15 14:52:35','6ZgnuspGgqLJB8M9mOkZPkWjrPjYzpIy',NULL),(5,'codarticolo1','codarticolo1','codarticolo1','','2021-02-19 13:38:13','2021-02-19 13:38:50','irrE89KuSjv2vgBIL9aJuJwZhEv8hYUL','QdK9lpSalDiIOBDc808FOSn4ESvKElNR'),(6,'40X34X45','40X34X45','40X34X45','40X34X45','2021-02-25 09:56:30','2021-02-25 09:56:30','xWVzwyfGfMBYvG7ISvDEhL4PMJueWezC',NULL),(7,'40X56X45','40X56X45','40X56X45','40X56X45','2021-02-25 09:57:32','2021-02-25 09:57:32','nWP3sOCr4sTHvaSXWqj3Q9Ugoek9P9Ze',NULL),(8,'try','try','try',NULL,'2021-03-01 11:13:45','2021-03-01 11:13:45','reOQjr9yA5QQLiQDak8FIr8Hfx6OKWBS',NULL),(9,'prova','prova','prova',NULL,'2021-03-01 11:13:50','2021-03-01 11:13:50','zoQwMUdjmnWm970m1RQ1PvUkPO5D0kVz',NULL);
/*!40000 ALTER TABLE `articolo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backupsettings`
--

DROP TABLE IF EXISTS `backupsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backupsettings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `path` varchar(256) DEFAULT '/opt/lwms/backup/',
  `periodicity` enum('giornaliero','bisettimanale','settimanale','quindicinale','mensile') NOT NULL DEFAULT 'giornaliero',
  `email_backup` varchar(255) NOT NULL DEFAULT 'backup@lwms.rosmeri.it',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bs_u` (`user_id`),
  CONSTRAINT `fk_bs_u` FOREIGN KEY (`user_id`) REFERENCES `utente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backupsettings`
--

LOCK TABLES `backupsettings` WRITE;
/*!40000 ALTER TABLE `backupsettings` DISABLE KEYS */;
INSERT INTO `backupsettings` VALUES (1,'/opt/lwms/backup','giornaliero','pgc@lwms.rosmeri.it','2019-02-14 14:56:47',1);
/*!40000 ALTER TABLE `backupsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cella`
--

DROP TABLE IF EXISTS `cella`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cella` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `codice` int(10) NOT NULL,
  `indice_riga` int(3) NOT NULL,
  `indice_colonna` int(3) NOT NULL,
  `locazione_id` int(16) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cella`
--

LOCK TABLES `cella` WRITE;
/*!40000 ALTER TABLE `cella` DISABLE KEYS */;
INSERT INTO `cella` VALUES (1,1000000001,1,1,1,'2021-01-14 15:08:15','2021-01-14 15:08:15','X3OnJF5SMsKyxmQ3Rn5NbLvX0uhejaOp',NULL);
/*!40000 ALTER TABLE `cella` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe_locazione`
--

DROP TABLE IF EXISTS `classe_locazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe_locazione` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe_locazione`
--

LOCK TABLES `classe_locazione` WRITE;
/*!40000 ALTER TABLE `classe_locazione` DISABLE KEYS */;
INSERT INTO `classe_locazione` VALUES (1,'scaffalatura','2018-11-22 07:38:49','2019-01-15 11:00:23'),(2,'zona a terra regolata','2018-11-22 07:39:11','2019-01-15 11:00:38'),(3,'zona a terra libera','2018-11-22 15:23:59','2019-01-15 11:00:44');
/*!40000 ALTER TABLE `classe_locazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classe_pallet`
--

DROP TABLE IF EXISTS `classe_pallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classe_pallet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `label` varchar(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classe_pallet`
--

LOCK TABLES `classe_pallet` WRITE;
/*!40000 ALTER TABLE `classe_pallet` DISABLE KEYS */;
INSERT INTO `classe_pallet` VALUES (1,'standard','2018-11-28 13:54:27','2018-11-28 13:54:27'),(2,'picking','2018-11-28 13:54:27','2019-02-15 15:44:13'),(3,'esaurito','2018-11-28 13:54:27','2019-02-15 15:44:25');
/*!40000 ALTER TABLE `classe_pallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `referenceCode` int(24) DEFAULT NULL,
  `nome` varchar(128) DEFAULT NULL,
  `cognome` varchar(128) DEFAULT NULL,
  `codice_fiscale` char(128) DEFAULT NULL,
  `partita_iva` char(128) DEFAULT NULL,
  `azienda` varchar(128) DEFAULT NULL,
  `indirizzo` text,
  `citta` varchar(128) DEFAULT NULL,
  `stato` varchar(128) DEFAULT NULL,
  `provincia` varchar(128) DEFAULT NULL,
  `zip_code` varchar(25) DEFAULT NULL,
  `note` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-13 10:46:58','2021-01-13 10:46:58','',NULL),(2,110303,NULL,NULL,'05738000826','05738000826','ELETTROMECCANICA ARTIGIANA PM CLI 9 PEDONE','CORSO DEI MILLE, nr.427/A','05738000826',' ',NULL,'90139',NULL,'2021-02-15 15:28:31','2021-02-15 15:28:31','l0qfsvSjByzMGwZj84LoBZV0TwaJA4S1',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collo`
--

DROP TABLE IF EXISTS `collo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collo` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `codice` char(20) NOT NULL,
  `articolo_id` int(16) NOT NULL,
  `articolo_quantita` int(10) NOT NULL,
  `nome` varchar(32) NOT NULL,
  `descrizione` text,
  `note` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collo`
--

LOCK TABLES `collo` WRITE;
/*!40000 ALTER TABLE `collo` DISABLE KEYS */;
/*!40000 ALTER TABLE `collo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configurazione_pallet`
--

DROP TABLE IF EXISTS `configurazione_pallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configurazione_pallet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `codice_collo` char(20) DEFAULT NULL,
  `codice_articolo` char(20) DEFAULT NULL,
  `quantità` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pallettizzazione_id` int(10) NOT NULL,
  `collo_id` int(11) NOT NULL,
  `articolo_id` int(11) NOT NULL,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurazione_pallet`
--

LOCK TABLES `configurazione_pallet` WRITE;
/*!40000 ALTER TABLE `configurazione_pallet` DISABLE KEYS */;
INSERT INTO `configurazione_pallet` VALUES (1,NULL,'11124596',10,'2021-01-26 09:18:52','2021-01-26 09:18:52',1,0,1,'F2TV8T9pvR0DYkCmgjyQk5J3EXGJ4vHk',NULL),(2,NULL,'MEDICAL001',1,'2021-02-15 14:52:34','2021-02-15 14:52:34',2,0,2,'A5YW5KLehGv3U9e7I47JqRLmCUoOCZUs',NULL),(3,NULL,'MEDICAL002',2,'2021-02-15 14:52:34','2021-02-15 14:52:34',3,0,3,'3otsdhpL7FnOTw9uSYDh9yn89Pz9Kw3S',NULL),(4,NULL,'ARTF00002000001',2,'2021-02-15 14:52:35','2021-02-15 14:52:35',4,0,4,'lNenWSEPT94s6Lj4T7AWU21Upa3tfRl9',NULL),(5,NULL,NULL,45,'2021-02-17 16:15:03','2021-02-17 16:15:03',5,0,0,'tLFZDx3bh2H7eejLSSuoM0iyNJqpz3SI',NULL),(6,NULL,NULL,45,'2021-02-17 16:15:50','2021-02-17 16:15:50',5,0,0,'jS8lvl3nkJBCoTh86tq1o2DT2E5v5BSt',NULL),(7,NULL,NULL,45,'2021-02-19 08:35:10','2021-02-19 08:35:10',5,0,0,'CCwzvD2YWgQIZQOiPRFAtWMKX2WbEnQL',NULL),(8,NULL,NULL,45,'2021-02-19 08:40:12','2021-02-19 08:40:12',5,0,0,'jQdCc0PrbYoFU7BXVcBy2MLPZO0qUA6k',NULL),(9,NULL,NULL,45,'2021-02-19 08:45:38','2021-02-19 08:45:38',5,0,0,'NM8NLlia2Z9Q2KIuXkP3TxgoyQWmFycN',NULL),(10,NULL,NULL,45,'2021-02-19 08:48:13','2021-02-19 08:48:13',5,0,0,'JJ4fhwqOEocbNq5ok1d8Uc4MWmtf4lqs',NULL),(11,NULL,NULL,45,'2021-02-19 08:49:18','2021-02-19 08:49:18',5,0,0,'ekiDaZgNO3rioMUlwxDtnUahJwUavoUJ',NULL),(12,NULL,NULL,45,'2021-02-19 08:49:49','2021-02-19 08:49:49',5,0,0,'680IRJ7Dc0Gfl8mPLsn5pjjfHY90rC04',NULL),(13,NULL,NULL,45,'2021-02-19 08:50:52','2021-02-19 08:50:52',5,0,0,'WK8IQSmv8wMWEjOCy9tpy9se9nEXjlvm',NULL),(14,NULL,NULL,45,'2021-02-19 13:34:15','2021-02-19 13:34:15',6,0,0,'rPlSGDienDBddIq5kEvJAACQBJdcylPA',NULL),(15,NULL,'codarticolo1',45,'2021-02-19 13:38:59','2021-02-19 13:38:59',7,0,5,'wPUtmtWFrkS6zV8OaXc9jPxKUA0rxpsO',NULL),(16,NULL,NULL,45,'2021-02-25 09:52:08','2021-02-25 09:52:08',8,0,0,'6j6l1x9r47hrC7MHOe2c5r5Zxhy169dc',NULL),(17,NULL,NULL,45,'2021-02-25 09:54:58','2021-02-25 09:54:58',9,0,0,'J1vagJNromCa99JqB3lTFwRrmC5oLQL7',NULL),(18,NULL,'40X56X45',45,'2021-02-25 09:57:32','2021-02-25 09:57:32',10,0,7,'8icYQyfrh48BtgNrgz6ndFIgeXsSna0L',NULL),(19,NULL,'try',44,'2021-03-01 11:13:45','2021-03-01 11:13:45',11,0,8,'vuHXIn8miR7w4VgSbprfUQLkfLjIfzub',NULL),(20,NULL,'prova',33,'2021-03-01 11:13:50','2021-03-01 11:13:50',12,0,9,'VDfjluhe0FosEvqP9PHGxRu8i3hPzT8X',NULL);
/*!40000 ALTER TABLE `configurazione_pallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dimensione_pallet`
--

DROP TABLE IF EXISTS `dimensione_pallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dimensione_pallet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `altezza` int(10) NOT NULL,
  `larghezza` int(10) NOT NULL,
  `profondità` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dimensione_pallet`
--

LOCK TABLES `dimensione_pallet` WRITE;
/*!40000 ALTER TABLE `dimensione_pallet` DISABLE KEYS */;
INSERT INTO `dimensione_pallet` VALUES (1,100,100,120,'2021-01-12 16:01:47','2021-01-12 16:01:47','init',NULL),(2,1,1,1,'2021-01-26 09:18:00','2021-01-26 09:18:00','lQirwd58G4k5gsZPKQMg0xQNablbrHSC',NULL);
/*!40000 ALTER TABLE `dimensione_pallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingresso_merce`
--

DROP TABLE IF EXISTS `ingresso_merce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingresso_merce` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `nome` varchar(72) DEFAULT NULL,
  `note` text,
  `stato` enum('aperto','confermato') DEFAULT NULL,
  `priorita` int(1) NOT NULL COMMENT '0:bassa, 1:normale, 2:alta',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `barcode_flag` tinyint(1) NOT NULL DEFAULT '0',
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresso_merce`
--

LOCK TABLES `ingresso_merce` WRITE;
/*!40000 ALTER TABLE `ingresso_merce` DISABLE KEYS */;
INSERT INTO `ingresso_merce` VALUES (1,'ingr','','confermato',1,'2021-01-26 09:19:02','2021-01-26 09:19:12',0,'HI28S2wMKlH1viBiO4YpOY9T28P8TTbQ','LxzXoVPEgGBk7k8ocb79qbqqhrQgXTVq'),(2,'Numero  78788','MAGNETI MARELLI AFTER MARKET PARTS AND SERVICES S.P.A.','confermato',1,'2020-02-19 23:00:00','2021-02-15 14:52:34',0,'lFwE8hMx0eqDbAfMExrJRZ47CxZ4StqM',NULL),(3,'h','','aperto',1,'2021-02-19 13:43:19','2021-02-19 13:43:19',0,'Rz5vqHfqqzPiecpMVcIiI8yfgxszCuQS',NULL);
/*!40000 ALTER TABLE `ingresso_merce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_ingresso_merce`
--

DROP TABLE IF EXISTS `inventario_ingresso_merce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_ingresso_merce` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `pallettizzazione_id` int(10) DEFAULT NULL,
  `lotto_id` bigint(20) DEFAULT NULL,
  `note` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `quantita` int(10) NOT NULL,
  `ingresso_merce_id` int(16) NOT NULL,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_iim_p` (`pallettizzazione_id`),
  KEY `fk_iim_im` (`ingresso_merce_id`),
  CONSTRAINT `fk_iim_im` FOREIGN KEY (`ingresso_merce_id`) REFERENCES `ingresso_merce` (`id`),
  CONSTRAINT `fk_iim_p` FOREIGN KEY (`pallettizzazione_id`) REFERENCES `pallettizzazione` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_ingresso_merce`
--

LOCK TABLES `inventario_ingresso_merce` WRITE;
/*!40000 ALTER TABLE `inventario_ingresso_merce` DISABLE KEYS */;
INSERT INTO `inventario_ingresso_merce` VALUES (1,1,0,'','2021-01-26 09:19:09','2021-01-26 09:19:09',1,1,'VZRYLFptGvuIcJX51rN9x7pLP3Z7VfoZ',NULL),(2,2,0,NULL,'2021-02-15 14:52:34','2021-02-15 14:52:34',1,2,'Q1RJjqTYrR3SH9TQbkpEnASJr9WTNxLQ',NULL),(3,3,0,NULL,'2021-02-15 14:52:34','2021-02-15 14:52:34',2,2,'7RfORFNrwsqKqCPZkW2sSbILFiPCQarf',NULL),(4,4,0,NULL,'2021-02-15 14:52:35','2021-02-15 14:52:35',2,2,'x5zJlXk4b547aioMBcowxvJ6qmIDo70S',NULL);
/*!40000 ALTER TABLE `inventario_ingresso_merce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_spedizione`
--

DROP TABLE IF EXISTS `inventario_spedizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_spedizione` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `spedizione_id` int(16) NOT NULL,
  `pallet_id` int(16) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `da_cella` int(11) NOT NULL,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_spedizione`
--

LOCK TABLES `inventario_spedizione` WRITE;
/*!40000 ALTER TABLE `inventario_spedizione` DISABLE KEYS */;
INSERT INTO `inventario_spedizione` VALUES (1,1,42,'2021-02-26 14:29:15','2021-02-26 14:29:15',1,'Ge8I1qhMZPefHFG6eQpwXRPNAjcMovyI',NULL);
/*!40000 ALTER TABLE `inventario_spedizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario_spedizione_virtuale`
--

DROP TABLE IF EXISTS `inventario_spedizione_virtuale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario_spedizione_virtuale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spedizione_id` int(11) NOT NULL,
  `articolo_id` int(11) DEFAULT NULL,
  `collo_id` int(11) DEFAULT NULL,
  `quantita` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_spedizione_virtuale`
--

LOCK TABLES `inventario_spedizione_virtuale` WRITE;
/*!40000 ALTER TABLE `inventario_spedizione_virtuale` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario_spedizione_virtuale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labelsettings`
--

DROP TABLE IF EXISTS `labelsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labelsettings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `heightmm` double(4,2) unsigned DEFAULT NULL,
  `widthmm` double(4,2) unsigned DEFAULT NULL,
  `heightinches` double(4,2) unsigned DEFAULT NULL,
  `widthinches` double(4,2) unsigned DEFAULT NULL,
  `colorTextHex` char(6) DEFAULT NULL,
  `colorBgHex` char(6) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labelsettings`
--

LOCK TABLES `labelsettings` WRITE;
/*!40000 ALTER TABLE `labelsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `labelsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locazione`
--

DROP TABLE IF EXISTS `locazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locazione` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `label` varchar(30) NOT NULL,
  `codice` varchar(20) NOT NULL,
  `numero_righe` int(2) NOT NULL,
  `numero_colonne` int(3) NOT NULL,
  `dimensione_vano_pallet_id` int(10) NOT NULL,
  `note` text,
  `classe_locazione_id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locazione`
--

LOCK TABLES `locazione` WRITE;
/*!40000 ALTER TABLE `locazione` DISABLE KEYS */;
INSERT INTO `locazione` VALUES (1,'fgfgfgfg','11',1,1,0,'no',3,'2021-01-14 15:08:15','2021-01-14 15:08:15','RCvgdHNccwWE9mNARJL6d1J3f5mFyjf3',NULL);
/*!40000 ALTER TABLE `locazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (1,'Bm15','prova','1982.168.1.23','2021-01-13 09:58:03','2021-01-13 14:02:41'),(2,'BMB','provaedit','192.168.1.233','2021-01-13 10:01:52','2021-02-26 15:58:08');
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine_history`
--

DROP TABLE IF EXISTS `machine_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machine_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `machine_id` int(11) NOT NULL,
  `values` text,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `machine_id` (`machine_id`),
  CONSTRAINT `machine_history_ibfk_1` FOREIGN KEY (`machine_id`) REFERENCES `machine` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine_history`
--

LOCK TABLES `machine_history` WRITE;
/*!40000 ALTER TABLE `machine_history` DISABLE KEYS */;
INSERT INTO `machine_history` VALUES (6,2,'{\"value\":{\"SetDescJob\":\"22\",\"SetRecMld\":\"nome ricetta\",\"SetDescPrt\":\"prova\",\"SetDescMat\":\"HDPE\",\"ActCntPrtLot\":\"33\",\"SetCntPrt\":\"125\",\"ActCntPrt\":\"12\",\"id\":\"2\",\"SetDescColor\":\"black\"}}','2021-01-25 16:29:33','2021-03-01 11:20:42'),(7,1,'{\"value\": {\"SetDescJob\":\"22\",\"SetRecMld\":\"cassettanera\",\"SetDescPrt\":\"try\",\"SetDescMat\":\"PP\",\"ActCntPrtLot\":\"44\",\"SetCntPrt\":\"125\",\"ActCntPrt\":\"12\",\"id\":\"1\",\"SetDescColor\":\"red\"}}','2021-01-26 09:03:43','2021-03-01 11:20:42');
/*!40000 ALTER TABLE `machine_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo_ordine`
--

DROP TABLE IF EXISTS `modulo_ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modulo_ordine` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `pallettizzazione_id` int(10) DEFAULT NULL,
  `articolo_id` int(11) DEFAULT NULL,
  `collo_id` int(11) DEFAULT NULL,
  `spedizione_id` int(16) NOT NULL,
  `quantita` int(10) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo_ordine`
--

LOCK TABLES `modulo_ordine` WRITE;
/*!40000 ALTER TABLE `modulo_ordine` DISABLE KEYS */;
INSERT INTO `modulo_ordine` VALUES (1,NULL,0,NULL,1,2,'2021-02-15 15:28:31','2021-02-15 15:28:31','EaxVxp03eBhEbLOpfS23zJqT8EahgdlW',NULL),(2,NULL,0,NULL,1,3,'2021-02-15 15:28:31','2021-02-15 15:28:31','eqiajwKRAcCal6adQQbXAQYIre6cfWqO',NULL),(3,10,NULL,NULL,1,0,'2021-02-26 14:28:52','2021-02-26 14:29:15','A3ljBSIawCu47rjv9vDjwswOcTrb7Fn2','R2abEVcIVRX7vKKBbTCeUpYtPkyQ6lFr');
/*!40000 ALTER TABLE `modulo_ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimentazione`
--

DROP TABLE IF EXISTS `movimentazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movimentazione` (
  `id` int(24) NOT NULL AUTO_INCREMENT,
  `pallet_id` int(16) NOT NULL,
  `stato` enum('in movimento','completato') NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimentazione`
--

LOCK TABLES `movimentazione` WRITE;
/*!40000 ALTER TABLE `movimentazione` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimentazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pallet`
--

DROP TABLE IF EXISTS `pallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pallet` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `barcode` int(10) NOT NULL,
  `classe_id` int(10) NOT NULL,
  `pallettizzazione_id` int(10) DEFAULT NULL,
  `lotto_id` int(20) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stato` int(2) NOT NULL DEFAULT '1' COMMENT '0: in magazzino, 1: in coda, 2: in rettifica, 3: in transito, 4: in ordine, 5: in picking',
  `inventario_ingresso_merce_id` int(16) DEFAULT NULL,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pallet`
--

LOCK TABLES `pallet` WRITE;
/*!40000 ALTER TABLE `pallet` DISABLE KEYS */;
INSERT INTO `pallet` VALUES (1,2000000001,1,1,0,'2021-01-26 09:19:12','2021-01-26 09:19:12',1,1,'9vRX3dDCZBxxVF56R5UBMN41ZCdN4qwy','akax2B1f9EeMTKF0z1oTbfmBvnPbv7hk'),(2,2000000002,1,2,NULL,'2021-02-15 14:52:34','2021-02-15 14:52:34',1,2,'MLb6GAj2ROc0PXos2v2RnUlR4cbnNvwW','8svOvaRCp0waf5DT9SmqwqCAp9Z6SGzx'),(3,2000000003,1,3,NULL,'2021-02-15 14:52:35','2021-02-15 14:52:35',1,3,'5MFjQ6ZZoR204qFuKRae5uRS8WCYMKoy','1zt1zPRSMWGlrnHjc041CjKvGYeT3ApA'),(4,2000000004,1,4,NULL,'2021-02-15 14:52:35','2021-02-15 14:52:35',1,4,'Awgx47D1imhN3UNhTg1wmRY6KDe8ZKbs','DEDS9BJHhIXNtuWfjuebVPjZ7RTTYzuE'),(5,2000000005,1,5,NULL,'2021-02-17 16:15:03','2021-02-17 16:15:03',1,NULL,'NmlgCiDH6e6JGN7aUhj7UiUOlBnAXkxm',NULL),(6,2000000006,1,5,NULL,'2021-02-17 16:15:50','2021-02-17 16:15:50',1,NULL,'fucCoYnEaeoUKl0j5PRA7rcZ9u1DbjHA',NULL),(7,2000000007,1,5,NULL,'2021-02-19 08:35:10','2021-02-19 08:35:10',1,NULL,'eAM9ySjYtlhFS4FjIn9ksYLcaUOn7Rks',NULL),(8,2000000008,1,5,NULL,'2021-02-19 08:40:12','2021-02-19 08:40:12',1,NULL,'xgBowMEWYkuoHKv3sXtzGKH833JGkGJo',NULL),(9,2000000009,1,5,NULL,'2021-02-19 08:45:38','2021-02-19 08:45:38',1,NULL,'zxqX9kpp0Wv7REaR8gddsRHFGFbZWOuV',NULL),(10,2000000010,1,5,NULL,'2021-02-19 08:48:13','2021-02-19 08:48:13',1,NULL,'T6vwgxj8j169uH61onwmRF8wavgTfg8x',NULL),(11,2000000011,1,5,NULL,'2021-02-19 08:49:18','2021-02-19 08:49:18',1,NULL,'LVWIdkPRc9THGkl2XASXYy2ZyZfCslxb',NULL),(12,2000000012,1,5,NULL,'2021-02-19 08:49:49','2021-02-19 08:49:49',0,NULL,'59c9SVJexH0bSFtlBDu3nCwrwJc1x45U','wevK4HvwnMlwM2or2kDJP0zrH2H962Sn'),(13,2000000013,1,5,NULL,'2021-02-19 08:50:52','2021-02-19 08:50:53',0,NULL,'u6ckAyfmLxqm5c3cnzCI0r4bSuxBF6O1','Rlfu7CN0iNIfdgDyVHt3J9n4NEQxUvyq'),(14,2000000014,1,5,NULL,'2021-02-19 09:02:52','2021-02-19 09:02:53',0,NULL,'EpkxKGk06rJfqPXrOm9PJtgjtD2A56nF','0qzSrJUWYaS3NQe4LIzN9oP9A2hT0FZa'),(15,2000000015,1,6,NULL,'2021-02-19 13:34:15','2021-02-19 13:34:16',0,NULL,'uDAG9JINBZ1MuuR7KgjyDjjjeBtt7cbs','o4Mq2kdb8epOFgAdMdEfTGAigI09cebt'),(16,2000000016,1,6,NULL,'2021-02-19 13:34:49','2021-02-19 13:34:50',0,NULL,'hEhJLiSvusijR03Rb8dTzq3WRQMiCINk','zrMy7mbAgmC22vy38Bg2PP8K909ICeiA'),(17,2000000017,1,7,NULL,'2021-02-19 13:38:59','2021-02-19 13:38:59',0,NULL,'xVkcVna88bYIbEoOobe5y2lrxtLz2SUm','DqPx3Qzp7M4GWgbBvOJwVVekhpvVzaXT'),(18,2000000018,1,7,NULL,'2021-02-19 13:46:40','2021-02-19 13:46:41',0,NULL,'HyXT303GkfNrwbdFPTJJ0cJNPxwWBNXG','ShvdKnzY6ErSgJZDSzScI5RUDo7O4wcO'),(19,2000000019,1,7,NULL,'2021-02-19 13:47:31','2021-02-19 13:47:32',0,NULL,'BEdrt6psN0Edn8GRVmNKtBTmq1gn0fWU','dAJB99ORIOOZg7k55BXk1jeH6jPaCFEC'),(20,2000000020,1,7,NULL,'2021-02-19 13:49:29','2021-02-19 13:49:30',0,NULL,'IhucqqHR4KuthcIc1DklrZZRLXLHfdiV','YPEgXAXvlhpVhnobS4Y2pzlLTFpKKJMR'),(21,2000000021,1,8,NULL,'2021-02-25 09:52:08','2021-02-25 09:52:09',0,NULL,'ESiZUM9jJeCmhLbVuJDNxlbRLr2mw77x','xPtNlhPdPn19ADfITaBbbEdGz9xM592T'),(22,2000000022,1,7,NULL,'2021-02-25 09:53:46','2021-02-25 09:53:47',0,NULL,'QQ7yakbYtk5BwZP4ja1vxXuGXb6vXLPc','8V0AXC0JxxxhW42gKMM1eIInpfxnNtLL'),(23,2000000023,1,9,NULL,'2021-02-25 09:54:58','2021-02-25 09:54:58',0,NULL,'KplCVVVDhorhgVFZas9F7IyRv384Gagj','zY2JfRPnjFfiTzrM2emeoARRgMyLenI7'),(24,2000000024,1,9,NULL,'2021-02-25 09:56:00','2021-02-25 09:56:01',0,NULL,'ROWgMjeuEFU2pBUlbkpTuav2kGZZVJHV','ItPI402s8UYODnmM7nmC0p8jpeeJzdd6'),(25,2000000025,1,9,NULL,'2021-02-25 09:56:30','2021-02-25 09:56:30',0,NULL,'HKYN90pJEMTYOc9TF5MESVsjISEVKmbe','QAwTMKtlR4LxJ99iWv3ooftHeLh2Lacr'),(26,2000000026,1,10,NULL,'2021-02-25 09:57:32','2021-02-25 09:57:32',0,NULL,'DFVcOlrY6d5qWs75tW3ThYnpBGZg3nUQ','pWLZ3JzNV3qPNhsQmsZPffNJF6oG9wkX'),(27,2000000027,1,10,NULL,'2021-02-25 10:09:39','2021-02-25 10:09:40',0,NULL,'aimf8R88QrkmE1esso4nbNqrmbLIxHCR','57ozfPgWSFIDZid2XhEaY55hJHDPUzRO'),(28,2000000028,1,10,NULL,'2021-02-25 10:10:11','2021-02-25 10:10:11',0,NULL,'DUa68Pt08LOC8B3KTVUQmM3Thli0p0Ut','QqryMpr8AtWfa8l9DcvNcUhi2sY4RQa1'),(29,2000000029,1,10,NULL,'2021-02-25 10:10:39','2021-02-25 10:10:39',0,NULL,'OSB5MOzBQniJKFdX99pf6ywCWd5S2xCe','8TXgIkZdJdU51ZTuEVnHr7NQQSSZ1Km8'),(30,2000000030,1,10,NULL,'2021-02-25 10:11:01','2021-02-25 10:11:02',0,NULL,'y9V3lF19AK4kOLifSINLvzdrkbz5YtYM','n7ZKEtyE8cH4mwB6bDAyYVhHpcPgySHr'),(31,2000000031,1,10,NULL,'2021-02-25 10:11:42','2021-02-25 10:11:42',0,NULL,'EkrgH64HRChKpYs1yErNmf0XKsaovoav','bWtmwilwrAJkbawupgBCaXy7kc12eWDJ'),(32,2000000031,1,10,NULL,'2021-02-25 10:11:42','2021-02-25 10:11:42',0,NULL,'O92pYIjHehN4VOpMPWLCYtU5NFRmzvCu','eBNQUhs0dJhSeNZoPwd2DlJBcTgN11kd'),(33,2000000032,1,10,NULL,'2021-02-25 10:11:54','2021-02-25 10:11:54',0,NULL,'rBfib3ut5VCuh5cQKPfvOcudOfr7jMkp','2yApLthPJfG6YMzhA6MdCBpvXUNEaIR0'),(34,2000000033,1,10,NULL,'2021-02-25 10:20:21','2021-02-25 10:20:22',0,NULL,'w0REHdNno4e5CCASLDiMVjvLGCRQHhyg','xHCnkbhdHr1GAtiqTpnvUvYI2sEkUrQG'),(35,2000000034,1,10,NULL,'2021-02-25 10:21:54','2021-02-25 10:21:55',0,NULL,'PT8dE0JktU4yw19lJmKFgcdbSpxha7Kn','erPmOQM85yxSXHfZpx7jZ8pR2uF3sSn4'),(36,2000000035,1,10,NULL,'2021-02-25 10:22:34','2021-02-25 10:22:35',0,NULL,'NeIYDvJzQMQFHMC2oBcHoxwKugqDTOG8','ZCsDja9fRBbBSJHrSAJZOPd74lzHeTjr'),(37,2000000036,1,10,NULL,'2021-02-25 10:23:02','2021-02-25 10:23:03',0,NULL,'lmqCPc4Lgzg38DzswY0tQnfw5g4J7WvU','8fOBuU7UOvxgydTJcxnU5maXOmnwctWj'),(38,2000000037,1,10,NULL,'2021-02-25 10:23:05','2021-02-25 10:23:05',0,NULL,'5576rekO555CMachkqLMg2ee8S63HMkk','lZt1d77MBuaihR1aOsPrPpN6yfDntcBx'),(39,2000000038,1,10,NULL,'2021-02-25 10:23:11','2021-02-25 10:23:11',0,NULL,'90WbvtW04YGfWPa8Iba9uDSB3tICIBgd','46OH8kzR3G7bEyvuvPNCfVscw3dwVvig'),(40,2000000039,1,10,NULL,'2021-02-25 10:23:13','2021-02-25 10:23:13',0,NULL,'id5r6HR4INH5KKu5ckVsytLZWYaPoJGX','qByj2JfaRbgpcWgo09F2WrefN5xitdWj'),(41,2000000040,1,10,NULL,'2021-02-26 08:52:00','2021-02-26 08:52:01',0,NULL,'gEAaYtBq1qmU2uwO1D3NDOpNX4SLtMS7','QlBFfeL7ylHNkwM2rx0qfX4QTF8lvJX6'),(42,2000000041,1,10,NULL,'2021-02-26 08:56:32','2021-02-26 14:29:15',4,NULL,'7hDzz9DrYaZrfLOcAcehiN6h6Gh4Equu','yKLJsjT8TkYPd9p7BB5jCe7H7dCQcLWJ'),(43,2000000042,1,10,NULL,'2021-02-26 11:04:56','2021-02-26 11:04:56',0,NULL,'Q3o6MRJ6kU2chg0QakX5mefGA1Y4X0G9','5FfVCYs7iQIAHmYmmxNd1pyShYDaCLTn'),(44,2000000043,1,10,NULL,'2021-02-26 11:05:34','2021-02-26 11:05:34',0,NULL,'PDFoTFJgnc0E6TB9MvR8reRAoqGqTNqj','VGUPCWzj3jaxhZia7CNopojNP4LZSkMd'),(45,2000000044,1,10,NULL,'2021-02-26 15:34:33','2021-02-26 15:34:33',0,NULL,'4UrrJgBKLNVtbZ0kfH0LG5YZffByhshk','mSC0qZ9amnAlsdoGeAJsABfuBdo5xmCU'),(46,2000000045,1,10,NULL,'2021-02-26 16:42:28','2021-02-26 16:42:29',0,NULL,'PZ1r7XmyKQwxvqf05bX6dumKYRry4RB2','w1ALvyCEekHr3wHcT7DV1Es4PqlkzGiE'),(47,2000000046,1,10,NULL,'2021-03-01 10:45:28','2021-03-01 10:45:29',0,NULL,'fQc2xeUNOZOd7gqZjHrhEsx1mpXNEsqE','kMimQrynwmyx7JDMVbnR2DyGOu8BJ149'),(48,2000000047,1,10,NULL,'2021-03-01 10:52:19','2021-03-01 10:52:20',0,NULL,'XTXVBfIpmD5o4zYu4VtPW84vykfsqH1k','atBCAnlLdEp5uUdUC7uLNQrzaJ37pDol'),(49,2000000048,1,11,NULL,'2021-03-01 11:13:45','2021-03-01 11:13:45',0,NULL,'gdgli9gbKkT0t3yIm8vBWex2aXFrlxre','Yo5kWnKcykAeSfrIz93K5FuHNEfoMqcI'),(50,2000000049,1,12,NULL,'2021-03-01 11:13:50','2021-03-01 11:13:51',0,NULL,'RXlnWg3CVCCJqxl27VSuY2Eca04Fbhuc','RN4A3P5iGlSV8znvyhCNyyGnw27UVTbY'),(51,2000000050,1,11,NULL,'2021-03-01 11:15:01','2021-03-01 11:15:02',0,NULL,'1kpSz1XYAQfslUF6nElUSEznmlbwJpNh','L7YqKMw5s9mGOx83thazEnevyflTli0A'),(52,2000000051,1,11,NULL,'2021-03-01 11:15:56','2021-03-01 11:15:57',0,NULL,'xBLhIF65tHTEr3bvWZEfTYGLgwNQsicq','rMYJ8YsLjBbbBQWNcIe73J3dn9x6U3fB'),(53,2000000052,1,12,NULL,'2021-03-01 11:15:58','2021-03-01 11:15:58',0,NULL,'N4zBJhKaWc69wdH3rFX0a4I5RUOSkv2K','si3XHMbCRMCAay6zsWmlFLIDbhpdtdr4'),(54,2000000053,1,11,NULL,'2021-03-02 16:32:06','2021-03-02 16:32:07',0,NULL,'vuUMcxNrtOxzkma05zKif4YWyFnXcD5b','L9EbkgEIdtebGVjn2YWiqvRVeFHH9Jfr');
/*!40000 ALTER TABLE `pallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pallettizzazione`
--

DROP TABLE IF EXISTS `pallettizzazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pallettizzazione` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `label` varchar(64) NOT NULL,
  `descrizione` text NOT NULL,
  `note` text,
  `dimensione_pallet_id` int(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pallettizzazione`
--

LOCK TABLES `pallettizzazione` WRITE;
/*!40000 ALTER TABLE `pallettizzazione` DISABLE KEYS */;
INSERT INTO `pallettizzazione` VALUES (1,'fgfgfgfg','Manutenzione ordinaria','no',2,'2021-01-26 09:18:00','2021-01-26 09:18:00','XOpcd2OgpzVTL0qfJeOyfP3iGicTUV8A',NULL),(2,'PALL_MEDICAL001','MEDICAL 1','',1,'2021-02-15 14:52:34','2021-02-15 14:52:34','U5tFB47l9giRfs0ARqhjocwdkvUYSckA',NULL),(3,'PALL_MEDICAL002','MEDICAL 2','',1,'2021-02-15 14:52:34','2021-02-15 14:52:34','FnDsnXoN5VfMjpKgE3bFVbSsxvJB9c9P',NULL),(4,'PALL_ARTF00002000001','CHIAVE INGLESE','',1,'2021-02-15 14:52:35','2021-02-15 14:52:35','iGPDN87xctXynO77TwwdjQZO8rzlUiWA',NULL),(5,'label','descrizione','note',1,'2021-02-17 16:15:03','2021-02-17 16:15:03','vShFKbxYVowRfuLjaYCin7DiUBNrdbIM',NULL),(6,'PAL_codarticolo','descrizione','note',1,'2021-02-19 13:34:15','2021-02-19 13:34:15','ZILc4vK0OTl2LNcr7lCjOa2ndghIDfM9',NULL),(7,'PAL_codarticolo1','descrizione','note',1,'2021-02-19 13:38:59','2021-02-19 13:38:59','xRDGqJbhFsO9G8IEZ9ZMRwdAWdmZVYhb',NULL),(8,'PAL_codearticolo1','descrizione','note',1,'2021-02-25 09:52:08','2021-02-25 09:52:08','kZYeOpm6uRc68mGTkH0qVf8rMiW1LylR',NULL),(9,'PAL_40X34X45','descrizione','note',1,'2021-02-25 09:54:58','2021-02-25 09:54:58','EIwvpjEows3LzQfO3QRX0UMOhMcCSg27',NULL),(10,'PAL_40X56X45','descrizione','note',1,'2021-02-25 09:57:32','2021-02-25 09:57:32','sih2wtaAROQ2ClgeZ8TkqaSORWrmSM7v',NULL),(11,'PAL_try','descrizione','note',1,'2021-03-01 11:13:45','2021-03-01 11:13:45','0MacwjYWIfX6mVmcuwmN7EDIDmGAbSvV',NULL),(12,'PAL_prova','descrizione','note',1,'2021-03-01 11:13:50','2021-03-01 11:13:50','wkMGPiN9pHwNSA6yIOpcrdn3YJ7UrCJr',NULL);
/*!40000 ALTER TABLE `pallettizzazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `printersettings`
--

DROP TABLE IF EXISTS `printersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `printersettings` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `driver` tinyint(1) NOT NULL DEFAULT '0',
  `printer` varchar(32) NOT NULL,
  `path` text,
  `port` int(5) unsigned DEFAULT NULL,
  `ip` int(4) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `printersettings`
--

LOCK TABLES `printersettings` WRITE;
/*!40000 ALTER TABLE `printersettings` DISABLE KEYS */;
INSERT INTO `printersettings` VALUES (1,0,'zebra',NULL,9100,3232236015,'2019-02-12 13:46:55');
/*!40000 ALTER TABLE `printersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `label` varchar(32) NOT NULL,
  `activity` text NOT NULL,
  `user_id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (1,'LOGIN','',1,'2021-01-13 10:00:55'),(2,'LOGIN','',1,'2021-01-13 10:29:35'),(3,'LOGIN','',1,'2021-01-13 10:46:43'),(4,'LOGIN','',1,'2021-01-13 10:49:19'),(5,'LOGIN','',1,'2021-01-13 10:52:26'),(6,'LOGIN','',1,'2021-01-13 13:31:07'),(7,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:34:06'),(8,'LOGIN','',1,'2021-01-13 13:40:51'),(9,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:41:00'),(10,'LOGIN','',1,'2021-01-13 13:41:50'),(11,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:42:01'),(12,'LOGIN','',1,'2021-01-13 13:43:53'),(13,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:44:13'),(14,'LOGIN','',1,'2021-01-13 13:47:52'),(15,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:48:00'),(16,'LOGIN','',1,'2021-01-13 13:50:00'),(17,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:50:11'),(18,'LOGIN','',1,'2021-01-13 13:51:31'),(19,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:51:40'),(20,'LOGIN','',1,'2021-01-13 13:57:01'),(21,'LOGIN','',1,'2021-01-13 13:58:10'),(22,'INSERIMENTO','creazione macchina #8',1,'2021-01-13 13:58:19'),(23,'LOGIN','',1,'2021-01-13 14:00:43'),(24,'MODIFICA','modifica macchina #1',1,'2021-01-13 14:00:54'),(25,'LOGIN','',1,'2021-01-13 14:02:29'),(26,'MODIFICA','modifica macchina #1',1,'2021-01-13 14:02:41'),(27,'LOGIN','',1,'2021-01-13 14:09:47'),(28,'MODIFICA','modifica macchina #8',1,'2021-01-13 14:10:00'),(29,'INSERIMENTO','creazione macchina #9',1,'2021-01-13 14:10:31'),(30,'LOGIN','',1,'2021-01-14 14:25:43'),(31,'LOGIN','',1,'2021-01-14 14:44:03'),(32,'IMPOSTAZIONI','creazione utente #0',1,'2021-01-14 14:44:36'),(33,'IMPOSTAZIONI','creazione utente #4',1,'2021-01-14 14:45:27'),(34,'LOGOUT','',1,'2021-01-14 14:45:32'),(35,'LOGIN','',4,'2021-01-14 14:50:40'),(36,'LOGOUT','',4,'2021-01-14 14:50:44'),(37,'LOGIN','',4,'2021-01-14 14:50:51'),(38,'IMPOSTAZIONI','modifica utente #3',4,'2021-01-14 14:51:08'),(39,'IMPOSTAZIONI','modifica utente #2',4,'2021-01-14 14:51:15'),(40,'IMPOSTAZIONI','modifica utente #1',4,'2021-01-14 14:51:20'),(41,'IMPOSTAZIONI','creazione utente #5',4,'2021-01-14 14:51:49'),(42,'LOGIN','',1,'2021-01-14 15:05:08'),(43,'LOGIN','',1,'2021-01-14 15:06:28'),(44,'INSERIMENTO','creazione locazione #1',1,'2021-01-14 15:08:15'),(45,'LOGIN','',1,'2021-01-15 15:59:46'),(46,'LOGIN','',1,'2021-01-18 10:31:00'),(47,'LOGIN','',1,'2021-01-18 13:53:28'),(48,'LOGOUT','',1,'2021-01-18 13:54:33'),(49,'LOGIN','',1,'2021-01-18 13:54:37'),(50,'LOGIN','',1,'2021-01-19 14:50:24'),(51,'LOGIN','',1,'2021-01-20 10:42:02'),(52,'LOGIN','',1,'2021-01-20 10:43:39'),(53,'MODIFICA','modifica macchina #2',1,'2021-01-20 10:43:51'),(54,'LOGIN','',1,'2021-01-20 10:50:46'),(55,'LOGIN','',1,'2021-01-20 10:53:10'),(56,'LOGIN','',1,'2021-01-20 13:53:52'),(57,'LOGIN','',1,'2021-01-20 14:04:28'),(58,'LOGIN','',1,'2021-01-20 16:01:00'),(59,'LOGIN','',1,'2021-01-20 16:05:06'),(60,'LOGIN','',1,'2021-01-21 07:41:03'),(61,'LOGIN','',1,'2021-01-22 09:06:04'),(62,'LOGIN','',1,'2021-01-22 09:51:02'),(63,'LOGIN','',1,'2021-01-22 09:56:33'),(64,'LOGIN','',1,'2021-01-22 09:58:44'),(65,'LOGIN','',1,'2021-01-22 10:01:14'),(66,'LOGIN','',1,'2021-01-22 10:02:30'),(67,'LOGIN','',1,'2021-01-22 10:09:28'),(68,'LOGIN','',1,'2021-01-22 10:10:12'),(69,'LOGIN','',1,'2021-01-22 10:10:35'),(70,'LOGIN','',1,'2021-01-22 10:11:53'),(71,'LOGIN','',1,'2021-01-22 10:12:36'),(72,'LOGIN','',1,'2021-01-22 10:13:57'),(73,'LOGIN','',1,'2021-01-22 10:14:52'),(74,'LOGIN','',1,'2021-01-22 10:26:27'),(75,'LOGIN','',1,'2021-01-22 10:27:39'),(76,'LOGIN','',1,'2021-01-22 10:34:15'),(77,'LOGIN','',1,'2021-01-22 10:35:02'),(78,'IMPOSTAZIONI','modifica dati stampante',1,'2021-01-22 10:35:14'),(79,'LOGIN','',1,'2021-01-22 11:12:09'),(80,'LOGIN','',1,'2021-01-22 11:16:14'),(81,'LOGIN','',1,'2021-01-22 11:17:14'),(82,'LOGIN','',1,'2021-01-22 11:18:14'),(83,'LOGIN','',1,'2021-01-22 11:19:38'),(84,'LOGIN','',1,'2021-01-22 14:16:07'),(85,'LOGIN','',1,'2021-01-22 14:17:44'),(86,'LOGIN','',1,'2021-01-22 14:19:58'),(87,'LOGIN','',1,'2021-01-22 14:25:09'),(88,'LOGIN','',1,'2021-01-22 14:26:52'),(89,'LOGIN','',1,'2021-01-22 14:28:35'),(90,'LOGIN','',1,'2021-01-22 14:29:09'),(91,'LOGIN','',1,'2021-01-22 14:32:20'),(92,'LOGIN','',1,'2021-01-22 14:47:07'),(93,'LOGIN','',1,'2021-01-22 14:50:11'),(94,'LOGIN','',1,'2021-01-22 15:46:11'),(95,'LOGIN','',1,'2021-01-22 15:47:36'),(96,'LOGIN','',1,'2021-01-22 15:49:04'),(97,'LOGIN','',1,'2021-01-22 15:49:58'),(98,'LOGIN','',1,'2021-01-22 15:51:20'),(99,'LOGIN','',1,'2021-01-22 15:53:20'),(100,'LOGIN','',1,'2021-01-22 15:54:51'),(101,'LOGIN','',1,'2021-01-22 15:55:33'),(102,'LOGIN','',1,'2021-01-22 15:56:22'),(103,'LOGIN','',1,'2021-01-22 15:56:50'),(104,'LOGIN','',1,'2021-01-22 15:59:16'),(105,'LOGIN','',1,'2021-01-22 15:59:45'),(106,'LOGIN','',1,'2021-01-22 16:03:36'),(107,'LOGIN','',1,'2021-01-22 16:04:32'),(108,'LOGIN','',1,'2021-01-22 16:05:13'),(109,'LOGIN','',1,'2021-01-22 16:06:03'),(110,'LOGIN','',1,'2021-01-22 16:07:07'),(111,'LOGIN','',1,'2021-01-22 16:10:37'),(112,'LOGIN','',1,'2021-01-22 16:11:39'),(113,'LOGIN','',1,'2021-01-22 16:13:31'),(114,'LOGIN','',1,'2021-01-22 16:37:27'),(115,'LOGIN','',1,'2021-01-22 16:39:03'),(116,'LOGIN','',1,'2021-01-22 16:54:00'),(117,'LOGIN','',1,'2021-01-25 07:22:55'),(118,'LOGIN','',1,'2021-01-25 07:38:19'),(119,'LOGIN','',1,'2021-01-25 07:49:39'),(120,'LOGIN','',1,'2021-01-25 08:01:16'),(121,'LOGIN','',1,'2021-01-25 08:03:40'),(122,'LOGIN','',1,'2021-01-25 08:04:29'),(123,'LOGIN','',1,'2021-01-25 08:07:47'),(124,'LOGIN','',1,'2021-01-25 08:08:29'),(125,'LOGIN','',1,'2021-01-25 08:15:53'),(126,'LOGIN','',1,'2021-01-25 08:17:01'),(127,'LOGIN','',1,'2021-01-25 08:18:10'),(128,'LOGIN','',1,'2021-01-25 08:21:39'),(129,'LOGIN','',1,'2021-01-25 08:22:20'),(130,'LOGIN','',1,'2021-01-25 08:25:39'),(131,'LOGIN','',1,'2021-01-25 08:26:22'),(132,'LOGIN','',1,'2021-01-25 08:27:39'),(133,'LOGIN','',1,'2021-01-25 08:31:15'),(134,'LOGIN','',1,'2021-01-25 08:34:49'),(135,'LOGIN','',1,'2021-01-25 08:36:27'),(136,'LOGIN','',1,'2021-01-25 08:36:59'),(137,'LOGIN','',1,'2021-01-25 08:37:34'),(138,'LOGIN','',1,'2021-01-25 08:39:24'),(139,'LOGIN','',1,'2021-01-25 09:04:20'),(140,'LOGIN','',1,'2021-01-25 09:07:46'),(141,'LOGIN','',1,'2021-01-25 09:08:40'),(142,'LOGIN','',1,'2021-01-25 09:09:14'),(143,'LOGIN','',1,'2021-01-25 09:09:59'),(144,'LOGIN','',1,'2021-01-25 09:10:52'),(145,'LOGIN','',1,'2021-01-25 09:11:18'),(146,'LOGIN','',1,'2021-01-25 09:11:57'),(147,'LOGIN','',1,'2021-01-25 09:12:31'),(148,'LOGIN','',1,'2021-01-25 09:14:33'),(149,'LOGIN','',1,'2021-01-25 09:14:59'),(150,'LOGIN','',1,'2021-01-25 09:15:35'),(151,'LOGIN','',1,'2021-01-25 09:16:22'),(152,'LOGIN','',1,'2021-01-25 09:16:54'),(153,'LOGIN','',1,'2021-01-25 09:22:23'),(154,'LOGIN','',1,'2021-01-25 09:22:49'),(155,'LOGIN','',1,'2021-01-25 09:25:53'),(156,'LOGIN','',1,'2021-01-25 09:26:23'),(157,'LOGIN','',1,'2021-01-25 09:30:08'),(158,'LOGIN','',1,'2021-01-25 09:30:47'),(159,'LOGIN','',1,'2021-01-25 09:31:45'),(160,'LOGIN','',1,'2021-01-25 10:12:10'),(161,'LOGIN','',1,'2021-01-25 10:12:56'),(162,'LOGIN','',1,'2021-01-25 10:13:33'),(163,'LOGIN','',1,'2021-01-25 10:14:50'),(164,'LOGIN','',1,'2021-01-25 10:38:18'),(165,'LOGIN','',1,'2021-01-25 10:41:52'),(166,'LOGIN','',1,'2021-01-25 10:51:53'),(167,'LOGIN','',1,'2021-01-25 10:54:15'),(168,'LOGIN','',1,'2021-01-25 10:57:26'),(169,'LOGIN','',1,'2021-01-25 10:57:41'),(170,'LOGIN','',1,'2021-01-25 10:58:11'),(171,'LOGIN','',1,'2021-01-25 11:03:26'),(172,'LOGIN','',1,'2021-01-25 11:03:59'),(173,'LOGIN','',1,'2021-01-25 11:05:33'),(174,'IMPOSTAZIONI','creazione utente #6',1,'2021-01-25 11:05:46'),(175,'LOGOUT','',1,'2021-01-25 11:05:49'),(176,'LOGIN','',6,'2021-01-25 11:05:50'),(177,'LOGIN','',6,'2021-01-25 11:06:13'),(178,'LOGIN','',6,'2021-01-25 11:06:47'),(179,'LOGIN','',6,'2021-01-25 11:07:07'),(180,'LOGIN','',6,'2021-01-25 11:15:08'),(181,'LOGIN','',6,'2021-01-25 11:16:20'),(182,'LOGIN','',6,'2021-01-25 11:18:16'),(183,'LOGIN','',6,'2021-01-25 11:18:58'),(184,'LOGIN','',1,'2021-01-25 13:38:27'),(185,'LOGIN','',6,'2021-01-25 13:39:14'),(186,'LOGIN','',6,'2021-01-25 13:39:56'),(187,'LOGIN','',1,'2021-01-25 13:41:44'),(188,'LOGIN','',1,'2021-01-25 13:42:30'),(189,'LOGIN','',6,'2021-01-25 13:43:02'),(190,'LOGIN','',6,'2021-01-25 13:43:42'),(191,'LOGIN','',6,'2021-01-25 13:44:05'),(192,'LOGIN','',6,'2021-01-25 13:44:40'),(193,'LOGIN','',6,'2021-01-25 13:45:21'),(194,'LOGIN','',6,'2021-01-25 13:45:35'),(195,'LOGIN','',6,'2021-01-25 13:45:57'),(196,'LOGIN','',6,'2021-01-25 13:46:13'),(197,'LOGIN','',6,'2021-01-25 13:46:32'),(198,'LOGIN','',6,'2021-01-25 13:46:53'),(199,'LOGIN','',6,'2021-01-25 13:47:26'),(200,'LOGIN','',6,'2021-01-25 13:48:00'),(201,'LOGIN','',6,'2021-01-25 13:48:39'),(202,'LOGIN','',6,'2021-01-25 13:49:09'),(203,'LOGIN','',6,'2021-01-25 13:50:09'),(204,'LOGIN','',6,'2021-01-25 13:53:32'),(205,'LOGIN','',6,'2021-01-25 15:09:11'),(206,'LOGIN','',6,'2021-01-25 15:11:53'),(207,'LOGIN','',1,'2021-01-25 16:11:05'),(208,'LOGIN','',6,'2021-01-25 16:13:36'),(209,'LOGIN','',6,'2021-01-25 16:29:50'),(210,'LOGIN','',6,'2021-01-25 16:52:33'),(211,'LOGIN','',6,'2021-01-25 16:56:33'),(212,'LOGIN','',6,'2021-01-26 08:16:41'),(213,'LOGIN','',6,'2021-01-26 08:18:34'),(214,'LOGIN','',6,'2021-01-26 08:24:06'),(215,'LOGIN','',6,'2021-01-26 08:42:34'),(216,'LOGIN','',6,'2021-01-26 08:45:39'),(217,'LOGIN','',6,'2021-01-26 08:46:14'),(218,'LOGIN','',6,'2021-01-26 08:47:22'),(219,'LOGIN','',6,'2021-01-26 08:47:58'),(220,'LOGIN','',6,'2021-01-26 08:49:38'),(221,'LOGIN','',6,'2021-01-26 08:50:05'),(222,'LOGIN','',6,'2021-01-26 09:00:01'),(223,'INSERIMENTO','creazione pallettizzazione #1',6,'2021-01-26 09:18:00'),(224,'INSERIMENTO','creato aticolo #1',6,'2021-01-26 09:18:16'),(225,'INSERIMENTO','inserimento record Configurazione pallet per pallettizzazione 1',6,'2021-01-26 09:18:52'),(226,'INSERIMENTO','creazione ingresso merce #1',6,'2021-01-26 09:19:02'),(227,'LOGIN','',6,'2021-01-26 09:56:16'),(228,'LOGIN','',6,'2021-01-26 09:59:45'),(229,'STAMPA','stampa barcode palletHtml 2000000001',6,'2021-01-26 10:02:51'),(230,'LOGIN','',6,'2021-01-26 15:43:09'),(231,'LOGIN','',6,'2021-01-26 15:45:32'),(232,'LOGIN','',5,'2021-02-17 16:10:55'),(233,'LOGIN','',5,'2021-02-17 16:12:30'),(234,'LOGIN','',5,'2021-02-17 16:13:00'),(235,'LOGIN','',5,'2021-02-17 16:13:49'),(236,'LOGIN','',5,'2021-02-19 08:34:51'),(237,'LOGIN','',5,'2021-02-19 08:40:08'),(238,'LOGIN','',5,'2021-02-19 08:45:21'),(239,'LOGIN','',5,'2021-02-19 08:46:54'),(240,'LOGIN','',5,'2021-02-19 08:48:09'),(241,'LOGIN','',5,'2021-02-19 08:49:15'),(242,'LOGIN','',5,'2021-02-19 08:49:44'),(243,'MODIFICA','posizionato pallet #12 in cella #1 locazione #1',5,'2021-02-19 08:49:50'),(244,'MODIFICA','posizionato pallet #13 in cella #1 locazione #1',5,'2021-02-19 08:50:53'),(245,'LOGIN','',5,'2021-02-19 09:02:42'),(246,'MODIFICA','posizionato pallet #14 in cella #1 locazione #1',5,'2021-02-19 09:02:53'),(247,'LOGIN','',5,'2021-02-19 13:34:12'),(248,'MODIFICA','posizionato pallet #15 in cella #1 locazione #1',5,'2021-02-19 13:34:16'),(249,'MODIFICA','posizionato pallet #16 in cella #1 locazione #1',5,'2021-02-19 13:34:50'),(250,'INSERIMENTO','creato aticolo #5',5,'2021-02-19 13:38:13'),(251,'MODIFICA','modificato articolo #5',5,'2021-02-19 13:38:50'),(252,'MODIFICA','posizionato pallet #17 in cella #1 locazione #1',5,'2021-02-19 13:38:59'),(253,'INSERIMENTO','creazione ingresso merce #3',5,'2021-02-19 13:43:19'),(254,'LOGIN','',5,'2021-02-19 13:46:36'),(255,'MODIFICA','posizionato pallet #18 in cella #1 locazione #1',5,'2021-02-19 13:46:41'),(256,'LOGIN','',5,'2021-02-19 13:47:28'),(257,'MODIFICA','posizionato pallet #19 in cella #1 locazione #1',5,'2021-02-19 13:47:32'),(258,'MODIFICA','posizionato pallet #20 in cella #1 locazione #1',5,'2021-02-19 13:49:30'),(259,'LOGIN','',5,'2021-02-19 14:30:17'),(260,'LOGIN','',5,'2021-02-19 14:31:40'),(261,'LOGIN','',5,'2021-02-24 09:31:17'),(262,'LOGIN','',5,'2021-02-25 09:47:58'),(263,'STAMPA','stampa barcode palletHtml 2000000011',5,'2021-02-25 09:48:27'),(264,'MODIFICA','posizionato pallet #21 in cella #1 locazione #1',5,'2021-02-25 09:52:09'),(265,'MODIFICA','posizionato pallet #22 in cella #1 locazione #1',5,'2021-02-25 09:53:47'),(266,'MODIFICA','posizionato pallet #23 in cella #1 locazione #1',5,'2021-02-25 09:54:59'),(267,'LOGIN','',5,'2021-02-25 09:55:52'),(268,'MODIFICA','posizionato pallet #24 in cella #1 locazione #1',5,'2021-02-25 09:56:01'),(269,'LOGIN','',5,'2021-02-25 09:56:27'),(270,'MODIFICA','posizionato pallet #25 in cella #1 locazione #1',5,'2021-02-25 09:56:30'),(271,'MODIFICA','posizionato pallet #26 in cella #1 locazione #1',5,'2021-02-25 09:57:33'),(272,'LOGIN','',5,'2021-02-25 10:09:35'),(273,'MODIFICA','posizionato pallet #27 in cella #1 locazione #1',5,'2021-02-25 10:09:40'),(274,'MODIFICA','posizionato pallet #28 in cella #1 locazione #1',5,'2021-02-25 10:10:11'),(275,'LOGIN','',5,'2021-02-25 10:10:35'),(276,'MODIFICA','posizionato pallet #29 in cella #1 locazione #1',5,'2021-02-25 10:10:39'),(277,'LOGIN','',5,'2021-02-25 10:10:56'),(278,'MODIFICA','posizionato pallet #30 in cella #1 locazione #1',5,'2021-02-25 10:11:02'),(279,'MODIFICA','posizionato pallet #31 in cella #1 locazione #1',5,'2021-02-25 10:11:42'),(280,'MODIFICA','posizionato pallet #32 in cella #1 locazione #1',5,'2021-02-25 10:11:42'),(281,'MODIFICA','posizionato pallet #33 in cella #1 locazione #1',5,'2021-02-25 10:11:54'),(282,'MODIFICA','posizionato pallet #34 in cella #1 locazione #1',5,'2021-02-25 10:20:22'),(283,'MODIFICA','posizionato pallet #35 in cella #1 locazione #1',5,'2021-02-25 10:21:55'),(284,'LOGIN','',5,'2021-02-25 10:22:31'),(285,'MODIFICA','posizionato pallet #36 in cella #1 locazione #1',5,'2021-02-25 10:22:35'),(286,'LOGIN','',5,'2021-02-25 10:22:59'),(287,'MODIFICA','posizionato pallet #37 in cella #1 locazione #1',5,'2021-02-25 10:23:03'),(288,'MODIFICA','posizionato pallet #38 in cella #1 locazione #1',5,'2021-02-25 10:23:05'),(289,'MODIFICA','posizionato pallet #39 in cella #1 locazione #1',5,'2021-02-25 10:23:12'),(290,'MODIFICA','posizionato pallet #40 in cella #1 locazione #1',5,'2021-02-25 10:23:13'),(291,'LOGIN','',5,'2021-02-26 08:51:43'),(292,'MODIFICA','posizionato pallet #41 in cella #1 locazione #1',5,'2021-02-26 08:52:01'),(293,'MODIFICA','posizionato pallet #42 in cella #1 locazione #1',5,'2021-02-26 08:56:32'),(294,'MODIFICA','posizionato pallet #43 in cella #1 locazione #1',5,'2021-02-26 11:04:56'),(295,'MODIFICA','posizionato pallet #44 in cella #1 locazione #1',5,'2021-02-26 11:05:34'),(296,'LOGIN','',5,'2021-02-26 13:43:07'),(297,'LOGIN','',5,'2021-02-26 14:06:49'),(298,'LOGIN','',5,'2021-02-26 14:10:41'),(299,'LOGIN','',5,'2021-02-26 14:16:46'),(300,'LOGIN','',5,'2021-02-26 14:20:38'),(301,'MODIFICA','aggiunta pallettizzazione #10 al modulo ordine #1',5,'2021-02-26 14:28:52'),(302,'MODIFICA','associazione pallet #42 a ordine #1',5,'2021-02-26 14:29:15'),(303,'MODIFICA','chiusura modulo ordine #1',5,'2021-02-26 14:29:19'),(304,'PDF','esportazione modulo ordine #1',5,'2021-02-26 14:29:21'),(305,'LOGIN','',5,'2021-02-26 14:33:56'),(306,'LOGIN','',5,'2021-02-26 14:53:30'),(307,'LOGIN','',5,'2021-02-26 15:18:37'),(308,'MODIFICA','posizionato pallet #45 in cella #1 locazione #1',5,'2021-02-26 15:34:33'),(309,'LOGIN','',5,'2021-02-26 15:42:48'),(310,'MODIFICA','modifica macchina #2',5,'2021-02-26 15:58:08'),(311,'LOGIN','',5,'2021-02-26 16:03:47'),(312,'LOGIN','',5,'2021-02-26 16:06:32'),(313,'LOGIN','',5,'2021-02-26 16:07:39'),(314,'LOGIN','',5,'2021-02-26 16:09:58'),(315,'LOGIN','',5,'2021-02-26 16:13:44'),(316,'LOGIN','',5,'2021-02-26 16:14:30'),(317,'MODIFICA','posizionato pallet #46 in cella #1 locazione #1',5,'2021-02-26 16:42:29'),(318,'MODIFICA','posizionato pallet #47 in cella #1 locazione #1',5,'2021-03-01 10:45:29'),(319,'LOGIN','',5,'2021-03-01 10:52:16'),(320,'MODIFICA','posizionato pallet #48 in cella #1 locazione #1',5,'2021-03-01 10:52:20'),(321,'MODIFICA','posizionato pallet #49 in cella #1 locazione #1',5,'2021-03-01 11:13:45'),(322,'MODIFICA','posizionato pallet #50 in cella #1 locazione #1',5,'2021-03-01 11:13:51'),(323,'LOGIN','',5,'2021-03-01 11:14:57'),(324,'MODIFICA','posizionato pallet #51 in cella #1 locazione #1',5,'2021-03-01 11:15:02'),(325,'LOGIN','',5,'2021-03-01 11:15:52'),(326,'MODIFICA','posizionato pallet #52 in cella #1 locazione #1',5,'2021-03-01 11:15:57'),(327,'MODIFICA','posizionato pallet #53 in cella #1 locazione #1',5,'2021-03-01 11:15:58'),(328,'LOGIN','',5,'2021-03-01 11:17:16'),(329,'LOGIN','',1,'2021-03-02 16:29:07'),(330,'MODIFICA','posizionato pallet #54 in cella #1 locazione #1',1,'2021-03-02 16:32:07'),(331,'LOGIN','',5,'2021-03-10 13:25:32'),(332,'LOGIN','',5,'2021-03-10 13:32:53');
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro_allocazione_celle`
--

DROP TABLE IF EXISTS `registro_allocazione_celle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro_allocazione_celle` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `pallet_id` int(16) NOT NULL,
  `cella_id_origine` int(10) NOT NULL,
  `cella_id_destinazione` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_allocazione_celle`
--

LOCK TABLES `registro_allocazione_celle` WRITE;
/*!40000 ALTER TABLE `registro_allocazione_celle` DISABLE KEYS */;
INSERT INTO `registro_allocazione_celle` VALUES (1,12,0,1,'2021-02-19 08:49:49','2021-02-19 08:49:49'),(2,13,0,1,'2021-02-19 08:50:53','2021-02-19 08:50:53'),(3,14,0,1,'2021-02-19 09:02:53','2021-02-19 09:02:53'),(4,15,0,1,'2021-02-19 13:34:16','2021-02-19 13:34:16'),(5,16,0,1,'2021-02-19 13:34:50','2021-02-19 13:34:50'),(6,17,0,1,'2021-02-19 13:38:59','2021-02-19 13:38:59'),(7,18,0,1,'2021-02-19 13:46:41','2021-02-19 13:46:41'),(8,19,0,1,'2021-02-19 13:47:32','2021-02-19 13:47:32'),(9,20,0,1,'2021-02-19 13:49:30','2021-02-19 13:49:30'),(10,21,0,1,'2021-02-25 09:52:09','2021-02-25 09:52:09'),(11,22,0,1,'2021-02-25 09:53:47','2021-02-25 09:53:47'),(12,23,0,1,'2021-02-25 09:54:58','2021-02-25 09:54:58'),(13,24,0,1,'2021-02-25 09:56:01','2021-02-25 09:56:01'),(14,25,0,1,'2021-02-25 09:56:30','2021-02-25 09:56:30'),(15,26,0,1,'2021-02-25 09:57:32','2021-02-25 09:57:32'),(16,27,0,1,'2021-02-25 10:09:40','2021-02-25 10:09:40'),(17,28,0,1,'2021-02-25 10:10:11','2021-02-25 10:10:11'),(18,29,0,1,'2021-02-25 10:10:39','2021-02-25 10:10:39'),(19,30,0,1,'2021-02-25 10:11:02','2021-02-25 10:11:02'),(20,31,0,1,'2021-02-25 10:11:42','2021-02-25 10:11:42'),(21,32,0,1,'2021-02-25 10:11:42','2021-02-25 10:11:42'),(22,33,0,1,'2021-02-25 10:11:54','2021-02-25 10:11:54'),(23,34,0,1,'2021-02-25 10:20:22','2021-02-25 10:20:22'),(24,35,0,1,'2021-02-25 10:21:55','2021-02-25 10:21:55'),(25,36,0,1,'2021-02-25 10:22:35','2021-02-25 10:22:35'),(26,37,0,1,'2021-02-25 10:23:03','2021-02-25 10:23:03'),(27,38,0,1,'2021-02-25 10:23:05','2021-02-25 10:23:05'),(28,39,0,1,'2021-02-25 10:23:11','2021-02-25 10:23:11'),(29,40,0,1,'2021-02-25 10:23:13','2021-02-25 10:23:13'),(30,41,0,1,'2021-02-26 08:52:01','2021-02-26 08:52:01'),(31,42,0,1,'2021-02-26 08:56:32','2021-02-26 08:56:32'),(32,43,0,1,'2021-02-26 11:04:56','2021-02-26 11:04:56'),(33,44,0,1,'2021-02-26 11:05:34','2021-02-26 11:05:34'),(34,42,1,0,'2021-02-26 14:29:15','2021-02-26 14:29:15'),(35,45,0,1,'2021-02-26 15:34:33','2021-02-26 15:34:33'),(36,46,0,1,'2021-02-26 16:42:29','2021-02-26 16:42:29'),(37,47,0,1,'2021-03-01 10:45:29','2021-03-01 10:45:29'),(38,48,0,1,'2021-03-01 10:52:20','2021-03-01 10:52:20'),(39,49,0,1,'2021-03-01 11:13:45','2021-03-01 11:13:45'),(40,50,0,1,'2021-03-01 11:13:51','2021-03-01 11:13:51'),(41,51,0,1,'2021-03-01 11:15:02','2021-03-01 11:15:02'),(42,52,0,1,'2021-03-01 11:15:57','2021-03-01 11:15:57'),(43,53,0,1,'2021-03-01 11:15:58','2021-03-01 11:15:58'),(44,54,0,1,'2021-03-02 16:32:07','2021-03-02 16:32:07');
/*!40000 ALTER TABLE `registro_allocazione_celle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signature`
--

DROP TABLE IF EXISTS `signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signature` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(32) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) DEFAULT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  `delete_signature` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signature`
--

LOCK TABLES `signature` WRITE;
/*!40000 ALTER TABLE `signature` DISABLE KEYS */;
INSERT INTO `signature` VALUES (1,'locazione','2021-01-14 15:08:15','2021-01-14 15:08:15','RCvgdHNccwWE9mNARJL6d1J3f5mFyjf3',NULL,0),(2,'cella','2021-01-14 15:08:15','2021-01-14 15:08:15','X3OnJF5SMsKyxmQ3Rn5NbLvX0uhejaOp',NULL,0),(3,'dimensione_pallet','2021-01-26 09:18:00','2021-01-26 09:18:00','lQirwd58G4k5gsZPKQMg0xQNablbrHSC',NULL,0),(4,'pallettizzazione','2021-01-26 09:18:00','2021-01-26 09:18:00','XOpcd2OgpzVTL0qfJeOyfP3iGicTUV8A',NULL,0),(5,'articolo','2021-01-26 09:18:16','2021-01-26 09:18:16','ysXOq97UNh9IkKAA7dyQZKv8Ao73BkXy',NULL,0),(6,'configurazione_pallet','2021-01-26 09:18:52','2021-01-26 09:18:52','F2TV8T9pvR0DYkCmgjyQk5J3EXGJ4vHk',NULL,0),(7,'ingresso_merce','2021-01-26 09:19:02','2021-01-26 09:19:02','HI28S2wMKlH1viBiO4YpOY9T28P8TTbQ',NULL,0),(8,'inventario_ingresso_merce','2021-01-26 09:19:09','2021-01-26 09:19:09','VZRYLFptGvuIcJX51rN9x7pLP3Z7VfoZ',NULL,0),(9,'pallet','2021-01-26 09:19:12','2021-01-26 09:19:12','9vRX3dDCZBxxVF56R5UBMN41ZCdN4qwy',NULL,0),(10,'allocazione_pallet','2021-01-26 09:19:12','2021-01-26 09:19:12','T4rOewmappDSELrUfExoyCbUUXKbdopY',NULL,0),(11,'pallet','2021-01-26 09:19:12','2021-01-26 09:19:12','9vRX3dDCZBxxVF56R5UBMN41ZCdN4qwy','akax2B1f9EeMTKF0z1oTbfmBvnPbv7hk',0),(12,'ingresso_merce','2021-01-26 09:19:12','2021-01-26 09:19:12','HI28S2wMKlH1viBiO4YpOY9T28P8TTbQ','LxzXoVPEgGBk7k8ocb79qbqqhrQgXTVq',0),(13,'articolo','2021-02-15 14:52:34','2021-02-15 14:52:34','7BAVonbCbzr0P8RmsTcnNyaAjBFEkcCC',NULL,0),(14,'pallettizzazione','2021-02-15 14:52:34','2021-02-15 14:52:34','U5tFB47l9giRfs0ARqhjocwdkvUYSckA',NULL,0),(15,'configurazione_pallet','2021-02-15 14:52:34','2021-02-15 14:52:34','A5YW5KLehGv3U9e7I47JqRLmCUoOCZUs',NULL,0),(16,'ingresso_merce','2021-02-15 14:52:34','2021-02-15 14:52:34','lFwE8hMx0eqDbAfMExrJRZ47CxZ4StqM',NULL,0),(17,'inventario_ingresso_merce','2021-02-15 14:52:34','2021-02-15 14:52:34','Q1RJjqTYrR3SH9TQbkpEnASJr9WTNxLQ',NULL,0),(18,'pallet','2021-02-15 14:52:34','2021-02-15 14:52:34','MLb6GAj2ROc0PXos2v2RnUlR4cbnNvwW',NULL,0),(19,'allocazione_pallet','2021-02-15 14:52:34','2021-02-15 14:52:34','tNh7PF1cqVbcZVa15pmvRm02sKbCTd2D',NULL,0),(20,'pallet','2021-02-15 14:52:34','2021-02-15 14:52:34','MLb6GAj2ROc0PXos2v2RnUlR4cbnNvwW','8svOvaRCp0waf5DT9SmqwqCAp9Z6SGzx',0),(21,'articolo','2021-02-15 14:52:34','2021-02-15 14:52:34','22jWiUWrQz3vwA9W5rXfymTmQInP5dAj',NULL,0),(22,'pallettizzazione','2021-02-15 14:52:34','2021-02-15 14:52:34','FnDsnXoN5VfMjpKgE3bFVbSsxvJB9c9P',NULL,0),(23,'configurazione_pallet','2021-02-15 14:52:34','2021-02-15 14:52:34','3otsdhpL7FnOTw9uSYDh9yn89Pz9Kw3S',NULL,0),(24,'inventario_ingresso_merce','2021-02-15 14:52:34','2021-02-15 14:52:34','7RfORFNrwsqKqCPZkW2sSbILFiPCQarf',NULL,0),(25,'pallet','2021-02-15 14:52:35','2021-02-15 14:52:35','5MFjQ6ZZoR204qFuKRae5uRS8WCYMKoy',NULL,0),(26,'allocazione_pallet','2021-02-15 14:52:35','2021-02-15 14:52:35','ajW4r0Fp7r5jYspECfdBovK49n0kSfJH',NULL,0),(27,'pallet','2021-02-15 14:52:35','2021-02-15 14:52:35','5MFjQ6ZZoR204qFuKRae5uRS8WCYMKoy','1zt1zPRSMWGlrnHjc041CjKvGYeT3ApA',0),(28,'articolo','2021-02-15 14:52:35','2021-02-15 14:52:35','6ZgnuspGgqLJB8M9mOkZPkWjrPjYzpIy',NULL,0),(29,'pallettizzazione','2021-02-15 14:52:35','2021-02-15 14:52:35','iGPDN87xctXynO77TwwdjQZO8rzlUiWA',NULL,0),(30,'configurazione_pallet','2021-02-15 14:52:35','2021-02-15 14:52:35','lNenWSEPT94s6Lj4T7AWU21Upa3tfRl9',NULL,0),(31,'inventario_ingresso_merce','2021-02-15 14:52:35','2021-02-15 14:52:35','x5zJlXk4b547aioMBcowxvJ6qmIDo70S',NULL,0),(32,'pallet','2021-02-15 14:52:35','2021-02-15 14:52:35','Awgx47D1imhN3UNhTg1wmRY6KDe8ZKbs',NULL,0),(33,'allocazione_pallet','2021-02-15 14:52:35','2021-02-15 14:52:35','x5iMPlEHqZCVMM1yYHuvy6ZnY88t6Aw7',NULL,0),(34,'pallet','2021-02-15 14:52:35','2021-02-15 14:52:35','Awgx47D1imhN3UNhTg1wmRY6KDe8ZKbs','DEDS9BJHhIXNtuWfjuebVPjZ7RTTYzuE',0),(35,'cliente','2021-02-15 15:28:31','2021-02-15 15:28:31','l0qfsvSjByzMGwZj84LoBZV0TwaJA4S1',NULL,0),(36,'spedizione','2021-02-15 15:28:31','2021-02-15 15:28:31','dJ9wouLpIaiKkCoqjUNCJ4ODW03U6qsE',NULL,0),(37,'modulo_ordine','2021-02-15 15:28:31','2021-02-15 15:28:31','EaxVxp03eBhEbLOpfS23zJqT8EahgdlW',NULL,0),(38,'modulo_ordine','2021-02-15 15:28:31','2021-02-15 15:28:31','eqiajwKRAcCal6adQQbXAQYIre6cfWqO',NULL,0),(39,'pallettizzazione','2021-02-17 16:15:03','2021-02-17 16:15:03','vShFKbxYVowRfuLjaYCin7DiUBNrdbIM',NULL,0),(40,'configurazione_pallet','2021-02-17 16:15:03','2021-02-17 16:15:03','tLFZDx3bh2H7eejLSSuoM0iyNJqpz3SI',NULL,0),(41,'pallet','2021-02-17 16:15:03','2021-02-17 16:15:03','NmlgCiDH6e6JGN7aUhj7UiUOlBnAXkxm',NULL,0),(42,'allocazione_pallet','2021-02-17 16:15:03','2021-02-17 16:15:03','Jthi1tqTzUiSmPV86qrjzBn0ZYwnley4',NULL,0),(43,'configurazione_pallet','2021-02-17 16:15:50','2021-02-17 16:15:50','jS8lvl3nkJBCoTh86tq1o2DT2E5v5BSt',NULL,0),(44,'pallet','2021-02-17 16:15:50','2021-02-17 16:15:50','fucCoYnEaeoUKl0j5PRA7rcZ9u1DbjHA',NULL,0),(45,'allocazione_pallet','2021-02-17 16:15:50','2021-02-17 16:15:50','KvQZdmOczZRqTU5BHX10rdejApVsOQcE',NULL,0),(46,'allocazione_pallet','2021-02-17 16:15:50','2021-02-17 16:15:50','HEXr2qxKCrwwrY8lsn4H2I61vPrX7id2',NULL,0),(47,'configurazione_pallet','2021-02-19 08:35:10','2021-02-19 08:35:10','CCwzvD2YWgQIZQOiPRFAtWMKX2WbEnQL',NULL,0),(48,'pallet','2021-02-19 08:35:10','2021-02-19 08:35:10','eAM9ySjYtlhFS4FjIn9ksYLcaUOn7Rks',NULL,0),(49,'allocazione_pallet','2021-02-19 08:35:10','2021-02-19 08:35:10','hAaIucvwDiO5bPeaQydcQwpaPJgKpIm4',NULL,0),(50,'allocazione_pallet','2021-02-19 08:35:10','2021-02-19 08:35:10','GULNPTt1mDylV9yl0QejKxA7fFF89PF7',NULL,0),(51,'allocazione_pallet','2021-02-19 08:35:10','2021-02-19 08:35:10','niDMXsM8rw0OQ4UrXVh5860oyjGMtMqN',NULL,0),(52,'configurazione_pallet','2021-02-19 08:40:12','2021-02-19 08:40:12','jQdCc0PrbYoFU7BXVcBy2MLPZO0qUA6k',NULL,0),(53,'pallet','2021-02-19 08:40:12','2021-02-19 08:40:12','xgBowMEWYkuoHKv3sXtzGKH833JGkGJo',NULL,0),(54,'allocazione_pallet','2021-02-19 08:40:12','2021-02-19 08:40:12','lc1wj6L01rifraUbrUGggmXy0CemzTfU',NULL,0),(55,'allocazione_pallet','2021-02-19 08:40:12','2021-02-19 08:40:12','90q4WRIebkVDY1IXvEu1iNV51MzdYUka',NULL,0),(56,'allocazione_pallet','2021-02-19 08:40:12','2021-02-19 08:40:12','cxHeHTyNrMVdiPuWtIptqpH9bv1ndZod',NULL,0),(57,'allocazione_pallet','2021-02-19 08:40:12','2021-02-19 08:40:12','fMd1J3SjrMIiMyfMmlG6lNkkC7UNl56g',NULL,0),(58,'configurazione_pallet','2021-02-19 08:45:38','2021-02-19 08:45:38','NM8NLlia2Z9Q2KIuXkP3TxgoyQWmFycN',NULL,0),(59,'pallet','2021-02-19 08:45:38','2021-02-19 08:45:38','zxqX9kpp0Wv7REaR8gddsRHFGFbZWOuV',NULL,0),(60,'allocazione_pallet','2021-02-19 08:45:38','2021-02-19 08:45:38','oGA7yehOUPBDeI0Gm3aQll8QwgC2aMBR',NULL,0),(61,'allocazione_pallet','2021-02-19 08:45:38','2021-02-19 08:45:38','gVXQZAB4gnGZYl5NLuVEO5VLJvo1Wizd',NULL,0),(62,'allocazione_pallet','2021-02-19 08:45:38','2021-02-19 08:45:38','ONkIQCkaakuWMqCBUojEE9mqXUinl4yV',NULL,0),(63,'allocazione_pallet','2021-02-19 08:45:38','2021-02-19 08:45:38','lNVx939jRk5u6uwmg7xClo4wxW8DC30O',NULL,0),(64,'allocazione_pallet','2021-02-19 08:45:38','2021-02-19 08:45:38','mw1YRZy2bhwtRmAlg60huUwlUhAUB0C4',NULL,0),(65,'configurazione_pallet','2021-02-19 08:48:13','2021-02-19 08:48:13','JJ4fhwqOEocbNq5ok1d8Uc4MWmtf4lqs',NULL,0),(66,'pallet','2021-02-19 08:48:13','2021-02-19 08:48:13','T6vwgxj8j169uH61onwmRF8wavgTfg8x',NULL,0),(67,'allocazione_pallet','2021-02-19 08:48:13','2021-02-19 08:48:13','mVJ5ETA1hMxdHTJDoX8SAPW8a3Dn4g27',NULL,0),(68,'allocazione_pallet','2021-02-19 08:48:14','2021-02-19 08:48:14','2HSfVVgemmkkihxulXGutyyK0eK749jx',NULL,0),(69,'allocazione_pallet','2021-02-19 08:48:14','2021-02-19 08:48:14','1G5oAck9zriPxzcNMsaYmLUiP3Z2h3tg',NULL,0),(70,'allocazione_pallet','2021-02-19 08:48:14','2021-02-19 08:48:14','T1ofygEbdg4DNbdUmDGQ8GcwyAQlshNt',NULL,0),(71,'allocazione_pallet','2021-02-19 08:48:14','2021-02-19 08:48:14','pU0aiYapv2HrIupiQ8flYLa6YThCMaIz',NULL,0),(72,'allocazione_pallet','2021-02-19 08:48:14','2021-02-19 08:48:14','UuRw1Iu08SS7CODvBhJ2fv82Gd5zWuwa',NULL,0),(73,'configurazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','ekiDaZgNO3rioMUlwxDtnUahJwUavoUJ',NULL,0),(74,'pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','LVWIdkPRc9THGkl2XASXYy2ZyZfCslxb',NULL,0),(75,'allocazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','cmsNXkHrSBkh0Y8dJBs15yPT642KOmEI',NULL,0),(76,'allocazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','Di9yOhc0K93A0yHvMUq5XXzyRwe4XA7w',NULL,0),(77,'allocazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','145WJHjvzPI34vhajSnIt5BMAQ0yfrbF',NULL,0),(78,'allocazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','npYIMfPFaPA5T4G1jUpfncMGflIGvyBL',NULL,0),(79,'allocazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','Mu9S98QwtqBYhpE7DMfgMpDi1kCYbqf4',NULL,0),(80,'allocazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','CEf2i9Jwk4bquSfCHOk8LgbSgzwiKYCO',NULL,0),(81,'allocazione_pallet','2021-02-19 08:49:18','2021-02-19 08:49:18','ZXcwuQzFwNsVLnFi7ll4ITnMVwswIWAA',NULL,0),(82,'configurazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','680IRJ7Dc0Gfl8mPLsn5pjjfHY90rC04',NULL,0),(83,'pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','59c9SVJexH0bSFtlBDu3nCwrwJc1x45U',NULL,0),(84,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','oMWPPkVOtSRsvkF4kWyTjnZDcZOdl7W0',NULL,0),(85,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','ti03RahcO7jJ4x4sdVaaGXLVqXRzN6Ee',NULL,0),(86,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','fWkGYUglBs4DivxzGzsvm54vr2O1mKdF',NULL,0),(87,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','L4WlVkXeZdsJX8qI1LQhul6q6Dm1WT3C',NULL,0),(88,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','57k5BPJ7ctUaWan9ylIzBOQ7Bv4hngR8',NULL,0),(89,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','9UHx9pBJyzIA369vepJDJyr1cMOAqnh4',NULL,0),(90,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','iV7xeIMOCIB8gmIkuYGjJCjIsctl3d1t',NULL,0),(91,'allocazione_pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','zt3L5dq4m53uL8NGZM4yRATvyVAaF8L8',NULL,0),(92,'allocazione_celle','2021-02-19 08:49:49','2021-02-19 08:49:49','yy7PGSm53puuLxInon3mCiwEelnrNunJ',NULL,0),(93,'pallet','2021-02-19 08:49:49','2021-02-19 08:49:49','59c9SVJexH0bSFtlBDu3nCwrwJc1x45U','wevK4HvwnMlwM2or2kDJP0zrH2H962Sn',0),(94,'configurazione_pallet','2021-02-19 08:50:52','2021-02-19 08:50:52','WK8IQSmv8wMWEjOCy9tpy9se9nEXjlvm',NULL,0),(95,'pallet','2021-02-19 08:50:52','2021-02-19 08:50:52','u6ckAyfmLxqm5c3cnzCI0r4bSuxBF6O1',NULL,0),(96,'allocazione_pallet','2021-02-19 08:50:52','2021-02-19 08:50:52','crgy0VXA7x7C9V2J5miBVMeO6VrdiBg8',NULL,0),(97,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','tL83d7he0xyVKjmoBo5wZvAQQa6sJ1YM',NULL,0),(98,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','99hYJcdIzej0jq5zdezVI4JJiXwYfOK9',NULL,0),(99,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','e6r4wKShAkfL34uLcIUKE9cwtCjNh0de',NULL,0),(100,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','KBicxdsszNqJ8Z2nrrmY5UZIub59rLxF',NULL,0),(101,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','Ay0UCXQRbJUUswfRO7PoEOBAv1Xjrqpy',NULL,0),(102,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','HdeHSv49QPPUhmKWZM6qDUqd1tokfuDr',NULL,0),(103,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','cad9ONgMEaySR09I15ltONxpapWy2Voq',NULL,0),(104,'allocazione_pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','WctrvRPD0lUKrHHWAVgH4ex1cMELpXn4',NULL,0),(105,'allocazione_celle','2021-02-19 08:50:53','2021-02-19 08:50:53','IoKJuvPeqzsRbD0fXVvtmxC1cqx9XO4l',NULL,0),(106,'pallet','2021-02-19 08:50:53','2021-02-19 08:50:53','u6ckAyfmLxqm5c3cnzCI0r4bSuxBF6O1','Rlfu7CN0iNIfdgDyVHt3J9n4NEQxUvyq',0),(107,'pallet','2021-02-19 09:02:52','2021-02-19 09:02:52','EpkxKGk06rJfqPXrOm9PJtgjtD2A56nF',NULL,0),(108,'allocazione_pallet','2021-02-19 09:02:52','2021-02-19 09:02:52','L2ffbpuWEXjzzt7pAnFCheIAPdf5KTNa',NULL,0),(109,'allocazione_pallet','2021-02-19 09:02:52','2021-02-19 09:02:52','jzo3p3kP3GK0Z9bmPuHsCBj2ObkUHT9B',NULL,0),(110,'allocazione_pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','yhtIv5pGjc5ywwhFk1orwE2CMJehw5A2',NULL,0),(111,'allocazione_pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','B1QMJeBk04IYrTMad1RoKqEQEDlGJ480',NULL,0),(112,'allocazione_pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','JUqcZOI4LyCNCYBPhFncnNPxUtrvRBJM',NULL,0),(113,'allocazione_pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','y9inhgjdGnzg67lOqeDXgLqruwJtJNdq',NULL,0),(114,'allocazione_pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','txnxju14CgOup0U4aFrPlioImhTtuZuw',NULL,0),(115,'allocazione_pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','0kAVxbeBJXAU6ZHDgMFwyqdhTT17Yjog',NULL,0),(116,'allocazione_pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','R5CZOJs8sqhoiSAVb1zlmMiXcAZevthF',NULL,0),(117,'allocazione_celle','2021-02-19 09:02:53','2021-02-19 09:02:53','rHRo106UIbILkdHR9y5fir8cUq3MNFgI',NULL,0),(118,'pallet','2021-02-19 09:02:53','2021-02-19 09:02:53','EpkxKGk06rJfqPXrOm9PJtgjtD2A56nF','0qzSrJUWYaS3NQe4LIzN9oP9A2hT0FZa',0),(119,'pallettizzazione','2021-02-19 13:34:15','2021-02-19 13:34:15','ZILc4vK0OTl2LNcr7lCjOa2ndghIDfM9',NULL,0),(120,'configurazione_pallet','2021-02-19 13:34:15','2021-02-19 13:34:15','rPlSGDienDBddIq5kEvJAACQBJdcylPA',NULL,0),(121,'pallet','2021-02-19 13:34:15','2021-02-19 13:34:15','uDAG9JINBZ1MuuR7KgjyDjjjeBtt7cbs',NULL,0),(122,'allocazione_pallet','2021-02-19 13:34:15','2021-02-19 13:34:15','myrvTYlWfuuDKFan7bcEQOSGojAqepeZ',NULL,0),(123,'allocazione_celle','2021-02-19 13:34:16','2021-02-19 13:34:16','n0exVYUwybFRdtzbTzJV5z15yXWwWUSv',NULL,0),(124,'pallet','2021-02-19 13:34:16','2021-02-19 13:34:16','uDAG9JINBZ1MuuR7KgjyDjjjeBtt7cbs','o4Mq2kdb8epOFgAdMdEfTGAigI09cebt',0),(125,'pallet','2021-02-19 13:34:49','2021-02-19 13:34:49','hEhJLiSvusijR03Rb8dTzq3WRQMiCINk',NULL,0),(126,'allocazione_pallet','2021-02-19 13:34:49','2021-02-19 13:34:49','WLJSg3NPehSj81mRFrCulFLbEPNahvYU',NULL,0),(127,'allocazione_celle','2021-02-19 13:34:50','2021-02-19 13:34:50','fEEQhCT3RjZtrEk9oJUFCIsur1RqvAXX',NULL,0),(128,'pallet','2021-02-19 13:34:50','2021-02-19 13:34:50','hEhJLiSvusijR03Rb8dTzq3WRQMiCINk','zrMy7mbAgmC22vy38Bg2PP8K909ICeiA',0),(129,'articolo','2021-02-19 13:38:13','2021-02-19 13:38:13','irrE89KuSjv2vgBIL9aJuJwZhEv8hYUL',NULL,0),(130,'articolo','2021-02-19 13:38:50','2021-02-19 13:38:50','irrE89KuSjv2vgBIL9aJuJwZhEv8hYUL','QdK9lpSalDiIOBDc808FOSn4ESvKElNR',0),(131,'pallettizzazione','2021-02-19 13:38:59','2021-02-19 13:38:59','xRDGqJbhFsO9G8IEZ9ZMRwdAWdmZVYhb',NULL,0),(132,'configurazione_pallet','2021-02-19 13:38:59','2021-02-19 13:38:59','wPUtmtWFrkS6zV8OaXc9jPxKUA0rxpsO',NULL,0),(133,'pallet','2021-02-19 13:38:59','2021-02-19 13:38:59','xVkcVna88bYIbEoOobe5y2lrxtLz2SUm',NULL,0),(134,'allocazione_pallet','2021-02-19 13:38:59','2021-02-19 13:38:59','DlU84wSBiamOBFLSrfO4959VwxBIMhsY',NULL,0),(135,'allocazione_celle','2021-02-19 13:38:59','2021-02-19 13:38:59','dMIlyMqx0Fk7GMuRNozjXcBbyuLoNwgA',NULL,0),(136,'pallet','2021-02-19 13:38:59','2021-02-19 13:38:59','xVkcVna88bYIbEoOobe5y2lrxtLz2SUm','DqPx3Qzp7M4GWgbBvOJwVVekhpvVzaXT',0),(137,'ingresso_merce','2021-02-19 13:43:19','2021-02-19 13:43:19','Rz5vqHfqqzPiecpMVcIiI8yfgxszCuQS',NULL,0),(138,'pallet','2021-02-19 13:46:40','2021-02-19 13:46:40','HyXT303GkfNrwbdFPTJJ0cJNPxwWBNXG',NULL,0),(139,'allocazione_pallet','2021-02-19 13:46:40','2021-02-19 13:46:40','2z0alBV3oah27O9jUzz9mdouqRFyCXPw',NULL,0),(140,'allocazione_celle','2021-02-19 13:46:40','2021-02-19 13:46:40','HxAdY4yvqnjcozRTMfWlnmT8br9QUcV6',NULL,0),(141,'pallet','2021-02-19 13:46:41','2021-02-19 13:46:41','HyXT303GkfNrwbdFPTJJ0cJNPxwWBNXG','ShvdKnzY6ErSgJZDSzScI5RUDo7O4wcO',0),(142,'pallet','2021-02-19 13:47:31','2021-02-19 13:47:31','BEdrt6psN0Edn8GRVmNKtBTmq1gn0fWU',NULL,0),(143,'allocazione_pallet','2021-02-19 13:47:31','2021-02-19 13:47:31','i1zxsChM2CTrnlv8jTNEqsizdTiOVNKO',NULL,0),(144,'allocazione_celle','2021-02-19 13:47:32','2021-02-19 13:47:32','4iqx5F5ywByR5cr5zPUIM6i8GeE1wRvZ',NULL,0),(145,'pallet','2021-02-19 13:47:32','2021-02-19 13:47:32','BEdrt6psN0Edn8GRVmNKtBTmq1gn0fWU','dAJB99ORIOOZg7k55BXk1jeH6jPaCFEC',0),(146,'pallet','2021-02-19 13:49:29','2021-02-19 13:49:29','IhucqqHR4KuthcIc1DklrZZRLXLHfdiV',NULL,0),(147,'allocazione_pallet','2021-02-19 13:49:29','2021-02-19 13:49:29','hO0Q0LmwaSiMpaVjvpbNntBuiXwJtiDN',NULL,0),(148,'allocazione_celle','2021-02-19 13:49:30','2021-02-19 13:49:30','vIxCrb0pshRtgjH11cxyJBTuBrx3XJUr',NULL,0),(149,'pallet','2021-02-19 13:49:30','2021-02-19 13:49:30','IhucqqHR4KuthcIc1DklrZZRLXLHfdiV','YPEgXAXvlhpVhnobS4Y2pzlLTFpKKJMR',0),(150,'pallettizzazione','2021-02-25 09:52:08','2021-02-25 09:52:08','kZYeOpm6uRc68mGTkH0qVf8rMiW1LylR',NULL,0),(151,'configurazione_pallet','2021-02-25 09:52:08','2021-02-25 09:52:08','6j6l1x9r47hrC7MHOe2c5r5Zxhy169dc',NULL,0),(152,'pallet','2021-02-25 09:52:08','2021-02-25 09:52:08','ESiZUM9jJeCmhLbVuJDNxlbRLr2mw77x',NULL,0),(153,'allocazione_pallet','2021-02-25 09:52:08','2021-02-25 09:52:08','BO4I7ldpQ2SzjPefAOORjmNR3O0DkZke',NULL,0),(154,'allocazione_celle','2021-02-25 09:52:09','2021-02-25 09:52:09','FcS8Cta95JZzxeWoT4iiHyJe3oH5I2QR',NULL,0),(155,'pallet','2021-02-25 09:52:09','2021-02-25 09:52:09','ESiZUM9jJeCmhLbVuJDNxlbRLr2mw77x','xPtNlhPdPn19ADfITaBbbEdGz9xM592T',0),(156,'pallet','2021-02-25 09:53:46','2021-02-25 09:53:46','QQ7yakbYtk5BwZP4ja1vxXuGXb6vXLPc',NULL,0),(157,'allocazione_pallet','2021-02-25 09:53:46','2021-02-25 09:53:46','j5OcLgLllIBrcuaWAX1cpXU7GrLNPeEQ',NULL,0),(158,'allocazione_celle','2021-02-25 09:53:47','2021-02-25 09:53:47','l7nSBTY4KH3QehLLFGC2d881UNQGGG6p',NULL,0),(159,'pallet','2021-02-25 09:53:47','2021-02-25 09:53:47','QQ7yakbYtk5BwZP4ja1vxXuGXb6vXLPc','8V0AXC0JxxxhW42gKMM1eIInpfxnNtLL',0),(160,'pallettizzazione','2021-02-25 09:54:58','2021-02-25 09:54:58','EIwvpjEows3LzQfO3QRX0UMOhMcCSg27',NULL,0),(161,'configurazione_pallet','2021-02-25 09:54:58','2021-02-25 09:54:58','J1vagJNromCa99JqB3lTFwRrmC5oLQL7',NULL,0),(162,'pallet','2021-02-25 09:54:58','2021-02-25 09:54:58','KplCVVVDhorhgVFZas9F7IyRv384Gagj',NULL,0),(163,'allocazione_pallet','2021-02-25 09:54:58','2021-02-25 09:54:58','duzvXjXzQGEFTkwNjXEiyuSBZYICLhc3',NULL,0),(164,'allocazione_celle','2021-02-25 09:54:58','2021-02-25 09:54:58','PxdhkVEaVOb9q47nzrGZ08IBchTk4FnB',NULL,0),(165,'pallet','2021-02-25 09:54:58','2021-02-25 09:54:58','KplCVVVDhorhgVFZas9F7IyRv384Gagj','zY2JfRPnjFfiTzrM2emeoARRgMyLenI7',0),(166,'pallet','2021-02-25 09:56:00','2021-02-25 09:56:00','ROWgMjeuEFU2pBUlbkpTuav2kGZZVJHV',NULL,0),(167,'allocazione_pallet','2021-02-25 09:56:00','2021-02-25 09:56:00','ScDPkr43sKxX3gwkmpaOYJ8BBt5i1EBq',NULL,0),(168,'allocazione_celle','2021-02-25 09:56:00','2021-02-25 09:56:00','75lYkECzEcpw3oPCEtBhsr4ILw1FXq40',NULL,0),(169,'pallet','2021-02-25 09:56:01','2021-02-25 09:56:01','ROWgMjeuEFU2pBUlbkpTuav2kGZZVJHV','ItPI402s8UYODnmM7nmC0p8jpeeJzdd6',0),(170,'articolo','2021-02-25 09:56:30','2021-02-25 09:56:30','xWVzwyfGfMBYvG7ISvDEhL4PMJueWezC',NULL,0),(171,'pallet','2021-02-25 09:56:30','2021-02-25 09:56:30','HKYN90pJEMTYOc9TF5MESVsjISEVKmbe',NULL,0),(172,'allocazione_pallet','2021-02-25 09:56:30','2021-02-25 09:56:30','Bgtj3n5pDtWkFyDkdFRFXn17Q0BCrec2',NULL,0),(173,'allocazione_celle','2021-02-25 09:56:30','2021-02-25 09:56:30','LY48FAa9IElLNTcrx1SaGrDF0ybPIdXJ',NULL,0),(174,'pallet','2021-02-25 09:56:30','2021-02-25 09:56:30','HKYN90pJEMTYOc9TF5MESVsjISEVKmbe','QAwTMKtlR4LxJ99iWv3ooftHeLh2Lacr',0),(175,'articolo','2021-02-25 09:57:32','2021-02-25 09:57:32','nWP3sOCr4sTHvaSXWqj3Q9Ugoek9P9Ze',NULL,0),(176,'pallettizzazione','2021-02-25 09:57:32','2021-02-25 09:57:32','sih2wtaAROQ2ClgeZ8TkqaSORWrmSM7v',NULL,0),(177,'configurazione_pallet','2021-02-25 09:57:32','2021-02-25 09:57:32','8icYQyfrh48BtgNrgz6ndFIgeXsSna0L',NULL,0),(178,'pallet','2021-02-25 09:57:32','2021-02-25 09:57:32','DFVcOlrY6d5qWs75tW3ThYnpBGZg3nUQ',NULL,0),(179,'allocazione_pallet','2021-02-25 09:57:32','2021-02-25 09:57:32','ws6OmxGdL3lj2EifPVwD0F2fnVAM1JK9',NULL,0),(180,'allocazione_celle','2021-02-25 09:57:32','2021-02-25 09:57:32','zIcTKrIQgwd4dWK72vatmWx5ljXoUmLz',NULL,0),(181,'pallet','2021-02-25 09:57:32','2021-02-25 09:57:32','DFVcOlrY6d5qWs75tW3ThYnpBGZg3nUQ','pWLZ3JzNV3qPNhsQmsZPffNJF6oG9wkX',0),(182,'pallet','2021-02-25 10:09:39','2021-02-25 10:09:39','aimf8R88QrkmE1esso4nbNqrmbLIxHCR',NULL,0),(183,'allocazione_pallet','2021-02-25 10:09:39','2021-02-25 10:09:39','9poDGWc2xDe8B7Yhz0N5gKnCeqVFRmN5',NULL,0),(184,'allocazione_celle','2021-02-25 10:09:40','2021-02-25 10:09:40','ylHUsG6yO6sHBdM4NT1SVnZZ4fLyKWr9',NULL,0),(185,'pallet','2021-02-25 10:09:40','2021-02-25 10:09:40','aimf8R88QrkmE1esso4nbNqrmbLIxHCR','57ozfPgWSFIDZid2XhEaY55hJHDPUzRO',0),(186,'pallet','2021-02-25 10:10:11','2021-02-25 10:10:11','DUa68Pt08LOC8B3KTVUQmM3Thli0p0Ut',NULL,0),(187,'allocazione_pallet','2021-02-25 10:10:11','2021-02-25 10:10:11','wL7GsVJNd9t6Ti6RhD8AoeuvAh4oSmhq',NULL,0),(188,'allocazione_celle','2021-02-25 10:10:11','2021-02-25 10:10:11','SLqZKf79rpgar3QqglAPjc6bZNv3C8uj',NULL,0),(189,'pallet','2021-02-25 10:10:11','2021-02-25 10:10:11','DUa68Pt08LOC8B3KTVUQmM3Thli0p0Ut','QqryMpr8AtWfa8l9DcvNcUhi2sY4RQa1',0),(190,'pallet','2021-02-25 10:10:39','2021-02-25 10:10:39','OSB5MOzBQniJKFdX99pf6ywCWd5S2xCe',NULL,0),(191,'allocazione_pallet','2021-02-25 10:10:39','2021-02-25 10:10:39','l95srdwXsM4kd4OJhBDgEHeaQn1D8WES',NULL,0),(192,'allocazione_celle','2021-02-25 10:10:39','2021-02-25 10:10:39','cINo9zXMx2lreWh5CidoWhBEMDcNa0rn',NULL,0),(193,'pallet','2021-02-25 10:10:39','2021-02-25 10:10:39','OSB5MOzBQniJKFdX99pf6ywCWd5S2xCe','8TXgIkZdJdU51ZTuEVnHr7NQQSSZ1Km8',0),(194,'pallet','2021-02-25 10:11:01','2021-02-25 10:11:01','y9V3lF19AK4kOLifSINLvzdrkbz5YtYM',NULL,0),(195,'allocazione_pallet','2021-02-25 10:11:01','2021-02-25 10:11:01','AAbZHyZNcyUzwXqYIA90Yw8TXTehIPIz',NULL,0),(196,'allocazione_celle','2021-02-25 10:11:01','2021-02-25 10:11:01','yPyUY9N7vzoFlnz68xolfngo2HjZuGUU',NULL,0),(197,'pallet','2021-02-25 10:11:02','2021-02-25 10:11:02','y9V3lF19AK4kOLifSINLvzdrkbz5YtYM','n7ZKEtyE8cH4mwB6bDAyYVhHpcPgySHr',0),(198,'pallet','2021-02-25 10:11:42','2021-02-25 10:11:42','EkrgH64HRChKpYs1yErNmf0XKsaovoav',NULL,0),(199,'allocazione_pallet','2021-02-25 10:11:42','2021-02-25 10:11:42','uAVD3I4sVZFB1seFFXcGdVaSliQszNqa',NULL,0),(200,'pallet','2021-02-25 10:11:42','2021-02-25 10:11:42','O92pYIjHehN4VOpMPWLCYtU5NFRmzvCu',NULL,0),(201,'allocazione_pallet','2021-02-25 10:11:42','2021-02-25 10:11:42','hZKwqisvl9pi88r7LqidIMRc2pONkq5q',NULL,0),(202,'allocazione_celle','2021-02-25 10:11:42','2021-02-25 10:11:42','crAntmFD5yG8pl46PJ7MxqzexOYpxwX5',NULL,0),(203,'pallet','2021-02-25 10:11:42','2021-02-25 10:11:42','EkrgH64HRChKpYs1yErNmf0XKsaovoav','bWtmwilwrAJkbawupgBCaXy7kc12eWDJ',0),(204,'allocazione_celle','2021-02-25 10:11:42','2021-02-25 10:11:42','gjz3mG4V1d52XA5cmwWAdyUHWVSS4F5L',NULL,0),(205,'pallet','2021-02-25 10:11:42','2021-02-25 10:11:42','O92pYIjHehN4VOpMPWLCYtU5NFRmzvCu','eBNQUhs0dJhSeNZoPwd2DlJBcTgN11kd',0),(206,'pallet','2021-02-25 10:11:54','2021-02-25 10:11:54','rBfib3ut5VCuh5cQKPfvOcudOfr7jMkp',NULL,0),(207,'allocazione_pallet','2021-02-25 10:11:54','2021-02-25 10:11:54','WyYwSSVUq8xHrFg21RDyZopJp1h15UTH',NULL,0),(208,'allocazione_celle','2021-02-25 10:11:54','2021-02-25 10:11:54','fbMeznGR7GzCTplfuMXjPR1la69dgcHW',NULL,0),(209,'pallet','2021-02-25 10:11:54','2021-02-25 10:11:54','rBfib3ut5VCuh5cQKPfvOcudOfr7jMkp','2yApLthPJfG6YMzhA6MdCBpvXUNEaIR0',0),(210,'pallet','2021-02-25 10:20:21','2021-02-25 10:20:21','w0REHdNno4e5CCASLDiMVjvLGCRQHhyg',NULL,0),(211,'allocazione_pallet','2021-02-25 10:20:21','2021-02-25 10:20:21','40ly3683BAjej3GVzHx2ZPagPrOUMrS0',NULL,0),(212,'allocazione_celle','2021-02-25 10:20:22','2021-02-25 10:20:22','NwrWQTSdxY9cZOF2BwrNvsi2XXeam3x0',NULL,0),(213,'pallet','2021-02-25 10:20:22','2021-02-25 10:20:22','w0REHdNno4e5CCASLDiMVjvLGCRQHhyg','xHCnkbhdHr1GAtiqTpnvUvYI2sEkUrQG',0),(214,'pallet','2021-02-25 10:21:54','2021-02-25 10:21:54','PT8dE0JktU4yw19lJmKFgcdbSpxha7Kn',NULL,0),(215,'allocazione_pallet','2021-02-25 10:21:54','2021-02-25 10:21:54','F0foJT3AA9KnJN9Dlw0IYGisyeArnEbi',NULL,0),(216,'allocazione_celle','2021-02-25 10:21:55','2021-02-25 10:21:55','a7PbUmNhnOlHlOXlXS2mmCJBiGO7NTqm',NULL,0),(217,'pallet','2021-02-25 10:21:55','2021-02-25 10:21:55','PT8dE0JktU4yw19lJmKFgcdbSpxha7Kn','erPmOQM85yxSXHfZpx7jZ8pR2uF3sSn4',0),(218,'pallet','2021-02-25 10:22:34','2021-02-25 10:22:34','NeIYDvJzQMQFHMC2oBcHoxwKugqDTOG8',NULL,0),(219,'allocazione_pallet','2021-02-25 10:22:34','2021-02-25 10:22:34','gosu8BVybWY7Cccx2bRmHqoQnBMsy1ZC',NULL,0),(220,'allocazione_celle','2021-02-25 10:22:35','2021-02-25 10:22:35','SIVrpFmrquXNMMOusZmdJh79IFWcVsHi',NULL,0),(221,'pallet','2021-02-25 10:22:35','2021-02-25 10:22:35','NeIYDvJzQMQFHMC2oBcHoxwKugqDTOG8','ZCsDja9fRBbBSJHrSAJZOPd74lzHeTjr',0),(222,'pallet','2021-02-25 10:23:02','2021-02-25 10:23:02','lmqCPc4Lgzg38DzswY0tQnfw5g4J7WvU',NULL,0),(223,'allocazione_pallet','2021-02-25 10:23:02','2021-02-25 10:23:02','nH4pbQe3sFztAODwxpKVeC0nLqqsOxdS',NULL,0),(224,'allocazione_celle','2021-02-25 10:23:03','2021-02-25 10:23:03','3hV9MrMqDEUocdVyirIkZxz4WwMu0q8H',NULL,0),(225,'pallet','2021-02-25 10:23:03','2021-02-25 10:23:03','lmqCPc4Lgzg38DzswY0tQnfw5g4J7WvU','8fOBuU7UOvxgydTJcxnU5maXOmnwctWj',0),(226,'pallet','2021-02-25 10:23:05','2021-02-25 10:23:05','5576rekO555CMachkqLMg2ee8S63HMkk',NULL,0),(227,'allocazione_pallet','2021-02-25 10:23:05','2021-02-25 10:23:05','CDiDrftjIK1A0mjNLsE4izPRipqOnbNZ',NULL,0),(228,'allocazione_celle','2021-02-25 10:23:05','2021-02-25 10:23:05','H6K8JcoXEmbUdxvOkik7u81AiLCSJBPr',NULL,0),(229,'pallet','2021-02-25 10:23:05','2021-02-25 10:23:05','5576rekO555CMachkqLMg2ee8S63HMkk','lZt1d77MBuaihR1aOsPrPpN6yfDntcBx',0),(230,'pallet','2021-02-25 10:23:11','2021-02-25 10:23:11','90WbvtW04YGfWPa8Iba9uDSB3tICIBgd',NULL,0),(231,'allocazione_pallet','2021-02-25 10:23:11','2021-02-25 10:23:11','nz2WVJiOZcYdYrFdmd9SDzfJsSHjNHq3',NULL,0),(232,'allocazione_celle','2021-02-25 10:23:11','2021-02-25 10:23:11','YRtZ5MGEGcVAXuNzEZmad8iTDdOXIrs4',NULL,0),(233,'pallet','2021-02-25 10:23:11','2021-02-25 10:23:11','90WbvtW04YGfWPa8Iba9uDSB3tICIBgd','46OH8kzR3G7bEyvuvPNCfVscw3dwVvig',0),(234,'pallet','2021-02-25 10:23:13','2021-02-25 10:23:13','id5r6HR4INH5KKu5ckVsytLZWYaPoJGX',NULL,0),(235,'allocazione_pallet','2021-02-25 10:23:13','2021-02-25 10:23:13','FPQ75YPcRZl86dGaeAfVOAY0ThsLqKSE',NULL,0),(236,'allocazione_celle','2021-02-25 10:23:13','2021-02-25 10:23:13','wN2btVizJvFIR8oIyUiZKeRvzQ6Zw18f',NULL,0),(237,'pallet','2021-02-25 10:23:13','2021-02-25 10:23:13','id5r6HR4INH5KKu5ckVsytLZWYaPoJGX','qByj2JfaRbgpcWgo09F2WrefN5xitdWj',0),(238,'pallet','2021-02-26 08:52:00','2021-02-26 08:52:00','gEAaYtBq1qmU2uwO1D3NDOpNX4SLtMS7',NULL,0),(239,'allocazione_pallet','2021-02-26 08:52:00','2021-02-26 08:52:00','mVGp07nrGcD5cW9Gpt8RvjVe7xTXlSPa',NULL,0),(240,'allocazione_celle','2021-02-26 08:52:01','2021-02-26 08:52:01','NXHbDC310TGFYeF7VapYGNIyyAIXMSJA',NULL,0),(241,'pallet','2021-02-26 08:52:01','2021-02-26 08:52:01','gEAaYtBq1qmU2uwO1D3NDOpNX4SLtMS7','QlBFfeL7ylHNkwM2rx0qfX4QTF8lvJX6',0),(242,'pallet','2021-02-26 08:56:32','2021-02-26 08:56:32','7hDzz9DrYaZrfLOcAcehiN6h6Gh4Equu',NULL,0),(243,'allocazione_pallet','2021-02-26 08:56:32','2021-02-26 08:56:32','byyc557hzA8unK29qd3oLTm9KYInxqVS',NULL,0),(244,'allocazione_celle','2021-02-26 08:56:32','2021-02-26 08:56:32','1JLF2vSq7fO8TudK7K1owEpczIZn719v',NULL,0),(245,'pallet','2021-02-26 08:56:32','2021-02-26 08:56:32','7hDzz9DrYaZrfLOcAcehiN6h6Gh4Equu','rGWNZBy2fZlQGAatPej6imLSizR5Eu36',0),(246,'pallet','2021-02-26 11:04:56','2021-02-26 11:04:56','Q3o6MRJ6kU2chg0QakX5mefGA1Y4X0G9',NULL,0),(247,'allocazione_pallet','2021-02-26 11:04:56','2021-02-26 11:04:56','TDs09DAjrEuAWSOTE7a77pJtw4N4ACGy',NULL,0),(248,'allocazione_celle','2021-02-26 11:04:56','2021-02-26 11:04:56','0cVIeLnVJRCWIeEh66GMwZ52BbG8q76p',NULL,0),(249,'pallet','2021-02-26 11:04:56','2021-02-26 11:04:56','Q3o6MRJ6kU2chg0QakX5mefGA1Y4X0G9','5FfVCYs7iQIAHmYmmxNd1pyShYDaCLTn',0),(250,'pallet','2021-02-26 11:05:34','2021-02-26 11:05:34','PDFoTFJgnc0E6TB9MvR8reRAoqGqTNqj',NULL,0),(251,'allocazione_pallet','2021-02-26 11:05:34','2021-02-26 11:05:34','pmMSe8ZM1WhVfFL1CpZpaiJpPnfLl47I',NULL,0),(252,'allocazione_celle','2021-02-26 11:05:34','2021-02-26 11:05:34','QVKlXIn4eY0L1PJZzG7VMPVqcMVpOFUO',NULL,0),(253,'pallet','2021-02-26 11:05:34','2021-02-26 11:05:34','PDFoTFJgnc0E6TB9MvR8reRAoqGqTNqj','VGUPCWzj3jaxhZia7CNopojNP4LZSkMd',0),(254,'modulo_ordine','2021-02-26 14:28:52','2021-02-26 14:28:52','A3ljBSIawCu47rjv9vDjwswOcTrb7Fn2',NULL,0),(255,'spedizione','2021-02-26 14:29:15','2021-02-26 14:29:15','dJ9wouLpIaiKkCoqjUNCJ4ODW03U6qsE','sL5TzFVMBsbyd6hEcPr2tGIUnyCcT90q',0),(256,'inventario_spedizione','2021-02-26 14:29:15','2021-02-26 14:29:15','Ge8I1qhMZPefHFG6eQpwXRPNAjcMovyI',NULL,0),(257,'allocazione_celle','2021-02-26 14:29:15','2021-02-26 14:29:15','1JLF2vSq7fO8TudK7K1owEpczIZn719v',NULL,1),(258,'modulo_ordine','2021-02-26 14:29:15','2021-02-26 14:29:15','A3ljBSIawCu47rjv9vDjwswOcTrb7Fn2','R2abEVcIVRX7vKKBbTCeUpYtPkyQ6lFr',0),(259,'pallet','2021-02-26 14:29:15','2021-02-26 14:29:15','7hDzz9DrYaZrfLOcAcehiN6h6Gh4Equu','yKLJsjT8TkYPd9p7BB5jCe7H7dCQcLWJ',0),(260,'spedizione','2021-02-26 14:29:19','2021-02-26 14:29:19','dJ9wouLpIaiKkCoqjUNCJ4ODW03U6qsE','JCg644G2PiYRhUDUlhlAgCRjWOia7hWD',0),(261,'pallet','2021-02-26 15:34:33','2021-02-26 15:34:33','4UrrJgBKLNVtbZ0kfH0LG5YZffByhshk',NULL,0),(262,'allocazione_pallet','2021-02-26 15:34:33','2021-02-26 15:34:33','8BOY9pql8c0fOJ0BdPTwI4zTOSIpeQ11',NULL,0),(263,'allocazione_celle','2021-02-26 15:34:33','2021-02-26 15:34:33','GEfHMQIiz8clfdTPvD8Fr1hbNSnuPXQy',NULL,0),(264,'pallet','2021-02-26 15:34:33','2021-02-26 15:34:33','4UrrJgBKLNVtbZ0kfH0LG5YZffByhshk','mSC0qZ9amnAlsdoGeAJsABfuBdo5xmCU',0),(265,'pallet','2021-02-26 16:42:28','2021-02-26 16:42:28','PZ1r7XmyKQwxvqf05bX6dumKYRry4RB2',NULL,0),(266,'allocazione_pallet','2021-02-26 16:42:28','2021-02-26 16:42:28','8h20Sp5pPN1vuMo3NrUFa5mClnZVSVZh',NULL,0),(267,'allocazione_celle','2021-02-26 16:42:29','2021-02-26 16:42:29','gi0w1eUX8kpo2p5l5qKKpqg64uQSdsYW',NULL,0),(268,'pallet','2021-02-26 16:42:29','2021-02-26 16:42:29','PZ1r7XmyKQwxvqf05bX6dumKYRry4RB2','w1ALvyCEekHr3wHcT7DV1Es4PqlkzGiE',0),(269,'pallet','2021-03-01 10:45:28','2021-03-01 10:45:28','fQc2xeUNOZOd7gqZjHrhEsx1mpXNEsqE',NULL,0),(270,'allocazione_pallet','2021-03-01 10:45:29','2021-03-01 10:45:29','GslH7iTq3hwzLj3Oypln4bKoodvLeTih',NULL,0),(271,'allocazione_celle','2021-03-01 10:45:29','2021-03-01 10:45:29','8uLYL3Gl8xBfajo6sv4dTQNY3QjR6MW1',NULL,0),(272,'pallet','2021-03-01 10:45:29','2021-03-01 10:45:29','fQc2xeUNOZOd7gqZjHrhEsx1mpXNEsqE','kMimQrynwmyx7JDMVbnR2DyGOu8BJ149',0),(273,'pallet','2021-03-01 10:52:19','2021-03-01 10:52:19','XTXVBfIpmD5o4zYu4VtPW84vykfsqH1k',NULL,0),(274,'allocazione_pallet','2021-03-01 10:52:20','2021-03-01 10:52:20','PFehB6O4IzBiEMsS0af6IcebxpT1I2no',NULL,0),(275,'allocazione_celle','2021-03-01 10:52:20','2021-03-01 10:52:20','x2Byy9Jv6BGfUEe4VAVvAQ3PcWCULVdm',NULL,0),(276,'pallet','2021-03-01 10:52:20','2021-03-01 10:52:20','XTXVBfIpmD5o4zYu4VtPW84vykfsqH1k','atBCAnlLdEp5uUdUC7uLNQrzaJ37pDol',0),(277,'articolo','2021-03-01 11:13:45','2021-03-01 11:13:45','reOQjr9yA5QQLiQDak8FIr8Hfx6OKWBS',NULL,0),(278,'pallettizzazione','2021-03-01 11:13:45','2021-03-01 11:13:45','0MacwjYWIfX6mVmcuwmN7EDIDmGAbSvV',NULL,0),(279,'configurazione_pallet','2021-03-01 11:13:45','2021-03-01 11:13:45','vuHXIn8miR7w4VgSbprfUQLkfLjIfzub',NULL,0),(280,'pallet','2021-03-01 11:13:45','2021-03-01 11:13:45','gdgli9gbKkT0t3yIm8vBWex2aXFrlxre',NULL,0),(281,'allocazione_pallet','2021-03-01 11:13:45','2021-03-01 11:13:45','oLgc5JaHc02DpdgdPKr4ntq066ezkMFT',NULL,0),(282,'allocazione_celle','2021-03-01 11:13:45','2021-03-01 11:13:45','hyzyxsEU8ntoMwGAj7DZeJ73SYa1qEMN',NULL,0),(283,'pallet','2021-03-01 11:13:45','2021-03-01 11:13:45','gdgli9gbKkT0t3yIm8vBWex2aXFrlxre','Yo5kWnKcykAeSfrIz93K5FuHNEfoMqcI',0),(284,'articolo','2021-03-01 11:13:50','2021-03-01 11:13:50','zoQwMUdjmnWm970m1RQ1PvUkPO5D0kVz',NULL,0),(285,'pallettizzazione','2021-03-01 11:13:50','2021-03-01 11:13:50','wkMGPiN9pHwNSA6yIOpcrdn3YJ7UrCJr',NULL,0),(286,'configurazione_pallet','2021-03-01 11:13:50','2021-03-01 11:13:50','VDfjluhe0FosEvqP9PHGxRu8i3hPzT8X',NULL,0),(287,'pallet','2021-03-01 11:13:50','2021-03-01 11:13:50','RXlnWg3CVCCJqxl27VSuY2Eca04Fbhuc',NULL,0),(288,'allocazione_pallet','2021-03-01 11:13:50','2021-03-01 11:13:50','IJxok9earZPHu2KtpJTBO93ofikbmMh2',NULL,0),(289,'allocazione_celle','2021-03-01 11:13:50','2021-03-01 11:13:50','RrWSPjkWddcKbw2WbLZCaeOa8fJ1AII4',NULL,0),(290,'pallet','2021-03-01 11:13:51','2021-03-01 11:13:51','RXlnWg3CVCCJqxl27VSuY2Eca04Fbhuc','RN4A3P5iGlSV8znvyhCNyyGnw27UVTbY',0),(291,'pallet','2021-03-01 11:15:01','2021-03-01 11:15:01','1kpSz1XYAQfslUF6nElUSEznmlbwJpNh',NULL,0),(292,'allocazione_pallet','2021-03-01 11:15:01','2021-03-01 11:15:01','deNICbELj6lf52UEo4M8suB1PgPkUC9s',NULL,0),(293,'allocazione_celle','2021-03-01 11:15:02','2021-03-01 11:15:02','qg464adpOXah7y3Oo1RrEsuTzUlh4GKT',NULL,0),(294,'pallet','2021-03-01 11:15:02','2021-03-01 11:15:02','1kpSz1XYAQfslUF6nElUSEznmlbwJpNh','L7YqKMw5s9mGOx83thazEnevyflTli0A',0),(295,'pallet','2021-03-01 11:15:56','2021-03-01 11:15:56','xBLhIF65tHTEr3bvWZEfTYGLgwNQsicq',NULL,0),(296,'allocazione_pallet','2021-03-01 11:15:56','2021-03-01 11:15:56','KbwGxQNrxtfYWMwLufXAAhiNpKYBhmJp',NULL,0),(297,'allocazione_celle','2021-03-01 11:15:56','2021-03-01 11:15:56','SrcHdCN6f0njkzNm2TNNrN3LM04k80WX',NULL,0),(298,'pallet','2021-03-01 11:15:57','2021-03-01 11:15:57','xBLhIF65tHTEr3bvWZEfTYGLgwNQsicq','rMYJ8YsLjBbbBQWNcIe73J3dn9x6U3fB',0),(299,'pallet','2021-03-01 11:15:58','2021-03-01 11:15:58','N4zBJhKaWc69wdH3rFX0a4I5RUOSkv2K',NULL,0),(300,'allocazione_pallet','2021-03-01 11:15:58','2021-03-01 11:15:58','bKO2Q2I164vbK5yaJIixtXc0ZfgMPr1A',NULL,0),(301,'allocazione_celle','2021-03-01 11:15:58','2021-03-01 11:15:58','aOtaINMRptVQG3eTzS8SWVol070iXu4S',NULL,0),(302,'pallet','2021-03-01 11:15:58','2021-03-01 11:15:58','N4zBJhKaWc69wdH3rFX0a4I5RUOSkv2K','si3XHMbCRMCAay6zsWmlFLIDbhpdtdr4',0),(303,'pallet','2021-03-02 16:32:06','2021-03-02 16:32:06','vuUMcxNrtOxzkma05zKif4YWyFnXcD5b',NULL,0),(304,'allocazione_pallet','2021-03-02 16:32:06','2021-03-02 16:32:06','rzAOytua36vgEGOXVVbvGB7tpUAxslgF',NULL,0),(305,'allocazione_celle','2021-03-02 16:32:07','2021-03-02 16:32:07','kI5BW0cjRnh1WmdIqaHzmRxj1YeRCRtf',NULL,0),(306,'pallet','2021-03-02 16:32:07','2021-03-02 16:32:07','vuUMcxNrtOxzkma05zKif4YWyFnXcD5b','L9EbkgEIdtebGVjn2YWiqvRVeFHH9Jfr',0);
/*!40000 ALTER TABLE `signature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spedizione`
--

DROP TABLE IF EXISTS `spedizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spedizione` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `referenceCode` varchar(64) DEFAULT NULL,
  `cliente_id` int(16) NOT NULL,
  `note` text,
  `stato` enum('in corso','completato') NOT NULL,
  `priorita` int(1) NOT NULL COMMENT '0:bassa, 1:normale, 2:alta',
  `lock_user_picking` int(11) NOT NULL,
  `lock_user_prelievo` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insert_signature` varchar(32) NOT NULL,
  `update_signature` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spedizione`
--

LOCK TABLES `spedizione` WRITE;
/*!40000 ALTER TABLE `spedizione` DISABLE KEYS */;
INSERT INTO `spedizione` VALUES (1,'\"ELETTROMECCANICA ARTIGIANA PM\"',2,NULL,'completato',1,0,5,'2021-02-10 23:00:00','2021-02-26 14:29:19','dJ9wouLpIaiKkCoqjUNCJ4ODW03U6qsE','JCg644G2PiYRhUDUlhlAgCRjWOia7hWD');
/*!40000 ALTER TABLE `spedizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stampante`
--

DROP TABLE IF EXISTS `stampante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stampante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ip` text NOT NULL,
  `port` int(11) NOT NULL,
  `ipBarbecue` text NOT NULL,
  `portBarbecue` int(11) NOT NULL,
  `widthBarbecue` int(11) NOT NULL,
  `heightBarbecue` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stampante`
--

LOCK TABLES `stampante` WRITE;
/*!40000 ALTER TABLE `stampante` DISABLE KEYS */;
INSERT INTO `stampante` VALUES (1,'Konica','192.168.1.201',9100,'localhost',8080,1,40);
/*!40000 ALTER TABLE `stampante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utente` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ruolo` int(2) NOT NULL COMMENT '1:admin, 2:standard, 3:picking, 4:prelievo',
  `lingua` enum('it','en','de') NOT NULL DEFAULT 'it',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'admin','7e98e61262ce33be80a1bc1657a29c915d59218f5d18aa3e06f46dfb7027ea9e',1,'it','2018-11-06 19:38:02','2021-01-14 14:51:20'),(2,'user','3e3b8f3a0fc8461a5492eab5aa1fe75deb84c5b6c3ac5b4a596b9f563261756a',2,'it','2018-11-06 20:45:46','2021-01-14 14:51:15'),(3,'operatore1','bdb5168284c94a97b3f7e4ade3654b2f0663445318fc04d63bba8e18f214ffd3',2,'it','2019-02-27 20:58:34','2021-01-14 14:51:08'),(4,'oao','9f52832cd716266f1e4c725839af6437d441ed18706d70bd6ec8a468bd6843c1',1,'it','2021-01-14 14:45:27','2021-01-14 14:45:27'),(5,'Maintenance','6f22d5aa68c1cd4a473c9ec7acd9186675d8e3b4fd655948fa0cb8789694cf23',1,'it','2021-01-14 14:51:49','2021-01-14 14:51:49');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 11:54:00
