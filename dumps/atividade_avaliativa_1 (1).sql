CREATE DATABASE  IF NOT EXISTS `atividade_avaliativa_1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `atividade_avaliativa_1`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: atividade_avaliativa_1
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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `endereco_id` int NOT NULL AUTO_INCREMENT,
  `cep` int NOT NULL,
  `estado` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `logradouro` varchar(255) NOT NULL,
  PRIMARY KEY (`endereco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,38610000,'Minas Gerais','Unaí','Divinéia','Rua Frei Anselino'),(2,72610010,'Minas Gerais','Paracatu','Centro','Rua Santos Dumont'),(3,74810566,'Minas Gerais','Patos de Minas','Floresta','Rua dos Ipês');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `pessoa_id` int NOT NULL AUTO_INCREMENT,
  `endereco_id` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `cpf` bigint NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `identidade` int NOT NULL,
  PRIMARY KEY (`pessoa_id`),
  KEY `fk_endereco_id` (`endereco_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,1,'Ayrton','Oliveira',60136710360,'Masculino','ayrton.oliveira@gmail.com',2973983),(2,1,'Ester','Oliveira',47113710026,'Feminino','ester.oliveira@gmail.com',1564831),(3,1,'Jennifer','Oliveira',49848848465,'Feminino','jennifer.oliveira@gmail.com',6154184),(4,1,'Fillype','Oliveira',24536198402,'Masculino','fillype.oliveira@gmail.com',4561289),(5,2,'Sabrina','Rabelo',65463215636,'Feminino','sabrina.rabelo@gmail.com',8596456),(6,2,'Diogo','Rabelo',25436158920,'Masculino','diogo.rabelo@gmail.com',9632846),(7,2,'Samuel','Rabelo',96432156940,'Masculino','samuel.rabelo@gmail.com',9654120),(8,3,'Gabriel','Silva',54861235425,'Masculino','gabriel.silva@gmail.com',8964327),(9,3,'João','Silva',54896325814,'Masculino','joao.silva@gmail.com',6352417),(10,3,'Karine','Silva',96314725836,'Feminino','karine.silva@gmail.com',8541632),(11,3,'Larissa','Silva',84563215964,'Feminino','larissa.silva@gmail.com',7456289),(12,3,'Jacilene','Silva',85694236710,'Feminino','jacilene.silva@gmail.com',5469327);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-03 20:47:12
