-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: secprog
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `cardID` int(11) NOT NULL AUTO_INCREMENT,
  `cardNo` int(11) NOT NULL,
  `cardOwner` varchar(45) NOT NULL,
  `cardExp` varchar(45) NOT NULL,
  `cardType` varchar(12) NOT NULL,
  PRIMARY KEY (`cardID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financialinfo`
--

DROP TABLE IF EXISTS `financialinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financialinfo` (
  `finID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseID` int(11) NOT NULL,
  PRIMARY KEY (`finID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financialinfo`
--

LOCK TABLES `financialinfo` WRITE;
/*!40000 ALTER TABLE `financialinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `financialinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `prodID` int(11) NOT NULL AUTO_INCREMENT,
  `prodName` varchar(45) NOT NULL,
  `prodType` varchar(45) NOT NULL,
  `prodDesc` varchar(1000) NOT NULL,
  `prodAuthor` varchar(45) DEFAULT NULL,
  `prodCount` int(6) NOT NULL,
  `prodPrice` float NOT NULL,
  `prodRestockDateTime` varchar(45) NOT NULL,
  PRIMARY KEY (`prodID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Management101','manage mo to','book 13123 .... `` as;ldkfasd;fkj',NULL,1234,7.99,'2017-03-15 12:52:52'),(2,'Ralph','BIDYO','This is a file beach.',NULL,120,120.99,'2017-03-27 13:46:25'),(3,'ralph','BIDYO','ASDLF\';KJSF\'G;SKF;ALSDF',NULL,99,121212,'2017-03-27 13:47:04'),(4,'ralph','BIDYO','ASDLF\';KJSF\'G;SKF;ALSDF',NULL,99,121212,'2017-03-27 14:32:27'),(5,'ralph','BIDYO','ASDLF\';KJSF\'G;SKF;ALSDF',NULL,99,121212,'2017-03-27 14:32:39'),(6,'Harry Potter','BIDYO','This is a wonderful filled with store',NULL,2,699.5,'2017-03-27 14:39:50'),(7,'Harry Potter','BIDYO','This is a wonderful filled with store',NULL,2,699.5,'2017-03-27 15:20:40'),(8,'Harry Potter','BIDYO','This is a wonderful filled with store',NULL,2,699.5,'2017-03-27 15:20:41'),(9,'Harry Potter','BIDYO','This is a wonderful filled with store',NULL,2,699.5,'2017-03-27 15:20:42'),(10,'Harry Potter','BIDYO','This is a wonderful filled with store',NULL,2,699.5,'2017-03-27 15:20:42'),(11,'Harry Potter','BIDYO','This is a wonderful filled with store',NULL,2,699.5,'2017-03-27 15:20:42'),(12,'KAMASUTRA','BIDYO','This is a book about wonderful things.',NULL,12,149.99,'2017-03-28 10:12:40'),(13,'KamaMoTo','BIDYO','This is a book about MoTo.',NULL,15,168.99,'2017-03-28 10:13:15'),(14,'KamaMoTo','BIDYO','This is a book about MoTo.',NULL,15,168.99,'2017-03-28 10:13:25'),(15,'KamaMoTo','BIDYO','This is a book about MoTo.',NULL,15,168.99,'2017-03-28 10:13:28'),(16,'KamaMoTo','BIDYO','This is a book about MoTo.',NULL,15,168.99,'2017-03-28 10:13:32'),(17,'MoToMoTo','BIDYO','This is the most wonderful book.',NULL,200,3000,'2017-03-28 10:15:54'),(18,'The book about books','BIDYO','This is the most wonderful time of the year baby. ',NULL,150,3000,'2017-03-28 10:16:57'),(19,'I Wish i Can fly','BIDYO','The book about flying in your dreams.',NULL,300,1499.99,'2017-03-28 10:17:44'),(20,'CNN','BIDYO','The most wonderful time of CNN witnessed here.','CNN Pholippines',0,599.5,'2017-03-28 10:41:28');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producttype` (
  `prodTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `prodType` varchar(45) NOT NULL,
  `prodDesc` varchar(45) NOT NULL,
  PRIMARY KEY (`prodTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES (1,0,'Books','super cool books brodies'),(2,0,'Magazines','COOOOOOOOOOOOOOOL'),(3,0,'cd','cd'),(4,23,'audio','audio stuff'),(5,35,'BIDYO','dis konteyns bidyo '),(6,35,'BIDYO','dis konteyns bidyo '),(7,35,'BIDYO','dis konteyns bidyo '),(8,35,'BIDYO','dis konteyns bidyo '),(9,35,'BIDYO','dis konteyns bidyo '),(10,35,'BIDYO','dis konteyns bidyo '),(11,35,'BIDYO','dis konteyns bidyo '),(12,35,'BIDYO','dis konteyns bidyo '),(13,35,'BIDYO','dis konteyns bidyo '),(14,35,'BIDYO','dis konteyns bidyo '),(15,35,'BIDYO','dis konteyns bidyo '),(16,35,'BIDYO','dis konteyns bidyo '),(17,35,'BIDYO','dis konteyns bidyo '),(18,35,'BIDYO','dis konteyns bidyo '),(19,35,'BIDYO','dis konteyns bidyo '),(20,-1,'musix','sound for all'),(21,-1,'type ito','adfasdfasdfasdfasdf'),(22,-1,'11111','22222'),(23,-1,'kutson','sarapa matulog'),(24,-1,'kutson','sarapa matulog'),(25,-1,'baby','fffffff'),(26,-1,'assss','asdfasfawerqwerqwfasgsdhasfawdfasdf'),(27,-1,'assss','asdfasfawerqwerqwfasgsdhasfawdfasdf'),(28,-1,'assss','asdfasfawerqwerqwfasgsdhasfawdfasdf'),(29,-1,'asdfasdfasdfasfd','21234123123'),(30,28,'123123123','asdfsafasdf'),(31,28,'123123123','asdfsafasdf'),(32,28,'123123123','asdfsafasdf'),(33,31,'manage mo to','qwesadfasdfasdf');
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL AUTO_INCREMENT,
  `prodID` int(11) NOT NULL,
  `purchaseProdQty` int(11) NOT NULL,
  `userRefNo` int(11) NOT NULL,
  `purchaseDateTime` datetime NOT NULL,
  PRIMARY KEY (`purchaseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `reviewID` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseID` int(11) NOT NULL,
  `reviewText` varchar(45) NOT NULL,
  `reviewDateTime` datetime NOT NULL,
  PRIMARY KEY (`reviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userLast` varchar(45) NOT NULL,
  `userFirst` varchar(45) NOT NULL,
  `userMI` varchar(1) NOT NULL,
  `userUsername` varchar(45) NOT NULL,
  `userPassword` varchar(45) NOT NULL,
  `userEmail` varchar(45) NOT NULL,
  `userBillingAdd` varchar(45) DEFAULT NULL,
  `userDeliveryAdd` varchar(45) DEFAULT NULL,
  `userStatus` int(1) DEFAULT NULL,
  `userTypeID` int(1) NOT NULL,
  `userEditDateTime` varchar(45) DEFAULT NULL,
  `userContactNum` varchar(11) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `userUsername_UNIQUE` (`userUsername`),
  UNIQUE KEY `userEmail_UNIQUE` (`userEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (5,'Bravante','Jason','S','jasonhenry','8cb2237d0679ca88db6464eac60da96345513964','jason@yahoo.com','0333 Batanes Street Sampaloc Manila','0333 Batanes Street Sampaloc Manila',0,1,NULL,'09359719727'),(7,'Javier','Doroty','S','doroti','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','doroti@yahoo.com','0333 Batanes Street Sampaloc Manila','0333 Batanes Street Sampaloc Manila',0,2,NULL,'09359719727'),(8,'Cruz','Juan','A','iamjuan','b49a5780a99ea81284fc0746a78f84a30e4d5c73','juanandonly@gmail','gslkahlashldhalhdlad','ahdshldasldhasl',0,1,NULL,'ddddddddd'),(9,'x','x','x','x','11f6ad8ec52a2984abaafd7c3b516503785c2072','x@z','x','x',0,1,NULL,'x'),(10,'john','wwwww','d','qwe','da39a3ee5e6b4b0d3255bfef95601890afd80709','','','',0,1,NULL,''),(11,'john','doe','D','john','a51dda7c7ff50b61eaea0444371f4a6a9301e501','john@doe.com','john','john',0,1,NULL,'john'),(12,'ad','asd','s','asd','85136c79cbf9fe36bb9d05d0639c70c265c18d37','asdf@asdfaf.adfd','asdf','ssdf',0,1,'0000-00-00 00:00:00','123123'),(16,'qqq','qqqq','q','qqq','c6efae9869218c6d45b92a3090bce129f27c070d','qqq@q','2312312312','2131231232312312',0,1,'0000-00-00 00:00:00','09359719727'),(20,'Miguel','Miguel','M','miguel','75004f149038473757da0be07ef76dd4a9bdbc8d','miguel@miguel.miguel','miguel','miguel',0,2,'2017-02-25 19:14:34','123'),(21,'q','q','q','q','fa6977c99b809db68e1c56888ec38bd004719b39','q@q.q','q','q',0,1,'2017-02-25 19:16:45','1'),(22,'g','g','g','gggggg','13f566a247aaf7dfd9cf0c8fa1ac5b140045f10a','g@g.g','gggggg','gggggg',0,1,'2017-03-06 00:21:17','1'),(23,'b','b','b','b','683cbc48d46dd13a43208b89fdc58c0598bea276','b@b.b',NULL,NULL,0,4,'2017-03-15 15:31:50','1'),(24,'Sisonasd','Iksasd','S','iks','14f046044ddfcbd0bfdd538193004c1cded0ad2c','iks@yahoo.com','113 malate manilaasd','112 malate manilaadsss',1,1,'2017-03-15 09:53:33','09876543212'),(26,'nosaj1123','etnavarb1234','s','nosaj','801ec9c7ec7afb42ad1bef38c0de2620c2a84909','nosaj@oohay.mocdddfd','0740 makati philippines','0738 malate manilaasdfasdf',1,2,'2017-03-15 09:50:50','09999212342'),(28,'Bravante','Jeffrey','S','jeffrey','d3ba02952bf2648c75820245a240101a4f42190d','jeffrey@yahoo.com',NULL,NULL,0,4,'2017-03-06 04:48:39','09359719723'),(31,'Serafica','Christian','S','christian','ace8f7efb297770298adbf2f142e774e624bb2d9','christian@yahoo.com',NULL,NULL,0,4,'2017-03-06 04:52:10','0935992112'),(35,'etnavarb','hplar','S','hplar','167c2f37b341013df338f9663ab1fec1b8123d49','hplar@yahoo.com',NULL,NULL,0,4,'2017-03-06 04:53:21','0921234532'),(36,'Javier','Francheska','V','francheska','473e304ca562398064889907e1d2da19a4575d57','francheska@yahoo.com',NULL,NULL,1,4,'2017-03-14 23:10:54','09876543211'),(37,'Ramos','JOshua','A','joshua','8f0da62ccf5a95a280d4fb96ee918ee599e26949','joshua@yahoo.com','joshua street','joshua street',0,3,'2017-03-15 14:00:04','09359719727'),(38,'Grande','Alexander','S','alexander','bd9306dfca6988ace17fa30b553df11530b8e8f0','alexander@yahoo.com.ph','La Presa, Benguet Philippines','La Presa, Benguet Philippines',0,1,'2017-03-27 08:24:03','09179872123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogins`
--

DROP TABLE IF EXISTS `userlogins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlogins` (
  `loginID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `loginTimeStamp` varchar(45) NOT NULL,
  `userAttemptCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`loginID`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogins`
--

LOCK TABLES `userlogins` WRITE;
/*!40000 ALTER TABLE `userlogins` DISABLE KEYS */;
INSERT INTO `userlogins` VALUES (1,7,'Success','2017-02-25 17:25:32',0),(2,7,'Success','2017-02-25 17:26:07',0),(3,7,'Success','2017-02-25 18:23:26',0),(4,7,'Success','2017-02-25 18:49:57',0),(5,7,'Failed','2017-02-25 18:59:05',0),(6,7,'Failed','2017-02-25 19:00:40',0),(7,7,'Failed','2017-02-25 19:01:36',1),(8,7,'Failed','2017-02-25 19:02:03',2),(9,7,'Failed','2017-02-25 19:04:28',3),(10,7,'Success','2017-02-25 19:06:17',0),(11,21,'Success','2017-02-25 19:16:45',0),(12,7,'Success','2017-03-01 12:57:16',0),(13,21,'Failed','2017-03-01 13:03:45',1),(14,7,'Success','2017-03-01 13:04:24',0),(15,20,'Success','2017-03-01 13:05:08',0),(16,20,'Success','2017-03-01 13:17:28',0),(17,20,'Success','2017-03-01 13:18:03',0),(18,20,'Success','2017-03-01 14:32:30',0),(19,20,'Failed','2017-03-01 14:35:18',1),(20,20,'Success','2017-03-01 14:35:37',0),(21,20,'Success','2017-03-01 14:37:26',0),(22,20,'Success','2017-03-01 14:42:36',0),(23,20,'Success','2017-03-01 14:43:01',0),(24,20,'Success','2017-03-01 14:44:59',0),(25,20,'Success','2017-03-01 14:47:16',0),(26,20,'Success','2017-03-01 14:50:28',0),(27,20,'Success','2017-03-01 15:01:23',0),(28,20,'Success','2017-03-01 15:02:40',0),(29,20,'Success','2017-03-01 15:06:58',0),(30,20,'Success','2017-03-01 15:11:04',0),(31,20,'Success','2017-03-01 15:12:43',0),(32,20,'Success','2017-03-01 15:21:02',0),(33,20,'Success','2017-03-01 15:21:54',0),(34,20,'Success','2017-03-01 15:24:24',0),(35,20,'Success','2017-03-01 15:24:58',0),(36,20,'Success','2017-03-01 15:25:48',0),(37,20,'Success','2017-03-01 15:32:05',0),(38,7,'Success','2017-03-05 23:04:05',0),(39,20,'Success','2017-03-05 23:09:42',0),(40,7,'Success','2017-03-05 23:10:07',0),(41,20,'Success','2017-03-05 23:10:34',0),(42,20,'Failed','2017-03-05 23:12:54',1),(43,20,'Failed','2017-03-05 23:13:06',2),(44,20,'Success','2017-03-05 23:13:16',0),(45,20,'Failed','2017-03-05 23:13:28',1),(46,20,'Success','2017-03-05 23:13:53',0),(47,20,'Success','2017-03-05 23:30:26',0),(48,20,'Success','2017-03-06 00:02:07',0),(49,20,'Success','2017-03-06 00:04:08',0),(50,20,'Success','2017-03-06 00:05:32',0),(51,22,'Success','2017-03-06 00:21:17',0),(52,22,'Failed','2017-03-06 00:21:35',1),(53,20,'Success','2017-03-06 01:31:58',0),(54,20,'Success','2017-03-06 01:32:59',0),(55,20,'Success','2017-03-06 01:34:06',0),(56,20,'Success','2017-03-06 01:34:55',0),(57,20,'Success','2017-03-06 01:36:47',0),(58,20,'Success','2017-03-06 01:40:33',0),(59,20,'Success','2017-03-06 01:43:31',0),(60,23,'Success','2017-03-06 01:43:43',0),(61,20,'Success','2017-03-06 01:46:58',0),(62,20,'Success','2017-03-06 02:12:16',0),(63,20,'Success','2017-03-06 02:35:50',0),(64,20,'Success','2017-03-06 02:36:17',0),(65,20,'Success','2017-03-06 02:39:12',0),(66,20,'Success','2017-03-06 02:41:02',0),(67,20,'Success','2017-03-06 02:42:16',0),(68,20,'Success','2017-03-06 02:47:39',0),(69,20,'Success','2017-03-06 02:49:01',0),(70,20,'Success','2017-03-06 02:49:32',0),(71,20,'Success','2017-03-06 02:51:23',0),(72,20,'Success','2017-03-06 03:03:25',0),(73,20,'Success','2017-03-06 03:31:03',0),(74,20,'Success','2017-03-06 03:34:47',0),(75,20,'Success','2017-03-06 03:35:48',0),(76,20,'Success','2017-03-06 03:36:58',0),(77,20,'Success','2017-03-06 03:39:00',0),(78,20,'Success','2017-03-06 03:40:46',0),(79,20,'Success','2017-03-06 03:41:20',0),(80,20,'Success','2017-03-06 03:41:57',0),(81,20,'Success','2017-03-06 03:43:30',0),(82,20,'Success','2017-03-06 03:45:02',0),(83,23,'Failed','2017-03-06 04:26:42',1),(84,24,'Success','2017-03-06 04:27:25',0),(85,26,'Success','2017-03-06 04:30:42',0),(86,24,'Success','2017-03-06 04:32:54',0),(87,24,'Success','2017-03-06 04:33:46',0),(88,7,'Success','2017-03-06 04:33:58',0),(89,7,'Success','2017-03-06 04:36:35',0),(90,26,'Success','2017-03-06 04:36:49',0),(91,7,'Success','2017-03-06 04:37:04',0),(92,7,'Success','2017-03-06 04:40:05',0),(93,7,'Success','2017-03-06 04:40:53',0),(94,26,'Success','2017-03-06 04:41:04',0),(95,28,'Success','2017-03-06 04:48:39',0),(96,31,'Success','2017-03-06 04:52:10',0),(97,35,'Success','2017-03-06 04:53:21',0),(98,7,'Success','2017-03-06 04:54:58',0),(99,26,'Success','2017-03-06 04:55:11',0),(100,26,'Success','2017-03-06 05:31:41',0),(101,26,'Success','2017-03-06 05:32:18',0),(102,26,'Success','2017-03-06 05:32:19',0),(103,26,'Success','2017-03-06 05:32:20',0),(104,26,'Success','2017-03-06 05:33:53',0),(105,26,'Success','2017-03-06 05:33:55',0),(106,26,'Success','2017-03-06 05:34:13',0),(107,26,'Success','2017-03-06 05:34:13',0),(108,26,'Success','2017-03-06 05:37:59',0),(109,26,'Success','2017-03-06 05:38:01',0),(110,26,'Success','2017-03-06 05:38:01',0),(111,26,'Success','2017-03-06 05:38:02',0),(112,26,'Success','2017-03-06 05:38:02',0),(113,26,'Success','2017-03-06 05:38:03',0),(114,26,'Success','2017-03-06 05:38:03',0),(115,26,'Success','2017-03-06 05:38:03',0),(116,26,'Success','2017-03-06 05:38:03',0),(117,26,'Success','2017-03-06 05:38:04',0),(118,26,'Success','2017-03-06 05:38:04',0),(119,26,'Success','2017-03-06 05:38:05',0),(120,26,'Success','2017-03-06 05:38:29',0),(121,26,'Success','2017-03-06 05:38:31',0),(122,26,'Success','2017-03-06 05:38:38',0),(123,26,'Success','2017-03-06 05:39:55',0),(124,26,'Success','2017-03-06 05:39:56',0),(125,26,'Success','2017-03-06 05:59:42',0),(126,26,'Success','2017-03-06 05:59:44',0),(127,26,'Success','2017-03-06 06:28:36',0),(128,26,'Success','2017-03-06 06:31:48',0),(129,7,'Success','2017-03-12 23:43:51',0),(130,7,'Success','2017-03-14 22:59:24',0),(131,7,'Success','2017-03-14 23:09:54',0),(132,36,'Success','2017-03-14 23:10:54',0),(133,7,'Success','2017-03-15 00:01:43',0),(134,31,'Success','2017-03-15 01:42:19',0),(135,31,'Failed','2017-03-15 01:43:12',1),(136,31,'Success','2017-03-15 01:43:21',0),(137,31,'Success','2017-03-15 01:53:21',0),(138,31,'Success','2017-03-15 01:53:37',0),(139,31,'Success','2017-03-15 01:53:40',0),(140,31,'Success','2017-03-15 02:04:15',0),(141,31,'Success','2017-03-15 02:09:43',0),(142,31,'Success','2017-03-15 02:10:47',0),(143,31,'Success','2017-03-15 02:14:15',0),(144,31,'Success','2017-03-15 02:16:28',0),(145,31,'Success','2017-03-15 02:16:30',0),(146,31,'Success','2017-03-15 02:20:54',0),(147,31,'Success','2017-03-15 02:22:19',0),(148,31,'Success','2017-03-15 02:22:20',0),(149,31,'Success','2017-03-15 02:23:29',0),(150,24,'Success','2017-03-15 03:16:40',0),(151,24,'Success','2017-03-15 03:30:47',0),(152,24,'Success','2017-03-15 03:30:55',0),(153,24,'Success','2017-03-15 03:32:30',0),(154,24,'Success','2017-03-15 03:34:22',0),(155,24,'Success','2017-03-15 03:35:06',0),(156,24,'Success','2017-03-15 03:36:51',0),(157,24,'Success','2017-03-15 03:37:20',0),(158,24,'Success','2017-03-15 03:38:27',0),(159,24,'Success','2017-03-15 03:39:07',0),(160,24,'Success','2017-03-15 03:39:44',0),(161,24,'Success','2017-03-15 03:40:35',0),(162,24,'Success','2017-03-15 03:42:02',0),(163,24,'Success','2017-03-15 03:45:10',0),(164,24,'Success','2017-03-15 03:57:26',0),(165,24,'Success','2017-03-15 03:58:31',0),(166,24,'Success','2017-03-15 03:58:54',0),(167,24,'Success','2017-03-15 04:00:04',0),(168,24,'Success','2017-03-15 04:01:14',0),(169,24,'Success','2017-03-15 06:03:20',0),(170,24,'Success','2017-03-15 06:06:18',0),(171,24,'Failed/Locked','2017-03-15 06:13:14',0),(172,24,'Failed/Locked','2017-03-15 06:13:28',0),(173,24,'Success','2017-03-15 07:16:08',0),(174,24,'Failed','2017-03-15 07:17:01',1),(175,24,'Failed','2017-03-15 07:17:09',2),(176,24,'Failed','2017-03-15 07:18:27',3),(177,24,'Failed','2017-03-15 07:18:38',4),(178,7,'Failed','2017-03-15 07:29:35',4),(179,7,'Failed','2017-03-15 07:32:41',5),(180,12,'asdf','123123',22),(181,24,'Failed','2017-03-15 07:43:02',5),(182,36,'Failed/Locked','2017-03-15 07:47:10',0),(183,36,'Failed/Locked','2017-03-15 07:48:24',0),(184,7,'Success','2017-03-15 07:49:09',0),(185,36,'Failed/Locked','2017-03-15 08:07:59',0),(186,24,'Success','2017-03-15 08:08:11',0),(187,26,'Failed','2017-03-15 08:09:37',1),(188,26,'Success','2017-03-15 08:09:47',0),(189,26,'Success','2017-03-15 09:17:57',0),(190,7,'Success','2017-03-15 09:28:30',0),(191,26,'Failed/Locked','2017-03-15 09:59:30',0),(192,7,'Success','2017-03-15 09:59:37',0),(193,31,'Failed','2017-03-15 10:56:01',2),(194,31,'Success','2017-03-15 10:56:17',0),(195,31,'Success','2017-03-15 11:27:54',0),(196,31,'Success','2017-03-15 11:30:18',0),(197,31,'Success','2017-03-15 11:32:02',0),(198,31,'Success','2017-03-15 12:38:57',0),(199,31,'Success','2017-03-15 12:46:42',0),(200,31,'Success','2017-03-15 12:52:06',0),(201,7,'Success','2017-03-15 13:24:45',0),(202,24,'Failed/Locked','2017-03-15 13:34:01',5),(203,7,'Success','2017-03-15 13:34:49',0),(204,24,'Failed/Locked','2017-03-15 13:57:59',5),(205,24,'Failed/Locked','2017-03-15 13:58:31',5),(206,24,'Failed/Locked','2017-03-15 13:58:41',5),(207,37,'Success','2017-03-15 14:00:04',0),(208,37,'Success','2017-03-15 14:00:11',0),(209,24,'Failed/Locked','2017-03-15 14:21:12',5),(210,31,'Failed','2017-03-15 15:12:07',3),(211,31,'Success','2017-03-15 15:12:18',0),(212,37,'Success','2017-03-15 15:13:25',0),(213,31,'Failed','2017-03-15 15:17:23',4),(214,23,'Failed','2017-03-15 15:32:01',2),(215,23,'Success','2017-03-15 15:32:12',0),(216,7,'Failed/Locked','2017-03-15 15:49:31',5),(217,7,'Failed/Locked','2017-03-15 15:50:21',5),(218,31,'Failed','2017-03-15 15:50:36',5),(219,31,'Success','2017-03-15 15:50:57',0),(220,38,'Success','2017-03-27 08:24:16',0),(221,35,'Success','2017-03-27 13:25:41',0),(222,35,'Success','2017-03-27 14:33:20',0),(223,35,'Success','2017-03-27 14:34:43',0),(224,35,'Success','2017-03-27 14:35:01',0),(225,7,'Failed/Locked','2017-03-27 14:48:43',5),(226,7,'Success','2017-03-27 14:49:46',0),(227,35,'Success','2017-03-27 15:04:56',0),(228,38,'Success','2017-03-27 15:21:32',0),(229,38,'Success','2017-03-27 15:27:37',0),(230,38,'Failed','2017-03-27 15:35:20',1),(231,38,'Success','2017-03-27 15:35:29',0),(232,38,'Success','2017-03-28 06:01:04',0),(233,38,'Success','2017-03-28 06:02:19',0),(234,38,'Failed','2017-03-28 06:07:28',2),(235,38,'Failed','2017-03-28 06:07:40',3),(236,38,'Failed','2017-03-28 06:07:40',4),(237,38,'Failed','2017-03-28 06:07:54',4),(238,38,'Success','2017-03-28 06:08:04',0),(239,38,'Failed','2017-03-28 06:08:48',5),(240,38,'Success','2017-03-28 06:09:09',0),(241,38,'Success','2017-03-28 06:09:27',0),(242,38,'Success','2017-03-28 06:09:42',0),(243,38,'Failed/Locked','2017-03-28 06:09:55',5),(244,38,'Failed/Locked','2017-03-28 07:04:53',0),(245,38,'Success','2017-03-28 07:05:21',0),(246,38,'Success','2017-03-28 08:33:51',0),(247,38,'Success','2017-03-28 08:37:46',0),(248,38,'Success','2017-03-28 08:59:11',0),(249,38,'Success','2017-03-28 09:00:28',0),(250,38,'Success','2017-03-28 09:01:41',0),(251,38,'Success','2017-03-28 09:22:33',0),(252,35,'Success','2017-03-28 09:33:24',0),(253,35,'Success','2017-03-28 09:33:34',0),(254,38,'Success','2017-03-28 09:37:20',0),(255,38,'Success','2017-03-28 09:37:28',0),(256,38,'Success','2017-03-28 09:39:15',0),(257,38,'Success','2017-03-28 09:41:04',0),(258,7,'Success','2017-03-28 09:42:41',0),(259,38,'Success','2017-03-28 09:42:52',0),(260,38,'Success','2017-03-28 09:43:53',0),(261,38,'Success','2017-03-28 09:45:44',0),(262,38,'Success','2017-03-28 09:47:21',0),(263,38,'Success','2017-03-28 09:48:05',0),(264,38,'Success','2017-03-28 09:48:37',0),(265,38,'Success','2017-03-28 09:51:47',0),(266,38,'Success','2017-03-28 09:54:31',0),(267,38,'Success','2017-03-28 10:09:44',0),(268,35,'Success','2017-03-28 10:12:14',0),(269,35,'Success','2017-03-28 10:15:27',0),(270,38,'Success','2017-03-28 10:18:09',0),(271,35,'Success','2017-03-28 10:40:59',0),(272,38,'Success','2017-03-28 10:41:56',0),(273,38,'Success','2017-03-28 12:07:42',0);
/*!40000 ALTER TABLE `userlogins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `userTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `userTypeKind` varchar(45) NOT NULL,
  PRIMARY KEY (`userTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'Customer'),(2,'Admin'),(3,'Financial Manager'),(4,'Product Manager');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-28 12:08:41
