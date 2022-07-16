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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_name` varchar(50) NOT NULL,
  `price` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `more_info` varchar(100) NOT NULL,
  `img_link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('Powered Hand Truck','$4,995.00',' Lifting and Loadin','https://makinex.com/product/powered-hand-truck-140/','https://makinex.com/wp-content/uploads/2017/07/powered-1.jpg'),('Hose 2 Go','$376.00',' Surface Preparation','https://makinex.com/product/hose-2-go/','https://makinex.com/wp-content/uploads/2018/08/hose2go-1.jpg'),('Generator 9kW 240V','$8,795.00',' Power Generation','https://makinex.com/product/generator-9kw-240v/','https://makinex.com/wp-content/uploads/2018/08/10kw.jpg'),('Lift Assist','$1,355.00',' Surface Preparation','https://makinex.com/product/lift-assist/','https://makinex.com/wp-content/uploads/2021/08/lift-assist-product.jpg'),('Mobile Charging Pod','$3,675.00',' Electrical & Lightin','https://makinex.com/product/mobile-charge-pod/','https://makinex.com/wp-content/uploads/2021/08/mobile-charging-pod-product.jpg'),('Jackhammer Trolly','$1,355.00',' Surface Preparation','https://makinex.com/product/makinex-jackhammer-trolley/','https://makinex.com/wp-content/uploads/2017/07/JHT-1.jpg'),('Tile Smasher Jackhammer Attachment','$281.00',' Surface Preparation','https://makinex.com/product/tile-smasher-jackhammer-attachment/','https://makinex.com/wp-content/uploads/2010/07/scraper.jpg'),('Dual Pressure Washer 4000psi','$4,995.00',' Surface Cleanin','https://makinex.com/product/makinex-dual-pressure-washer-4000psi/','https://makinex.com/wp-content/uploads/2018/08/pw4000.jpg'),('Dual Pressure Washer 2500psi','$4,395.00',' Surface Cleanin','https://makinex.com/product/makinex-dual-pressure-washer-2500psi/','https://makinex.com/wp-content/uploads/2018/08/pw2500-1.jpg'),('Mixing Station','$1,780.00',' Surface Cleanin','https://makinex.com/product/makinex-mixing-station/','https://makinex.com/wp-content/uploads/2017/06/MS-Website-Photo.jpg'),('Floor Stripper','$2,295.00',' Surface Preparation','https://makinex.com/product/floor-stripper/','https://makinex.com/wp-content/uploads/2019/04/makinex-floor-stripper.png'),('PHT – Forklift Attachment','$1,129.00',' Lifting and Loadin','https://makinex.com/product/pht-forklift-attachment/','https://makinex.com/wp-content/uploads/2018/08/2forklift.jpg'),('PHT – Sling Attachment','$187.00',' Lifting and Loadin','https://makinex.com/product/sling-attachment/','https://makinex.com/wp-content/uploads/2018/08/strap.jpg'),('PHT – Strap Frame Attachment','$338.00',' Lifting and Loadin','https://makinex.com/product/strap-frame-attachment/','https://makinex.com/wp-content/uploads/2018/08/propane.jpg'),('Glass Sucker Attachment','$1,553.00',' Surface Preparation','https://makinex.com/product/flippable-wide-chisel-jackhammer-attachment/','https://makinex.com/wp-content/uploads/2020/02/pht-sucker-prod.jpg'),('Flippable Wide Chisel','$43.00',' Surface Preparation','https://makinex.com/product/flippable-wide-chisel-jackhammer-attachment/','https://makinex.com/wp-content/uploads/2018/08/flipable.jpg'),('Replacement Blades','$33.00',' Surface Preparation','https://makinex.com/product/replacement-blades/','https://makinex.com/wp-content/uploads/2018/08/replace.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-15 17:32:18
