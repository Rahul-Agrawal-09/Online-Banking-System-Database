-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: online_banking_system
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `recurring_deposit`
--

DROP TABLE IF EXISTS `recurring_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_deposit` (
  `account_number` bigint unsigned NOT NULL,
  `cin` int unsigned NOT NULL,
  `start_date` date DEFAULT (curdate()),
  `duration_years` mediumint unsigned NOT NULL,
  `maturity_date` date DEFAULT ((`start_date` + 365)),
  `monthly_deposit_amount` smallint unsigned NOT NULL,
  `interest_rate` mediumint unsigned NOT NULL,
  PRIMARY KEY (`account_number`),
  KEY `recurring_deposit_ibfk_2` (`cin`),
  CONSTRAINT `recurring_deposit_ibfk_1` FOREIGN KEY (`account_number`) REFERENCES `bank_account` (`account_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recurring_deposit_ibfk_2` FOREIGN KEY (`cin`) REFERENCES `customer` (`cin`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_deposit`
--

LOCK TABLES `recurring_deposit` WRITE;
/*!40000 ALTER TABLE `recurring_deposit` DISABLE KEYS */;
INSERT INTO `recurring_deposit` VALUES (11000000129,100000104,'2021-10-13',5,'2026-10-13',23588,8),(11000000130,100000105,'2021-12-06',9,'2030-12-06',15765,9),(11000000131,100000106,'2021-08-03',6,'2027-08-03',15328,8),(11000000132,100000107,'2021-12-03',8,'2029-12-03',38068,12),(11000000133,100000108,'2021-01-06',8,'2029-01-06',59160,7),(11000000134,100000109,'2021-03-04',1,'2022-03-04',3538,10),(11000000135,100000110,'2021-01-09',7,'2028-01-09',56869,11),(11000000136,100000111,'2021-05-30',8,'2029-05-30',13979,11),(11000000137,100000112,'2022-01-16',10,'2032-01-16',29641,10),(11000000138,100000113,'2021-02-24',2,'2023-02-24',64606,9),(11000000139,100000114,'2022-02-27',7,'2029-02-27',4490,12),(11000000140,100000115,'2021-10-14',2,'2023-10-14',35736,10),(11000000141,100000116,'2021-12-20',6,'2027-12-20',16236,12),(11000000142,100000117,'2022-03-03',8,'2030-03-03',40442,11),(11000000143,100000118,'2021-02-09',5,'2026-02-09',21647,12),(11000000144,100000119,'2021-10-23',3,'2024-10-23',4758,9),(11000000145,100000120,'2021-06-27',9,'2030-06-27',29835,7),(11000000146,100000121,'2021-09-13',3,'2024-09-13',53847,9),(11000000148,100000123,'2021-04-21',10,'2031-04-21',50697,7),(11000000149,100000124,'2021-05-12',9,'2030-05-12',64299,12),(11000000150,100000125,'2021-02-01',3,'2024-02-01',24163,8),(11000000151,100000126,'2021-09-17',2,'2023-09-17',57715,8),(11000000152,100000127,'2021-07-09',9,'2030-07-09',42409,10),(11000000153,100000128,'2021-09-20',9,'2030-09-20',4969,12),(11000000154,100000129,'2021-10-13',4,'2025-10-13',29011,7),(11000000155,100000130,'2021-08-28',6,'2027-08-28',59396,12),(11000000156,100000131,'2022-03-27',1,'2023-03-27',62006,12),(11000000157,100000132,'2021-03-04',1,'2022-03-04',53443,12),(11000000158,100000133,'2021-11-23',1,'2022-11-23',60568,11),(11000000159,100000134,'2021-03-06',6,'2027-03-06',16484,9),(11000000160,100000135,'2021-02-25',8,'2029-02-25',56698,12),(11000000161,100000136,'2021-04-09',10,'2031-04-09',63325,12),(11000000162,100000137,'2021-04-26',7,'2028-04-26',36723,7),(11000000163,100000138,'2021-12-04',4,'2025-12-04',26123,12),(11000000164,100000139,'2021-09-22',3,'2024-09-22',9725,8),(11000000165,100000140,'2021-12-05',1,'2022-12-05',47079,12),(11000000166,100000141,'2022-03-17',10,'2032-03-17',37574,8),(11000000167,100000142,'2021-07-12',10,'2031-07-12',42300,11),(11000000168,100000143,'2021-10-24',1,'2022-10-24',59499,7),(11000000169,100000144,'2021-06-24',8,'2029-06-24',53388,7),(11000000171,100000146,'2022-01-09',10,'2032-01-09',11127,12),(11000000172,100000147,'2021-02-18',5,'2026-02-18',41324,8),(11000000173,100000148,'2021-10-25',5,'2026-10-25',15490,12),(11000000174,100000149,'2021-02-02',7,'2028-02-02',11629,11);
/*!40000 ALTER TABLE `recurring_deposit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-10 21:09:57
