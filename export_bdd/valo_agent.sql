-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: valo_agent
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agents` (
  `id_agent` int NOT NULL AUTO_INCREMENT,
  `nom_agent` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_agent` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_agent` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_role` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_agent`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'Brimstone','Controller','brimstone.webp','controller.webp'),(2,'Viper','Controller','viper.webp','controller.webp'),(3,'Omen','Controller','omen.webp','controller.webp'),(4,'Killjoy','Sentinel','killjoy.webp','sentinel.webp'),(5,'Cypher','Sentinel','cypher.webp','sentinel.webp'),(6,'Sova','Initiator','sova.webp','initiator.webp'),(7,'Sage','Sentinel','sage.webp','sentinel.webp'),(8,'Agent 8','Inconnu','Inconnu','null.webp'),(9,'Phoenix','Duelist','phoenix.webp','duelist.webp'),(10,'Jett','Duelist','jett.webp','duelist.webp'),(11,'Reyna','Duelist','reyna.webp','duelist.webp'),(12,'Raze','Duelist','raze.webp','duelist.webp'),(13,'Breach','Initiator','breach.webp','initiator.webp'),(14,'Skye','Initiator','skye.webp','initiator.webp'),(15,'Yoru','Duelist','yoru.webp','duelist.webp'),(16,'Astra','Controller','astra.webp','controller.webp'),(17,'KAY/O','Initiator','kayo.webp','initiator.webp'),(18,'Chamber','Sentinel','chamber.webp','sentinel.webp'),(19,'Neon','Duelist','neon.webp','duelist.webp'),(20,'Fade','Initiator','fade.webp','initiator.webp'),(21,'Harbor','Controller','harbor.webp','controller.webp'),(22,'Gekko','Initiator','gekko.webp','initiator.webp'),(23,'Deadlock','Sentinel','deadlock.webp','sentinel.webp'),(24,'Iso','Duelist','iso.webp','duelist.webp'),(25,'Clove','Controller','clove.webp','controller.webp'),(26,'Vyse','Sentinel','vyse.webp','sentinel.webp'),(27,'Tejo','Initiator','tejo.webp','initiator.webp'),(28,'Waylay','Duelist','waylay.webp','duelist.webp');
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-16 23:33:20
