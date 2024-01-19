-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: login_php
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Nombre Apellido','correo@example.com','usuario','contraseña'),(2,'asdasd dasd','luisnavarrete1a89@gmail.com','usuario2','$2y$10$GiOD01NzcAZH6swid.8RMuP76Y0RfbaZpuhLQrE/u16Oy0RPHY.ne'),(3,'Luis Angel','Luis.navarreteya@ug.edu.ec','NavaCorp','$2y$10$Ku49XS//CjTSfXaZPpAeAOC3hIL9mN.aaTmY5TzAn.JXPiAQQr1We'),(4,'','','usuario','$2y$10$CNKxQW7pqEYQ90EItHLfleKT6d8Bh7vrOE2/bGLglTGqzSFrM7guG'),(5,'sad','asd@gmai.com','usuario34','$2y$10$nAImfeExyq2dEFKXk4/dU.dUpDwSclMbIvrUdZjFxKRayGbPybGT2'),(6,'','','usuario','$2y$10$aOygaDOSjuB3xjJM32xTgO1eIm0Ixvj5mpHoIdjN9LBWlXkVySUF2'),(7,'Luis Navarrete','luisnavarrete2a89@gmail.com','Nava','$2y$10$dZjstA2p5dHEEitVTqtMf.1DeqMvAKFXJftQjvZMnws7wZjqCStEq'),(8,'Luis Navarrete2','luisnavarrete14a89@gmail.com','usuario3','$2y$10$JPnlT5zLFow0AKsJFR1VUuhPtfh.LNsfGLR1QMIsGAp2XxxWW3H8O'),(9,'Luis Navarrete6','luisnavarrete5a89@gmail.com','usuario10','$2y$10$7cHS2CwSG1F8qBmlyJqFJ.PVXTdCzjCoWMq8S3u8lRBcRJvqIfBA.'),(10,'1111','Coursehero256@gmail.com','usuarioprueba','$2y$10$5OGsiYzqA1eTV/Yyf2jsauNhpiwc4wN.UgKVESa.KHyh5BJudN4Vi'),(11,'nombreprueba','Coursehero2526@gmail.com','usuarioprueba1','$2y$10$WwkNRFYty31YgWszMpkgTOfSChU6C/RfB7z.mW34jSKCxgw/oXS4u'),(12,'fff','Coursehero256f@gmail.com','fff','$2y$10$oqEUO5KAoniPDDGZbpK3Cuc/ldOYVL1M/bCHh0CL21M1Antapnb0K');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-19 17:14:08
