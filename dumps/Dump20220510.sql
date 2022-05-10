CREATE DATABASE  IF NOT EXISTS `atividade_avaliativa_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `atividade_avaliativa_2`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: atividade_avaliativa_2
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `aluno_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` bigint NOT NULL,
  `matricula` int NOT NULL,
  PRIMARY KEY (`aluno_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Vitor','vitor.catolica@gmail.com',61998607276,21200294),(2,'Saulo','saulo.catolica@gmail.com',61994562354,21265984),(3,'Davi','davi.catolica@gmail.com',61985643576,21265123),(4,'Carlos','carlos.catolica@gmail.com',61982954612,21263568),(5,'Raphael','raphael.catolica@gmail.com',61996582347,21269327),(6,'Lucas','lucas.catolica@gmail.com',61998635241,21294856),(7,'Giovanna','giovana.catolica@gmail.com',61994634589,21291643),(8,'Iasmin','iasmin.catolica@gmail.com',61985632149,21263412),(9,'Eduardo','eduardo.catolica@gmail.com',61982635794,21249526),(10,'João','joao.catolica@gmail.com',61996634981,21265489);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno_diciplina`
--

DROP TABLE IF EXISTS `aluno_diciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno_diciplina` (
  `aluno_id` int NOT NULL,
  `diciplina_id` int NOT NULL,
  PRIMARY KEY (`aluno_id`,`diciplina_id`),
  KEY `fk_aluno_id` (`aluno_id`),
  KEY `fk_diciplina_id` (`diciplina_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno_diciplina`
--

LOCK TABLES `aluno_diciplina` WRITE;
/*!40000 ALTER TABLE `aluno_diciplina` DISABLE KEYS */;
INSERT INTO `aluno_diciplina` VALUES (1,1),(1,3),(1,4),(1,7),(1,8),(2,12),(2,14),(2,16),(2,18),(2,20),(3,2),(3,4),(3,13),(3,18),(3,20),(4,1),(4,6),(4,7),(4,11),(4,19),(5,3),(5,6),(5,8),(5,9),(5,19),(6,6),(6,12),(6,16),(6,19),(6,20),(7,10),(7,12),(7,13),(7,14),(7,15),(8,1),(8,2),(8,5),(8,11),(8,16),(9,1),(9,12),(9,15),(9,19),(9,20),(10,6),(10,12),(10,14),(10,15),(10,17);
/*!40000 ALTER TABLE `aluno_diciplina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diciplina`
--

DROP TABLE IF EXISTS `diciplina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diciplina` (
  `diciplina_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  PRIMARY KEY (`diciplina_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diciplina`
--

LOCK TABLES `diciplina` WRITE;
/*!40000 ALTER TABLE `diciplina` DISABLE KEYS */;
INSERT INTO `diciplina` VALUES (1,'Laboratório de Banco de Dados','ADS'),(2,'Engenharia de Software','ADS'),(3,'Programação Orientada a Objetos','ADS'),(4,'Programação Web','ADS'),(5,'Teste de Software','ADS'),(6,'Desing de Software','ADS'),(7,'Engenharia de Requisitos','ADS'),(8,'Algoritimos de Programação','ADS'),(9,'Computação e Sociedade','ADS'),(10,'Programação de APP','ADS'),(11,'Laboratório de Banco de Dados','Engenharia de Software'),(12,'Engenharia de Software','Engenharia de Software'),(13,'Programação Orientada a Objetos','Engenharia de Software'),(14,'Programação Web','Engenharia de Software'),(15,'Teste de Software','Engenharia de Software'),(16,'Desing de Software','Engenharia de Software'),(17,'Engenharia de Requisitos','Engenharia de Software'),(18,'Algoritimos de Programação','Engenharia de Software'),(19,'Computação e Sociedade','Engenharia de Software'),(20,'Programação de APP','Engenharia de Software');
/*!40000 ALTER TABLE `diciplina` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 20:51:30
