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
-- Table structure for table `atm_card`
--

DROP TABLE IF EXISTS `atm_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atm_card` (
  `card_number` bigint unsigned NOT NULL,
  `linked_account` bigint unsigned NOT NULL,
  `cash_withdrawl_limit` smallint unsigned DEFAULT (2000),
  PRIMARY KEY (`card_number`),
  KEY `atm_card_ibfk_2` (`linked_account`),
  CONSTRAINT `atm_card_ibfk_1` FOREIGN KEY (`card_number`) REFERENCES `card` (`card_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `atm_card_ibfk_2` FOREIGN KEY (`linked_account`) REFERENCES `bank_account` (`account_number`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atm_card`
--

LOCK TABLES `atm_card` WRITE;
/*!40000 ALTER TABLE `atm_card` DISABLE KEYS */;
INSERT INTO `atm_card` VALUES (100000000150,11000000100,20000),(100000000151,11000000101,20000),(100000000152,11000000102,20000),(100000000153,11000000103,20000),(100000000154,11000000104,20000),(100000000155,11000000105,20000),(100000000156,11000000106,20000),(100000000157,11000000107,20000),(100000000158,11000000108,20000),(100000000159,11000000109,20000),(100000000160,11000000110,20000),(100000000161,11000000111,20000),(100000000162,11000000112,20000),(100000000163,11000000113,20000),(100000000164,11000000114,20000),(100000000165,11000000115,20000),(100000000166,11000000116,20000),(100000000167,11000000117,20000),(100000000168,11000000118,20000),(100000000169,11000000119,20000),(100000000170,11000000120,20000),(100000000171,11000000121,20000),(100000000172,11000000122,20000),(100000000173,11000000123,20000),(100000000174,11000000124,20000),(100000000175,11000000125,20000),(100000000176,11000000126,20000),(100000000177,11000000127,20000),(100000000178,11000000128,20000),(100000000179,11000000129,20000),(100000000180,11000000130,20000),(100000000181,11000000131,20000),(100000000182,11000000132,20000),(100000000183,11000000133,20000),(100000000184,11000000134,20000),(100000000185,11000000135,20000),(100000000186,11000000136,20000),(100000000187,11000000137,20000),(100000000188,11000000138,20000),(100000000189,11000000139,20000),(100000000190,11000000140,20000),(100000000191,11000000141,20000),(100000000192,11000000142,20000),(100000000193,11000000143,20000),(100000000194,11000000144,20000),(100000000195,11000000145,20000),(100000000196,11000000146,20000),(100000000197,11000000147,20000),(100000000198,11000000148,20000),(100000000199,11000000149,20000);
/*!40000 ALTER TABLE `atm_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-10 21:10:00
