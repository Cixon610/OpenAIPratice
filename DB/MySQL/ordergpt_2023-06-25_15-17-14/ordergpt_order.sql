-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ordergpt
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `MessageID` char(38) NOT NULL,
  `TotalValue` int NOT NULL,
  `TotalCount` int NOT NULL,
  `Memo` varchar(300) DEFAULT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('81fd1127-ec9a-490a-8310-eccfa09049f3','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','df109f9e-039a-11ee-96e8-e4a8dfe5ea5d',100,1,'string','2023-06-25 14:28:01','2023-06-25 14:28:01'),('efd3782d-0c1b-43c7-a03b-f0bfdffe2a16','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','df109f9e-039a-11ee-96e8-e4a8dfe5ea5d',100,1,'string','2023-06-25 14:31:06','2023-06-25 14:31:06'),('f2bac332-876b-48c8-b218-ed0260afe821','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','df109f9e-039a-11ee-96e8-e4a8dfe5ea5d',100,1,'string','2023-06-25 14:28:52','2023-06-25 14:28:52');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-25 15:15:13
