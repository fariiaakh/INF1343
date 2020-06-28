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
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `hp_id` int(11) NOT NULL,
  `player_position` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `player_name` varchar(45) NOT NULL,
  PRIMARY KEY (`hp_id`,`player_name`),
  KEY `plname_idx` (`player_name`),
  CONSTRAINT `hp_id1` FOREIGN KEY (`hp_id`) REFERENCES `hockey_person` (`hp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `player_name1` FOREIGN KEY (`player_name`) REFERENCES `hockey_person` (`person_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (1,'Forward','68','Paul Byron'),(2,'Forward','72','Phillip Danault'),(3,'Forward','70','Max Domi'),(4,'Forward','71','Jonathan Drouin'),(5,'Forward','73','Jake Evans'),(6,'Forward','71','Nick Suzuki'),(7,'Forward','69','Jordan Weal'),(8,'Forward','70','Charles Hudon'),(9,'Forward','72','Artturi Lehkonen'),(10,'Forward','71','Tomas Tatar'),(11,'Forward','75','Joel Armia'),(12,'Forward','69','Brendan Gallagher'),(13,'Forward','74','Dale Weise'),(14,'Defence','75','Karl Alzner'),(15,'Defence','75','Ben Chiaro'),(16,'Defence','75','Christian Folin'),(17,'Defence','74','Brett Kulak'),(18,'Defence','69','Victor Mete'),(19,'Defence','73','Xavier Ouellet'),(20,'Defence','75','Jeff Petry'),(21,'Defence','76','Shea Weber'),(22,'Goalie','73','Charlie Lindgren'),(23,'Goalie','75','Carey Price'),(24,'Forward','77','Frederik Gauthier'),(25,'Forward','73','Zach Hyman'),(26,'Forward','70','Alexander Kerfoot'),(27,'Forward','69','Denis Malgin'),(28,'Forward','72','Mitch Marner'),(29,'Forward','74','Auston Matthews'),(30,'Forward','75','Jason Spezza'),(31,'Forward','73','John Tavares'),(32,'Forward','74','Kyle Clifford'),(33,'Forward','77','Pierre Engvall'),(34,'Forward','70','Andreas Johnsson'),(35,'Forward','73','Kasperi Kapanen'),(36,'Forward','75','Ilya Mikheyev'),(37,'Forward','72','William Nylander'),(38,'Defence','70','Tyson Barrie'),(39,'Defence','75','Cody Ceci'),(40,'Defence','72','Travis Dermott'),(41,'Defence','75','Justin Hol'),(42,'Defence','76','Martin Marincin'),(43,'Defence','75','Jake Muzzi'),(44,'Defence','73','Morgan Rielly'),(45,'Defence','73','Calle Rosen'),(46,'Defence','71','Rasmus Sandin'),(47,'Goalie','76','Frederik Andersen'),(48,'Goalie','75','Jack Campbell'),(51,'Forward','70','Drake Caggiula'),(52,'Forward','72','Ryan Carpenter'),(53,'Forward','76','Kirby Dach'),(54,'Forward','71','Matthew Highmore'),(55,'Forward','74','David Kampf'),(56,'Forward','71','Andrew Shaw'),(57,'Forward','74','Zack Smith'),(58,'Forward','75','Dylan Strome'),(59,'Forward','74','Jonathan Toews'),(60,'Defence','71','Brandon Hagel'),(61,'Defence','74','Dominik Kubali'),(62,'Defence','73','Alex Nylander'),(63,'Defence','73','Brandon Saad'),(64,'Defence','67','Alex DeBrincat'),(65,'Defence','70','Patrick Kane'),(66,'Defence','71','Nicolas Beaudin'),(67,'Defence','71','Adam Boqvist'),(68,'Defence','72','Lucas Carlsson'),(69,'Defence','73','Duncan Keit'),(70,'Defence','74','Slater Koekkoek'),(71,'Defence','74','Olli Maatt'),(72,'Defence','76','Connor Murph'),(73,'Defence','75','Brent Seabroo'),(74,'Defence','74','Nick Seeler'),(75,'Defence','73','Calvin de Haan'),(76,'Goalie','74','Corey Crawford'),(77,'Goalie','74','Malcolm Subban'),(79,'Forward','73','Patrice Bergeron'),(80,'Forward','72','Anders Bjork'),(81,'Forward','72','Anton Blidh'),(82,'Defence','77','Brandon Carlo'),(83,'Defence','81','Zdeno Chara'),(84,'Defence','71','Connor Clifton'),(85,'Forward','75','Charlie Coyle'),(86,'Forward','72','Jake DeBrusk'),(87,'Defence','69','Matt Grzelcyk'),(88,'Goalie','71','Jaroslav Halak'),(89,'Forward','71','Ondrej Kase'),(90,'Forward','72','David Krejci'),(91,'Defence','69','Torey Krug'),(92,'Forward','74','Sean Kuraly'),(93,'Defence','71','Jeremy Lauzon'),(94,'Forward','72','Par Lindholm'),(95,'Forward','69','Brad Marchand'),(96,'Defence','72','Charlie McAvoy'),(97,'Defence','74','John Moore'),(98,'Forward','73','Joakim Nordstrom'),(99,'Forward','72','David Pastrnak'),(100,'Goalie','75','Tuukka Rask'),(101,'Forward','74','Nick Ritchie'),(102,'Forward','72','Chris Wagner'),(104,'Forward','75','Pavel Buchnevich'),(105,'Forward','74','Filip Chytil'),(106,'Defence','71','Anthony DeAngelo'),(107,'Forward','72','Phillip Di Giuseppe'),(108,'Forward','73','Jesper Fast'),(109,'Forward','75','Steven Fogarty'),(110,'Defence','70','Adam Fox'),(111,'Forward','76','Julien Gauthier'),(112,'Goalie','73','Alexandar Georgiev'),(113,'Forward','75','Brett Howden'),(114,'Forward','73','Kaapo Kakko'),(115,'Forward','75','Chris Kreider'),(116,'Forward','73','Brendan Lemieux'),(117,'Defence','72','Ryan Lindgren'),(118,'Goalie','73','Henrik Lundqvist'),(119,'Forward','72','Greg McKegg'),(120,'Forward','71','Artemi Panarin'),(121,'Goalie','74','Igor Shesterkin'),(122,'Defence','74','Brendan Smith'),(123,'Defence','76','Marc Staal'),(124,'Forward','73','Ryan Strome'),(125,'Defence','75','Jacob Trouba'),(126,'Forward','74','Mika Zibanejad'),(129,'Forward','74','Justin Abdelkader'),(130,'Goalie','72','Jonathan Bernier'),(131,'Forward','73','Tyler Bertuzzi'),(132,'Defence','70','Alex Biega'),(133,'Defence','74','Madison Bowey'),(134,'Defence','71','Trevor Daley'),(135,'Forward','75','Christoffer Ehn'),(136,'Defence','76','Jonathan Ericsson'),(137,'Forward','73','Adam Erne'),(138,'Forward','70','Robby Fabbri'),(139,'Forward','72','Valtteri Filppula'),(140,'Forward','71','Sam Gagner'),(141,'Forward','71','Luke Glendening'),(142,'Defence','73','Cody Goloubef'),(143,'Forward','72','Darren Helm'),(144,'Goalie','73','Jimmy Howard'),(145,'Defence','72','Filip Hronek'),(146,'Forward','73','Dylan Larkin'),(147,'Defence','74','Gustav Lindstrom'),(148,'Forward','77','Anthony Mantha'),(149,'Defence','75','Patrik Nemeth'),(150,'Forward','73','Frans Nielsen'),(151,'Forward','75','Brendan Perlini'),(152,'Forward','70','Dmytro Timashov');
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
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
