-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa_mx
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url_imagen` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text,
  `precip` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'img/product_01.png','Saco de Comida Premium para Vacas Lecheras','Este saco de comida para vacas lecheras es una fórmula de alta calidad diseñada para satisfacer las necesidades nutricionales de las vacas en producción de leche. Cada saco contiene una mezcla equilibrada de ingredientes de primera calidad, seleccionados cuidadosamente para garantizar la salud y el rendimiento óptimo de sus vacas.',480.00),(2,'img/product_02.png','Alimento Premium para Gallos de Pelea','Nuestro alimento premium para gallos de pelea es la elección perfecta para quienes valoran el bienestar y el rendimiento de sus gallos. Cada saco contiene una mezcla de ingredientes de primera calidad cuidadosamente seleccionados para proporcionar a sus aves la nutrición superior que necesitan para competir en su mejor forma.',430.00),(3,'img/product_03.png','Comida Premium para Caballos: Nutrición de Excelencia para su Compañero Equino','Alto Contenido de Fibra y Forraje: Nuestra fórmula está enriquecida con fibra y forraje de calidad para promover una digestión saludable y satisfacer las necesidades naturales de pastoreo de los caballos. Balance Nutricional Óptimo: Contiene la proporción adecuada de proteínas, carbohidratos, grasas, vitaminas y minerales esenciales para mantener una salud óptima y una energía sostenible. Mezcla de Vitaminas y Minerales: Enriquecida con vitaminas A, D, y E.',490.00),(4,'img/product_04.png','Comida Premium para Caballos: Nutrición de Excelencia para su Compañero Equino','Mezcla de Vitaminas y Minerales: Enriquecida con vitaminas A, D, y E, así como minerales como el zinc, selenio y calcio, que respaldan el sistema inmunológico, la salud ósea y la vitalidad general. Pelo Brillante y Piel Sana: Los ácidos grasos esenciales promueven un pelaje saludable y brillante, así como una piel en buen estado. Fortalecimiento de Huesos y Articulaciones: La adición de glucosamina y condroitina ayuda a mantener la salud de las articulaciones y el sistema locomotor.',400.00),(5,'img/product_05.png','Comida Premium para Cerdos: Nutrición de Calidad para el Crecimiento y la Salud','Fortalecimiento Óseo: Contiene calcio y otros minerales esenciales para mantener huesos fuertes y saludables. Ideal para Diferentes Etapas de Vida: Apta para cerdos en crecimiento, reproductores y cerdos en mantenimiento, proporcionando una nutrición adaptada a las necesidades de cada uno. Facilidad de Alimentación: Diseñada para ser apetitosa y fácilmente consumible, promoviendo una alimentación constante y satisfactoria.',500.00);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'empresa_mx'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-28  7:36:19
