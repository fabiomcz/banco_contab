CREATE DATABASE  IF NOT EXISTS `contab` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `contab`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: contab
-- ------------------------------------------------------
-- Server version	5.7.17-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_empresa_funcionario`
--

DROP TABLE IF EXISTS `tbl_empresa_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_empresa_funcionario` (
  `matricula` int(11) NOT NULL,
  `seq_funcionario` int(11) NOT NULL,
  `seq_empresa` int(11) NOT NULL,
  `data_admissao` date DEFAULT NULL,
  `data_demissao` date DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  KEY `fk_tbl_funcionarios` (`seq_funcionario`),
  KEY `fk_tbl_empresa` (`seq_empresa`),
  CONSTRAINT `fk_tbl_empresa` FOREIGN KEY (`seq_empresa`) REFERENCES `tbl_empresas` (`seq_empresa`),
  CONSTRAINT `fk_tbl_funcionarios` FOREIGN KEY (`seq_funcionario`) REFERENCES `tbl_funcionarios` (`seq_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_empresa_funcionario`
--

LOCK TABLES `tbl_empresa_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_empresa_funcionario` DISABLE KEYS */;
INSERT INTO `tbl_empresa_funcionario` VALUES (9,1,1,NULL,NULL),(10,1,1,NULL,NULL),(11,2,1,NULL,NULL),(12,3,2,NULL,NULL),(13,2,2,NULL,NULL),(14,4,3,NULL,NULL);
/*!40000 ALTER TABLE `tbl_empresa_funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-27 17:01:24
