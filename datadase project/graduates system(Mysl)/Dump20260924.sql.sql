-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: graduate_system
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Temporary view structure for view `all_data_view`
--

DROP TABLE IF EXISTS `all_data_view`;
/*!50001 DROP VIEW IF EXISTS `all_data_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_data_view` AS SELECT 
 1 AS `graduateId`,
 1 AS `graduateName`,
 1 AS `company_name`,
 1 AS `branch_city`,
 1 AS `status`,
 1 AS `application_date`,
 1 AS `locationId`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `companyId` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `sector` varchar(50) NOT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `company_name` (`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Microsoft','Technology','https://www.microsoft.com'),(2,'Google','Technology','https://www.google.com'),(3,'Apple','Technology','https://www.apple.com'),(4,'Amazon','E-commerce','https://www.amazon.com'),(5,'Meta','Technology','https://www.meta.com'),(6,'IBM','Technology','https://www.ibm.com'),(7,'Oracle','Technology','https://www.oracle.com'),(8,'Cisco','Technology','https://www.cisco.com'),(9,'Adobe','Software','https://www.adobe.com'),(10,'Intel','Semiconductors','https://www.intel.com'),(11,'Saudi Aramco','Energy','https://www.aramco.com'),(12,'SABIC','Chemicals','https://www.sabic.com'),(13,'STC','Telecommunications','https://www.stc.com.sa'),(14,'Mobily','Telecommunications','https://www.mobily.com.sa'),(15,'Zain Saudi Arabia','Telecommunications','https://sa.zain.com'),(16,'Al Rajhi Bank','Banking','https://www.alrajhibank.com.sa'),(17,'Saudi National Bank','Banking','https://www.alahli.com'),(18,'Riyad Bank','Banking','https://www.riyadbank.com'),(19,'Bank Albilad','Banking','https://www.bankalbilad.com'),(20,'Saudi Awwal Bank','Banking','https://www.sab.com'),(21,'Almarai','Food & Beverage','https://www.almarai.com'),(22,'Jarir Marketing','Retail','https://www.jarir.com'),(23,'Nahdi Medical','Healthcare','https://www.nahdi.sa'),(24,'Extra','Retail','https://www.extra.com'),(25,'Panda Retail','Retail','https://www.panda.com.sa'),(26,'Tamimi Markets','Retail','https://www.tamimimarkets.com'),(27,'Danube','Retail','https://www.danube.sa'),(28,'Flynas','Airlines','https://www.flynas.com'),(29,'Saudia','Airlines','https://www.saudia.com'),(30,'Flyadeal','Airlines','https://www.flyadeal.com'),(31,'Microsoft Arabia','Technology','https://www.microsoft.com'),(32,'SAP','Enterprise Software','https://www.sap.com'),(33,'Dell Technologies','Technology','https://www.dell.com'),(34,'HP','Technology','https://www.hp.com'),(35,'Lenovo','Technology','https://www.lenovo.com'),(36,'Huawei','Technology','https://www.huawei.com'),(37,'Accenture','Consulting','https://www.accenture.com'),(38,'Deloitte','Consulting','https://www.deloitte.com'),(39,'PwC','Consulting','https://www.pwc.com'),(40,'KPMG','Consulting','https://kpmg.com'),(41,'Uber','Transportation','https://www.uber.com'),(42,'Careem','Transportation','https://www.careem.com'),(43,'Noon','E-commerce','https://www.noon.com'),(44,'HungerStation','Food Delivery','https://hungerstation.com'),(45,'Jahez','Food Delivery','https://jahez.net'),(46,'Misk Foundation','Non-profit','https://misk.org.sa'),(47,'NEOM','Development','https://www.neom.com'),(48,'Red Sea Global','Tourism & Development','https://www.redseaglobal.com'),(49,'Diriyah Company','Real Estate & Development','https://www.diriyah.sa'),(50,'Roshn','Real Estate','https://www.roshn.sa');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_locations`
--

DROP TABLE IF EXISTS `company_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_locations` (
  `locationId` int NOT NULL AUTO_INCREMENT,
  `companyId` int DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`locationId`),
  KEY `companyId` (`companyId`),
  CONSTRAINT `company_locations_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `companies` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_locations`
--

LOCK TABLES `company_locations` WRITE;
/*!40000 ALTER TABLE `company_locations` DISABLE KEYS */;
INSERT INTO `company_locations` VALUES (1,1,'Riyadh'),(2,1,'Jeddah'),(3,1,'Dammam'),(4,2,'Riyadh'),(5,2,'Jeddah'),(6,2,'Dubai'),(7,3,'Riyadh'),(8,3,'Jeddah'),(9,3,'Dammam'),(10,4,'Riyadh'),(11,4,'Jeddah'),(12,4,'Dubai'),(13,5,'Riyadh'),(14,5,'Jeddah'),(15,5,'Dubai'),(16,6,'Riyadh'),(17,6,'Jeddah'),(18,6,'Dammam'),(19,7,'Riyadh'),(20,7,'Jeddah'),(21,7,'Dubai'),(22,8,'Riyadh'),(23,8,'Dammam'),(24,8,'Jeddah'),(25,9,'Riyadh'),(26,9,'Jeddah'),(27,9,'Dubai'),(28,10,'Riyadh'),(29,10,'Dammam'),(30,10,'Jeddah'),(31,11,'Dhahran'),(32,11,'Riyadh'),(33,11,'Jeddah'),(34,12,'Riyadh'),(35,12,'Jubail'),(36,12,'Yanbu'),(37,13,'Riyadh'),(38,13,'Jeddah'),(39,13,'Dammam'),(40,14,'Riyadh'),(41,14,'Jeddah'),(42,14,'Dammam'),(43,15,'Riyadh'),(44,15,'Jeddah'),(45,15,'Dammam'),(46,16,'Riyadh'),(47,16,'Jeddah'),(48,16,'Dammam'),(49,17,'Riyadh'),(50,17,'Jeddah'),(51,17,'Dammam'),(52,18,'Riyadh'),(53,18,'Jeddah'),(54,18,'Dammam'),(55,19,'Riyadh'),(56,19,'Jeddah'),(57,19,'Mecca'),(58,20,'Riyadh'),(59,20,'Jeddah'),(60,20,'Khobar'),(61,21,'Riyadh'),(62,21,'Jeddah'),(63,21,'Dammam'),(64,22,'Riyadh'),(65,22,'Jeddah'),(66,22,'Dammam'),(67,23,'Jeddah'),(68,23,'Riyadh'),(69,23,'Mecca'),(70,24,'Riyadh'),(71,24,'Jeddah'),(72,24,'Dammam'),(73,25,'Riyadh'),(74,25,'Jeddah'),(75,25,'Dammam'),(76,26,'Riyadh'),(77,26,'Jeddah'),(78,26,'Khobar'),(79,27,'Riyadh'),(80,27,'Jeddah'),(81,27,'Dammam'),(82,28,'Riyadh'),(83,28,'Jeddah'),(84,28,'Dammam'),(85,29,'Jeddah'),(86,29,'Riyadh'),(87,29,'Dammam'),(88,30,'Jeddah'),(89,30,'Riyadh'),(90,30,'Dammam'),(91,31,'Riyadh'),(92,31,'Jeddah'),(93,32,'Riyadh'),(94,32,'Jeddah'),(95,32,'Dubai'),(96,33,'Riyadh'),(97,33,'Jeddah'),(98,33,'Dammam'),(99,34,'Riyadh'),(100,34,'Jeddah'),(101,34,'Dammam'),(102,35,'Riyadh'),(103,35,'Jeddah'),(104,35,'Dammam'),(105,36,'Riyadh'),(106,36,'Jeddah'),(107,36,'Dammam'),(108,37,'Riyadh'),(109,37,'Jeddah'),(110,37,'Dubai'),(111,38,'Riyadh'),(112,38,'Jeddah'),(113,38,'Khobar'),(114,39,'Riyadh'),(115,39,'Jeddah'),(116,39,'Dubai'),(117,40,'Riyadh'),(118,40,'Jeddah'),(119,40,'Khobar'),(120,41,'Riyadh'),(121,41,'Jeddah'),(122,41,'Dammam'),(123,42,'Riyadh'),(124,42,'Jeddah'),(125,42,'Dammam'),(126,43,'Riyadh'),(127,43,'Jeddah'),(128,43,'Dammam'),(129,44,'Riyadh'),(130,44,'Jeddah'),(131,44,'Dammam'),(132,45,'Riyadh'),(133,45,'Jeddah'),(134,45,'Dammam'),(135,46,'Riyadh'),(136,47,'Riyadh'),(137,47,'Tabuk'),(138,48,'Riyadh'),(139,48,'Jeddah'),(140,49,'Riyadh'),(141,50,'Riyadh'),(142,50,'Jeddah'),(143,50,'Dammam');
/*!40000 ALTER TABLE `company_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `graduate_employment_report`
--

DROP TABLE IF EXISTS `graduate_employment_report`;
/*!50001 DROP VIEW IF EXISTS `graduate_employment_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `graduate_employment_report` AS SELECT 
 1 AS `graduateId`,
 1 AS `graduateName`,
 1 AS `gradYear`,
 1 AS `companyId`,
 1 AS `company_name`,
 1 AS `company_city`,
 1 AS `application_date`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `graduates`
--

DROP TABLE IF EXISTS `graduates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `graduates` (
  `graduateId` int NOT NULL,
  `graduateName` varchar(50) DEFAULT NULL,
  `gradYear` int DEFAULT NULL,
  `gpa` decimal(3,2) DEFAULT NULL,
  `majorId` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `current_company_id` int DEFAULT NULL,
  PRIMARY KEY (`graduateId`),
  KEY `majorId` (`majorId`),
  KEY `fkCurrentCompany` (`current_company_id`),
  CONSTRAINT `fkCurrentCompany` FOREIGN KEY (`current_company_id`) REFERENCES `companies` (`companyId`),
  CONSTRAINT `graduates_ibfk_1` FOREIGN KEY (`majorId`) REFERENCES `majors` (`majorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graduates`
--

LOCK TABLES `graduates` WRITE;
/*!40000 ALTER TABLE `graduates` DISABLE KEYS */;
INSERT INTO `graduates` VALUES (1,'turki1',2024,4.05,5,'male',NULL),(2,'nawaf2',2024,4.02,2,'male',NULL),(3,'ahmed3',2025,4.92,5,'male',NULL),(4,'abdullah4',2023,4.81,1,'male',NULL),(5,'khalid5',2023,5.00,3,'male',NULL),(6,'sara6',2023,4.96,2,'female',NULL),(7,'sultan7',2023,4.37,5,'male',NULL),(8,'shahad8',2023,4.67,4,'female',NULL),(9,'bader9',2024,4.69,5,'male',NULL),(10,'turki10',2024,4.08,5,'male',NULL),(11,'haya11',2025,4.13,3,'female',1),(12,'hassan12',2024,4.33,5,'male',1),(13,'laila13',2023,4.79,1,'female',1),(14,'salem14',2025,4.31,3,'male',1),(15,'osama15',2025,4.68,4,'male',1),(16,'maha16',2023,4.55,1,'female',1),(17,'ahmed17',2025,4.11,3,'male',1),(18,'yousef18',2025,4.22,3,'male',1),(19,'nawaf19',2024,4.13,5,'male',1),(20,'rana20',2023,4.62,1,'female',1),(21,'ali21',2023,4.07,1,'male',2),(22,'laila22',2023,4.12,4,'female',2),(23,'shahad23',2023,4.36,4,'female',2),(24,'sultan24',2024,4.62,4,'male',2),(25,'ali25',2023,4.68,1,'male',2),(26,'turki26',2023,4.12,5,'male',2),(27,'shahad27',2025,4.69,3,'female',2),(28,'wafa28',2023,4.40,5,'female',2),(29,'nawaf29',2025,4.68,2,'male',2),(30,'ahmed30',2025,4.99,2,'male',2),(31,'huda31',2023,4.47,2,'female',3),(32,'ghala32',2025,4.05,2,'female',3),(33,'abdullah33',2025,4.12,4,'male',3),(34,'bader34',2024,4.63,1,'male',3),(35,'rana35',2025,4.62,1,'female',3),(36,'saad36',2023,4.12,1,'male',3),(37,'abdullah37',2023,4.03,4,'male',3),(38,'ghala38',2023,4.62,2,'female',3),(39,'omar39',2023,4.94,2,'male',3),(40,'alaa40',2024,4.47,1,'female',3),(41,'lama41',2025,4.08,4,'female',5),(42,'ghala42',2023,4.05,2,'female',5),(43,'dana43',2025,4.98,2,'female',5),(44,'salem44',2025,4.45,4,'male',5),(45,'ali45',2025,4.01,4,'male',5),(46,'dana46',2025,4.15,2,'female',5),(47,'alaa47',2024,4.88,5,'female',5),(48,'rayan48',2024,4.27,3,'male',5),(49,'ali49',2025,5.00,4,'male',5),(50,'ali50',2023,4.49,4,'male',5),(51,'osama51',2024,4.62,1,'male',NULL),(52,'faisal52',2024,4.26,5,'male',NULL),(53,'maha53',2023,4.60,5,'female',NULL),(54,'ahmed54',2023,4.51,2,'male',NULL),(55,'laila55',2023,4.92,4,'female',NULL),(56,'joud56',2024,4.80,5,'female',NULL),(57,'yousef57',2025,4.87,5,'male',NULL),(58,'nawaf58',2025,4.95,2,'male',NULL),(59,'ghala59',2025,4.81,4,'female',NULL),(60,'salma60',2024,4.29,4,'female',NULL),(61,'nada61',2024,4.40,1,'female',NULL),(62,'faisal62',2023,4.43,2,'male',NULL),(63,'salma63',2023,4.26,2,'female',NULL),(64,'wafa64',2024,4.69,1,'female',NULL),(65,'saad65',2024,4.06,5,'male',NULL),(66,'amal66',2023,4.25,5,'female',NULL),(67,'reem67',2024,4.07,3,'female',NULL),(68,'turki68',2025,4.96,4,'male',NULL),(69,'dana69',2024,4.63,4,'female',NULL),(70,'yousef70',2024,4.19,3,'male',NULL),(71,'bader71',2023,4.48,3,'male',NULL),(72,'sultan72',2023,4.07,1,'male',NULL),(73,'rayan73',2024,4.97,1,'male',NULL),(74,'rana74',2023,4.55,1,'female',NULL),(75,'osama75',2024,4.92,2,'male',NULL),(76,'faisal76',2025,4.22,5,'male',NULL),(77,'salma77',2024,4.25,4,'female',NULL),(78,'salem78',2024,4.83,4,'male',NULL),(79,'ghala79',2024,4.77,2,'female',NULL),(80,'ahmed80',2025,4.97,5,'male',NULL),(81,'noura81',2025,4.65,5,'female',NULL),(82,'rayan82',2024,4.28,1,'male',NULL),(83,'hassan83',2023,4.01,3,'male',NULL),(84,'saad84',2023,4.08,5,'male',NULL),(85,'rana85',2024,4.29,1,'female',NULL),(86,'rayan86',2023,4.63,1,'male',NULL),(87,'noura87',2024,4.75,2,'female',NULL),(88,'rayan88',2023,4.07,2,'male',NULL),(89,'salem89',2024,4.99,3,'male',NULL),(90,'khalid90',2024,4.33,5,'male',NULL),(91,'nawaf91',2024,4.65,2,'male',NULL),(92,'rayan92',2025,4.97,2,'male',NULL),(93,'ghala93',2025,4.63,2,'female',NULL),(94,'leen94',2025,4.05,3,'female',NULL),(95,'osama95',2024,4.64,2,'male',NULL),(96,'wafa96',2023,4.00,1,'female',NULL),(97,'sara97',2024,4.86,3,'female',NULL),(98,'huda98',2023,4.42,4,'female',NULL),(99,'fahad99',2023,4.00,3,'male',NULL),(100,'lama100',2025,4.64,2,'female',NULL),(101,'osama101',2025,4.92,2,'male',NULL),(102,'fahad102',2025,4.00,1,'male',NULL),(103,'bader103',2024,4.94,4,'male',NULL),(104,'haya104',2023,4.75,4,'female',NULL),(105,'sultan105',2023,4.71,2,'male',NULL),(106,'nawaf106',2024,4.13,1,'male',NULL),(107,'majed107',2025,4.98,1,'male',NULL),(108,'rana108',2023,4.05,3,'female',NULL),(109,'hassan109',2025,4.17,3,'male',NULL),(110,'noura110',2024,4.67,5,'female',NULL),(111,'turki111',2025,4.09,1,'male',NULL),(112,'abdullah112',2024,4.10,3,'male',NULL),(113,'haya113',2025,4.68,1,'female',NULL),(114,'rana114',2023,4.60,1,'female',NULL),(115,'wafa115',2025,4.22,3,'female',NULL),(116,'rim116',2024,4.10,2,'female',NULL),(117,'osama117',2025,4.62,1,'male',NULL),(118,'amal118',2025,4.36,1,'female',NULL),(119,'alaa119',2023,4.83,5,'female',NULL),(120,'laila120',2024,4.56,5,'female',NULL),(121,'shahad121',2025,4.17,4,'female',NULL),(122,'ghala122',2023,4.07,1,'female',NULL),(123,'nada123',2024,4.33,3,'female',NULL),(124,'rim124',2025,4.88,4,'female',NULL),(125,'majed125',2023,4.31,4,'male',NULL),(126,'majed126',2023,4.39,2,'male',NULL),(127,'rim127',2025,4.05,3,'female',NULL),(128,'hassan128',2024,4.66,4,'male',NULL),(129,'rana129',2024,4.88,1,'female',NULL),(130,'wafa130',2023,4.82,2,'female',NULL),(131,'nawaf131',2024,4.45,4,'male',NULL),(132,'faisal132',2023,4.67,1,'male',NULL),(133,'ahmed133',2023,4.37,1,'male',NULL),(134,'fahad134',2023,4.37,1,'male',NULL),(135,'laila135',2023,4.97,4,'female',NULL),(136,'ghala136',2023,4.08,5,'female',NULL),(137,'yousef137',2024,4.98,3,'male',NULL),(138,'mohammed138',2024,4.56,4,'male',NULL),(139,'nada139',2023,4.70,1,'female',NULL),(140,'sara140',2024,4.76,5,'female',NULL),(141,'bader141',2024,4.14,3,'male',NULL),(142,'wafa142',2025,4.27,3,'female',NULL),(143,'huda143',2025,4.07,4,'female',NULL),(144,'rayan144',2025,4.60,4,'male',NULL),(145,'nada145',2023,4.55,2,'female',NULL),(146,'turki146',2025,4.13,5,'male',NULL),(147,'bader147',2023,4.12,1,'male',NULL),(148,'rim148',2025,4.88,5,'female',NULL),(149,'saad149',2025,4.07,1,'male',NULL),(150,'haya150',2024,4.52,3,'female',NULL);
/*!40000 ALTER TABLE `graduates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_applications` (
  `application_id` int NOT NULL AUTO_INCREMENT,
  `graduateId` int NOT NULL,
  `companyId` int NOT NULL,
  `application_date` date NOT NULL,
  `status` enum('Accepted','Rejected','Pending','Interview') DEFAULT 'Pending',
  `locationId` int DEFAULT NULL,
  `response_date` date DEFAULT NULL,
  PRIMARY KEY (`application_id`),
  KEY `fk_app_graduate` (`graduateId`),
  KEY `fk_app_company` (`companyId`),
  KEY `fk_location` (`locationId`),
  CONSTRAINT `fk_app_company` FOREIGN KEY (`companyId`) REFERENCES `companies` (`companyId`),
  CONSTRAINT `fk_app_graduate` FOREIGN KEY (`graduateId`) REFERENCES `graduates` (`graduateId`),
  CONSTRAINT `fk_location` FOREIGN KEY (`locationId`) REFERENCES `company_locations` (`locationId`),
  CONSTRAINT `job_applications_ibfk_1` FOREIGN KEY (`graduateId`) REFERENCES `graduates` (`graduateId`),
  CONSTRAINT `job_applications_ibfk_2` FOREIGN KEY (`companyId`) REFERENCES `companies` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
INSERT INTO `job_applications` VALUES (1,1,1,'2024-05-01','Accepted',1,'2024-05-15'),(2,1,2,'2024-05-02','Pending',NULL,NULL),(3,2,1,'2024-05-03','Accepted',2,'2024-05-17'),(4,3,2,'2024-05-10','Accepted',4,'2024-05-24'),(5,5,3,'2024-05-11','Accepted',7,'2024-05-25'),(6,6,5,'2024-05-12','Accepted',13,'2024-05-26'),(7,7,3,'2024-05-12','Accepted',9,'2024-05-26'),(8,8,10,'2024-05-13','Accepted',28,'2024-05-27'),(9,9,15,'2024-05-13','Pending',NULL,NULL),(10,10,2,'2024-05-14','Accepted',4,'2024-05-28'),(11,11,8,'2024-05-14','Accepted',23,'2024-05-28'),(12,12,12,'2024-05-15','Accepted',34,'2024-05-29'),(13,13,4,'2024-05-15','Accepted',10,'2024-05-29'),(14,14,6,'2024-05-16','Pending',NULL,NULL),(15,15,9,'2024-05-16','Accepted',25,'2024-05-30'),(16,20,1,'2024-05-17','Accepted',1,'2024-05-31'),(17,25,5,'2024-05-17','Accepted',15,'2024-05-31'),(18,30,7,'2024-05-18','Rejected',19,'2024-06-01'),(19,35,11,'2024-05-18','Rejected',31,'2024-06-01'),(20,40,20,'2024-05-19','Pending',NULL,NULL),(21,45,3,'2024-05-19','Rejected',7,'2024-06-02'),(22,50,25,'2024-05-20','Rejected',73,'2024-06-03'),(23,55,30,'2024-05-20','Rejected',NULL,'2024-06-03'),(24,60,2,'2024-05-21','Rejected',4,'2024-06-04'),(25,70,14,'2024-05-21','Rejected',40,'2024-06-04'),(26,80,18,'2024-05-22','Pending',NULL,NULL),(27,90,22,'2024-05-22','Rejected',64,'2024-06-05'),(28,100,1,'2024-05-23','Rejected',1,'2024-06-06'),(29,110,6,'2024-05-23','Rejected',16,'2024-06-06'),(30,120,9,'2024-05-24','Rejected',NULL,'2024-06-07'),(31,130,13,'2024-05-24','Rejected',37,'2024-06-07'),(32,140,17,'2024-05-25','Rejected',49,'2024-06-08'),(33,145,21,'2024-05-25','Pending',NULL,NULL),(34,150,28,'2024-05-26','Rejected',82,'2024-06-09'),(35,2,2,'2024-03-10','Pending',NULL,NULL),(36,2,5,'2024-03-12','Pending',NULL,NULL),(37,3,1,'2024-03-11','Pending',NULL,NULL),(38,3,3,'2024-03-13','Pending',NULL,NULL),(39,3,4,'2024-03-15','Pending',NULL,NULL),(40,4,2,'2024-03-10','Pending',NULL,NULL),(41,4,3,'2024-03-14','Pending',NULL,NULL),(42,5,1,'2024-03-12','Pending',NULL,NULL),(43,5,4,'2024-03-16','Pending',NULL,NULL),(44,5,5,'2024-03-18','Pending',NULL,NULL),(45,6,1,'2024-03-10','Pending',NULL,NULL),(46,6,3,'2024-03-14','Pending',NULL,NULL),(47,7,2,'2024-03-11','Pending',NULL,NULL),(48,7,4,'2024-03-15','Pending',NULL,NULL),(49,8,1,'2024-03-10','Pending',NULL,NULL),(50,8,2,'2024-03-12','Pending',NULL,NULL),(51,8,5,'2024-03-16','Pending',NULL,NULL),(52,9,3,'2024-03-11','Pending',NULL,NULL),(53,9,4,'2024-03-13','Pending',NULL,NULL),(54,10,2,'2024-03-10','Pending',NULL,NULL),(55,10,3,'2024-03-14','Pending',NULL,NULL),(56,11,1,'2024-03-09','Pending',NULL,NULL),(57,11,5,'2024-03-15','Pending',NULL,NULL),(58,12,2,'2024-03-12','Pending',NULL,NULL),(59,12,4,'2024-03-14','Pending',NULL,NULL),(60,12,5,'2024-03-17','Pending',NULL,NULL),(61,13,3,'2024-03-10','Pending',NULL,NULL),(62,13,4,'2024-03-12','Pending',NULL,NULL),(63,14,1,'2024-03-11','Pending',NULL,NULL),(64,14,2,'2024-03-13','Pending',NULL,NULL),(65,15,2,'2024-03-10','Pending',NULL,NULL),(66,15,3,'2024-03-12','Pending',NULL,NULL),(67,15,5,'2024-03-15','Pending',NULL,NULL),(68,16,4,'2024-03-11','Pending',NULL,NULL),(69,16,5,'2024-03-14','Pending',NULL,NULL),(70,17,1,'2024-03-10','Pending',NULL,NULL),(71,17,3,'2024-03-13','Pending',NULL,NULL),(72,18,2,'2024-03-09','Pending',NULL,NULL),(73,18,4,'2024-03-12','Pending',NULL,NULL),(74,18,5,'2024-03-16','Pending',NULL,NULL),(75,19,1,'2024-03-10','Pending',NULL,NULL),(76,19,2,'2024-03-14','Pending',NULL,NULL),(77,20,3,'2024-03-11','Pending',NULL,NULL),(78,20,5,'2024-03-15','Pending',NULL,NULL);
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majors`
--

DROP TABLE IF EXISTS `majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `majors` (
  `majorId` int NOT NULL,
  `majorName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`majorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majors`
--

LOCK TABLES `majors` WRITE;
/*!40000 ALTER TABLE `majors` DISABLE KEYS */;
INSERT INTO `majors` VALUES (1,'CS'),(2,'IS'),(3,'SE'),(4,'IT'),(5,'DS');
/*!40000 ALTER TABLE `majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `all_data_view`
--

/*!50001 DROP VIEW IF EXISTS `all_data_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_data_view` AS select `g`.`graduateId` AS `graduateId`,`g`.`graduateName` AS `graduateName`,`c`.`company_name` AS `company_name`,`cl`.`city` AS `branch_city`,`ja`.`status` AS `status`,`ja`.`application_date` AS `application_date`,`ja`.`locationId` AS `locationId` from (((`graduates` `g` left join `job_applications` `ja` on((`ja`.`graduateId` = `g`.`graduateId`))) left join `companies` `c` on((`c`.`companyId` = `ja`.`companyId`))) left join `company_locations` `cl` on((`cl`.`locationId` = `ja`.`locationId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `graduate_employment_report`
--

/*!50001 DROP VIEW IF EXISTS `graduate_employment_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `graduate_employment_report` AS select `g`.`graduateId` AS `graduateId`,`g`.`graduateName` AS `graduateName`,`g`.`gradYear` AS `gradYear`,`c`.`companyId` AS `companyId`,`c`.`company_name` AS `company_name`,`cl`.`city` AS `company_city`,`ja`.`application_date` AS `application_date`,`ja`.`status` AS `status` from (((`job_applications` `ja` join `graduates` `g` on((`ja`.`graduateId` = `g`.`graduateId`))) join `companies` `c` on((`ja`.`companyId` = `c`.`companyId`))) left join `company_locations` `cl` on((`c`.`companyId` = `cl`.`companyId`))) */;
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

-- Dump completed on 2026-09-24  5:55:03
