-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: IPZ
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `czas`
--

DROP TABLE IF EXISTS `czas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `czas` (
  `czas` int DEFAULT NULL,
  `rok` int DEFAULT NULL,
  `miesiac` int DEFAULT NULL,
  `dzien` int DEFAULT NULL,
  `godzina` int DEFAULT NULL,
  `minuta` int DEFAULT NULL,
  `sekunda` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `czas`
--

LOCK TABLES `czas` WRITE;
/*!40000 ALTER TABLE `czas` DISABLE KEYS */;
/*!40000 ALTER TABLE `czas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miejsce`
--

DROP TABLE IF EXISTS `miejsce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miejsce` (
  `miejsce` int DEFAULT NULL,
  `kraj` text,
  `miasto` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miejsce`
--

LOCK TABLES `miejsce` WRITE;
/*!40000 ALTER TABLE `miejsce` DISABLE KEYS */;
/*!40000 ALTER TABLE `miejsce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rozdzielczosc`
--

DROP TABLE IF EXISTS `rozdzielczosc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rozdzielczosc` (
  `rozdzielczosc` int DEFAULT NULL,
  `X` int DEFAULT NULL,
  `Y` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rozdzielczosc`
--

LOCK TABLES `rozdzielczosc` WRITE;
/*!40000 ALTER TABLE `rozdzielczosc` DISABLE KEYS */;
/*!40000 ALTER TABLE `rozdzielczosc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skan`
--

DROP TABLE IF EXISTS `skan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skan` (
  `skan` int DEFAULT NULL,
  `numer` int DEFAULT NULL,
  `miejsce` int DEFAULT NULL,
  `czas` int DEFAULT NULL,
  `parametry` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skan`
--

LOCK TABLES `skan` WRITE;
/*!40000 ALTER TABLE `skan` DISABLE KEYS */;
/*!40000 ALTER TABLE `skan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skaner`
--

DROP TABLE IF EXISTS `skaner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skaner` (
  `nazwa` text,
  `skan` int DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skaner`
--

LOCK TABLES `skaner` WRITE;
/*!40000 ALTER TABLE `skaner` DISABLE KEYS */;
INSERT INTO `skaner` VALUES ('test1',1,1),('test1',1,2),('test1',1,3);
/*!40000 ALTER TABLE `skaner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 23:59:25
