-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: cloudstore
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `makinex`
--

DROP TABLE IF EXISTS `makinex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `makinex` (
  `product_name` varchar(50) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `more_info` varchar(100) NOT NULL,
  `img_link` varchar(100) NOT NULL,
  `timestamp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `makinex`
--

LOCK TABLES `makinex` WRITE;
/*!40000 ALTER TABLE `makinex` DISABLE KEYS */;
INSERT INTO `makinex` VALUES ('Powered Hand Truck','$4,995.00','Makinex',' Lifting and Loadin','https://makinex.com/product/powered-hand-truck-140/','https://makinex.com/wp-content/uploads/2017/07/powered-1.jpg','2022-07-18 09:46:14.437335'),('Hose 2 Go','$376.00','Makinex',' Surface Preparation','https://makinex.com/product/hose-2-go/','https://makinex.com/wp-content/uploads/2018/08/hose2go-1.jpg','2022-07-18 09:46:15.007493'),('Generator 9kW 240V','$8,795.00','Makinex',' Power Generation','https://makinex.com/product/generator-9kw-240v/','https://makinex.com/wp-content/uploads/2018/08/10kw.jpg','2022-07-18 09:46:15.842901'),('Lift Assist','$1,355.00','Makinex',' Surface Preparation','https://makinex.com/product/lift-assist/','https://makinex.com/wp-content/uploads/2021/08/lift-assist-product.jpg','2022-07-18 09:46:16.561391'),('Mobile Charging Pod','$3,675.00','Makinex',' Electrical & Lightin','https://makinex.com/product/mobile-charge-pod/','https://makinex.com/wp-content/uploads/2021/08/mobile-charging-pod-product.jpg','2022-07-18 09:46:17.130518'),('Jackhammer Trolly','$1,355.00','Makinex',' Surface Preparation','https://makinex.com/product/makinex-jackhammer-trolley/','https://makinex.com/wp-content/uploads/2017/07/JHT-1.jpg','2022-07-18 09:46:18.000540'),('Tile Smasher Jackhammer Attachment','$281.00','Makinex',' Surface Preparation','https://makinex.com/product/tile-smasher-jackhammer-attachment/','https://makinex.com/wp-content/uploads/2010/07/scraper.jpg','2022-07-18 09:46:18.637892'),('Dual Pressure Washer 4000psi','$4,995.00','Makinex',' Surface Cleanin','https://makinex.com/product/makinex-dual-pressure-washer-4000psi/','https://makinex.com/wp-content/uploads/2018/08/pw4000.jpg','2022-07-18 09:46:19.176473'),('Dual Pressure Washer 2500psi','$4,395.00','Makinex',' Surface Cleanin','https://makinex.com/product/makinex-dual-pressure-washer-2500psi/','https://makinex.com/wp-content/uploads/2018/08/pw2500-1.jpg','2022-07-18 09:46:19.829576'),('Mixing Station','$1,780.00','Makinex',' Surface Cleanin','https://makinex.com/product/makinex-mixing-station/','https://makinex.com/wp-content/uploads/2017/06/MS-Website-Photo.jpg','2022-07-18 09:46:20.485573'),('Floor Stripper','$2,295.00','Makinex',' Surface Preparation','https://makinex.com/product/floor-stripper/','https://makinex.com/wp-content/uploads/2019/04/makinex-floor-stripper.png','2022-07-18 09:46:21.023607'),('PHT – Forklift Attachment','$1,129.00','Makinex',' Lifting and Loadin','https://makinex.com/product/pht-forklift-attachment/','https://makinex.com/wp-content/uploads/2018/08/2forklift.jpg','2022-07-18 09:46:21.681158'),('PHT – Sling Attachment','$187.00','Makinex',' Lifting and Loadin','https://makinex.com/product/sling-attachment/','https://makinex.com/wp-content/uploads/2018/08/strap.jpg','2022-07-18 09:46:22.378179'),('PHT – Strap Frame Attachment','$338.00','Makinex',' Lifting and Loadin','https://makinex.com/product/strap-frame-attachment/','https://makinex.com/wp-content/uploads/2018/08/propane.jpg','2022-07-18 09:46:22.912366'),('Glass Sucker Attachment','$1,553.00','Makinex',' Surface Preparation','https://makinex.com/product/flippable-wide-chisel-jackhammer-attachment/','https://makinex.com/wp-content/uploads/2020/02/pht-sucker-prod.jpg','2022-07-18 09:46:23.976417'),('Flippable Wide Chisel','$43.00','Makinex',' Surface Preparation','https://makinex.com/product/flippable-wide-chisel-jackhammer-attachment/','https://makinex.com/wp-content/uploads/2018/08/flipable.jpg','2022-07-18 09:46:24.591900'),('Replacement Blades','$33.00','Makinex',' Surface Preparation','https://makinex.com/product/replacement-blades/','https://makinex.com/wp-content/uploads/2018/08/replace.jpg','2022-07-18 09:46:25.479661');
/*!40000 ALTER TABLE `makinex` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-18  9:50:48
