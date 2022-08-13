CREATE DATABASE  IF NOT EXISTS `BasedeDatos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `BasedeDatos`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: BasedeDatos
-- ------------------------------------------------------
-- Server version	5.7.39

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
-- Table structure for table `Dueno`
--

DROP TABLE IF EXISTS `Dueno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Dueno` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Apellido` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Direccion` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dueno`
--

LOCK TABLES `Dueno` WRITE;
/*!40000 ALTER TABLE `Dueno` DISABLE KEYS */;
INSERT INTO `Dueno` VALUES (11222333,'MARIA','LALA','1145993311','Avenida Argentina 321'),(16000987,'MARCO','POLEN','2947214988','Pringles 3029'),(22333444,'NESTOR','PERELE','1154555658','Avellaneda 9032'),(33222111,'CARLOS','TOTOLO','299453288','Cañadon Oeste 1032'),(40302302,'ROSA','CARALA','351789654','Liniers 2045');
/*!40000 ALTER TABLE `Dueno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Historial`
--

DROP TABLE IF EXISTS `Historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Historial` (
  `ID_Historial` int(11) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `Perro` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Monto` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`ID_Historial`),
  KEY `Perro` (`Perro`),
  CONSTRAINT `Historial_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `Perro` (`ID_Perro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Historial`
--

LOCK TABLES `Historial` WRITE;
/*!40000 ALTER TABLE `Historial` DISABLE KEYS */;
INSERT INTO `Historial` VALUES (999,'2020-12-09',5,'CORTE DE PELO COMUN',1500),(1000,'2021-12-22',3,'CORTE ESPECIAL',2500),(1001,'2022-01-15',4,'CORTE CON MAQUINA',1900),(1002,'2022-02-22',1,'CORTE DE PELO COMUN',1500),(1003,'2022-03-24',3,'CORTE CON MAQUINA',1900),(1004,'2022-04-02',2,'CORTE DE PELO COMUN',1500),(1005,'2022-05-03',1,'CORTE ESPECIAL Y BAÑO',3800);
/*!40000 ALTER TABLE `Historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Perro`
--

DROP TABLE IF EXISTS `Perro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Perro` (
  `ID_Perro` int(11) NOT NULL,
  `Nombre` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fecha_nac` date DEFAULT NULL,
  `Sexo` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DNI_Dueno` int(11) NOT NULL,
  PRIMARY KEY (`ID_Perro`),
  KEY `DNI_Dueno` (`DNI_Dueno`),
  CONSTRAINT `Perro_ibfk_1` FOREIGN KEY (`DNI_Dueno`) REFERENCES `Dueno` (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Perro`
--

LOCK TABLES `Perro` WRITE;
/*!40000 ALTER TABLE `Perro` DISABLE KEYS */;
INSERT INTO `Perro` VALUES (1,'PERRITO','2021-01-25','MACHO',22333444),(2,'CACHORRO','2020-11-29','MACHO',16000987),(3,'TUCKY','2015-11-10','MACHO',40302302),(4,'LALITA','2021-04-05','HEMBRA',11222333),(5,'TOTITO','2018-12-09','MACHO',33222111),(6,'MATITA','2021-11-19','HEMBRA',33222111),(10,'PEPITO','2021-12-19','MACHO',33222111);
/*!40000 ALTER TABLE `Perro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-13 18:56:27


/* 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.*/;
CREATE TABLE Perro
   	(ID_Perro integer PRIMARY KEY NOT NULL,
   	Nombre VARCHAR(25),
        Fecha_nac DATE,
    	Sexo VARCHAR(10),
        DNI_Dueno integer NOT NULL,
    	FOREIGN KEY (DNI_Dueno) REFERENCES Dueno(DNI)
   	);

/* 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.*/;

INSERT INTO Perro VALUES (6, 'MATITA', '2021-11-19', 'HEMBRA',  33222111);

/*6.  	Obtener todos los perros que asistieron a la peluquería en 2022 */;

Select Perro.Nombre as NOMBRE_PERRO, Historial.fecha as FECHA_DE_CORTE from Perro inner join Historial on Perro.ID_Perro = Historial.Perro  where Historial.Fecha between '2022-01-01' AND '2022-12-31';