-- MySQL dump 10.13  Distrib 5.7.24, for Win32 (AMD64)
--
-- Host: localhost    Database: db_sqlix
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Current Database: `db_sqlix`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_sqlix` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_sqlix`;

--
-- Table structure for table `absorber`
--

DROP TABLE IF EXISTS `absorber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absorber` (
  `id_absorber` datetime NOT NULL,
  `id_habitant` int(11) NOT NULL,
  `id_potion` int(11) NOT NULL,
  `quantite_absorber` int(11) NOT NULL,
  PRIMARY KEY (`id_absorber`,`id_habitant`,`id_potion`),
  KEY `absorber_fk0` (`id_habitant`),
  KEY `absorber_fk1` (`id_potion`),
  CONSTRAINT `absorber_fk0` FOREIGN KEY (`id_habitant`) REFERENCES `habitant` (`id_habitant`),
  CONSTRAINT `absorber_fk1` FOREIGN KEY (`id_potion`) REFERENCES `potion` (`id_potion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absorber`
--

LOCK TABLES `absorber` WRITE;
/*!40000 ALTER TABLE `absorber` DISABLE KEYS */;
INSERT INTO `absorber` VALUES ('2052-02-18 00:00:00',7,1,3),('2052-02-18 00:00:00',12,2,4),('2052-02-20 00:00:00',2,1,2),('2052-02-20 00:00:00',7,3,1),('2052-02-20 00:00:00',8,1,2),('2052-04-03 00:00:00',7,1,1),('2052-04-03 00:00:00',10,3,4),('2052-04-03 00:00:00',13,2,5),('2052-04-03 00:00:00',15,1,2),('2052-05-05 00:00:00',15,4,2),('2052-05-10 00:00:00',1,5,4),('2052-05-10 00:00:00',2,5,1),('2052-06-06 00:00:00',7,2,1),('2052-06-06 00:00:00',8,3,4),('2052-06-06 00:00:00',13,1,2),('2052-06-07 00:00:00',1,5,2),('2052-07-17 00:00:00',7,5,1),('2052-07-18 00:00:00',7,2,3),('2052-08-18 00:00:00',7,4,2),('2052-08-18 00:00:00',8,1,3),('2052-08-18 00:00:00',10,3,2),('2052-08-18 00:00:00',16,1,1),('2052-09-20 00:00:00',1,4,2),('2052-09-20 00:00:00',7,3,5),('2052-10-23 00:00:00',7,2,4),('2052-10-23 00:00:00',13,3,1),('2052-10-23 00:00:00',13,4,3),('2052-11-26 00:00:00',8,2,2),('2052-11-26 00:00:00',10,1,2),('2052-11-26 00:00:00',13,5,2),('2052-11-26 00:00:00',16,5,2);
/*!40000 ALTER TABLE `absorber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `id_categorie` char(3) NOT NULL,
  `nom_categorie` varchar(50) NOT NULL,
  `point_categorie` int(11) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` VALUES ('BCN','Bouclier de Centurion',6),('BDN','Bouclier de Décurion',4),('BLE','Bouclier de Légionnaire',3),('BLT','Bouclier de Légat',10),('CCN','Casque de Centurion',3),('CDN','Casque de Décurion',2),('CLE','Casque de Légionnair',1),('CLT','Casque de Légat',4);
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabriquer`
--

DROP TABLE IF EXISTS `fabriquer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabriquer` (
  `id_habitant` int(11) NOT NULL,
  `id_potion` int(11) NOT NULL,
  PRIMARY KEY (`id_habitant`,`id_potion`),
  KEY `fabriquer_fk1` (`id_potion`),
  CONSTRAINT `fabriquer_fk0` FOREIGN KEY (`id_habitant`) REFERENCES `habitant` (`id_habitant`),
  CONSTRAINT `fabriquer_fk1` FOREIGN KEY (`id_potion`) REFERENCES `potion` (`id_potion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabriquer`
--

LOCK TABLES `fabriquer` WRITE;
/*!40000 ALTER TABLE `fabriquer` DISABLE KEYS */;
INSERT INTO `fabriquer` VALUES (4,1),(2,2),(3,3),(4,4),(6,4),(2,5),(4,5);
/*!40000 ALTER TABLE `fabriquer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitant`
--

DROP TABLE IF EXISTS `habitant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitant` (
  `id_habitant` int(11) NOT NULL AUTO_INCREMENT,
  `nom_habitant` varchar(30) NOT NULL,
  `age_habitant` int(11) NOT NULL,
  `id_village` int(11) NOT NULL,
  `id_qualite` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_habitant`),
  KEY `habitant_fk0` (`id_village`),
  KEY `habitant_fk1` (`id_qualite`),
  CONSTRAINT `habitant_fk0` FOREIGN KEY (`id_village`) REFERENCES `village` (`id_village`),
  CONSTRAINT `habitant_fk1` FOREIGN KEY (`id_qualite`) REFERENCES `qualite` (`id_qualite`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitant`
--

LOCK TABLES `habitant` WRITE;
/*!40000 ALTER TABLE `habitant` DISABLE KEYS */;
INSERT INTO `habitant` VALUES (1,'Abraracourcix',65,1,1),(2,'Amnésix',68,3,2),(3,'Barometrix',68,3,2),(4,'Panoramix',79,1,2),(5,'Assurancetourix',53,1,3),(6,'Zérozérosix',75,4,2),(7,'Astérix',35,1,4),(8,'Bellodalix',32,7,4),(9,'Cétyounix',32,4,4),(10,'Homéopatix',48,6,5),(11,'Obélix',38,1,6),(12,'Plantaquatix',30,5,5),(13,'Moralélastix',67,2,1),(14,'Pneumatix',26,1,7),(15,'Pronostix',35,5,4),(16,'Goudurix',38,2,4),(17,'Océanix',40,5,5),(18,'Asdepix',53,5,1),(19,'Eponine',48,2,8),(20,'Falbala',26,1,9),(21,'Gélatine',65,6,NULL),(22,'Fanzine',21,3,NULL);
/*!40000 ALTER TABLE `habitant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `potion`
--

DROP TABLE IF EXISTS `potion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `potion` (
  `id_potion` int(11) NOT NULL AUTO_INCREMENT,
  `lib_potion` varchar(40) DEFAULT NULL,
  `formule_potion` varchar(30) DEFAULT NULL,
  `constituant_potion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_potion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `potion`
--

LOCK TABLES `potion` WRITE;
/*!40000 ALTER TABLE `potion` DISABLE KEYS */;
INSERT INTO `potion` VALUES (1,'Potion magique n°1',NULL,'Gui'),(2,'Potion magique n°2','4V3C2VA','Vin'),(3,'Potion magique n°3','2C1B','Calva'),(4,'Potion Zen',NULL,'Jus de Betterave'),(5,'Potion Anti Douleur','5C3J1T','Calva');
/*!40000 ALTER TABLE `potion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `province` (
  `id_province` int(11) NOT NULL AUTO_INCREMENT,
  `nom_province` varchar(30) NOT NULL,
  `gouverneur_province` varchar(30) NOT NULL,
  PRIMARY KEY (`id_province`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'Armorique','Garovirus'),(2,'Averne','Nenpeuplus'),(3,'Aquitaine','Yenapus');
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualite`
--

DROP TABLE IF EXISTS `qualite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualite` (
  `id_qualite` int(11) NOT NULL AUTO_INCREMENT,
  `lib_qualite` varchar(30) NOT NULL,
  PRIMARY KEY (`id_qualite`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualite`
--

LOCK TABLES `qualite` WRITE;
/*!40000 ALTER TABLE `qualite` DISABLE KEYS */;
INSERT INTO `qualite` VALUES (1,'Chef'),(2,'Druide'),(3,'Barde'),(4,'Guerrier'),(5,'Chasseur'),(6,'Livreur de menhirs'),(7,'Facteur'),(8,'Poissonnière'),(9,'Serveuse');
/*!40000 ALTER TABLE `qualite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resserre`
--

DROP TABLE IF EXISTS `resserre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resserre` (
  `id_resserre` int(64) NOT NULL AUTO_INCREMENT,
  `nom_resserre` varchar(30) NOT NULL,
  `superficie_resserre` int(11) NOT NULL,
  `id_village` int(11) NOT NULL,
  PRIMARY KEY (`id_resserre`),
  KEY `resserre_fk0` (`id_village`),
  CONSTRAINT `resserre_fk0` FOREIGN KEY (`id_village`) REFERENCES `village` (`id_village`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resserre`
--

LOCK TABLES `resserre` WRITE;
/*!40000 ALTER TABLE `resserre` DISABLE KEYS */;
INSERT INTO `resserre` VALUES (1,'Albinus',720,4),(2,'Vercingetorix',500,6),(3,'Sintrof',895,1);
/*!40000 ALTER TABLE `resserre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trophee`
--

DROP TABLE IF EXISTS `trophee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trophee` (
  `id_trophee` int(11) NOT NULL AUTO_INCREMENT,
  `date_prise` datetime NOT NULL,
  `id_categorie` char(3) NOT NULL,
  `id_resserre` int(11) NOT NULL,
  `id_habitant` int(11) NOT NULL,
  PRIMARY KEY (`id_trophee`),
  KEY `trophee_fk0` (`id_categorie`),
  KEY `trophee_fk1` (`id_resserre`),
  KEY `trophee_fk2` (`id_habitant`),
  CONSTRAINT `trophee_fk0` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`),
  CONSTRAINT `trophee_fk1` FOREIGN KEY (`id_resserre`) REFERENCES `resserre` (`id_resserre`),
  CONSTRAINT `trophee_fk2` FOREIGN KEY (`id_habitant`) REFERENCES `habitant` (`id_habitant`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trophee`
--

LOCK TABLES `trophee` WRITE;
/*!40000 ALTER TABLE `trophee` DISABLE KEYS */;
INSERT INTO `trophee` VALUES (1,'2052-04-03 00:00:00','BLE',3,7),(2,'2052-04-03 00:00:00','BLT',3,11),(3,'2052-05-05 00:00:00','CDN',1,15),(4,'2052-05-05 00:00:00','CLE',2,16),(5,'2052-06-06 00:00:00','CCN',2,16),(6,'2052-06-06 00:00:00','BLT',1,8),(7,'2052-08-18 00:00:00','CCN',1,8),(8,'2052-09-20 00:00:00','CLT',3,1),(9,'2052-10-23 00:00:00','CDN',2,7),(10,'2052-10-23 00:00:00','CLE',1,16);
/*!40000 ALTER TABLE `trophee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `village`
--

DROP TABLE IF EXISTS `village`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `village` (
  `id_village` int(11) NOT NULL AUTO_INCREMENT,
  `nom_village` varchar(30) NOT NULL,
  `huttes_village` int(11) NOT NULL,
  `id_province` int(11) NOT NULL,
  PRIMARY KEY (`id_village`),
  KEY `village_fk0` (`id_province`),
  CONSTRAINT `village_fk0` FOREIGN KEY (`id_province`) REFERENCES `province` (`id_province`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `village`
--

LOCK TABLES `village` WRITE;
/*!40000 ALTER TABLE `village` DISABLE KEYS */;
INSERT INTO `village` VALUES (1,'Aquilona',52,1),(2,'Lutèce',25,2),(3,'Aginum',33,3),(4,'Calendes Aquae',42,2),(5,'Condate',38,1),(6,'Gergovie',55,1),(7,'Aquae Calidae',35,2);
/*!40000 ALTER TABLE `village` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-22 15:17:51
