-- MySQL dump 10.13  Distrib 5.5.49, for Win32 (x86)
--
-- Host: localhost    Database: diary
-- ------------------------------------------------------
-- Server version	5.5.49

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
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Ratlam'),(2,'Joura'),(3,'Ratlam'),(4,'Joura'),(5,'Ratlam'),(6,'Joura'),(7,'Ratlam'),(8,'Joura'),(9,'Ratlam'),(10,'Joura'),(11,'Ratlam'),(12,'Joura'),(13,'Ratlam'),(14,'Joura'),(15,'Ratlam'),(16,'Joura'),(17,'Ratlam'),(18,'Joura'),(19,'Ratlam'),(20,'Joura'),(21,'Ratlam'),(22,'Joura'),(23,'Ratlam'),(24,'Joura'),(25,'Ratlam'),(26,'Joura'),(27,'Ratlam'),(28,'Joura'),(29,'Ratlam'),(30,'Joura'),(31,'Ratlam'),(32,'Joura'),(33,'Ratlam'),(34,'Joura'),(35,'Ratlam'),(36,'Joura'),(37,'Ratlam'),(38,'Joura'),(39,'Ratlam'),(40,'Joura'),(41,'Ratlam'),(42,'Joura'),(43,'Ratlam'),(44,'Joura'),(45,'Ratlam'),(46,'Joura'),(47,'Ratlam'),(48,'Joura'),(49,'Ratlam'),(50,'Joura'),(51,'Ratlam'),(52,'Joura'),(53,'Ratlam'),(54,'Joura'),(55,'Ratlam'),(56,'Joura'),(57,'Ratlam'),(58,'Joura'),(59,'Ratlam'),(60,'Joura'),(61,'Ratlam'),(62,'Joura'),(63,'Ratlam'),(64,'Joura'),(65,'Ratlam'),(66,'Joura'),(67,'Ratlam'),(68,'Joura'),(69,'Ratlam'),(70,'Joura'),(71,'Ratlam'),(72,'Joura'),(73,'Ratlam'),(74,'Joura'),(75,'Ratlam'),(76,'Joura');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,NULL,NULL,'New India',NULL),(2,NULL,NULL,'ICICI',NULL),(3,NULL,NULL,'New India',NULL),(4,NULL,NULL,'ICICI',NULL),(5,NULL,NULL,'New India',NULL),(6,NULL,NULL,'ICICI',NULL),(7,NULL,NULL,'New India',NULL),(8,NULL,NULL,'ICICI',NULL),(9,NULL,NULL,'New India',NULL),(10,NULL,NULL,'ICICI',NULL),(11,NULL,NULL,'New India',NULL),(12,NULL,NULL,'ICICI',NULL),(13,NULL,NULL,'New India',NULL),(14,NULL,NULL,'ICICI',NULL),(15,NULL,NULL,'New India',NULL),(16,NULL,NULL,'ICICI',NULL),(17,NULL,NULL,'New India',NULL),(18,NULL,NULL,'ICICI',NULL),(19,NULL,NULL,'New India',NULL),(20,NULL,NULL,'ICICI',NULL),(21,NULL,NULL,'New India',NULL),(22,NULL,NULL,'ICICI',NULL),(23,NULL,NULL,'New India',NULL),(24,NULL,NULL,'ICICI',NULL),(25,NULL,NULL,'New India',NULL),(26,NULL,NULL,'ICICI',NULL),(27,NULL,NULL,'New India',NULL),(28,NULL,NULL,'ICICI',NULL),(29,NULL,NULL,'New India',NULL),(30,NULL,NULL,'ICICI',NULL),(31,NULL,NULL,'New India',NULL),(32,NULL,NULL,'ICICI',NULL),(33,NULL,NULL,'New India',NULL),(34,NULL,NULL,'ICICI',NULL),(35,NULL,NULL,'New India',NULL),(36,NULL,NULL,'ICICI',NULL),(37,NULL,NULL,'New India',NULL),(38,NULL,NULL,'ICICI',NULL),(39,NULL,NULL,'New India',NULL),(40,NULL,NULL,'ICICI',NULL),(41,NULL,NULL,'New India',NULL),(42,NULL,NULL,'ICICI',NULL),(43,NULL,NULL,'New India',NULL),(44,NULL,NULL,'ICICI',NULL),(45,NULL,NULL,'New India',NULL),(46,NULL,NULL,'ICICI',NULL),(47,NULL,NULL,'New India',NULL),(48,NULL,NULL,'ICICI',NULL),(49,NULL,NULL,'New India',NULL),(50,NULL,NULL,'ICICI',NULL),(51,NULL,NULL,'New India',NULL),(52,NULL,NULL,'ICICI',NULL),(53,NULL,NULL,'New India',NULL),(54,NULL,NULL,'ICICI',NULL),(55,NULL,NULL,'New India',NULL),(56,NULL,NULL,'ICICI',NULL),(57,NULL,NULL,'New India',NULL),(58,NULL,NULL,'ICICI',NULL),(59,NULL,NULL,'New India',NULL),(60,NULL,NULL,'ICICI',NULL),(61,NULL,NULL,'New India',NULL),(62,NULL,NULL,'ICICI',NULL),(63,NULL,NULL,'New India',NULL),(64,NULL,NULL,'ICICI',NULL),(65,NULL,NULL,'New India',NULL),(66,NULL,NULL,'ICICI',NULL),(67,NULL,NULL,'New India',NULL),(68,NULL,NULL,'ICICI',NULL),(69,NULL,NULL,'New India',NULL),(70,NULL,NULL,'ICICI',NULL),(71,NULL,NULL,'New India',NULL),(72,NULL,NULL,'ICICI',NULL),(73,NULL,NULL,'New India',NULL),(74,NULL,NULL,'ICICI',NULL),(75,NULL,NULL,'New India',NULL),(76,NULL,NULL,'ICICI',NULL);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `court`
--

DROP TABLE IF EXISTS `court`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `court` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `court`
--

LOCK TABLES `court` WRITE;
/*!40000 ALTER TABLE `court` DISABLE KEYS */;
INSERT INTO `court` VALUES (1,'DJ'),(2,'Firts_ADJ'),(3,'DJ'),(4,'Firts_ADJ'),(5,'DJ'),(6,'Firts_ADJ'),(7,'DJ'),(8,'Firts_ADJ'),(9,'DJ'),(10,'Firts_ADJ'),(11,'DJ'),(12,'Firts_ADJ'),(13,'DJ'),(14,'Firts_ADJ'),(15,'DJ'),(16,'Firts_ADJ'),(17,'DJ'),(18,'Firts_ADJ'),(19,'DJ'),(20,'Firts_ADJ'),(21,'DJ'),(22,'Firts_ADJ'),(23,'DJ'),(24,'Firts_ADJ'),(25,'DJ'),(26,'Firts_ADJ'),(27,'DJ'),(28,'Firts_ADJ'),(29,'DJ'),(30,'Firts_ADJ'),(31,'DJ'),(32,'Firts_ADJ'),(33,'DJ'),(34,'Firts_ADJ'),(35,'DJ'),(36,'Firts_ADJ'),(37,'DJ'),(38,'Firts_ADJ'),(39,'DJ'),(40,'Firts_ADJ'),(41,'DJ'),(42,'Firts_ADJ'),(43,'DJ'),(44,'Firts_ADJ'),(45,'DJ'),(46,'Firts_ADJ'),(47,'DJ'),(48,'Firts_ADJ'),(49,'DJ'),(50,'Firts_ADJ'),(51,'DJ'),(52,'Firts_ADJ'),(53,'DJ'),(54,'Firts_ADJ'),(55,'DJ'),(56,'Firts_ADJ'),(57,'DJ'),(58,'Firts_ADJ'),(59,'DJ'),(60,'Firts_ADJ'),(61,'DJ'),(62,'Firts_ADJ'),(63,'DJ'),(64,'Firts_ADJ'),(65,'DJ'),(66,'Firts_ADJ'),(67,'DJ'),(68,'Firts_ADJ'),(69,'DJ'),(70,'Firts_ADJ'),(71,'DJ'),(72,'Firts_ADJ'),(73,'DJ'),(74,'Firts_ADJ'),(75,'DJ'),(76,'Firts_ADJ');
/*!40000 ALTER TABLE `court` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Address` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `LandlineNumber` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `MobileNo` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'jain colony',20,'male',NULL,NULL,NULL,NULL,NULL,'sgelda7@gmail.com',NULL),(2,'jain',1,'male','11111111111111111','gelda','1234567890','siddu','Client','harsh@gmail.com','0.5794016420379716'),(3,'adsadad',1,'male','11111111111111111','jain','1111111111111','poonam','Client','poonajain@gmail.com','0.33355689985941417');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userdetail`
--

DROP TABLE IF EXISTS `userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userdetail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Advocate` varchar(255) DEFAULT NULL,
  `AgainstClient` varchar(255) DEFAULT NULL,
  `CaseNo` varchar(255) DEFAULT NULL,
  `Data` varchar(255) DEFAULT NULL,
  `Descripation` varchar(255) DEFAULT NULL,
  `FileNo` varchar(255) DEFAULT NULL,
  `nextDate` date DEFAULT NULL,
  `PrevDate` date DEFAULT NULL,
  `Stage` varchar(255) DEFAULT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `company_Id` bigint(20) DEFAULT NULL,
  `court_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pdg8u86nkqc5dkt285gdrfeha` (`city_id`),
  KEY `FK_k0nn9nlwk3snf95d2cwvdgkdf` (`company_Id`),
  KEY `FK_1yl8h7puh2yifdbh115nhck0i` (`court_id`),
  KEY `FK_90967b34b8g7o7uyt8uujn4ya` (`user_id`),
  CONSTRAINT `FK_1yl8h7puh2yifdbh115nhck0i` FOREIGN KEY (`court_id`) REFERENCES `court` (`id`),
  CONSTRAINT `FK_90967b34b8g7o7uyt8uujn4ya` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_k0nn9nlwk3snf95d2cwvdgkdf` FOREIGN KEY (`company_Id`) REFERENCES `company` (`Id`),
  CONSTRAINT `FK_pdg8u86nkqc5dkt285gdrfeha` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userdetail`
--

LOCK TABLES `userdetail` WRITE;
/*!40000 ALTER TABLE `userdetail` DISABLE KEYS */;
INSERT INTO `userdetail` VALUES (1,'sdadsadsd','asdasda','3434242',NULL,'dasdad','213213','2015-01-01','2013-12-29','sadasds',1,1,1,2),(2,'sdadsadsd','car','00012',NULL,'dasdad','0029','2016-08-02','2013-12-29','gwaha',1,1,1,3);
/*!40000 ALTER TABLE `userdetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-08 15:38:49
