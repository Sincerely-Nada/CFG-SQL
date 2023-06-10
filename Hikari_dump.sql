-- MySQL dump 10.13  Distrib 8.0.32, for macos13 (arm64)
--
-- Host: localhost    Database: HikariSkin
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
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `Customer_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Phone` char(20) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Street` varchar(50) DEFAULT NULL,
  `Post_code` char(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (140,'Nada','Laurent','07413046736','Nada.Laurent@gmail.com','14 Autumn Close ','SL1 5DH','Slough','United Kingdom'),(150,'Ichiko','Aoba','+8186-311-9642','Ichiko.Aoba@gmail.com','Kannana-dori Avenue','176-0011','Tokyo','Japan'),(160,'Hannah','Baker','07413078908','Hannah.Baker@gmail.com','9 Alexander Road','SSW23 0DH','London','United Kingdom'),(170,'Emily','Roberts','07712 345678','Emily.Roberts@gmail.com','8 Maple Court',' M16 9WQ','Manchester','United Kingdom'),(180,'Olivia','Wilde','07945 678901','Oliva.Wilde@gmail.com','32 Birch Avenue','M20 6NZ','Manchester','United Kingdom'),(190,'Kenji','Tanaka','+81 90-5678-9012','Kenji.Tanaka@gmail.com','5 Higashi Kanda','101-0031','Tokyo','Japan'),(200,'Sora','Ito','+81 90-8901-2345','Sora.Ito@gmail.com','1 Ueno Park','600-8093','Kyoto','Japan'),(210,'Mei','Yamazaki','+81 90-0123-4567','Mei.Yamazaki@gmail.com','8 Ryogoku','602-8206','Kyoto','Japan');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employees` (
  `Employee_ID` int NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Phone` char(20) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Street` varchar(50) DEFAULT NULL,
  `Post_code` char(50) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `Position` varchar(20) DEFAULT NULL,
  `Birthday_date` date DEFAULT NULL,
  `Store_Location` varchar(20) DEFAULT NULL,
  `Store_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `Stores` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (7100,'Josh','Lorenz','07628183227','Josh.Lorenz@gmail.com','1 Green Lane','N81 0YR','London','United Kingdom','Manager','1987-02-12','London',400),(7110,'Maria','Santana','07622283227','Maria.Santana@gmail.com','12 Chester Road','E14 5JY','London','United Kingdom','Assistant','1992-06-18','London',400),(7120,'Temi','Ali','0779017483','Temi.Ali@gmail.com','62 Princess St','M1C 5CY','Mancheser','United Kingdom','Manager','1979-03-21','Manchester',420),(7130,'Nia','Romero','07858596842','Nia.Romero@gmail.com','96 Peter St','M5Y 4LD','Manchester','United Kingdom','Consultant','1988-08-08','Manchester',420),(7140,'Mura','Sayri','+81114384170','Mura.Sayri@gmail.com','398 Shimokoriyama','179-0074','Tokyo','Japan','Manager','1993-07-27','Japan',440),(7150,'Keiichi','Tanabe','+81354155245','Keiichi.Tanabe@gmail.com','Fuji-kaido Avenue','177-0032','Tokyo','Japan','Manager','2000-03-30','Kyoto',460),(7160,'Kiyoko','Mari','+8219672315','Kiyoko.Mari@gmail.com','1070 Kojincho','71789','Kyoto','Japan','Facial specialist','1998-05-03','Kyoto',460),(7170,'Jhene','Aiko','+8115-736-2412','Jhene.Aiko@gmail.com','1074 Sonobecho Kawaramachi','Japan','71789','Kyoto','Dermatolgist','1999-05-03','Tokyo',440);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `order_details1`
--

DROP TABLE IF EXISTS `order_details1`;
/*!50001 DROP VIEW IF EXISTS `order_details1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_details1` AS SELECT 
 1 AS `Order_ID`,
 1 AS `Quantity`,
 1 AS `Order_Status`,
 1 AS `Order_Date`,
 1 AS `Shipping_Date`,
 1 AS `Product_Name`,
 1 AS `Product_Price`,
 1 AS `Store_Name`,
 1 AS `Email`,
 1 AS `Street`,
 1 AS `Post_code`,
 1 AS `City`,
 1 AS `Country`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `Order_ID` int NOT NULL AUTO_INCREMENT,
  `Quantity` int NOT NULL,
  `Order_Status` varchar(10) NOT NULL,
  `Order_Date` timestamp NOT NULL,
  `Shipping_Date` timestamp NOT NULL,
  `Product_ID` int NOT NULL,
  `Customer_ID` int NOT NULL,
  `Customer_Last_Name` varchar(20) NOT NULL,
  `Store_ID` int NOT NULL,
  PRIMARY KEY (`Order_ID`),
  UNIQUE KEY `Order_ID` (`Order_ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Store_ID` (`Store_ID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `Products` (`Product_ID`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `Customers` (`Customer_ID`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Store_ID`) REFERENCES `Stores` (`Store_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (111,5,'PAID','2023-05-30 14:14:52','2023-05-30 14:14:52',2,140,'Laurent',400),(112,7,'Pending','2023-05-30 14:14:52','2023-05-30 14:14:52',3,190,'Tanaka',440),(113,4,'Pending','2023-05-30 14:14:52','2023-05-30 14:14:52',5,170,'Roberts',420),(114,2,'PAID','2023-05-30 14:14:52','2023-05-30 14:14:52',8,200,'Ito',460),(116,3,'PAID','2023-05-30 14:14:52','2023-05-30 14:14:52',10,160,'Baker',400),(117,2,'Pending','2023-05-30 14:14:52','2023-05-30 14:14:52',9,150,'Aoba',440),(118,1,'PAID','2023-05-30 14:14:52','2023-05-30 14:14:52',1,210,'Yamazaki',460);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `Product_ID` int NOT NULL AUTO_INCREMENT,
  `Product_Name` varchar(20) NOT NULL,
  `Product_Price` decimal(6,2) DEFAULT NULL,
  `Barcode` int NOT NULL,
  `Customer_ID` int DEFAULT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (1,'Moisturizer',25.99,21334698,NULL),(2,'Sunscreen',23.00,21334698,NULL),(3,'Eye Cream',19.00,43922077,NULL),(4,'Cleanser',21.50,28319525,NULL),(5,'Exfoliator',24.50,64144003,NULL),(6,'Chemical Peel',27.50,52225325,NULL),(7,'Serum',39.90,52609165,NULL),(8,'Face Oil',23.90,52609165,NULL),(9,'Toner',22.99,9246613,NULL),(10,'Face Mask',15.90,84474627,NULL);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stores`
--

DROP TABLE IF EXISTS `Stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Stores` (
  `Store_ID` int NOT NULL AUTO_INCREMENT,
  `Store_Name` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Street` varchar(30) NOT NULL,
  `Post_code` char(20) DEFAULT NULL,
  `City` varchar(30) NOT NULL,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`Store_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stores`
--

LOCK TABLES `Stores` WRITE;
/*!40000 ALTER TABLE `Stores` DISABLE KEYS */;
INSERT INTO `Stores` VALUES (400,'Hikari London','Hikari.London@HSKIN.com','10 OXford Street','W1D 1BS','London','United Kingdom'),(420,'Hikari Manchester','Hikari.Manc@HSKIN.com','1 Exchange Square Central','M3 1BD','Manchester','United Kingdom'),(440,'Hikari Tokyo','Hikari.Tokyo@HSKIN.com','Senkawa-dori Avenue','176-0006','Tokyo','Japan'),(460,'Hikari Kyoto','Hikari.Kyoto@HSKIN.com','1 Nishikujo Toriiguchicho','601-8417','Kyoto','Japan');
/*!40000 ALTER TABLE `Stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'HikariSkin'
--
/*!50003 DROP FUNCTION IF EXISTS `GetTotalEmployees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTotalEmployees`(storeID INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE totalEmployees INT;

    SELECT COUNT(*) INTO totalEmployees
    FROM Employees
    WHERE Store_ID = storeID;

    RETURN totalEmployees;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `order_details1`
--

/*!50001 DROP VIEW IF EXISTS `order_details1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_details1` AS select `O`.`Order_ID` AS `Order_ID`,`O`.`Quantity` AS `Quantity`,`O`.`Order_Status` AS `Order_Status`,`O`.`Order_Date` AS `Order_Date`,`O`.`Shipping_Date` AS `Shipping_Date`,`P`.`Product_Name` AS `Product_Name`,`P`.`Product_Price` AS `Product_Price`,`S`.`Store_Name` AS `Store_Name`,`S`.`Email` AS `Email`,`S`.`Street` AS `Street`,`S`.`Post_code` AS `Post_code`,`S`.`City` AS `City`,`S`.`Country` AS `Country` from (((`orders` `O` join `products` `P` on((`O`.`Product_ID` = `P`.`Product_ID`))) join `customers` `C` on((`O`.`Customer_ID` = `C`.`Customer_ID`))) join `stores` `S` on((`O`.`Store_ID` = `S`.`Store_ID`))) */;
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

-- Dump completed on 2023-05-30 17:46:01
