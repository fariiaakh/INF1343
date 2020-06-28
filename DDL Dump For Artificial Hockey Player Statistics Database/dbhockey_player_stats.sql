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
-- Table structure for table `player_stats`
--

DROP TABLE IF EXISTS `player_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_stats` (
  `hp_id` int(11) NOT NULL,
  `team_name` char(40) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `season_year` varchar(9) NOT NULL,
  `total_points` int(11) DEFAULT NULL,
  `total_ice_time` int(11) DEFAULT NULL,
  `games_played` int(11) DEFAULT NULL,
  `total_penalty_time` int(11) DEFAULT NULL,
  `total_goals` int(11) DEFAULT NULL,
  `total_assists` int(11) DEFAULT NULL,
  KEY `hpid2_idx` (`hp_id`),
  KEY `playername5_idx` (`player_name`),
  KEY `seshyear5_idx` (`season_year`),
  KEY `teamname5_idx` (`team_name`),
  CONSTRAINT `hpid10` FOREIGN KEY (`hp_id`) REFERENCES `hockey_person` (`hp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `playername10` FOREIGN KEY (`player_name`) REFERENCES `hockey_person` (`person_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `seasonyear10` FOREIGN KEY (`season_year`) REFERENCES `season` (`season_year`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teamname10` FOREIGN KEY (`team_name`) REFERENCES `team` (`team_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_stats`
--

LOCK TABLES `player_stats` WRITE;
/*!40000 ALTER TABLE `player_stats` DISABLE KEYS */;
INSERT INTO `player_stats` VALUES (1,'Montreal Canadiens','Paul Byron','2017-18',35,1322,82,23,21,15),(1,'Montreal Canadiens','Paul Byron','2018-19',31,816,56,17,18,16),(2,'Montreal Canadiens','Phillip Danault','2017-18',25,863,52,34,10,17),(2,'Montreal Canadiens','Phillip Danault','2018-19',53,1440,81,39,13,41),(3,'Montreal Canadiens','Max Domi','2017-18',0,0,0,0,0,0),(3,'Montreal Canadiens','Max Domi','2018-19',72,1425,82,80,30,44),(4,'Montreal Canadiens','Jonathan Drouin','2017-18',46,1355,77,30,17,33),(4,'Montreal Canadiens','Jonathan Drouin','2018-19',53,1371,81,26,21,35),(5,'Montreal Canadiens','Jake Evans','2017-18',0,0,0,0,0,0),(5,'Montreal Canadiens','Jake Evans','2018-19',0,0,0,0,0,0),(6,'Montreal Canadiens','Nick Suzuki','2017-18',0,0,0,0,0,0),(6,'Montreal Canadiens','Nick Suzuki','2018-19',0,0,0,0,0,0),(7,'Montreal Canadiens','Jordan Weal','2017-18',0,0,0,0,0,0),(7,'Montreal Canadiens','Jordan Weal','2018-19',10,250,16,2,7,6),(8,'Montreal Canadiens','Charles Hudon','2017-18',30,1010,72,38,11,20),(8,'Montreal Canadiens','Charles Hudon','2018-19',5,374,32,16,3,2),(9,'Montreal Canadiens','Artturi Lehkonen','2017-18',21,1088,66,20,15,9),(9,'Montreal Canadiens','Artturi Lehkonen','2018-19',31,1276,82,32,15,20),(10,'Montreal Canadiens','Tomas Tatar','2017-18',0,0,0,0,0,0),(10,'Montreal Canadiens','Tomas Tatar','2018-19',58,1313,80,34,29,33),(11,'Montreal Canadiens','Joel Armia','2017-18',0,0,0,0,0,0),(11,'Montreal Canadiens','Joel Armia','2018-19',23,900,57,14,15,10),(12,'Montreal Canadiens','Brendan Gallagher','2017-18',54,1325,82,34,35,23),(12,'Montreal Canadiens','Brendan Gallagher','2018-19',52,1345,82,49,37,19),(13,'Montreal Canadiens','Dale Weise','2017-18',0,0,0,0,0,0),(13,'Montreal Canadiens','Dale Weise','2018-19',0,91,9,4,0,0),(14,'Montreal Canadiens','Karl Alzner','2017-18',12,1647,82,40,1,11),(14,'Montreal Canadiens','Karl Alzner','2018-19',1,156,9,2,0,1),(15,'Montreal Canadiens','Ben Chiaro','2017-18',0,0,0,0,0,0),(15,'Montreal Canadiens','Ben Chiaro','2018-19',0,0,0,0,0,0),(16,'Montreal Canadiens','Christian Folin','2017-18',0,0,0,0,0,0),(16,'Montreal Canadiens','Christian Folin','2018-19',4,301,19,11,0,4),(17,'Montreal Canadiens','Brett Kulak','2017-18',0,0,0,0,0,0),(17,'Montreal Canadiens','Brett Kulak','2018-19',17,1017,57,31,9,11),(18,'Montreal Canadiens','Victor Mete','2017-18',7,764,49,4,0,7),(18,'Montreal Canadiens','Victor Mete','2018-19',13,1262,71,6,0,13),(19,'Montreal Canadiens','Xavier Ouellet','2017-18',0,0,0,0,0,0),(19,'Montreal Canadiens','Xavier Ouellet','2018-19',3,323,19,13,0,3),(20,'Montreal Canadiens','Jeff Petry','2017-18',42,1927,82,28,14,40),(20,'Montreal Canadiens','Jeff Petry','2018-19',46,1896,82,28,17,33),(21,'Montreal Canadiens','Shea Weber','2017-18',16,659,26,14,7,10),(21,'Montreal Canadiens','Shea Weber','2018-19',33,1362,58,28,17,19),(22,'Montreal Canadiens','Charlie Lindgren','2017-18',0,0,0,0,0,0),(22,'Montreal Canadiens','Charlie Lindgren','2018-19',0,65,1,0,0,0),(23,'Montreal Canadiens','Carey Price','2017-18',0,2855,49,0,0,0),(23,'Montreal Canadiens','Carey Price','2018-19',1,3880,66,2,0,1),(24,'Toronto Maple Leafs','Frederik Gauthier','2017-18',1,79,9,0,0,0),(24,'Toronto Maple Leafs','Frederik Gauthier','2018-19',14,586,70,12,3,11),(25,'Toronto Maple Leafs','Zach Hyman','2017-18',40,1423,82,37,17,25),(25,'Toronto Maple Leafs','Zach Hyman','2018-19',41,127,71,65,25,20),(26,'Toronto Maple Leafs','Alexander Kerfoot','2017-18',0,0,0,0,0,0),(26,'Toronto Maple Leafs','Alexander Kerfoot','2018-19',0,0,0,0,0,0),(27,'Toronto Maple Leafs','Denis Malgin','2017-18',0,0,0,0,0,0),(27,'Toronto Maple Leafs','Denis Malgin','2018-19',0,0,0,0,0,0),(28,'Toronto Maple Leafs','Mitch Marner','2017-18',69,1344,82,26,24,47),(28,'Toronto Maple Leafs','Mitch Marner','2018-19',94,1625,82,22,31,68),(29,'Toronto Maple Leafs','Auston Matthews','2017-18',63,1124,62,12,38,29),(29,'Toronto Maple Leafs','Auston Matthews','2018-19',73,1262,68,12,42,36),(30,'Toronto Maple Leafs','Jason Spezza','2017-18',0,0,0,0,0,0),(30,'Toronto Maple Leafs','Jason Spezza','2018-19',0,0,0,0,0,0),(31,'Toronto Maple Leafs','John Tavares','2017-18',0,0,0,0,0,0),(31,'Toronto Maple Leafs','John Tavares','2018-19',88,1565,82,34,55,41),(32,'Toronto Maple Leafs','Kyle Clifford','2017-18',0,0,0,0,0,0),(32,'Toronto Maple Leafs','Kyle Clifford','2018-19',0,0,0,0,0,0),(33,'Toronto Maple Leafs','Pierre Engvall','2017-18',0,0,0,0,0,0),(33,'Toronto Maple Leafs','Pierre Engvall','2018-19',0,0,0,0,0,0),(34,'Toronto Maple Leafs','Andreas Johnsson','2017-18',3,105,9,0,2,1),(34,'Toronto Maple Leafs','Andreas Johnsson','2018-19',43,998,73,32,23,23),(35,'Toronto Maple Leafs','Kasperi Kapanen','2017-18',9,427,38,4,8,2),(35,'Toronto Maple Leafs','Kasperi Kapanen','2018-19',44,1296,78,27,23,24),(36,'Toronto Maple Leafs','Ilya Mikheyev','2017-18',0,0,0,0,0,0),(36,'Toronto Maple Leafs','Ilya Mikheyev','2018-19',0,0,0,0,0,0),(37,'Toronto Maple Leafs','William Nylander','2017-18',61,1368,82,10,28,41),(37,'Toronto Maple Leafs','William Nylander','2018-19',27,838,54,16,7,20),(38,'Toronto Maple Leafs','Tyson Barrie','2017-18',0,0,0,0,0,0),(38,'Toronto Maple Leafs','Tyson Barrie','2018-19',0,0,0,0,0,0),(39,'Toronto Maple Leafs','Cody Ceci','2017-18',0,0,0,0,0,0),(39,'Toronto Maple Leafs','Cody Ceci','2018-19',0,0,0,0,0,0),(40,'Toronto Maple Leafs','Travis Dermott','2017-18',13,592,37,8,1,12),(40,'Toronto Maple Leafs','Travis Dermott','2018-19',17,1108,64,22,4,13),(41,'Toronto Maple Leafs','Justin Hol','2017-18',2,35,2,0,3,0),(41,'Toronto Maple Leafs','Justin Hol','2018-19',1,137,11,2,0,1),(42,'Toronto Maple Leafs','Martin Marincin','2017-18',0,33,2,2,0,0),(42,'Toronto Maple Leafs','Martin Marincin','2018-19',5,365,24,12,1,4),(43,'Toronto Maple Leafs','Jake Muzzi','2017-18',0,0,0,0,0,0),(43,'Toronto Maple Leafs','Jake Muzzi','2018-19',16,631,30,14,6,11),(44,'Toronto Maple Leafs','Morgan Rielly','2017-18',52,1642,76,14,6,46),(44,'Toronto Maple Leafs','Morgan Rielly','2018-19',72,1896,82,14,25,52),(45,'Toronto Maple Leafs','Calle Rosen','2017-18',1,51,4,4,0,1),(45,'Toronto Maple Leafs','Calle Rosen','2018-19',1,67,4,0,0,0),(46,'Toronto Maple Leafs','Rasmus Sandin','2017-18',0,0,0,0,0,0),(46,'Toronto Maple Leafs','Rasmus Sandin','2018-19',0,0,0,0,0,0),(47,'Toronto Maple Leafs','Frederik Andersen','2017-18',1,3889,66,2,0,1),(47,'Toronto Maple Leafs','Frederik Andersen','2018-19',1,3510,60,2,0,1),(48,'Toronto Maple Leafs','Jack Campbell','2017-18',0,0,0,0,0,0),(48,'Toronto Maple Leafs','Jack Campbell','2018-19',0,0,0,0,0,0),(51,'Chicago Blackhawks','Drake Caggiula','2017-18',0,0,0,0,0,0),(51,'Chicago Blackhawks','Drake Caggiula','2018-19',12,386,26,12,5,7),(52,'Chicago Blackhawks','Ryan Carpenter','2017-18',0,0,0,0,0,0),(52,'Chicago Blackhawks','Ryan Carpenter','2018-19',0,0,0,0,0,0),(53,'Chicago Blackhawks','Kirby Dach','2017-18',0,0,0,0,0,0),(53,'Chicago Blackhawks','Kirby Dach','2018-19',0,0,0,0,0,0),(54,'Chicago Blackhawks','Matthew Highmore','2017-18',2,158,13,0,0,0),(54,'Chicago Blackhawks','Matthew Highmore','2018-19',0,0,0,0,0,0),(55,'Chicago Blackhawks','David Kampf','2017-18',11,589,46,12,4,7),(55,'Chicago Blackhawks','David Kampf','2018-19',19,877,63,14,4,15),(56,'Chicago Blackhawks','Andrew Shaw','2017-18',0,0,0,0,0,0),(56,'Chicago Blackhawks','Andrew Shaw','2018-19',0,0,0,0,0,0),(57,'Chicago Blackhawks','Zack Smith','2017-18',0,0,0,0,0,0),(57,'Chicago Blackhawks','Zack Smith','2018-19',0,0,0,0,0,0),(58,'Chicago Blackhawks','Dylan Strome','2017-18',0,0,0,0,0,0),(58,'Chicago Blackhawks','Dylan Strome','2018-19',51,989,58,14,19,34),(59,'Chicago Blackhawks','Jonathan Toews','2017-18',52,1457,74,47,22,32),(59,'Chicago Blackhawks','Jonathan Toews','2018-19',81,1723,82,40,40,46),(60,'Chicago Blackhawks','Brandon Hagel','2017-18',0,0,0,0,0,0),(60,'Chicago Blackhawks','Brandon Hagel','2018-19',0,0,0,0,0,0),(61,'Chicago Blackhawks','Dominik Kubali','2017-18',0,0,0,0,0,0),(61,'Chicago Blackhawks','Dominik Kubali','2018-19',0,0,0,0,0,0),(62,'Chicago Blackhawks','Alex Nylander','2017-18',0,0,0,0,0,0),(62,'Chicago Blackhawks','Alex Nylander','2018-19',0,0,0,0,0,0),(63,'Chicago Blackhawks','Brandon Saad','2017-18',35,1435,82,14,26,17),(63,'Chicago Blackhawks','Brandon Saad','2018-19',0,0,0,0,0,0),(64,'Chicago Blackhawks','Alex DeBrincat','2017-18',52,1214,82,6,29,24),(64,'Chicago Blackhawks','Alex DeBrincat','2018-19',76,1451,82,15,44,35),(65,'Chicago Blackhawks','Patrick Kane','2017-18',0,0,0,0,0,0),(65,'Chicago Blackhawks','Patrick Kane','2018-19',110,1822,81,22,51,67),(66,'Chicago Blackhawks','Nicolas Beaudin','2017-18',0,0,0,0,0,0),(66,'Chicago Blackhawks','Nicolas Beaudin','2018-19',0,0,0,0,0,0),(67,'Chicago Blackhawks','Adam Boqvist','2017-18',0,0,0,0,0,0),(67,'Chicago Blackhawks','Adam Boqvist','2018-19',0,0,0,0,0,0),(68,'Chicago Blackhawks','Lucas Carlsson','2017-18',0,0,0,0,0,0),(68,'Chicago Blackhawks','Lucas Carlsson','2018-19',0,0,0,0,0,0),(69,'Chicago Blackhawks','Duncan Keit','2017-18',32,1954,82,28,3,30),(69,'Chicago Blackhawks','Duncan Keit','2018-19',40,1887,82,70,7,34),(70,'Chicago Blackhawks','Slater Koekkoek','2017-18',0,0,0,0,0,0),(70,'Chicago Blackhawks','Slater Koekkoek','2018-19',5,362,22,10,1,4),(71,'Chicago Blackhawks','Olli Maatt','2017-18',0,0,0,0,0,0),(71,'Chicago Blackhawks','Olli Maatt','2018-19',0,0,0,0,0,0),(72,'Chicago Blackhawks','Connor Murph','2017-18',14,1244,76,34,2,12),(72,'Chicago Blackhawks','Connor Murph','2018-19',13,1013,52,40,6,8),(73,'Chicago Blackhawks','Brent Seabroo','2017-18',26,1636,81,38,7,19),(73,'Chicago Blackhawks','Brent Seabroo','2018-19',0,0,0,0,0,0),(74,'Chicago Blackhawks','Nick Seeler','2017-18',0,0,0,0,0,0),(74,'Chicago Blackhawks','Nick Seeler','2018-19',0,0,0,0,0,0),(75,'Chicago Blackhawks','Calvin de Haan','2017-18',0,0,0,0,0,0),(75,'Chicago Blackhawks','Calvin de Haan','2018-19',0,0,0,0,0,0),(76,'Chicago Blackhawks','Corey Crawford','2017-18',0,1584,28,0,0,0),(76,'Chicago Blackhawks','Corey Crawford','2018-19',4,2213,39,0,0,4),(77,'Chicago Blackhawks','Malcolm Subban','2017-18',0,0,0,0,0,0),(77,'Chicago Blackhawks','Malcolm Subban','2018-19',0,0,0,0,0,0),(79,'Boston Bruins','Patrice Bergeron','2017-18',63,1244,64,26,36,33),(79,'Boston Bruins','Patrice Bergeron','2018-19',79,1200,65,30,31,47),(80,'Boston Bruins','Anders Bjork','2017-18',12,370,30,6,4,8),(80,'Boston Bruins','Anders Bjork','2018-19',3,236,20,2,1,2),(81,'Boston Bruins','Anton Blidh','2017-18',0,10,1,0,0,0),(81,'Boston Bruins','Anton Blidh','2018-19',0,14,1,0,0,0),(82,'Boston Bruins','Brandon Carlo','2017-18',6,1462,76,45,0,6),(82,'Boston Bruins','Brandon Carlo','2018-19',10,1506,72,47,2,8),(83,'Boston Bruins','Zdeno Chara','2017-18',24,1672,73,60,10,17),(83,'Boston Bruins','Zdeno Chara','2018-19',14,1307,62,57,7,9),(84,'Boston Bruins','Connor Clifton','2017-18',0,0,0,0,0,0),(84,'Boston Bruins','Connor Clifton','2018-19',1,336,19,15,0,1),(85,'Boston Bruins','Charlie Coyle','2017-18',0,0,0,0,0,0),(85,'Boston Bruins','Charlie Coyle','2018-19',6,336,21,4,2,4),(86,'Boston Bruins','Jake DeBrusk','2017-18',43,1006,70,19,21,27),(86,'Boston Bruins','Jake DeBrusk','2018-19',42,1099,68,18,31,15),(87,'Boston Bruins','Matt Grzelcyk','2017-18',15,1021,61,22,3,12),(87,'Boston Bruins','Matt Grzelcyk','2018-19',18,1263,66,68,3,15),(88,'Boston Bruins','Jaroslav Halak','2017-18',0,0,0,0,0,0),(88,'Boston Bruins','Jaroslav Halak','2018-19',4,2308,40,0,0,4),(89,'Boston Bruins','Ondrej Kase','2017-18',0,0,0,0,0,0),(89,'Boston Bruins','Ondrej Kase','2018-19',0,0,0,0,0,0),(90,'Boston Bruins','David Krejci','2017-18',44,1080,64,18,19,27),(90,'Boston Bruins','David Krejci','2018-19',73,1432,81,16,24,53),(91,'Boston Bruins','Torey Krug','2017-18',59,1551,76,36,18,45),(91,'Boston Bruins','Torey Krug','2018-19',53,1363,64,33,8,37),(92,'Boston Bruins','Sean Kuraly','2017-18',14,919,75,40,7,8),(92,'Boston Bruins','Sean Kuraly','2018-19',21,978,71,38,11,13),(93,'Boston Bruins','Jeremy Lauzon','2017-18',0,0,0,0,0,0),(93,'Boston Bruins','Jeremy Lauzon','2018-19',1,249,16,2,2,0),(94,'Boston Bruins','Par Lindholm','2017-18',0,0,0,0,0,0),(94,'Boston Bruins','Par Lindholm','2018-19',0,0,0,0,0,0),(95,'Boston Bruins','Brad Marchand','2017-18',85,1341,68,63,42,51),(95,'Boston Bruins','Brad Marchand','2018-19',100,1550,79,96,45,64),(96,'Boston Bruins','Charlie McAvoy','2017-18',32,1395,63,53,9,25),(96,'Boston Bruins','Charlie McAvoy','2018-19',28,1197,54,45,10,21),(97,'Boston Bruins','John Moore','2017-18',0,0,0,0,0,0),(97,'Boston Bruins','John Moore','2018-19',13,1145,61,26,5,9),(98,'Boston Bruins','Joakim Nordstrom','2017-18',0,0,0,0,0,0),(98,'Boston Bruins','Joakim Nordstrom','2018-19',13,944,70,13,10,5),(99,'Boston Bruins','David Pastrnak','2017-18',80,1473,82,37,40,45),(99,'Boston Bruins','David Pastrnak','2018-19',81,1238,66,32,42,43),(100,'Boston Bruins','Tuukka Rask','2017-18',2,3173,54,4,0,2),(100,'Boston Bruins','Tuukka Rask','2018-19',2,2635,46,4,0,2),(101,'Boston Bruins','Nick Ritchie','2017-18',0,0,0,0,0,0),(101,'Boston Bruins','Nick Ritchie','2018-19',0,0,0,0,0,0),(102,'Boston Bruins','Chris Wagner','2017-18',0,0,0,0,0,0),(102,'Boston Bruins','Chris Wagner','2018-19',19,1022,76,51,13,7),(104,'New York Rangers','Pavel Buchnevich','2017-18',43,1111,74,20,18,29),(104,'New York Rangers','Pavel Buchnevich','2018-19',38,971,64,13,22,17),(105,'New York Rangers','Filip Chytil','2017-18',3,122,9,4,1,2),(105,'New York Rangers','Filip Chytil','2018-19',23,1034,75,8,13,12),(106,'New York Rangers','Anthony DeAngelo','2017-18',8,530,32,11,0,8),(106,'New York Rangers','Anthony DeAngelo','2018-19',30,1179,61,77,4,26),(107,'New York Rangers','Phillip Di Giuseppe','2017-18',0,0,0,0,0,0),(107,'New York Rangers','Phillip Di Giuseppe','2018-19',0,0,0,0,0,0),(108,'New York Rangers','Jesper Fast','2017-18',33,1057,71,26,13,20),(108,'New York Rangers','Jesper Fast','2018-19',20,1038,66,26,9,12),(109,'New York Rangers','Steven Fogarty','2017-18',0,12,1,2,0,0),(109,'New York Rangers','Steven Fogarty','2018-19',0,78,10,0,0,0),(110,'New York Rangers','Adam Fox','2017-18',0,0,0,0,0,0),(110,'New York Rangers','Adam Fox','2018-19',0,0,0,0,0,0),(111,'New York Rangers','Julien Gauthier','2017-18',0,0,0,0,0,0),(111,'New York Rangers','Julien Gauthier','2018-19',0,0,0,0,0,0),(112,'New York Rangers','Alexandar Georgiev','2017-18',0,515,10,0,0,0),(112,'New York Rangers','Alexandar Georgiev','2018-19',2,1874,33,2,0,2),(113,'New York Rangers','Brett Howden','2017-18',0,0,0,0,0,0),(113,'New York Rangers','Brett Howden','2018-19',23,986,66,14,7,17),(114,'New York Rangers','Kaapo Kakko','2017-18',0,0,0,0,0,0),(114,'New York Rangers','Kaapo Kakko','2018-19',0,0,0,0,0,0),(115,'New York Rangers','Chris Kreider','2017-18',37,906,58,44,16,21),(115,'New York Rangers','Chris Kreider','2018-19',52,1375,79,57,15,28),(116,'New York Rangers','Brendan Lemieux','2017-18',0,0,0,0,0,0),(116,'New York Rangers','Brendan Lemieux','2018-19',6,244,19,44,3,3),(117,'New York Rangers','Ryan Lindgren','2017-18',0,0,0,0,0,0),(117,'New York Rangers','Ryan Lindgren','2018-19',0,73,5,8,0,0),(118,'New York Rangers','Henrik Lundqvist','2017-18',1,3505,63,0,0,1),(118,'New York Rangers','Henrik Lundqvist','2018-19',3,3089,52,0,0,3),(119,'New York Rangers','Greg McKegg','2017-18',0,0,0,0,0,0),(119,'New York Rangers','Greg McKegg','2018-19',0,0,0,0,0,0),(120,'New York Rangers','Artemi Panarin','2017-18',0,0,0,0,0,0),(120,'New York Rangers','Artemi Panarin','2018-19',0,0,0,0,0,0),(121,'New York Rangers','Igor Shesterkin','2017-18',0,0,0,0,0,0),(121,'New York Rangers','Igor Shesterkin','2018-19',0,0,0,0,0,0),(122,'New York Rangers','Brendan Smith','2017-18',8,755,44,69,1,7),(122,'New York Rangers','Brendan Smith','2018-19',13,964,63,71,4,9),(123,'New York Rangers','Marc Staal','2017-18',8,1334,72,18,1,7),(123,'New York Rangers','Marc Staal','2018-19',13,1534,79,32,3,10),(124,'New York Rangers','Ryan Strome','2017-18',0,0,0,0,0,0),(124,'New York Rangers','Ryan Strome','2018-19',33,1002,63,50,20,15),(125,'New York Rangers','Jacob Trouba','2017-18',0,0,0,0,0,0),(125,'New York Rangers','Jacob Trouba','2018-19',0,0,0,0,0,0),(126,'New York Rangers','Mika Zibanejad','2017-18',0,0,0,0,0,0),(126,'New York Rangers','Mika Zibanejad','2018-19',74,1686,82,47,35,44),(129,'Detroit Red Wings','Justin Abdelkader','2017-18',35,1241,75,78,13,22),(129,'Detroit Red Wings','Justin Abdelkader','2018-19',19,1093,71,38,6,13),(130,'Detroit Red Wings','Jonathan Bernier','2017-18',0,0,0,0,0,0),(130,'Detroit Red Wings','Jonathan Bernier','2018-19',0,1860,35,0,0,0),(131,'Detroit Red Wings','Tyler Bertuzzi','2017-18',24,691,48,39,8,17),(131,'Detroit Red Wings','Tyler Bertuzzi','2018-19',47,1206,73,36,25,26),(132,'Detroit Red Wings','Alex Biega','2017-18',0,0,0,0,0,0),(132,'Detroit Red Wings','Alex Biega','2018-19',0,0,0,0,0,0),(133,'Detroit Red Wings','Madison Bowey','2017-18',0,0,0,0,0,0),(133,'Detroit Red Wings','Madison Bowey','2018-19',4,309,17,8,1,3),(134,'Detroit Red Wings','Trevor Daley','2017-18',16,1594,77,36,13,7),(134,'Detroit Red Wings','Trevor Daley','2018-19',8,817,44,12,3,6),(135,'Detroit Red Wings','Christoffer Ehn','2017-18',0,0,0,0,0,0),(135,'Detroit Red Wings','Christoffer Ehn','2018-19',9,637,60,6,4,6),(136,'Detroit Red Wings','Jonathan Ericsson','2017-18',13,1564,81,47,3,10),(136,'Detroit Red Wings','Jonathan Ericsson','2018-19',5,895,52,35,4,2),(137,'Detroit Red Wings','Adam Erne','2017-18',0,0,0,0,0,0),(137,'Detroit Red Wings','Adam Erne','2018-19',0,0,0,0,0,0),(138,'Detroit Red Wings','Robby Fabbri','2017-18',0,0,0,0,0,0),(138,'Detroit Red Wings','Robby Fabbri','2018-19',0,0,0,0,0,0),(139,'Detroit Red Wings','Valtteri Filppula','2017-18',0,0,0,0,0,0),(139,'Detroit Red Wings','Valtteri Filppula','2018-19',0,0,0,0,0,0),(140,'Detroit Red Wings','Sam Gagner','2017-18',0,0,0,0,0,0),(140,'Detroit Red Wings','Sam Gagner','2018-19',0,0,0,0,0,0),(141,'Detroit Red Wings','Luke Glendening','2017-18',19,911,69,17,13,8),(141,'Detroit Red Wings','Luke Glendening','2018-19',23,1231,78,15,11,13),(142,'Detroit Red Wings','Cody Goloubef','2017-18',0,0,0,0,0,0),(142,'Detroit Red Wings','Cody Goloubef','2018-19',0,0,0,0,0,0),(143,'Detroit Red Wings','Darren Helm','2017-18',31,1167,75,39,13,18),(143,'Detroit Red Wings','Darren Helm','2018-19',17,889,61,20,7,10),(144,'Detroit Red Wings','Jimmy Howard','2017-18',1,3368,60,10,0,1),(144,'Detroit Red Wings','Jimmy Howard','2018-19',1,3054,55,2,0,1),(145,'Detroit Red Wings','Filip Hronek','2017-18',0,0,0,0,0,0),(145,'Detroit Red Wings','Filip Hronek','2018-19',23,918,46,30,5,15),(146,'Detroit Red Wings','Dylan Larkin','2017-18',63,1627,82,61,20,47),(146,'Detroit Red Wings','Dylan Larkin','2018-19',73,1660,76,75,36,41),(147,'Detroit Red Wings','Gustav Lindstrom','2017-18',0,0,0,0,0,0),(147,'Detroit Red Wings','Gustav Lindstrom','2018-19',0,0,0,0,0,0),(148,'Detroit Red Wings','Anthony Mantha','2017-18',48,1384,80,52,26,24),(148,'Detroit Red Wings','Anthony Mantha','2018-19',48,1194,67,30,26,23),(149,'Detroit Red Wings','Patrik Nemeth','2017-18',0,0,0,0,0,0),(149,'Detroit Red Wings','Patrik Nemeth','2018-19',0,0,0,0,0,0),(150,'Detroit Red Wings','Frans Nielsen','2017-18',33,1250,79,14,19,17),(150,'Detroit Red Wings','Frans Nielsen','2018-19',35,1201,72,14,14,25),(151,'Detroit Red Wings','Brendan Perlini','2017-18',0,0,0,0,0,0),(151,'Detroit Red Wings','Brendan Perlini','2018-19',0,0,0,0,0,0),(152,'Detroit Red Wings','Dmytro Timashov','2017-18',0,0,0,0,0,0),(152,'Detroit Red Wings','Dmytro Timashov','2018-19',0,0,0,0,0,0);
/*!40000 ALTER TABLE `player_stats` ENABLE KEYS */;
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