-- MySQL dump 10.16  Distrib 10.1.28-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: mutants
-- ------------------------------------------------------
-- Server version	10.1.28-MariaDB

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
-- Table structure for table `dna`
--

DROP TABLE IF EXISTS `dna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dna` varchar(255) NOT NULL,
  `isMutant` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dna`
--

LOCK TABLES `dna` WRITE;
/*!40000 ALTER TABLE `dna` DISABLE KEYS */;
INSERT INTO `dna` VALUES (1,'A,T,G,C,G,A,C,A,G,T,G,C,T,T,A,T,G,T,A,G,A,A,G,G,C,C,C,C,T,A,T,C,A,C,T,G',1),(2,'A,T,G,C,G,A,C,A,G,T,G,C,T,T,G,T,A,T,A,G,A,A,G,G,C,C,A,C,T,A,T,C,A,C,T,G',0),(3,'A,T,G,C,G,A,C,A,G,T,G,C,T,T,G,T,A,T,A,G,A,A,G,G,C,C,A,C,T,A,T,C,A,C,T,G',0),(4,'A,T,G,C,G,A,C,A,G,T,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',0),(5,'A,T,G,C,G,A,C,A,G,T,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',0),(6,'A,T,G,C,G,A,C,A,G,T,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',0),(7,'A,T,G,C,G,A,C,A,G,T,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',0),(8,'A,T,G,C,G,A,C,A,G,T,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',0),(9,'A,T,G,C,G,A,C,A,G,T,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',0),(10,'A,T,G,C,G,A,C,A,G,G,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',1),(11,'A,T,G,C,G,A,C,A,G,G,T,C,C,T,G,T,G,T,A,C,A,A,G,G,C,G,C,C,T,A,T,C,A,C,T,G',1),(12,'A,T,G,C,G,T,C,A,G,G,T,C,C,T,G,T,G,C,A,C,T,A,C,G,C,G,C,C,T,A,T,C,C,T,T,G',0),(13,'A,T,G,C,G,T,C,A,G,G,T,C,C,T,G,T,G,C,A,C,T,A,C,G,C,G,C,C,T,A,T,C,C,T,T,G',0),(14,'A,T,G,C,G,T,C,A,G,G,T,C,C,T,G,T,G,C,A,C,T,A,C,G,C,G,C,C,T,A,T,C,C,T,T,G',0),(15,'A,T,G,C,G,T,C,A,G,G,T,C,C,T,G,T,G,C,A,C,T,A,C,G,C,G,C,C,T,A,T,C,C,T,T,G',0),(16,'A,T,G,C,G,T,C,A,G,G,T,C,C,T,G,T,G,C,A,C,T,A,C,G,C,G,C,C,T,A,T,C,C,T,T,G',0),(17,'A,T,G,C,G,T,C,A,G,G,T,C,C,T,G,T,G,C,A,C,T,A,C,G,C,G,C,C,T,A,T,C,C,T,T,G',1),(18,'A,T,G,C,G,T,C,A,G,G,T,C,C,T,G,T,G,C,A,C,T,A,C,G,C,G,C,C,T,A,T,C,C,T,T,G',1),(19,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,G,C,A,C,T,A,C,G,C,T,C,C,T,A,T,C,C,T,T,G',1),(20,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,G,C,A,C,T,A,C,G,C,T,C,C,T,A,T,C,C,T,T,G',1),(21,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,G,C,A,C,T,A,C,G,C,T,C,C,T,A,T,C,C,T,T,G',1),(22,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,G,C,A,C,T,A,C,G,C,A,C,T,T,A,T,C,C,T,T,G',1),(23,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,G,C,A,C,T,A,C,G,C,A,C,T,T,A,T,C,C,T,T,G',1),(24,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,A,C,A,C,T,A,C,G,C,T,C,C,T,A,T,C,C,T,T,G',1),(25,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,A,C,A,C,T,A,C,G,C,T,C,C,T,A,T,C,C,T,T,G',1),(26,'A,T,G,C,G,G,C,A,G,G,G,C,C,T,G,T,A,C,A,C,A,A,C,G,C,A,C,T,T,A,T,C,C,T,T,G',0);
/*!40000 ALTER TABLE `dna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-10  8:11:16
