-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: hethongnhtc
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Sảnh cưới','lobby'),(2,'Thực đơn','menu'),(3,'Dịch vụ cưới','service');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idCustomer` int DEFAULT NULL,
  `idReceipt` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_feedback_user_idx` (`idCustomer`),
  KEY `fk_feedback_receipt_idx` (`idReceipt`),
  CONSTRAINT `fk_feedback_receipt` FOREIGN KEY (`idReceipt`) REFERENCES `receipt` (`id`),
  CONSTRAINT `fk_feedback_user` FOREIGN KEY (`idCustomer`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lobby`
--

DROP TABLE IF EXISTS `lobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lobby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `qtytable` int DEFAULT NULL,
  `idRestaurant` int DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lobby_restaurant_idx` (`idRestaurant`),
  CONSTRAINT `lobby_restaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lobby`
--

LOCK TABLES `lobby` WRITE;
/*!40000 ALTER TABLE `lobby` DISABLE KEYS */;
INSERT INTO `lobby` VALUES (1,'Sảnh A',10000000,20,1,'https://asiana-plaza.com/wp-content/uploads/2021/03/trang-tri-sanh-tiec-cuoi-dep-3.jpg'),(2,'Sảnh B',10000000,20,1,'https://asiana-plaza.com/wp-content/uploads/2021/03/trang-tri-sanh-tiec-cuoi-dep-3.jpg'),(3,'Sảnh C',10000000,20,1,'https://asiana-plaza.com/wp-content/uploads/2021/03/trang-tri-sanh-tiec-cuoi-dep-3.jpg'),(4,'Sảnh D',10000000,20,2,'https://asiana-plaza.com/wp-content/uploads/2021/03/trang-tri-sanh-tiec-cuoi-dep-3.jpg'),(5,'Sảnh E',10000000,20,2,'https://asiana-plaza.com/wp-content/uploads/2021/03/trang-tri-sanh-tiec-cuoi-dep-3.jpg'),(6,'Sảnh F',10000000,20,3,'https://asiana-plaza.com/wp-content/uploads/2021/03/trang-tri-sanh-tiec-cuoi-dep-3.jpg');
/*!40000 ALTER TABLE `lobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lobbysession`
--

DROP TABLE IF EXISTS `lobbysession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lobbysession` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price` decimal(10,0) DEFAULT NULL,
  `idLobby` int DEFAULT NULL,
  `idSession` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ls_lobby_idx` (`idLobby`),
  KEY `fk_ls_session_idx` (`idSession`),
  CONSTRAINT `fk_ls_lobby` FOREIGN KEY (`idLobby`) REFERENCES `lobby` (`id`),
  CONSTRAINT `fk_ls_session` FOREIGN KEY (`idSession`) REFERENCES `session` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lobbysession`
--

LOCK TABLES `lobbysession` WRITE;
/*!40000 ALTER TABLE `lobbysession` DISABLE KEYS */;
/*!40000 ALTER TABLE `lobbysession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appetizer` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maincourse1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maincourse2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `maincourse3` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dessert` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `drinks` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idRestaurant` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_menu_restaurant_idx` (`idRestaurant`),
  CONSTRAINT `fk_menu_restaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Súp hải sản','Mực chiên bơ tỏi','Gà ta hấp  lá sen','Bò sốt tiêu đen & bánh mì','Bưởi da xanh','Bia',2000000,'Thực đơn 1','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',1),(2,'Nộm cổ hũ dừa xá xíu','Súp gà nấm Đông Cô','Tôm sú sốt bơ tỏi ngự tổ yến','Thăn ngỗng sốt mật ông','Bưởi năm roi','Bia',2100000,'Thực đơn 2','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',1),(3,'Nộm sứa biển','Súp gà nấm ngô','Tôm sú chiên trứng mặn','Mực chiên bơ tỏi','Hoa quả','Bia',2200000,'Thực đơn 3','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',1),(4,'Salab cải tím bắp bò','Súp cua bể hải sản','Tôm sú rang muối','Cá tầm hấp xì dầu','Nho nhập khẩu','Bia',2300000,'Thực đơn 4','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',1),(5,'Súp hải sản','Mực chiên bơ tỏi','Gà ta hấp  lá sen','Bò sốt tiêu đen & bánh mì','Bưởi da xanh','Bia',2000000,'Thực đơn 1','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',2),(6,'Nộm cổ hũ dừa xá xíu','Súp gà nấm Đông Cô','Tôm sú sốt bơ tỏi ngự tổ yến','Thăn ngỗng sốt mật ông','Bưởi năm roi','Bia',2100000,'Thực đơn 2','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',2),(7,'Nộm sứa biển','Súp gà nấm ngô','Tôm sú chiên trứng mặn','Mực chiên bơ tỏi','Hoa quả','Bia',2200000,'Thực đơn 3','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',3),(8,'Salab cải tím bắp bò','Súp cua bể hải sản','Tôm sú rang muối','Cá tầm hấp xì dầu','Nho nhập khẩu','Bia',2300000,'Thực đơn 4','https://innhanh24h.net/wp-content/uploads/2018/07/Thuc-don-nha-hang-tiec-cuoi-2.png',3);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idRestaurant` int NOT NULL,
  `idCustomer` int NOT NULL,
  `idLobby` int NOT NULL,
  `idMenu` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `orderdate` datetime NOT NULL,
  `organizationdate` datetime NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `active` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_receipt_restaurant_idx` (`idRestaurant`),
  KEY `fk_receipt_customer_idx` (`idCustomer`),
  KEY `fk_receipt_lobby_idx` (`idLobby`),
  KEY `fk_receipt_menu_idx` (`idMenu`),
  CONSTRAINT `fk_receipt_customer` FOREIGN KEY (`idCustomer`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_receipt_lobby` FOREIGN KEY (`idLobby`) REFERENCES `lobby` (`id`),
  CONSTRAINT `fk_receipt_menu` FOREIGN KEY (`idMenu`) REFERENCES `menu` (`id`),
  CONSTRAINT `fk_receipt_restaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,2,1,5,6,NULL,'2022-10-02 02:11:51','2022-10-02 02:11:51',NULL,NULL),(17,2,1,4,6,NULL,'2022-10-02 13:51:13','2022-10-02 13:51:13',NULL,NULL),(34,2,1,5,6,NULL,'2022-10-02 15:12:55','2022-10-02 15:12:55',NULL,NULL),(35,2,1,4,6,NULL,'2022-10-02 15:15:09','2022-10-02 15:15:09',NULL,NULL),(36,1,1,3,3,NULL,'2022-10-02 23:07:14','2022-10-02 23:07:14',NULL,NULL),(37,1,1,2,3,NULL,'2022-10-04 14:29:27','2022-10-04 14:29:27',NULL,NULL);
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `road` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ward` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idOwner` int DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_restaurant_owner_idx` (`idOwner`),
  CONSTRAINT `fk_restaurant_owner` FOREIGN KEY (`idOwner`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Nhà hàng Phố 79','79 Sương Nguyệt Ánh','Bến Thành','Quận 1','0123456789',4,NULL,'https://cdn.baogiaothong.vn/upload/4-2019/images/2019-12-11/1-1576074456-4-width650height487.jpg'),(2,'Chuỗi Ân Nam Quán','51B Tú Xương','phường 7 ','Quận 3','0123456789',4,NULL,'https://cdn.baogiaothong.vn/upload/4-2019/images/2019-12-11/1-1576074456-4-width650height487.jpg'),(3,'Wrap & Roll','02 Hải Triều','Bến Nghé','Quận 1','0123456789',4,'chờ duyệt','https://cdn.baogiaothong.vn/upload/4-2019/images/2019-12-11/1-1576074456-4-width650height487.jpg');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idRestaurant` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_service_restaurant_idx` (`idRestaurant`),
  CONSTRAINT `fk_service_restaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Vũ công',2000000,'https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg',1),(2,'Máy chiếu',200000,'https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg',1),(3,'Pháo hoa',500000,'https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg',1),(4,'Tháp ly',1000000,'https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg',1),(5,'Bánh kem',2000000,'https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg',1),(6,'Ban nhạc',5000000,'https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg',2),(7,'Trang trí cổng',100000,'https://toplist.vn/images/800px/song-anh-wedding-amp-events-436987.jpg',2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicedetail`
--

DROP TABLE IF EXISTS `servicedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicedetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idReceipt` int DEFAULT NULL,
  `idService` int DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_serdetail_receipt_idx` (`idReceipt`),
  KEY `fk_serdetail_service_idx` (`idService`),
  CONSTRAINT `fk_serdetail_receipt` FOREIGN KEY (`idReceipt`) REFERENCES `receipt` (`id`),
  CONSTRAINT `fk_serdetail_service` FOREIGN KEY (`idService`) REFERENCES `service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicedetail`
--

LOCK TABLES `servicedetail` WRITE;
/*!40000 ALTER TABLE `servicedetail` DISABLE KEYS */;
INSERT INTO `servicedetail` VALUES (2,1,7,NULL),(3,NULL,NULL,NULL),(4,34,7,100000),(5,35,6,5000000),(6,36,4,1000000),(7,36,5,2000000),(8,37,4,1000000),(9,37,5,2000000);
/*!40000 ALTER TABLE `servicedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (1,'Sáng'),(2,'Trưa'),(3,'Tối');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userrole` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` bit(1) DEFAULT NULL,
  `image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1','acc',NULL,NULL,NULL,'user1','$2a$10$qv8SsUwRnp/YhPWTPqdgp.MXJ01hcW4ji6wKvP6.qkWWx1ZxhqxyG','ROLE_USER',NULL,NULL),(2,'admin1','acc',NULL,NULL,NULL,'admin1','$2a$10$qv8SsUwRnp/YhPWTPqdgp.MXJ01hcW4ji6wKvP6.qkWWx1ZxhqxyG','ROLE_ADMIN',NULL,NULL),(3,'employ1','acc',NULL,NULL,NULL,'employ1','789123','ROLE_EMPLOY',NULL,NULL),(4,'owner1','acc',NULL,NULL,NULL,'owner1','$2a$10$qv8SsUwRnp/YhPWTPqdgp.MXJ01hcW4ji6wKvP6.qkWWx1ZxhqxyG','ROLE_OWNER',NULL,NULL),(5,'user3','acc',NULL,NULL,NULL,'user3','333333','ROLE_USER',NULL,NULL),(7,'up','anh','upanh@gmail.com','0123456789','Phường 3, Gò Vấp','upanh','$2a$10$2AvaptygjgkcIpt5xa1YOetmFnOaQYUB46v0L//nxrAXFS5/G9hMS','ROLE_USER',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1661705180/cezuiu1qpuxu8njbvzoj.jpg'),(8,'employ2','acc','eloy2@gmail.com','01478523696','Phường 3, Gò Vấp','employ2','$2a$10$j3RyOKP6LnGCewEmTdPKwOPhUDs5VBSG55rmvoleyHU6EltMlnl2q','ROLE_EMPLOY',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1662213426/fcpmbxrlgri5gaydvxcr.jpg'),(12,'employ3333','acc123456789','ely3@gmail.com','01478523696','PhÆ°á»ng 3, GÃ² Váº¥p','employ3','123456','ROLE_EMPLOY',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1662731853/omd2imntdmeqauplwqll.jpg'),(13,'de','mo','demo@gmail.com','01478523696','Phường 3, Gò Vấp','demo','$2a$10$V2lPXaWL1EpD6z76.jY0fOUSUWW0taLgt9qs1Xsz.NnRAmzMOANf.','ROLE_USER',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1662731853/omd2imntdmeqauplwqll.jpg'),(14,'a','b','ab@gmail.com','01478523696','Phường 3, Gò Vấp','ab','$2a$10$kHgjoamlwBpq.Oi5nBWo1.KCVMGrT5T0p0FGzXjQfpuklNsF6D1tu','ROLE_USER',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1662793613/wqx4xnasedt5rcn8h4dp.jpg'),(15,'cd','cd','cd@gmail.com','01478523696','Phường 3, Gò Vấp','cd','$2a$10$P7IaBmKdPpIVxQUkxj6jDendTeURcehSEZl6l8tqZL25yqrbL2qYe','ROLE_USER',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1664097095/t4neic0zjszoajsgglku.jpg'),(16,'nv','nv','nv@gmail.com','01478523696','Phường 3, Gò Vấp','nv','$2a$10$BxBJ/lP1h9FIUDkwR1Hl6.ofcTzVzOpVJfKHlNLbvr1WKwWRM/GCW','ROLE_EMPLOY',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1664098317/dnl59mlqzagjpmjnbbxo.jpg'),(17,'Mon','Doraemon','d@gmail.com','0987654321','371 NK','doraemon','$2a$10$eirBmmEOH9trtIS3xc2QkOgcCaGh4oVC7nCug4TpNFXhv6quYd2/i','ROLE_USER',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1664972915/hhm8lpmjhlmzga9joxhi.png'),(19,'Nobita','Nobi','nobi@gmail.com','0123456789','371 NK','nobita','$2a$10$LGjA37hm172FV/oblb80luz5YlazTsjiFMzCTy1HazagkCD4n7Up6','ROLE_USER',NULL,'https://res.cloudinary.com/dkbtr8rbi/image/upload/v1666703595/jualhfmtbstnaqs0zllu.webp');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19  8:20:26
