-- MariaDB dump 10.19  Distrib 10.6.12-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ordergpt
-- ------------------------------------------------------
-- Server version	10.6.12-MariaDB-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availableice` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Name` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availableice`
--

LOCK TABLES `availableice` WRITE;
/*!40000 ALTER TABLE `availableice` DISABLE KEYS */;
INSERT INTO `availableice` VALUES ('6c869365-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','去冰'),('6c8873a9-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','微冰'),('6c88ee15-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','少冰'),('6c89500c-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','正常冰');
/*!40000 ALTER TABLE `availableice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availablesize`
--

DROP TABLE IF EXISTS `availablesize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availablesize` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Value` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availablesize`
--

LOCK TABLES `availablesize` WRITE;
/*!40000 ALTER TABLE `availablesize` DISABLE KEYS */;
INSERT INTO `availablesize` VALUES ('28660dd1-039c-11ee-96e8-e4a8dfe5ea5d','00ca74ca-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('2866f84c-039c-11ee-96e8-e4a8dfe5ea5d','021e080b-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('28677952-039c-11ee-96e8-e4a8dfe5ea5d','03a4a325-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('28683a63-039c-11ee-96e8-e4a8dfe5ea5d','04851883-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',55),('2868ef48-039c-11ee-96e8-e4a8dfe5ea5d','063688d6-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',30),('2869719a-039c-11ee-96e8-e4a8dfe5ea5d','074f4f16-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('2869fcbe-039c-11ee-96e8-e4a8dfe5ea5d','08682644-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286a72ba-039c-11ee-96e8-e4a8dfe5ea5d','09edfaa8-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('286ae887-039c-11ee-96e8-e4a8dfe5ea5d','0b8b15ec-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',55),('286b5ba1-039c-11ee-96e8-e4a8dfe5ea5d','0c91c08c-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('286be205-039c-11ee-96e8-e4a8dfe5ea5d','0dbe2e7c-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286c669d-039c-11ee-96e8-e4a8dfe5ea5d','0f39712b-039b-11ee-96e8-e4a8dfe5ea5d','中杯(M)',55),('286d2b1a-039c-11ee-96e8-e4a8dfe5ea5d','c64ac291-039a-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286dd070-039c-11ee-96e8-e4a8dfe5ea5d','d602e876-039a-11ee-96e8-e4a8dfe5ea5d','中杯(M)',50),('286e4a2a-039c-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('286ed8d0-039c-11ee-96e8-e4a8dfe5ea5d','ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','中杯(M)',40),('48323844-039c-11ee-96e8-e4a8dfe5ea5d','00ca74ca-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('4832d2c1-039c-11ee-96e8-e4a8dfe5ea5d','021e080b-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48335de1-039c-11ee-96e8-e4a8dfe5ea5d','03a4a325-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('4833d41a-039c-11ee-96e8-e4a8dfe5ea5d','04851883-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',75),('48344026-039c-11ee-96e8-e4a8dfe5ea5d','063688d6-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',35),('4834b50f-039c-11ee-96e8-e4a8dfe5ea5d','074f4f16-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48353804-039c-11ee-96e8-e4a8dfe5ea5d','08682644-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('4835a5d0-039c-11ee-96e8-e4a8dfe5ea5d','09edfaa8-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('483613ad-039c-11ee-96e8-e4a8dfe5ea5d','0b8b15ec-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',75),('48368052-039c-11ee-96e8-e4a8dfe5ea5d','0c91c08c-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('4836f9c2-039c-11ee-96e8-e4a8dfe5ea5d','0dbe2e7c-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48377557-039c-11ee-96e8-e4a8dfe5ea5d','0f39712b-039b-11ee-96e8-e4a8dfe5ea5d','大杯(L)',75),('4837d96c-039c-11ee-96e8-e4a8dfe5ea5d','c64ac291-039a-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('4838569f-039c-11ee-96e8-e4a8dfe5ea5d','d602e876-039a-11ee-96e8-e4a8dfe5ea5d','大杯(L)',65),('4838c386-039c-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55),('48393e60-039c-11ee-96e8-e4a8dfe5ea5d','ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','大杯(L)',55);
/*!40000 ALTER TABLE `availablesize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availablesuger`
--

DROP TABLE IF EXISTS `availablesuger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availablesuger` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Name` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availablesuger`
--

LOCK TABLES `availablesuger` WRITE;
/*!40000 ALTER TABLE `availablesuger` DISABLE KEYS */;
INSERT INTO `availablesuger` VALUES ('99da21d1-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','無糖'),('99dc1261-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','微糖'),('99dc845a-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','少糖'),('99dcf3a8-02ac-11ee-96e8-e4a8dfe5ea5d','ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','正常糖');
/*!40000 ALTER TABLE `availablesuger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availabletopping`
--

DROP TABLE IF EXISTS `availabletopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availabletopping` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `ToppingID` char(38) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabletopping`
--

LOCK TABLES `availabletopping` WRITE;
/*!40000 ALTER TABLE `availabletopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `availabletopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
INSERT INTO `conversation` VALUES ('02d18ff4-17d0-48bc-bda4-c31990e8dc56','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 15:13:14','2023-06-05 15:13:14'),('02e61a52-e8ee-4ec1-a0ef-607af5f293ce','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 15:19:17','2023-06-08 15:19:17'),('0bcff785-af32-433f-92f3-a8bd9de8f696','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:27:58','2023-06-05 20:27:58'),('2ecd4f71-f51a-4c0f-ba6c-912de761970e','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 15:11:13','2023-06-05 15:11:13'),('39226ea5-0072-4a5f-be05-45760c5855b9','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 15:23:42','2023-06-05 15:23:42'),('3b1f991a-ec60-4433-8dbb-15059004d36e','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 15:24:43','2023-06-08 15:24:43'),('475a5519-7599-4529-b730-dc52667dc93a','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:32:43','2023-06-05 20:32:43'),('549a87ed-2775-4a8c-9d87-3e2c5bcf1e59','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:00:44','2023-06-05 20:00:44'),('5ba944ef-0365-4b07-b943-2f377cd44987','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-14 08:57:07','2023-06-14 08:57:07'),('6960593c-9408-4e3e-b223-baa0bc275ee4','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 14:41:41','2023-06-08 14:41:41'),('787706cb-30be-4c4a-a425-8fbc968e5697','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-20 08:43:14','2023-06-20 08:43:14'),('a18c738e-a96b-40bc-96fa-28202c19a267','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-08 04:25:56','2023-06-08 04:25:56'),('a9742e46-e74a-4786-a443-8d458db7a8c5','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 19:53:16','2023-06-05 19:53:16'),('c12e49b0-497f-4fd7-ad4b-ffa33e9adb0a','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 15:14:38','2023-06-05 15:14:38'),('d2cf7455-dae8-4c00-bd03-81d175724fe2','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 15:14:15','2023-06-05 15:14:15'),('d5699a0f-54ca-4c12-904c-44d888efe1e3','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:03:06','2023-06-05 20:03:06'),('f4574c40-cb65-418c-9eb3-34327ed82206','40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','2023-06-14 08:58:55','2023-06-14 08:58:55');
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipblocker`
--

DROP TABLE IF EXISTS `ipblocker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipblocker` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `IPAddress` varchar(20) NOT NULL,
  `Count` int(11) NOT NULL,
  `Enable` bit(1) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipblocker`
--

LOCK TABLES `ipblocker` WRITE;
/*!40000 ALTER TABLE `ipblocker` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipblocker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemstore`
--

DROP TABLE IF EXISTS `itemstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemstore` (
  `ID` char(38) NOT NULL,
  `MenuItemID` char(38) NOT NULL,
  `Count` int(11) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemstore`
--

LOCK TABLES `itemstore` WRITE;
/*!40000 ALTER TABLE `itemstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginlog`
--

DROP TABLE IF EXISTS `loginlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginlog` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `IPAddress` varchar(20) NOT NULL,
  `Device` varchar(50) NOT NULL,
  `CountryCode` varchar(10) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginlog`
--

LOCK TABLES `loginlog` WRITE;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitem`
--

DROP TABLE IF EXISTS `menuitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitem` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `MenuItemTypeID` char(38) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitem`
--

LOCK TABLES `menuitem` WRITE;
/*!40000 ALTER TABLE `menuitem` DISABLE KEYS */;
INSERT INTO `menuitem` VALUES ('00ca74ca-039b-11ee-96e8-e4a8dfe5ea5d','青茶瑪奇朵','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:17:56','2023-06-05 20:17:56'),('021e080b-039b-11ee-96e8-e4a8dfe5ea5d','紅茶瑪奇朵','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:17:58','2023-06-05 20:17:58'),('03a4a325-039b-11ee-96e8-e4a8dfe5ea5d','冰淇淋奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:01','2023-06-05 20:18:01'),('04851883-039b-11ee-96e8-e4a8dfe5ea5d','布丁奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:02','2023-06-05 20:18:02'),('063688d6-039b-11ee-96e8-e4a8dfe5ea5d','燕麥烏龍奶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:05','2023-06-05 20:18:05'),('074f4f16-039b-11ee-96e8-e4a8dfe5ea5d','燕麥奶青','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:07','2023-06-05 20:18:07'),('08682644-039b-11ee-96e8-e4a8dfe5ea5d','燕麥奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:09','2023-06-05 20:18:09'),('09edfaa8-039b-11ee-96e8-e4a8dfe5ea5d','波霸奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:11','2023-06-05 20:18:11'),('0b8b15ec-039b-11ee-96e8-e4a8dfe5ea5d','珍珠奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:14','2023-06-05 20:18:14'),('0c91c08c-039b-11ee-96e8-e4a8dfe5ea5d','椰果奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:16','2023-06-05 20:18:16'),('0dbe2e7c-039b-11ee-96e8-e4a8dfe5ea5d','烏龍奶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:18','2023-06-05 20:18:18'),('0f39712b-039b-11ee-96e8-e4a8dfe5ea5d','奶綠','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:18:20','2023-06-05 20:18:20'),('c64ac291-039a-11ee-96e8-e4a8dfe5ea5d','可可芭蕾','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:16:18','2023-06-05 20:16:18'),('d602e876-039a-11ee-96e8-e4a8dfe5ea5d','燕麥阿華田','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:16:44','2023-06-05 20:16:44'),('ecc3e0dc-02aa-11ee-96e8-e4a8dfe5ea5d','奶茶','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-04 15:39:23','2023-06-04 15:39:23'),('ff109f9e-039a-11ee-96e8-e4a8dfe5ea5d','阿華田','99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','2023-06-05 20:17:53','2023-06-05 20:17:53');
/*!40000 ALTER TABLE `menuitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitemtype`
--

DROP TABLE IF EXISTS `menuitemtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitemtype` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitemtype`
--

LOCK TABLES `menuitemtype` WRITE;
/*!40000 ALTER TABLE `menuitemtype` DISABLE KEYS */;
INSERT INTO `menuitemtype` VALUES ('99139e0a-02aa-11ee-96e8-e4a8dfe5ea5d','找奶茶','奶茶類','2023-06-04 15:37:03','2023-06-04 15:37:03');
/*!40000 ALTER TABLE `menuitemtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `ID` char(38) NOT NULL,
  `ConversationID` char(38) NOT NULL,
  `Role` varchar(30) NOT NULL,
  `Message` longtext NOT NULL,
  `OrderID` int(11) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES ('00786924-4445-4167-a490-58351a97d3d9','a18c738e-a96b-40bc-96fa-28202c19a267','assistant','以下是我們的菜單，請您參考：\n\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;',5,'2023-06-08 04:40:53','2023-06-08 04:40:53'),('072ca085-add0-41fc-9c4d-79e6056028da','6960593c-9408-4e3e-b223-baa0bc275ee4','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-08 14:41:41','2023-06-08 14:41:41'),('117e7658-8509-4784-8cec-2fe9d5e18472','a18c738e-a96b-40bc-96fa-28202c19a267','user','我要紅茶',2,'2023-06-08 04:26:40','2023-06-08 04:26:40'),('19547f48-f7b2-4640-9a4f-3e6f71fa84c4','475a5519-7599-4529-b730-dc52667dc93a','assistant','好的，請問您要中杯(M)還是大杯(L)呢？',3,'2023-06-05 20:33:10','2023-06-05 20:33:10'),('206785e2-c733-43b9-b900-411705379ac9','a18c738e-a96b-40bc-96fa-28202c19a267','assistant','抱歉，可能是我剛剛打錯了，這是我們的完整菜單：\n\n品名, [大小:價錢;]\n青茶瑪',7,'2023-06-08 04:41:39','2023-06-08 04:41:39'),('24113218-d098-4209-ae03-2dd3a514806a','787706cb-30be-4c4a-a425-8fbc968e5697','user','我要紅茶',3,'2023-06-20 08:44:55','2023-06-20 08:44:55'),('352ef47f-f7d4-4fd4-ab7f-36e8bc6b33a8','6960593c-9408-4e3e-b223-baa0bc275ee4','assistant','好的，請問您要中杯(M)還是大杯(L)呢？',3,'2023-06-08 14:41:50','2023-06-08 14:41:50'),('367306f3-5a04-480e-a1e6-d5cd36ed85f3','39226ea5-0072-4a5f-be05-45760c5855b9','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-05 15:23:42','2023-06-05 15:23:42'),('369f9a4f-2207-4d91-a3a2-12a980e078bc','787706cb-30be-4c4a-a425-8fbc968e5697','assistant','好的，請問您要中杯(M)還是大杯(L)呢？甜度和冰塊要調整嗎？',4,'2023-06-20 08:44:57','2023-06-20 08:44:57'),('3e889bdb-5dfd-4cee-a5de-02feeb4ac60f','2ecd4f71-f51a-4c0f-ba6c-912de761970e','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 15:11:13','2023-06-05 15:11:13'),('475dd0bd-d1ad-4be7-acc2-63fc4d4ad609','02e61a52-e8ee-4ec1-a0ef-607af5f293ce','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-08 15:19:17','2023-06-08 15:19:17'),('48028dca-7b7b-4065-863b-42374a1a0181','02e61a52-e8ee-4ec1-a0ef-607af5f293ce','user','我要紅茶',2,'2023-06-08 15:24:45','2023-06-08 15:24:45'),('53670acd-3784-4a94-aae7-ad72a5a266ad','a18c738e-a96b-40bc-96fa-28202c19a267','user','菜單有什麼？',4,'2023-06-08 04:40:48','2023-06-08 04:40:48'),('57c2ae43-577a-49ad-8d9b-f68f8171f291','a18c738e-a96b-40bc-96fa-28202c19a267','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-08 04:25:56','2023-06-08 04:25:56'),('633952c3-e33b-4b51-989a-4f7f4926667c','c12e49b0-497f-4fd7-ad4b-ffa33e9adb0a','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 15:14:38','2023-06-05 15:14:38'),('68d85464-fad4-4c82-bae9-f5e06c1775d0','39226ea5-0072-4a5f-be05-45760c5855b9','assistant','好的，請問您要中杯(M)還是大杯(L)呢?',3,'2023-06-05 15:26:37','2023-06-05 15:26:37'),('6cfe1569-db63-4f82-9f98-80bfbd36394e','d2cf7455-dae8-4c00-bd03-81d175724fe2','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-05 15:14:15','2023-06-05 15:14:15'),('76cbe831-f4fe-4ccc-af9a-8e3403004f67','39226ea5-0072-4a5f-be05-45760c5855b9','user','我要紅茶',2,'2023-06-05 15:26:34','2023-06-05 15:26:34'),('77316a88-bf34-4004-94b4-95324f2d00d0','5ba944ef-0365-4b07-b943-2f377cd44987','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-14 08:57:07','2023-06-14 08:57:07'),('80639949-e7b2-41cf-852d-b59c283ceed2','787706cb-30be-4c4a-a425-8fbc968e5697','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆{訂單發送中請稍後...}\r\n若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人\r\n菜單\r\n品名,大小,價錢\r\n青茶瑪奇朵,中杯(M),40\r\n青茶瑪奇朵,大杯(L),55\r\n紅茶瑪奇朵,中杯(M),40',0,'2023-06-20 08:43:14','2023-06-20 08:43:14'),('80b31bf9-93fe-4df7-b641-c456f455a4e1','02d18ff4-17d0-48bc-bda4-c31990e8dc56','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 15:13:14','2023-06-05 15:13:14'),('8c3e0a92-40c2-44e3-8a3d-339d0f2fd56b','475a5519-7599-4529-b730-dc52667dc93a','user','我要紅茶',2,'2023-06-05 20:33:05','2023-06-05 20:33:05'),('94aa8eb3-bbd6-414a-99cf-eb49fd5f2415','2ecd4f71-f51a-4c0f-ba6c-912de761970e','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-05 15:11:13','2023-06-05 15:11:13'),('94f826c7-42b7-4b12-a7fb-92bcb209d0e9','475a5519-7599-4529-b730-dc52667dc93a','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-05 20:32:43','2023-06-05 20:32:43'),('969686e3-7eee-4480-97d5-6d4aa0c1384e','a18c738e-a96b-40bc-96fa-28202c19a267','user','為什麼我能夠點菜單上沒有的品項？',6,'2023-06-08 04:41:34','2023-06-08 04:41:34'),('97a854b6-0514-450a-b603-15401880a82c','787706cb-30be-4c4a-a425-8fbc968e5697','user','我要紅茶',1,'2023-06-20 08:43:22','2023-06-20 08:43:22'),('9a64e31e-5db4-4aa9-8f16-cacbcf9f1ba7','02e61a52-e8ee-4ec1-a0ef-607af5f293ce','assistant','好的，請問您要中杯(M)還是大杯(L)呢？',3,'2023-06-08 15:24:49','2023-06-08 15:24:49'),('a379759a-2d56-4a51-acf8-df0ce0978c70','d2cf7455-dae8-4c00-bd03-81d175724fe2','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 15:14:15','2023-06-05 15:14:15'),('b424345a-1cf8-492a-a892-da4bf3c7d1e9','475a5519-7599-4529-b730-dc52667dc93a','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 20:32:47','2023-06-05 20:32:47'),('b71da454-7236-422a-896c-da9d298ca62a','a18c738e-a96b-40bc-96fa-28202c19a267','assistant','好的，請問您要紅茶瑪奇朵嗎？還是紅茶本身呢？大小是中杯還是大杯呢？',3,'2023-06-08 04:26:46','2023-06-08 04:26:46'),('c7dfe6c8-7334-473c-85c2-1807b6f7e737','475a5519-7599-4529-b730-dc52667dc93a','user','你確定有紅茶?',4,'2023-06-05 20:33:45','2023-06-05 20:33:45'),('c81e7ca5-5034-45c7-8e0d-46929c4499e7','a18c738e-a96b-40bc-96fa-28202c19a267','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-08 04:25:56','2023-06-08 04:25:56'),('cb872d28-a3e2-42bd-81cc-72e493ca376f','39226ea5-0072-4a5f-be05-45760c5855b9','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-05 15:23:42','2023-06-05 15:23:42'),('d52c810e-06c1-4baa-b0ce-8815f86f625c','02d18ff4-17d0-48bc-bda4-c31990e8dc56','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-05 15:13:14','2023-06-05 15:13:14'),('d53ef826-e2b3-43f6-a508-f5f178701e50','6960593c-9408-4e3e-b223-baa0bc275ee4','user','我要紅茶',2,'2023-06-08 14:41:47','2023-06-08 14:41:47'),('d8ac0ea3-e074-41fc-ae68-34f6fd82ef6b','5ba944ef-0365-4b07-b943-2f377cd44987','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-14 08:57:07','2023-06-14 08:57:07'),('ddbb7100-b2b3-4f4e-8224-49eb4fd4bf68','02e61a52-e8ee-4ec1-a0ef-607af5f293ce','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-08 15:19:17','2023-06-08 15:19:17'),('e74f358d-50a1-478e-96f3-1de2f9f8f5a2','3b1f991a-ec60-4433-8dbb-15059004d36e','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-08 15:24:43','2023-06-08 15:24:43'),('ea6be437-c5cd-474a-b0fa-6d6791b19f20','c12e49b0-497f-4fd7-ad4b-ffa33e9adb0a','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\n菜單:\n品名, [大小:價錢;]\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\n布丁奶茶,[中杯(M):55;大杯(L):75;]\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\n燕麥奶青,[中杯(M):40;大杯(L):55;]\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\n波霸奶茶,[中杯(M):50;大杯(L):65;]\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\n椰果奶茶,[中杯(M):50;大杯(L):65;]\n烏龍奶,[中杯(M):40;大杯(L):55;]\n奶綠,[中杯(M):55;大杯(L):75;]\n可可芭蕾,[中杯(M):40;大杯(L):55;]\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\n奶茶,[中杯(M):40;大杯(L):55;]\n阿華田,[中杯(M):40;大杯(L):55;]\n',0,'2023-06-05 15:14:38','2023-06-05 15:14:38'),('ebff6db8-aa63-40cf-aae8-6789e557c6f9','6960593c-9408-4e3e-b223-baa0bc275ee4','assistant','歡迎光臨請問要甚麼飲料?',1,'2023-06-08 14:41:41','2023-06-08 14:41:41'),('f2d07307-8faa-4f74-a5fa-568d4f3f86c2','475a5519-7599-4529-b730-dc52667dc93a','assistant','非常抱歉，我剛剛犯了一個錯誤，我們當然有紅茶，以下是我們的紅茶選項',5,'2023-06-05 20:33:51','2023-06-05 20:33:51'),('f9488be0-95d1-473a-ac4a-cddfa457d730','0bcff785-af32-433f-92f3-a8bd9de8f696','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]冰淇淋奶茶,[中杯(M):50;大杯(L):65;]布丁奶茶,[中杯(M):55;大杯(L):75;]燕麥烏龍奶,[中杯(M):30;大杯(L):35;]燕麥奶青,[中杯(M):40;大杯(L):55;]燕麥奶茶,[中杯(M):40;大杯(L):55;]波霸奶茶,[中杯(M):50;大杯(L):65;]珍珠奶茶,[中杯(M):55;大杯(L):75;]椰果奶茶,[中杯(M):50;大杯(L):65;]烏龍奶,[中杯(M):40;大杯(L):55;]奶綠,[中杯(M):55;大杯(L):75;]可可芭蕾,[中杯(M):40;大杯(L):55;]燕麥阿華田,[中杯(M):50;大杯(L):65;]奶茶,[中杯(M):40;大杯(L):55;中杯(M):40;大杯(L):55;]阿華田,[中杯(M):40;大杯(L):55;]',0,'2023-06-05 20:28:04','2023-06-05 20:28:04'),('f9572926-7893-40b8-b09b-222cdf22baf6','787706cb-30be-4c4a-a425-8fbc968e5697','assistant','好的，請問您要中杯(M)還是大杯(L)呢？甜度和冰塊要調整嗎？',2,'2023-06-20 08:43:25','2023-06-20 08:43:25'),('f9b58173-3084-4f29-bfac-83d6fa9aea74','f4574c40-cb65-418c-9eb3-34327ed82206','system','你是飲料店員，只能依據下方提供的菜單為客人點餐並反覆詢至客人明確給予品名、數量、甜度、冰塊後，並計算總金額與客戶再次確認點選餐點，最後確認訂單後請回覆\"訂單發送中請稍後...\";若客人點選餐點並不存在於菜單中，請隨機推薦菜單內有的餐點給客人;冰塊選項: 少冰,常溫,熱飲,去冰,微冰,正常冰;甜度選項: 正常糖,1分糖,微糖,無糖,半糖;\r\n菜單:\r\n品名, [大小:價錢;]\r\n青茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n紅茶瑪奇朵,[中杯(M):40;大杯(L):55;]\r\n冰淇淋奶茶,[中杯(M):50;大杯(L):65;]\r\n布丁奶茶,[中杯(M):55;大杯(L):75;]\r\n燕麥烏龍奶,[中杯(M):30;大杯(L):35;]\r\n燕麥奶青,[中杯(M):40;大杯(L):55;]\r\n燕麥奶茶,[中杯(M):40;大杯(L):55;]\r\n波霸奶茶,[中杯(M):50;大杯(L):65;]\r\n珍珠奶茶,[中杯(M):55;大杯(L):75;]\r\n椰果奶茶,[中杯(M):50;大杯(L):65;]\r\n烏龍奶,[中杯(M):40;大杯(L):55;]\r\n奶綠,[中杯(M):55;大杯(L):75;]\r\n可可芭蕾,[中杯(M):40;大杯(L):55;]\r\n燕麥阿華田,[中杯(M):50;大杯(L):65;]\r\n奶茶,[中杯(M):40;大杯(L):55;]\r\n阿華田,[中杯(M):40;大杯(L):55;]\r\n',0,'2023-06-14 08:58:55','2023-06-14 08:58:55');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `ID` char(38) NOT NULL,
  `UserID` char(38) NOT NULL,
  `MessageID` char(38) NOT NULL,
  `TotalValue` int(11) NOT NULL,
  `TotalCount` int(11) NOT NULL,
  `Memo` varchar(300) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetail` (
  `ID` char(38) NOT NULL,
  `OrderID` char(38) NOT NULL,
  `Size` varchar(10) NOT NULL,
  `Suger` varchar(10) NOT NULL,
  `Ice` varchar(10) NOT NULL,
  `Value` int(11) NOT NULL,
  `Memo` varchar(300) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetailtopping`
--

DROP TABLE IF EXISTS `orderdetailtopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetailtopping` (
  `ID` char(38) NOT NULL,
  `OrderDetailID` char(38) NOT NULL,
  `ToppingID` char(38) NOT NULL,
  `Value` int(11) NOT NULL,
  `Memo` varchar(300) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetailtopping`
--

LOCK TABLES `orderdetailtopping` WRITE;
/*!40000 ALTER TABLE `orderdetailtopping` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetailtopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topping`
--

DROP TABLE IF EXISTS `topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topping` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppingstore`
--

DROP TABLE IF EXISTS `toppingstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toppingstore` (
  `ID` char(38) NOT NULL,
  `ToppingID` char(38) NOT NULL,
  `Count` int(11) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppingstore`
--

LOCK TABLES `toppingstore` WRITE;
/*!40000 ALTER TABLE `toppingstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `toppingstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` char(38) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Account` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `CreatedDatetime` datetime NOT NULL,
  `UpdateDatetime` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('40f91d6e-038d-11ee-96e8-e4a8dfe5ea5d','test','test','9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08','2023-06-05 18:39:31','2023-06-05 18:39:31');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ordergpt'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-21  6:09:29
