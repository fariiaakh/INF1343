-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: dbhockey
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `goalie_stats`
--

DROP TABLE IF EXISTS `goalie_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goalie_stats` (
  `hp_id` int(11) NOT NULL,
  `season_year` varchar(45) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `team_name` char(40) NOT NULL,
  `shutouts` varchar(3) DEFAULT NULL,
  `save_percentage` varchar(5) DEFAULT NULL,
  `average_goals_allowed` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`hp_id`,`season_year`,`player_name`,`team_name`),
  KEY `plnm1_idx` (`player_name`),
  KEY `seasonyear4_idx` (`season_year`),
  KEY `team_name_idx` (`team_name`),
  CONSTRAINT `hpid4` FOREIGN KEY (`hp_id`) REFERENCES `player_stats` (`hp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plnm1` FOREIGN KEY (`player_name`) REFERENCES `player_stats` (`player_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seasonyear4` FOREIGN KEY (`season_year`) REFERENCES `player_stats` (`season_year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_name4` FOREIGN KEY (`team_name`) REFERENCES `player_stats` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goalie_stats`
--

LOCK TABLES `goalie_stats` WRITE;
/*!40000 ALTER TABLE `goalie_stats` DISABLE KEYS */;
INSERT INTO `goalie_stats` VALUES (22,'2017-18','Charlie Lindgren','Montreal Canadiens','2','0.908','3.03'),(22,'2018-19','Charlie Lindgren','Montreal Canadiens','0','0.898','4.62'),(23,'2017-18','Carey Price','Montreal Canadiens','1','0.9','3.11'),(23,'2018-19','Carey Price','Montreal Canadiens','4','0.918','2.49'),(47,'2017-18','Frederik Andersen','Toronto Maple Leafs','5','0.918','2.81'),(47,'2018-19','Frederik Andersen','Toronto Maple Leafs','0','0.922','2.75'),(76,'2017-18','Corey Crawford','Chicago Blackhawks','2','0.929','2.27'),(76,'2018-19','Corey Crawford','Chicago Blackhawks','2','0.908','2.93'),(88,'2018-19','Jaroslav Halak','Boston Bruins','5','0.922','2.34'),(100,'2017-18','Tuukka Rask','Boston Bruins','3','0.917','2.36'),(100,'2018-19','Tuukka Rask','Boston Bruins','4','0.912','2.48'),(112,'2017-18','Alexandar Georgiev','New York Rangers','0','0.918','3.15'),(112,'2018-19','Alexandar Georgiev','New York Rangers','2','0.914','2.91'),(118,'2017-18','Henrik Lundqvist','New York Rangers','2','0.915','2.98'),(118,'2018-19','Henrik Lundqvist','New York Rangers','0','0.907','3.07'),(130,'2018-19','Jonathan Bernier','Detroit Red Wings','1','0.904','3.16'),(144,'2017-18','Jimmy Howard','Detroit Red Wings','1','0.91','2.85'),(144,'2018-19','Jimmy Howard','Detroit Red Wings','0','0.909','3.07');
/*!40000 ALTER TABLE `goalie_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-28 19:02:08
