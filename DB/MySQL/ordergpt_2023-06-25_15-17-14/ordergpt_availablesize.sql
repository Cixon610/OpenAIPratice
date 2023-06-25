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
-- Table structure for table `availablesize`
--

DROP TABLE IF EXISTS `availablesize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availablesize` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Value` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availablesize`
--

LOCK TABLES `availablesize` WRITE;
/*!40000 ALTER TABLE `availablesize` DISABLE KEYS */;
INSERT INTO `availablesize` VALUES ('28660dd1-039c-11ee-96e8-e4a8dfe5ea5d','00ca74ca-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('2866f84c-039c-11ee-96e8-e4a8dfe5ea5d','021e080b-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('28677952-039c-11ee-96e8-e4a8dfe5ea5d','03a4a325-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('28683a63-039c-11ee-96e8-e4a8dfe5ea5d','04851883-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',55),('2868ef48-039c-11ee-96e8-e4a8dfe5ea5d','063688d6-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',30),('2869719a-039c-11ee-96e8-e4a8dfe5ea5d','074f4f16-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('2869fcbe-039c-11ee-96e8-e4a8dfe5ea5d','08682644-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286a72ba-039c-11ee-96e8-e4a8dfe5ea5d','09edfaa8-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('286ae887-039c-11ee-96e8-e4a8dfe5ea5d','0b8b15ec-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',55),('286b5ba1-039c-11ee-96e8-e4a8dfe5ea5d','0c91c08c-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('286be205-039c-11ee-96e8-e4a8dfe5ea5d','0dbe2e7c-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286c669d-039c-11ee-96e8-e4a8dfe5ea5d','0f39712b-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',55),('286d2b1a-039c-11ee-96e8-e4a8dfe5ea5d','c64ac291-039a-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286dd070-039c-11ee-96e8-e4a8dfe5ea5d','d602e876-039a-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('286e4a2a-039c-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286ed8d0-039c-11ee-96e8-e4a8dfe5ea5d','ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('48323844-039c-11ee-96e8-e4a8dfe5ea5d','00ca74ca-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('4832d2c1-039c-11ee-96e8-e4a8dfe5ea5d','021e080b-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48335de1-039c-11ee-96e8-e4a8dfe5ea5d','03a4a325-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('4833d41a-039c-11ee-96e8-e4a8dfe5ea5d','04851883-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',75),('48344026-039c-11ee-96e8-e4a8dfe5ea5d','063688d6-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',35),('4834b50f-039c-11ee-96e8-e4a8dfe5ea5d','074f4f16-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48353804-039c-11ee-96e8-e4a8dfe5ea5d','08682644-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('4835a5d0-039c-11ee-96e8-e4a8dfe5ea5d','09edfaa8-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('483613ad-039c-11ee-96e8-e4a8dfe5ea5d','0b8b15ec-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',75),('48368052-039c-11ee-96e8-e4a8dfe5ea5d','0c91c08c-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('4836f9c2-039c-11ee-96e8-e4a8dfe5ea5d','0dbe2e7c-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48377557-039c-11ee-96e8-e4a8dfe5ea5d','0f39712b-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',75),('4837d96c-039c-11ee-96e8-e4a8dfe5ea5d','c64ac291-039a-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('4838569f-039c-11ee-96e8-e4a8dfe5ea5d','d602e876-039a-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('4838c386-039c-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48393e60-039c-11ee-96e8-e4a8dfe5ea5d','ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55);
/*!40000 ALTER TABLE `availablesize` ENABLE KEYS */;
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
