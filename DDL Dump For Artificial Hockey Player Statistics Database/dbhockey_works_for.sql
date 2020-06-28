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
-- Table structure for table `works_for`
--

DROP TABLE IF EXISTS `works_for`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_for` (
  `hp_id` int(11) DEFAULT NULL,
  `staff_name` char(30) DEFAULT NULL,
  `team_name` char(30) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `title` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_for`
--

LOCK TABLES `works_for` WRITE;
/*!40000 ALTER TABLE `works_for` DISABLE KEYS */;
INSERT INTO `works_for` VALUES (49,'Sheldon Keefe','Toronto Maple Leafs','2019-11-20 00:00:00',NULL,'Head Coach'),(50,'Claude Julien','Montreal Canadiens','2017-02-14 00:00:00',NULL,'Head Coach'),(78,'Jeremy Colliton','Chicago Blackhawks','2018-11-06 00:00:00',NULL,'Head Coach'),(103,'Bruce Cassidy','Boston Bruins','2017-02-07 00:00:00',NULL,'Head Coach'),(127,'David Quinn','New York Rangers','2018-05-23 00:00:00',NULL,'Head Coach'),(128,'Jeff Blashill','Detroit Red Wings','2014-06-04 00:00:00',NULL,'Head Coach'),(153,'Kyle Dubas','Toronto Maple Leafs','2018-05-11 00:00:00',NULL,'General Manager'),(154,'Stan Bowman','Chicago Blackhawks','2009-07-14 00:00:00',NULL,'General Manager'),(155,'Steve Yzerman','Detroit Red Wings','2019-04-19 00:00:00',NULL,'General Manager'),(156,'Jeff Gorton','New York Rangers','2015-07-01 00:00:00',NULL,'General Manager'),(156,'Jeff Gorton','Boston Bruins','2006-07-15 00:00:00','2007-06-27 00:00:00','General Manager'),(50,'Claude Julien','Boston Bruins','2007-06-22 00:00:00','2017-02-07 00:00:00','Head Coach'),(157,'Marc Bergevin','Montreal Canadiens','2012-05-12 00:00:00',NULL,'General Manager'),(49,'Sheldon Keefe','Toronto Maple Leafs','2019-11-20 00:00:00',NULL,'Head Coach'),(50,'Claude Julien','Montreal Canadiens','2017-02-14 00:00:00',NULL,'Head Coach'),(78,'Jeremy Colliton','Chicago Blackhawks','2018-11-06 00:00:00',NULL,'Head Coach'),(103,'Bruce Cassidy','Boston Bruins','2017-02-07 00:00:00',NULL,'Head Coach'),(127,'David Quinn','New York Rangers','2018-05-23 00:00:00',NULL,'Head Coach'),(128,'Jeff Blashill','Detroit Red Wings','2014-06-04 00:00:00',NULL,'Head Coach'),(153,'Kyle Dubas','Toronto Maple Leafs','2018-05-11 00:00:00',NULL,'General Manager'),(154,'Stan Bowman','Chicago Blackhawks','2009-07-14 00:00:00',NULL,'General Manager'),(155,'Steve Yzerman','Detroit Red Wings','2019-04-19 00:00:00',NULL,'General Manager'),(156,'Jeff Gorton','New York Rangers','2015-07-01 00:00:00',NULL,'General Manager'),(156,'Jeff Gorton','Boston Bruins','2006-07-15 00:00:00','2007-06-27 00:00:00','General Manager'),(50,'Claude Julien','Boston Bruins','2007-06-22 00:00:00','2017-02-07 00:00:00','Head Coach'),(157,'Marc Bergevin','Montreal Canadiens','2012-05-12 00:00:00',NULL,'General Manager');
/*!40000 ALTER TABLE `works_for` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-28 19:02:06
