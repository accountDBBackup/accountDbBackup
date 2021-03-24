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
INSERT INTO `PERSON` VALUES (1,'Selim','Tosyali',21.08),(2,'Kerem','Yuce',63.22),(3,'Ekrem','Yuce',0.00),(4,'Bilge','Kaya',-90.25);
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
INSERT INTO `PERSON_GROUP` VALUES (146,1),(149,1),(150,1),(152,1),(153,1),(154,1),(155,1),(158,1),(160,1),(161,1),(146,2),(147,2),(149,2),(151,2),(154,2),(156,2),(157,2),(159,2),(161,2),(162,2),(147,4),(150,4),(153,4),(158,4),(159,4),(160,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRANSACTION`
--

LOCK TABLES `TRANSACTION` WRITE;
/*!40000 ALTER TABLE `TRANSACTION` DISABLE KEYS */;
INSERT INTO `TRANSACTION` VALUES (146,4,34.45,'BIM','2021-01-04'),(147,1,31.05,'PASTA','2021-01-04'),(149,4,11.00,'Su','2021-01-05'),(150,2,20.00,'Kahve so&#287;an, sal�a','2021-01-05'),(151,1,41.00,'3 Makarna 1 rende 1 kola yumurta','2021-01-10'),(152,2,11.00,'Su','2021-01-16'),(153,2,11.00,'Su','2021-01-16'),(154,4,220.25,'Genel dagitim','2021-01-15'),(155,4,23.85,'Genel dagitim 2','2021-01-17'),(156,1,23.35,'genel dagitim 12','2021-01-15'),(157,1,15.95,'genel dagitim211','2021-01-15'),(158,2,140.00,'Internet','2021-01-17'),(159,1,197.00,'Dogalgaz','2021-01-17'),(160,2,120.00,'Elektrik','2021-01-18'),(161,4,105.00,'Su','2021-01-18'),(162,3,49.38,'Hesap kapatma','2021-01-16');
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

-- Dump completed on 2021-03-24  0:00:01
