-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: school
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_id` int NOT NULL,
  `client_name` varchar(40) NOT NULL,
  `address` varchar(60) NOT NULL,
  `industry` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (101,'Big Business Federation','23 Fingiertweg, 14534 Berlin','NGO'),(102,'eCommerce GmbH','27 Ersatz Allee, 10317 Berlin','Retail'),(103,'AutoMaker AG','20 Künstlichstraße, 10023 Berlin','Auto'),(104,'Banko Bank','12 Betrugstraße, 12345 Berlin','Banking'),(105,'WeMoveIt GmbH','138 Arglistweg, 10065 Berlin','Logistics');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `language` varchar(3) NOT NULL,
  `level` varchar(2) DEFAULT NULL,
  `course_length_weeks` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `in_school` tinyint(1) DEFAULT NULL,
  `teacher` int DEFAULT NULL,
  `client` int DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `teacher` (`teacher`),
  KEY `client` (`client`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_10` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_3` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_4` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_5` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_6` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_7` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_8` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `course_ibfk_9` FOREIGN KEY (`teacher`) REFERENCES `teacher` (`teacher_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (12,'English for Logistics','ENG','A1',10,'2020-02-01',1,1,105),(13,'Beginner English','ENG','A2',40,'2019-11-12',0,6,101),(14,'Intermediate English','ENG','B2',40,'2019-11-12',0,6,101),(15,'Advanced English','ENG','C1',40,'2019-11-12',0,6,101),(16,'Mandarin für Autoindustrie','MAN','B1',15,'2020-01-15',1,3,103),(17,'Français intermédiaire','FRA','B1',18,'2020-04-03',0,2,101),(18,'Deutsch für Anfänger','DEU','A2',8,'2020-02-14',1,4,102),(19,'Intermediate English','ENG','B2',10,'2020-03-29',0,1,104);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participant` (
  `participant_id` int NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `client` int DEFAULT NULL,
  PRIMARY KEY (`participant_id`),
  KEY `client` (`client`),
  CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `participant_ibfk_3` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL,
  CONSTRAINT `participant_ibfk_4` FOREIGN KEY (`client`) REFERENCES `client` (`client_id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participant`
--

LOCK TABLES `participant` WRITE;
/*!40000 ALTER TABLE `participant` DISABLE KEYS */;
INSERT INTO `participant` VALUES (101,'Marina','Berg','491635558182',101),(102,'Andrea','Duerr','49159555740',101),(103,'Philipp','Probst','49155555692',102),(104,'René','Brandt','4916355546',102),(105,'Susanne','Shuster','49155555779',102),(106,'Christian','Schreiner','49162555375',101),(107,'Harry','Kim','49177555633',101),(108,'Jan','Nowak','49151555824',101),(109,'Pablo','Garcia','49162555176',101),(110,'Melanie','Dreschler','49151555527',103),(111,'Dieter','Durr','49178555311',103),(112,'Max','Mustermann','49152555195',104),(113,'Maxine','Mustermann','49177555355',104),(114,'Heiko','Fleischer','49155555581',105);
/*!40000 ALTER TABLE `participant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takes_course`
--

DROP TABLE IF EXISTS `takes_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `takes_course` (
  `participant_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`participant_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `takes_course_ibfk_1` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_id`) ON DELETE CASCADE,
  CONSTRAINT `takes_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takes_course`
--

LOCK TABLES `takes_course` WRITE;
/*!40000 ALTER TABLE `takes_course` DISABLE KEYS */;
INSERT INTO `takes_course` VALUES (114,12),(106,13),(107,13),(108,13),(109,14),(101,15),(109,15),(110,16),(111,16),(101,17),(102,17),(103,18),(104,18),(105,18),(112,19),(113,19);
/*!40000 ALTER TABLE `takes_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `teacher_id` int NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `language_1` varchar(3) NOT NULL,
  `language_2` varchar(3) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `tax_id` int DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `tax_id` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'James','Smith','ENG',NULL,'1985-04-20',12345,'+491774553676'),(2,'Stefanie','Martin','FRA',NULL,'1970-02-17',23456,'+491234567890'),(3,'Steve','Wang','MAN','ENG','1990-11-12',34567,'+447840921333'),(4,'Friederike','Muller-Rossi','DEU','ITA','1987-07-07',45678,'+492345678901'),(5,'Isobel','Ivanova','RUS','ENG','1963-05-30',56789,'+491772635467'),(6,'Niamh','Murphy','ENG','IRI','1995-09-08',67890,'+491231231232'),(7,'Hank','Dodson','ENG',NULL,'1991-12-23',11111,'+491772345678'),(8,'Sue','Perkins','MAN','ENG','1976-02-02',22222,'+491443456432');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-13 18:18:50
