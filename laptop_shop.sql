-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: laptop_shop
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES
(12,'Administrator','admin','21232f297a57a5a743894a0e4a801fc3'),
(13,'Yog Raj','Dhakal','82ef9d826c4bd36e7538c95cc9d072c0');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES
(11,'Business Laptop','Laptop_Category_502.jpg','Yes','Yes'),
(12,'Gaming Laptop','Laptop_Category_878.jpg','Yes','Yes'),
(13,'Balanced Laptop','Laptop_Category_326.jpg','Yes','Yes');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_device`
--

DROP TABLE IF EXISTS `tbl_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_device` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_device`
--

LOCK TABLES `tbl_device` WRITE;
/*!40000 ALTER TABLE `tbl_device` DISABLE KEYS */;
INSERT INTO `tbl_device` VALUES
(13,'HP halalua','Halalua is best for work. 14 inch with steel body. Windows pro. 16GB RAM, 1TB HDD, i7 11th gen',120.00,'Device-Name-4192.jpg',11,'Yes','Yes'),
(14,'DG special edt','Dhakal Group 10th gen, i9 with 16 GB RAM, 528 SSD with Arch linux inbuild',115.00,'Device-Name-2214.jpg',11,'Yes','No'),
(15,'Lanovo ','Lanovo i9 10th gen, 8GB Ram, Windows student, 12 inch steel body',110.00,'Device-Name-6982.jpg',11,'Yes','Yes'),
(16,'Dell XPS','Dell xps, business laptop with 16 GB RAM, 2GB Graphics and 1TB HDD. i9, 10th gen. 1 year warrenty',120.00,'Device-Name-2924.jpg',11,'Yes','Yes'),
(17,'Aspire','Aspire 7 Core i5 10th Gen - (8 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650) A715-75G-50TA/ A715-75G-41G/ A715-75G-52AA Gaming Laptop  (15.6 inch, Black, 2.15 Kg)',140.00,'Device-Name-4532.png',12,'Yes','Yes'),
(18,'MSI','MSI Katana GF66 Core i5 11th Gen - (16 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce RTX 3050Ti) Katana GF66 11UD-876IN Gaming Laptop  (15.6 Inch, Black, 2.25 kg)',120.00,'Device-Name-4359.jpg',12,'Yes','No'),
(19,'Lenovo Legion','Lenovo Legion 5 Ryzen 5 Hexa Core 4600H - (8 GB/1 TB HDD/256 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/120 Hz) 15ARH05 Gaming Laptop  (15.6 inch, Phantom Black, 2.3 kg)',125.00,'Device-Name-8992.jpg',12,'No','Yes'),
(20,'ADURUS','ADURUS Ryzen 5 Hexa Core 5600H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) 15-ec2004AX Gaming Laptop  (15.6 inch, Shadow Black, 1.98 kg)',115.00,'Device-Name-5407.jpg',12,'No','Yes'),
(21,'Dell ','Dell intel i9  Hexa Core 5600H - (8 GB/512 GB SSD/Windows 11 Home/4 GB Graphics/NVIDIA GeForce GTX 1650/144 Hz) 15-ec2004AX Gaming Laptop  (15.6 inch, Shadow Black, 1.98 kg)',130.00,'Device-Name-6658.jpg',12,'Yes','Yes'),
(22,'TITL','Gaming A17 Ryzen 7 Octa Core 4800H - (16 GB/512 GB SSD/Windows 10 Home/4 GB Graphics/NVIDIA GeForce RTX 3050) FA706IC-HX003T Gaming Laptop  (17.3 inch, Graphite Black, 2.60 kg)',135.00,'Device-Name-8156.jpg',12,'Yes','Yes'),
(23,'Dell Balance Insp','DELL Inspiron Ryzen 5 Quad Core 3450U - (8 GB/256 GB SSD/Windows 10) Inspiron 3515 Thin and Light Laptop  (15.6 inch, Carbon, 1.85 kg, With MS Office)',105.00,'Device-Name-4665.jpg',13,'Yes','Yes'),
(24,'Macbook','APPLE 2020 Macbook Air M1 - (8 GB/256 GB SSD/Mac OS Big Sur) MGN63HN/A  (13.3 inch, Space Grey, 1.29 kg)',100.00,'Device-Name-2092.jpg',13,'Yes','Yes'),
(25,'Lanovo Ideapad','Lenovo Ideapad Slim 5 Ryzen 7 Octa Core 5700U - (8 GB/512 GB SSD/Windows 10 Home) 14 ALC 05 Thin and Light Laptop  (14 Inch, Graphite Grey, 1.39 KG, With MS Office)',90.00,'Device-Name-1891.jpg',13,'Yes','Yes'),
(26,'Asus ultra','ASUS VivoBook Ultra K14 (2021) Ryzen 5 Hexa Core 5500U - (8 GB/512 GB SSD/Windows 10 Home) KM413UA-EB503TS Thin and Light Laptop  (14 inch, Transparent Silver, 1.40 kg, With MS Office)',130.00,'Device-Name-383.png',13,'Yes','Yes'),
(27,'Dell  Vostro','DELL Vostro Ryzen 5 Quad Core R5-3450U - (8 GB/256 GB SSD/Windows 11 Home) Vostro 3405 Thin and Light Laptop  (14 inch, Accent Black, 1.59 Kg, With MS Office)',120.00,'Device-Name-3132.jpg',12,'Yes','Yes'),
(28,'Ryzen R1','Ryzen R1, 8 GB/256 GB SSD/Ubuntu 20.04 LTS, i9 10th gen. 15 inch black ',110.00,'Device-Name-8846.jpg',13,'Yes','Yes');
/*!40000 ALTER TABLE `tbl_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `device` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES
(1,'ASUS vivobook',110.00,1,110.00,'2022-03-31 00:00:00','On Delivery','Yog Raj','8128812818','yog@mail.com','Rajkot');
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-02 12:31:10
