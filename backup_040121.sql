-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: ACCOUNT
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `PERSON`
--

DROP TABLE IF EXISTS `PERSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSON` (
  `PersonId` int NOT NULL AUTO_INCREMENT,
  `FName` varchar(30) DEFAULT NULL,
  `LName` varchar(30) DEFAULT NULL,
  `TotalDebt` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PersonId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON`
--

LOCK TABLES `PERSON` WRITE;
/*!40000 ALTER TABLE `PERSON` DISABLE KEYS */;
INSERT INTO `PERSON` VALUES (1,'Selim','Tosyali',78.01),(2,'Kerem','Yuce',-42.80),(3,'Ekrem','Yuce',95.81),(4,'Bilge','Kaya',-137.09);
/*!40000 ALTER TABLE `PERSON` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERSON_GROUP`
--

DROP TABLE IF EXISTS `PERSON_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSON_GROUP` (
  `GroupId` int NOT NULL,
  `PersonId` int NOT NULL,
  PRIMARY KEY (`GroupId`,`PersonId`),
  KEY `PersonId` (`PersonId`),
  CONSTRAINT `PERSON_GROUP_ibfk_1` FOREIGN KEY (`PersonId`) REFERENCES `PERSON` (`PersonId`),
  CONSTRAINT `TRANS_GROUP` FOREIGN KEY (`GroupId`) REFERENCES `TRANSACTION` (`GroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERSON_GROUP`
--

LOCK TABLES `PERSON_GROUP` WRITE;
/*!40000 ALTER TABLE `PERSON_GROUP` DISABLE KEYS */;
INSERT INTO `PERSON_GROUP` VALUES (51,1),(52,1),(55,1),(56,1),(57,1),(58,1),(59,1),(62,1),(63,1),(64,1),(99,1),(105,1),(110,1),(117,1),(50,2),(52,2),(57,2),(58,2),(64,2),(69,2),(73,2),(74,2),(77,2),(78,2),(79,2),(81,2),(83,2),(85,2),(89,2),(90,2),(93,2),(94,2),(95,2),(96,2),(97,2),(101,2),(103,2),(104,2),(105,2),(107,2),(111,2),(112,2),(113,2),(50,3),(51,3),(52,3),(55,3),(56,3),(58,3),(59,3),(62,3),(63,3),(68,3),(69,3),(78,3),(80,3),(81,3),(82,3),(84,3),(88,3),(89,3),(90,3),(91,3),(94,3),(97,3),(98,3),(99,3),(100,3),(101,3),(106,3),(107,3),(108,3),(109,3),(110,3),(111,3),(113,3),(114,3),(115,3),(116,3),(117,3),(55,4),(56,4),(57,4),(59,4),(62,4),(63,4),(64,4),(68,4),(73,4),(74,4),(80,4),(82,4),(83,4),(84,4),(85,4),(87,4),(88,4),(91,4),(93,4),(95,4),(96,4),(98,4),(99,4),(100,4),(103,4),(104,4),(105,4),(106,4),(108,4),(109,4),(110,4),(112,4),(114,4),(115,4),(116,4),(117,4);
/*!40000 ALTER TABLE `PERSON_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRANSACTION`
--

DROP TABLE IF EXISTS `TRANSACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TRANSACTION` (
  `GroupId` int NOT NULL AUTO_INCREMENT,
  `OwnerId` int NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`GroupId`),
  KEY `OwnerId` (`OwnerId`),
  CONSTRAINT `TRANSACTION_ibfk_2` FOREIGN KEY (`OwnerId`) REFERENCES `PERSON` (`PersonId`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANSACTION`
--

LOCK TABLES `TRANSACTION` WRITE;
/*!40000 ALTER TABLE `TRANSACTION` DISABLE KEYS */;
INSERT INTO `TRANSACTION` VALUES (50,1,132.00,'Kahvalt&#305;l&#305;klar','2020-01-17'),(51,4,30.00,'�i&#287;k�fte','2020-01-18'),(52,4,38.00,'Kahveler+Su','2020-01-03'),(55,2,10.00,'Su','2020-01-16'),(56,2,45.00,'Yumurta\r\nBiber\r\nSucuk','2020-01-17'),(57,3,30.00,'Patates\r\nTavuk\r\nPirin�\r\nPulbiber','2020-01-17'),(58,4,54.00,'Su + Cigkofte','2020-01-11'),(59,2,10.00,'Su','2020-01-23'),(62,2,8.00,'Mandal','2020-01-23'),(63,2,10.00,'Su','2020-01-25'),(64,3,22.00,'Yumurta','2020-01-25'),(68,2,10.00,'Su','2020-01-28'),(69,4,33.00,'Cigkofte','2020-01-22'),(73,3,16.00,'Sut, cips falan','2020-01-27'),(74,3,53.00,'Pasta, Kahve, Mandalina...','2020-01-29'),(77,4,20.75,'Cigkogfte','2020-01-02'),(78,4,10.00,'su','2020-01-02'),(79,4,20.00,'patso','2020-01-02'),(80,2,10.00,'su','2020-01-04'),(81,4,103.00,'migros 88, fasulye 15','2020-01-05'),(82,2,80.00,'Migros g&#305;da yard&#305;m&#305; ','2020-01-05'),(83,3,10.00,'Su','2020-01-06'),(84,2,10.00,'Su','2020-01-08'),(85,3,48.00,'Cigkofte + Yumurta','2020-01-08'),(87,2,26.00,'cips, cekirdek, tenet','2020-01-09'),(88,2,10.00,'Su','2020-01-11'),(89,4,143.00,'Market + Su + Krem','2020-01-13'),(90,4,90.00,'Hali yikama','2020-01-13'),(91,2,110.00,'Maxwell + Bim','2020-01-14'),(93,3,75.00,'Sucuk Yumurta Nutella Ekmek	','2020-01-16'),(94,4,8.20,'Sut + turk kahvesi','2020-01-17'),(95,3,10.00,'Su','2020-01-18'),(96,3,48.00,'Baba fast food','2020-01-18'),(97,4,73.00,'45(Kasar pisirme kagidi sebze) + 28(Nutella sut)','2020-01-20'),(98,2,30.00,'Sucuk Su','2020-01-21'),(99,2,25.00,'Du&#351; ba&#351;l&#305;&#287;&#305;','2020-01-23'),(100,2,10.00,'Su','2020-01-23'),(101,4,127.00,'35 Firat meyve + 22.12 BIM 32 + 23.12 BIM 60','2020-01-24'),(103,3,20.00,'elma v portakal','2020-01-19'),(104,3,80.00,'kasar yumurta sut yogurt ','2020-01-15'),(105,3,147.00,'su faturas&#305;','2020-01-24'),(106,2,25.00,'Yumurta','2020-01-24'),(107,4,18.00,'Tavuk','2020-01-25'),(108,2,10.00,'Su','2020-01-25'),(109,2,56.00,'Sampuan Tavuk Krema','2020-01-26'),(110,2,145.00,'Kas&#305;m internet ','2020-01-27'),(111,4,23.77,'Portakal Pizza','2020-01-27'),(112,3,72.00,'P&#305;zza(45) Tavuk+Kola(27)','2020-01-29'),(113,4,61.55,'Bim + A101 + borek','2020-01-31'),(114,2,10.00,'su','2020-01-31'),(115,2,14.00,'portakal, kola','2021-01-02'),(116,2,43.00,'kasar, biber, sogan, bulgur','2020-01-31'),(117,2,88.00,'Dogalgaz','2021-01-02');
/*!40000 ALTER TABLE `TRANSACTION` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04  0:00:01
