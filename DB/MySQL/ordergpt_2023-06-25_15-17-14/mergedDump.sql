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
-- Table structure for table `availableice`
--

DROP TABLE IF EXISTS `availableice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availableice` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availableice`
--

LOCK TABLES `availableice` WRITE;
/*!40000 ALTER TABLE `availableice` DISABLE KEYS */;
INSERT INTO `availableice` VALUES ('6c869365-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','去冰'),('6c8873a9-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','微冰'),('6c88ee15-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','少冰'),('6c89500c-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','正常冰');
/*!40000 ALTER TABLE `availableice` ENABLE KEYS */;
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
-- Table structure for table `availablesuger`
--

DROP TABLE IF EXISTS `availablesuger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availablesuger` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availablesuger`
--

LOCK TABLES `availablesuger` WRITE;
/*!40000 ALTER TABLE `availablesuger` DISABLE KEYS */;
INSERT INTO `availablesuger` VALUES ('99da21d1-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','無糖'),('99dc1261-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','微糖'),('99dc845a-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','少糖'),('99dcf3a8-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','正常糖');
/*!40000 ALTER TABLE `availablesuger` ENABLE KEYS */;
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
-- Table structure for table `availabletopping`
--

DROP TABLE IF EXISTS `availabletopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `availabletopping` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `ToppingID` char(38) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabletopping`
--

LOCK TABLES `availabletopping` WRITE;
/*!40000 ALTER TABLE `availabletopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `availabletopping` ENABLE KEYS */;
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
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
INSERT INTO `conversation` VALUES ('0875775a-ac2c-47be-9782-1166665dcbf4','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 22:43:49','2023-06-08 22:43:49'),('0bcff785-af32-433f-92f3-a8bd9de8f696','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:27:58','2023-06-05 20:27:58'),('10255379-fabd-4093-87a6-dd5d6debf64d','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 22:45:24','2023-06-05 22:45:24'),('37e30879-4537-43ae-b888-1cec54e3ccfb','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 22:48:47','2023-06-08 22:48:47'),('425f18f7-a2f9-452c-ac88-260f4312288d','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 22:39:28','2023-06-08 22:39:28'),('475a5519-7599-4529-b730-dc52667dc93a','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:32:43','2023-06-05 20:32:43'),('549a87ed-2775-4a8c-9d87-3e2c5bcf1e59','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:00:44','2023-06-05 20:00:44'),('59b0772e-dff4-4e81-98ec-cb08f71c52d5','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 23:27:05','2023-06-08 23:27:05'),('671b64b3-63eb-4e29-8cd2-447042f07bf7','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 22:52:35','2023-06-05 22:52:35'),('7e16aa2b-9413-4452-8e5a-34a0493ab30f','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 23:28:24','2023-06-08 23:28:24'),('9752cb83-d79c-4c54-be4e-166ecd959673','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 22:53:47','2023-06-08 22:53:47'),('a86e11cf-c9ad-4a63-a5a6-cb2d063882e3','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 23:29:19','2023-06-08 23:29:19'),('a9742e46-e74a-4786-a443-8d458db7a8c5','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 19:53:16','2023-06-05 19:53:16'),('d290171d-da1e-4d36-bd67-965b04e49d01','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 23:25:27','2023-06-05 23:25:27'),('d5699a0f-54ca-4c12-904c-44d888efe1e3','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:03:06','2023-06-05 20:03:06');
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
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
-- Table structure for table `ipblocker`
--

DROP TABLE IF EXISTS `ipblocker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipblocker` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `IPAddress` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Count` int NOT NULL,
  `Enable` bit(1) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipblocker`
--

LOCK TABLES `ipblocker` WRITE;
/*!40000 ALTER TABLE `ipblocker` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipblocker` ENABLE KEYS */;
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
-- Table structure for table `itemstore`
--

DROP TABLE IF EXISTS `itemstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemstore` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Count` int NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemstore`
--

LOCK TABLES `itemstore` WRITE;
/*!40000 ALTER TABLE `itemstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemstore` ENABLE KEYS */;
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
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginlog` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `IPAddress` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Device` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CountryCode` varchar(10) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
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
-- Table structure for table `menuitemtype`
--

DROP TABLE IF EXISTS `menuitemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuitemtype` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitemtype`
--

LOCK TABLES `menuitemtype` WRITE;
/*!40000 ALTER TABLE `menuitemtype` DISABLE KEYS */;
INSERT INTO `menuitemtype` VALUES ('99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','找奶茶','奶茶類','2023-06-04 15:37:03','2023-06-04 15:37:03');
/*!40000 ALTER TABLE `menuitemtype` ENABLE KEYS */;
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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `ID` char(38) NOT NULL,
  `ConversationID` char(38) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `Message` longtext NOT NULL,
  `OrderID` int NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('057c0ce5-79c0-428f-b4e2-b295e6ace8cf','d290171d-da1e-4d36-bd67-965b04e49d01','user','我要紅茶',6,'2023-06-08 23:27:39','2023-06-08 23:27:39'),('19547f48-f7b2-4640-9a4f-3e6f71fa84c4','475a5519-7599-4529-b730-dc52667dc93a','assistant','好的，請問您要中杯(M)還是大杯(L)呢？',3,'2023-06-05 20:33:10','2023-06-05 20:33:10'),('1deecc06-7c61-4dbe-98ee-dfc984a725ea','10255379-fabd-4093-87a6-dd5d6debf64d','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-05 22:45:25','2023-06-05 22:45:25'),('3d525c88-da40-41e4-9d0f-bd6db6d531e4','a86e11cf-c9ad-4a63-a5a6-cb2d063882e3','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-08 23:29:19','2023-06-08 23:29:19'),('40869d13-74bb-40f3-ab94-f17dd95fa96a','671b64b3-63eb-4e29-8cd2-447042f07bf7','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 22:52:36','2023-06-05 22:52:36'),('49ba74bd-5fe5-47cc-9a1d-bab5fa3ca8b5','37e30879-4537-43ae-b888-1cec54e3ccfb','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-08 22:48:48','2023-06-08 22:48:48'),('5b87db71-8910-471b-b1c7-146c65c47c95','d290171d-da1e-4d36-bd67-965b04e49d01','user','我要紅茶',4,'2023-06-08 23:27:11','2023-06-08 23:27:11'),('640aa1c9-0c26-4b4b-95b9-c0703caf91eb','d290171d-da1e-4d36-bd67-965b04e49d01','assistant','不好意思，請問您要紅茶瑪奇朵還是純紅茶呢？大小是中杯(M)還是大杯(L)',7,'2023-06-08 23:28:11','2023-06-08 23:28:11'),('658124e0-8708-49b2-b6e2-557bd2148c93','59b0772e-dff4-4e81-98ec-cb08f71c52d5','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-08 23:27:06','2023-06-08 23:27:06'),('6754ff5f-6c43-4bf8-a466-2cf14b5db06a','d290171d-da1e-4d36-bd67-965b04e49d01','user','我要紅茶',2,'2023-06-05 23:26:13','2023-06-05 23:26:13'),('7a281841-90f9-42eb-a4f1-cd8f9032af72','d290171d-da1e-4d36-bd67-965b04e49d01','assistant','好的，請問您要紅茶瑪奇朵還是純紅茶呢？大小是中杯(M)還是大杯(L)呢？',3,'2023-06-05 23:26:24','2023-06-05 23:26:24'),('8c3e0a92-40c2-44e3-8a3d-339d0f2fd56b','475a5519-7599-4529-b730-dc52667dc93a','user','我要紅茶',2,'2023-06-05 20:33:05','2023-06-05 20:33:05'),('9061d518-fad0-4b11-b2b3-9974a06a1456','7e16aa2b-9413-4452-8e5a-34a0493ab30f','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-08 23:28:24','2023-06-08 23:28:24'),('94f826c7-42b7-4b12-a7fb-92bcb209d0e9','475a5519-7599-4529-b730-dc52667dc93a','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-05 20:32:43','2023-06-05 20:32:43'),('97b468be-4ded-4c64-98f8-0e6e666d9afc','0875775a-ac2c-47be-9782-1166665dcbf4','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-08 22:43:49','2023-06-08 22:43:49'),('9c344aa8-fa4a-437f-8bba-c06b76f09b15','671b64b3-63eb-4e29-8cd2-447042f07bf7','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-05 22:52:35','2023-06-05 22:52:35'),('9df2dab6-ed33-4182-8837-71a864509d29','10255379-fabd-4093-87a6-dd5d6debf64d','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 22:45:25','2023-06-05 22:45:25'),('aa1fcd7c-c1cd-4104-b8de-eed1a35fcb4b','425f18f7-a2f9-452c-ac88-260f4312288d','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-08 22:39:29','2023-06-08 22:39:29'),('aa811b95-ffff-4b42-bf8c-646fae099175','37e30879-4537-43ae-b888-1cec54e3ccfb','assistant','好的，請問您要中杯(M)還是大杯(L)呢？甜度和冰塊呢？',2,'2023-06-08 22:50:00','2023-06-08 22:50:00'),('aed4a028-8f5e-445a-8711-84dc80b4df7a','a86e11cf-c9ad-4a63-a5a6-cb2d063882e3','user','我要紅茶',1,'2023-06-08 23:29:32','2023-06-08 23:29:32'),('b424345a-1cf8-492a-a892-da4bf3c7d1e9','475a5519-7599-4529-b730-dc52667dc93a','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 20:32:47','2023-06-05 20:32:47'),('b7d0dc43-f93f-48b0-a315-24ad616eadb2','d290171d-da1e-4d36-bd67-965b04e49d01','assistant','好的，請問您要紅茶瑪奇朵還是純紅茶呢？大小是中杯(M)還是大杯(L)呢？',5,'2023-06-08 23:27:18','2023-06-08 23:27:18'),('c7dfe6c8-7334-473c-85c2-1807b6f7e737','475a5519-7599-4529-b730-dc52667dc93a','user','你確定有紅茶?',4,'2023-06-05 20:33:45','2023-06-05 20:33:45'),('cb34ac6d-8159-4e30-b211-36c5fbd70b4a','37e30879-4537-43ae-b888-1cec54e3ccfb','user','我要紅茶',1,'2023-06-08 22:49:41','2023-06-08 22:49:41'),('d9501dbd-4653-4b82-ab24-b16330d83e50','37e30879-4537-43ae-b888-1cec54e3ccfb','user','確定有紅茶?',3,'2023-06-08 22:50:24','2023-06-08 22:50:24'),('d9b95109-4873-4b0f-b22d-56b7958470ba','d290171d-da1e-4d36-bd67-965b04e49d01','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-05 23:25:27','2023-06-05 23:25:27'),('dcf4a2aa-d500-4a7d-a0c1-cf076a05e473','37e30879-4537-43ae-b888-1cec54e3ccfb','assistant','是的，我們有紅茶瑪奇朵和布丁奶茶兩款紅茶飲品可以選擇，您要試試',4,'2023-06-08 22:51:17','2023-06-08 22:51:17'),('e50e6c11-4235-4962-93b2-4242dc1b1354','d290171d-da1e-4d36-bd67-965b04e49d01','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 23:25:31','2023-06-05 23:25:31'),('ed9625e4-fa58-4125-b7cf-6c74b0b94bf7','9752cb83-d79c-4c54-be4e-166ecd959673','system','string',0,'2023-06-08 22:53:47','2023-06-08 22:53:47'),('f2d07307-8faa-4f74-a5fa-568d4f3f86c2','475a5519-7599-4529-b730-dc52667dc93a','assistant','非常抱歉，我剛剛犯了一個錯誤，我們當然有紅茶，以下是我們的紅茶選項',5,'2023-06-05 20:33:51','2023-06-05 20:33:51'),('f9488be0-95d1-473a-ac4a-cddfa457d730','0bcff785-af32-433f-92f3-a8bd9de8f696','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]冰淇淋奶茶,[中杯(M):50;大杯(L):65;]布丁奶茶,[中杯(M):55;大杯(L):75;]燕麥烏龍奶,[中杯(M):30;大杯(L):35;]燕麥奶青,[中杯(M):40;大杯(L):55;]燕麥奶茶,[中杯(M):40;大杯(L):55;]波霸奶茶,[中杯(M):50;大杯(L):65;]珍珠奶茶,[中杯(M):55;大杯(L):75;]椰果奶茶,[中杯(M):50;大杯(L):65;]烏龍奶,[中杯(M):40;大杯(L):55;]奶綠,[中杯(M):55;大杯(L):75;]可可芭蕾,[中杯(M):40;大杯(L):55;]燕麥阿華田,[中杯(M):50;大杯(L):65;]奶茶,[中杯(M):40;大杯(L):55;中杯(M):40;大杯(L):55;]阿華田,[中杯(M):40;大杯(L):55;]',0,'2023-06-05 20:28:04','2023-06-05 20:28:04'),('fc2880cd-b4a6-4e45-874a-9a9094fb4bfe','a86e11cf-c9ad-4a63-a5a6-cb2d063882e3','assistant','好的，請問您要中杯(M)還是大杯(L)呢？甜度和冰塊呢？',2,'2023-06-08 23:29:40','2023-06-08 23:29:40');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
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
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `ID` char(38) NOT NULL,
  `OrderID` char(38) NOT NULL,
  `ItemID` char(38) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `Size` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Suger` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Ice` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Value` int NOT NULL,
  `Memo` varchar(300) DEFAULT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES ('0d577787-1115-4bb5-81e3-d582ce2a524a','f2bac332-876b-48c8-b218-ed0260afe821','ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','阿華田','大悲','少糖','少冰',100,'string','2023-06-25 14:28:52','2023-06-25 14:28:52'),('3737f29a-2901-4521-b9e2-d6b80b24bbbf','81fd1127-ec9a-490a-8310-eccfa09049f3','ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','阿華田','大悲','少糖','少冰',100,'string','2023-06-25 14:28:01','2023-06-25 14:28:01'),('4a219211-94d8-470c-bef1-0790d1fde43b','efd3782d-0c1b-43c7-a03b-f0bfdffe2a16','ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','阿華田','大悲','少糖','少冰',100,'string','2023-06-25 14:31:06','2023-06-25 14:31:06');
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
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
-- Table structure for table `orderdetailtopping`
--

DROP TABLE IF EXISTS `orderdetailtopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetailtopping` (
  `ID` char(38) NOT NULL,
  `OrderID` char(38) DEFAULT NULL,
  `OrderDetailID` char(38) NOT NULL,
  `ToppingID` char(38) NOT NULL,
  `Value` int NOT NULL,
  `Memo` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetailtopping`
--

LOCK TABLES `orderdetailtopping` WRITE;
/*!40000 ALTER TABLE `orderdetailtopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetailtopping` ENABLE KEYS */;
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
-- Table structure for table `topping`
--

DROP TABLE IF EXISTS `topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topping` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Value` int NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
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
-- Table structure for table `toppingstore`
--

DROP TABLE IF EXISTS `toppingstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toppingstore` (
  `ID` char(38) NOT NULL,
  `ToppingID` char(38) NOT NULL,
  `Count` int NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppingstore`
--

LOCK TABLES `toppingstore` WRITE;
/*!40000 ALTER TABLE `toppingstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `toppingstore` ENABLE KEYS */;
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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Account` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','test','test','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','2023-06-05 18:39:31','2023-06-05 18:39:31');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
