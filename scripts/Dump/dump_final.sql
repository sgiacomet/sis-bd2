-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: new_db_app_db2
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `acervo`
--

DROP TABLE IF EXISTS `acervo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acervo` (
  `nome` varchar(40) NOT NULL,
  `leitor_id` int NOT NULL,
  `livro_id` int NOT NULL,
  KEY `acervo_leitor_fk` (`leitor_id`),
  KEY `acervo_livro_fk` (`livro_id`),
  CONSTRAINT `acervo_leitor_fk` FOREIGN KEY (`leitor_id`) REFERENCES `leitor` (`leitor_id`),
  CONSTRAINT `acervo_livro_fk` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`livro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acervo`
--

LOCK TABLES `acervo` WRITE;
/*!40000 ALTER TABLE `acervo` DISABLE KEYS */;
INSERT INTO `acervo` VALUES ('Coleção Harry Potter',4,13),('Coleção Harry Potter',4,14),('Coleção Harry Potter',4,15),('Coleção Harry Potter',4,16),('Coleção Harry Potter',4,17),('Coleção Harry Potter',4,18),('Coleção Harry Potter',4,19),('Variados',1,3),('Variados',1,5),('Variados',1,41),('Livros da Duda',2,29),('Livros da Duda',2,30),('Livros da Duda',2,31),('Livros da Duda',2,32),('Livros da Duda',2,33),('Livros da Duda',2,34);
/*!40000 ALTER TABLE `acervo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amizades`
--

DROP TABLE IF EXISTS `amizades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amizades` (
  `leitor1` int NOT NULL,
  `leitor2` int NOT NULL,
  KEY `leitor_amizades_leitor1_fk` (`leitor1`),
  KEY `leitor_amizades_leitor2_fk` (`leitor2`),
  CONSTRAINT `leitor_amizades_leitor1_fk` FOREIGN KEY (`leitor1`) REFERENCES `leitor` (`leitor_id`),
  CONSTRAINT `leitor_amizades_leitor2_fk` FOREIGN KEY (`leitor2`) REFERENCES `leitor` (`leitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amizades`
--

LOCK TABLES `amizades` WRITE;
/*!40000 ALTER TABLE `amizades` DISABLE KEYS */;
INSERT INTO `amizades` VALUES (1,2),(1,3),(1,5),(5,1),(2,1),(2,3),(2,4),(3,1),(3,2),(4,2);
/*!40000 ALTER TABLE `amizades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `autor_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `pais_nasc` varchar(20) NOT NULL,
  `ano_nasc` int NOT NULL,
  PRIMARY KEY (`autor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Autor Desconhecido','Brasil',0),(2,'Byung-Chul Han ','Coreia do Sul',1959),(3,'Paulo Vieira ','Brasil',1968),(4,'Benjamin Graham ','Inglaterra',1894),(5,'Kiera Cass ','Estados Unidos',1981),(6,'J.K. Rowling ','Inglaterra',1965),(7,'Alex Michaelides ','Chipre',1977),(8,'William Bennett','Estados Unidos',1943),(9,'George S Clason','Estados Unidos',1874),(10,'Colleen Hoover','Estados Unidos',1979),(11,'Paula Pimenta','Brasil',1975),(12,'Thiago Nigro','Brasil',1990),(13,'Augusto Cury','Brasil',1958);
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leitor`
--

DROP TABLE IF EXISTS `leitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leitor` (
  `leitor_id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`leitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leitor`
--

LOCK TABLES `leitor` WRITE;
/*!40000 ALTER TABLE `leitor` DISABLE KEYS */;
INSERT INTO `leitor` VALUES (1,'Sandro Giacomet','sgiacomet'),(2,'Eduane Giacomet','eduane.gg'),(3,'Melissa mello','mel_mello'),(4,'Jessica Biondo','jeh1998'),(5,'Fabicio Lacerda','frlacerda');
/*!40000 ALTER TABLE `leitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leituras`
--

DROP TABLE IF EXISTS `leituras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leituras` (
  `leituras_id` int NOT NULL AUTO_INCREMENT,
  `leitor_id` int NOT NULL,
  `livro_id` int NOT NULL,
  PRIMARY KEY (`leituras_id`),
  KEY `leituras_leitor_fk` (`leitor_id`),
  KEY `leitura_livro_fk` (`livro_id`),
  CONSTRAINT `leitura_livro_fk` FOREIGN KEY (`livro_id`) REFERENCES `livro` (`livro_id`),
  CONSTRAINT `leituras_leitor_fk` FOREIGN KEY (`leitor_id`) REFERENCES `leitor` (`leitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leituras`
--

LOCK TABLES `leituras` WRITE;
/*!40000 ALTER TABLE `leituras` DISABLE KEYS */;
INSERT INTO `leituras` VALUES (1,5,45),(2,5,12),(3,5,41),(4,1,46),(5,1,11),(6,1,41),(7,2,29),(8,2,30),(9,2,31),(10,2,32),(11,2,39),(12,2,40),(13,3,1),(14,3,4),(15,3,41),(16,3,6);
/*!40000 ALTER TABLE `leituras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livro` (
  `livro_id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `autor_id` int NOT NULL,
  `genero` varchar(50) NOT NULL,
  `editora` varchar(30) NOT NULL,
  `classificacao` int NOT NULL,
  `formato` varchar(15) NOT NULL,
  PRIMARY KEY (`livro_id`),
  KEY `livro_autor_fk` (`autor_id`),
  CONSTRAINT `livro_autor_fk` FOREIGN KEY (`autor_id`) REFERENCES `autor` (`autor_id`),
  CONSTRAINT `classificacao_chk` CHECK (((`classificacao` >= 0) and (`classificacao` <= 5)))
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (1,'A paciente silenciosa',7,'Suspense e Mistério','Record',4,'físico'),(2,'A paciente silenciosa',7,'Suspense e Mistério','Record',4,'digital'),(3,'O investidor inteligente',4,'Finanças e Investimentos ','HarperCollins ',5,'digital'),(4,'O investidor inteligente',4,'Finanças e Investimentos ','HarperCollins ',5,'físico'),(5,'Sociedade do cansaço',2,'Filosofia Política ','Editora Vozes ',5,'físico'),(6,'Sociedade do cansaço',2,'Filosofia Política ','Editora Vozes ',5,'digital'),(7,'Novembro_9',10,'Romance para Jovens ','Galera',4,'físico'),(8,'É Assim que Acaba',10,'Livros de Romance para Jovens','Galera',5,'físico'),(9,'É Assim que Acaba',10,'Livros de Romance para Jovens','Galera',5,'digital'),(10,'Novembro_9',10,'Romance para Jovens ','Galera',4,'digital'),(11,'O homem mais rico da Babilônia',9,'Arte para Adolescentes','HarperCollins',5,'físico'),(12,'O homem mais rico da Babilônia',9,'Arte para Adolescentes','HarperCollins',5,'digital'),(13,'Harry Potter e a Câmara Secreta',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico'),(14,'Harry Potter e a pedra filosofal',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico'),(15,'Harry Potter e o prisioneiro de Azkaban',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico'),(16,'Harry Potter e o cálice de fogo',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico'),(17,'Harry Potter e a ordem da fênix',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico'),(18,'Harry Potter e o enigma do príncipe',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico'),(19,'Harry Potter e as relíquias da morte',6,'Fantasia de Ação e Aventura ','Rocco',5,'físico'),(20,'Harry Potter e a Câmara Secreta',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital'),(21,'Harry Potter e a pedra filosofal',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital'),(22,'Harry Potter e o prisioneiro de Azkaban',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital'),(23,'Harry Potter e o cálice de fogo',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital'),(24,'Harry Potter e a ordem da fênix',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital'),(25,'Harry Potter e o enigma do príncipe',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital'),(26,'Harry Potter e as relíquias da morte',6,'Fantasia de Ação e Aventura ','Rocco',5,'digital'),(27,'A Seleção',5,'Literatura e Ficção ','Seguinte ',5,'físico'),(28,'A Seleção',5,'Literatura e Ficção ','Seguinte ',5,'digital'),(29,'Minha vida fora de série - 1ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico'),(30,'Minha vida fora de série – 2ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico'),(31,'Minha vida fora de série – 3ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico'),(32,'Minha vida fora de série – 4ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'físico'),(33,'Princesa das águas',11,'Literatura e Ficção','Galera',4,'físico'),(34,'Cinderela pop',11,'Literatura e Ficção','Galera',4,'físico'),(35,'Minha vida fora de série - 1ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital'),(36,'Minha vida fora de série – 2ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital'),(37,'Minha vida fora de série – 3ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital'),(38,'Minha vida fora de série – 4ª temporada',11,'Literatura e Ficção','Gutenberg ',5,'digital'),(39,'Princesa das águas',11,'Literatura e Ficção','Galera',4,'digital'),(40,'Cinderela pop',11,'Literatura e Ficção','Galera',4,'digital'),(41,'O poder da autorresponsabilidade',3,'Motivacional','Gente ',4,'físico'),(42,'O poder da autorresponsabilidade',3,'Motivacional','Gente ',4,'digital'),(43,'O livro das virtudes para crianças',8,'Literatura e Ficção','Nova Fronteira',5,'físico'),(44,'O livro das virtudes para crianças',8,'Literatura e Ficção','Nova Fronteira',5,'digital'),(45,'Vade Mecum 2022 Saraiva',1,'Direito Profissional e Técnico','Saraiva',5,'físico'),(46,'Vade Mecum 2022 Saraiva',1,'Direito Profissional e Técnico','Saraiva',5,'digital');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'new_db_app_db2'
--

--
-- Dumping routines for database 'new_db_app_db2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-11 22:28:38
