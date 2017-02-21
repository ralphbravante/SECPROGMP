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
  `prodDesc` varchar(120) NOT NULL,
  `prodCount` int(11) NOT NULL,
  `prodPrice` float NOT NULL,
  `prodRestockDateTime` varchar(45) NOT NULL,
  PRIMARY KEY (`prodID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
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
  `prodTypeName` varchar(45) NOT NULL,
  `userRefNo` int(11) NOT NULL,
  PRIMARY KEY (`prodTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
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
  `userRefNo` int(11) DEFAULT NULL,
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
  `userAttemptCount` int(11) DEFAULT NULL,
  `userAttemptDate` varchar(45) DEFAULT NULL,
  `userEditDateTime` varchar(45) DEFAULT NULL,
  `userContactNum` varchar(11) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `userUsername_UNIQUE` (`userUsername`),
  UNIQUE KEY `userEmail_UNIQUE` (`userEmail`),
  UNIQUE KEY `userRefNo_UNIQUE` (`userRefNo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (NULL,5,'Bravante','Jason','S','jasonhenry','8cb2237d0679ca88db6464eac60da96345513964','jason@yahoo.com','0333 Batanes Street Sampaloc Manila','0333 Batanes Street Sampaloc Manila',NULL,1,0,NULL,NULL,'09359719727'),(NULL,7,'Javier','Doroty','S','doroti','5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8','doroti@yahoo.com','0333 Batanes Street Sampaloc Manila','0333 Batanes Street Sampaloc Manila',NULL,2,0,'2017-02-22 00:24:58',NULL,'09359719727'),(NULL,8,'Cruz','Juan','A','iamjuan','b49a5780a99ea81284fc0746a78f84a30e4d5c73','juanandonly@gmail','gslkahlashldhalhdlad','ahdshldasldhasl',NULL,1,NULL,NULL,NULL,'ddddddddd'),(NULL,9,'x','x','x','x','11f6ad8ec52a2984abaafd7c3b516503785c2072','x@z','x','x',NULL,1,0,NULL,NULL,'x'),(NULL,10,'john','wwwww','d','qwe','da39a3ee5e6b4b0d3255bfef95601890afd80709','','','',NULL,1,NULL,NULL,NULL,''),(NULL,11,'john','doe','D','john','a51dda7c7ff50b61eaea0444371f4a6a9301e501','john@doe.com','john','john',NULL,1,0,NULL,NULL,'john'),(NULL,12,'ad','asd','s','asd','85136c79cbf9fe36bb9d05d0639c70c265c18d37','asdf@asdfaf.adfd','asdf','ssdf',0,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','123123'),(NULL,16,'qqq','qqqq','q','qqq','c6efae9869218c6d45b92a3090bce129f27c070d','qqq@q','2312312312','2131231232312312',0,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','09359719727');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'Customer'),(2,'Book Manager'),(3,'CD Manager'),(4,'DVD Manager'),(5,'Magazine Manager'),(6,'Admin');
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

-- Dump completed on 2017-02-22  0:45:00
