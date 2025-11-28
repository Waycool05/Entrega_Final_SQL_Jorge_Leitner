CREATE DATABASE  IF NOT EXISTS `logisticawaycool` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `logisticawaycool`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: logisticawaycool
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `auditoria_stock`
--

DROP TABLE IF EXISTS `auditoria_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_stock` (
  `id_auditoria` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `operacion` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `stock_anterior` int DEFAULT NULL,
  `stock_nuevo` int DEFAULT NULL,
  `diferencia` int DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `fecha_hora` datetime NOT NULL,
  `motivo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_auditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_stock`
--

LOCK TABLES `auditoria_stock` WRITE;
/*!40000 ALTER TABLE `auditoria_stock` DISABLE KEYS */;
INSERT INTO `auditoria_stock` VALUES (1,1,'Smartphone Samsung Galaxy','INSERT',0,500,500,'root@localhost','2025-11-27 23:48:59','Producto creado'),(2,2,'Laptop Dell Inspiron','INSERT',0,250,250,'root@localhost','2025-11-27 23:48:59','Producto creado'),(3,3,'Jeans Levis 501','INSERT',0,1000,1000,'root@localhost','2025-11-27 23:48:59','Producto creado'),(4,4,'Zapatillas Nike Air','INSERT',0,750,750,'root@localhost','2025-11-27 23:48:59','Producto creado'),(5,5,'Arroz Diana','INSERT',0,2000,2000,'root@localhost','2025-11-27 23:48:59','Producto creado'),(6,6,'Mesa de comedor','INSERT',0,150,150,'root@localhost','2025-11-27 23:48:59','Producto creado'),(7,7,'Silla ergonómica','INSERT',0,300,300,'root@localhost','2025-11-27 23:48:59','Producto creado'),(8,8,'Libro Programación SQL','INSERT',0,400,400,'root@localhost','2025-11-27 23:48:59','Producto creado'),(9,9,'Tablet iPad Pro','INSERT',0,200,200,'root@localhost','2025-11-27 23:48:59','Producto creado'),(10,10,'Camiseta Adidas','INSERT',0,800,800,'root@localhost','2025-11-27 23:48:59','Producto creado'),(11,11,'Notebook HP Pavilion','INSERT',0,300,300,'root@localhost','2025-11-27 23:48:59','Producto creado'),(12,12,'Pantalón Dockers','INSERT',0,600,600,'root@localhost','2025-11-27 23:48:59','Producto creado'),(13,13,'Zapatos Oxford','INSERT',0,450,450,'root@localhost','2025-11-27 23:48:59','Producto creado'),(14,14,'Fideos Lucchetti','INSERT',0,1500,1500,'root@localhost','2025-11-27 23:48:59','Producto creado'),(15,15,'Sofá de 3 plazas','INSERT',0,100,100,'root@localhost','2025-11-27 23:48:59','Producto creado'),(16,16,'Escritorio ejecutivo','INSERT',0,200,200,'root@localhost','2025-11-27 23:48:59','Producto creado'),(17,17,'Libro JavaScript','INSERT',0,350,350,'root@localhost','2025-11-27 23:48:59','Producto creado'),(18,18,'Smartwatch Apple','INSERT',0,250,250,'root@localhost','2025-11-27 23:48:59','Producto creado'),(19,19,'Camisa Polo','INSERT',0,900,900,'root@localhost','2025-11-27 23:48:59','Producto creado'),(20,20,'Botines de fútbol','INSERT',0,400,400,'root@localhost','2025-11-27 23:48:59','Producto creado'),(21,21,'Aceite de oliva','INSERT',0,800,800,'root@localhost','2025-11-27 23:48:59','Producto creado'),(22,22,'Cama matrimonial','INSERT',0,80,80,'root@localhost','2025-11-27 23:48:59','Producto creado'),(23,23,'Silla gamer','INSERT',0,250,250,'root@localhost','2025-11-27 23:48:59','Producto creado'),(24,24,'Libro Python','INSERT',0,450,450,'root@localhost','2025-11-27 23:48:59','Producto creado'),(25,25,'Auriculares Sony','INSERT',0,350,350,'root@localhost','2025-11-27 23:48:59','Producto creado'),(26,26,'Vestido de verano','INSERT',0,550,550,'root@localhost','2025-11-27 23:48:59','Producto creado'),(27,27,'Zapatillas Converse','INSERT',0,700,700,'root@localhost','2025-11-27 23:48:59','Producto creado'),(28,28,'Café Juan Valdez','INSERT',0,1000,1000,'root@localhost','2025-11-27 23:48:59','Producto creado'),(29,29,'Closet de 3 puertas','INSERT',0,120,120,'root@localhost','2025-11-27 23:48:59','Producto creado'),(30,30,'Mesa de centro','INSERT',0,180,180,'root@localhost','2025-11-27 23:48:59','Producto creado'),(31,31,'Libro React','INSERT',0,300,300,'root@localhost','2025-11-27 23:48:59','Producto creado'),(32,32,'Teclado mecánico','INSERT',0,400,400,'root@localhost','2025-11-27 23:48:59','Producto creado'),(33,33,'Short deportivo','INSERT',0,850,850,'root@localhost','2025-11-27 23:48:59','Producto creado'),(34,34,'Botas de lluvia','INSERT',0,300,300,'root@localhost','2025-11-27 23:48:59','Producto creado'),(35,35,'Vino tinto Malbec','INSERT',0,1200,1200,'root@localhost','2025-11-27 23:48:59','Producto creado'),(36,36,'Lámpara de pie','INSERT',0,220,220,'root@localhost','2025-11-27 23:48:59','Producto creado'),(37,37,'Repisa flotante','INSERT',0,350,350,'root@localhost','2025-11-27 23:48:59','Producto creado'),(38,38,'Libro Node.js','INSERT',0,280,280,'root@localhost','2025-11-27 23:48:59','Producto creado'),(39,39,'Mouse inalámbrico','INSERT',0,500,500,'root@localhost','2025-11-27 23:48:59','Producto creado'),(40,40,'Blusa femenina','INSERT',0,650,650,'root@localhost','2025-11-27 23:48:59','Producto creado'),(41,41,'Sandalias de playa','INSERT',0,950,950,'root@localhost','2025-11-27 23:48:59','Producto creado'),(42,42,'Galletas Oreo','INSERT',0,1800,1800,'root@localhost','2025-11-27 23:48:59','Producto creado'),(43,43,'Espejo de pared','INSERT',0,150,150,'root@localhost','2025-11-27 23:48:59','Producto creado'),(44,44,'Banqueta de cocina','INSERT',0,280,280,'root@localhost','2025-11-27 23:48:59','Producto creado'),(45,45,'Libro Machine Learning','INSERT',0,220,220,'root@localhost','2025-11-27 23:48:59','Producto creado'),(46,46,'Monitor 24 pulgadas','INSERT',0,320,320,'root@localhost','2025-11-27 23:48:59','Producto creado'),(47,47,'Falda escolar','INSERT',0,750,750,'root@localhost','2025-11-27 23:48:59','Producto creado'),(48,48,'Zapatillas de casa','INSERT',0,1100,1100,'root@localhost','2025-11-27 23:48:59','Producto creado'),(49,49,'Té verde','INSERT',0,1500,1500,'root@localhost','2025-11-27 23:48:59','Producto creado'),(50,50,'Maceta de cerámica','INSERT',0,400,400,'root@localhost','2025-11-27 23:48:59','Producto creado'),(51,51,'Almohada ortopédica','INSERT',0,500,500,'root@localhost','2025-11-27 23:48:59','Producto creado'),(52,52,'Libro Docker','INSERT',0,380,380,'root@localhost','2025-11-27 23:48:59','Producto creado'),(53,53,'Webcam HD','INSERT',0,280,280,'root@localhost','2025-11-27 23:48:59','Producto creado'),(54,54,'Pantalón cargo','INSERT',0,550,550,'root@localhost','2025-11-27 23:48:59','Producto creado'),(55,55,'Chaqueta impermeable','INSERT',0,250,250,'root@localhost','2025-11-27 23:48:59','Producto creado'),(56,56,'Miel pura','INSERT',0,900,900,'root@localhost','2025-11-27 23:48:59','Producto creado'),(57,57,'Cuadro decorativo','INSERT',0,180,180,'root@localhost','2025-11-27 23:48:59','Producto creado'),(58,58,'Perchero de pie','INSERT',0,330,330,'root@localhost','2025-11-27 23:48:59','Producto creado'),(59,59,'Libro CSS','INSERT',0,420,420,'root@localhost','2025-11-27 23:48:59','Producto creado'),(60,60,'Altavoces Bluetooth','INSERT',0,350,350,'root@localhost','2025-11-27 23:48:59','Producto creado'),(61,61,'Camisa de vestir','INSERT',0,700,700,'root@localhost','2025-11-27 23:48:59','Producto creado'),(62,62,'Botines de seguridad','INSERT',0,200,200,'root@localhost','2025-11-27 23:48:59','Producto creado'),(63,63,'Té verde matcha','INSERT',0,850,850,'root@localhost','2025-11-27 23:48:59','Producto creado'),(64,64,'Reloj de pared','INSERT',0,250,250,'root@localhost','2025-11-27 23:48:59','Producto creado'),(65,65,'Organizador de cocina','INSERT',0,450,450,'root@localhost','2025-11-27 23:48:59','Producto creado'),(66,66,'Libro PHP','INSERT',0,350,350,'root@localhost','2025-11-27 23:48:59','Producto creado'),(67,67,'Disco duro externo','INSERT',0,450,450,'root@localhost','2025-11-27 23:48:59','Producto creado'),(68,68,'Vestido de noche','INSERT',0,400,400,'root@localhost','2025-11-27 23:48:59','Producto creado'),(69,69,'Chanclas','INSERT',0,1200,1200,'root@localhost','2025-11-27 23:48:59','Producto creado'),(70,70,'Aceite de coco','INSERT',0,850,850,'root@localhost','2025-11-27 23:48:59','Producto creado'),(71,71,'Juego de sillas','INSERT',0,200,200,'root@localhost','2025-11-27 23:48:59','Producto creado'),(72,72,'Estantería modular','INSERT',0,150,150,'root@localhost','2025-11-27 23:48:59','Producto creado'),(73,1,'Smartphone Samsung Galaxy','UPDATE',500,495,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(74,2,'Laptop Dell Inspiron','UPDATE',250,248,-2,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(75,3,'Jeans Levis 501','UPDATE',1000,990,-10,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(76,4,'Zapatillas Nike Air','UPDATE',750,742,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(77,5,'Arroz Diana','UPDATE',2000,1980,-20,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(78,6,'Mesa de comedor','UPDATE',150,149,-1,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(79,7,'Silla ergonómica','UPDATE',300,298,-2,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(80,8,'Libro Programación SQL','UPDATE',400,385,-15,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(81,9,'Tablet iPad Pro','UPDATE',200,197,-3,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(82,10,'Camiseta Adidas','UPDATE',800,788,-12,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(83,11,'Notebook HP Pavilion','UPDATE',300,275,-25,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(84,12,'Pantalón Dockers','UPDATE',600,592,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(85,13,'Zapatos Oxford','UPDATE',450,420,-30,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(86,14,'Fideos Lucchetti','UPDATE',1500,1495,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(87,15,'Sofá de 3 plazas','UPDATE',100,85,-15,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(88,16,'Escritorio ejecutivo','UPDATE',200,180,-20,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(89,17,'Libro JavaScript','UPDATE',350,340,-10,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(90,18,'Smartwatch Apple','UPDATE',250,243,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(91,19,'Camisa Polo','UPDATE',900,888,-12,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(92,20,'Botines de fútbol','UPDATE',400,375,-25,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(93,21,'Aceite de oliva','UPDATE',800,792,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(94,22,'Cama matrimonial','UPDATE',80,62,-18,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(95,23,'Silla gamer','UPDATE',250,220,-30,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(96,24,'Libro Python','UPDATE',450,444,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(97,25,'Auriculares Sony','UPDATE',350,336,-14,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(98,26,'Vestido de verano','UPDATE',550,528,-22,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(99,27,'Zapatillas Converse','UPDATE',700,684,-16,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(100,28,'Café Juan Valdez','UPDATE',1000,991,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(101,29,'Closet de 3 puertas','UPDATE',120,109,-11,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(102,30,'Mesa de centro','UPDATE',180,152,-28,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(103,31,'Libro React','UPDATE',300,293,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(104,32,'Teclado mecánico','UPDATE',400,381,-19,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(105,33,'Short deportivo','UPDATE',850,826,-24,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(106,34,'Botas de lluvia','UPDATE',300,296,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(107,35,'Vino tinto Malbec','UPDATE',1200,1187,-13,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(108,36,'Lámpara de pie','UPDATE',220,199,-21,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(109,37,'Repisa flotante','UPDATE',350,333,-17,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(110,38,'Libro Node.js','UPDATE',280,272,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(111,39,'Mouse inalámbrico','UPDATE',500,485,-15,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(112,40,'Blusa femenina','UPDATE',650,624,-26,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(113,41,'Sandalias de playa','UPDATE',950,945,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(114,42,'Galletas Oreo','UPDATE',1800,1788,-12,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(115,43,'Espejo de pared','UPDATE',150,130,-20,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(116,44,'Banqueta de cocina','UPDATE',280,271,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(117,45,'Libro Machine Learning','UPDATE',220,204,-16,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(118,46,'Monitor 24 pulgadas','UPDATE',320,306,-14,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(119,47,'Falda escolar','UPDATE',750,727,-23,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(120,48,'Zapatillas de casa','UPDATE',1100,1094,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(121,49,'Té verde','UPDATE',1500,1489,-11,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(122,50,'Maceta de cerámica','UPDATE',400,382,-18,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(123,1,'Smartphone Samsung Galaxy','UPDATE',495,488,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(124,2,'Laptop Dell Inspiron','UPDATE',248,235,-13,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(125,3,'Jeans Levis 501','UPDATE',990,968,-22,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(126,1,'Smartphone Samsung Galaxy','UPDATE',488,485,-3,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(127,5,'Arroz Diana','UPDATE',1980,1965,-15,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(128,3,'Jeans Levis 501','UPDATE',968,956,-12,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(129,7,'Silla ergonómica','UPDATE',298,294,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(130,9,'Tablet iPad Pro','UPDATE',197,195,-2,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(131,11,'Notebook HP Pavilion','UPDATE',275,269,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(132,13,'Zapatos Oxford','UPDATE',420,395,-25,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(133,15,'Sofá de 3 plazas','UPDATE',85,77,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(134,17,'Libro JavaScript','UPDATE',340,322,-18,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(135,19,'Camisa Polo','UPDATE',888,874,-14,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(136,21,'Aceite de oliva','UPDATE',792,787,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(137,23,'Silla gamer','UPDATE',220,198,-22,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(138,25,'Auriculares Sony','UPDATE',336,326,-10,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(139,27,'Zapatillas Converse','UPDATE',684,668,-16,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(140,29,'Closet de 3 puertas','UPDATE',109,102,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(141,31,'Libro React','UPDATE',293,289,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(142,33,'Short deportivo','UPDATE',826,806,-20,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(143,35,'Vino tinto Malbec','UPDATE',1187,1178,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(144,37,'Repisa flotante','UPDATE',333,320,-13,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(145,39,'Mouse inalámbrico','UPDATE',485,474,-11,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(146,41,'Sandalias de playa','UPDATE',945,942,-3,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(147,43,'Espejo de pared','UPDATE',130,113,-17,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(148,45,'Libro Machine Learning','UPDATE',204,196,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(149,47,'Falda escolar','UPDATE',727,703,-24,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(150,49,'Té verde','UPDATE',1489,1483,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(151,2,'Laptop Dell Inspiron','UPDATE',235,231,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(152,4,'Zapatillas Nike Air','UPDATE',742,733,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(153,6,'Mesa de comedor','UPDATE',149,147,-2,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(154,8,'Libro Programación SQL','UPDATE',385,366,-19,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(155,10,'Camiseta Adidas','UPDATE',788,767,-21,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(156,12,'Pantalón Dockers','UPDATE',592,577,-15,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(157,14,'Fideos Lucchetti','UPDATE',1495,1488,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(158,16,'Escritorio ejecutivo','UPDATE',180,169,-11,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(159,18,'Smartwatch Apple','UPDATE',243,238,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(160,20,'Botines de fútbol','UPDATE',375,349,-26,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(161,22,'Cama matrimonial','UPDATE',62,49,-13,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(162,24,'Libro Python','UPDATE',444,441,-3,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(163,26,'Vestido de verano','UPDATE',528,510,-18,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(164,28,'Café Juan Valdez','UPDATE',991,983,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(165,30,'Mesa de centro','UPDATE',152,129,-23,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(166,32,'Teclado mecánico','UPDATE',381,369,-12,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(167,34,'Botas de lluvia','UPDATE',296,290,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(168,36,'Lámpara de pie','UPDATE',199,185,-14,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(169,38,'Libro Node.js','UPDATE',272,263,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(170,40,'Blusa femenina','UPDATE',624,597,-27,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(171,42,'Galletas Oreo','UPDATE',1788,1772,-16,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(172,44,'Banqueta de cocina','UPDATE',271,261,-10,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(173,46,'Monitor 24 pulgadas','UPDATE',306,301,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(174,48,'Zapatillas de casa','UPDATE',1094,1090,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(175,50,'Maceta de cerámica','UPDATE',382,363,-19,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(176,1,'Smartphone Samsung Galaxy','UPDATE',485,479,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(177,3,'Jeans Levis 501','UPDATE',956,939,-17,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(178,5,'Arroz Diana','UPDATE',1965,1954,-11,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(179,7,'Silla ergonómica','UPDATE',294,291,-3,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(180,9,'Tablet iPad Pro','UPDATE',195,187,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(181,11,'Notebook HP Pavilion','UPDATE',269,265,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(182,13,'Zapatos Oxford','UPDATE',395,367,-28,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(183,15,'Sofá de 3 plazas','UPDATE',77,70,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(184,17,'Libro JavaScript','UPDATE',322,302,-20,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(185,19,'Camisa Polo','UPDATE',874,865,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(186,21,'Aceite de oliva','UPDATE',787,781,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(187,23,'Silla gamer','UPDATE',198,174,-24,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(188,25,'Auriculares Sony','UPDATE',326,314,-12,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(189,27,'Zapatillas Converse','UPDATE',668,654,-14,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(190,29,'Closet de 3 puertas','UPDATE',102,97,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(191,31,'Libro React','UPDATE',289,282,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(192,33,'Short deportivo','UPDATE',806,785,-21,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(193,35,'Vino tinto Malbec','UPDATE',1178,1168,-10,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(194,37,'Repisa flotante','UPDATE',320,305,-15,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(195,39,'Mouse inalámbrico','UPDATE',474,461,-13,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(196,41,'Sandalias de playa','UPDATE',942,940,-2,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(197,43,'Espejo de pared','UPDATE',113,95,-18,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(198,45,'Libro Machine Learning','UPDATE',196,187,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(199,47,'Falda escolar','UPDATE',703,678,-25,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(200,49,'Té verde','UPDATE',1483,1479,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(201,2,'Laptop Dell Inspiron','UPDATE',231,226,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(202,4,'Zapatillas Nike Air','UPDATE',733,722,-11,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(203,6,'Mesa de comedor','UPDATE',147,144,-3,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(204,8,'Libro Programación SQL','UPDATE',366,344,-22,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(205,10,'Camiseta Adidas','UPDATE',767,749,-18,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(206,12,'Pantalón Dockers','UPDATE',577,561,-16,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(207,14,'Fideos Lucchetti','UPDATE',1488,1480,-8,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(208,16,'Escritorio ejecutivo','UPDATE',169,157,-12,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(209,18,'Smartwatch Apple','UPDATE',238,232,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(210,20,'Botines de fútbol','UPDATE',349,320,-29,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(211,22,'Cama matrimonial','UPDATE',49,35,-14,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(212,24,'Libro Python','UPDATE',441,437,-4,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(213,26,'Vestido de verano','UPDATE',510,491,-19,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(214,28,'Café Juan Valdez','UPDATE',983,974,-9,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(215,30,'Mesa de centro','UPDATE',129,103,-26,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(216,32,'Teclado mecánico','UPDATE',369,354,-15,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(217,34,'Botas de lluvia','UPDATE',290,283,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(218,36,'Lámpara de pie','UPDATE',185,169,-16,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(219,38,'Libro Node.js','UPDATE',263,253,-10,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(220,40,'Blusa femenina','UPDATE',597,567,-30,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(221,42,'Galletas Oreo','UPDATE',1772,1755,-17,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(222,44,'Banqueta de cocina','UPDATE',261,250,-11,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(223,46,'Monitor 24 pulgadas','UPDATE',301,295,-6,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(224,48,'Zapatillas de casa','UPDATE',1090,1085,-5,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(225,50,'Maceta de cerámica','UPDATE',363,343,-20,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(226,1,'Smartphone Samsung Galaxy','UPDATE',479,472,-7,'root@localhost','2025-11-27 23:48:59','Reducción de stock'),(227,3,'Jeans Levis 501','UPDATE',939,921,-18,'root@localhost','2025-11-27 23:48:59','Reducción de stock');
/*!40000 ALTER TABLE `auditoria_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Electrónicos','Dispositivos electrónicos y accesorios'),(2,'Ropa y Calzado','Prendas de vestir y calzado'),(3,'Alimentos','Productos alimenticios y bebidas'),(4,'Muebles','Muebles para el hogar y oficina'),(5,'Libros','Libros y material educativo'),(6,'Juguetes','Juguetes y juegos para niños'),(7,'Deportes','Artículos deportivos y fitness'),(8,'Hogar','Artículos para el hogar y decoración'),(9,'Belleza','Productos de belleza y cuidado personal'),(10,'Automotriz','Repuestos y accesorios para vehículos'),(11,'Informática','Equipos y accesorios de cómputo'),(12,'Salud','Medicamentos y productos de salud'),(13,'Mascotas','Alimentos y accesorios para mascotas'),(14,'Jardinería','Plantas y herramientas de jardín'),(15,'Construcción','Materiales y herramientas de construcción'),(16,'Oficina','Útiles y mobiliario de oficina'),(17,'Ferretería','Herramientas y materiales de ferretería'),(18,'Textiles','Telas y materiales textiles'),(19,'Arte','Cuadros, esculturas y artículos de arte'),(20,'Música','Instrumentos musicales y accesorios'),(21,'Fotografía','Cámaras y equipos fotográficos'),(22,'Videojuegos','Consolas y videojuegos'),(23,'Cine','Películas y series en DVD/Blu-ray'),(24,'Viajes','Maletas y accesorios de viaje'),(25,'Relojes','Relojes y accesorios de relojería'),(26,'Joyería','Joyas y bisutería'),(27,'Lencería','Ropa interior y artículos de lencería'),(28,'Calzado','Todo tipo de calzado'),(29,'Niños','Artículos para bebés y niños'),(30,'Adolescentes','Ropa y artículos para adolescentes'),(31,'Hombres','Ropa y accesorios para hombres'),(32,'Mujeres','Ropa y accesorios para mujeres'),(33,'Unisex','Artículos unisex'),(34,'Temporada','Artículos de temporada'),(35,'Ofertas','Productos en oferta'),(36,'Novedades','Últimos lanzamientos'),(37,'Exclusivos','Productos exclusivos'),(38,'Importados','Productos importados'),(39,'Nacionales','Productos nacionales'),(40,'Ecológicos','Productos ecológicos y sostenibles'),(41,'Premium','Productos de gama alta'),(42,'Económicos','Productos económicos'),(43,'Profesionales','Productos para uso profesional'),(44,'Domésticos','Productos para uso doméstico'),(45,'Industriales','Productos para uso industrial'),(46,'Agrícolas','Productos para uso agrícola'),(47,'Ganaderos','Productos para uso ganadero'),(48,'Pesqueros','Productos para uso pesquero'),(49,'Mineros','Productos para uso minero'),(50,'Forestales','Productos para uso forestal'),(51,'Turísticos','Productos para uso turístico'),(52,'Educativos','Productos para uso educativo'),(53,'Científicos','Productos para uso científico'),(54,'Tecnológicos','Productos tecnológicos avanzados'),(55,'Médicos','Productos de uso médico'),(56,'Quirúrgicos','Productos de uso quirúrgico'),(57,'Dentales','Productos de uso dental'),(58,'Veterinarios','Productos de uso veterinario'),(59,'Farmacéuticos','Productos farmacéuticos'),(60,'Cosméticos','Productos cosméticos'),(61,'Higiénicos','Productos de higiene personal'),(62,'Limpieza','Productos de limpieza');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha_registro` date NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Juan Carlos Rodríguez','Av. Corrientes 1234, Buenos Aires','11-4321-5678','juan.rodriguez@email.com','2025-11-27'),(2,'María García López','Calle Sarmiento 567, Córdoba','351-234-5678','maria.garcia@email.com','2025-11-27'),(3,'Pedro Martínez Silva','Rivadavia 890, Rosario','341-456-7890','pedro.martinez@email.com','2025-11-27'),(4,'Ana Fernández Torres','San Martín 345, Mendoza','261-345-6789','ana.fernandez@email.com','2025-11-27'),(5,'Carlos López Gómez','Belgrano 678, La Plata','221-456-7890','carlos.lopez@email.com','2025-11-27'),(6,'Laura Sánchez Pérez','Mitre 1234, Mar del Plata','223-456-7890','laura.sanchez@email.com','2025-11-27'),(7,'Miguel Ángel López','9 de Julio 567, Tucumán','381-456-7890','miguel.lopez@email.com','2025-11-27'),(8,'Patricia Ramírez Díaz','San Martín 890, Salta','387-456-7890','patricia.ramirez@email.com','2025-11-27'),(9,'José Luis Morales','Belgrano 1234, Jujuy','388-456-7890','jose.morales@email.com','2025-11-27'),(10,'Roberto Carlos Silva','Av. España 567, Corrientes','379-456-7890','roberto.silva@email.com','2025-11-27'),(11,'María del Carmen García','San Martín 890, Chaco','372-456-7890','maria.garcia2@email.com','2025-11-27'),(12,'Pedro Ángel Martínez','Mitre 1234, Formosa','371-456-7890','pedro.martinez2@email.com','2025-11-27'),(13,'Ana María Fernández','Belgrano 567, Misiones','375-456-7890','ana.fernandez2@email.com','2025-11-27'),(14,'Carlos Alberto López','San Martín 890, La Rioja','380-456-7890','carlos.lopez2@email.com','2025-11-27'),(15,'Laura Beatriz Sánchez','Av. España 1234, Catamarca','383-456-7890','laura.sanchez2@email.com','2025-11-27'),(16,'Miguel Ángel Ramírez','Mitre 567, San Juan','264-456-7890','miguel.ramirez@email.com','2025-11-27'),(17,'Patricia Isabel Morales','San Martín 890, San Luis','266-456-7890','patricia.morales@email.com','2025-11-27'),(18,'José Manuel Rodríguez','Belgrano 1234, Santiago del Estero','385-456-7890','jose.rodriguez@email.com','2025-11-27'),(19,'María Isabel García','San Martín 567, Rio Negro','299-456-7890','maria.garcia3@email.com','2025-11-27'),(20,'Pedro Luis Martínez','Av. España 890, Neuquén','292-456-7890','pedro.martinez3@email.com','2025-11-27'),(21,'Ana Beatriz Fernández','Mitre 1234, Chubut','280-456-7890','ana.fernandez3@email.com','2025-11-27'),(22,'Carlos Miguel López','San Martín 567, Santa Cruz','296-456-7890','carlos.lopez3@email.com','2025-11-27'),(23,'Laura Patricia Sánchez','Belgrano 890, Tierra del Fuego','290-456-7890','laura.sanchez3@email.com','2025-11-27'),(24,'Miguel Francisco Ramírez','Av. España 1234, Entre Ríos','344-456-7890','miguel.ramirez2@email.com','2025-11-27'),(25,'Patricia Alejandra Morales','Mitre 567, Santa Fe','342-456-7890','patricia.morales2@email.com','2025-11-27'),(26,'José Manuel Rodríguez','San Martín 890, Córdoba','351-234-5678','jose.rodriguez2@email.com','2025-11-27'),(27,'María del Carmen García','Belgrano 1234, Mendoza','261-345-6789','maria.garcia4@email.com','2025-11-27'),(28,'Pedro Ángel Martínez','San Martín 567, Buenos Aires','11-4321-5678','pedro.martinez4@email.com','2025-11-27'),(29,'Ana María Fernández','Av. España 890, Rosario','341-456-7890','ana.fernandez4@email.com','2025-11-27'),(30,'Carlos Alberto López','Mitre 1234, La Plata','221-456-7890','carlos.lopez4@email.com','2025-11-27'),(31,'Laura Beatriz Sánchez','San Martín 567, Mar del Plata','223-456-7890','laura.sanchez4@email.com','2025-11-27'),(32,'Miguel Ángel Ramírez','Belgrano 890, Tucumán','381-456-7890','miguel.ramirez3@email.com','2025-11-27'),(33,'Patricia Isabel Morales','Av. España 1234, Salta','387-456-7890','patricia.morales3@email.com','2025-11-27'),(34,'José Luis Rodríguez','Mitre 567, Jujuy','388-456-7890','jose.rodriguez3@email.com','2025-11-27'),(35,'Roberto Carlos Silva','San Martín 890, Corrientes','379-456-7890','roberto.silva2@email.com','2025-11-27'),(36,'María del Carmen García','Belgrano 1234, Chaco','372-456-7890','maria.garcia5@email.com','2025-11-27'),(37,'Pedro Ángel Martínez','San Martín 567, Formosa','371-456-7890','pedro.martinez5@email.com','2025-11-27'),(38,'Ana María Fernández','Av. España 890, Misiones','375-456-7890','ana.fernandez5@email.com','2025-11-27'),(39,'Carlos Alberto López','Mitre 1234, La Rioja','380-456-7890','carlos.lopez5@email.com','2025-11-27'),(40,'Laura Beatriz Sánchez','San Martín 567, Catamarca','383-456-7890','laura.sanchez5@email.com','2025-11-27'),(41,'Miguel Ángel Ramírez','Belgrano 890, San Juan','264-456-7890','miguel.ramirez4@email.com','2025-11-27'),(42,'Patricia Isabel Morales','Av. España 1234, San Luis','266-456-7890','patricia.morales4@email.com','2025-11-27'),(43,'José Manuel Rodríguez','Mitre 567, Santiago del Estero','385-456-7890','jose.rodriguez4@email.com','2025-11-27'),(44,'María Isabel García','San Martín 890, Rio Negro','299-456-7890','maria.garcia6@email.com','2025-11-27'),(45,'Pedro Luis Martínez','Belgrano 1234, Neuquén','292-456-7890','pedro.martinez6@email.com','2025-11-27'),(46,'Ana Beatriz Fernández','San Martín 567, Chubut','280-456-7890','ana.fernandez6@email.com','2025-11-27'),(47,'Carlos Miguel López','Av. España 890, Santa Cruz','296-456-7890','carlos.lopez6@email.com','2025-11-27'),(48,'Laura Patricia Sánchez','Mitre 1234, Tierra del Fuego','290-456-7890','laura.sanchez6@email.com','2025-11-27'),(49,'Miguel Francisco Ramírez','San Martín 567, Entre Ríos','344-456-7890','miguel.ramirez5@email.com','2025-11-27'),(50,'Patricia Alejandra Morales','Belgrano 890, Santa Fe','342-456-7890','patricia.morales5@email.com','2025-11-27');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_fecha_registro_cliente` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN
    -- Establecer la fecha actual como fecha de registro
    SET NEW.fecha_registro = CURDATE();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `conductor`
--

DROP TABLE IF EXISTS `conductor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conductor` (
  `id_conductor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `licencia` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `id_transporte` int NOT NULL,
  PRIMARY KEY (`id_conductor`),
  UNIQUE KEY `licencia` (`licencia`),
  KEY `fk_conductor_transporte` (`id_transporte`),
  CONSTRAINT `fk_conductor_transporte` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'José Luis Morales','A12345678','11-2345-6789',1),(2,'Roberto Carlos Silva','B98765432','11-3456-7890',1),(3,'Miguel Ángel López','C45678912','11-4567-8901',2),(4,'Fernando Torres Ruiz','D78901234','11-5678-9012',2),(5,'Carlos Alberto Ramírez','E23456789','11-6789-0123',3),(6,'Jorge Martínez Pérez','F56789012','11-7890-1234',3),(7,'Luis García López','G67890123','11-8901-2345',4),(8,'Antonio Rodríguez Díaz','H78901234','11-9012-3456',4),(9,'Juan Martínez Sánchez','I89012345','11-0123-4567',5),(10,'David García Martín','J90123456','11-1234-5678',5),(11,'José Rodríguez López','K01234567','11-2345-6789',6),(12,'Manuel Martínez García','L12345678','11-3456-7890',6),(13,'Francisco López Rodríguez','M23456789','11-4567-8901',7),(14,'Alejandro García Martínez','N34567890','11-5678-9012',7),(15,'Miguel Rodríguez López','O45678901','11-6789-0123',8),(16,'Javier Martínez García','P56789012','11-7890-1234',8),(17,'Carlos López Rodríguez','Q67890123','11-8901-2345',9),(18,'Juan García Martínez','R78901234','11-9012-3456',9),(19,'José Martínez López','S89012345','11-0123-4567',10),(20,'David Rodríguez García','T90123456','11-1234-5678',10),(21,'Manuel López Martínez','U01234567','11-2345-6789',11),(22,'Francisco García Rodríguez','V12345678','11-3456-7890',11),(23,'Alejandro Martínez López','W23456789','11-4567-8901',12),(24,'Miguel Rodríguez García','X34567890','11-5678-9012',12),(25,'Javier Martínez Rodríguez','Y45678901','11-6789-0123',13),(26,'Carlos García Martínez','Z56789012','11-7890-1234',13),(27,'Juan López García','AA67890123','11-8901-2345',14),(28,'José Martínez Rodríguez','BB78901234','11-9012-3456',14),(29,'David García López','CC89012345','11-0123-4567',15),(30,'Manuel Rodríguez Martínez','DD90123456','11-1234-5678',15),(31,'Francisco Martínez García','EE01234567','11-2345-6789',16),(32,'Alejandro García Rodríguez','FF12345678','11-3456-7890',16),(33,'Miguel López Martínez','GG23456789','11-4567-8901',17),(34,'Javier Martínez García','HH34567890','11-5678-9012',17),(35,'Carlos Rodríguez López','II45678901','11-6789-0123',18),(36,'Juan García Martínez','JJ56789012','11-7890-1234',18),(37,'José Martínez Rodríguez','KK67890123','11-8901-2345',19),(38,'David García López','LL78901234','11-9012-3456',19),(39,'Manuel Rodríguez Martínez','MM89012345','11-0123-4567',20),(40,'Francisco Martínez García','NN90123456','11-1234-5678',20),(41,'Alejandro García Rodríguez','OO01234567','11-2345-6789',21),(42,'Miguel López Martínez','PP12345678','11-3456-7890',21),(43,'Javier Martínez García','QQ23456789','11-4567-8901',22),(44,'Carlos Rodríguez López','RR34567890','11-5678-9012',22),(45,'Juan García Martínez','SS45678901','11-6789-0123',23),(46,'José Martínez Rodríguez','TT56789012','11-7890-1234',23),(47,'David García López','UU67890123','11-8901-2345',24),(48,'Manuel Rodríguez Martínez','VV78901234','11-9012-3456',24),(49,'Francisco Martínez García','WW89012345','11-0123-4567',25),(50,'Alejandro García Rodríguez','XX90123456','11-1234-5678',25),(51,'Miguel López Martínez','YY01234567','11-2345-6789',26),(52,'Javier Martínez García','ZZ12345678','11-3456-7890',26),(53,'Carlos Rodríguez López','AA23456789','11-4567-8901',27),(54,'Juan García Martínez','BB34567890','11-5678-9012',27),(55,'José Martínez Rodríguez','CC45678901','11-6789-0123',28),(56,'David García López','DD56789012','11-7890-1234',28),(57,'Manuel Rodríguez Martínez','EE67890123','11-8901-2345',29),(58,'Francisco Martínez García','FF78901234','11-9012-3456',29),(59,'Alejandro García Rodríguez','GG89012345','11-0123-4567',30),(60,'Miguel López Martínez','HH90123456','11-1234-5678',30),(61,'Javier Martínez García','II01234567','11-2345-6789',31),(62,'Carlos Rodríguez López','JJ12345678','11-3456-7890',31),(63,'Juan García Martínez','KK23456789','11-4567-8901',32),(64,'José Martínez Rodríguez','LL34567890','11-5678-9012',32),(65,'David García López','MM45678901','11-6789-0123',33),(66,'Manuel Rodríguez Martínez','NN56789012','11-7890-1234',33),(67,'Francisco Martínez García','OO67890123','11-8901-2345',34),(68,'Alejandro García Rodríguez','PP78901234','11-9012-3456',34),(69,'Miguel López Martínez','QQ89012345','11-0123-4567',35),(70,'Javier Martínez García','RR90123456','11-1234-5678',35),(71,'Carlos Rodríguez López','SS01234567','11-2345-6789',36),(72,'Juan García Martínez','TT12345678','11-3456-7890',36),(73,'José Martínez Rodríguez','UU23456789','11-4567-8901',37),(74,'David García López','VV34567890','11-5678-9012',37),(75,'Manuel Rodríguez Martínez','WW45678901','11-6789-0123',38),(76,'Francisco Martínez García','XX56789012','11-7890-1234',38),(77,'Alejandro García Rodríguez','YY67890123','11-8901-2345',39),(78,'Miguel López Martínez','ZZ78901234','11-9012-3456',39),(79,'Javier Martínez García','AAA89012345','11-0123-4567',40),(80,'Carlos Rodríguez López','BBB90123456','11-1234-5678',40),(81,'Juan García Martínez','CCC01234567','11-2345-6789',41),(82,'José Martínez Rodríguez','DDD12345678','11-3456-7890',41),(83,'David García López','EEE23456789','11-4567-8901',42),(84,'Manuel Rodríguez Martínez','FFF34567890','11-5678-9012',42),(85,'Francisco Martínez García','GGG45678901','11-6789-0123',43),(86,'Alejandro García Rodríguez','HHH56789012','11-7890-1234',43),(87,'Miguel López Martínez','III67890123','11-8901-2345',44),(88,'Javier Martínez García','JJJ78901234','11-9012-3456',44),(89,'Carlos Rodríguez López','KKK89012345','11-0123-4567',45),(90,'Juan García Martínez','LLL90123456','11-1234-5678',45),(91,'José Martínez Rodríguez','MMM01234567','11-2345-6789',46),(92,'David García López','NNN12345678','11-3456-7890',46),(93,'Manuel Rodríguez Martínez','OOO23456789','11-4567-8901',47),(94,'Francisco Martínez García','PPP34567890','11-5678-9012',47),(95,'Alejandro García Rodríguez','QQQ45678901','11-6789-0123',48),(96,'Miguel López Martínez','RRR56789012','11-7890-1234',48),(97,'Javier Martínez García','SSS67890123','11-8901-2345',49),(98,'Carlos Rodríguez López','TTT78901234','11-9012-3456',49),(99,'Juan García Martínez','UUU89012345','11-0123-4567',50);
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_envio`
--

DROP TABLE IF EXISTS `detalle_envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_envio` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_envio` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_envio_envio` (`id_envio`),
  KEY `fk_detalle_envio_producto` (`id_producto`),
  CONSTRAINT `fk_detalle_envio_envio` FOREIGN KEY (`id_envio`) REFERENCES `envio` (`id_envio`),
  CONSTRAINT `fk_detalle_envio_producto` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_envio`
--

LOCK TABLES `detalle_envio` WRITE;
/*!40000 ALTER TABLE `detalle_envio` DISABLE KEYS */;
INSERT INTO `detalle_envio` VALUES (1,1,1,5,899.99),(2,1,2,2,1299.99),(3,2,3,10,89.99),(4,2,4,8,129.99),(5,3,5,20,45.50),(6,4,6,1,899.99),(7,4,7,2,299.99),(8,5,8,15,89.99),(9,6,9,3,1299.99),(10,7,10,12,39.99),(11,8,11,25,1599.99),(12,9,12,8,45.50),(13,10,13,30,89.99),(14,11,14,5,2599.99),(15,12,15,15,129.99),(16,13,16,20,299.99),(17,14,17,10,89.99),(18,15,18,7,1599.99),(19,16,19,12,129.99),(20,17,20,25,45.50),(21,18,21,8,2599.99),(22,19,22,18,129.99),(23,20,23,30,89.99),(24,21,24,6,3599.99),(25,22,25,14,129.99),(26,23,26,22,299.99),(27,24,27,16,89.99),(28,25,28,9,1799.99),(29,26,29,11,129.99),(30,27,30,28,45.50),(31,28,31,7,2599.99),(32,29,32,19,129.99),(33,30,33,24,89.99),(34,31,34,4,399.99),(35,32,35,13,129.99),(36,33,36,21,299.99),(37,34,37,17,89.99),(38,35,38,8,1999.99),(39,36,39,15,129.99),(40,37,40,26,45.50),(41,38,41,5,2799.99),(42,39,42,12,129.99),(43,40,43,20,299.99),(44,41,44,9,89.99),(45,42,45,16,1599.99),(46,43,46,14,129.99),(47,44,47,23,45.50),(48,45,48,6,2299.99),(49,46,49,11,129.99),(50,47,50,18,299.99),(51,48,1,7,89.99),(52,49,2,13,1599.99),(53,50,3,22,45.50),(54,51,1,3,899.99),(55,51,5,15,45.50),(56,52,3,12,89.99),(57,52,7,4,299.99),(58,53,9,2,1299.99),(59,54,11,6,1599.99),(60,55,13,25,89.99),(61,56,15,8,129.99),(62,57,17,18,89.99),(63,58,19,14,129.99),(64,59,21,5,2599.99),(65,60,23,22,89.99),(66,61,25,10,129.99),(67,62,27,16,89.99),(68,63,29,7,129.99),(69,64,31,4,2599.99),(70,65,33,20,89.99),(71,66,35,9,129.99),(72,67,37,13,89.99),(73,68,39,11,129.99),(74,69,41,3,2799.99),(75,70,43,17,299.99),(76,71,45,8,1599.99),(77,72,47,24,45.50),(78,73,49,6,129.99),(79,74,2,4,1299.99),(80,75,4,9,129.99),(81,76,6,2,899.99),(82,77,8,19,89.99),(83,78,10,21,39.99),(84,79,12,15,45.50),(85,80,14,7,2599.99),(86,81,16,11,299.99),(87,82,18,5,1599.99),(88,83,20,26,45.50),(89,84,22,13,129.99),(90,85,24,3,3599.99),(91,86,26,18,299.99),(92,87,28,8,1799.99),(93,88,30,23,45.50),(94,89,32,12,129.99),(95,90,34,6,399.99),(96,91,36,14,299.99),(97,92,38,9,1999.99),(98,93,40,27,45.50),(99,94,42,16,129.99),(100,95,44,10,89.99),(101,96,46,5,129.99),(102,97,48,4,2299.99),(103,98,50,19,299.99),(104,99,1,6,899.99),(105,100,3,17,89.99),(106,101,5,11,45.50),(107,102,7,3,299.99),(108,103,9,8,1299.99),(109,104,11,4,1599.99),(110,105,13,28,89.99),(111,106,15,7,129.99),(112,107,17,20,89.99),(113,108,19,9,129.99),(114,109,21,6,2599.99),(115,110,23,24,89.99),(116,111,25,12,129.99),(117,112,27,14,89.99),(118,113,29,5,129.99),(119,114,31,7,2599.99),(120,115,33,21,89.99),(121,116,35,10,129.99),(122,117,37,15,89.99),(123,118,39,13,129.99),(124,119,41,2,2799.99),(125,120,43,18,299.99),(126,121,45,9,1599.99),(127,122,47,25,45.50),(128,123,49,4,129.99),(129,124,2,5,1299.99),(130,125,4,11,129.99),(131,126,6,3,899.99),(132,127,8,22,89.99),(133,128,10,18,39.99),(134,129,12,16,45.50),(135,130,14,8,2599.99),(136,131,16,12,299.99),(137,132,18,6,1599.99),(138,133,20,29,45.50),(139,134,22,14,129.99),(140,135,24,4,3599.99),(141,136,26,19,299.99),(142,137,28,9,1799.99),(143,138,30,26,45.50),(144,139,32,15,129.99),(145,140,34,7,399.99),(146,141,36,16,299.99),(147,142,38,10,1999.99),(148,143,40,30,45.50),(149,144,42,17,129.99),(150,145,44,11,89.99),(151,146,46,6,129.99),(152,147,48,5,2299.99),(153,148,50,20,299.99),(154,149,1,7,899.99),(155,150,3,18,89.99);
/*!40000 ALTER TABLE `detalle_envio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_actualizar_stock_envio` AFTER INSERT ON `detalle_envio` FOR EACH ROW BEGIN
    -- Validar stock suficiente
    DECLARE stock_actual INT;
    
    SELECT stock INTO stock_actual FROM Producto WHERE id_producto = NEW.id_producto;
    
    IF stock_actual < NEW.cantidad THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para el producto';
    ELSE
        -- Restar la cantidad del detalle del envío del stock del producto
        UPDATE Producto 
        SET stock = stock - NEW.cantidad 
        WHERE id_producto = NEW.id_producto;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_modificar_stock_envio` AFTER UPDATE ON `detalle_envio` FOR EACH ROW BEGIN
    DECLARE diferencia INT;
    DECLARE stock_actual INT;
    SET diferencia = NEW.cantidad - OLD.cantidad;
    
    -- Validar si estamos aumentando la cantidad, que haya stock
    IF diferencia > 0 THEN
         SELECT stock INTO stock_actual FROM Producto WHERE id_producto = NEW.id_producto;
         
         IF stock_actual < diferencia THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stock insuficiente para la actualización';
         END IF;
    END IF;

    UPDATE Producto
    SET stock = stock - diferencia
    WHERE id_producto = NEW.id_producto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_restaurar_stock_envio` AFTER DELETE ON `detalle_envio` FOR EACH ROW BEGIN
    UPDATE Producto
    SET stock = stock + OLD.cantidad
    WHERE id_producto = OLD.id_producto;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `envio`
--

DROP TABLE IF EXISTS `envio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envio` (
  `id_envio` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_vehiculo` int NOT NULL,
  `id_conductor` int NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `fecha` date DEFAULT NULL,
  `estado` enum('Pendiente','En Transito','Entregado','Cancelado') DEFAULT 'Pendiente',
  `observaciones` text,
  PRIMARY KEY (`id_envio`),
  KEY `fk_envio_cliente` (`id_cliente`),
  KEY `fk_envio_vehiculo` (`id_vehiculo`),
  KEY `fk_envio_conductor` (`id_conductor`),
  CONSTRAINT `fk_envio_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_envio_conductor` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`),
  CONSTRAINT `fk_envio_vehiculo` FOREIGN KEY (`id_vehiculo`) REFERENCES `vehiculo` (`id_vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envio`
--

LOCK TABLES `envio` WRITE;
/*!40000 ALTER TABLE `envio` DISABLE KEYS */;
INSERT INTO `envio` VALUES (1,1,1,1,'Bodega Central - Buenos Aires','2023-06-01','Pendiente','Entrega prioritaria'),(2,2,3,3,'Centro de Distribución - Córdoba','2023-06-02','Pendiente','Contenido frágil'),(3,3,4,4,'Depósito Rosario - Santa Fe','2023-06-03','Pendiente','Entrega programada'),(4,4,2,2,'Sucursal Norte - CABA','2023-06-04','Pendiente','Retiro en tienda'),(5,5,5,5,'Bodega Mendoza - Mendoza','2023-06-05','Pendiente','Producto delicado'),(6,6,6,6,'Terminal La Plata - Buenos Aires','2023-06-06','Pendiente','Envío express'),(7,7,7,7,'Cliente Final - Córdoba','2023-06-07','Pendiente','Firma requerida'),(8,8,8,8,'Plaza Central - Rosario','2023-06-08','Pendiente','Entrega estándar'),(9,9,9,9,'Centro Comercial - Mendoza','2023-06-09','Pendiente','Carga pesada'),(10,10,10,10,'Zona Industrial - La Plata','2023-06-10','Pendiente','Material peligroso'),(11,11,11,11,'Puerto - Buenos Aires','2023-06-11','Pendiente','Importación'),(12,12,12,12,'Aeropuerto - Córdoba','2023-06-12','Pendiente','Exportación'),(13,13,13,13,'Fábrica - Rosario','2023-06-13','Pendiente','Materia prima'),(14,14,14,14,'Almacén - Mendoza','2023-06-14','Pendiente','Producto terminado'),(15,15,15,15,'Distribuidor - La Plata','2023-06-15','Pendiente','Venta mayorista'),(16,16,16,16,'Minorista - Buenos Aires','2023-06-16','Pendiente','Venta minorista'),(17,17,17,17,'Supermercado - Córdoba','2023-06-17','Pendiente','Abastecimiento'),(18,18,18,18,'Tienda - Rosario','2023-06-18','Pendiente','Reposición'),(19,19,19,19,'Shopping - Mendoza','2023-06-19','Pendiente','Lanzamiento'),(20,20,20,20,'Centro Logístico - La Plata','2023-06-20','Pendiente','Tránsito'),(21,21,21,21,'Bodega Sur - Buenos Aires','2023-06-21','Pendiente','Almacenamiento'),(22,22,22,22,'Depósito Norte - Córdoba','2023-06-22','Pendiente','Clasificación'),(23,23,23,23,'Terminal Este - Rosario','2023-06-23','Pendiente','Embarque'),(24,24,24,24,'Centro Oeste - Mendoza','2023-06-24','Pendiente','Desembarque'),(25,25,25,25,'Plaza Norte - La Plata','2023-06-25','Pendiente','Distribución'),(26,26,26,26,'Mercado Central - Buenos Aires','2023-06-26','Pendiente','Comercialización'),(27,27,27,27,'Centro Sur - Córdoba','2023-06-27','Pendiente','Venta'),(28,28,28,28,'Zona Este - Rosario','2023-06-28','Pendiente','Entrega'),(29,29,29,29,'Sector Oeste - Mendoza','2023-06-29','Pendiente','Recolección'),(30,30,30,30,'Área Industrial - La Plata','2023-06-30','Pendiente','Manufactura'),(31,31,31,31,'Parque Logístico - Buenos Aires','2023-07-01','Pendiente','Almacenamiento'),(32,32,32,32,'Centro de Carga - Córdoba','2023-07-02','Pendiente','Carga'),(33,33,33,33,'Terminal de Descarga - Rosario','2023-07-03','Pendiente','Descarga'),(34,34,34,34,'Plataforma Logística - Mendoza','2023-07-04','Pendiente','Procesamiento'),(35,35,35,35,'Hub Regional - La Plata','2023-07-05','Pendiente','Distribución'),(36,36,36,36,'Centro de Distribución - Buenos Aires','2023-07-06','Pendiente','Entrega'),(37,37,37,37,'Almacén Principal - Córdoba','2023-07-07','Pendiente','Almacenamiento'),(38,38,38,38,'Depósito Secundario - Rosario','2023-07-08','Pendiente','Reserva'),(39,39,39,39,'Centro de Acopio - Mendoza','2023-07-09','Pendiente','Acopio'),(40,40,40,40,'Plataforma Multimodal - La Plata','2023-07-10','Pendiente','Transferencia'),(41,41,41,41,'Terminal Marítima - Buenos Aires','2023-07-11','Pendiente','Importación'),(42,42,42,42,'Aeropuerto Internacional - Córdoba','2023-07-12','Pendiente','Exportación'),(43,43,43,43,'Estación Ferroviaria - Rosario','2023-07-13','Pendiente','Transporte'),(44,44,44,44,'Centro de Tránsito - Mendoza','2023-07-14','Pendiente','Tránsito'),(45,45,45,45,'Bodega Central - La Plata','2023-07-15','Pendiente','Almacenamiento'),(46,46,46,46,'Centro de Distribución - Buenos Aires','2023-07-16','Pendiente','Distribución'),(47,47,47,47,'Depósito Regional - Córdoba','2023-07-17','Pendiente','Regional'),(48,48,48,48,'Plaza Local - Rosario','2023-07-18','Pendiente','Local'),(49,49,49,49,'Centro Urbano - Mendoza','2023-07-19','Pendiente','Urbano'),(50,50,50,50,'Terminal Principal - La Plata','2023-07-20','Pendiente','Principal'),(51,1,1,1,'Centro Logístico Norte - Buenos Aires','2023-07-21','Pendiente','Entrega de electrónicos'),(52,2,2,2,'Plataforma Este - Córdoba','2023-07-22','Pendiente','Mercado perecedero'),(53,3,3,3,'Terminal Sur - Rosario','2023-07-23','Pendiente','Carga refrigerada'),(54,4,4,4,'Depósito Central - Mendoza','2023-07-24','Pendiente','Producto vitivinícola'),(55,5,5,5,'Hub de Distribución - La Plata','2023-07-25','Pendiente','Artículos electrónicos'),(56,6,6,6,'Centro de Acopio - Buenos Aires','2023-07-26','Pendiente','Materiales industriales'),(57,7,7,7,'Almacén Regional - Córdoba','2023-07-27','Pendiente','Textiles y confecciones'),(58,8,8,8,'Plataforma Logística - Rosario','2023-07-28','Pendiente','Productos farmacéuticos'),(59,9,9,9,'Centro de Distribución - Mendoza','2023-07-29','Pendiente','Alimentos procesados'),(60,10,10,10,'Terminal de Carga - La Plata','2023-07-30','Pendiente','Equipos médicos'),(61,11,11,11,'Bodega Este - Buenos Aires','2023-07-31','Pendiente','Material de construcción'),(62,12,12,12,'Centro Oeste - Córdoba','2023-08-01','Pendiente','Autopartes'),(63,13,13,13,'Depósito Norte - Rosario','2023-08-02','Pendiente','Muebles y decoración'),(64,14,14,14,'Plataforma Sur - Mendoza','2023-08-03','Pendiente','Vinos premium'),(65,15,15,15,'Terminal Este - La Plata','2023-08-04','Pendiente','Maquinaria agrícola'),(66,16,16,16,'Centro Urbano - Buenos Aires','2023-08-05','Pendiente','Ropa deportiva'),(67,17,17,17,'Almacén Norte - Córdoba','2023-08-06','Pendiente','Libros y papelería'),(68,18,18,18,'Plaza Central - Rosario','2023-08-07','Pendiente','Juguetes educativos'),(69,19,19,19,'Bodega Principal - Mendoza','2023-08-08','Pendiente','Aceites y condimentos'),(70,20,20,20,'Hub Sur - La Plata','2023-08-09','Pendiente','Herramientas'),(71,21,21,21,'Terminal Norte - Buenos Aires','2023-08-10','Pendiente','Electrodomésticos'),(72,22,22,22,'Centro Este - Córdoba','2023-08-11','Pendiente','Cosméticos'),(73,23,23,23,'Depósito Este - Rosario','2023-08-12','Pendiente','Artículos de limpieza'),(74,24,24,24,'Plataforma Norte - Mendoza','2023-08-13','Pendiente','Conservas'),(75,25,25,25,'Centro de Carga - La Plata','2023-08-14','Pendiente','Neumáticos'),(76,26,26,26,'Bodega Oeste - Buenos Aires','2023-08-15','Pendiente','Productos químicos'),(77,27,27,27,'Almacén Sur - Córdoba','2023-08-16','Pendiente','Calzado'),(78,28,28,28,'Terminal Oeste - Rosario','2023-08-17','Pendiente','Bebidas alcohólicas'),(79,29,29,29,'Plaza Este - Mendoza','2023-08-18','Pendiente','Frutas secas'),(80,30,30,30,'Hub Norte - La Plata','2023-08-19','Pendiente','Materiales eléctricos'),(81,31,31,31,'Centro Sur - Buenos Aires','2023-08-20','Pendiente','Equipos de oficina'),(82,32,32,32,'Depósito Oeste - Córdoba','2023-08-21','Pendiente','Accesorios tecnológicos'),(83,33,33,33,'Plataforma Oeste - Rosario','2023-08-22','Pendiente','Artículos de cocina'),(84,34,34,34,'Terminal Norte - Mendoza','2023-08-23','Pendiente','Chocolates'),(85,35,35,35,'Bodega Norte - La Plata','2023-08-24','Pendiente','Pinturas'),(86,36,36,36,'Centro Este - Buenos Aires','2023-08-25','Pendiente','Jardinería'),(87,37,37,37,'Almacén Este - Córdoba','2023-08-26','Pendiente','Instrumentos musicales'),(88,38,38,38,'Depósito Sur - Rosario','2023-08-27','Pendiente','Artículos de pesca'),(89,39,39,39,'Plaza Oeste - Mendoza','2023-08-28','Pendiente','Miel y derivados'),(90,40,40,40,'Terminal Sur - La Plata','2023-08-29','Pendiente','Cerraduras'),(91,41,41,41,'Hub Oeste - Buenos Aires','2023-08-30','Pendiente','Iluminación LED'),(92,42,42,42,'Centro Norte - Córdoba','2023-08-31','Pendiente','Ropa interior'),(93,43,43,43,'Plataforma Sur - Rosario','2023-09-01','Pendiente','Suplementos dietéticos'),(94,44,44,44,'Bodega Sur - Mendoza','2023-09-02','Pendiente','Embutidos'),(95,45,45,45,'Almacén Central - La Plata','2023-09-03','Pendiente','Baterías'),(96,46,46,46,'Terminal Central - Buenos Aires','2023-09-04','Pendiente','Artículos de camping'),(97,47,47,47,'Depósito Central - Córdoba','2023-09-05','Pendiente','Perfumes'),(98,48,48,48,'Plaza Central - Rosario','2023-09-06','Pendiente','Café especial'),(99,49,49,49,'Centro Central - Mendoza','2023-09-07','Pendiente','Cervezas artesanales'),(100,50,50,50,'Hub Central - La Plata','2023-09-08','Pendiente','Artículos de bordado'),(101,1,1,1,'Bodega Principal - Buenos Aires','2023-09-09','Pendiente','Materiales de embalaje'),(102,2,2,2,'Almacén Principal - Córdoba','2023-09-10','Pendiente','Uniformes'),(103,3,3,3,'Terminal Principal - Rosario','2023-09-11','Pendiente','Productos orgánicos'),(104,4,4,4,'Plataforma Principal - Mendoza','2023-09-12','Pendiente','Quesos finos'),(105,5,5,5,'Centro Principal - La Plata','2023-09-13','Pendiente','Equipos de sonido'),(106,6,6,6,'Depósito Principal - Buenos Aires','2023-09-14','Pendiente','Joyería'),(107,7,7,7,'Hub Principal - Córdoba','2023-09-15','Pendiente','Relojes'),(108,8,8,8,'Bodega Secundaria - Rosario','2023-09-16','Pendiente','Artículos de cuero'),(109,9,9,9,'Almacén Secundario - Mendoza','2023-09-17','Pendiente','Vinos espumosos'),(110,10,10,10,'Terminal Secundaria - La Plata','2023-09-18','Pendiente','Cámaras fotográficas'),(111,11,11,11,'Centro Secundario - Buenos Aires','2023-09-19','Pendiente','Artículos de playa'),(112,12,12,12,'Depósito Secundario - Córdoba','2023-09-20','Pendiente','Té y hierbas'),(113,13,13,13,'Plaza Secundaria - Rosario','2023-09-21','Pendiente','Galletas premium'),(114,14,14,14,'Hub Secundario - Mendoza','2023-09-22','Pendiente','Equipos de fitness'),(115,15,15,15,'Bodega Terciaria - La Plata','2023-09-23','Pendiente','Artículos de escritura'),(116,16,16,16,'Almacén Terciario - Buenos Aires','2023-09-24','Pendiente','Sombreros'),(117,17,17,17,'Terminal Terciaria - Córdoba','2023-09-25','Pendiente','Aceites esenciales'),(118,18,18,18,'Centro Terciario - Rosario','2023-09-26','Pendiente','Barbijos'),(119,19,19,19,'Depósito Terciario - Mendoza','2023-09-27','Pendiente','Mermeladas'),(120,20,20,20,'Plaza Terciaria - La Plata','2023-09-28','Pendiente','Antenas'),(121,21,21,21,'Hub Terciario - Buenos Aires','2023-09-29','Pendiente','Artículos de gimnasia'),(122,22,22,22,'Bodega Cuaternaria - Córdoba','2023-09-30','Pendiente','Velas aromáticas'),(123,23,23,23,'Almacén Cuaternario - Rosario','2023-10-01','Pendiente','Fertilizantes'),(124,24,24,24,'Terminal Cuaternaria - Mendoza','2023-10-02','Pendiente','Semillas'),(125,25,25,25,'Centro Cuaternario - La Plata','2023-10-03','Pendiente','Herramientas de jardín'),(126,26,26,26,'Depósito Cuaternario - Buenos Aires','2023-10-04','Pendiente','Artículos de seguridad'),(127,27,27,27,'Hub Cuaternario - Córdoba','2023-10-05','Pendiente','Extintores'),(128,28,28,28,'Bodega Especial - Rosario','2023-10-06','Pendiente','Productos para mascotas'),(129,29,29,29,'Almacén Especial - Mendoza','2023-10-07','Pendiente','Piscinas inflables'),(130,30,30,30,'Terminal Especial - La Plata','2023-10-08','Pendiente','Artículos de pesca'),(131,31,31,31,'Centro Especial - Buenos Aires','2023-10-09','Pendiente','Cepillos de dientes'),(132,32,32,32,'Depósito Especial - Córdoba','2023-10-10','Pendiente','Desodorantes'),(133,33,33,33,'Plaza Especial - Rosario','2023-10-11','Pendiente','Shampoos'),(134,34,34,34,'Hub Especial - Mendoza','2023-10-12','Pendiente','Cremas faciales'),(135,35,35,35,'Bodega Premium - La Plata','2023-10-13','Pendiente','Jabones artesanales'),(136,36,36,36,'Almacén Premium - Buenos Aires','2023-10-14','Pendiente','Velas decorativas'),(137,37,37,37,'Terminal Premium - Córdoba','2023-10-15','Pendiente','Incienso'),(138,38,38,38,'Centro Premium - Rosario','2023-10-16','Pendiente','Aceites de masaje'),(139,39,39,39,'Depósito Premium - Mendoza','2023-10-17','Pendiente','Sales de baño'),(140,40,40,40,'Plaza Premium - La Plata','2023-10-18','Pendiente','Esponjas naturales'),(141,41,41,41,'Hub Premium - Buenos Aires','2023-10-19','Pendiente','Cepillos corporales'),(142,42,42,42,'Bodega Exclusiva - Córdoba','2023-10-20','Pendiente','Guantes de cocina'),(143,43,43,43,'Almacén Exclusivo - Rosario','2023-10-21','Pendiente','Delantales'),(144,44,44,44,'Terminal Exclusiva - Mendoza','2023-10-22','Pendiente','Manteles individuales'),(145,45,45,45,'Centro Exclusivo - La Plata','2023-10-23','Pendiente','Servilletas de tela'),(146,46,46,46,'Depósito Exclusivo - Buenos Aires','2023-10-24','Pendiente','Posavasos'),(147,47,47,47,'Hub Exclusivo - Córdoba','2023-10-25','Pendiente','Portavasos'),(148,48,48,48,'Bodega Única - Rosario','2023-10-26','Pendiente','Portarretratos'),(149,49,49,49,'Almacén Único - Mendoza','2023-10-27','Pendiente','Marco de fotos'),(150,50,50,50,'Terminal Única - La Plata','2023-10-28','Pendiente','Cuadros decorativos');
/*!40000 ALTER TABLE `envio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text,
  `peso` decimal(10,2) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `stock` int DEFAULT '0',
  PRIMARY KEY (`id_producto`),
  KEY `fk_producto_categoria` (`id_categoria`),
  CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Smartphone Samsung Galaxy','Teléfono inteligente última generación',0.20,1,472),(2,'Laptop Dell Inspiron','Computadora portátil 15 pulgadas',2.10,1,226),(3,'Jeans Levis 501','Pantalón vaquero clásico',0.80,2,921),(4,'Zapatillas Nike Air','Calzado deportivo para running',0.35,2,722),(5,'Arroz Diana','Arroz blanco grano largo 1kg',1.00,3,1954),(6,'Mesa de comedor','Mesa de madera para 6 personas',25.50,4,144),(7,'Silla ergonómica','Silla de oficina con soporte lumbar',8.20,4,291),(8,'Libro Programación SQL','Guía completa de SQL para principiantes',0.50,5,344),(9,'Tablet iPad Pro','Tablet Apple 11 pulgadas',0.45,1,187),(10,'Camiseta Adidas','Camiseta deportiva algodón',0.20,2,749),(11,'Notebook HP Pavilion','Laptop 14 pulgadas 8GB RAM',1.80,1,265),(12,'Pantalón Dockers','Pantalón formal para hombre',0.40,2,561),(13,'Zapatos Oxford','Zapatos formales de cuero',0.60,2,367),(14,'Fideos Lucchetti','Fideos secos 500g',0.50,3,1480),(15,'Sofá de 3 plazas','Sofá tela color gris',35.00,4,70),(16,'Escritorio ejecutivo','Escritorio de madera con cajones',18.00,4,157),(17,'Libro JavaScript','Guía de JavaScript avanzado',0.70,5,302),(18,'Smartwatch Apple','Reloj inteligente Series 7',0.05,1,232),(19,'Camisa Polo','Camisa polo pima algodón',0.25,2,865),(20,'Botines de fútbol','Botines Adidas Predator',0.40,2,320),(21,'Aceite de oliva','Aceite extra virgen 500ml',0.50,3,781),(22,'Cama matrimonial','Cama king size con colchón',45.00,4,35),(23,'Silla gamer','Silla gaming RGB',15.00,4,174),(24,'Libro Python','Programación en Python',0.60,5,437),(25,'Auriculares Sony','Auriculares inalámbricos',0.30,1,314),(26,'Vestido de verano','Vestido floreado manga corta',0.40,2,491),(27,'Zapatillas Converse','Zapatillas clásicas blancas',0.50,2,654),(28,'Café Juan Valdez','Café en grano 500g',0.50,3,974),(29,'Closet de 3 puertas','Closet melamina blanco',28.00,4,97),(30,'Mesa de centro','Mesa de centro vidrio templado',12.00,4,103),(31,'Libro React','Guía de React para desarrolladores',0.80,5,282),(32,'Teclado mecánico','Teclado gaming RGB',1.20,1,354),(33,'Short deportivo','Short Nike Dry-FIT',0.30,2,785),(34,'Botas de lluvia','Botas impermeables Hunter',0.80,2,283),(35,'Vino tinto Malbec','Vino tinto 750ml',1.50,3,1168),(36,'Lámpara de pie','Lámpara LED moderna',3.50,4,169),(37,'Repisa flotante','Repisa de madera para pared',2.50,4,305),(38,'Libro Node.js','Desarrollo backend con Node.js',0.90,5,253),(39,'Mouse inalámbrico','Mouse Logitech inalámbrico',0.15,1,461),(40,'Blusa femenina','Blusa manga larga seda',0.35,2,567),(41,'Sandalias de playa','Sandalias Havaianas',0.20,2,940),(42,'Galletas Oreo','Paquete de galletas 300g',0.30,3,1755),(43,'Espejo de pared','Espejo rectangular 80x60cm',5.00,4,95),(44,'Banqueta de cocina','Banqueta de madera con almacenaje',8.00,4,250),(45,'Libro Machine Learning','Introducción al Machine Learning',1.20,5,187),(46,'Monitor 24 pulgadas','Monitor LG IPS 24\"',3.50,1,295),(47,'Falda escolar','Falda kilt escolar',0.40,2,678),(48,'Zapatillas de casa','Zapatillas antideslizantes',0.25,2,1085),(49,'Té verde','Té verde en hojas 100g',0.10,3,1479),(50,'Maceta de cerámica','Maceta medina 30cm',2.00,4,343),(51,'Almohada ortopédica','Almohada memory foam',1.50,4,500),(52,'Libro Docker','Guía de Docker para principiantes',0.70,5,380),(53,'Webcam HD','Webcam Logitech C920',0.40,1,280),(54,'Pantalón cargo','Pantalón cargo militar',0.60,2,550),(55,'Chaqueta impermeable','Chaqueta North Face',0.80,2,250),(56,'Miel pura','Miel de abeja 500g',0.60,3,900),(57,'Cuadro decorativo','Cuadro abstracto 60x80cm',1.20,4,180),(58,'Perchero de pie','Perchero metálico con ruedas',4.50,4,330),(59,'Libro CSS','Diseño web con CSS3',0.65,5,420),(60,'Altavoces Bluetooth','Altavoces JBL Charge 4',0.90,1,350),(61,'Camisa de vestir','Camisa formal algodón',0.30,2,700),(62,'Botines de seguridad','Botines industriales',1.20,2,200),(63,'Té verde matcha','Té matcha en polvo 100g',0.10,3,850),(64,'Reloj de pared','Reloj analógico silencioso',0.80,4,250),(65,'Organizador de cocina','Organizador de bambú',1.50,4,450),(66,'Libro PHP','Programación en PHP 8',0.75,5,350),(67,'Disco duro externo','Disco SSD 1TB',0.10,1,450),(68,'Vestido de noche','Vestido satén largo',0.50,2,400),(69,'Chanclas','Chanclas de goma',0.15,2,1200),(70,'Aceite de coco','Aceite de coco virgen 500ml',0.50,3,850),(71,'Juego de sillas','Juego de 4 sillas apilables',8.00,4,200),(72,'Estantería modular','Estantería de metal 5 niveles',12.00,4,150);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_auditoria_stock_insert` AFTER INSERT ON `producto` FOR EACH ROW BEGIN
    INSERT INTO Auditoria_Stock (
        id_producto,
        nombre_producto,
        operacion,
        stock_anterior,
        stock_nuevo,
        diferencia,
        usuario,
        fecha_hora,
        motivo
    ) VALUES (
        NEW.id_producto,
        NEW.nombre,
        'INSERT',
        0,
        NEW.stock,
        NEW.stock,
        USER(),
        NOW(),
        'Producto creado'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_auditoria_stock_update` AFTER UPDATE ON `producto` FOR EACH ROW BEGIN
    -- Solo registrar si cambió el stock
    IF OLD.stock != NEW.stock THEN
        INSERT INTO Auditoria_Stock (
            id_producto,
            nombre_producto,
            operacion,
            stock_anterior,
            stock_nuevo,
            diferencia,
            usuario,
            fecha_hora,
            motivo
        ) VALUES (
            NEW.id_producto,
            NEW.nombre,
            'UPDATE',
            OLD.stock,
            NEW.stock,
            NEW.stock - OLD.stock,
            USER(),
            NOW(),
            CASE 
                WHEN NEW.stock > OLD.stock THEN 'Incremento de stock'
                WHEN NEW.stock < OLD.stock THEN 'Reducción de stock'
                ELSE 'Ajuste de stock'
            END
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_auditoria_stock_delete` BEFORE DELETE ON `producto` FOR EACH ROW BEGIN
    INSERT INTO Auditoria_Stock (
        id_producto,
        nombre_producto,
        operacion,
        stock_anterior,
        stock_nuevo,
        diferencia,
        usuario,
        fecha_hora,
        motivo
    ) VALUES (
        OLD.id_producto,
        OLD.nombre,
        'DELETE',
        OLD.stock,
        0,
        -OLD.stock,
        USER(),
        NOW(),
        'Producto eliminado'
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sede_cliente`
--

DROP TABLE IF EXISTS `sede_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sede_cliente` (
  `id_sede` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_sede`),
  KEY `fk_sede_cliente_cliente` (`id_cliente`),
  CONSTRAINT `fk_sede_cliente_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede_cliente`
--

LOCK TABLES `sede_cliente` WRITE;
/*!40000 ALTER TABLE `sede_cliente` DISABLE KEYS */;
INSERT INTO `sede_cliente` VALUES (1,1,'Av. Corrientes 1234, Buenos Aires','11-4321-5678'),(2,1,'Av. Santa Fe 2345, CABA','11-5432-1098'),(3,2,'Calle Sarmiento 567, Córdoba','351-234-5678'),(4,2,'Boulevard Chacabuco 890, Córdoba','351-876-5432'),(5,3,'Rivadavia 890, Rosario','341-456-7890'),(6,4,'San Martín 345, Mendoza','261-345-6789'),(7,5,'Belgrano 678, La Plata','221-456-7890'),(8,6,'Mitre 1234, Mar del Plata','223-456-7890'),(9,7,'9 de Julio 567, Tucumán','381-456-7890'),(10,8,'San Martín 890, Salta','387-456-7890'),(11,9,'Belgrano 1234, Jujuy','388-456-7890'),(12,10,'Av. España 567, Corrientes','379-456-7890'),(13,11,'San Martín 890, Chaco','372-456-7890'),(14,12,'Mitre 1234, Formosa','371-456-7890'),(15,13,'Belgrano 567, Misiones','375-456-7890'),(16,14,'San Martín 890, La Rioja','380-456-7890'),(17,15,'Av. España 1234, Catamarca','383-456-7890'),(18,16,'Mitre 567, San Juan','264-456-7890'),(19,17,'San Martín 890, San Luis','266-456-7890'),(20,18,'Belgrano 1234, Santiago del Estero','385-456-7890'),(21,19,'San Martín 567, Rio Negro','299-456-7890'),(22,20,'Av. España 890, Neuquén','292-456-7890'),(23,21,'Mitre 1234, Chubut','280-456-7890'),(24,22,'San Martín 567, Santa Cruz','296-456-7890'),(25,23,'Belgrano 890, Tierra del Fuego','290-456-7890'),(26,24,'Av. España 1234, Entre Ríos','344-456-7890'),(27,25,'Mitre 567, Santa Fe','342-456-7890'),(28,26,'San Martín 890, Córdoba','351-234-5678'),(29,27,'Belgrano 1234, Mendoza','261-345-6789'),(30,28,'San Martín 567, Buenos Aires','11-4321-5678'),(31,29,'Av. España 890, Rosario','341-456-7890'),(32,30,'Mitre 1234, La Plata','221-456-7890'),(33,31,'San Martín 567, Mar del Plata','223-456-7890'),(34,32,'Belgrano 890, Tucumán','381-456-7890'),(35,33,'Av. España 1234, Salta','387-456-7890'),(36,34,'Mitre 567, Jujuy','388-456-7890'),(37,35,'San Martín 890, Corrientes','379-456-7890'),(38,36,'Belgrano 1234, Chaco','372-456-7890'),(39,37,'San Martín 567, Formosa','371-456-7890'),(40,38,'Av. España 890, Misiones','375-456-7890'),(41,39,'Mitre 567, La Rioja','380-456-7890'),(42,40,'San Martín 890, Catamarca','383-456-7890'),(43,41,'Belgrano 1234, San Juan','264-456-7890'),(44,42,'Av. España 567, San Luis','266-456-7890'),(45,43,'Mitre 1234, Santiago del Estero','385-456-7890'),(46,44,'San Martín 890, Rio Negro','299-456-7890'),(47,45,'Belgrano 890, Neuquén','292-456-7890'),(48,46,'Av. España 1234, Chubut','280-456-7890'),(49,47,'Mitre 567, Santa Cruz','296-456-7890'),(50,48,'San Martín 890, Tierra del Fuego','290-456-7890'),(51,49,'Belgrano 1234, Entre Ríos','344-456-7890'),(52,50,'Av. España 890, Santa Fe','342-456-7890');
/*!40000 ALTER TABLE `sede_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transporte`
--

DROP TABLE IF EXISTS `transporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transporte` (
  `id_transporte` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transporte`
--

LOCK TABLES `transporte` WRITE;
/*!40000 ALTER TABLE `transporte` DISABLE KEYS */;
INSERT INTO `transporte` VALUES (1,'Transportes Rápidos SA','Juan Carlos Rodríguez','11-4321-5678'),(2,'Logística del Sur SRL','María García López','11-5432-1098'),(3,'Cargas del Norte SA','Pedro Martínez Silva','11-6543-2109'),(4,'Express del Oeste','Ana Fernández Torres','11-7654-3210'),(5,'Rutas del Este SA','Carlos López Gómez','11-8765-4321'),(6,'Transportes Unidos','Laura Sánchez Pérez','11-9876-5432'),(7,'Logística Integral','Miguel Ángel López','11-1234-5678'),(8,'Cargas Express','Patricia Ramírez Díaz','11-2345-6789'),(9,'Transportes Modernos','José Luis Morales','11-3456-7890'),(10,'Logística Global','Roberto Carlos Silva','11-4567-8901'),(11,'Transportes del Futuro','María del Carmen García','11-5678-9012'),(12,'Cargas Seguras','Pedro José Martínez','11-6789-0123'),(13,'Express Rápido','Ana María Fernández','11-7890-1234'),(14,'Transportes Especializados','Carlos Alberto López','11-8901-2345'),(15,'Logística Avanzada','Laura Beatriz Sánchez','11-9012-3456'),(16,'Transportes Eficientes','Miguel Ángel Ramírez','11-0123-4567'),(17,'Cargas Urgentes','Patricia Isabel Morales','11-1234-5678'),(18,'Transportes Seguros','José Carlos Rodríguez','11-2345-6789'),(19,'Logística Perfecta','María de los Ángeles García','11-3456-7890'),(20,'Cargas Inmediatas','Pedro Ángel Martínez','11-4567-8901'),(21,'Express Garantizado','Ana Cristina Fernández','11-5678-9012'),(22,'Transportes Profesionales','Carlos José López','11-6789-0123'),(23,'Logística Especial','Laura Carolina Sánchez','11-7890-1234'),(24,'Cargas Confiables','Miguel Francisco Ramírez','11-8901-2345'),(25,'Transportes Confiables','Patricia Alejandra Morales','11-9012-3456'),(26,'Logística Rápida','José Manuel Rodríguez','11-0123-4567'),(27,'Cargas Seguras SA','María Isabel García','11-1234-5678'),(28,'Transportes Modernos SA','Pedro Luis Martínez','11-2345-6789'),(29,'Express del Sur','Ana Beatriz Fernández','11-3456-7890'),(30,'Logística del Norte','Carlos Miguel López','11-4567-8901'),(31,'Cargas del Oeste','Laura Patricia Sánchez','11-5678-9012'),(32,'Transportes del Centro','Miguel José Ramírez','11-6789-0123'),(33,'Logística Este','Patricia María Morales','11-7890-1234'),(34,'Cargas Oeste','José Carlos Rodríguez','11-8901-2345'),(35,'Transportes Norte','María del Carmen García','11-9012-3456'),(36,'Logística Sur','Pedro Ángel Martínez','11-0123-4567'),(37,'Cargas Este','Ana María Fernández','11-1234-5678'),(38,'Transportes Oeste','Carlos Alberto López','11-2345-6789'),(39,'Logística Centro','Laura Beatriz Sánchez','11-3456-7890'),(40,'Cargas Norte','Miguel Ángel Ramírez','11-4567-8901'),(41,'Transportes Sur','Patricia Isabel Morales','11-6789-0123'),(42,'Logística Oeste','José Luis Rodríguez','11-7890-1234'),(43,'Cargas Centro','María de los Ángeles García','11-8901-2345'),(44,'Transportes Este','Pedro Ángel Martínez','11-9012-3456'),(45,'Logística Norte','Ana Cristina Fernández','11-0123-4567'),(46,'Cargas Sur','Carlos José López','11-1234-5678'),(47,'Transportes Oeste','Laura Carolina Sánchez','11-2345-6789'),(48,'Logística Este','Miguel Francisco Ramírez','11-3456-7890'),(49,'Cargas Norte','Patricia Alejandra Morales','11-4567-8901'),(50,'Transportes Sur','José Manuel Rodríguez','11-6789-0123'),(51,'Logística Oeste','María Isabel García','11-7890-1234'),(52,'Cargas Este','Pedro Luis Martínez','11-8901-2345'),(53,'Transportes Norte','Ana Beatriz Fernández','11-9012-3456'),(54,'Logística Sur','Carlos Miguel López','11-0123-4567'),(55,'Cargas Oeste','Laura Patricia Sánchez','11-1234-5678'),(56,'Transportes Centro','Miguel José Ramírez','11-2345-6789'),(57,'Logística Norte','Patricia María Morales','11-3456-7890'),(58,'Cargas Sur','José Carlos Rodríguez','11-4567-8901');
/*!40000 ALTER TABLE `transporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `id_vehiculo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `placa` varchar(50) NOT NULL,
  `id_transporte` int NOT NULL,
  PRIMARY KEY (`id_vehiculo`),
  UNIQUE KEY `placa` (`placa`),
  KEY `fk_vehiculo_transporte` (`id_transporte`),
  CONSTRAINT `fk_vehiculo_transporte` FOREIGN KEY (`id_transporte`) REFERENCES `transporte` (`id_transporte`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,'Camión Volvo FH16','AB123CD',1),(2,'Camión Mercedes Actros','EF456GH',1),(3,'Fiat Ducato','IJ789KL',2),(4,'Volkswagen Constellation','MN012OP',3),(5,'Scania R730','QR345ST',3),(6,'Iveco Stralis','UV678WX',4),(7,'Mercedes Atego','YZ901AB',5),(8,'Man TGX','BC234DE',6),(9,'Renault Premium','FG567HI',7),(10,'DAF XF','JK890LM',8),(11,'Iveco Eurocargo','NO123PQ',9),(12,'Volvo FM','RS456TU',10),(13,'Mercedes Antos','VW789YZ',11),(14,'Scania G','AB012CD',12),(15,'MAN TGL','CD345EF',13),(16,'Renault Midlum','EF456G2',14),(17,'DAF LF','HI901J4',15),(18,'Iveco Daily','LM234N4',16),(19,'Volkswagen Worker','OP567PQ',17),(20,'Mercedes Accelo','RS890T2',18),(21,'Volvo FL','VW123Y2',19),(22,'Scania P','XY345A2',20),(23,'MAN TGM','ZC678D2',21),(24,'Renault T','DE901F2',22),(25,'DAF CF','GH234H2',23),(26,'Iveco Trakker','JK567L2',24),(27,'Volkswagen Meteor','NO890P2',25),(28,'Mercedes Arocs','PQ123R2',26),(29,'Volvo FE','ST456T2',27),(30,'Scania L','UV789W2',28),(31,'MAN TGS','YZ012A2',29),(32,'Renault K','BC345C2',30),(33,'DAF XF 105','EF678G2',31),(34,'Iveco Hi-Way','HI901J2',32),(35,'Volkswagen Constellation 19.320','LM234N2',33),(36,'Mercedes Benz 1720','OP567P2',34),(37,'Volvo FH 460','RS890T3',35),(38,'Scania R 440','VW123Y3',36),(39,'MAN TGA 18.410','XY345A3',37),(40,'Renault Magnum 440','ZC678D3',38),(41,'DAF XF 95.430','DE901F3',39),(42,'Iveco Stralis 440','GH234H3',40),(43,'Volkswagen 17.210','JK567L3',41),(44,'Mercedes Axor 1836','NO890P3',42),(45,'Volvo FM 400','PQ123R3',43),(46,'Scania G 410','ST456T3',44),(47,'MAN TGL 12.180','UV789W3',45),(48,'Renault Midlum 220','YZ012A3',46),(49,'DAF LF 45.180','BC345C3',47),(50,'Iveco Eurocargo 120','EF678G3',48),(51,'Volkswagen 8.150','HI901J3',49),(52,'Mercedes Atego 815','LM234N3',50);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_envios_clientes`
--

DROP TABLE IF EXISTS `vw_envios_clientes`;
/*!50001 DROP VIEW IF EXISTS `vw_envios_clientes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_envios_clientes` AS SELECT 
 1 AS `id_envio`,
 1 AS `fecha`,
 1 AS `ubicacion`,
 1 AS `observaciones`,
 1 AS `nombre_cliente`,
 1 AS `telefono_cliente`,
 1 AS `vehiculo`,
 1 AS `placa_vehiculo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_historial_stock`
--

DROP TABLE IF EXISTS `vw_historial_stock`;
/*!50001 DROP VIEW IF EXISTS `vw_historial_stock`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_historial_stock` AS SELECT 
 1 AS `id_auditoria`,
 1 AS `id_producto`,
 1 AS `nombre_producto`,
 1 AS `operacion`,
 1 AS `stock_anterior`,
 1 AS `stock_nuevo`,
 1 AS `diferencia`,
 1 AS `usuario`,
 1 AS `fecha_hora`,
 1 AS `motivo`,
 1 AS `tipo_movimiento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_productos_categoria`
--

DROP TABLE IF EXISTS `vw_productos_categoria`;
/*!50001 DROP VIEW IF EXISTS `vw_productos_categoria`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_productos_categoria` AS SELECT 
 1 AS `id_producto`,
 1 AS `nombre_producto`,
 1 AS `descripcion`,
 1 AS `peso`,
 1 AS `stock`,
 1 AS `categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_vehiculos_transporte`
--

DROP TABLE IF EXISTS `vw_vehiculos_transporte`;
/*!50001 DROP VIEW IF EXISTS `vw_vehiculos_transporte`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_vehiculos_transporte` AS SELECT 
 1 AS `id_vehiculo`,
 1 AS `nombre_vehiculo`,
 1 AS `placa`,
 1 AS `tipo_transporte`,
 1 AS `contacto_transporte`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'logisticawaycool'
--

--
-- Dumping routines for database 'logisticawaycool'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_total_envios_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_total_envios_cliente`(p_id_cliente INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE total_envios INT;
    
    SELECT COUNT(*) INTO total_envios
    FROM Envio
    WHERE id_cliente = p_id_cliente;
    
    RETURN total_envios;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_valor_total_envio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_valor_total_envio`(p_id_envio INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE valor_total DECIMAL(10,2);
    
    SELECT SUM(de.cantidad * de.precio_unitario) INTO valor_total
    FROM Detalle_Envio de
    WHERE de.id_envio = p_id_envio;
    
    RETURN IFNULL(valor_total, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_actualizar_ubicacion_envio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizar_ubicacion_envio`(
    IN p_id_envio INT,
    IN p_nueva_ubicacion VARCHAR(200)
)
BEGIN
    UPDATE Envio
    SET ubicacion = p_nueva_ubicacion
    WHERE id_envio = p_id_envio;
    
    SELECT 'Ubicación actualizada correctamente' AS mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insertar_cliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertar_cliente`(
    IN p_nombre VARCHAR(100),
    IN p_direccion VARCHAR(200),
    IN p_telefono VARCHAR(20),
    IN p_email VARCHAR(100)
)
BEGIN
    INSERT INTO Cliente (nombre, direccion, telefono, email)
    VALUES (p_nombre, p_direccion, p_telefono, p_email);
    
    SELECT 'Cliente insertado correctamente' AS mensaje;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_envios_clientes`
--

/*!50001 DROP VIEW IF EXISTS `vw_envios_clientes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_envios_clientes` AS select `e`.`id_envio` AS `id_envio`,`e`.`fecha` AS `fecha`,`e`.`ubicacion` AS `ubicacion`,`e`.`observaciones` AS `observaciones`,`c`.`nombre` AS `nombre_cliente`,`c`.`telefono` AS `telefono_cliente`,`v`.`nombre` AS `vehiculo`,`v`.`placa` AS `placa_vehiculo` from ((`envio` `e` join `cliente` `c` on((`e`.`id_cliente` = `c`.`id_cliente`))) join `vehiculo` `v` on((`e`.`id_vehiculo` = `v`.`id_vehiculo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_historial_stock`
--

/*!50001 DROP VIEW IF EXISTS `vw_historial_stock`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_historial_stock` AS select `a`.`id_auditoria` AS `id_auditoria`,`a`.`id_producto` AS `id_producto`,`a`.`nombre_producto` AS `nombre_producto`,`a`.`operacion` AS `operacion`,`a`.`stock_anterior` AS `stock_anterior`,`a`.`stock_nuevo` AS `stock_nuevo`,`a`.`diferencia` AS `diferencia`,`a`.`usuario` AS `usuario`,date_format(`a`.`fecha_hora`,'%Y-%m-%d %H:%i:%s') AS `fecha_hora`,`a`.`motivo` AS `motivo`,(case when (`a`.`diferencia` > 0) then 'Aumento' when (`a`.`diferencia` < 0) then 'Disminución' else 'Sin cambio' end) AS `tipo_movimiento` from `auditoria_stock` `a` order by `a`.`fecha_hora` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_productos_categoria`
--

/*!50001 DROP VIEW IF EXISTS `vw_productos_categoria`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_productos_categoria` AS select `p`.`id_producto` AS `id_producto`,`p`.`nombre` AS `nombre_producto`,`p`.`descripcion` AS `descripcion`,`p`.`peso` AS `peso`,`p`.`stock` AS `stock`,`c`.`nombre` AS `categoria` from (`producto` `p` join `categoria` `c` on((`p`.`id_categoria` = `c`.`id_categoria`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vehiculos_transporte`
--

/*!50001 DROP VIEW IF EXISTS `vw_vehiculos_transporte`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vehiculos_transporte` AS select `v`.`id_vehiculo` AS `id_vehiculo`,`v`.`nombre` AS `nombre_vehiculo`,`v`.`placa` AS `placa`,`t`.`nombre` AS `tipo_transporte`,`t`.`contacto` AS `contacto_transporte` from (`vehiculo` `v` join `transporte` `t` on((`v`.`id_transporte` = `t`.`id_transporte`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-28  0:35:32
