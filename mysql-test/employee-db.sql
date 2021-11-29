-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: employee-db
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `empl_id` int NOT NULL,
  `department` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  KEY `departments_FK` (`empl_id`),
  CONSTRAINT `departments_FK` FOREIGN KEY (`empl_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'R&D','2019-08-17',NULL),(2,'Production','1981-05-13',NULL),(3,'Purchasing','1984-02-12',NULL),(4,'R&D','1998-01-20',NULL),(5,'Production','1981-08-03',NULL),(6,'Marketing','2011-10-28',NULL),(7,'R&D','1987-04-07',NULL),(8,'Human Resource Management','1985-03-19',NULL),(9,'Human Resource Management','1980-05-11',NULL),(10,'R&D','1994-06-03',NULL),(11,'Human Resource Management','1986-11-17',NULL),(12,'Marketing','2007-02-08',NULL),(13,'R&D','2008-02-04',NULL),(14,'Human Resource Management','1988-07-18',NULL),(15,'R&D','2013-06-25',NULL),(16,'Marketing','1985-07-23',NULL),(17,'Production','2020-06-01',NULL),(18,'Human Resource Management','2009-11-30',NULL),(19,'Purchasing','1988-06-01',NULL),(20,'Accounting and Finance','2000-11-16',NULL),(21,'Human Resource Management','1986-12-16',NULL),(22,'Accounting and Finance','2009-10-05',NULL),(23,'Accounting and Finance','1990-04-25',NULL),(24,'Marketing','1994-12-05',NULL),(25,'Production','1983-08-25',NULL),(26,'Marketing','2005-06-01',NULL),(27,'Accounting and Finance','1987-07-01',NULL),(28,'Human Resource Management','1992-09-24',NULL),(29,'Marketing','1982-09-13',NULL),(30,'Production','2004-12-26',NULL),(31,'Human Resource Management','1990-10-30',NULL),(32,'R&D','2015-07-22',NULL),(33,'Accounting and Finance','2021-09-18',NULL),(34,'Purchasing','2021-10-14',NULL),(35,'Production','1988-02-23',NULL),(36,'Accounting and Finance','1984-10-02',NULL),(37,'Production','2006-06-05',NULL),(38,'Human Resource Management','2001-05-23',NULL),(39,'Production','2011-09-30',NULL),(40,'R&D','1998-02-05',NULL),(41,'Accounting and Finance','1982-07-18',NULL),(42,'Accounting and Finance','1990-05-11',NULL),(43,'Accounting and Finance','1994-10-29',NULL),(44,'Accounting and Finance','1982-07-11',NULL),(45,'R&D','2016-08-21',NULL),(46,'R&D','1997-01-21',NULL),(47,'Accounting and Finance','1987-10-17',NULL),(48,'Production','1990-04-13',NULL),(49,'Production','1990-08-06',NULL),(50,'Accounting and Finance','2007-07-02',NULL),(51,'R&D','1992-12-15',NULL),(52,'Production','1993-07-28',NULL),(53,'Purchasing','2017-09-02',NULL),(54,'Production','2004-12-20',NULL),(55,'Purchasing','1981-05-31',NULL),(56,'Production','2015-09-30',NULL),(57,'Production','1988-05-17',NULL),(58,'Production','2014-08-20',NULL),(59,'Accounting and Finance','1983-01-30',NULL),(60,'Marketing','2006-03-31',NULL),(61,'Production','2018-10-03',NULL),(62,'Marketing','1994-05-14',NULL),(63,'Production','2002-07-11',NULL),(64,'Production','1987-11-17',NULL),(65,'Production','2006-01-15',NULL),(66,'Purchasing','2008-05-15',NULL),(67,'Marketing','2006-03-04',NULL),(68,'R&D','2009-02-11',NULL),(69,'Production','2019-02-23',NULL),(70,'Purchasing','1992-10-25',NULL),(71,'R&D','1996-12-15',NULL),(72,'Human Resource Management','2002-08-23',NULL),(73,'R&D','2017-06-01',NULL),(74,'Production','1991-01-19',NULL),(75,'Human Resource Management','1993-06-23',NULL),(76,'Human Resource Management','2018-01-06',NULL),(77,'Accounting and Finance','1986-01-16',NULL),(78,'Production','2007-06-01',NULL),(79,'R&D','1983-12-01',NULL),(80,'Marketing','2018-02-15',NULL),(81,'Production','2014-06-07',NULL),(82,'Production','2002-08-30',NULL),(83,'R&D','2017-10-14',NULL),(84,'R&D','2006-11-26',NULL),(85,'Human Resource Management','1993-05-01',NULL),(86,'Purchasing','2019-07-25',NULL),(87,'Production','1992-11-12',NULL),(88,'Production','2011-09-11',NULL),(89,'Human Resource Management','2005-11-27',NULL),(90,'Purchasing','1981-12-24',NULL),(91,'Purchasing','1987-03-16',NULL),(92,'Accounting and Finance','2005-12-18',NULL),(93,'Production','2007-09-11','2020-02-02'),(94,'Production','2019-11-09','2020-02-02'),(95,'Human Resource Management','2002-07-23','2020-02-02'),(96,'Production','2007-02-09','2020-02-02'),(97,'R&D','1991-04-09',NULL),(98,'R&D','2018-10-08',NULL),(99,'Production','1992-08-20','2020-02-02'),(100,'R&D','2010-01-18',NULL),(93,'R&D','2020-02-03',NULL),(94,'R&D','2020-02-03',NULL),(95,'R&D','2020-02-03',NULL),(96,'R&D','2020-02-03',NULL),(99,'R&D','2020-02-03',NULL);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `hire_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Winifred Hancock','1975-12-17','2019-08-18'),(2,'Atif Lugo','1941-10-07','1981-05-14'),(3,'Sharon Quintero','1912-12-14','1984-02-13'),(4,'Rhonda Chang','1935-06-02','1998-01-21'),(5,'Dainton Powell','1978-02-16','1981-08-04'),(6,'Emilija Welsh','1995-10-23','2011-10-29'),(7,'Yousif Cunningham','1918-03-13','1987-04-08'),(8,'Yousef Sanderson','1936-12-16','1985-03-20'),(9,'Charleigh Penn','1915-08-11','1980-05-12'),(10,'Iosif Trejo','1921-03-30','1994-06-04'),(11,'Iga Chen','1938-02-11','1986-11-18'),(12,'Gracie-Mai Matthams','1921-03-10','2007-02-09'),(13,'Anwen Hester','1953-03-22','2008-02-05'),(14,'Caius James','1907-02-10','1988-07-19'),(15,'Talia Trevino','1913-01-17','2013-06-26'),(16,'Evie-Mae Rojas','1926-06-16','1985-07-24'),(17,'Luis Boyce','1928-08-30','2020-06-02'),(18,'Ami Rosas','1980-12-23','2009-12-01'),(19,'Andrew Bostock','1949-07-20','1988-06-02'),(20,'Inez Huynh','1969-02-16','2000-11-17'),(21,'Barry Little','1955-11-07','1986-12-17'),(22,'Viktor Robertson','1902-12-05','2009-10-06'),(23,'Marian Sykes','1958-03-09','1990-04-26'),(24,'Tayyib Weir','1989-11-12','1994-12-06'),(25,'Timur Rich','1981-04-25','1983-08-26'),(26,'Rehan Briggs','1955-07-18','2005-06-02'),(27,'Indi Underwood','1906-08-19','1987-07-02'),(28,'Mike Sawyer','1953-05-03','1992-09-25'),(29,'Eman Foley','1919-06-20','1982-09-14'),(30,'Kloe Moran','1961-09-30','2004-12-27'),(31,'Kiyan Stott','1932-03-01','1990-10-31'),(32,'Demi Hodges','1935-04-16','2015-07-23'),(33,'Chyna Jacobson','1928-02-20','2021-09-19'),(34,'Ariyan Barry','1902-06-15','2021-10-15'),(35,'Joel Blackwell','1913-03-09','1988-02-24'),(36,'Nelson Pitts','1959-08-11','1984-10-03'),(37,'Szymon Alvarez','1906-08-02','2006-06-06'),(38,'Alicja Ventura','1994-04-02','2001-05-24'),(39,'Josephine Sherman','1906-11-26','2011-10-01'),(40,'Greyson Benson','1907-09-01','1998-02-06'),(41,'Faith Tang','1938-08-12','1982-07-19'),(42,'Emily-Rose Plummer','1950-07-26','1990-05-12'),(43,'Zakariah Tyson','1962-08-30','1994-10-30'),(44,'Warwick Hewitt','1945-03-28','1982-07-12'),(45,'Jannah Yoder','1921-01-11','2016-08-22'),(46,'Michaela Adkins','1996-02-04','1997-01-22'),(47,'Aimee Hume','1937-10-18','1987-10-18'),(48,'Michael Rivers','1920-04-10','1990-04-14'),(49,'Abigail Avery','1966-07-19','1990-08-07'),(50,'Mikail Mcgill','1923-09-17','2007-07-03'),(51,'Elise Chambers','1990-10-29','1992-12-16'),(52,'Jayde Connelly','1965-12-11','1993-07-29'),(53,'Lorraine Nava','1997-09-22','2017-09-03'),(54,'Zainab Whitehead','1966-01-29','2004-12-21'),(55,'Hania Palacios','1970-07-29','1981-06-01'),(56,'Chantel Atherton','1972-02-05','2015-10-01'),(57,'Delores Schroeder','1982-08-18','1988-05-18'),(58,'Emir Flynn','1907-03-17','2014-08-21'),(59,'Jaxx Ponce','1965-12-12','1983-01-31'),(60,'Teodor Bowers','1946-03-10','2006-04-01'),(61,'Alby Gardiner','1980-11-12','2018-10-04'),(62,'Bea Armstrong','1917-07-18','1994-05-15'),(63,'Farah Moreno','1915-12-31','2002-07-12'),(64,'Eva Hooper','1922-11-19','1987-11-18'),(65,'Jimmy Richardson','1990-05-04','2006-01-16'),(66,'Tamsin Horn','1992-05-17','2008-05-16'),(67,'Samara George','1967-07-20','2006-03-05'),(68,'Alexandros Herring','1917-09-20','2009-02-12'),(69,'Gabrielius Kim','1977-04-18','2019-02-24'),(70,'Anderson Kinney','1926-03-08','1992-10-26'),(71,'Tyrell Leach','1901-11-30','1996-12-16'),(72,'Kira Salas','1942-04-18','2002-08-24'),(73,'Callan Summers','1991-05-05','2017-06-02'),(74,'Abdulahi Lane','1956-01-31','1991-01-20'),(75,'Brad Hutchings','1901-03-25','1993-06-24'),(76,'Sahil Grant','1966-07-30','2018-01-07'),(77,'Adam Brett','1968-11-22','1986-01-17'),(78,'Yvonne Santiago','1920-02-19','2007-06-02'),(79,'Marius Long','1952-08-28','1983-12-02'),(80,'Antoinette Chung','1941-04-29','2018-02-16'),(81,'Ananya Hebert','1982-11-08','2014-06-08'),(82,'Luisa Sheppard','1917-01-02','2002-08-31'),(83,'Bear Sharma','1963-07-10','2017-10-15'),(84,'Siyana Decker','1968-05-09','2006-11-27'),(85,'Kwame Dotson','1962-03-17','1993-05-02'),(86,'Miruna Hoffman','1951-05-13','2019-07-26'),(87,'Bert Morrison','1987-03-24','1992-11-13'),(88,'Eden Vang','1945-11-12','2011-09-12'),(89,'Darrell Benton','1983-01-05','2005-11-28'),(90,'Kallum Guy','1912-12-10','1981-12-25'),(91,'Aaisha Witt','1971-11-13','1987-03-17'),(92,'Kieron Ortiz','1981-07-05','2005-12-19'),(93,'Rikesh Bright','1917-11-04','2007-09-12'),(94,'Elizabeth Buckley','1974-12-27','2019-11-10'),(95,'Xander Kent','1975-07-16','2002-07-24'),(96,'Sunil Fry','1955-09-28','2007-02-10'),(97,'Zayne Roman','1918-09-16','1991-04-10'),(98,'Warren Dickerson','1954-06-27','2018-10-09'),(99,'Hendrix Cash','1959-12-16','1992-08-21'),(100,'Magnus Whitmore','1996-02-28','2010-01-19');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaries`
--

DROP TABLE IF EXISTS `salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaries` (
  `empl_id` int NOT NULL,
  `salary` int NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date DEFAULT NULL,
  KEY `salaries_FK` (`empl_id`),
  CONSTRAINT `salaries_FK` FOREIGN KEY (`empl_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaries`
--

LOCK TABLES `salaries` WRITE;
/*!40000 ALTER TABLE `salaries` DISABLE KEYS */;
INSERT INTO `salaries` VALUES (1,147,'2019-08-17',NULL),(2,88,'1981-05-13','2021-02-14'),(3,148,'1984-02-12',NULL),(4,89,'1998-01-20',NULL),(5,82,'1981-08-03','2020-05-26'),(6,148,'2011-10-28',NULL),(7,135,'1987-04-07',NULL),(8,108,'1985-03-19','2020-11-19'),(9,92,'1980-05-11',NULL),(10,55,'1994-06-03',NULL),(11,94,'1986-11-17','2020-09-13'),(12,121,'2007-02-08',NULL),(13,111,'2008-02-04',NULL),(14,143,'1988-07-18','2021-07-01'),(15,56,'2013-06-25',NULL),(16,104,'1985-07-23',NULL),(17,137,'2020-06-01','2020-09-08'),(18,112,'2009-11-30',NULL),(19,68,'1988-06-01',NULL),(20,135,'2000-11-16','2020-05-07'),(21,64,'1986-12-16',NULL),(22,73,'2009-10-05',NULL),(23,136,'1990-04-25','2020-10-15'),(24,60,'1994-12-05',NULL),(25,128,'1983-08-25',NULL),(26,94,'2005-06-01','2020-03-23'),(27,98,'1987-07-01',NULL),(28,136,'1992-09-24',NULL),(29,73,'1982-09-13','2020-07-13'),(30,72,'2004-12-26',NULL),(31,149,'1990-10-30',NULL),(32,88,'2015-07-22','2021-10-30'),(33,76,'2021-09-18',NULL),(34,110,'2021-10-14',NULL),(35,89,'1988-02-23','2020-04-14'),(36,119,'1984-10-02',NULL),(37,78,'2006-06-05',NULL),(38,141,'2001-05-23','2020-07-09'),(39,60,'2011-09-30',NULL),(40,106,'1998-02-05',NULL),(41,139,'1982-07-18','2021-11-05'),(42,127,'1990-05-11',NULL),(43,63,'1994-10-29',NULL),(44,128,'1982-07-11','2020-07-13'),(45,92,'2016-08-21',NULL),(46,59,'1997-01-21',NULL),(47,135,'1987-10-17','2021-05-25'),(48,56,'1990-04-13',NULL),(49,102,'1990-08-06',NULL),(50,82,'2007-07-02','2020-04-08'),(51,59,'1992-12-15',NULL),(52,69,'1993-07-28',NULL),(53,116,'2017-09-02','2020-07-04'),(54,94,'2004-12-20',NULL),(55,109,'1981-05-31',NULL),(56,79,'2015-09-30','2021-12-07'),(57,62,'1988-05-17',NULL),(58,123,'2014-08-20',NULL),(59,117,'1983-01-30','2021-03-08'),(60,52,'2006-03-31',NULL),(61,133,'2018-10-03',NULL),(62,124,'1994-05-14','2020-04-08'),(63,82,'2002-07-11',NULL),(64,136,'1987-11-17',NULL),(65,107,'2006-01-15','2021-02-08'),(66,148,'2008-05-15',NULL),(67,111,'2006-03-04',NULL),(68,79,'2009-02-11','2020-11-26'),(69,93,'2019-02-23',NULL),(70,126,'1992-10-25',NULL),(71,129,'1996-12-15','2021-10-26'),(72,66,'2002-08-23',NULL),(73,90,'2017-06-01',NULL),(74,105,'1991-01-19','2020-03-04'),(75,139,'1993-06-23',NULL),(76,127,'2018-01-06',NULL),(77,139,'1986-01-16','2021-10-24'),(78,142,'2007-06-01',NULL),(79,95,'1983-12-01',NULL),(80,112,'2018-02-15','2020-03-18'),(81,112,'2014-06-07',NULL),(82,122,'2002-08-30',NULL),(83,101,'2017-10-14','2020-07-16'),(84,63,'2006-11-26',NULL),(85,104,'1993-05-01',NULL),(86,149,'2019-07-25','2020-04-06'),(87,59,'1992-11-12',NULL),(88,138,'2011-09-11',NULL),(89,148,'2005-11-27','2021-12-07'),(90,99,'1981-12-24',NULL),(91,124,'1987-03-16',NULL),(92,110,'2005-12-18','2021-03-04'),(93,120,'2007-09-11',NULL),(94,75,'2019-11-09',NULL),(95,140,'2002-07-23','2021-02-01'),(96,67,'2007-02-09',NULL),(97,71,'1991-04-09',NULL),(98,137,'2018-10-08','2021-09-15'),(99,106,'1992-08-20',NULL),(100,126,'2010-01-18',NULL),(2,132,'2021-02-14',NULL),(5,123,'2020-05-26',NULL),(8,162,'2020-11-19',NULL),(11,141,'2020-09-13',NULL),(14,215,'2021-07-01',NULL),(17,206,'2020-09-08',NULL),(20,203,'2020-05-07',NULL),(23,204,'2020-10-15',NULL),(26,141,'2020-03-23',NULL),(29,110,'2020-07-13',NULL),(32,132,'2021-10-30',NULL),(35,134,'2020-04-14',NULL),(38,212,'2020-07-09',NULL),(41,209,'2021-11-05',NULL),(44,192,'2020-07-13',NULL),(47,203,'2021-05-25',NULL),(50,123,'2020-04-08',NULL),(53,174,'2020-07-04',NULL),(56,119,'2021-12-07',NULL),(59,176,'2021-03-08',NULL),(62,186,'2020-04-08',NULL),(65,161,'2021-02-08',NULL),(68,119,'2020-11-26',NULL),(71,194,'2021-10-26',NULL),(74,158,'2020-03-04',NULL),(77,209,'2021-10-24',NULL),(80,168,'2020-03-18',NULL),(83,152,'2020-07-16',NULL),(86,224,'2020-04-06',NULL),(89,222,'2021-12-07',NULL),(92,165,'2021-03-04',NULL),(95,210,'2021-02-01',NULL),(98,206,'2021-09-15',NULL);
/*!40000 ALTER TABLE `salaries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-25 14:06:09
