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
-- Table structure for table `skater_stats`
--

DROP TABLE IF EXISTS `skater_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skater_stats` (
  `season_year` varchar(7) NOT NULL,
  `hp_id` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `team_name` char(40) NOT NULL,
  `skater_position` varchar(45) DEFAULT NULL,
  `total_shots_on_goal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hp_id`,`player_name`,`season_year`,`team_name`),
  KEY `season_year1_idx` (`season_year`),
  KEY `hpid3_idx` (`hp_id`),
  KEY `playername1_idx` (`player_name`),
  KEY `team_name_idx` (`team_name`),
  CONSTRAINT `hpid3` FOREIGN KEY (`hp_id`) REFERENCES `player_stats` (`hp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `playername2` FOREIGN KEY (`player_name`) REFERENCES `player_stats` (`player_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `season_year1` FOREIGN KEY (`season_year`) REFERENCES `player_stats` (`season_year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `team_name` FOREIGN KEY (`team_name`) REFERENCES `player_stats` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skater_stats`
--

LOCK TABLES `skater_stats` WRITE;
/*!40000 ALTER TABLE `skater_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `skater_stats` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-28 19:02:05
