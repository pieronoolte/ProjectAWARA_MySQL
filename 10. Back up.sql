
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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sa_id` int NOT NULL,
  `act_typ` enum('Call','Meeting','Mail') NOT NULL,
  `cst_id` int NOT NULL,
  `stg_cli` enum('Negotiation','Deal','Not Apply','Future Followup','Decline') NOT NULL,
  `cont_dt` datetime DEFAULT NULL,
  `nxt_cont` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sa_id` (`sa_id`),
  KEY `cst_id` (`cst_id`),
  CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`sa_id`) REFERENCES `sales_agents` (`id`),
  CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`cst_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,1,'Call',1,'Negotiation','2024-02-01 12:30:45','2024-02-05 12:30:45'),(2,3,'Meeting',2,'Deal','2024-02-03 12:30:45','2024-01-08 12:30:45'),(3,4,'Call',5,'Future Followup','2024-02-05 12:30:45','2024-01-10 12:30:45'),(4,5,'Call',11,'Decline','2024-02-07 12:30:45','2024-01-12 12:30:45'),(5,5,'Meeting',10,'Not Apply','2024-02-09 12:30:45','2024-01-14 12:30:45'),(6,5,'Mail',10,'Not Apply','2024-02-11 12:30:45','2024-02-16 12:30:45'),(7,2,'Meeting',8,'Future Followup','2024-02-13 12:30:45','2024-01-18 12:30:45'),(8,1,'Meeting',1,'Negotiation','2024-02-15 12:30:45','2024-01-20 12:30:45'),(9,1,'Mail',13,'Future Followup','2024-02-17 12:30:45','2024-01-22 12:30:45'),(10,3,'Meeting',15,'Deal','2024-02-19 12:30:45','2024-01-24 12:30:45'),(11,11,'Meeting',9,'Negotiation','2024-02-21 12:30:45','2024-01-26 12:30:45'),(12,10,'Meeting',4,'Not Apply','2024-02-23 12:30:45','2024-02-28 12:30:45'),(13,12,'Call',7,'Future Followup','2024-02-25 12:30:45','2024-03-01 12:30:45'),(14,8,'Mail',6,'Not Apply','2024-02-27 12:30:45','2024-03-05 12:30:45'),(15,11,'Call',9,'Future Followup','2024-02-29 12:30:45','2024-03-07 12:30:45'),(16,6,'Call',14,'Negotiation','2024-02-02 12:30:45','2024-02-06 12:30:45'),(17,7,'Meeting',15,'Deal','2024-02-04 12:30:45','2024-02-09 12:30:45'),(18,8,'Call',16,'Future Followup','2024-02-06 12:30:45','2024-02-11 12:30:45'),(19,9,'Call',17,'Decline','2024-02-08 12:30:45','2024-02-13 12:30:45'),(20,10,'Meeting',18,'Not Apply','2024-02-10 12:30:45','2024-02-15 12:30:45'),(21,11,'Mail',19,'Not Apply','2024-02-12 12:30:45','2024-02-17 12:30:45'),(22,12,'Meeting',20,'Future Followup','2024-02-14 12:30:45','2024-02-19 12:30:45'),(23,13,'Meeting',21,'Negotiation','2024-02-16 12:30:45','2024-02-21 12:30:45'),(24,14,'Call',22,'Future Followup','2024-02-18 12:30:45','2024-02-23 12:30:45'),(25,15,'Mail',23,'Not Apply','2024-02-20 12:30:45','2024-02-25 12:30:45'),(26,11,'Meeting',24,'Deal','2024-02-22 12:30:45','2024-02-27 12:30:45'),(27,10,'Meeting',25,'Not Apply','2024-02-24 12:30:45','2024-03-01 12:30:45'),(28,11,'Call',26,'Future Followup','2024-02-26 12:30:45','2024-03-03 12:30:45'),(29,5,'Mail',27,'Not Apply','2024-02-28 12:30:45','2024-03-05 12:30:45'),(30,2,'Call',28,'Future Followup','2024-03-01 12:30:45','2024-03-07 12:30:45');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_auditoria_7` BEFORE DELETE ON `activities` FOR EACH ROW BEGIN
DECLARE delete_column_json_2 JSON;

    SET  delete_column_json_2 = JSON_OBJECT(
        'id', OLD.id,
        'sa_id', OLD.sa_id,
        'act_typ', OLD.act_typ,
        'cst_id', OLD.cst_id,
        'stg_cli', OLD.stg_cli,
        'cont_dt', OLD.cont_dt,
        'nxt_cont', OLD.nxt_cont
    );
    
INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( delete_column_json_2 , 'delete' , 'activities', CURRENT_USER(), NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `agreements`
--

DROP TABLE IF EXISTS `agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agreements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sa_id` int NOT NULL,
  `prj_id` int NOT NULL,
  `deal_dt` date DEFAULT NULL,
  `fst_pay` date DEFAULT NULL,
  `last_pay` date DEFAULT NULL,
  `curr_pay` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sa_id` (`sa_id`),
  KEY `prj_id` (`prj_id`),
  CONSTRAINT `agreements_ibfk_1` FOREIGN KEY (`sa_id`) REFERENCES `sales_agents` (`id`),
  CONSTRAINT `agreements_ibfk_2` FOREIGN KEY (`prj_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreements`
--

LOCK TABLES `agreements` WRITE;
/*!40000 ALTER TABLE `agreements` DISABLE KEYS */;
INSERT INTO `agreements` VALUES (1,1,1,'2024-01-15','2024-02-01','2024-03-01',12000.50),(2,3,2,'2024-01-20','2024-02-01','2024-03-01',15000.75),(3,4,3,'2024-01-25','2024-02-01','2024-03-01',18000.25),(4,5,4,'2024-01-30','2024-02-01','2024-03-01',12000.00),(5,6,5,'2024-02-05','2024-02-01','2024-03-01',13000.00),(6,7,6,'2024-02-10','2024-02-01','2024-03-01',13000.50),(7,8,7,'2024-02-15','2024-02-01','2024-03-01',11000.75),(8,9,8,'2024-02-20','2024-02-01','2024-03-01',17000.25),(9,10,9,'2024-02-25','2024-02-01','2024-03-01',12000.00),(10,11,10,'2024-02-01','2024-02-01','2024-03-01',12000.75),(11,12,11,'2024-02-06','2024-02-01','2024-03-01',12500.50),(12,13,12,'2024-02-11','2024-02-01','2024-03-01',13000.25),(13,14,13,'2024-02-16','2024-02-01','2024-03-01',16500.00),(14,15,14,'2024-02-21','2024-02-01','2024-03-01',12500.00),(15,1,15,'2024-02-26','2024-02-01','2024-03-01',11250.50),(16,7,16,'2024-02-02','2024-02-01','2024-03-01',12200.75),(17,8,17,'2024-02-07','2024-02-01','2024-03-01',17400.25),(18,3,18,'2024-02-12','2024-02-01','2024-03-01',14250.00),(19,11,19,'2024-02-17','2024-02-01','2024-03-01',12400.75),(20,2,20,'2024-02-22','2024-02-01','2024-03-01',13800.50),(21,4,21,'2024-03-01','2024-04-01','2024-05-01',23000.50),(22,12,22,'2024-03-02','2024-04-01','2024-05-01',14000.75),(23,12,23,'2024-03-03','2024-04-01','2024-05-01',15000.25),(24,1,24,'2024-03-04','2024-04-01','2024-05-01',16000.00),(25,15,25,'2024-03-05','2024-04-01','2024-05-01',17000.00),(26,6,26,'2024-03-06','2024-04-01','2024-05-01',28000.50),(27,7,27,'2024-03-07','2024-04-01','2024-05-01',18000.75),(28,9,28,'2024-03-08','2024-04-01','2024-05-01',15000.25),(29,13,29,'2024-03-09','2024-04-01','2024-05-01',21000.00),(30,14,30,'2024-03-10','2024-04-01','2024-05-01',22000.00);
/*!40000 ALTER TABLE `agreements` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_auditoria_3` BEFORE INSERT ON `agreements` FOR EACH ROW BEGIN

INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( CONCAT('id_newagreement: ', NEW.id, ' salesAgent- project:', NEW.sa_id, '-', NEW.prj_id) , 'insert' , 'agreements',CURRENT_USER(), NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_auditoria_4` AFTER UPDATE ON `agreements` FOR EACH ROW BEGIN

 DECLARE update_columns_2 VARCHAR(255);
    SET update_columns_2 = ' ';
    IF NEW.fst_pay <> OLD.fst_pay THEN
        SET update_columns_2 = CONCAT('new first payment: ', NEW.fst_pay, ' first payment: ', OLD.fst_pay , '\n');
    END IF;
    
    IF NEW.last_pay <> OLD.last_pay THEN
        SET update_columns_2 = CONCAT(update_columns_2,'new last payment: ', NEW.last_pay, ' last payment: ', OLD.last_pay , '\n');
    END IF;

    IF NEW.curr_pay <> OLD.curr_pay THEN
        SET update_columns_2 = CONCAT(update_columns_2, 'new current payment: ', NEW.curr_pay, ' old current payment: ', OLD.curr_pay, '\n');
    END IF;


INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( update_columns_2  , 'update' , 'agreements' ,CURRENT_USER(), NOW());
       
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_auditoria_6` BEFORE DELETE ON `agreements` FOR EACH ROW BEGIN

DECLARE delete_column_json_2 JSON;

    SET  delete_column_json_2 = JSON_OBJECT(
        'id', OLD.id,
        'sa_id', OLD.sa_id,
        'prj_id', OLD.prj_id,
        'deal_dt', OLD.deal_dt,
        'fst_pay', OLD.fst_pay,
        'last_pay', OLD.last_pay,
        'curr_pay', OLD.curr_pay
    );
    
INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( delete_column_json_2 , 'delete' , 'agreements', CURRENT_USER(), NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cm_name` varchar(25) NOT NULL,
  `since` year NOT NULL DEFAULT '2000',
  `loc` set('North of Peru','South of Peru','Midle of Peru') NOT NULL,
  `ind_id` int NOT NULL,
  `biz_typ` enum('Small business','Mid sized business','Large business','Startup','Corporation','Multinational corporation') DEFAULT NULL,
  `fin_stmt` enum('Income Statement','Balance Sheet','Cash Flow Statement') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ind_id` (`ind_id`),
  CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`ind_id`) REFERENCES `industries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'R & G COMPANY',1998,'North of Peru',17,'Startup','Income Statement'),(2,'A & C COMPANY',2015,'South of Peru',15,'Small business','Balance Sheet'),(3,'W & B COMPANY',2020,'Midle of Peru',7,'Corporation','Cash Flow Statement'),(4,'W & W COMPANY',2008,'North of Peru',12,'Large business','Income Statement'),(5,'Q & G COMPANY',1995,'South of Peru',8,'Mid sized business','Balance Sheet'),(6,'T & B COMPANY',2021,'Midle of Peru',5,'Startup','Cash Flow Statement'),(7,'T & G COMPANY',1998,'North of Peru',12,'Multinational corporation','Income Statement'),(8,'V & G COMPANY',2018,'South of Peru',1,'Small business','Balance Sheet'),(9,'R & R COMPANY',2015,'Midle of Peru',5,'Large business','Cash Flow Statement'),(10,'X & V COMPANY',2011,'North of Peru',3,'Mid sized business','Income Statement'),(11,'R & V COMPANY',2012,'Midle of Peru',15,'Corporation','Balance Sheet'),(12,'X & G COMPANY',2017,'South of Peru',9,'Startup','Cash Flow Statement'),(13,'Y & X COMPANY',2023,'North of Peru',7,'Large business','Income Statement'),(14,'B & B COMPANY',2022,'Midle of Peru',15,'Small business','Balance Sheet'),(15,'R & W COMPANY',2021,'South of Peru',14,'Mid sized business','Cash Flow Statement'),(16,'X & Y COMPANY',2010,'North of Peru',18,'Corporation','Income Statement'),(17,'Z & C COMPANY',2013,'Midle of Peru',11,'Startup','Balance Sheet'),(18,'N & R COMPANY',2019,'South of Peru',8,'Large business','Cash Flow Statement'),(19,'P & L COMPANY',2014,'North of Peru',12,'Small business','Income Statement'),(20,'K & D COMPANY',2016,'Midle of Peru',6,'Mid sized business','Balance Sheet'),(21,'G & Q COMPANY',2017,'South of Peru',17,'Corporation','Cash Flow Statement'),(22,'U & T COMPANY',2018,'North of Peru',9,'Startup','Income Statement'),(23,'A & R COMPANY',2022,'Midle of Peru',14,'Large business','Balance Sheet'),(24,'L & M COMPANY',2016,'South of Peru',12,'Small business','Cash Flow Statement'),(25,'H & P COMPANY',2013,'North of Peru',8,'Mid sized business','Income Statement'),(26,'S & F COMPANY',2015,'Midle of Peru',16,'Corporation','Balance Sheet'),(27,'E & G COMPANY',2020,'South of Peru',2,'Startup','Cash Flow Statement'),(28,'B & Q COMPANY',2011,'North of Peru',3,'Large business','Income Statement'),(29,'C & W COMPANY',2012,'Midle of Peru',8,'Small business','Balance Sheet'),(30,'F & N COMPANY',2019,'South of Peru',14,'Mid sized business','Cash Flow Statement'),(31,'Y & A COMPANY',2014,'North of Peru',7,'Corporation','Income Statement'),(32,'M & X COMPANY',2023,'Midle of Peru',5,'Startup','Balance Sheet'),(33,'J & J COMPANY',2022,'South of Peru',12,'Large business','Cash Flow Statement'),(34,'O & U COMPANY',2021,'North of Peru',11,'Small business','Income Statement'),(35,'W & R COMPANY',2015,'Midle of Peru',15,'Mid sized business','Balance Sheet'),(36,'I & S COMPANY',2011,'South of Peru',16,'Corporation','Cash Flow Statement'),(37,'R & X COMPANY',2012,'North of Peru',9,'Startup','Income Statement'),(38,'Z & B COMPANY',2017,'Midle of Peru',1,'Large business','Balance Sheet'),(39,'N & G COMPANY',2018,'South of Peru',3,'Small business','Cash Flow Statement'),(40,'P & K COMPANY',2019,'North of Peru',4,'Mid sized business','Income Statement'),(41,'K & V COMPANY',2020,'Midle of Peru',11,'Corporation','Balance Sheet'),(42,'G & D COMPANY',2013,'South of Peru',10,'Startup','Cash Flow Statement'),(43,'U & Y COMPANY',2016,'North of Peru',13,'Large business','Income Statement'),(44,'A & M COMPANY',2014,'Midle of Peru',9,'Small business','Balance Sheet'),(45,'L & P COMPANY',2015,'South of Peru',5,'Mid sized business','Cash Flow Statement');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cst_name` varchar(25) NOT NULL,
  `gen` enum('F','M') NOT NULL,
  `career` varchar(30) NOT NULL,
  `job_tit` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `cm_id` int NOT NULL,
  `typ_cli` enum('Prospect','Lead','New Client','Sporadic Client','Loyal Client') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Joseph Oshom','M','Marketing','Account Executive','company1345@gmail.com','921854339',1,'Prospect'),(2,'Sara Anderson','F','Marketing','Account Executive','sara3_3@gmail.com','921854339',1,'Prospect'),(3,'David Smith','M','Computer Science','Software Engineer','david33564@gmail.com','902774852',2,'New Client'),(4,'Emma Jones','F','Sales','Sales Representative','emma33@gmail.com','902857754',3,'Prospect'),(5,'Andrew Wilson','M','Finance','Financial Analyst','andrew_14@gmail.com','902811014',4,'New Client'),(6,'Sophia Miller','F','Human Resources','HR Specialist','sophia1254@gmail.com','902852222',7,'Prospect'),(7,'Michael Martinez','M','Accounting','Accountant','michael520@gmail.com','902999254',2,'Sporadic Client'),(8,'Olivia Davis','F','Industrial Engineering','Process Engineer','olivia11@gmail.com','925458487',11,'Lead'),(9,'James Taylor','M','IT','IT Consultant','james152@gmail.com','912854854',10,'Loyal Client'),(10,'Ava Brown','F','Psychology','Psychologist','ava62@gmail.com','902668854',11,'Prospect'),(11,'Lucas Johnson','M','Chemical Engineering','Chemical Engineer','lucas54@gmail.com','906064854',13,'Lead'),(12,'Mia Thomas','F','Marketing','Marketing Manager','mia12@gmail.com','902844454',14,'Prospect'),(13,'Ethan Martinez','M','Management','Management Consultant','ethan5548@gmail.com','902854587',15,'Sporadic Client'),(14,'Eva Garcia','F','Sales','Sales Manager','eva22@gmail.com','903334990',6,'Loyal Client'),(15,'Aiden Clark','M','Psychology','Psychologist','aiden33@gmail.com','965885771',5,'Loyal Client'),(16,'Oliver White','M','IT','IT Specialist','oliver@gmail.com','906664854',8,'New Client'),(17,'Emily Martin','F','Human Resources','HR Manager','emily5477@gmail.com','906664854',9,'Prospect'),(18,'Matthew Brown','M','Finance','Finance Manager','matthew@gmail.com','906664854',12,'Sporadic Client'),(19,'Ava Davis','F','Marketing','Marketing Specialist','ava72@gmail.com','921854339',31,'Prospect'),(20,'Liam Jones','M','Sales','Sales Representative','liam_1548@gmail.com','902774852',32,'New Client'),(21,'Sophia Wilson','F','Marketing','Marketing Manager','sophia_00@gmail.com','902857754',33,'Prospect'),(22,'Jack Smith','M','IT','IT Consultant','jac_k@gmail.com','902811014',34,'New Client'),(23,'Olivia Martinez','F','Human Resources','HR Specialist','oliv_ia@gmail.com','902852222',35,'Prospect'),(24,'Noah Miller','M','Accounting','Accountant','noah_14@gmail.com','902999254',36,'Sporadic Client'),(25,'Emma Brown','F','Marketing','Marketing Specialist','emma548@gmail.com','925458487',37,'Lead'),(26,'Lucas Taylor','M','IT','IT Specialist','lucas_s@gmail.com','912854854',38,'Loyal Client'),(27,'Ava Johnson','F','Psychology','Psychologist','ava556@gmail.com','902668854',39,'Prospect'),(28,'Oliver Martinez','M','Chemical Engineering','Chemical Engineer','oliver_g@gmail.com','906064854',13,'Lead'),(29,'Sophia Thomas','F','Marketing','Marketing Manager','sophia8875@gmail.com','902844454',39,'Prospect'),(30,'Noah Garcia','M','Management','Management Consultant','noah87@gmail.com','902854587',43,'Sporadic Client'),(31,'Isabella Brown','F','Sales','Sales Manager','isabella_15@gmail.com','903334990',40,'Loyal Client'),(32,'Mason Clark','M','Psychology','Psychologist','mason_11@gmail.com','965885771',41,'Loyal Client'),(33,'Ava White','F','IT','IT Specialist','ava122@gmail.com','906664854',42,'New Client'),(34,'Olivia Martin','F','Human Resources','HR Manager','olivia12@gmail.com','906664854',44,'Prospect'),(35,'Jack Brown','M','Finance','Finance Manager','jack12@gmail.com','906664854',45,'New Client'),(36,'Daniel Martinez','M','IT','IT Consultant','daniel1@gmail.com','902777777',16,'Lead'),(37,'Emily Wilson','F','Sales','Sales Representative','emily1@gmail.com','902888888',17,'Loyal Client'),(38,'Liam Martin','M','Marketing','Marketing Manager','liam1@gmail.com','902999999',18,'Prospect'),(39,'Ava Johnson','F','Human Resources','HR Manager','ava42@gmail.com','903000000',19,'New Client');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industries`
--

DROP TABLE IF EXISTS `industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `industries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ind_typ` varchar(50) NOT NULL,
  `gdp_pct` decimal(4,2) DEFAULT NULL,
  `gdp_grw` decimal(4,2) DEFAULT NULL,
  `pol_sit` enum('Stable','Unstable','Neutral','Unknown') DEFAULT NULL,
  `avg_ann_rev` float NOT NULL,
  `avg_emp_count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industries`
--

LOCK TABLES `industries` WRITE;
/*!40000 ALTER TABLE `industries` DISABLE KEYS */;
INSERT INTO `industries` VALUES (1,'Education',3.50,1.50,'Stable',5000000,12000),(2,'Machinery and Equipment',4.20,1.80,'Stable',6000000,13000),(3,'Plastic and Rubber',2.80,1.20,'Stable',4000000,11000),(4,'Chemistry Industry',3.75,1.25,'Stable',5500000,12500),(5,'Wood and Derivatives',2.25,0.75,'Stable',3000000,10500),(6,'Mining, Petroleum and Energy',4.50,2.00,'Stable',7000000,14000),(7,'Import and Export',3.00,1.00,'Stable',4500000,11500),(8,'Nautical',3.25,1.75,'Stable',5200000,12700),(9,'Fishery',2.50,1.50,'Stable',3800000,10800),(10,'Health',4.00,1.50,'Stable',6200000,13300),(11,'Business Services',3.75,1.25,'Stable',5500000,12500),(12,'Finance Services',4.00,1.50,'Stable',6000000,13000),(13,'Information Technology',4.25,1.75,'Stable',6500000,13500),(14,'Telecommunications',4.50,2.00,'Stable',7000000,14000),(15,'Textile and Confections',2.75,1.25,'Stable',4200000,11200),(16,'Transport',3.25,1.75,'Stable',5200000,12700),(17,'Agriculture, Livestock and Forestry',3.00,1.50,'Stable',4500000,11500),(18,'Glass and Glass Products',3.50,2.00,'Stable',5500000,12500),(19,'Wholesale Trade',3.75,1.75,'Stable',5800000,13000),(20,'Retail Commerce',3.25,1.25,'Stable',5100000,12200),(21,'Automotive',4.00,1.50,'Stable',6200000,13300),(22,'Printing and Stationery',2.80,1.20,'Stable',4300000,11000),(23,'Manufacturing Metallic and No Metallic Products',3.25,1.75,'Stable',5400000,12600),(24,'Food and Drinks',3.75,1.50,'Stable',5800000,13000),(25,'Construction',4.00,2.00,'Stable',6400000,13500),(26,'Leather and Footwear',2.75,1.25,'Stable',4100000,11200),(27,'Tourism',3.50,1.50,'Stable',5600000,12400),(28,'Other Services',3.00,1.00,'Stable',4700000,11800);
/*!40000 ALTER TABLE `industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_auditoria`
--

DROP TABLE IF EXISTS `log_auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_auditoria` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `camponuevo_campoanterior` varchar(255) DEFAULT NULL,
  `nombre_de_accion` varchar(10) DEFAULT NULL,
  `nombre_tabla` varchar(50) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_upd_ins_del` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_auditoria`
--

LOCK TABLES `log_auditoria` WRITE;
/*!40000 ALTER TABLE `log_auditoria` DISABLE KEYS */;
INSERT INTO `log_auditoria` VALUES (1,'id_newproject: 0 customer- service:15-8','insert','projects','root@localhost','2024-02-23 21:06:59'),(2,'id_newproject: 0 customer- service:6-2','insert','projects','root@localhost','2024-02-23 21:06:59'),(3,'id_newproject: 0 customer- service:6-9','insert','projects','root@localhost','2024-02-23 21:06:59'),(4,'id_newproject: 0 customer- service:8-10','insert','projects','root@localhost','2024-02-23 21:06:59'),(5,'id_newproject: 0 customer- service:6-2','insert','projects','root@localhost','2024-02-23 21:06:59'),(6,'id_newproject: 0 customer- service:14-5','insert','projects','root@localhost','2024-02-23 21:06:59'),(7,'id_newproject: 0 customer- service:13-6','insert','projects','root@localhost','2024-02-23 21:06:59'),(8,'id_newproject: 0 customer- service:8-10','insert','projects','root@localhost','2024-02-23 21:06:59'),(9,'id_newproject: 0 customer- service:5-4','insert','projects','root@localhost','2024-02-23 21:06:59'),(10,'id_newproject: 0 customer- service:12-10','insert','projects','root@localhost','2024-02-23 21:06:59'),(11,'id_newproject: 0 customer- service:7-3','insert','projects','root@localhost','2024-02-23 21:06:59'),(12,'id_newproject: 0 customer- service:10-1','insert','projects','root@localhost','2024-02-23 21:06:59'),(13,'id_newproject: 0 customer- service:10-7','insert','projects','root@localhost','2024-02-23 21:06:59'),(14,'id_newproject: 0 customer- service:9-11','insert','projects','root@localhost','2024-02-23 21:06:59'),(15,'id_newproject: 0 customer- service:11-6','insert','projects','root@localhost','2024-02-23 21:06:59'),(16,'id_newproject: 0 customer- service:18-5','insert','projects','root@localhost','2024-02-23 21:06:59'),(17,'id_newproject: 0 customer- service:14-8','insert','projects','root@localhost','2024-02-23 21:06:59'),(18,'id_newproject: 0 customer- service:5-2','insert','projects','root@localhost','2024-02-23 21:06:59'),(19,'id_newproject: 0 customer- service:19-3','insert','projects','root@localhost','2024-02-23 21:06:59'),(20,'id_newproject: 0 customer- service:21-8','insert','projects','root@localhost','2024-02-23 21:06:59'),(21,'id_newproject: 0 customer- service:21-7','insert','projects','root@localhost','2024-02-23 21:06:59'),(22,'id_newproject: 0 customer- service:22-6','insert','projects','root@localhost','2024-02-23 21:06:59'),(23,'id_newproject: 0 customer- service:5-5','insert','projects','root@localhost','2024-02-23 21:06:59'),(24,'id_newproject: 0 customer- service:24-4','insert','projects','root@localhost','2024-02-23 21:06:59'),(25,'id_newproject: 0 customer- service:25-5','insert','projects','root@localhost','2024-02-23 21:06:59'),(26,'id_newproject: 0 customer- service:26-11','insert','projects','root@localhost','2024-02-23 21:06:59'),(27,'id_newproject: 0 customer- service:27-10','insert','projects','root@localhost','2024-02-23 21:06:59'),(28,'id_newproject: 0 customer- service:28-8','insert','projects','root@localhost','2024-02-23 21:06:59'),(29,'id_newproject: 0 customer- service:29-9','insert','projects','root@localhost','2024-02-23 21:06:59'),(30,'id_newproject: 0 customer- service:30-11','insert','projects','root@localhost','2024-02-23 21:06:59'),(31,'id_newagreement: 0 salesAgent- project:1-1','insert','agreements','root@localhost','2024-02-23 21:06:59'),(32,'id_newagreement: 0 salesAgent- project:3-2','insert','agreements','root@localhost','2024-02-23 21:06:59'),(33,'id_newagreement: 0 salesAgent- project:4-3','insert','agreements','root@localhost','2024-02-23 21:06:59'),(34,'id_newagreement: 0 salesAgent- project:5-4','insert','agreements','root@localhost','2024-02-23 21:06:59'),(35,'id_newagreement: 0 salesAgent- project:6-5','insert','agreements','root@localhost','2024-02-23 21:06:59'),(36,'id_newagreement: 0 salesAgent- project:7-6','insert','agreements','root@localhost','2024-02-23 21:06:59'),(37,'id_newagreement: 0 salesAgent- project:8-7','insert','agreements','root@localhost','2024-02-23 21:06:59'),(38,'id_newagreement: 0 salesAgent- project:9-8','insert','agreements','root@localhost','2024-02-23 21:06:59'),(39,'id_newagreement: 0 salesAgent- project:10-9','insert','agreements','root@localhost','2024-02-23 21:06:59'),(40,'id_newagreement: 0 salesAgent- project:11-10','insert','agreements','root@localhost','2024-02-23 21:06:59'),(41,'id_newagreement: 0 salesAgent- project:12-11','insert','agreements','root@localhost','2024-02-23 21:06:59'),(42,'id_newagreement: 0 salesAgent- project:13-12','insert','agreements','root@localhost','2024-02-23 21:06:59'),(43,'id_newagreement: 0 salesAgent- project:14-13','insert','agreements','root@localhost','2024-02-23 21:06:59'),(44,'id_newagreement: 0 salesAgent- project:15-14','insert','agreements','root@localhost','2024-02-23 21:06:59'),(45,'id_newagreement: 0 salesAgent- project:1-15','insert','agreements','root@localhost','2024-02-23 21:06:59'),(46,'id_newagreement: 0 salesAgent- project:7-16','insert','agreements','root@localhost','2024-02-23 21:06:59'),(47,'id_newagreement: 0 salesAgent- project:8-17','insert','agreements','root@localhost','2024-02-23 21:06:59'),(48,'id_newagreement: 0 salesAgent- project:3-18','insert','agreements','root@localhost','2024-02-23 21:06:59'),(49,'id_newagreement: 0 salesAgent- project:11-19','insert','agreements','root@localhost','2024-02-23 21:06:59'),(50,'id_newagreement: 0 salesAgent- project:2-20','insert','agreements','root@localhost','2024-02-23 21:06:59'),(51,'id_newagreement: 0 salesAgent- project:4-21','insert','agreements','root@localhost','2024-02-23 21:06:59'),(52,'id_newagreement: 0 salesAgent- project:12-22','insert','agreements','root@localhost','2024-02-23 21:06:59'),(53,'id_newagreement: 0 salesAgent- project:12-23','insert','agreements','root@localhost','2024-02-23 21:06:59'),(54,'id_newagreement: 0 salesAgent- project:1-24','insert','agreements','root@localhost','2024-02-23 21:06:59'),(55,'id_newagreement: 0 salesAgent- project:15-25','insert','agreements','root@localhost','2024-02-23 21:06:59'),(56,'id_newagreement: 0 salesAgent- project:6-26','insert','agreements','root@localhost','2024-02-23 21:06:59'),(57,'id_newagreement: 0 salesAgent- project:7-27','insert','agreements','root@localhost','2024-02-23 21:06:59'),(58,'id_newagreement: 0 salesAgent- project:9-28','insert','agreements','root@localhost','2024-02-23 21:06:59'),(59,'id_newagreement: 0 salesAgent- project:13-29','insert','agreements','root@localhost','2024-02-23 21:06:59'),(60,'id_newagreement: 0 salesAgent- project:14-30','insert','agreements','root@localhost','2024-02-23 21:06:59');
/*!40000 ALTER TABLE `log_auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cst_id` int NOT NULL,
  `srv_id` int NOT NULL,
  `start_dt` date NOT NULL,
  `end_dt` date NOT NULL,
  `stg` enum('Initiation','Planning','Execution','Monitoring','Closure') NOT NULL,
  `profit` decimal(7,2) DEFAULT NULL,
  `accrc` decimal(4,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cst_id` (`cst_id`),
  KEY `srv_id` (`srv_id`),
  CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`cst_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`srv_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,15,8,'2023-06-01','2023-09-01','Initiation',22000.50,0.85),(2,6,2,'2023-04-01','2023-07-01','Planning',18000.75,0.90),(3,6,9,'2023-05-01','2023-08-01','Execution',18000.25,0.88),(4,8,10,'2023-04-15','2023-07-15','Execution',16000.00,0.92),(5,6,2,'2023-05-15','2023-08-15','Initiation',23000.00,0.87),(6,14,5,'2023-06-15','2023-09-15','Closure',19000.50,0.89),(7,13,6,'2023-04-15','2023-07-15','Planning',21000.75,0.91),(8,8,10,'2023-05-15','2023-08-15','Closure',17000.25,0.86),(9,5,4,'2023-06-15','2023-09-15','Execution',14000.00,0.93),(10,12,10,'2023-04-01','2023-07-01','Planning',22000.75,0.94),(11,7,3,'2023-05-01','2023-08-01','Execution',17500.50,0.88),(12,10,1,'2023-06-01','2023-09-01','Initiation',23000.25,0.85),(13,10,7,'2023-04-15','2023-07-15','Execution',16500.00,0.92),(14,9,11,'2023-05-15','2023-08-15','Closure',18500.00,0.87),(15,11,6,'2023-06-15','2023-09-15','Planning',21250.50,0.89),(16,18,5,'2023-04-15','2023-07-15','Initiation',22200.75,0.91),(17,14,8,'2023-05-15','2023-08-15','Closure',17400.25,0.86),(18,5,2,'2023-06-15','2023-09-15','Execution',18250.00,0.93),(19,19,3,'2023-04-01','2023-07-01','Planning',22400.75,0.94),(20,21,8,'2023-05-01','2023-08-01','Execution',17800.50,0.90),(21,21,7,'2024-09-01','2024-12-01','Initiation',38000.00,0.92),(22,22,6,'2024-10-01','2025-01-01','Planning',39000.00,0.93),(23,5,5,'2024-11-01','2025-02-01','Execution',40000.00,0.94),(24,24,4,'2024-12-01','2025-03-01','Monitoring',41000.00,0.95),(25,25,5,'2025-01-01','2025-04-01','Closure',42000.00,0.96),(26,26,11,'2025-02-01','2025-05-01','Initiation',23000.00,0.97),(27,27,10,'2025-03-01','2025-06-01','Planning',24000.00,0.98),(28,28,8,'2025-04-01','2025-07-01','Execution',25000.00,0.99),(29,29,9,'2025-05-01','2025-08-01','Monitoring',26000.00,0.90),(30,30,11,'2025-06-01','2025-09-01','Closure',27000.00,0.91);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_auditoria_1` BEFORE INSERT ON `projects` FOR EACH ROW BEGIN

INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( CONCAT('id_newproject: ', NEW.id, ' customer- service:', NEW.cst_id, '-', NEW.srv_id) , 'insert' , 'projects',CURRENT_USER(), NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_auditoria_2` AFTER UPDATE ON `projects` FOR EACH ROW BEGIN

 DECLARE update_columns_1 VARCHAR(255);
	SET update_columns_1 = ' ';
    
    IF NEW.end_dt <> OLD.end_dt THEN
        SET update_columns_1 = CONCAT('new end date: ', NEW.end_dt, ' old end date: ', OLD.end_dt, '\n');
    END IF;

    IF NEW.profit <> OLD.profit THEN
        SET update_columns_1 = CONCAT(update_columns_1, 'new profit: ', NEW.profit, ' old profit: ', OLD.profit, '\n');
    END IF;

    IF NEW.accrc <> OLD.accrc THEN
        SET update_columns_1 = CONCAT(update_columns_1, 'new accrc: ', NEW.accrc, ' old accrc: ', OLD.accrc, '\n');
    END IF;
    
    IF NEW.stg <> OLD.stg THEN
        SET update_columns_1 = CONCAT(update_columns_1, 'new stage: ', NEW.stg, ' old stage: ', OLD.stg, '\n');
    END IF;

INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( update_columns_1  , 'update' , 'projects' ,CURRENT_USER(), NOW());
       
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_auditoria_5` BEFORE DELETE ON `projects` FOR EACH ROW BEGIN

DECLARE delete_column_json_1 JSON;

    SET  delete_column_json_1 = JSON_OBJECT(
        'id', OLD.id,
        'cst_id', OLD.cst_id,
        'srv_id', OLD.srv_id,
        'start_dt', OLD.start_dt,
        'end_dt', OLD.end_dt,
        'stg', OLD.stg,
        'profit',OLD.profit,
        'accrc',OLD.accrc
    );
    
INSERT INTO log_auditoria (camponuevo_campoanterior , nombre_de_accion , nombre_tabla ,usuario, fecha_upd_ins_del)
VALUES ( delete_column_json_1 , 'delete' , 'projects',CURRENT_USER(), NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sales_agents`
--

DROP TABLE IF EXISTS `sales_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_agents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sa_name` varchar(25) NOT NULL,
  `age` tinyint NOT NULL,
  `gen` enum('F','M') NOT NULL,
  `career` varchar(30) NOT NULL,
  `job_tit` varchar(30) NOT NULL,
  `sa_tgt` float NOT NULL,
  `avail` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_agents`
--

LOCK TABLES `sales_agents` WRITE;
/*!40000 ALTER TABLE `sales_agents` DISABLE KEYS */;
INSERT INTO `sales_agents` VALUES (1,'Joseph Oshom',29,'M','Marketing','Account Executive',30000,_binary ''),(2,'Leopold Smith',31,'M','Commercial Engineering','Key Account Manager',30000,_binary ''),(3,'Josh Guzman',29,'M','Sales Managment','Senior Consultant',35000,_binary ''),(4,'Eduard Michigan',32,'M','Managment & Finance','Account Executive',20000,_binary ''),(5,'Catalina Durand',27,'F','Finance','Account Executive',15000,_binary ''),(6,'Sam Waldott',29,'F','Accounting & Finance','Key Account Manager',30000,_binary ''),(7,'Beth Undword',22,'F','Industrial Engineering','Junior Consultant',30000,_binary ''),(8,'Conrad Mitter',33,'M','Industrial Engineering','Prime Consultant',20000,_binary ''),(9,'Lucia Hidalgo',30,'F','Psychologist','Account Executive',18000,_binary '\0'),(10,'Mateo Price',32,'M','Chemical Engineering','Account Executive',13000,_binary ''),(11,'Robert Mull',30,'M','Psychologist','Senior Consultant',20000,_binary ''),(12,'Fabricio Fonseca',31,'M','Marketing','Account Executive',18000,_binary ''),(13,'Isadora Danger',39,'F','Managment','Sales Manager',20000,_binary '\0'),(14,'Violet Sea',25,'F','Psychologist','Account Executive',20000,_binary ''),(15,'Nicolai Wahldoff',28,'M','Managment & Finance','Senior Consultant',15000,_binary '');
/*!40000 ALTER TABLE `sales_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `srv_typ` varchar(25) NOT NULL,
  `wsp` varchar(25) NOT NULL,
  `min_time_exe` tinyint NOT NULL,
  `max_time_exe` tinyint NOT NULL,
  `min_bud` decimal(7,2) DEFAULT NULL,
  `max_bud` decimal(7,2) DEFAULT NULL,
  `avail` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'R&S','Human Resources',20,60,1500.00,6000.00,1),(2,'Headhunting','Human Resources',25,65,1600.00,6500.00,1),(3,'Accounting Outsourcing','Accounting',18,55,1300.00,5500.00,1),(4,'Finance Outsourcing','Finance',22,62,1700.00,6200.00,1),(5,'Planning Outsourcing','Finance',28,68,1800.00,6800.00,1),(6,'Occupational Security','Occupational Safety',30,70,1900.00,7000.00,1),(7,'Spreadsheet Outsourcing','Accounting',15,50,1000.00,5000.00,1),(8,'Psycholaboral Evaluation','Human Resources',26,66,1750.00,6600.00,1),(9,'General Audit','Quality',27,67,1850.00,6700.00,1),(10,'Accountin Audit','Accounting',24,64,1650.00,6400.00,1),(11,'RMP','Human Resources',23,63,1550.00,6300.00,1);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_activities_agents`
--

DROP TABLE IF EXISTS `vw_activities_agents`;
/*!50001 DROP VIEW IF EXISTS `vw_activities_agents`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_activities_agents` AS SELECT 
 1 AS `act_typ`,
 1 AS `sa_name`,
 1 AS `cst_id`,
 1 AS `email`,
 1 AS `phone`,
 1 AS `nxt_cont`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_biz_companies`
--

DROP TABLE IF EXISTS `vw_biz_companies`;
/*!50001 DROP VIEW IF EXISTS `vw_biz_companies`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_biz_companies` AS SELECT 
 1 AS `biz_typ`,
 1 AS `total_companies`,
 1 AS `total_projects`,
 1 AS `market_percent`,
 1 AS `most_requested_service`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_outstanding_payments_proyects`
--

DROP TABLE IF EXISTS `vw_outstanding_payments_proyects`;
/*!50001 DROP VIEW IF EXISTS `vw_outstanding_payments_proyects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_outstanding_payments_proyects` AS SELECT 
 1 AS `cst_name`,
 1 AS `stg`,
 1 AS `total_payment`,
 1 AS `curr_pay`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_sales_agents_report`
--

DROP TABLE IF EXISTS `vw_sales_agents_report`;
/*!50001 DROP VIEW IF EXISTS `vw_sales_agents_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_sales_agents_report` AS SELECT 
 1 AS `sa_name`,
 1 AS `sales_commission`,
 1 AS `receivable_payments`,
 1 AS `goal_percent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_service_agreements`
--

DROP TABLE IF EXISTS `vw_service_agreements`;
/*!50001 DROP VIEW IF EXISTS `vw_service_agreements`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_service_agreements` AS SELECT 
 1 AS `srv_typ`,
 1 AS `projects`,
 1 AS `activities`,
 1 AS `expected_payment`,
 1 AS `current_payment`,
 1 AS `current_payment_percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_status_customer`
--

DROP TABLE IF EXISTS `vw_status_customer`;
/*!50001 DROP VIEW IF EXISTS `vw_status_customer`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_status_customer` AS SELECT 
 1 AS `cst_name`,
 1 AS `activities`,
 1 AS `total_projects`,
 1 AS `current_projects`,
 1 AS `account_statement`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'crm_database_awara'
--

--
-- Dumping routines for database 'crm_database_awara'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_avg_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_avg_total`(  p_start_date DATE,
                                 p_end_date DATE  ) RETURNS decimal(8,2)
    DETERMINISTIC
BEGIN
	DECLARE v_value DECIMAL(8,2);  
   
	SELECT AVG(profit * accrc) INTO v_value
	FROM projects
	WHERE start_dt BETWEEN p_start_date AND p_end_date;

	RETURN v_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_percent_goal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_percent_goal`(  p_start_date DATE,
                                 p_end_date DATE  ) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE v_value VARCHAR(20);  
   
	SELECT CONCAT(ROUND((SUM(a.curr_pay)/SUM(sa.sa_tgt))*100,2),'%') INTO v_value
	FROM sales_agents as sa
	JOIN agreements AS a ON  a.sa_id = sa.id
    WHERE deal_dt BETWEEN p_start_date AND p_end_date;
	RETURN v_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_sum_total` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_sum_total`( p_start_date DATE,
                                 p_end_date DATE ) RETURNS decimal(8,2)
    DETERMINISTIC
BEGIN

	DECLARE v_value DECIMAL(8,2);  
   
	SELECT SUM(profit * accrc) INTO v_value
	FROM projects
	WHERE start_dt BETWEEN p_start_date AND p_end_date;

	RETURN v_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_total_for_pay` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_total_for_pay`(  p_start_date DATE,
                                 p_end_date DATE  ) RETURNS decimal(8,2)
    DETERMINISTIC
BEGIN
	DECLARE v_value DECIMAL(8,2);  
   
	SELECT SUM(p.profit * p.accrc - a.curr_pay) INTO v_value
	FROM projects as p
	JOIN agreements AS a ON  a.prj_id = p.id
    WHERE start_dt BETWEEN p_start_date AND p_end_date;
	RETURN v_value;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_agr_act_agent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agr_act_agent`(IN p_id_sa INT,  OUT p_salida CHAR(50))
BEGIN

	SET @sql_query_1 = CONCAT('
        SELECT act_typ, cst_id, stg_cli, cont_dt, nxt_cont
        FROM activities
        WHERE sa_id = ', p_ID_SA, '
        ORDER BY nxt_cont DESC;
    ');

    PREPARE dynamic_query_1 FROM @sql_query_1;
    EXECUTE dynamic_query_1;
    DEALLOCATE PREPARE dynamic_query_1;
    
    SET @sql_query_2= CONCAT('
        SELECT prj_id, deal_dt, fst_pay, last_pay, curr_pay
        FROM agreements
        WHERE sa_id = ', p_ID_SA, '
        ORDER BY curr_pay DESC;
    ');
	SET @P_SALIDA = 'REGISTRO DE ACTIVIDADES Y OPORTUNIDADES DEL AGENTE';
    
    PREPARE dynamic_query_2 FROM @sql_query_2;
    EXECUTE dynamic_query_2;
    DEALLOCATE PREPARE dynamic_query_2;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insert`(IN p_tabla VARCHAR(1000), IN p_columns_insert VARCHAR(1000), OUT p_insert_concat VARCHAR(1000))
BEGIN
    
    SET @P_INSERT_CONCAT = CONCAT('INSERT INTO ', p_tabla, ' VALUES ', p_columns_insert);
   
    PREPARE stmt1 FROM @p_insert_concat;
    EXECUTE stmt1;
    DEALLOCATE PREPARE stmt1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ordenamiento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ordenamiento`(	IN p_tabla VARCHAR(30),
									IN p_column_orderby VARCHAR(30),
									IN p_orderby VARCHAR(4),
                                    OUT p_salida VARCHAR(150)
								 )
BEGIN


SET @P_SALIDA = CONCAT('SELECT * FROM ', p_tabla, ' ORDER BY ', p_column_orderby, ' ', p_orderby);

PREPARE param_stmt from @p_salida  ;
EXECUTE param_stmt;
deallocate PREPARE param_stmt;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_project_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_project_customer`(IN p_customer INT,  OUT p_salida CHAR(40))
BEGIN

	SET @sql_query_3 = CONCAT('
        SELECT cst_id, srv_id, start_dt, end_dt, stg, profit, accrc
        FROM projects
        WHERE cst_id = ', P_CUSTOMER, '
        ORDER BY start_dt DESC;
    ');

	SET @P_SALIDA = 'REGISTRO DE PROYECTOS DEL CUSTOMER';
    
    PREPARE dynamic_query_3 FROM @sql_query_3;
    EXECUTE dynamic_query_3;
    DEALLOCATE PREPARE dynamic_query_3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_delete` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_delete`(	IN p_tabla VARCHAR(50),
									IN p_accion VARCHAR(50),
									IN p_column_update VARCHAR(50),
                                    IN p_value_update VARCHAR(50),
									IN p_id INT,
                                    OUT p_salida VARCHAR (150)
								 )
BEGIN


IF   UPPER(TRIM(P_ACCION)) = 'UPDATE' THEN
SET @sql_query_1 = CONCAT('UPDATE ', p_tabla, ' SET ', p_column_update, ' = ''',  p_value_update,''' WHERE ID = ', p_id );

	PREPARE dynamic_query_1 FROM @sql_query_1;
    EXECUTE dynamic_query_1;
    DEALLOCATE PREPARE dynamic_query_1;
    
SET @p_salida =CONCAT('SELECT * FROM ', p_tabla,' WHERE ID = ', p_id );

    PREPARE dynamic_query_3 FROM @P_SALIDA;
    EXECUTE dynamic_query_3;
    DEALLOCATE PREPARE dynamic_query_3;

ELSEIF   UPPER(TRIM(P_ACCION)) = 'DELETE' THEN
SET @sql_query_2 = CONCAT('DELETE FROM ', p_tabla,' WHERE ID = ', p_id) ;
SET @p_salida = ' DELETE OK ' ;

	PREPARE dynamic_query_2 FROM @sql_query_2;
    EXECUTE dynamic_query_2;
    DEALLOCATE PREPARE dynamic_query_2;
ELSE 
SET @p_salida = ' ERROR: DATO NO VALIDO ' ;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_activities_agents`
--

/*!50001 DROP VIEW IF EXISTS `vw_activities_agents`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_activities_agents` AS select `act`.`act_typ` AS `act_typ`,`sa`.`sa_name` AS `sa_name`,`act`.`cst_id` AS `cst_id`,`c`.`email` AS `email`,`c`.`phone` AS `phone`,`act`.`nxt_cont` AS `nxt_cont` from ((`activities` `act` join `customers` `c` on((`c`.`id` = `act`.`cst_id`))) join `sales_agents` `sa` on((`act`.`sa_id` = `sa`.`id`))) where (`act`.`stg_cli` in ('Negotiation','Future followup')) order by `act`.`nxt_cont` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_biz_companies`
--

/*!50001 DROP VIEW IF EXISTS `vw_biz_companies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_biz_companies` AS select `cm`.`biz_typ` AS `biz_typ`,count(`cm`.`id`) AS `total_companies`,count(`p`.`id`) AS `total_projects`,concat(round(((sum(`a`.`curr_pay`) / sum(sum(`a`.`curr_pay`)) OVER () ) * 100),2),'%') AS `market_percent`,max(`srv`.`srv_typ`) AS `most_requested_service` from ((((`companies` `cm` join `customers` `c` on((`c`.`cm_id` = `cm`.`id`))) join `projects` `p` on((`c`.`id` = `p`.`cst_id`))) join `agreements` `a` on((`p`.`id` = `a`.`prj_id`))) join `services` `srv` on((`p`.`srv_id` = `srv`.`id`))) group by `cm`.`biz_typ` having (sum(`a`.`curr_pay`) > (0.5 * sum((`p`.`profit` * `p`.`accrc`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_outstanding_payments_proyects`
--

/*!50001 DROP VIEW IF EXISTS `vw_outstanding_payments_proyects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_outstanding_payments_proyects` AS select `c`.`cst_name` AS `cst_name`,`p`.`stg` AS `stg`,(`p`.`profit` * `p`.`accrc`) AS `total_payment`,`a`.`curr_pay` AS `curr_pay` from ((`projects` `p` join `agreements` `a` on((`p`.`id` = `a`.`prj_id`))) join `customers` `c` on((`p`.`cst_id` = `c`.`id`))) where ((`p`.`stg` in ('Monitoring','Closure')) and (`a`.`curr_pay` < (`p`.`profit` * `p`.`accrc`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_sales_agents_report`
--

/*!50001 DROP VIEW IF EXISTS `vw_sales_agents_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_sales_agents_report` AS select `sa`.`sa_name` AS `sa_name`,sum((`a`.`curr_pay` * 0.1)) AS `sales_commission`,sum(((`p`.`profit` * `p`.`accrc`) - `a`.`curr_pay`)) AS `receivable_payments`,concat(round(((sum(`a`.`curr_pay`) / sum(`sa`.`sa_tgt`)) * 100),2),'%') AS `goal_percent` from ((`agreements` `a` join `projects` `p` on((`a`.`prj_id` = `p`.`id`))) join `sales_agents` `sa` on((`a`.`sa_id` = `sa`.`id`))) group by `sa`.`sa_name` order by sum((`a`.`curr_pay` * 0.2)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_service_agreements`
--

/*!50001 DROP VIEW IF EXISTS `vw_service_agreements`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_service_agreements` AS select `srv`.`srv_typ` AS `srv_typ`,count(`p`.`id`) AS `projects`,count(`act`.`id`) AS `activities`,sum((`p`.`profit` * `p`.`accrc`)) AS `expected_payment`,sum(`a`.`curr_pay`) AS `current_payment`,concat(((sum(`a`.`curr_pay`) / sum(sum(`a`.`curr_pay`)) OVER () ) * 100),'%') AS `current_payment_percentage` from ((((`projects` `p` join `customers` `c` on((`p`.`cst_id` = `c`.`id`))) join `activities` `act` on((`act`.`cst_id` = `c`.`id`))) join `agreements` `a` on((`a`.`prj_id` = `p`.`id`))) join `services` `srv` on((`p`.`srv_id` = `srv`.`id`))) group by `p`.`srv_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_status_customer`
--

/*!50001 DROP VIEW IF EXISTS `vw_status_customer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_status_customer` AS select `c`.`cst_name` AS `cst_name`,count(`act`.`id`) AS `activities`,count(`p`.`id`) AS `total_projects`,(case when (count(`p`.`id`) > 0) then 'Current projects' else 'Non-current' end) AS `current_projects`,(case when (sum(`a`.`curr_pay`) < (0.75 * sum((`p`.`profit` * `p`.`accrc`)))) then 'overdue customer' else 'up-to-date customer' end) AS `account_statement` from (((`customers` `c` left join `projects` `p` on((`c`.`id` = `p`.`cst_id`))) left join `activities` `act` on((`c`.`id` = `act`.`cst_id`))) left join `agreements` `a` on((`p`.`id` = `a`.`prj_id`))) group by `c`.`cst_name` order by `total_projects` desc */;
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

-- Dump completed on 2024-02-23 16:07:23
