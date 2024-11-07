-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: militarydatabase
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `ammo`
--

DROP TABLE IF EXISTS `ammo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ammo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ammo_type` varchar(50) DEFAULT NULL,
  `mass` decimal(5,2) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `caliber` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `weapon_id` int DEFAULT NULL,
  `is_destroyed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position_id` (`position_id`),
  KEY `weapon_id` (`weapon_id`),
  CONSTRAINT `ammo_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `fire_positions` (`id`),
  CONSTRAINT `ammo_ibfk_2` FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`id`),
  CONSTRAINT `ammo_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `fire_positions` (`id`),
  CONSTRAINT `ammo_ibfk_4` FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`id`),
  CONSTRAINT `ammo_ibfk_5` FOREIGN KEY (`position_id`) REFERENCES `fire_positions` (`id`),
  CONSTRAINT `ammo_ibfk_6` FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ammo`
--

LOCK TABLES `ammo` WRITE;
/*!40000 ALTER TABLE `ammo` DISABLE KEYS */;
INSERT INTO `ammo` VALUES (1,'high-explosive fragmentation',17.00,'mortar shell',120,21,11,0),(2,'high-explosive fragmentation',17.00,'mortar shell',120,21,11,0),(3,'high-explosive fragmentation',16.00,'mortar shell',120,21,11,0),(4,'high-explosive fragmentation',17.00,'mortar shell',120,21,11,0),(5,'high-explosive fragmentation',16.00,'mortar shell',120,21,11,0),(6,'high-explosive fragmentation',17.00,'mortar shell',120,21,11,0),(7,'high-explosive fragmentation',17.00,'mortar shell',120,22,12,0),(8,'high-explosive fragmentation',16.00,'mortar shell',120,22,12,0),(9,'high-explosive fragmentation',17.00,'mortar shell',120,22,12,0),(10,'high-explosive fragmentation',17.00,'mortar shell',120,22,12,0),(11,'high-explosive fragmentation',17.00,'mortar shell',120,22,12,0),(12,'high-explosive fragmentation',17.00,'mortar shell',120,22,12,0),(13,'high-explosive fragmentation',17.00,'mortar shell',120,23,13,0),(14,'high-explosive fragmentation',17.00,'mortar shell',120,23,13,0),(15,'high-explosive fragmentation',16.00,'mortar shell',120,23,13,0),(16,'high-explosive fragmentation',17.00,'mortar shell',120,23,13,0),(17,'high-explosive fragmentation',17.00,'mortar shell',120,23,13,0),(18,'high-explosive fragmentation',17.00,'mortar shell',120,23,13,0),(19,'smoke',15.00,'M933D',120,21,11,0),(20,'smoke',15.00,'M933D',120,21,11,0),(21,'smoke',15.00,'M933D',120,21,11,0),(22,'smoke',15.00,'M933D',120,21,11,0),(23,'smoke',15.00,'M933D',120,21,11,0),(24,'smoke',15.00,'M933D',120,22,12,0),(25,'smoke',15.00,'M933D',120,22,12,0),(26,'smoke',15.00,'M933D',120,22,12,0),(27,'smoke',15.00,'M933D',120,22,12,0),(28,'smoke',15.00,'M933D',120,22,12,0),(29,'smoke',15.00,'M933D',120,23,13,0),(30,'smoke',15.00,'M933D',120,23,13,0),(31,'smoke',15.00,'M933D',120,23,13,0),(32,'smoke',15.00,'M933D',120,23,13,0),(33,'smoke',15.00,'M933D',120,23,13,0),(34,'light',10.00,'MOD63',120,21,11,0),(35,'light',10.00,'MOD63',120,21,11,0),(36,'light',10.00,'MOD63',120,21,11,0),(37,'light',10.00,'MOD63',120,21,11,0),(38,'light',10.00,'MOD63',120,22,12,0),(39,'light',10.00,'MOD63',120,22,12,0),(40,'light',10.00,'MOD63',120,22,12,0),(41,'light',10.00,'MOD63',120,22,12,0),(42,'light',10.00,'MOD63',120,23,13,0),(43,'light',10.00,'MOD63',120,23,13,0),(44,'light',10.00,'MOD63',120,23,13,0),(45,'light',10.00,'MOD63',120,23,13,0),(46,'high-explosive fragmentation',19.00,'H-5B909',122,16,10,1),(47,'high-explosive fragmentation',19.00,'H-5B909',122,15,9,0),(48,'high-explosive fragmentation',19.00,'H-5B909',122,14,8,0),(49,'high-explosive fragmentation',19.00,'H-5B909',122,13,7,0),(50,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(51,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(52,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(53,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(54,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(55,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(56,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(57,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(58,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(59,'high-explosive fragmentation',19.00,'H-5B909',122,5,4,0),(60,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(61,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(62,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(63,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(64,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(65,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(66,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(67,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(68,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(69,'high-explosive fragmentation',19.00,'H-5B909',122,4,3,0),(70,'hef',19.00,'H-5B909',122,3,2,1),(71,'hef',19.00,'H-5B909',122,3,2,1),(72,'hef',19.00,'H-5B909',122,3,2,1),(73,'high-explosive fragmentation',19.00,'H-5B909',122,3,2,0),(74,'high-explosive fragmentation',19.00,'H-5B909',122,3,2,0),(75,'high-explosive fragmentation',19.00,'H-5B909',122,3,2,0),(76,'high-explosive fragmentation',21.00,'H-D321',122,3,2,0),(77,'high-explosive fragmentation',21.00,'H-D321',122,3,2,0),(78,'high-explosive fragmentation',21.00,'H-D321',122,3,2,0),(79,'high-explosive fragmentation',21.00,'H-D321',122,3,2,0),(80,'hef',21.00,'H-D321',122,16,10,1),(81,'hef',21.00,'H-D321',122,16,10,1),(82,'hef',21.00,'H-D321',122,16,10,1),(83,'high-explosive fragmentation',21.00,'H-D321',122,16,10,1),(84,'high-explosive fragmentation',21.00,'H-D321',122,16,10,1),(85,'high-explosive fragmentation',21.00,'H-D321',122,15,9,0),(86,'high-explosive fragmentation',21.00,'H-D321',122,15,9,0),(87,'high-explosive fragmentation',21.00,'H-D321',122,15,9,0),(88,'high-explosive fragmentation',21.00,'H-D321',122,15,9,0),(89,'high-explosive fragmentation',21.00,'H-D321',122,15,9,0),(90,'high-explosive fragmentation',21.00,'H-D321',122,14,8,0),(91,'high-explosive fragmentation',21.00,'H-D321',122,14,8,0),(92,'high-explosive fragmentation',21.00,'H-D321',122,14,8,0),(93,'high-explosive fragmentation',21.00,'H-D321',122,14,8,0),(94,'high-explosive fragmentation',21.00,'H-D321',122,14,8,0),(95,'high-explosive fragmentation',21.00,'H-D321',122,13,7,0),(96,'high-explosive fragmentation',21.00,'H-D321',122,13,7,0),(97,'high-explosive fragmentation',21.00,'H-D321',122,13,7,0),(98,'high-explosive fragmentation',21.00,'H-D321',122,13,7,0),(99,'high-explosive fragmentation',21.00,'H-D321',122,13,7,0),(100,'fire',25.00,'H-S3S1',122,13,7,0),(101,'fire',25.00,'H-S3S1',122,13,7,0),(102,'fire',25.00,'H-S3S1',122,13,7,0),(103,'fire',25.00,'H-S3S1',122,5,4,0),(104,'fire',25.00,'H-S3S1',122,5,4,0),(105,'fire',25.00,'H-S3S1',122,5,4,0),(106,'fire',25.00,'H-S3S1',122,4,3,0),(107,'fire',25.00,'H-S3S1',122,4,3,0),(108,'fire',25.00,'H-S3S1',122,4,3,0),(109,'fire',25.00,'H-S3S1',122,4,3,0),(110,'fire',25.00,'H-S3S1',122,4,3,0),(111,'fire',25.00,'H-S3S1',122,3,2,0),(112,'fire',25.00,'H-S3S1',122,3,2,0),(113,'fire',25.00,'H-S3S1',122,3,2,0),(114,'fire',25.00,'H-S3S1',122,3,2,0),(115,'fire',25.00,'H-S3S1',122,3,2,0),(116,'hef',23.00,'H-933A1',152,10,6,1),(117,'hef',23.00,'H-933A1',152,10,6,1),(118,'hef',23.00,'H-933A1',152,10,6,1),(119,'hef',23.00,'H-933A1',152,10,6,1),(120,'hef',23.00,'H-933A1',152,10,6,1),(121,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(122,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(123,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(124,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(125,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(126,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(127,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(128,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(129,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(130,'high-explosive fragmentation',23.00,'H-933A1',152,10,6,0),(131,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(132,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(133,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(134,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(135,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(136,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(137,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(138,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(139,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(140,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(141,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(142,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(143,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(144,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(145,'high-explosive fragmentation',23.00,'H-933A1',152,9,5,0),(146,'hec',52.00,'P-02S1',203,2,1,1),(147,'hec',52.00,'P-02S1',203,2,1,1),(148,'hec',52.00,'P-02S1',203,2,1,1),(149,'hec',52.00,'P-02S1',203,2,1,1),(150,'high-explosive cumulative',52.00,'P-02S1',203,2,1,0);
/*!40000 ALTER TABLE `ammo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corections`
--

DROP TABLE IF EXISTS `corections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commander` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `people` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `shot_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shot_id` (`shot_id`),
  CONSTRAINT `corections_ibfk_1` FOREIGN KEY (`shot_id`) REFERENCES `shots` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corections`
--

LOCK TABLES `corections` WRITE;
/*!40000 ALTER TABLE `corections` DISABLE KEYS */;
/*!40000 ALTER TABLE `corections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fire_positions`
--

DROP TABLE IF EXISTS `fire_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fire_positions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `weapon_id` int DEFAULT NULL,
  `is_destroyed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  KEY `weapon_id` (`weapon_id`),
  CONSTRAINT `fire_positions_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  CONSTRAINT `fire_positions_ibfk_2` FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fire_positions`
--

LOCK TABLES `fire_positions` WRITE;
/*!40000 ALTER TABLE `fire_positions` DISABLE KEYS */;
INSERT INTO `fire_positions` VALUES (1,48.6853,37.5629,'2C7',2,NULL,0),(2,48.364,37.6837,'2C7 (C)',2,1,0),(3,48.6466,37.7441,'2C1',2,2,0),(4,48.5541,37.7361,'2C1',2,3,0),(5,48.4946,37.7934,'2C1',2,4,0),(6,48.6274,37.7333,'2C1 (C)',2,NULL,0),(7,48.6017,37.7168,'2C1 (C)',2,NULL,0),(8,48.5038,37.8431,'2C1 (C)',2,NULL,0),(9,48.587,37.7624,'2C3',2,5,0),(10,48.5609,37.7874,'2C3',2,6,0),(11,48.4851,37.8608,'2C3 (C)',2,NULL,0),(12,48.6188,37.778,'2C3 (C)',2,NULL,0),(13,48.5147,37.8467,'D-30',3,7,0),(14,48.5415,37.8418,'D-30',3,8,0),(15,48.5429,37.8405,'D-30',3,9,0),(16,48.5299,37.8525,'D-30',3,10,1),(17,48.5028,37.8852,'D-30 (C)',3,NULL,0),(18,48.5387,37.791,'D-30 (C)',3,NULL,0),(19,48.584,37.8002,'D-30 (C)',3,NULL,0),(20,48.5628,37.838,'D-30 (C)',3,NULL,0),(21,48.59,37.8549,'2B11',1,11,0),(22,48.5165,37.8713,'2B11',1,12,0),(23,48.5438,37.8672,'2B11',1,13,0),(24,48.5771,37.8538,'2B11 (C)',1,NULL,0),(25,48.5645,37.8574,'2B11 (C)',1,NULL,0),(26,48.5523,37.8518,'2B11 (C)',1,NULL,0),(27,48.4798,37.5046,'FP-11',NULL,NULL,0);
/*!40000 ALTER TABLE `fire_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fire_tasks`
--

DROP TABLE IF EXISTS `fire_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fire_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ammo_type` varchar(20) DEFAULT NULL,
  `ammo_count` int DEFAULT NULL,
  `description` text,
  `position_id` int DEFAULT NULL,
  `target_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position_id` (`position_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `fire_tasks_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `fire_positions` (`id`),
  CONSTRAINT `fire_tasks_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `targets` (`id`),
  CONSTRAINT `fire_tasks_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `fire_positions` (`id`),
  CONSTRAINT `fire_tasks_ibfk_4` FOREIGN KEY (`target_id`) REFERENCES `targets` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fire_tasks`
--

LOCK TABLES `fire_tasks` WRITE;
/*!40000 ALTER TABLE `fire_tasks` DISABLE KEYS */;
INSERT INTO `fire_tasks` VALUES (1,'hef',3,'test',16,7),(2,'hef',3,'mortar',3,10),(3,'hec',4,'cover',1,16),(4,'hef',5,'infantry covered',10,5);
/*!40000 ALTER TABLE `fire_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `militaryammoview`
--

DROP TABLE IF EXISTS `militaryammoview`;
/*!50001 DROP VIEW IF EXISTS `militaryammoview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `militaryammoview` AS SELECT 
 1 AS `position_name`,
 1 AS `ammo_type`,
 1 AS `ammo_count`,
 1 AS `is_destroyed`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `shots`
--

DROP TABLE IF EXISTS `shots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shots` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ammo_type` varchar(20) DEFAULT NULL,
  `target_id` int DEFAULT NULL,
  `position_id` int DEFAULT NULL,
  `weapon_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `target_id` (`target_id`),
  KEY `position_id` (`position_id`),
  KEY `weapon_id` (`weapon_id`),
  CONSTRAINT `shots_ibfk_1` FOREIGN KEY (`target_id`) REFERENCES `targets` (`id`),
  CONSTRAINT `shots_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `fire_positions` (`id`),
  CONSTRAINT `shots_ibfk_3` FOREIGN KEY (`weapon_id`) REFERENCES `weapons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shots`
--

LOCK TABLES `shots` WRITE;
/*!40000 ALTER TABLE `shots` DISABLE KEYS */;
INSERT INTO `shots` VALUES (1,'hef',7,16,10),(2,'hef',7,16,10),(3,'hef',7,16,10),(4,'hef',10,3,2),(5,'hef',10,3,2),(6,'hef',10,3,2),(7,'hec',16,1,1),(8,'hec',16,1,1),(9,'hec',16,1,1),(10,'hec',16,1,1),(11,'hef',5,10,6),(12,'hef',5,10,6),(13,'hef',5,10,6),(14,'hef',5,10,6),(15,'hef',5,10,6);
/*!40000 ALTER TABLE `shots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `targets`
--

DROP TABLE IF EXISTS `targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `targets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` text,
  `is_destroyed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `targets`
--

LOCK TABLES `targets` WRITE;
/*!40000 ALTER TABLE `targets` DISABLE KEYS */;
INSERT INTO `targets` VALUES (1,48.6027,37.938,'T-101','infantry covered',0),(2,48.6059,37.9177,'T-102','infantry covered',0),(3,48.5943,37.9146,'T-103','infantry',0),(4,48.5683,37.8832,'T-104','infantry covered',0),(5,48.5801,37.8977,'T-105','infantry covered',0),(6,48.5322,37.9002,'T-106','infantry covered',0),(7,48.5572,37.9034,'T-107','infantry covered',0),(8,48.5886,37.9663,'T-201','KSP covered',0),(9,48.5764,37.9095,'T-202','mortar launcher',0),(10,48.5654,37.9154,'T-203','mortar launcher',0),(11,48.5701,37.9082,'T-204','mortar',0),(12,48.5731,37.9607,'T-301','howitzer sheltered',0),(13,48.5962,37.9498,'T-302','howitzer sheltered',0),(14,48.6082,37.9497,'T-303','howitzer sheltered',0),(15,48.6025,37.9648,'T-304','howitzer sheltered',0),(16,48.5973,37.9879,'T-401','logistics centre',0),(17,48.5889,38.0069,'T-402','logistics centre',0),(18,48.5955,38.0359,'T-403','ammunition depot',0),(19,48.6025,38.0044,'T-404','ammunition depot',0),(20,48.5712,38.0122,'T-405','ammunition depot',0),(21,48.568,37.5378,'TRG-11',NULL,0);
/*!40000 ALTER TABLE `targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `commander` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `people` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `units`
--

LOCK TABLES `units` WRITE;
/*!40000 ALTER TABLE `units` DISABLE KEYS */;
INSERT INTO `units` VALUES (1,'cloud','mortar battery',15,10,NULL),(2,'falcon','howitzer division',30,5,NULL),(3,'rabbit','fire support company',20,10,NULL);
/*!40000 ALTER TABLE `units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weapons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `caliber` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `commander` varchar(50) DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  `is_destroyed` tinyint(1) DEFAULT '0',
  `distance` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `unit_id` (`unit_id`),
  CONSTRAINT `weapons_ibfk_1` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weapons`
--

LOCK TABLES `weapons` WRITE;
/*!40000 ALTER TABLE `weapons` DISABLE KEYS */;
INSERT INTO `weapons` VALUES (1,NULL,'2C7',203,5,'falcon',2,0,NULL),(2,NULL,'2C1',122,5,'falcon',2,0,NULL),(3,NULL,'2C1',122,5,'falcon',2,0,NULL),(4,NULL,'2C1',122,5,'falcon',2,0,NULL),(5,NULL,'2C3',152,5,'falcon',2,0,NULL),(6,NULL,'2C3',152,5,'falcon',2,0,NULL),(7,NULL,'D-30',122,10,'rabbit',3,0,NULL),(8,NULL,'D-30',122,10,'rabbit',3,0,NULL),(9,NULL,'D-30',122,10,'rabbit',3,0,NULL),(10,NULL,'D-30',122,10,'rabbit',3,0,NULL),(11,NULL,'2B11',120,10,'cloud',1,0,NULL),(12,NULL,'2B11',120,10,'cloud',1,0,NULL),(13,NULL,'2B11',120,10,'cloud',1,0,NULL);
/*!40000 ALTER TABLE `weapons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'militarydatabase'
--

--
-- Dumping routines for database 'militarydatabase'
--
/*!50003 DROP PROCEDURE IF EXISTS `InsertShotAndUpdateAmmo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertShotAndUpdateAmmo`(
    p_ammo_type VARCHAR(50),
    p_target_id INT,
    p_position_id INT,
    p_weapon_id INT
)
BEGIN
    SET p_ammo_type = TRIM(p_ammo_type);
    
    INSERT INTO shots (ammo_type, target_id, position_id, weapon_id)
    VALUES (p_ammo_type, p_target_id, p_position_id, p_weapon_id);

    UPDATE ammo
    SET is_destroyed = true
    WHERE ammo_type = p_ammo_type AND is_destroyed = false
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MarkPositionAsDestroyed` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MarkPositionAsDestroyed`(p_position_id INT)
BEGIN
    -- Перевірка, чи існує позиція
    IF (SELECT COUNT(*) FROM fire_positions WHERE id = p_position_id) = 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Fire position not found';
    END IF;

    -- Позначення боєприпасів як знищених
    UPDATE ammo
    SET is_destroyed = 1
    WHERE position_id = p_position_id;

    -- Позначення вогневої позиції як знищеної
    UPDATE fire_positions
    SET is_destroyed = 1
    WHERE id = p_position_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RelocateWeaponAndAmmo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RelocateWeaponAndAmmo`(
    IN p_weapon_id INT,
    IN p_new_position_id INT
)
BEGIN
    -- Перевірка, чи нова позиція не зайнята іншою зброєю
    DECLARE v_position_occupied INT;
    SELECT COUNT(*)
    INTO v_position_occupied
    FROM fire_positions
    WHERE id = p_new_position_id AND weapon_id IS NOT NULL;

    -- Якщо позиція зайнята, процедура завершується
    IF v_position_occupied > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The target position is already occupied by another weapon.';
    ELSE
        -- Оновлення старої позиції, видалення зв'язку зі зброєю
        UPDATE fire_positions
        SET weapon_id = NULL
        WHERE weapon_id = p_weapon_id;

        -- Переміщення зброї на нову позицію
        UPDATE fire_positions
        SET weapon_id = p_weapon_id
        WHERE id = p_new_position_id;

        -- Оновлення позиції всіх боєприпасів, пов'язаних з цією зброєю
        UPDATE ammo
        SET position_id = p_new_position_id
        WHERE weapon_id = p_weapon_id;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `militaryammoview`
--

/*!50001 DROP VIEW IF EXISTS `militaryammoview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `militaryammoview` AS select `fire_positions`.`name` AS `position_name`,`ammo`.`ammo_type` AS `ammo_type`,count(`ammo`.`id`) AS `ammo_count`,`ammo`.`is_destroyed` AS `is_destroyed` from (`ammo` left join `fire_positions` on((`ammo`.`position_id` = `fire_positions`.`id`))) group by `fire_positions`.`name`,`ammo`.`ammo_type`,`ammo`.`is_destroyed` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-07 12:20:35
