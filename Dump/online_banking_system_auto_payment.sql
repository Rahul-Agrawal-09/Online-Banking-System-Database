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
-- Table structure for table `auto_payment`
--

DROP TABLE IF EXISTS `auto_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto_payment` (
  `auto_payment_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `payment_frequency` smallint unsigned NOT NULL DEFAULT (1),
  `autodebit_account_number` bigint unsigned NOT NULL,
  PRIMARY KEY (`auto_payment_id`),
  KEY `auto_payment_ibfk_1` (`autodebit_account_number`),
  CONSTRAINT `auto_payment_ibfk_1` FOREIGN KEY (`autodebit_account_number`) REFERENCES `bank_account` (`account_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_payment`
--

LOCK TABLES `auto_payment` WRITE;
/*!40000 ALTER TABLE `auto_payment` DISABLE KEYS */;
INSERT INTO `auto_payment` VALUES (100001,'2021-12-09',42,11000000226),(100002,'2021-01-12',30,11000000227),(100003,'2021-12-25',18,11000000228),(100004,'2022-03-20',42,11000000229),(100005,'2021-06-11',48,11000000230),(100006,'2021-08-28',48,11000000231),(100007,'2021-12-22',12,11000000232),(100008,'2021-08-10',6,11000000233),(100009,'2021-12-21',48,11000000234),(100010,'2021-01-30',42,11000000235),(100011,'2021-11-19',30,11000000236),(100012,'2021-05-14',42,11000000237),(100013,'2021-03-30',6,11000000238),(100014,'2021-06-28',42,11000000239),(100015,'2021-03-02',48,11000000240),(100016,'2022-01-29',18,11000000241),(100017,'2021-02-09',6,11000000242),(100018,'2021-01-01',12,11000000243),(100019,'2021-03-06',36,11000000244),(100020,'2021-12-05',30,11000000245),(100021,'2021-08-17',48,11000000246),(100022,'2021-02-20',48,11000000247),(100023,'2021-12-04',24,11000000248),(100024,'2022-02-02',18,11000000249),(100025,'2022-01-29',12,11000000250),(100026,'2021-03-09',24,11000000251),(100027,'2022-02-05',36,11000000252),(100028,'2021-06-20',48,11000000253),(100029,'2021-08-23',24,11000000254),(100030,'2021-08-05',36,11000000255),(100031,'2021-04-13',36,11000000256),(100032,'2021-01-15',42,11000000257),(100033,'2021-10-23',12,11000000258),(100034,'2022-03-18',48,11000000259),(100035,'2021-08-27',12,11000000260),(100036,'2021-09-11',30,11000000261),(100037,'2022-03-06',24,11000000262),(100038,'2021-06-30',30,11000000263),(100039,'2021-10-22',36,11000000264),(100040,'2021-03-04',48,11000000265),(100041,'2021-01-07',6,11000000266),(100042,'2022-03-10',12,11000000267),(100043,'2021-02-26',48,11000000268),(100044,'2021-04-21',18,11000000269),(100045,'2022-02-26',42,11000000270),(100046,'2021-02-10',42,11000000271),(100047,'2021-01-31',36,11000000272),(100048,'2021-12-26',6,11000000273),(100049,'2021-11-04',18,11000000274),(100050,'2021-11-25',48,11000000275),(100051,'2021-06-16',48,12000000150),(100052,'2021-12-12',6,12000000151),(100053,'2021-07-17',12,12000000152),(100054,'2021-06-07',18,12000000153),(100055,'2021-10-26',42,12000000154),(100056,'2021-06-10',36,12000000155),(100057,'2021-12-02',18,12000000156),(100058,'2021-07-27',42,12000000157),(100059,'2021-04-16',42,12000000158),(100060,'2022-02-19',24,12000000159),(100061,'2022-03-26',30,12000000160),(100062,'2021-01-10',24,12000000161),(100063,'2022-02-18',12,12000000162),(100064,'2021-07-21',6,12000000163),(100065,'2021-12-20',6,12000000164),(100066,'2021-05-13',48,12000000165),(100067,'2021-04-05',42,12000000166),(100068,'2021-07-11',12,12000000167),(100069,'2021-06-19',42,12000000168),(100070,'2021-06-11',6,12000000169),(100071,'2021-03-26',30,12000000170),(100072,'2021-07-24',36,12000000171),(100073,'2021-12-10',18,12000000172),(100074,'2021-10-18',12,12000000173),(100075,'2021-03-23',12,12000000174),(100076,'2021-05-21',12,12000000175),(100077,'2021-03-05',48,12000000176),(100078,'2021-09-15',48,12000000177),(100079,'2022-01-06',48,12000000178),(100080,'2021-11-04',18,12000000179),(100081,'2021-05-04',24,12000000180),(100082,'2021-08-13',12,12000000181),(100083,'2021-10-10',12,12000000182),(100084,'2021-03-20',48,12000000183),(100085,'2021-11-19',6,12000000184),(100086,'2021-06-01',18,12000000185),(100087,'2021-12-22',24,12000000186),(100088,'2021-05-11',18,12000000187),(100089,'2022-03-15',12,12000000188),(100090,'2021-02-23',6,12000000189),(100091,'2021-11-06',18,12000000190),(100092,'2021-09-16',6,12000000191),(100093,'2021-05-30',42,12000000192),(100094,'2021-05-10',30,12000000193),(100095,'2021-12-23',42,12000000194),(100096,'2021-05-18',36,12000000195),(100097,'2021-07-19',18,12000000196),(100098,'2021-05-03',6,12000000197),(100099,'2022-02-09',12,12000000198),(100100,'2021-11-28',48,12000000199);
/*!40000 ALTER TABLE `auto_payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-10 21:09:51
