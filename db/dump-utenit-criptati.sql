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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocazione_celle`
--

LOCK TABLES `allocazione_celle` WRITE;
/*!40000 ALTER TABLE `allocazione_celle` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allocazione_pallet`
--

LOCK TABLES `allocazione_pallet` WRITE;
/*!40000 ALTER TABLE `allocazione_pallet` DISABLE KEYS */;
INSERT INTO `allocazione_pallet` VALUES (1,1,0,10,1,'2021-01-26 09:19:12','2021-01-26 09:19:12','T4rOewmappDSELrUfExoyCbUUXKbdopY',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articolo`
--

LOCK TABLES `articolo` WRITE;
/*!40000 ALTER TABLE `articolo` DISABLE KEYS */;
INSERT INTO `articolo` VALUES (1,'11124596','ingresso prova','Manutenzione ordinaria','no','2021-01-26 09:18:16','2021-01-26 09:18:16','ysXOq97UNh9IkKAA7dyQZKv8Ao73BkXy',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2021-01-13 10:46:58','2021-01-13 10:46:58','',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configurazione_pallet`
--

LOCK TABLES `configurazione_pallet` WRITE;
/*!40000 ALTER TABLE `configurazione_pallet` DISABLE KEYS */;
INSERT INTO `configurazione_pallet` VALUES (1,NULL,'11124596',10,'2021-01-26 09:18:52','2021-01-26 09:18:52',1,0,1,'F2TV8T9pvR0DYkCmgjyQk5J3EXGJ4vHk',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingresso_merce`
--

LOCK TABLES `ingresso_merce` WRITE;
/*!40000 ALTER TABLE `ingresso_merce` DISABLE KEYS */;
INSERT INTO `ingresso_merce` VALUES (1,'ingr','','confermato',1,'2021-01-26 09:19:02','2021-01-26 09:19:12',0,'HI28S2wMKlH1viBiO4YpOY9T28P8TTbQ','LxzXoVPEgGBk7k8ocb79qbqqhrQgXTVq');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_ingresso_merce`
--

LOCK TABLES `inventario_ingresso_merce` WRITE;
/*!40000 ALTER TABLE `inventario_ingresso_merce` DISABLE KEYS */;
INSERT INTO `inventario_ingresso_merce` VALUES (1,1,0,'','2021-01-26 09:19:09','2021-01-26 09:19:09',1,1,'VZRYLFptGvuIcJX51rN9x7pLP3Z7VfoZ',NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario_spedizione`
--

LOCK TABLES `inventario_spedizione` WRITE;
/*!40000 ALTER TABLE `inventario_spedizione` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (1,'Bm15','prova','1982.168.1.23','2021-01-13 09:58:03','2021-01-13 14:02:41'),(2,'BMB','provaedit','192.168.1.23','2021-01-13 10:01:52','2021-01-20 10:43:51');
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
INSERT INTO `machine_history` VALUES (6,2,'{\"value\":{\"SetDescJob\":\"22\",\"SetRecMld\":\"nome ricetta\",\"SetDescPrt\":\"prova\",\"SetCntPrtBox\":\"33\",\"SetCntPrt\":\"125\",\"ActCntPrt\":\"12\",\"id\":\"2\",\"SetDescColor\":\"black\"}}','2021-01-25 16:29:33','2021-01-25 16:29:33'),(7,1,'{\"value\": {\"SetDescJob\":\"22\",\"SetRecMld\":\"cassettanera\",\"SetDescPrt\":\"try\",\"SetCntPrtBox\":\"44\",\"SetCntPrt\":\"125\",\"ActCntPrt\":\"12\",\"id\":\"1\",\"SetDescColor\":\"red\"}}','2021-01-26 09:03:43','2021-01-26 09:03:43');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo_ordine`
--

LOCK TABLES `modulo_ordine` WRITE;
/*!40000 ALTER TABLE `modulo_ordine` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pallet`
--

LOCK TABLES `pallet` WRITE;
/*!40000 ALTER TABLE `pallet` DISABLE KEYS */;
INSERT INTO `pallet` VALUES (1,2000000001,1,1,0,'2021-01-26 09:19:12','2021-01-26 09:19:12',1,1,'9vRX3dDCZBxxVF56R5UBMN41ZCdN4qwy','akax2B1f9EeMTKF0z1oTbfmBvnPbv7hk');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pallettizzazione`
--

LOCK TABLES `pallettizzazione` WRITE;
/*!40000 ALTER TABLE `pallettizzazione` DISABLE KEYS */;
INSERT INTO `pallettizzazione` VALUES (1,'fgfgfgfg','Manutenzione ordinaria','no',2,'2021-01-26 09:18:00','2021-01-26 09:18:00','XOpcd2OgpzVTL0qfJeOyfP3iGicTUV8A',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (1,'LOGIN','',1,'2021-01-13 10:00:55'),(2,'LOGIN','',1,'2021-01-13 10:29:35'),(3,'LOGIN','',1,'2021-01-13 10:46:43'),(4,'LOGIN','',1,'2021-01-13 10:49:19'),(5,'LOGIN','',1,'2021-01-13 10:52:26'),(6,'LOGIN','',1,'2021-01-13 13:31:07'),(7,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:34:06'),(8,'LOGIN','',1,'2021-01-13 13:40:51'),(9,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:41:00'),(10,'LOGIN','',1,'2021-01-13 13:41:50'),(11,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:42:01'),(12,'LOGIN','',1,'2021-01-13 13:43:53'),(13,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:44:13'),(14,'LOGIN','',1,'2021-01-13 13:47:52'),(15,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:48:00'),(16,'LOGIN','',1,'2021-01-13 13:50:00'),(17,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:50:11'),(18,'LOGIN','',1,'2021-01-13 13:51:31'),(19,'INSERIMENTO','creazione macchina #0',1,'2021-01-13 13:51:40'),(20,'LOGIN','',1,'2021-01-13 13:57:01'),(21,'LOGIN','',1,'2021-01-13 13:58:10'),(22,'INSERIMENTO','creazione macchina #8',1,'2021-01-13 13:58:19'),(23,'LOGIN','',1,'2021-01-13 14:00:43'),(24,'MODIFICA','modifica macchina #1',1,'2021-01-13 14:00:54'),(25,'LOGIN','',1,'2021-01-13 14:02:29'),(26,'MODIFICA','modifica macchina #1',1,'2021-01-13 14:02:41'),(27,'LOGIN','',1,'2021-01-13 14:09:47'),(28,'MODIFICA','modifica macchina #8',1,'2021-01-13 14:10:00'),(29,'INSERIMENTO','creazione macchina #9',1,'2021-01-13 14:10:31'),(30,'LOGIN','',1,'2021-01-14 14:25:43'),(31,'LOGIN','',1,'2021-01-14 14:44:03'),(32,'IMPOSTAZIONI','creazione utente #0',1,'2021-01-14 14:44:36'),(33,'IMPOSTAZIONI','creazione utente #4',1,'2021-01-14 14:45:27'),(34,'LOGOUT','',1,'2021-01-14 14:45:32'),(35,'LOGIN','',4,'2021-01-14 14:50:40'),(36,'LOGOUT','',4,'2021-01-14 14:50:44'),(37,'LOGIN','',4,'2021-01-14 14:50:51'),(38,'IMPOSTAZIONI','modifica utente #3',4,'2021-01-14 14:51:08'),(39,'IMPOSTAZIONI','modifica utente #2',4,'2021-01-14 14:51:15'),(40,'IMPOSTAZIONI','modifica utente #1',4,'2021-01-14 14:51:20'),(41,'IMPOSTAZIONI','creazione utente #5',4,'2021-01-14 14:51:49'),(42,'LOGIN','',1,'2021-01-14 15:05:08'),(43,'LOGIN','',1,'2021-01-14 15:06:28'),(44,'INSERIMENTO','creazione locazione #1',1,'2021-01-14 15:08:15'),(45,'LOGIN','',1,'2021-01-15 15:59:46'),(46,'LOGIN','',1,'2021-01-18 10:31:00'),(47,'LOGIN','',1,'2021-01-18 13:53:28'),(48,'LOGOUT','',1,'2021-01-18 13:54:33'),(49,'LOGIN','',1,'2021-01-18 13:54:37'),(50,'LOGIN','',1,'2021-01-19 14:50:24'),(51,'LOGIN','',1,'2021-01-20 10:42:02'),(52,'LOGIN','',1,'2021-01-20 10:43:39'),(53,'MODIFICA','modifica macchina #2',1,'2021-01-20 10:43:51'),(54,'LOGIN','',1,'2021-01-20 10:50:46'),(55,'LOGIN','',1,'2021-01-20 10:53:10'),(56,'LOGIN','',1,'2021-01-20 13:53:52'),(57,'LOGIN','',1,'2021-01-20 14:04:28'),(58,'LOGIN','',1,'2021-01-20 16:01:00'),(59,'LOGIN','',1,'2021-01-20 16:05:06'),(60,'LOGIN','',1,'2021-01-21 07:41:03'),(61,'LOGIN','',1,'2021-01-22 09:06:04'),(62,'LOGIN','',1,'2021-01-22 09:51:02'),(63,'LOGIN','',1,'2021-01-22 09:56:33'),(64,'LOGIN','',1,'2021-01-22 09:58:44'),(65,'LOGIN','',1,'2021-01-22 10:01:14'),(66,'LOGIN','',1,'2021-01-22 10:02:30'),(67,'LOGIN','',1,'2021-01-22 10:09:28'),(68,'LOGIN','',1,'2021-01-22 10:10:12'),(69,'LOGIN','',1,'2021-01-22 10:10:35'),(70,'LOGIN','',1,'2021-01-22 10:11:53'),(71,'LOGIN','',1,'2021-01-22 10:12:36'),(72,'LOGIN','',1,'2021-01-22 10:13:57'),(73,'LOGIN','',1,'2021-01-22 10:14:52'),(74,'LOGIN','',1,'2021-01-22 10:26:27'),(75,'LOGIN','',1,'2021-01-22 10:27:39'),(76,'LOGIN','',1,'2021-01-22 10:34:15'),(77,'LOGIN','',1,'2021-01-22 10:35:02'),(78,'IMPOSTAZIONI','modifica dati stampante',1,'2021-01-22 10:35:14'),(79,'LOGIN','',1,'2021-01-22 11:12:09'),(80,'LOGIN','',1,'2021-01-22 11:16:14'),(81,'LOGIN','',1,'2021-01-22 11:17:14'),(82,'LOGIN','',1,'2021-01-22 11:18:14'),(83,'LOGIN','',1,'2021-01-22 11:19:38'),(84,'LOGIN','',1,'2021-01-22 14:16:07'),(85,'LOGIN','',1,'2021-01-22 14:17:44'),(86,'LOGIN','',1,'2021-01-22 14:19:58'),(87,'LOGIN','',1,'2021-01-22 14:25:09'),(88,'LOGIN','',1,'2021-01-22 14:26:52'),(89,'LOGIN','',1,'2021-01-22 14:28:35'),(90,'LOGIN','',1,'2021-01-22 14:29:09'),(91,'LOGIN','',1,'2021-01-22 14:32:20'),(92,'LOGIN','',1,'2021-01-22 14:47:07'),(93,'LOGIN','',1,'2021-01-22 14:50:11'),(94,'LOGIN','',1,'2021-01-22 15:46:11'),(95,'LOGIN','',1,'2021-01-22 15:47:36'),(96,'LOGIN','',1,'2021-01-22 15:49:04'),(97,'LOGIN','',1,'2021-01-22 15:49:58'),(98,'LOGIN','',1,'2021-01-22 15:51:20'),(99,'LOGIN','',1,'2021-01-22 15:53:20'),(100,'LOGIN','',1,'2021-01-22 15:54:51'),(101,'LOGIN','',1,'2021-01-22 15:55:33'),(102,'LOGIN','',1,'2021-01-22 15:56:22'),(103,'LOGIN','',1,'2021-01-22 15:56:50'),(104,'LOGIN','',1,'2021-01-22 15:59:16'),(105,'LOGIN','',1,'2021-01-22 15:59:45'),(106,'LOGIN','',1,'2021-01-22 16:03:36'),(107,'LOGIN','',1,'2021-01-22 16:04:32'),(108,'LOGIN','',1,'2021-01-22 16:05:13'),(109,'LOGIN','',1,'2021-01-22 16:06:03'),(110,'LOGIN','',1,'2021-01-22 16:07:07'),(111,'LOGIN','',1,'2021-01-22 16:10:37'),(112,'LOGIN','',1,'2021-01-22 16:11:39'),(113,'LOGIN','',1,'2021-01-22 16:13:31'),(114,'LOGIN','',1,'2021-01-22 16:37:27'),(115,'LOGIN','',1,'2021-01-22 16:39:03'),(116,'LOGIN','',1,'2021-01-22 16:54:00'),(117,'LOGIN','',1,'2021-01-25 07:22:55'),(118,'LOGIN','',1,'2021-01-25 07:38:19'),(119,'LOGIN','',1,'2021-01-25 07:49:39'),(120,'LOGIN','',1,'2021-01-25 08:01:16'),(121,'LOGIN','',1,'2021-01-25 08:03:40'),(122,'LOGIN','',1,'2021-01-25 08:04:29'),(123,'LOGIN','',1,'2021-01-25 08:07:47'),(124,'LOGIN','',1,'2021-01-25 08:08:29'),(125,'LOGIN','',1,'2021-01-25 08:15:53'),(126,'LOGIN','',1,'2021-01-25 08:17:01'),(127,'LOGIN','',1,'2021-01-25 08:18:10'),(128,'LOGIN','',1,'2021-01-25 08:21:39'),(129,'LOGIN','',1,'2021-01-25 08:22:20'),(130,'LOGIN','',1,'2021-01-25 08:25:39'),(131,'LOGIN','',1,'2021-01-25 08:26:22'),(132,'LOGIN','',1,'2021-01-25 08:27:39'),(133,'LOGIN','',1,'2021-01-25 08:31:15'),(134,'LOGIN','',1,'2021-01-25 08:34:49'),(135,'LOGIN','',1,'2021-01-25 08:36:27'),(136,'LOGIN','',1,'2021-01-25 08:36:59'),(137,'LOGIN','',1,'2021-01-25 08:37:34'),(138,'LOGIN','',1,'2021-01-25 08:39:24'),(139,'LOGIN','',1,'2021-01-25 09:04:20'),(140,'LOGIN','',1,'2021-01-25 09:07:46'),(141,'LOGIN','',1,'2021-01-25 09:08:40'),(142,'LOGIN','',1,'2021-01-25 09:09:14'),(143,'LOGIN','',1,'2021-01-25 09:09:59'),(144,'LOGIN','',1,'2021-01-25 09:10:52'),(145,'LOGIN','',1,'2021-01-25 09:11:18'),(146,'LOGIN','',1,'2021-01-25 09:11:57'),(147,'LOGIN','',1,'2021-01-25 09:12:31'),(148,'LOGIN','',1,'2021-01-25 09:14:33'),(149,'LOGIN','',1,'2021-01-25 09:14:59'),(150,'LOGIN','',1,'2021-01-25 09:15:35'),(151,'LOGIN','',1,'2021-01-25 09:16:22'),(152,'LOGIN','',1,'2021-01-25 09:16:54'),(153,'LOGIN','',1,'2021-01-25 09:22:23'),(154,'LOGIN','',1,'2021-01-25 09:22:49'),(155,'LOGIN','',1,'2021-01-25 09:25:53'),(156,'LOGIN','',1,'2021-01-25 09:26:23'),(157,'LOGIN','',1,'2021-01-25 09:30:08'),(158,'LOGIN','',1,'2021-01-25 09:30:47'),(159,'LOGIN','',1,'2021-01-25 09:31:45'),(160,'LOGIN','',1,'2021-01-25 10:12:10'),(161,'LOGIN','',1,'2021-01-25 10:12:56'),(162,'LOGIN','',1,'2021-01-25 10:13:33'),(163,'LOGIN','',1,'2021-01-25 10:14:50'),(164,'LOGIN','',1,'2021-01-25 10:38:18'),(165,'LOGIN','',1,'2021-01-25 10:41:52'),(166,'LOGIN','',1,'2021-01-25 10:51:53'),(167,'LOGIN','',1,'2021-01-25 10:54:15'),(168,'LOGIN','',1,'2021-01-25 10:57:26'),(169,'LOGIN','',1,'2021-01-25 10:57:41'),(170,'LOGIN','',1,'2021-01-25 10:58:11'),(171,'LOGIN','',1,'2021-01-25 11:03:26'),(172,'LOGIN','',1,'2021-01-25 11:03:59'),(173,'LOGIN','',1,'2021-01-25 11:05:33'),(174,'IMPOSTAZIONI','creazione utente #6',1,'2021-01-25 11:05:46'),(175,'LOGOUT','',1,'2021-01-25 11:05:49'),(176,'LOGIN','',6,'2021-01-25 11:05:50'),(177,'LOGIN','',6,'2021-01-25 11:06:13'),(178,'LOGIN','',6,'2021-01-25 11:06:47'),(179,'LOGIN','',6,'2021-01-25 11:07:07'),(180,'LOGIN','',6,'2021-01-25 11:15:08'),(181,'LOGIN','',6,'2021-01-25 11:16:20'),(182,'LOGIN','',6,'2021-01-25 11:18:16'),(183,'LOGIN','',6,'2021-01-25 11:18:58'),(184,'LOGIN','',1,'2021-01-25 13:38:27'),(185,'LOGIN','',6,'2021-01-25 13:39:14'),(186,'LOGIN','',6,'2021-01-25 13:39:56'),(187,'LOGIN','',1,'2021-01-25 13:41:44'),(188,'LOGIN','',1,'2021-01-25 13:42:30'),(189,'LOGIN','',6,'2021-01-25 13:43:02'),(190,'LOGIN','',6,'2021-01-25 13:43:42'),(191,'LOGIN','',6,'2021-01-25 13:44:05'),(192,'LOGIN','',6,'2021-01-25 13:44:40'),(193,'LOGIN','',6,'2021-01-25 13:45:21'),(194,'LOGIN','',6,'2021-01-25 13:45:35'),(195,'LOGIN','',6,'2021-01-25 13:45:57'),(196,'LOGIN','',6,'2021-01-25 13:46:13'),(197,'LOGIN','',6,'2021-01-25 13:46:32'),(198,'LOGIN','',6,'2021-01-25 13:46:53'),(199,'LOGIN','',6,'2021-01-25 13:47:26'),(200,'LOGIN','',6,'2021-01-25 13:48:00'),(201,'LOGIN','',6,'2021-01-25 13:48:39'),(202,'LOGIN','',6,'2021-01-25 13:49:09'),(203,'LOGIN','',6,'2021-01-25 13:50:09'),(204,'LOGIN','',6,'2021-01-25 13:53:32'),(205,'LOGIN','',6,'2021-01-25 15:09:11'),(206,'LOGIN','',6,'2021-01-25 15:11:53'),(207,'LOGIN','',1,'2021-01-25 16:11:05'),(208,'LOGIN','',6,'2021-01-25 16:13:36'),(209,'LOGIN','',6,'2021-01-25 16:29:50'),(210,'LOGIN','',6,'2021-01-25 16:52:33'),(211,'LOGIN','',6,'2021-01-25 16:56:33'),(212,'LOGIN','',6,'2021-01-26 08:16:41'),(213,'LOGIN','',6,'2021-01-26 08:18:34'),(214,'LOGIN','',6,'2021-01-26 08:24:06'),(215,'LOGIN','',6,'2021-01-26 08:42:34'),(216,'LOGIN','',6,'2021-01-26 08:45:39'),(217,'LOGIN','',6,'2021-01-26 08:46:14'),(218,'LOGIN','',6,'2021-01-26 08:47:22'),(219,'LOGIN','',6,'2021-01-26 08:47:58'),(220,'LOGIN','',6,'2021-01-26 08:49:38'),(221,'LOGIN','',6,'2021-01-26 08:50:05'),(222,'LOGIN','',6,'2021-01-26 09:00:01'),(223,'INSERIMENTO','creazione pallettizzazione #1',6,'2021-01-26 09:18:00'),(224,'INSERIMENTO','creato aticolo #1',6,'2021-01-26 09:18:16'),(225,'INSERIMENTO','inserimento record Configurazione pallet per pallettizzazione 1',6,'2021-01-26 09:18:52'),(226,'INSERIMENTO','creazione ingresso merce #1',6,'2021-01-26 09:19:02'),(227,'LOGIN','',6,'2021-01-26 09:56:16'),(228,'LOGIN','',6,'2021-01-26 09:59:45'),(229,'STAMPA','stampa barcode palletHtml 2000000001',6,'2021-01-26 10:02:51'),(230,'LOGIN','',6,'2021-01-26 15:43:09'),(231,'LOGIN','',6,'2021-01-26 15:45:32');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro_allocazione_celle`
--

LOCK TABLES `registro_allocazione_celle` WRITE;
/*!40000 ALTER TABLE `registro_allocazione_celle` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signature`
--

LOCK TABLES `signature` WRITE;
/*!40000 ALTER TABLE `signature` DISABLE KEYS */;
INSERT INTO `signature` VALUES (1,'locazione','2021-01-14 15:08:15','2021-01-14 15:08:15','RCvgdHNccwWE9mNARJL6d1J3f5mFyjf3',NULL,0),(2,'cella','2021-01-14 15:08:15','2021-01-14 15:08:15','X3OnJF5SMsKyxmQ3Rn5NbLvX0uhejaOp',NULL,0),(3,'dimensione_pallet','2021-01-26 09:18:00','2021-01-26 09:18:00','lQirwd58G4k5gsZPKQMg0xQNablbrHSC',NULL,0),(4,'pallettizzazione','2021-01-26 09:18:00','2021-01-26 09:18:00','XOpcd2OgpzVTL0qfJeOyfP3iGicTUV8A',NULL,0),(5,'articolo','2021-01-26 09:18:16','2021-01-26 09:18:16','ysXOq97UNh9IkKAA7dyQZKv8Ao73BkXy',NULL,0),(6,'configurazione_pallet','2021-01-26 09:18:52','2021-01-26 09:18:52','F2TV8T9pvR0DYkCmgjyQk5J3EXGJ4vHk',NULL,0),(7,'ingresso_merce','2021-01-26 09:19:02','2021-01-26 09:19:02','HI28S2wMKlH1viBiO4YpOY9T28P8TTbQ',NULL,0),(8,'inventario_ingresso_merce','2021-01-26 09:19:09','2021-01-26 09:19:09','VZRYLFptGvuIcJX51rN9x7pLP3Z7VfoZ',NULL,0),(9,'pallet','2021-01-26 09:19:12','2021-01-26 09:19:12','9vRX3dDCZBxxVF56R5UBMN41ZCdN4qwy',NULL,0),(10,'allocazione_pallet','2021-01-26 09:19:12','2021-01-26 09:19:12','T4rOewmappDSELrUfExoyCbUUXKbdopY',NULL,0),(11,'pallet','2021-01-26 09:19:12','2021-01-26 09:19:12','9vRX3dDCZBxxVF56R5UBMN41ZCdN4qwy','akax2B1f9EeMTKF0z1oTbfmBvnPbv7hk',0),(12,'ingresso_merce','2021-01-26 09:19:12','2021-01-26 09:19:12','HI28S2wMKlH1viBiO4YpOY9T28P8TTbQ','LxzXoVPEgGBk7k8ocb79qbqqhrQgXTVq',0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spedizione`
--

LOCK TABLES `spedizione` WRITE;
/*!40000 ALTER TABLE `spedizione` DISABLE KEYS */;
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
INSERT INTO `stampante` VALUES (1,'Konica','192.168.1.201',9100,'web',8080,1,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'admin','7e98e61262ce33be80a1bc1657a29c915d59218f5d18aa3e06f46dfb7027ea9e',1,'it','2018-11-06 19:38:02','2021-01-14 14:51:20'),
(2,'user','3e3b8f3a0fc8461a5492eab5aa1fe75deb84c5b6c3ac5b4a596b9f563261756a',2,'it','2018-11-06 20:45:46','2021-01-14 14:51:15'),
(3,'operatore1','bdb5168284c94a97b3f7e4ade3654b2f0663445318fc04d63bba8e18f214ffd3',2,'it','2019-02-27 20:58:34','2021-01-14 14:51:08'),
(4,'oao','9f52832cd716266f1e4c725839af6437d441ed18706d70bd6ec8a468bd6843c1',1,'it','2021-01-14 14:45:27','2021-01-14 14:45:27'),
(5,'Maintenance','6f22d5aa68c1cd4a473c9ec7acd9186675d8e3b4fd655948fa0cb8789694cf23',1,'it','2021-01-14 14:51:49','2021-01-14 14:51:49');/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 16:50:38
