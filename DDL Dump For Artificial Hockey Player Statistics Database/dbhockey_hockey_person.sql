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
-- Table structure for table `hockey_person`
--

DROP TABLE IF EXISTS `hockey_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hockey_person` (
  `hp_id` int(11) NOT NULL AUTO_INCREMENT,
  `person_name` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`hp_id`),
  KEY `name` (`person_name`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hockey_person`
--

LOCK TABLES `hockey_person` WRITE;
/*!40000 ALTER TABLE `hockey_person` DISABLE KEYS */;
INSERT INTO `hockey_person` VALUES (1,'Paul Byron','1989-04-27',30),(2,'Phillip Danault','1993-02-24',27),(3,'Max Domi','1995-03-02',25),(4,'Jonathan Drouin','1995-03-28',24),(5,'Jake Evans','1996-06-02',23),(6,'Nick Suzuki','1999-08-10',20),(7,'Jordan Weal','1992-04-15',27),(8,'Charles Hudon','1994-06-23',25),(9,'Artturi Lehkonen','1995-07-04',24),(10,'Tomas Tatar','1990-12-01',29),(11,'Joel Armia','1993-05-31',26),(12,'Brendan Gallagher','1992-05-06',27),(13,'Dale Weise','1988-08-05',31),(14,'Karl Alzner','1988-09-24',31),(15,'Ben Chiaro','1991-05-09',28),(16,'Christian Folin','1991-02-09',29),(17,'Brett Kulak','1994-01-06',26),(18,'Victor Mete','1998-06-07',21),(19,'Xavier Ouellet','1993-07-29',26),(20,'Jeff Petry','1987-12-09',32),(21,'Shea Weber','1985-08-14',34),(22,'Charlie Lindgren','1993-12-18',26),(23,'Carey Price','1987-08-16',32),(24,'Frederik Gauthier','1995-04-26',24),(25,'Zach Hyman','1992-06-09',27),(26,'Alexander Kerfoot','1994-08-11',25),(27,'Denis Malgin','1997-01-18',23),(28,'Mitch Marner','1997-05-05',22),(29,'Auston Matthews','1997-09-17',22),(30,'Jason Spezza','1983-06-13',36),(31,'John Tavares','1990-09-20',29),(32,'Kyle Clifford','1991-01-13',29),(33,'Pierre Engvall','1996-05-31',23),(34,'Andreas Johnsson','1994-11-21',25),(35,'Kasperi Kapanen','1996-07-23',23),(36,'Ilya Mikheyev','1994-10-10',25),(37,'William Nylander','1996-05-01',23),(38,'Tyson Barrie','1991-07-26',28),(39,'Cody Ceci','1993-12-21',26),(40,'Travis Dermott','1996-12-22',23),(41,'Justin Hol','1992-01-30',28),(42,'Martin Marincin','1992-02-18',28),(43,'Jake Muzzi','1989-02-21',31),(44,'Morgan Rielly','1994-03-09',26),(45,'Calle Rosen','1994-02-02',26),(46,'Rasmus Sandin','2000-03-07',20),(47,'Frederik Andersen','1989-10-02',30),(48,'Jack Campbell','1992-01-09',28),(49,'Sheldon Keefe','1950-01-01',70),(50,'Claude Julien','1950-01-01',70),(51,'Drake Caggiula','1994-06-20',25),(52,'Ryan Carpenter','1991-01-18',29),(53,'Kirby Dach','2001-01-21',19),(54,'Matthew Highmore','1996-02-27',24),(55,'David Kampf','1995-01-12',25),(56,'Andrew Shaw','1991-07-20',28),(57,'Zack Smith','1988-04-05',31),(58,'Dylan Strome','1997-03-07',23),(59,'Jonathan Toews','1988-04-29',31),(60,'Brandon Hagel','1998-08-27',21),(61,'Dominik Kubali','1995-08-21',24),(62,'Alex Nylander','1998-03-02',22),(63,'Brandon Saad','1992-10-27',27),(64,'Alex DeBrincat','1997-12-18',22),(65,'Patrick Kane','1988-11-19',31),(66,'Nicolas Beaudin','1999-10-09',20),(67,'Adam Boqvist','2000-08-15',19),(68,'Lucas Carlsson','1997-07-05',22),(69,'Duncan Keit','1983-07-16',36),(70,'Slater Koekkoek','1994-02-18',26),(71,'Olli Maatt','1994-08-22',25),(72,'Connor Murph','1993-03-26',26),(73,'Brent Seabroo','1985-04-20',34),(74,'Nick Seeler','1993-06-03',26),(75,'Calvin de Haan','1991-05-09',28),(76,'Corey Crawford','1984-12-31',35),(77,'Malcolm Subban','1993-12-21',26),(78,'Jeremy Colliton','1950-01-01',70),(79,'Patrice Bergeron','1985-07-24',34),(80,'Anders Bjork','1996-08-05',23),(81,'Anton Blidh','1995-03-14',24),(82,'Brandon Carlo','1996-11-26',23),(83,'Zdeno Chara','1977-03-18',42),(84,'Connor Clifton','1995-04-28',24),(85,'Charlie Coyle','1992-03-02',27),(86,'Jake DeBrusk','1996-10-17',23),(87,'Matt Grzelcyk','1994-01-05',26),(88,'Jaroslav Halak','1985-05-13',34),(89,'Ondrej Kase','1995-11-08',24),(90,'David Krejci','1986-04-28',33),(91,'Torey Krug','1991-04-12',28),(92,'Sean Kuraly','1993-01-20',27),(93,'Jeremy Lauzon','1997-04-28',22),(94,'Par Lindholm','1991-10-05',28),(95,'Brad Marchand','1988-05-11',31),(96,'Charlie McAvoy','1997-12-21',22),(97,'John Moore','1990-11-19',29),(98,'Joakim Nordstrom','1992-02-25',27),(99,'David Pastrnak','1996-05-25',23),(100,'Tuukka Rask','1987-03-10',32),(101,'Nick Ritchie','1995-12-05',24),(102,'Chris Wagner','1991-05-27',28),(103,'Bruce Cassidy','1950-01-01',70),(104,'Pavel Buchnevich','1995-04-17',24),(105,'Filip Chytil','1999-09-05',20),(106,'Anthony DeAngelo','1995-10-24',24),(107,'Phillip Di Giuseppe','1993-10-09',26),(108,'Jesper Fast','1991-12-02',28),(109,'Steven Fogarty','1993-04-19',26),(110,'Adam Fox','1998-02-17',21),(111,'Julien Gauthier','1997-10-15',22),(112,'Alexandar Georgiev','1996-02-10',23),(113,'Brett Howden','1998-03-28',21),(114,'Kaapo Kakko','2001-02-13',18),(115,'Chris Kreider','1991-04-30',28),(116,'Brendan Lemieux','1996-03-15',23),(117,'Ryan Lindgren','1998-02-11',21),(118,'Henrik Lundqvist','1982-03-02',37),(119,'Greg McKegg','1992-06-17',27),(120,'Artemi Panarin','1991-10-30',28),(121,'Igor Shesterkin','1995-12-30',24),(122,'Brendan Smith','1989-02-08',30),(123,'Marc Staal','1987-01-13',33),(124,'Ryan Strome','1993-07-11',26),(125,'Jacob Trouba','1994-02-26',25),(126,'Mika Zibanejad','1993-04-18',26),(127,'David Quinn','1950-01-01',70),(128,'Jeff Blashill','1950-01-01',70),(129,'Justin Abdelkader','1987-02-25',32),(130,'Jonathan Bernier','1988-08-07',31),(131,'Tyler Bertuzzi','1995-02-24',24),(132,'Alex Biega','1988-04-04',31),(133,'Madison Bowey','1995-04-22',24),(134,'Trevor Daley','1983-10-09',36),(135,'Christoffer Ehn','1996-04-05',23),(136,'Jonathan Ericsson','1984-03-02',35),(137,'Adam Erne','1995-04-20',24),(138,'Robby Fabbri','1996-01-22',24),(139,'Valtteri Filppula','1984-03-20',35),(140,'Sam Gagner','1989-08-10',30),(141,'Luke Glendening','1989-04-28',30),(142,'Cody Goloubef','1989-11-30',30),(143,'Darren Helm','1987-01-21',33),(144,'Jimmy Howard','1984-03-26',35),(145,'Filip Hronek','1997-11-02',22),(146,'Dylan Larkin','1996-07-30',23),(147,'Gustav Lindstrom','1998-10-20',21),(148,'Anthony Mantha','1994-09-16',25),(149,'Patrik Nemeth','1992-02-08',27),(150,'Frans Nielsen','1984-04-24',35),(151,'Brendan Perlini','1996-04-27',23),(152,'Dmytro Timashov','1996-10-01',23);
/*!40000 ALTER TABLE `hockey_person` ENABLE KEYS */;
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
