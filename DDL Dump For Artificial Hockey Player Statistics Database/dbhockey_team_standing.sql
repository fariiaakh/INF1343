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
-- Table structure for table `team_standing`
--

DROP TABLE IF EXISTS `team_standing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team_standing` (
  `team_name` varchar(40) NOT NULL,
  `season_year` varchar(40) NOT NULL,
  `points` int(11) DEFAULT NULL,
  `games_played` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `over_time losses` bigint(20) DEFAULT NULL,
  `division` text,
  `conference` text,
  PRIMARY KEY (`team_name`,`season_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team_standing`
--

LOCK TABLES `team_standing` WRITE;
/*!40000 ALTER TABLE `team_standing` DISABLE KEYS */;
INSERT INTO `team_standing` VALUES ('Boston Bruins','2017-2018',112,82,50,20,12,' Eastern',' Atlantic'),('Boston Bruins','2018-2019',107,82,49,24,9,' Eastern',' Atlantic'),('Chicago Blackhawks','2017-2018',76,82,33,39,10,' Western',' Central'),('Chicago Blackhawks','2018-2019',84,82,36,34,12,' Western',' Central'),('Detroit Red Wings','2017-2018',73,82,30,39,13,' Eastern',' Atlantic'),('Detroit Red Wings','2018-2019',74,82,32,40,10,' Eastern',' Atlantic'),('Montreal Canadiens','2017-2018',71,82,29,40,13,' Eastern',' Atlantic'),('Montreal Canadiens','2018-2019',96,82,44,30,8,' Eastern',' Atlantic'),('New York Rangers','2017-2018',77,82,34,39,9,' Eastern',' Metropolitan'),('New York Rangers','2018-2019',78,82,32,36,14,' Eastern',' Metropolitan'),('Toronto Maple Leafs','2017-2018',105,82,49,26,7,' Eastern',' Atlantic'),('Toronto Maple Leafs','2018-2019',100,82,46,28,8,' Eastern',' Atlantic');
/*!40000 ALTER TABLE `team_standing` ENABLE KEYS */;
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
