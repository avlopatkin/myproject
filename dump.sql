-- MySQL dump 10.13  Distrib 8.0.37, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` VALUES (1,10,'Hello!','Hi'),(2,10,'112','112'),(3,10,'112','112'),(4,10,'112','112'),(5,10,'112','112'),(6,10,'112','112'),(7,10,'123','1233'),(8,10,'123','1233'),(9,10,'123','1233'),(10,10,'as','ass'),(11,10,'as','ass'),(12,10,'112','12'),(13,10,'112','12'),(14,10,'Aaa','amassed'),(15,10,'Aaa','amassed'),(16,10,'Aaa','amassed'),(17,10,'Aaa','amassed'),(18,10,'Aaa','amassed'),(19,10,'Aaa','amassed'),(20,10,'Aaa','amassed');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test@test.com','$2y$10$/0EcsWrCwiGCGUWZU/dNSOK2Xku7R6rgu4el6wSgJdGA35MiSLh3i',''),(2,'asd@asd.com','$2y$10$MCTfms/XWJi2arwlM86J9.s.MlYhmX1MLbrMUYRfidA6SA4R66j/m',''),(3,'asd@asd.com','$2y$10$btxYOGRSfMVvtIfYNRp8s.oUzpDdJF1Gl1J5UxAjW1.Z69wR2uAPG',''),(4,'asd','$2y$10$60xau5PW9rZp52QU5Jc2xO18xhrLIvvxcQUBo/VuZaVBr3J3XI6te',''),(5,'asd@aer.com','$2y$10$byJhlscQcdKthi6AP3NvMOh6t1DBZinuTlK4WEC/HHvY7unjxMwzO',''),(6,'asd@asd.ru','$2y$10$4SUtmxVK./LnkDmpZWA1D.xc4NpQL1RROS69twtsxGsM6RMIuZJ.e',''),(7,'qwerty@qwerty.ru','$2y$10$NWbna7MyI2XAbiFZRgr2yuqCwld6klzM/Vm8RHGR3tOM7LfnKvtsK',''),(8,'asdd@asdd.ru','$2y$10$c8u.6TSj1dmd3bTsMP6Rauct71t3VQUy/kNGYUs/4gy2o8KUObdeS',''),(9,'aasd@aasd.ru','$2y$10$05LBWRz/vGLXcAJPVt9NRu5hWYyBZQasGePIITUFLKs.mRmhbm8bu','aasd'),(10,'and@and.ru','$2y$10$22UuQDghZO.G2AKNYMJ6YecCCs0RVA2cQGeZ.8RwH/QF6JFNSqt3q','Andrei');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-12  1:09:57
