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
-- Table structure for table `plays_in`
--

DROP TABLE IF EXISTS `plays_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plays_in` (
  `match_id` int(11) NOT NULL,
  `hp_id` int(11) NOT NULL,
  `team_name` char(40) NOT NULL,
  `season_year` varchar(7) NOT NULL,
  `ice_time_minutes` varchar(45) DEFAULT NULL,
  `penalty_time_minutes` varchar(45) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `shots_on_goal` int(11) DEFAULT NULL,
  `goals_allowed` int(11) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `player_name` varchar(45) DEFAULT NULL,
  `match_date` date DEFAULT NULL,
  PRIMARY KEY (`match_id`,`hp_id`,`team_name`,`season_year`),
  KEY `matid_idx` (`match_id`),
  KEY `seasonyr3_idx` (`season_year`),
  KEY `hperid_idx` (`hp_id`),
  KEY `playname_idx` (`player_name`),
  KEY `tmname_idx` (`team_name`),
  CONSTRAINT `hperid` FOREIGN KEY (`hp_id`) REFERENCES `roster` (`hp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `matid` FOREIGN KEY (`match_id`) REFERENCES `matches` (`match_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `playname` FOREIGN KEY (`player_name`) REFERENCES `roster` (`player_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seasonyr3` FOREIGN KEY (`season_year`) REFERENCES `roster` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tmname` FOREIGN KEY (`team_name`) REFERENCES `roster` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays_in`
--

LOCK TABLES `plays_in` WRITE;
/*!40000 ALTER TABLE `plays_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `plays_in` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-28 19:02:07
