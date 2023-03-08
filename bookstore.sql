-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (arm64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `AUTHOR`
--

DROP TABLE IF EXISTS `AUTHOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHOR` (
  `ID` int NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHOR`
--

LOCK TABLES `AUTHOR` WRITE;
/*!40000 ALTER TABLE `AUTHOR` DISABLE KEYS */;
INSERT INTO `AUTHOR` VALUES (141501337,'Nita Prose'),(205845814,'F. Scott Fitzgerald'),(213281249,'Alex Michaelides'),(368898781,'Taylor Jenkins Reid'),(411844148,'Stephen Graham Jones'),(420564811,'Matt Haig'),(423588559,'James Clear'),(569928796,'Frank Herbert'),(571867955,'Donna Tartt'),(586722892,'Kathleen Glasgow'),(827537712,'Paulo Coelho'),(904320982,'Anthony Doerr');
/*!40000 ALTER TABLE `AUTHOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK`
--

DROP TABLE IF EXISTS `BOOK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BOOK` (
  `ISBN` varchar(13) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PAGES_NUM` int DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  `LANGUAGE` varchar(100) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `DATE_PUBLISH` date DEFAULT NULL,
  `PUBLISHER` int DEFAULT NULL,
  `AUTHOR` int DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK`
--

LOCK TABLES `BOOK` WRITE;
/*!40000 ALTER TABLE `BOOK` DISABLE KEYS */;
INSERT INTO `BOOK` VALUES ('0061687456','The Pilgrimage',288,50,'English','paperback','2021-08-03',401304295,827537712),('0062315005','The Alchemist',208,35,'English','paperback','2014-04-15',401304295,827537712),('0140167773','The Secret History',629,55,'English','paperback','1993-07-01',13809614,571867955),('0441172717','Dune',896,45,'English','paperback','1990-09-01',855990739,569928796),('0525522891','How to Stop Time',352,42,'English','paperback','2019-06-11',13809614,420564811),('0525559477','The Midnight Library',304,50,'English','hardcover','2020-09-29',401304295,420564811),('0525559493','The Midnight Library',304,47,'English','paperback','2023-05-09',13809614,420564811),('0593189647','Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones',320,45,'English','paperback','2019-10-01',331896931,423588559),('0593356179','The Maid',320,40,'English','paperback','2023-01-03',961406827,141501337),('0735211299','Atomic Habits: An Easy & Proven Way to Build Good Habits & Break Bad Ones',320,14,'English','hardcover','2018-10-16',768170420,423588559),('0743273567','The Great Gatsby',180,43,'English','paperback','1925-01-01',961406827,205845814),('1101934743','Girl in Pieces',448,45,'English','paperback','2018-04-10',575839059,586722892),('125030170X','The Silent Patient',368,43,'English','paperback','2021-05-04',998160136,213281249),('1400031702','The Secret History',576,50,'English','paperback','1992-09-11',238909536,571867955),('1476730598','The Humans',320,47,'English','paperback','2014-08-12',961406827,420564811),('1476746583','All the Light We Cannot See',531,45,'English','hardcover','2014-01-01',961406827,904320982),('1501161938','The Seven Husbands of Evelyn Hugo',400,50,'English','paperback','2018-05-29',897387268,368898781),('1982136456','The Only Good Indians',305,42,'English','hardcover','2020-07-14',961406827,411844148);
/*!40000 ALTER TABLE `BOOK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BOOK_GENRE`
--

DROP TABLE IF EXISTS `BOOK_GENRE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BOOK_GENRE` (
  `BOOK` varchar(13) NOT NULL,
  `GENRE` varchar(100) NOT NULL,
  PRIMARY KEY (`BOOK`,`GENRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK_GENRE`
--

LOCK TABLES `BOOK_GENRE` WRITE;
/*!40000 ALTER TABLE `BOOK_GENRE` DISABLE KEYS */;
INSERT INTO `BOOK_GENRE` VALUES ('0061687456','Fiction'),('0061687456','Literature'),('0062315005','Philosophy'),('0062315005','Self help'),('0140167773','Fiction'),('0140167773','Mystery'),('0441172717','Fantasy'),('0441172717','Fiction'),('0525522891','Fantasy'),('0525522891','Fiction'),('0525559477','Fantasy'),('0525559477','Fiction'),('0525559493','Fantasy'),('0525559493','Fiction'),('0593189647','Health'),('0593189647','Self help'),('0593356179','Crime'),('0593356179','Mystery'),('0735211299','Health'),('0735211299','Self help'),('0743273567','Classics'),('0743273567','Romance'),('1101934743','Mental Health'),('1101934743','Young adult'),('125030170X','Mystery'),('125030170X','Thriller'),('1400031702','Fiction'),('1400031702','Mystery'),('1476730598','Fantasy'),('1476730598','Humor'),('1476746583','Fiction'),('1476746583','Historical'),('1501161938','Fiction'),('1501161938','Romance'),('1982136456','Fiction'),('1982136456','Horror');
/*!40000 ALTER TABLE `BOOK_GENRE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BRANCH`
--

DROP TABLE IF EXISTS `BRANCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BRANCH` (
  `NUMBER` int NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `REGION` varchar(50) NOT NULL,
  `ZIP_CODE` int DEFAULT NULL,
  `MANAGER` int DEFAULT NULL,
  PRIMARY KEY (`NUMBER`),
  UNIQUE KEY `ZIP_CODE` (`ZIP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BRANCH`
--

LOCK TABLES `BRANCH` WRITE;
/*!40000 ALTER TABLE `BRANCH` DISABLE KEYS */;
INSERT INTO `BRANCH` VALUES (1000,'Jeddah','Makkah',37262,469608485),(1001,'Makkah','Makkah',36382,504274714),(1002,'Madinah','Madinah',82637,401244140),(1003,'dammam','Al-Sharqiya',20183,223312375),(1004,'Jeddah','Makkah',36279,546755772),(1005,'Al-Khobar','Al-Sharqiya',53927,247235746);
/*!40000 ALTER TABLE `BRANCH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CUSTOMER` (
  `NUMBER` int NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `MOBILE` varchar(10) NOT NULL,
  PRIMARY KEY (`NUMBER`),
  UNIQUE KEY `MOBILE` (`MOBILE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (129652959,'Mona Al-Qahtani','056352718'),(392125624,'Salma Al-Jehani','056342817'),(635744267,'Rama Al-Otabi','056352901'),(831088869,'Fahad Al-Jaghthami','053678889'),(906493897,'Talal Al-Sharif','059283623'),(912157543,'Lama Al-Materi','058372561');
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMPLOYEE` (
  `SSN` int NOT NULL,
  `First_name` varchar(50) NOT NULL,
  `Last_name` varchar(50) NOT NULL,
  `Salary` int NOT NULL,
  `Date_Hire` date NOT NULL,
  `DATE_Birth` date NOT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  `Job_title` varchar(50) DEFAULT NULL,
  `City` varchar(50) NOT NULL,
  `Region` varchar(50) NOT NULL,
  `Zip_code` int DEFAULT NULL,
  `Manager` int DEFAULT NULL,
  `Branch_Number` int DEFAULT NULL,
  PRIMARY KEY (`SSN`),
  UNIQUE KEY `Mobile` (`Mobile`),
  UNIQUE KEY `Zip_code` (`Zip_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (1669195,'Yousef','Al-Otabi',3500,'2022-05-25','1996-06-09','057820942','Casheir','Madinah','Madinah',38268,401244140,1002),(159509646,'Basma','Al-Sharif',4500,'2021-09-22','1998-02-21','056372537','Book Seller','Makkah','Makkah',29387,504274714,1001),(223312375,'Salman','Al-Ghamdi',10000,'2021-03-04','1994-06-03','054235399','Manager','dammam','Al-Sharqiya',83926,NULL,1003),(224507384,'Reem','Al-Jaghthami',4500,'2022-06-04','1999-09-10','056372992','Book Seller','dammam','Al-Sharqiya',53728,223312375,1003),(247235746,'Basma','Al-Materi',10000,'2020-06-09','1992-06-09','056283529','Manager','Al-Khobar','Al-Sharqiya',27483,NULL,1005),(248479254,'Hashim','Al-Jehani',3500,'2021-09-22','1999-09-09','057259977','Casheir','Jeddah','Makkah',34829,546755772,1004),(268407186,'Aisha','Al-Materi',3500,'2021-09-22','1998-02-21','056398890','Casheir','Makkah','Makkah',63920,504274714,1001),(319908475,'Mohamad','Al-Qahtani',5000,'2021-07-14','1998-06-20','057466378','Book Seller','Jeddah','Makkah',64738,469608485,1000),(401244140,'Aisha','Al-Jehani',10000,'2021-05-10','1998-05-11','058976388','Manager','Madinah','Madinah',65387,NULL,1002),(409504111,'Essa','Al-Qahtani',4500,'2021-02-18','1993-05-09','058972533','Book Seller','Jeddah','Makkah',39282,546755772,1004),(449825046,'Ahmed','Al-Qahtani',4500,'2022-02-02','1999-10-10','058925544','Book Seller','Al-Khobar','Al-Sharqiya',92836,247235746,1005),(469608485,'Sarah','Al-Otabi',9500,'2022-07-20','1999-01-20','054872746','Manager','Jeddah','Makkah',26889,NULL,1000),(503708396,'Mona','Al-Ghamdi',5000,'2022-03-19','1993-04-20','056735224','Book Seller','Jeddah','Makkah',74822,546755772,1004),(504274714,'Ahmed','Al-Sharif',10000,'2020-07-20','1995-08-20','057862876','Manager','Makkah','Makkah',67352,NULL,1001),(506849675,'Nadia','Al-Sharif',4000,'2021-10-08','2000-09-19','058946633','Book Seller','Al-Khobar','Al-Sharqiya',25379,247235746,1005),(517624186,'Jumana','Al-Jehani',4000,'2020-08-08','1999-06-15','056388265','Book Seller','Madinah','Madinah',29187,401244140,1002),(517766824,'Saud','Al-Materi',5000,'2021-08-20','1994-08-21','057367355','Book Seller','Makkah','Makkah',38200,504274714,1001),(519174137,'Basal','Al-Qahtani',5000,'2022-09-08','1997-06-11','056783553','Book Seller','dammam','Al-Sharqiya',82376,223312375,1003),(526095307,'Ahmed','Al-Materi',4500,'2021-07-25','1993-09-06','056778263','Book Seller','Madinah','Madinah',63822,401244140,1002),(527140906,'Talah','Al-Materi',4000,'2020-09-10','2000-04-04','056735266','Casheir','dammam','Al-Sharqiya',93826,223312375,1003),(540721631,'Hazam','Al-Otabi',3500,'2021-10-20','1995-10-08','052335634','Casheir','Al-Khobar','Al-Sharqiya',63729,247235746,1005),(546755772,'Saadaldean','Al-Sharif',15000,'2019-05-10','1990-09-14','056382266','Manager','Jeddah','Makkah',73564,NULL,1004),(585796557,'Bushra','Al-Ghamdi',4500,'2022-06-04','1999-09-10','057367365','Book Seller','Jeddah','Makkah',64735,469608485,1000),(680664320,'Rahma','Al-Sharif',4000,'2021-05-09','2002-05-30','053467722','Casheir','Jeddah','Makkah',74832,469608485,1000);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVENTORY`
--

DROP TABLE IF EXISTS `INVENTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INVENTORY` (
  `BRANCH` int NOT NULL,
  `BOOK` varchar(13) NOT NULL,
  `QUANTITY` int DEFAULT NULL,
  PRIMARY KEY (`BRANCH`,`BOOK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVENTORY`
--

LOCK TABLES `INVENTORY` WRITE;
/*!40000 ALTER TABLE `INVENTORY` DISABLE KEYS */;
INSERT INTO `INVENTORY` VALUES (1000,'0061687456',500),(1000,'0062315005',372),(1000,'0140167773',300),(1000,'0441172717',365),(1000,'0525522891',538),(1000,'0525559477',836),(1000,'0525559493',352),(1000,'0593189647',500),(1000,'0593356179',726),(1000,'0735211299',1000),(1000,'0743273567',907),(1000,'1101934743',937),(1000,'125030170X',600),(1000,'1400031702',783),(1000,'1476730598',926),(1000,'1476746583',536),(1000,'1501161938',900),(1000,'1982136456',677),(1001,'0061687456',483),(1001,'0062315005',NULL),(1001,'0140167773',401),(1001,'0441172717',694),(1001,'0525522891',590),(1001,'0525559477',362),(1001,'0525559493',589),(1001,'0593189647',368),(1001,'0593356179',539),(1001,'0735211299',NULL),(1001,'0743273567',948),(1001,'1101934743',459),(1001,'125030170X',1000),(1001,'1400031702',511),(1001,'1476730598',923),(1001,'1476746583',604),(1001,'1501161938',400),(1001,'1982136456',488),(1002,'0061687456',583),(1002,'0062315005',900),(1002,'0140167773',1000),(1002,'0441172717',847),(1002,'0525522891',NULL),(1002,'0525559477',NULL),(1002,'0525559493',684),(1002,'0593189647',NULL),(1002,'0593356179',690),(1002,'0735211299',579),(1002,'0743273567',579),(1002,'1101934743',500),(1002,'125030170X',490),(1002,'1400031702',900),(1002,'1476730598',593),(1002,'1476746583',580),(1002,'1501161938',382),(1002,'1982136456',900),(1003,'0061687456',NULL),(1003,'0062315005',472),(1003,'0140167773',439),(1003,'0441172717',600),(1003,'0525522891',320),(1003,'0525559477',489),(1003,'0525559493',500),(1003,'0593189647',209),(1003,'0593356179',748),(1003,'0735211299',839),(1003,'0743273567',590),(1003,'1101934743',589),(1003,'125030170X',NULL),(1003,'1400031702',894),(1003,'1476730598',NULL),(1003,'1476746583',499),(1003,'1501161938',100),(1003,'1982136456',1000),(1004,'0061687456',589),(1004,'0062315005',379),(1004,'0140167773',379),(1004,'0441172717',30),(1004,'0525522891',59),(1004,'0525559477',30),(1004,'0525559493',NULL),(1004,'0593189647',390),(1004,'0593356179',589),(1004,'0735211299',504),(1004,'0743273567',590),(1004,'1101934743',NULL),(1004,'125030170X',70),(1004,'1400031702',50),(1004,'1476730598',400),(1004,'1476746583',389),(1004,'1501161938',590),(1004,'1982136456',1000),(1005,'0061687456',590),(1005,'0062315005',100),(1005,'0140167773',378),(1005,'0441172717',578),(1005,'0525522891',890),(1005,'0525559477',478),(1005,'0525559493',590),(1005,'0593189647',NULL),(1005,'0593356179',1000),(1005,'0735211299',NULL),(1005,'0743273567',500),(1005,'1101934743',600),(1005,'125030170X',489),(1005,'1400031702',590),(1005,'1476730598',389),(1005,'1476746583',790),(1005,'1501161938',50),(1005,'1982136456',50);
/*!40000 ALTER TABLE `INVENTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PUBLISHER`
--

DROP TABLE IF EXISTS `PUBLISHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PUBLISHER` (
  `ID` int NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PUBLISHER`
--

LOCK TABLES `PUBLISHER` WRITE;
/*!40000 ALTER TABLE `PUBLISHER` DISABLE KEYS */;
INSERT INTO `PUBLISHER` VALUES (855990739,'Ace'),(238909536,'Alfred A Knopf'),(768170420,'Avery'),(10010590,'Ballantine Books'),(998160136,'Celadon Books'),(575839059,'Ember'),(401304295,'HarperOne'),(13809614,'Penguin Books'),(331896931,'Penguin Random House'),(961406827,'Simon & Schuster'),(486477691,'Viking'),(897387268,'Washington Square Press');
/*!40000 ALTER TABLE `PUBLISHER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PURCHASE`
--

DROP TABLE IF EXISTS `PURCHASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PURCHASE` (
  `ID` int NOT NULL,
  `BOOK` varchar(13) NOT NULL,
  `CUSTOMER` int NOT NULL,
  `PAYMENT_TYPE` varchar(100) DEFAULT NULL,
  `QUANTITY` int DEFAULT NULL,
  `DATE_PURCHASE` date DEFAULT NULL,
  PRIMARY KEY (`ID`,`BOOK`,`CUSTOMER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PURCHASE`
--

LOCK TABLES `PURCHASE` WRITE;
/*!40000 ALTER TABLE `PURCHASE` DISABLE KEYS */;
INSERT INTO `PURCHASE` VALUES (563195,'0061687456',906493897,'Credit Card',2,'2022-01-04'),(563195,'0441172717',906493897,'Credit Card',1,'2022-01-04'),(33852161,'0062315005',129652959,'Credit Card',1,'2022-01-04'),(33852161,'0735211299',129652959,'Credit Card',1,'2022-01-04'),(33852161,'1501161938',129652959,'Credit Card',1,'2022-01-04'),(41364109,'0525559493',392125624,'Credit Card',2,'2022-02-10'),(41364109,'1101934743',392125624,'Credit Card',1,'2022-02-10'),(48613066,'0593356179',635744267,'Credit Card',1,'2022-03-15'),(48613066,'1476730598',635744267,'Credit Card',2,'2022-03-15'),(159965422,'0441172717',635744267,'Credit Card',2,'2022-05-20'),(254916176,'0593356179',831088869,'Credit Card',1,'2022-02-05'),(383887561,'0743273567',912157543,'Cash',2,'2022-01-04'),(407594343,'1400031702',906493897,'Credit Card',1,'2022-05-05'),(553801582,'0441172717',831088869,'Credit Card',1,'2022-03-15'),(628692633,'0441172717',912157543,'Credit Card',1,'2021-12-01'),(940922391,'1476746583',912157543,'Credit Card',1,'2022-06-05'),(960465719,'0062315005',392125624,'Cash',1,'2022-01-04'),(994970486,'1476730598',831088869,'Credit Card',1,'2022-01-04');
/*!40000 ALTER TABLE `PURCHASE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
