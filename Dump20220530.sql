CREATE DATABASE  IF NOT EXISTS `locadora_aula` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `locadora_aula`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: locadora_aula
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `aluguel`
--

DROP TABLE IF EXISTS `aluguel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluguel` (
  `aluguel_id` int NOT NULL AUTO_INCREMENT,
  `data_de_aluguel` datetime NOT NULL,
  `inventario_id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `data_de_devolucao` datetime NOT NULL,
  `funcionario_id` int NOT NULL,
  PRIMARY KEY (`aluguel_id`),
  KEY `fk_inventario_id` (`inventario_id`),
  KEY `fk_cliente_id` (`cliente_id`),
  KEY `fk_funcionario_id` (`funcionario_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluguel`
--

LOCK TABLES `aluguel` WRITE;
/*!40000 ALTER TABLE `aluguel` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluguel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ator`
--

DROP TABLE IF EXISTS `ator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ator` (
  `ator_id` int NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(45) NOT NULL,
  `ultimo_nome` varchar(45) NOT NULL,
  PRIMARY KEY (`ator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ator`
--

LOCK TABLES `ator` WRITE;
/*!40000 ALTER TABLE `ator` DISABLE KEYS */;
INSERT INTO `ator` VALUES (1,'Brad','Pitt'),(2,'Julia','Roberts'),(3,'George','Clooney'),(4,'Juliana','Paes'),(5,'Jack','Sparrow'),(6,'Cris','Evans'),(7,'Robert','Downey Jr'),(8,'Cris','Pratt'),(9,'Jennifer','Aniston');
/*!40000 ALTER TABLE `ator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `categoria_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Terror'),(2,'Ação'),(3,'Aventura'),(4,'Suspense'),(5,'Ficção'),(6,'Comédia'),(7,'Romance');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `cidade_id` int NOT NULL AUTO_INCREMENT,
  `cidade` varchar(50) NOT NULL,
  `pais_id` int NOT NULL,
  PRIMARY KEY (`cidade_id`),
  KEY `fk_pais_id` (`pais_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `loja_id` int NOT NULL,
  `primeiro_nome` varchar(45) NOT NULL,
  `ultimo_nome` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco_id` int NOT NULL,
  `ativo` int NOT NULL,
  `data_criacao` datetime NOT NULL,
  PRIMARY KEY (`cliente_id`),
  KEY `fk_loja_id` (`loja_id`),
  KEY `fk_endereco_id` (`endereco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `endereco_id` int NOT NULL AUTO_INCREMENT,
  `endereco` varchar(50) NOT NULL,
  `endereco2` varchar(50) NOT NULL,
  `bairro` varchar(20) NOT NULL,
  `cidade_id` int NOT NULL,
  `cep` varchar(10) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  PRIMARY KEY (`endereco_id`),
  KEY `fk_cidade_id` (`cidade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `filme_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descricao` text,
  `ano_de_lancamento` year DEFAULT NULL,
  `idioma_id` int NOT NULL,
  `idioma_original_id` int DEFAULT NULL,
  `duracao_da_locacao` int NOT NULL DEFAULT '3',
  `preco_da_locacao` decimal(4,2) NOT NULL DEFAULT '4.99',
  `duracao_do_filme` int DEFAULT NULL,
  `custo_de_substituicao` decimal(5,2) NOT NULL DEFAULT '19.99',
  `classificacao` enum('L','10','14','16') DEFAULT 'L',
  `recursos_especiais` set('Trailers','Comentarios','Cenas Deletadas') DEFAULT NULL,
  PRIMARY KEY (`filme_id`),
  KEY `fk_idioma_id` (`idioma_id`),
  KEY `fk_idioma_original_id` (`idioma_original_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (1,'O Grito','Assustador',2000,1,2,3,5.99,120,10.00,'16','Trailers'),(2,'O Pastor','Gospel',2020,1,2,3,5.99,120,10.00,'10','Comentarios');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_ator`
--

DROP TABLE IF EXISTS `filme_ator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme_ator` (
  `ator_id` int NOT NULL,
  `filme_id` int NOT NULL,
  PRIMARY KEY (`ator_id`,`filme_id`),
  KEY `fk_filme_id` (`filme_id`),
  KEY `fk_ator_id` (`ator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_ator`
--

LOCK TABLES `filme_ator` WRITE;
/*!40000 ALTER TABLE `filme_ator` DISABLE KEYS */;
INSERT INTO `filme_ator` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `filme_ator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_categoria`
--

DROP TABLE IF EXISTS `filme_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme_categoria` (
  `filme_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`filme_id`,`categoria_id`),
  KEY `fk_categoria_id` (`categoria_id`),
  KEY `fk_filme_id` (`filme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_categoria`
--

LOCK TABLES `filme_categoria` WRITE;
/*!40000 ALTER TABLE `filme_categoria` DISABLE KEYS */;
INSERT INTO `filme_categoria` VALUES (1,1);
/*!40000 ALTER TABLE `filme_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filme_texto`
--

DROP TABLE IF EXISTS `filme_texto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme_texto` (
  `filme_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  PRIMARY KEY (`filme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme_texto`
--

LOCK TABLES `filme_texto` WRITE;
/*!40000 ALTER TABLE `filme_texto` DISABLE KEYS */;
INSERT INTO `filme_texto` VALUES (1,'O auto da compadecida'),(2,'Os Vingadores'),(3,'Doutor Estranho'),(4,'Tropa de Elite'),(5,'Até Que Sorte Nos Separe'),(6,'Aquaman'),(7,'Velozes e Furiosos');
/*!40000 ALTER TABLE `filme_texto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `funcionario_id` int NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(45) NOT NULL,
  `ultimo_nome` varchar(45) NOT NULL,
  `endereco_id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `loja_id` int NOT NULL,
  `ativo` int NOT NULL,
  `usuario` varchar(16) NOT NULL,
  `senhar` varchar(40) NOT NULL,
  PRIMARY KEY (`funcionario_id`),
  KEY `fk_endereco_id` (`endereco_id`),
  KEY `fk_loja_id` (`loja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idioma`
--

DROP TABLE IF EXISTS `idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idioma` (
  `idioma_id` int NOT NULL AUTO_INCREMENT,
  `nome` char(20) NOT NULL,
  PRIMARY KEY (`idioma_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idioma`
--

LOCK TABLES `idioma` WRITE;
/*!40000 ALTER TABLE `idioma` DISABLE KEYS */;
INSERT INTO `idioma` VALUES (1,'Português-BR'),(2,'Inglês'),(3,'Alemão'),(4,'Francês'),(5,'Japonês'),(6,'Norueguês');
/*!40000 ALTER TABLE `idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `inventario_id` int NOT NULL AUTO_INCREMENT,
  `filme_id` int NOT NULL,
  `loja_id` int NOT NULL,
  PRIMARY KEY (`inventario_id`),
  KEY `fk_filme_id` (`filme_id`),
  KEY `fk_loja_id` (`loja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja`
--

DROP TABLE IF EXISTS `loja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loja` (
  `loja_id` int NOT NULL AUTO_INCREMENT,
  `gerente_id` int NOT NULL,
  `endereco_id` int NOT NULL,
  PRIMARY KEY (`loja_id`),
  KEY `fk_endereco_id` (`endereco_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja`
--

LOCK TABLES `loja` WRITE;
/*!40000 ALTER TABLE `loja` DISABLE KEYS */;
/*!40000 ALTER TABLE `loja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagamento` (
  `pagamento_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int NOT NULL,
  `funcionario_id` int NOT NULL,
  `aluguel_id` int NOT NULL,
  `valor` decimal(5,2) NOT NULL DEFAULT '4.99',
  `data_de_pagamento` datetime NOT NULL,
  PRIMARY KEY (`pagamento_id`),
  KEY `fk_cliente_id` (`cliente_id`),
  KEY `fk_funcionario_id` (`funcionario_id`),
  KEY `fk_aluguel_id` (`aluguel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagamento`
--

LOCK TABLES `pagamento` WRITE;
/*!40000 ALTER TABLE `pagamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `pais_id` int NOT NULL AUTO_INCREMENT,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`pais_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Brasil'),(2,'Estados Unidos'),(3,'Alemanha'),(4,'Inglaterra'),(5,'Canadá'),(6,'Japão'),(7,'Noruega');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-30  9:26:43
