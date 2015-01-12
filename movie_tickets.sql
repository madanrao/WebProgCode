-- MySQL dump 10.13  Distrib 5.6.21, for Win64 (x86_64)
--
-- Host: localhost    Database: movie_tickets
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cast`
--

DROP TABLE IF EXISTS `cast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cast` (
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `actor` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`movie_id`,`actor`),
  CONSTRAINT `cast_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast`
--

LOCK TABLES `cast` WRITE;
/*!40000 ALTER TABLE `cast` DISABLE KEYS */;
INSERT INTO `cast` VALUES (1,'Jennifer Lawrence'),(2,'Ryan Potter'),(3,'Jim Carrey'),(4,'Jason Bateman'),(4,'Jennifer Aniston'),(5,'Anne Hathaway'),(5,'Matthew McConaughey'),(6,'Emmy Rossum'),(6,'Justin Long'),(7,'Ben Affleck'),(8,'Brad Pitt'),(9,'Eddie Redmayne'),(10,'Steve carrell'),(11,'Jake Gyllenhal'),(12,'Dominic Cooper'),(13,'Robert Downey Jr'),(13,'Robert Duvall'),(14,'Keanu Reeves'),(15,'Tom Hardy'),(16,'Olivia Cooke');
/*!40000 ALTER TABLE `cast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(50) DEFAULT NULL,
  `email_id` varchar(30) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Sherlock','sherlock@gmail.com','3c054b816c48e7e89708f65c8f1053d6ce82029445f50722d3fa7d765b8a2c38','salt','1234123412'),(2,'anuprita','anuprita28@yahoo.com','223c87e380859c1d964babfe240bc737b3d0f5b25517d8c40c2302d078dc1e61','W=?W}îH)','1234567890'),(3,'madan','madan@utd.com','4cf0398050ff6bcc147290acb338dabe21dddf402b2efd0de9988af12019b738','è)Y^~\"','4694444444'),(4,'don','don@gmail.com','df4d8e3ef824561850fecc6d2d0cdb906f45afbb59389559291a9ea15be8dc2a','›©iÖÔ\nÀ_','1234123412'),(5,'admin','admin','d1cadbc8c38a00cfc621f7595c6d6e3eeaea92d6314117377ef65a1752600c94','Pèý€§p\0Y','1111111111'),(6,'aa','aaa@ddd.com','2c547122093b29cf8fc7a4bcd56e71423c8c3556426c6b5c4ca2f6bf1110d8f8','¦Â~ÍD–','3334444444'),(7,'johnson','john@gmail.com','fa932a2fecd8cad786139fbe170611ae664e9743a024b2b83b984ff7ab70f221','ýä’Mœ«hô','1234567890'),(8,'haider','haid@gmail.com','493f629ff392c024da869bf07a8291e8637cac40682f86f283bc56f074273a56','Ã†¹ƒ§ü','1234123412'),(9,'clark','clark@yahoo.com','aa50cd95a7c288da61c2189dfa59f613fd526d22aaa678bd6ff9dd770bf0d3f4','>ÄÃí8>ÿ','1234123412');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(200) DEFAULT NULL,
  `rating` varchar(5) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'The Hunger Games','PG-13','Francis Lawrence','2014-11-12',123,'Sci-Fi'),(2,'Big Hero 6','PG','Chris Williams','2014-12-02',102,'Animation'),(3,'Dumb and Dumber To','PG-13','Bobby Farrelly','2014-12-03',109,'Comedy'),(4,'Horrible Bosses 2','PG-13','Sean Anders','2014-12-03',109,'Comedy'),(5,'Interstellar','PG-13','Christopher Nolan','2014-11-09',169,'Sci-Fi'),(6,'Comet','R','Sam Esmail','2014-12-05',91,'Romance'),(7,'Gone Girl','R','David \n\nFincher','2014-10-03',149,'Thriller'),(8,'Fury','R','David Ayer','2014-11-30',134,'Action'),(9,'The Theory of Everything','PG-\n\n','James Marsh','2014-11-26',123,'Biography'),(10,'Foxcatcher','R','Bennett \n\nMiller','2014-11-14',134,'Biography'),(11,'Nightcrawler','R','Dan \n\nGilroy','2014-10-31',117,'Thriller'),(12,'Dracula Untold','PG-13','Gary \n\nShore','2014-10-10',92,'Action'),(13,'The Judge','R','David Dobkin','2014-10-10',141,'Drama'),(14,'John Wick','R','Chad Stahelski','2014-10-24',101,'Action'),(15,'The Drop','R','Michael \n\nRoskam','2014-11-12',106,'Drama'),(16,'Ouija','PG-13','Stiles White','2014-10-24',89,'Horror'),(17,'M','M','M','2014-12-12',123,'M'),(18,'Fight Club','R','David Fincher','2014-12-12',120,'Thriller'),(20,'Snitch','R','David Fincher','2014-12-12',120,'Thriller'),(21,'Movie','PG-13','David','2014-12-04',100,'Comedy'),(22,'X-Men','PG','Bryan Singer','2014-12-06',108,'Action'),(23,'Sherlock Holmes','PG','Bran Singer','2014-12-12',112,'Action');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_in_theater`
--

DROP TABLE IF EXISTS `movie_in_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_in_theater` (
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `theater_id` int(11) NOT NULL DEFAULT '0',
  `time_slot` int(11) NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`,`theater_id`,`time_slot`),
  KEY `theater_id` (`theater_id`),
  CONSTRAINT `movie_in_theater_ibfk_1` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`),
  CONSTRAINT `movie_in_theater_ibfk_2` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`),
  CONSTRAINT `movie_in_theater_ibfk_3` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_in_theater`
--

LOCK TABLES `movie_in_theater` WRITE;
/*!40000 ALTER TABLE `movie_in_theater` DISABLE KEYS */;
INSERT INTO `movie_in_theater` VALUES (1,1,1,'2014-11-12','2015-01-31',50),(1,1,2,'2014-11-12','2015-01-31',50),(1,1,3,'2014-11-12','2015-01-31',100),(1,1,4,'2014-11-12','2015-01-31',100),(1,2,1,'2014-11-12','2015-01-31',50),(1,2,2,'2014-11-12','2015-01-31',50),(1,2,3,'2014-11-12','2015-01-31',100),(1,4,1,'2014-11-12','2015-01-31',50),(1,4,2,'2014-11-12','2015-01-31',47),(1,4,3,'2014-11-12','2015-01-31',100),(1,4,4,'2014-11-12','2015-01-31',100),(1,5,1,'2014-11-12','2015-01-31',50),(2,1,1,'2014-12-02','2015-01-31',50),(2,1,2,'2014-12-02','2015-01-31',50),(2,1,3,'2014-12-02','2015-01-31',100),(2,1,4,'2014-12-02','2015-01-31',100),(2,2,1,'2014-12-02','2015-01-31',50),(2,2,2,'2014-12-02','2015-01-31',50),(2,2,3,'2014-12-02','2015-01-31',100),(2,3,1,'2014-12-02','2015-01-31',50),(2,3,2,'2014-12-02','2015-01-31',50),(2,3,3,'2014-12-02','2015-01-31',100),(2,3,4,'2014-12-02','2015-01-31',100),(2,4,1,'2014-12-02','2015-01-31',50),(2,4,2,'2014-12-02','2015-01-31',50),(2,4,3,'2014-12-02','2015-01-31',100),(3,1,1,'2014-12-03','2015-01-31',50),(3,1,2,'2014-12-03','2015-01-31',50),(3,1,3,'2014-12-03','2015-01-31',100),(3,1,4,'2014-12-03','2015-01-31',100),(3,2,1,'2014-12-03','2015-01-31',50),(3,2,2,'2014-12-03','2015-01-31',50),(3,2,3,'2014-12-03','2015-01-31',100),(3,3,1,'2014-12-03','2015-01-31',50),(3,3,2,'2014-12-03','2015-01-31',49),(3,3,3,'2014-12-03','2015-01-31',100),(3,3,4,'2014-12-03','2015-01-31',100),(3,4,1,'2014-12-03','2015-01-31',50),(3,4,2,'2014-12-03','2015-01-31',50),(3,4,3,'2014-12-03','2015-01-31',100),(3,4,4,'2014-12-03','2015-01-31',100),(4,1,1,'2014-12-03','2015-01-31',49),(4,1,2,'2014-12-03','2015-01-31',50),(4,1,3,'2014-12-03','2015-01-31',100),(4,1,4,'2014-12-03','2015-01-31',95),(4,2,1,'2014-12-03','2015-01-31',50),(4,2,2,'2014-12-03','2015-01-31',49),(4,2,3,'2014-12-03','2015-01-31',100),(4,3,1,'2014-12-03','2015-01-31',50),(4,3,2,'2014-12-03','2015-01-31',50),(4,3,3,'2014-12-03','2015-01-31',100),(4,3,4,'2014-12-03','2015-01-31',100),(4,4,1,'2014-12-03','2015-01-31',50),(4,4,2,'2014-12-03','2015-01-31',50),(4,4,3,'2014-12-03','2015-01-31',100),(4,4,4,'2014-12-03','2015-01-31',100),(5,1,1,'2014-11-09','2015-01-11',50),(5,1,2,'2014-11-09','2015-01-11',50),(5,1,3,'2014-11-09','2015-01-11',100),(5,1,4,'2014-11-09','2015-01-11',100),(5,2,1,'2014-11-09','2015-01-11',50),(5,2,2,'2014-11-09','2015-01-11',46),(5,2,3,'2014-11-09','2015-01-11',100),(5,3,1,'2014-11-09','2015-01-11',50),(5,3,2,'2014-11-09','2015-01-11',50),(5,3,3,'2014-11-09','2015-01-11',100),(5,3,4,'2014-11-09','2015-01-11',100),(5,4,1,'2014-11-09','2015-01-11',50),(5,4,2,'2014-11-09','2015-01-11',50),(5,4,3,'2014-11-09','2015-01-11',100),(5,4,4,'2014-11-09','2015-01-11',100),(5,5,1,'2014-11-09','2015-01-11',50),(5,5,2,'2014-11-09','2015-01-11',50),(5,5,3,'2014-11-09','2015-01-11',100),(5,5,4,'2014-11-09','2015-01-11',100),(6,5,1,'2014-12-05','2015-01-31',50),(6,5,2,'2014-12-05','2015-01-31',49),(6,5,3,'2014-12-05','2015-01-31',100),(6,5,4,'2014-12-05','2015-01-31',100),(7,2,1,'2014-12-05','2015-01-31',50),(7,2,2,'2014-12-05','2015-01-31',50),(7,2,3,'2014-12-05','2015-01-31',100),(7,2,4,'2014-12-05','2015-01-31',100),(7,3,1,'2014-12-05','2015-01-31',50),(7,3,2,'2014-12-05','2015-01-31',50),(7,3,3,'2014-12-05','2015-01-31',100),(7,3,4,'2014-12-05','2015-01-31',100),(7,4,1,'2014-12-05','2015-01-31',50),(7,4,2,'2014-12-05','2015-01-31',50),(7,4,3,'2014-12-05','2015-01-31',100),(7,4,4,'2014-12-05','2015-01-31',100),(8,2,1,'2014-11-30','2015-01-31',50),(8,2,2,'2014-11-30','2015-01-31',50),(8,2,3,'2014-11-30','2015-01-31',100),(8,2,4,'2014-11-30','2015-01-31',100),(8,3,1,'2014-11-30','2015-01-31',50),(8,3,2,'2014-11-30','2015-01-31',50),(8,3,3,'2014-11-30','2015-01-31',100),(8,3,4,'2014-11-30','2015-01-31',100),(9,2,1,'2014-11-26','2015-01-31',50),(9,2,2,'2014-11-26','2015-01-31',50),(9,2,3,'2014-11-26','2015-01-31',100),(9,2,4,'2014-11-26','2015-01-31',100),(9,3,1,'2014-11-26','2015-01-31',50),(9,3,2,'2014-11-26','2015-01-31',50),(9,3,3,'2014-11-26','2015-01-31',100),(9,3,4,'2014-11-26','2015-01-31',100),(10,6,1,'2014-11-14','2015-01-01',50),(10,6,2,'2014-11-14','2015-01-01',50),(10,6,3,'2014-11-14','2015-01-01',100),(10,6,4,'2014-11-14','2015-01-01',100),(11,7,1,'2014-10-31','2015-01-01',50),(11,7,2,'2014-10-31','2015-01-01',50),(11,7,3,'2014-10-31','2015-01-01',100),(11,7,4,'2014-10-31','2015-01-01',100),(12,3,1,'2014-10-10','2014-11-30',50),(12,3,2,'2014-10-10','2014-11-30',50),(12,3,3,'2014-10-10','2014-11-30',100),(12,3,4,'2014-10-10','2014-11-30',100),(13,2,1,'2014-10-10','2015-01-31',50),(13,2,2,'2014-10-10','2015-01-31',50),(13,2,3,'2014-10-10','2015-01-31',100),(13,2,4,'2014-10-10','2015-01-31',100),(13,3,1,'2014-10-10','2015-01-31',50),(13,3,2,'2014-10-10','2015-01-31',50),(13,3,3,'2014-10-10','2015-01-31',100),(13,3,4,'2014-10-10','2015-01-31',100),(14,7,1,'2014-10-24','2014-12-30',48),(14,7,2,'2014-10-24','2014-12-30',50),(14,7,3,'2014-10-24','2014-12-30',99),(14,7,4,'2014-10-24','2014-12-30',100),(15,1,1,'2014-11-12','2014-12-30',50),(15,1,2,'2014-11-12','2014-12-30',50),(15,1,3,'2014-11-12','2014-12-30',98),(15,1,4,'2014-11-12','2014-12-30',100),(16,1,1,'2014-10-24','2014-10-30',50),(17,5,1,'2014-12-12','2015-01-12',100),(17,5,2,'2014-12-12','2015-01-12',100),(18,5,1,'2014-12-12','2014-12-15',94),(18,5,3,'2014-12-12','2014-12-15',99),(21,5,1,'2014-12-04','2015-01-12',100),(21,5,2,'2014-12-04','2015-01-12',100),(21,5,3,'2014-12-04','2015-01-12',100),(21,5,4,'2014-12-04','2015-01-12',100),(22,5,1,'2014-12-06','2015-01-06',4),(22,5,2,'2014-12-06','2015-01-06',2),(23,5,1,'2014-12-12','2015-01-12',0),(23,5,2,'2014-12-12','2015-01-12',0);
/*!40000 ALTER TABLE `movie_in_theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_rating`
--

DROP TABLE IF EXISTS `movie_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_rating` (
  `cust_id` int(11) NOT NULL DEFAULT '0',
  `movie_id` int(11) NOT NULL DEFAULT '0',
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`cust_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `movie_rating_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `movie_rating_ibfk_3` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `movie_rating_ibfk_4` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_rating`
--

LOCK TABLES `movie_rating` WRITE;
/*!40000 ALTER TABLE `movie_rating` DISABLE KEYS */;
INSERT INTO `movie_rating` VALUES (1,5,5),(2,4,1),(2,5,5),(2,18,5),(3,4,5),(3,5,3),(4,14,4),(6,4,3),(7,6,3),(9,3,4),(9,4,4);
/*!40000 ALTER TABLE `movie_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater`
--

DROP TABLE IF EXISTS `theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theater` (
  `theater_id` int(11) NOT NULL DEFAULT '0',
  `theater_name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`theater_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater`
--

LOCK TABLES `theater` WRITE;
/*!40000 ALTER TABLE `theater` DISABLE KEYS */;
INSERT INTO `theater` VALUES (1,'Angelika Film Cafe','5321 Mockingbird Lane'),(2,'AMC NorthPark 15','8687 NOrth Central Parkway'),(3,'Studio Movie Grill','10110 Technology Blvd'),(4,'Galaxy Theatre','11801 McCree Rd'),(5,'IMAX','11819 Webb Chapel'),(6,'AMC Valley','13331 Preston Rd'),(7,'Cinemark','4040 South Shiloh Rd'),(8,'Magnolia Cinema','3699 McKinney Ave.');
/*!40000 ALTER TABLE `theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theater_screens`
--

DROP TABLE IF EXISTS `theater_screens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `theater_screens` (
  `theater_id` int(11) NOT NULL DEFAULT '0',
  `total_seats` int(11) DEFAULT NULL,
  PRIMARY KEY (`theater_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater_screens`
--

LOCK TABLES `theater_screens` WRITE;
/*!40000 ALTER TABLE `theater_screens` DISABLE KEYS */;
/*!40000 ALTER TABLE `theater_screens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_id` int(11) DEFAULT NULL,
  `theater_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time_slot` int(11) DEFAULT NULL,
  `cost` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `movie_id` (`movie_id`),
  KEY `theater_id` (`theater_id`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`),
  CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`),
  CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`),
  CONSTRAINT `ticket_ibfk_5` FOREIGN KEY (`theater_id`) REFERENCES `theater` (`theater_id`),
  CONSTRAINT `ticket_ibfk_6` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (100,1,3,5,'2014-12-02',3,10.00),(101,2,4,5,'2014-11-22',2,10.00),(115,2,1,4,'2014-12-15',1,10.00),(116,2,1,5,'2014-12-19',1,10.00),(117,2,7,14,'2014-12-17',1,40.00),(118,4,7,14,'2014-12-07',3,20.00),(119,4,3,7,'2014-12-10',2,10.00),(120,4,6,10,'2014-12-04',3,10.00),(121,6,2,4,'2014-12-17',2,30.00),(122,2,5,18,'2014-12-17',3,20.00),(123,7,5,6,'2014-12-12',2,20.00),(124,2,5,18,'2014-12-11',1,10.00),(125,8,1,15,'2014-12-17',3,40.00),(126,8,7,14,'2014-12-31',2,10.00),(127,8,2,8,'2014-12-14',2,10.00),(128,9,4,1,'2014-12-07',1,10.00),(129,9,1,4,'2014-12-01',4,10.00),(130,9,3,3,'2014-12-03',2,20.00),(131,8,2,3,'2014-12-18',2,10.00),(132,2,5,22,'2014-12-07',2,40.00),(133,8,5,18,'2014-12-23',1,40.00),(134,2,5,18,'2014-12-15',1,40.00),(135,2,5,23,'2014-12-23',1,40.00),(136,2,5,23,'2014-12-07',2,40.00),(137,2,1,4,'2014-12-26',1,10.00),(138,9,4,1,'2014-12-10',2,30.00),(139,9,2,5,'2014-12-10',2,20.00),(140,9,2,5,'2014-12-17',2,20.00);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_rating`
--

DROP TABLE IF EXISTS `view_rating`;
/*!50001 DROP VIEW IF EXISTS `view_rating`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_rating` AS SELECT 
 1 AS `ticket_id`,
 1 AS `cust_id`,
 1 AS `theater_id`,
 1 AS `movie_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_rating1`
--

DROP TABLE IF EXISTS `view_rating1`;
/*!50001 DROP VIEW IF EXISTS `view_rating1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_rating1` AS SELECT 
 1 AS `ticket_id`,
 1 AS `cust_id`,
 1 AS `theater_id`,
 1 AS `movie_id`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_rating_movie`
--

DROP TABLE IF EXISTS `view_rating_movie`;
/*!50001 DROP VIEW IF EXISTS `view_rating_movie`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_rating_movie` AS SELECT 
 1 AS `ticket_id`,
 1 AS `cust_id`,
 1 AS `theater_id`,
 1 AS `movie_id`,
 1 AS `movie_name`,
 1 AS `date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_rating`
--

/*!50001 DROP VIEW IF EXISTS `view_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_rating` AS select `t`.`ticket_id` AS `ticket_id`,`t`.`cust_id` AS `cust_id`,`t`.`theater_id` AS `theater_id`,`t`.`movie_id` AS `movie_id` from (`ticket` `t` join `customer` `c` on((`c`.`cust_id` = `t`.`cust_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_rating1`
--

/*!50001 DROP VIEW IF EXISTS `view_rating1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_rating1` AS select `t`.`ticket_id` AS `ticket_id`,`t`.`cust_id` AS `cust_id`,`t`.`theater_id` AS `theater_id`,`t`.`movie_id` AS `movie_id`,`t`.`date` AS `date` from (`ticket` `t` join `customer` `c` on((`c`.`cust_id` = `t`.`cust_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_rating_movie`
--

/*!50001 DROP VIEW IF EXISTS `view_rating_movie`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_swedish_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_rating_movie` AS select `t`.`ticket_id` AS `ticket_id`,`t`.`cust_id` AS `cust_id`,`t`.`theater_id` AS `theater_id`,`t`.`movie_id` AS `movie_id`,`m`.`movie_name` AS `movie_name`,`t`.`date` AS `date` from (`view_rating1` `t` join `movie` `m` on((`t`.`movie_id` = `m`.`movie_id`))) */;
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

-- Dump completed on 2014-12-06 21:47:31
