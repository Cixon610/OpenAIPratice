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
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitem` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MenuItemTypeID` char(38) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
INSERT INTO `menuitem` VALUES ('00ca74ca-039b-11ee-96e8-e4a8dfe5ea5d','青茶瑪奇朵','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:17:56','2023-06-05 20:17:56'),('021e080b-039b-11ee-96e8-e4a8dfe5ea5d','紅茶瑪奇朵','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:17:58','2023-06-05 20:17:58'),('03a4a325-039b-11ee-96e8-e4a8dfe5ea5d','冰淇淋奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:01','2023-06-05 20:18:01'),('04851883-039b-11ee-96e8-e4a8dfe5ea5d','布丁奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:02','2023-06-05 20:18:02'),('063688d6-039b-11ee-96e8-e4a8dfe5ea5d','燕麥烏龍奶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:05','2023-06-05 20:18:05'),('074f4f16-039b-11ee-96e8-e4a8dfe5ea5d','燕麥奶青','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:07','2023-06-05 20:18:07'),('08682644-039b-11ee-96e8-e4a8dfe5ea5d','燕麥奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:09','2023-06-05 20:18:09'),('09edfaa8-039b-11ee-96e8-e4a8dfe5ea5d','波霸奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:11','2023-06-05 20:18:11'),('0b8b15ec-039b-11ee-96e8-e4a8dfe5ea5d','珍珠奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:14','2023-06-05 20:18:14'),('0c91c08c-039b-11ee-96e8-e4a8dfe5ea5d','椰果奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:16','2023-06-05 20:18:16'),('0dbe2e7c-039b-11ee-96e8-e4a8dfe5ea5d','烏龍奶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:18','2023-06-05 20:18:18'),('0f39712b-039b-11ee-96e8-e4a8dfe5ea5d','奶綠','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:20','2023-06-05 20:18:20'),('c64ac291-039a-11ee-96e8-e4a8dfe5ea5d','可可芭蕾','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:16:18','2023-06-05 20:16:18'),('d602e876-039a-11ee-96e8-e4a8dfe5ea5d','燕麥阿華田','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:16:44','2023-06-05 20:16:44'),('ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-04 15:39:23','2023-06-04 15:39:23'),('ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','阿華田','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:17:53','2023-06-05 20:17:53');
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-25 15:15:12
