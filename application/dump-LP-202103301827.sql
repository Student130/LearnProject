-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: LP
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `lp_adres_do`
--

DROP TABLE IF EXISTS `lp_adres_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_adres_do` (
  `id_do` int NOT NULL AUTO_INCREMENT,
  `id_adres` int NOT NULL,
  PRIMARY KEY (`id_do`),
  KEY `FKlp_adres_d326516` (`id_adres`),
  CONSTRAINT `FKlp_adres_d326516` FOREIGN KEY (`id_adres`) REFERENCES `lp_adresy` (`id_adres`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_adres_do`
--

LOCK TABLES `lp_adres_do` WRITE;
/*!40000 ALTER TABLE `lp_adres_do` DISABLE KEYS */;
INSERT INTO `lp_adres_do` VALUES (1,1),(2,3),(4,4),(5,5),(3,7),(6,8);
/*!40000 ALTER TABLE `lp_adres_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_adres_uzytkownika`
--

DROP TABLE IF EXISTS `lp_adres_uzytkownika`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_adres_uzytkownika` (
  `id_adres_uzytkownika` int NOT NULL AUTO_INCREMENT,
  `czy_aktualny` bit(1) NOT NULL,
  `id_pasazera` int NOT NULL,
  `id_adres` int NOT NULL,
  PRIMARY KEY (`id_adres_uzytkownika`),
  KEY `FKlp_adres_u377919` (`id_adres`),
  KEY `FKlp_adres_u615901` (`id_pasazera`),
  CONSTRAINT `FKlp_adres_u377919` FOREIGN KEY (`id_adres`) REFERENCES `lp_adresy` (`id_adres`),
  CONSTRAINT `FKlp_adres_u615901` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_adres_uzytkownika`
--

LOCK TABLES `lp_adres_uzytkownika` WRITE;
/*!40000 ALTER TABLE `lp_adres_uzytkownika` DISABLE KEYS */;
INSERT INTO `lp_adres_uzytkownika` VALUES (1,_binary '',1,1),(2,_binary '',3,5),(3,_binary '',6,4),(4,_binary '',4,8),(5,_binary '',7,2),(6,_binary '',5,3);
/*!40000 ALTER TABLE `lp_adres_uzytkownika` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_adres_z`
--

DROP TABLE IF EXISTS `lp_adres_z`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_adres_z` (
  `id_z` int NOT NULL AUTO_INCREMENT,
  `id_adres` int NOT NULL,
  PRIMARY KEY (`id_z`),
  KEY `FKlp_adres_z327119` (`id_adres`),
  CONSTRAINT `FKlp_adres_z327119` FOREIGN KEY (`id_adres`) REFERENCES `lp_adresy` (`id_adres`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_adres_z`
--

LOCK TABLES `lp_adres_z` WRITE;
/*!40000 ALTER TABLE `lp_adres_z` DISABLE KEYS */;
INSERT INTO `lp_adres_z` VALUES (4,1),(7,1),(1,2),(8,3),(10,3),(2,4),(5,5),(9,5),(6,6),(3,8);
/*!40000 ALTER TABLE `lp_adres_z` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_adresy`
--

DROP TABLE IF EXISTS `lp_adresy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_adresy` (
  `id_adres` int NOT NULL AUTO_INCREMENT,
  `wojewodztwo` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `powiat` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `gmina` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `miejscowosc` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `kod_pocztowy` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `ulica` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `nr_lokalu` int NOT NULL,
  PRIMARY KEY (`id_adres`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_adresy`
--

LOCK TABLES `lp_adresy` WRITE;
/*!40000 ALTER TABLE `lp_adresy` DISABLE KEYS */;
INSERT INTO `lp_adresy` VALUES (1,'Podkarpackie','Przeworsk','Sieniawa','Dybkow','37-530','Dolna',72),(2,'Swietokrzyskie','Leczycki','Skobieszow','Lypinki','88-200','Strzycka',82),(3,'Warminsko-Mazurskie','Stanowski','Wyszynski','Holubnice','42-821','Ciekawa',115),(4,'Małopolskie','Krakowski','Taniecki','Wyzyny','84-713','Buraczana',821),(5,'Lubuskie','Lubecki','Zaglebie','Lublin','84-123','Gorna',22),(6,'Zachodnio-Pomorskie','Brzyski','Anatolow','Jasinki','33-253','Ulubiona',17),(7,'Dolnoslaskie','Drzynow','Nowiny','Milkow','19-622','Szczesliwa',82),(8,'Podkarpackie','Jaroslawski','Podlasiow','Rzuchow','37-500','Niemoralna',77),(9,'Podkarpackie','Przeworski','Tryncza','Ubieszyn','37-520','Lotna',88);
/*!40000 ALTER TABLE `lp_adresy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_aktywacja`
--

DROP TABLE IF EXISTS `lp_aktywacja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_aktywacja` (
  `id_aktywacja` int NOT NULL AUTO_INCREMENT,
  `link_aktywacyjny` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `data_utworzenia` timestamp NOT NULL,
  `data_wygasniecia` timestamp NOT NULL,
  `czy_uzyty` bit(1) NOT NULL,
  `id_pasazera` int NOT NULL,
  PRIMARY KEY (`id_aktywacja`),
  UNIQUE KEY `link_aktywacyjny` (`link_aktywacyjny`),
  UNIQUE KEY `id_uzytkownika` (`id_pasazera`),
  CONSTRAINT `FKlp_aktywac988872` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_aktywacja`
--

LOCK TABLES `lp_aktywacja` WRITE;
/*!40000 ALTER TABLE `lp_aktywacja` DISABLE KEYS */;
INSERT INTO `lp_aktywacja` VALUES (1,'http:gfasfasagfasgagg.com','2021-05-03 22:00:00','2021-05-04 22:00:00',_binary '\0',1),(2,'http:gdagdagsdgsdfa.com','2021-04-03 22:00:00','2021-04-04 22:00:00',_binary '\0',2),(3,'http:duohsudHiosf.com','2021-03-14 23:00:00','2021-03-15 23:00:00',_binary '',3),(4,'http:ubwrifhsejpaijpo.com','2021-01-16 23:00:00','2021-01-17 23:00:00',_binary '',4),(5,'http:odfhnlsdkgnsoidgf.com','2021-01-29 23:00:00','2021-01-30 23:00:00',_binary '',5),(6,'http:odangfioasnfoias.com','2021-08-13 22:00:00','2021-08-14 22:00:00',_binary '\0',6);
/*!40000 ALTER TABLE `lp_aktywacja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_anulowanie_ogloszenia`
--

DROP TABLE IF EXISTS `lp_anulowanie_ogloszenia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_anulowanie_ogloszenia` (
  `id_anulowanie` int NOT NULL AUTO_INCREMENT,
  `powod_anulacji` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `data_nadania` timestamp NOT NULL,
  `id_ogloszenie` int NOT NULL,
  `id_kierowcy` int NOT NULL,
  PRIMARY KEY (`id_anulowanie`),
  KEY `FKlp_anulowa108318` (`id_ogloszenie`),
  KEY `FKlp_anulowa210875` (`id_kierowcy`),
  CONSTRAINT `FKlp_anulowa108318` FOREIGN KEY (`id_ogloszenie`) REFERENCES `lp_ogloszenie` (`id_ogloszenie`),
  CONSTRAINT `FKlp_anulowa210875` FOREIGN KEY (`id_kierowcy`) REFERENCES `lp_profil_kierowcy` (`id_kierowcy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_anulowanie_ogloszenia`
--

LOCK TABLES `lp_anulowanie_ogloszenia` WRITE;
/*!40000 ALTER TABLE `lp_anulowanie_ogloszenia` DISABLE KEYS */;
INSERT INTO `lp_anulowanie_ogloszenia` VALUES (1,'Biegunka','2021-06-14 22:00:00',1,3),(2,'Utrata prawa jazdy ','2021-04-18 22:00:00',3,5),(4,'Lenistwo','2021-04-18 22:00:00',2,4),(5,'Zla pogoda','2021-06-21 22:00:00',4,1),(6,'cos','2021-06-18 22:00:00',3,2),(7,'takie tam','2021-06-21 22:00:00',2,1);
/*!40000 ALTER TABLE `lp_anulowanie_ogloszenia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_komunikator`
--

DROP TABLE IF EXISTS `lp_komunikator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_komunikator` (
  `id_komunikator` int NOT NULL AUTO_INCREMENT,
  `id_pasazera_nadawca` int DEFAULT NULL,
  `id_pasazera_odbiorca` int DEFAULT NULL,
  PRIMARY KEY (`id_komunikator`),
  KEY `FKlp_komunik598807` (`id_pasazera_nadawca`),
  KEY `FKlp_komunik283992` (`id_pasazera_odbiorca`),
  CONSTRAINT `FKlp_komunik283992` FOREIGN KEY (`id_pasazera_odbiorca`) REFERENCES `lp_uzytkownicy` (`id_pasazera`),
  CONSTRAINT `FKlp_komunik598807` FOREIGN KEY (`id_pasazera_nadawca`) REFERENCES `lp_uzytkownicy` (`id_pasazera`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_komunikator`
--

LOCK TABLES `lp_komunikator` WRITE;
/*!40000 ALTER TABLE `lp_komunikator` DISABLE KEYS */;
INSERT INTO `lp_komunikator` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,5),(5,5,6),(6,6,7);
/*!40000 ALTER TABLE `lp_komunikator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_logowanie`
--

DROP TABLE IF EXISTS `lp_logowanie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_logowanie` (
  `id_logowanie` int NOT NULL AUTO_INCREMENT,
  `data_logowania` timestamp NOT NULL,
  `proba_logowania` tinyint NOT NULL,
  `id_pasazera` int NOT NULL,
  PRIMARY KEY (`id_logowanie`),
  KEY `FKlp_logowan207112` (`id_pasazera`),
  CONSTRAINT `FKlp_logowan207112` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_logowanie`
--

LOCK TABLES `lp_logowanie` WRITE;
/*!40000 ALTER TABLE `lp_logowanie` DISABLE KEYS */;
INSERT INTO `lp_logowanie` VALUES (1,'2021-03-21 05:06:06',1,1),(2,'2020-07-15 06:12:05',1,2),(3,'2021-02-18 11:25:30',1,3),(4,'2021-01-30 14:45:22',1,4),(5,'2021-03-13 16:25:34',1,5),(6,'2021-03-17 05:25:25',1,6);
/*!40000 ALTER TABLE `lp_logowanie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_ogloszenie`
--

DROP TABLE IF EXISTS `lp_ogloszenie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_ogloszenie` (
  `id_ogloszenie` int NOT NULL AUTO_INCREMENT,
  `data_wyjazdu` timestamp NOT NULL,
  `godz_wyjazdu` time NOT NULL,
  `data_dodania` timestamp NOT NULL,
  `koszt_wyjazdu` decimal(6,2) NOT NULL,
  `liczba_miejsc` int NOT NULL,
  `wielkosc_bagazu` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `aktywne` bit(1) NOT NULL,
  `opis` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_z` int NOT NULL,
  `id_do` int NOT NULL,
  `id_kierowcy` int NOT NULL,
  `id_pojazd` int NOT NULL,
  PRIMARY KEY (`id_ogloszenie`),
  KEY `FKlp_oglosze612959` (`id_pojazd`),
  KEY `FKlp_oglosze506505` (`id_do`),
  KEY `FKlp_oglosze440398` (`id_kierowcy`),
  KEY `FKlp_oglosze138274` (`id_z`),
  CONSTRAINT `FKlp_oglosze138274` FOREIGN KEY (`id_z`) REFERENCES `lp_adres_z` (`id_z`),
  CONSTRAINT `FKlp_oglosze440398` FOREIGN KEY (`id_kierowcy`) REFERENCES `lp_profil_kierowcy` (`id_kierowcy`),
  CONSTRAINT `FKlp_oglosze506505` FOREIGN KEY (`id_do`) REFERENCES `lp_adres_do` (`id_do`),
  CONSTRAINT `FKlp_oglosze612959` FOREIGN KEY (`id_pojazd`) REFERENCES `lp_pojazd` (`id_pojazd`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_ogloszenie`
--

LOCK TABLES `lp_ogloszenie` WRITE;
/*!40000 ALTER TABLE `lp_ogloszenie` DISABLE KEYS */;
INSERT INTO `lp_ogloszenie` VALUES (1,'2021-05-03 22:00:00','05:45:00','2021-03-21 07:00:00',300.00,4,'300',_binary '','Jade tam',1,2,1,1),(2,'2021-04-02 22:00:00','06:00:00','2021-03-21 14:00:00',200.00,2,'200',_binary '\0','Jade rowniez tam',3,2,3,2),(3,'2021-08-11 22:00:00','08:00:00','2021-02-20 15:00:00',100.00,3,'150',_binary '','Jade bo chce',2,1,2,3),(4,'2021-03-16 23:00:00','09:00:00','2021-03-14 23:00:00',80.00,4,'50',_binary '','Jade bo musze ',5,3,3,1),(5,'2021-02-19 23:00:00','15:00:00','2021-02-18 23:00:00',50.00,3,'280',_binary '\0','Lubie jechac gdzies',4,2,4,4),(6,'2021-09-21 22:00:00','19:00:00','2021-08-07 22:00:00',200.00,2,'400',_binary '','Wole autem niz rowerem',4,1,5,3);
/*!40000 ALTER TABLE `lp_ogloszenie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_opinia`
--

DROP TABLE IF EXISTS `lp_opinia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_opinia` (
  `id_opinia` int NOT NULL AUTO_INCREMENT,
  `ocena_kierowca` tinyint NOT NULL,
  `ocena_pojazd` tinyint NOT NULL,
  `ocena_podroz` tinyint NOT NULL,
  `komentarz` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `data_wystawienia` timestamp NOT NULL,
  `wyswietlac` bit(1) NOT NULL,
  `id_rezerwacja` int NOT NULL,
  `id_pasazera` int NOT NULL,
  `id_kierowcy` int NOT NULL,
  PRIMARY KEY (`id_opinia`),
  KEY `FKlp_opinia915270` (`id_rezerwacja`),
  KEY `FKlp_opinia300945` (`id_pasazera`),
  KEY `FKlp_opinia52765` (`id_kierowcy`),
  CONSTRAINT `FKlp_opinia300945` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`),
  CONSTRAINT `FKlp_opinia52765` FOREIGN KEY (`id_kierowcy`) REFERENCES `lp_profil_kierowcy` (`id_kierowcy`),
  CONSTRAINT `FKlp_opinia915270` FOREIGN KEY (`id_rezerwacja`) REFERENCES `lp_rezerwacja` (`id_rezerwacja`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_opinia`
--

LOCK TABLES `lp_opinia` WRITE;
/*!40000 ALTER TABLE `lp_opinia` DISABLE KEYS */;
INSERT INTO `lp_opinia` VALUES (1,3,4,4,'Srednio sie jechalo','2021-03-15 20:00:00',_binary '',1,1,1),(2,5,5,5,'Polecam goraco ta mordeczke ','2021-01-01 15:45:21',_binary '\0',2,2,1),(3,1,1,1,'Nie polecam, takim ludziom powinno sie odbierac prawo jazdy. ','2021-02-27 12:05:12',_binary '\0',3,3,3),(4,2,4,2,'Co za debil. Niech ma 4 za auto, jedyny porzadek jaki byl to w aucie.','2021-05-11 13:00:00',_binary '',2,4,4);
/*!40000 ALTER TABLE `lp_opinia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_opinia_odpowiedz`
--

DROP TABLE IF EXISTS `lp_opinia_odpowiedz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_opinia_odpowiedz` (
  `id_odpowiedz` int NOT NULL AUTO_INCREMENT,
  `data_odpowiedzi` timestamp NOT NULL,
  `odpowiedz` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `czy_wyswietlac` bit(1) NOT NULL,
  `id_opinia` int NOT NULL,
  `id_kierowcy` int NOT NULL,
  PRIMARY KEY (`id_odpowiedz`),
  UNIQUE KEY `id_opinia` (`id_opinia`),
  UNIQUE KEY `id_kierowcy` (`id_kierowcy`),
  CONSTRAINT `FKlp_opinia_540604` FOREIGN KEY (`id_opinia`) REFERENCES `lp_opinia` (`id_opinia`),
  CONSTRAINT `FKlp_opinia_548085` FOREIGN KEY (`id_kierowcy`) REFERENCES `lp_profil_kierowcy` (`id_kierowcy`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_opinia_odpowiedz`
--

LOCK TABLES `lp_opinia_odpowiedz` WRITE;
/*!40000 ALTER TABLE `lp_opinia_odpowiedz` DISABLE KEYS */;
INSERT INTO `lp_opinia_odpowiedz` VALUES (1,'2021-04-19 22:00:00','Blazen nie pasazer',_binary '',1,1),(2,'2021-03-14 23:00:00','To bylo dawno i nie prawda',_binary '',2,2),(3,'2021-02-16 23:00:00','Autentycznie ',_binary '',3,3),(4,'2021-06-21 22:00:00','Nie zgadzam sie z opinia ',_binary '',4,4);
/*!40000 ALTER TABLE `lp_opinia_odpowiedz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_pojazd`
--

DROP TABLE IF EXISTS `lp_pojazd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_pojazd` (
  `id_pojazd` int NOT NULL AUTO_INCREMENT,
  `marka` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `typ` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `pojemnosc` int NOT NULL,
  `moc` int NOT NULL,
  `rok` year NOT NULL,
  `pojemnosc_bagaznika` int NOT NULL,
  `aktualny` bit(1) NOT NULL,
  `id_kierowcy` int NOT NULL,
  PRIMARY KEY (`id_pojazd`),
  KEY `FKlp_pojazd329279` (`id_kierowcy`),
  CONSTRAINT `FKlp_pojazd329279` FOREIGN KEY (`id_kierowcy`) REFERENCES `lp_profil_kierowcy` (`id_kierowcy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_pojazd`
--

LOCK TABLES `lp_pojazd` WRITE;
/*!40000 ALTER TABLE `lp_pojazd` DISABLE KEYS */;
INSERT INTO `lp_pojazd` VALUES (1,'Opel','Insygnia','Sedan',2000,150,2010,600,_binary '',1),(2,'Wolkswagen','Golf','Hatchback',1600,116,1999,300,_binary '',4),(3,'Mazda','RX7','Sedan',2200,170,2015,400,_binary '',2),(4,'Audi ','RS4','Combi',6000,450,2016,700,_binary '',3),(5,'Mercedes ','C63','Sedan ',4000,300,2011,350,_binary '',5),(6,'Fiat','Punto','Hatchback',1200,85,1999,300,_binary '',6);
/*!40000 ALTER TABLE `lp_pojazd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_profil_kierowcy`
--

DROP TABLE IF EXISTS `lp_profil_kierowcy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_profil_kierowcy` (
  `id_kierowcy` int NOT NULL AUTO_INCREMENT,
  `nr_prawa_jazdy` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `opis` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `id_pasazera` int NOT NULL,
  PRIMARY KEY (`id_kierowcy`),
  UNIQUE KEY `nr_prawa_jazdy` (`nr_prawa_jazdy`),
  UNIQUE KEY `id_pasazera` (`id_pasazera`),
  CONSTRAINT `FKlp_profil_864280` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_profil_kierowcy`
--

LOCK TABLES `lp_profil_kierowcy` WRITE;
/*!40000 ALTER TABLE `lp_profil_kierowcy` DISABLE KEYS */;
INSERT INTO `lp_profil_kierowcy` VALUES (1,'078825182','Jestem kierowca z 8 letnim doswiadczeniem. ',1),(2,'872984000','Uwielbiam podrozowac i zwiedzac rozne ciekawe miejsca. Posiadam prawo jazdy o 4 lat',2),(3,'723952123','Jestem kierowca o 5 lat. Wczesniej jezdzilem jako kierowca zawodowy. ',3),(4,'157287512','Posiadam duze doswiadczenie za kolkiem. 3 lata bylem kierowca busa, przewoz osob',4),(5,'812345123','Lubie jezdzic konno i samochodem',5),(6,'871235512','Mam prawo jazdy. Dziekuje za uwage ',6),(7,'612351351','Nie mam prawa jazdy ale jezdze, pozdrawiam wariatow za kolkiem.',7);
/*!40000 ALTER TABLE `lp_profil_kierowcy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_regulamin`
--

DROP TABLE IF EXISTS `lp_regulamin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_regulamin` (
  `punkt_regulaminu` int NOT NULL AUTO_INCREMENT,
  `tresc_regulaminu` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  PRIMARY KEY (`punkt_regulaminu`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_regulamin`
--

LOCK TABLES `lp_regulamin` WRITE;
/*!40000 ALTER TABLE `lp_regulamin` DISABLE KEYS */;
INSERT INTO `lp_regulamin` VALUES (1,'Nie mozna jesc przy komputerze '),(2,'Nie mozna spac przy komputerze '),(3,'Mozna sie uczyc przy komputerze '),(4,'Nalezy siedziec prosto przy komputerze ');
/*!40000 ALTER TABLE `lp_regulamin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_resetowanie_hasla`
--

DROP TABLE IF EXISTS `lp_resetowanie_hasla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_resetowanie_hasla` (
  `id_resetowanie` int NOT NULL AUTO_INCREMENT,
  `token_resetujacy` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `data_wygasniecia` timestamp NOT NULL,
  `data_resetu` timestamp NULL DEFAULT NULL,
  `ilosc_prob` tinyint NOT NULL,
  `id_pasazera` int NOT NULL,
  PRIMARY KEY (`id_resetowanie`),
  UNIQUE KEY `token_resetujacy` (`token_resetujacy`),
  KEY `FKlp_resetow547514` (`id_pasazera`),
  CONSTRAINT `FKlp_resetow547514` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_resetowanie_hasla`
--

LOCK TABLES `lp_resetowanie_hasla` WRITE;
/*!40000 ALTER TABLE `lp_resetowanie_hasla` DISABLE KEYS */;
INSERT INTO `lp_resetowanie_hasla` VALUES (1,'rrtregheth','2021-05-21 22:00:00','2021-05-20 22:00:00',3,1),(2,'asofanifasnfwr','2021-04-23 22:00:00','2021-04-22 22:00:00',3,2),(3,'gdsfgadfdsgdfgdg','2021-05-10 22:00:00','2021-08-14 22:00:00',3,3),(4,'douasdioashjgoids','2021-02-01 23:00:00','2021-01-31 23:00:00',3,4);
/*!40000 ALTER TABLE `lp_resetowanie_hasla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_rezerwacja`
--

DROP TABLE IF EXISTS `lp_rezerwacja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_rezerwacja` (
  `id_rezerwacja` int NOT NULL AUTO_INCREMENT,
  `ilosc_miejsc` tinyint NOT NULL,
  `wielkosc_bagazu` int NOT NULL,
  `czy_stan_pelny` bit(1) NOT NULL,
  `czy_aktualne` bit(1) NOT NULL,
  `data_rezerwacji` timestamp NOT NULL,
  `id_ogloszenie` int NOT NULL,
  `id_pasazera` int NOT NULL,
  PRIMARY KEY (`id_rezerwacja`),
  KEY `FKlp_rezerwa941181` (`id_ogloszenie`),
  KEY `FKlp_rezerwa590444` (`id_pasazera`),
  CONSTRAINT `FKlp_rezerwa590444` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`),
  CONSTRAINT `FKlp_rezerwa941181` FOREIGN KEY (`id_ogloszenie`) REFERENCES `lp_ogloszenie` (`id_ogloszenie`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_rezerwacja`
--

LOCK TABLES `lp_rezerwacja` WRITE;
/*!40000 ALTER TABLE `lp_rezerwacja` DISABLE KEYS */;
INSERT INTO `lp_rezerwacja` VALUES (1,2,300,_binary '\0',_binary '','2021-03-02 23:00:00',1,1),(2,1,200,_binary '\0',_binary '','2021-04-21 06:00:00',2,2),(3,3,100,_binary '\0',_binary '','2021-01-29 11:00:00',3,3),(4,1,50,_binary '\0',_binary '','2021-03-14 23:00:00',4,4),(5,1,200,_binary '\0',_binary '','2021-07-14 06:00:00',5,5),(6,2,80,_binary '\0',_binary '','2021-02-11 08:15:14',6,3);
/*!40000 ALTER TABLE `lp_rezerwacja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_rezygnacja`
--

DROP TABLE IF EXISTS `lp_rezygnacja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_rezygnacja` (
  `id_rezygnacja` int NOT NULL AUTO_INCREMENT,
  `data_rezygnacji` timestamp NOT NULL,
  `przyczyna_rezygnacji` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `akceptacja` bit(1) NOT NULL,
  `komentarz` varchar(255) COLLATE utf8_polish_ci DEFAULT NULL,
  `id_pasazera` int NOT NULL,
  `id_ogloszenie` int NOT NULL,
  PRIMARY KEY (`id_rezygnacja`),
  KEY `FKlp_rezygna562777` (`id_pasazera`),
  KEY `FKlp_rezygna58076` (`id_ogloszenie`),
  CONSTRAINT `FKlp_rezygna562777` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`),
  CONSTRAINT `FKlp_rezygna58076` FOREIGN KEY (`id_ogloszenie`) REFERENCES `lp_ogloszenie` (`id_ogloszenie`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_rezygnacja`
--

LOCK TABLES `lp_rezygnacja` WRITE;
/*!40000 ALTER TABLE `lp_rezygnacja` DISABLE KEYS */;
INSERT INTO `lp_rezygnacja` VALUES (1,'2021-04-21 22:00:00','Nie chce mi sie jechcac ',_binary '','OK twoj wybor ',1,1),(2,'2021-06-14 22:00:00','Zmienilem zdanie ',_binary '','OK nie ma problemu, z fartem mordeczko',2,2),(3,'2021-06-05 22:00:00','Polece samolotem ',_binary '','To lec ',3,3),(4,'2021-02-16 23:00:00','Pojade rowerem ',_binary '','Powodzenia 300km rowerem',4,4),(5,'2021-03-18 23:00:00','Pomylilem przyciski',_binary '','To patrz nastepnym razem ',5,5);
/*!40000 ALTER TABLE `lp_rezygnacja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_uzytkownicy`
--

DROP TABLE IF EXISTS `lp_uzytkownicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_uzytkownicy` (
  `id_pasazera` int NOT NULL AUTO_INCREMENT,
  `imie` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `login` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `haslo` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `wiek` int DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `data_urodzenia` timestamp NOT NULL,
  `czy_konto_aktywne` bit(1) NOT NULL,
  `data_zablokowania` timestamp NULL DEFAULT NULL,
  `data_odblokowania` timestamp NULL DEFAULT NULL,
  `czy_konto_zablokowane` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_pasazera`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_uzytkownicy`
--

LOCK TABLES `lp_uzytkownicy` WRITE;
/*!40000 ALTER TABLE `lp_uzytkownicy` DISABLE KEYS */;
INSERT INTO `lp_uzytkownicy` VALUES (1,'Tomek','Kapsel','TomekK123','Kapsel123',25,'TomekKapsel@gmail.com','1996-05-18 22:00:00',_binary '',NULL,NULL,_binary '\0'),(2,'Aneta','Skarpeta','Anis55521','Socksy4122',24,'gsdgsdg@gmail.com','1997-02-01 23:00:00',_binary '',NULL,NULL,_binary '\0'),(3,'Bartek ','Ciagiel','BartCCC152','Cowycowy721',30,'BartCiag@o2.pl','1991-06-05 22:00:00',_binary '\0',NULL,NULL,_binary ''),(4,'Magdalena','Bak','Madzia721','Baku882',40,'Madziab821@interia.pl','1981-12-03 23:00:00',_binary '',NULL,NULL,_binary '\0'),(5,'Tadeusz','Zyburtowicz','Tadek8821','Burta821',32,'Tade8888@o2.pl','1989-08-24 22:00:00',_binary '',NULL,NULL,_binary '\0'),(6,'Mirek','Maslo','Mirabelka612','Maslana82311',21,'Mirabelka921@gmail.com','2000-03-19 23:00:00',_binary '\0',NULL,NULL,_binary ''),(7,'Zbigniew ','Tomaszewski','Zbychu8124','Bombelki8123',33,'Zbychuzzzz@gmail.com','1988-02-24 23:00:00',_binary '',NULL,NULL,_binary '\0'),(8,'Bozena ','Cypis','LadyBozena111','Bozenkowyswiat451',29,'Bozis6675@o2.pl','1992-09-29 23:00:00',_binary '',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `lp_uzytkownicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_wiadomosc`
--

DROP TABLE IF EXISTS `lp_wiadomosc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_wiadomosc` (
  `id_wiadomosci` int NOT NULL AUTO_INCREMENT,
  `data_wiadomosci` timestamp NOT NULL,
  `wiadomosc` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `wyswietlone` bit(1) NOT NULL,
  `id_komunikator` int NOT NULL,
  `id_pasazera` int NOT NULL,
  `id_kierowcy` int NOT NULL,
  `id_poprzednia` int NOT NULL,
  PRIMARY KEY (`id_wiadomosci`),
  KEY `FKlp_wiadomo141750` (`id_poprzednia`),
  KEY `FKlp_wiadomo467290` (`id_komunikator`),
  KEY `FKlp_wiadomo889402` (`id_pasazera`),
  KEY `FKlp_wiadomo641222` (`id_kierowcy`),
  CONSTRAINT `FKlp_wiadomo141750` FOREIGN KEY (`id_poprzednia`) REFERENCES `lp_wiadomosc` (`id_wiadomosci`),
  CONSTRAINT `FKlp_wiadomo467290` FOREIGN KEY (`id_komunikator`) REFERENCES `lp_komunikator` (`id_komunikator`),
  CONSTRAINT `FKlp_wiadomo641222` FOREIGN KEY (`id_kierowcy`) REFERENCES `lp_profil_kierowcy` (`id_kierowcy`),
  CONSTRAINT `FKlp_wiadomo889402` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_wiadomosc`
--

LOCK TABLES `lp_wiadomosc` WRITE;
/*!40000 ALTER TABLE `lp_wiadomosc` DISABLE KEYS */;
INSERT INTO `lp_wiadomosc` VALUES (1,'2021-03-17 23:00:00','Siemka mam pytanie, czy jedziesz przez leszno.',_binary '',1,1,1,1),(2,'2021-04-14 22:00:00','Siemka nie jade ',_binary '',2,2,2,2),(3,'2021-01-12 23:00:00','ok dzieki za info ',_binary '',3,3,3,3),(4,'2021-05-15 22:00:00','Siemka jedziesz przez ujkowice ',_binary '',4,4,4,4);
/*!40000 ALTER TABLE `lp_wiadomosc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lp_zatwierdzenie_regulaminu`
--

DROP TABLE IF EXISTS `lp_zatwierdzenie_regulaminu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lp_zatwierdzenie_regulaminu` (
  `id_zatwierdzenie` int NOT NULL AUTO_INCREMENT,
  `data_zatwierdzenia` timestamp NOT NULL,
  `czy_zatwierdzono` bit(1) NOT NULL,
  `punkt_regulaminu` int NOT NULL,
  `id_pasazera` int NOT NULL,
  PRIMARY KEY (`id_zatwierdzenie`),
  UNIQUE KEY `punkt_regulaminu` (`punkt_regulaminu`),
  KEY `FKlp_zatwier466224` (`id_pasazera`),
  CONSTRAINT `FKlp_zatwier466224` FOREIGN KEY (`id_pasazera`) REFERENCES `lp_uzytkownicy` (`id_pasazera`),
  CONSTRAINT `FKlp_zatwier886021` FOREIGN KEY (`punkt_regulaminu`) REFERENCES `lp_regulamin` (`punkt_regulaminu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lp_zatwierdzenie_regulaminu`
--

LOCK TABLES `lp_zatwierdzenie_regulaminu` WRITE;
/*!40000 ALTER TABLE `lp_zatwierdzenie_regulaminu` DISABLE KEYS */;
INSERT INTO `lp_zatwierdzenie_regulaminu` VALUES (1,'2021-05-18 22:00:00',_binary '\0',1,1),(3,'2021-05-19 22:00:00',_binary '',2,2),(5,'2021-06-14 22:00:00',_binary '',3,3),(8,'2021-01-14 23:00:00',_binary '\0',4,4);
/*!40000 ALTER TABLE `lp_zatwierdzenie_regulaminu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'LP'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-30 18:27:03
