CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-17 08:13:21.992690'),(2,'auth','0001_initial','2024-05-17 08:13:22.083913'),(3,'admin','0001_initial','2024-05-17 08:13:22.361050'),(4,'admin','0002_logentry_remove_auto_add','2024-05-17 08:13:22.431474'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-17 08:13:22.437633'),(6,'contenttypes','0002_remove_content_type_name','2024-05-17 08:13:22.490442'),(7,'auth','0002_alter_permission_name_max_length','2024-05-17 08:13:22.526115'),(8,'auth','0003_alter_user_email_max_length','2024-05-17 08:13:22.545289'),(9,'auth','0004_alter_user_username_opts','2024-05-17 08:13:22.552257'),(10,'auth','0005_alter_user_last_login_null','2024-05-17 08:13:22.589140'),(11,'auth','0006_require_contenttypes_0002','2024-05-17 08:13:22.593291'),(12,'auth','0007_alter_validators_add_error_messages','2024-05-17 08:13:22.599458'),(13,'auth','0008_alter_user_username_max_length','2024-05-17 08:13:22.646996'),(14,'auth','0009_alter_user_last_name_max_length','2024-05-17 08:13:22.685841'),(15,'auth','0010_alter_group_name_max_length','2024-05-17 08:13:22.706537'),(16,'auth','0011_update_proxy_permissions','2024-05-17 08:13:22.712668'),(17,'sessions','0001_initial','2024-05-17 08:13:22.734175');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('981aiu4j945xlssbo9ho165y0aqvq4zd','ZDNlOGY1MTRmNmM4NDI1ZDVmMDUyMGY1YTFiNzAwZjhiYzk3ZWNlZDp7InVzZXJuYW1lIjoiYWRtaW54In0=','2024-06-02 11:59:30.571981'),('xrpezhiutf4czpx46qe65bqpviuqo37q','Yzg3MDMxNzYzNTI1NjBkZjEyZWUyM2ZkMDA4NWE3NzE3NmY2Yzc1ZDp7InVzZXJuYW1lIjoiYWRtaW54IiwiZHJfdXNlcm5hbWUiOiJkciIsImhhc3RhX3VzZXJuYW1lIjoiaGgifQ==','2024-06-02 16:32:45.056440');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doktorlar`
--

DROP TABLE IF EXISTS `doktorlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doktorlar` (
  `DoktorID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) DEFAULT NULL,
  `Soyad` varchar(50) DEFAULT NULL,
  `UzmanlikAlani` varchar(100) DEFAULT NULL,
  `CalistigiHastane` varchar(100) DEFAULT NULL,
  `doktorun` varchar(45) DEFAULT NULL,
  `doktorsifre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DoktorID`)
) ENGINE=InnoDB AUTO_INCREMENT=2029 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doktorlar`
--

LOCK TABLES `doktorlar` WRITE;
/*!40000 ALTER TABLE `doktorlar` DISABLE KEYS */;
INSERT INTO `doktorlar` VALUES (1,'Nevsal','İhsanoğlu','Ortopedi','Hastane 5','tevetoglukader','!BiG6Zk*Gp'),(2,'İnsaf','Bilge','Kulak Burun Boğaz','Hastane 6','deniz36',')4^7@It_nU'),(3,'Sargın','Bilge','Kulak Burun Boğaz','Hastane 4','ferzi27','Q7ISbIBF%0'),(4,'Sezginbaş','Durdu','Psikiyatri','Hastane 4','myorulmaz','J(5HuLjqgK'),(5,'Şehreban','Eraslan','Nefroloji','Hastane 5','karadenizemis','*QY3q2Wi^3'),(6,'Günaydin','Soylu','Nefroloji','Hastane 5','kisakurekborahan','(@@1ByRwO+'),(7,'Muhyettin','Aksu','Nefroloji','Hastane 5','koktasmanco','mf3ItWDel#'),(8,'Günşen','Öcalan','Nefroloji','Hastane 1','nurice26','e&!q9FYuLV'),(9,'Vedat','Arsoy','Nöroloji','Hastane 6','imrihan98','wmhp3Dbj3+'),(10,'Aytöz','Akça','Nöroloji','Hastane 6','elvan89','cu)0p+TjVD'),(11,'Zöhrehan','Yüksel','Psikiyatri','Hastane 7','mertelaksu','(fC5LHWs01'),(12,'Buşra','Akçay','Kulak Burun Boğaz','Hastane 2','karanbay84','P(1OCBtmSj'),(13,'Ortak','Durdu','Dermatoloji','Hastane 7','tuzeer37','#4Bo6xxbD^'),(14,'Pehlil','Ertaş','Nefroloji','Hastane 6','pirahmet57','!lVZY(fF43'),(15,'Huzuri','Arslan','Dermatoloji','Hastane 5','dakar','ucwx9HUo_5'),(16,'Çağdan','Korutürk','Psikiyatri','Hastane 6','hatin47','c0YKU4lq^#'),(17,'Şilan','Hayrioğlu','Dermatoloji','Hastane 2','fbilge','%t6CzHRhHL'),(18,'Timurtaş','Şener','Dermatoloji','Hastane 6','munif31','Z^7xyQImva'),(19,'Timurtaş','Seven','Nöroloji','Hastane 6','uergul','FlRyDAjt_0'),(20,'Doğannur','Tarhan','Üroloji','Hastane 6','aliihsan39','@86M3kVSDG');
/*!40000 ALTER TABLE `doktorlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hastalar`
--

DROP TABLE IF EXISTS `hastalar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hastalar` (
  `HastaID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) DEFAULT NULL,
  `Soyad` varchar(50) DEFAULT NULL,
  `DogumTarihi` date DEFAULT NULL,
  `Cinsiyet` enum('Erkek','Kadın') DEFAULT NULL,
  `Telefon` varchar(30) DEFAULT NULL,
  `Adres` text,
  `hastaun` varchar(45) DEFAULT NULL,
  `hastasifre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`HastaID`)
) ENGINE=InnoDB AUTO_INCREMENT=6015 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hastalar`
--

LOCK TABLES `hastalar` WRITE;
/*!40000 ALTER TABLE `hastalar` DISABLE KEYS */;
INSERT INTO `hastalar` VALUES (1,'Temime','Tarhan','1945-03-11','Kadın','+90 (615) 7671322','0433 Dürrüşehvar Burg\nPort Ferinazchester, KS 84266','tarhanummuhan','8v!9JPi+$7'),(2,'Kürşad','İhsanoğlu','1997-02-02','Erkek','(139)027 5034','171 Aksu Turnpike Suite 951\nTanyumouth, NH 47022','gucluhazine','0x#KoEWH^h'),(3,'Tahir','Hançer','1969-01-10','Kadın','(383)243 0418','608 Şama Mall Suite 950\nNew Faizebury, MS 57666','akgolocalan',')A7QN#Uy1m'),(4,'Zebirce','Aksu','1974-07-30','Kadın','08475340313','94692 Verim Key Suite 677\nLake Özlemfort, OR 11497','rdemir','++z16UtASC'),(5,'Nezengül','Demirel','2000-06-24','Erkek','(472)731 2348','98748 Günkurt Canyon\nBilginfurt, ID 47122','takdeniz',')9B0BZfflv'),(6,'Börteçin','Durmuş','1983-03-10','Erkek','+90(902)799-8562x9573','67931 Güçlü Parks\nGüçlüerborough, VA 51850','akcamefharet','D5U1m*_S%n'),(7,'Ertuncay','Şafak','1984-05-01','Erkek','(863)044 3545','04074 Güçlü Canyon\nPort Tuğçefurt, PR 14356','fsama','H(Z@80Gq)S'),(8,'Özgün','Bilir','1971-07-26','Erkek','444 4 507','740 Durmuş Wall\nİnönühaven, GA 06965','abdulkadir06','$l(k4Iklv$'),(9,'Nakip','Bilgin','1973-06-23','Kadın','+90 (737) 1568388','55360 Akçabay Summit Apt. 162\nAkarmouth, NY 99776','erkinelocalan','r!3aL4Y)^u'),(10,'Emirşan','Çorlu','1991-07-29','Erkek','+90(756)8516785','9384 Erdoğan Plains\nSouth Gülözgeburgh, OR 01461','myorulmaz','^w7vJrcLGz'),(11,'Erensoy','Seven','1993-05-31','Erkek','09712699500','0896 Zelha Ranch\nDemirville, ID 01180','sahinderhancer','@1yGIN7yck'),(12,'Mefarettin','Eraslan','2003-03-23','Erkek','(521)251 0736','65870 Tuğtaş Junctions Apt. 861\nNew Berrinland, AS 68016','gulnebiha','$^Q5vWxxg4'),(13,'Andiç','Yüksel','2000-11-24','Erkek','(614)911 6972','407 Akçay Drive\nLake Burcuhan, AZ 55939','guclucanberk','cygl$W!e*0'),(14,'Mesude','Hançer','1943-07-31','Erkek','0357 460 23 50','1552 Korutürk Drive\nEdaviyeport, OK 31458','teybet76','DQdWB89y(7'),(15,'Eşim','Seven','1963-12-22','Kadın','340 2 748','3541 Tarhan Mountain Apt. 928\nWest Ümray, NV 52291','calemdar','^tC1dCwa!@'),(16,'Ünübol','Hançer','1939-08-27','Erkek','0387 843 16 89','93106 Bilgin Mission\nEast Hatemmouth, ID 77362','akcayaral','&0Px93vzNn'),(17,'Sarya','Erdoğan','1945-03-15','Kadın','+90(364)4724823','71158 Jaruthip Cape\nWest Temizkalmouth, CT 93168','durmusmelihcan','N19zQ&k6_v'),(18,'Saba','Eraslan','1969-11-16','Erkek','0855 368 78 33','920 Ülker Tunnel\nÇetinview, IA 35379','abdulahatdemir','#47YKRiuY#'),(19,'Dorukhan','Fırat','1975-10-31','Erkek','08302380523','546 Bilir Fords\nPort Güçlüerfurt, FM 32726','biltasakar','ljU9+RzoF*'),(20,'Uyanser','Arsoy','1959-09-16','Kadın','06440261421','02933 Başay Center\nErdibayton, NM 51982','cemalettin49','!nO5HbFqx2'),(21,'Şayan','Öcalan','1951-06-29','Erkek','886 5 108','256 Durmuş Branch Apt. 110\nNew Mufide, UT 39075','yagin78',')4K^k@ZP(e'),(22,'Varlık','Çetin','1989-01-31','Kadın','476 3 599','3987 Vezat Spring Suite 407\nLake Efefurt, CA 56555','sakaryaeba','K&Q2yHkTn9'),(23,'Altınkaya','Seven','1938-11-12','Erkek','+90(223)7951772','967 Ergül Unions\nZöhrehanfort, NC 84049','hurmet71','H7QGr#fZ!d'),(24,'Idık','Tevetoğlu','1961-02-16','Kadın','(293)374 3974','7876 Şadıman Street Suite 973\nSoyluside, PR 23826','arisoy15','P!5UfJp1%Y'),(25,'Monis','Hayrioğlu','1936-03-05','Erkek','+90(425)6571401','85490 Akçay Plains Apt. 957\nNorth Onatbury, NJ 29644','fatihfirat','PU)R3aZi^s'),(26,'Tezol','Sezgin','1957-10-29','Kadın','01792900840','USNS Akça\nFPO AP 40939','dolunakcay','!58vCD7KVc'),(27,'Huban','Demirel','2000-06-03','Kadın','+90(376)3858560','10863 Narhanim Ford Apt. 525\nEast Hanim, MP 68357','mancokaraca','u_hX3H4j_('),(28,'Günar','Arsoy','2002-04-07','Erkek','05762721042','4874 Tarhan Creek Apt. 726\nNorth Hürüyet, OR 15218','koruturkokturk','D418_1Ll*!'),(29,'Dilder','Türk','1965-04-04','Kadın','00068686486','98460 Ülker Groves\nDuranport, OK 77933','uyildirim','&4J%Hh@BJJ'),(30,'Ulutay','Mansız','2005-05-07','Kadın','+90(391)449-5145x5041','848 Hayrioğlu Radial\nNew Fidayefort, NE 75883','dumanliarisoy','@gi3I6ldct'),(31,'Nihai','İhsanoğlu','1995-03-12','Erkek','+90(935)849-1393x661','18640 Sanavber Track Apt. 993\nPort Naz, MA 52580','akgunduzcanur','#d395Mpuif'),(32,'Şekim','Şener','1994-03-12','Erkek','+90(323)4585561','9400 Ceyhun Corner\nEast İdirisbury, OK 69578','arslandivan','e8vhB$nr_1'),(33,'Arıpınar','Durmuş','1955-11-30','Erkek','0066 345 17 93','56871 Akdeniz Isle Apt. 026\nÜlkerfurt, DE 08264','yagin27','xV$o0Nzilg'),(34,'Hamiyet','Yılmaz','1958-02-01','Erkek','311 6 514','71205 Türk Rapid\nHarbinazstad, NH 58602','csezgin','oW@7KKnE$y'),(35,'Uraltay','Zorlu','1938-12-16','Kadın','07735654766','36423 Mahter Junctions Suite 068\nİnönüland, DC 56084','sohret30','eSU35Eem@P'),(36,'Hidir','Tarhan','2005-05-28','Kadın','0260 032 00 43','120 Ekber Spurs\nSudiport, AL 15884','esim03','J)6G9^mn36'),(37,'Umuşan','Aslan','1961-10-04','Kadın','0963-058 2512','0153 Tarhan Lock Apt. 216\nWest İde, TX 29800','nevalyilmaz','$0GFy(zZf3'),(38,'Teknaz','Erdoğan','2000-01-13','Erkek','+90(609)1521680','8647 Öcalan Forest\nSouth Asiman, MD 68221','celilaykisakurek','v68B86Mk!+'),(39,'Talayer','Arslan','1957-09-02','Erkek','390 5 585','366 Şendoğan Crescent\nMuhammetborough, OH 84566','okanaydumanli','q8JJ#W+u&r'),(40,'Şehamet','Akgündüz','1959-11-04','Kadın','+90 (134) 1864890','195 Aygönenç Stream\nZehranurland, IL 70907','fsener','*N$IeQb51H'),(41,'Edgübay','Ülker','1942-04-20','Erkek','07579412822','USNV Eraslan\nFPO AP 01553','alemdaratagun','MZm867j+a_'),(42,'Tanak','Bilgin','2004-03-16','Erkek','+90 (886) 6471198','830 Güçlü Branch Suite 313\nSouth Açıkel, PR 31837','sudibilgin','#0So*GfmFj'),(43,'İmrihan','Durdu','2004-10-13','Erkek','0061 716 29 79','4171 Torhan Forges\nNew Omacafurt, MI 28156','nebihdurdu','4nd0GhSbh)'),(44,'Salkın','Akgündüz','1998-02-24','Kadın','+90(856)239-1061x972','4392 Satıa Summit\nEast Yıldızberg, AZ 16897','gulcekoruturk','M5uVrY$f!b'),(45,'Balca','Eraslan','1971-10-31','Kadın','0543-463 4943','579 Sağıt Bridge\nHanedanmouth, NE 66514','eihsanoglu','j6%To7ql!A'),(46,'İyiyürek','Akdeniz','1988-05-22','Kadın','0597-615 0411','4213 Şensoy Bypass Suite 112\nTarhanbury, OK 50359','nas22','%G#04NfiBA'),(47,'Faize','Aksu','1993-10-30','Kadın','051 7 248','8045 Aytöz Fort\nAksöğütton, MH 27714','incifirgulen','2mSl1GhW^a'),(48,'Mehdiye','Gülen','2005-02-24','Kadın','(791)596 2080','050 Akçay Court\nKelâmistad, DC 17836','igulen','3F#+EX+i@5'),(49,'Müzekker','Alemdar','1940-11-16','Erkek','03520797336','297 Bilay Hills Apt. 628\nBilginhaven, NY 31167','eturk','#82J1viSgQ'),(50,'Fetullah','Ertaş','1978-02-17','Kadın','+90(338)179-0927x668','86046 Öcalan Underpass\nNorth İlgi, NH 62924','sadittin31','v9R@edcy)l'),(51,'Eşref','Akdeniz','1944-09-03','Erkek','(215)097 6857','76524 Tatu Haven\nAkarton, FM 09066','eraslanmefharet','aScj8Uri(N'),(52,'Okanay','Duran','1972-09-08','Erkek','(178)236 8118','22070 Manço Villages Suite 620\nOkanayshire, UT 38904','ruhidesezgin','%awZY4Kh7!'),(53,'Şekim','Öcalan','1952-05-25','Erkek','022 5 034','253 Nurey Plaza Apt. 249\nNew Aydar, MT 56793','guvercin35','*ooZg&8%l1'),(54,'Uluman','Yüksel','2001-10-17','Kadın','123 9 919','7265 İlsu Lock\nKaradenizland, CA 81595','bkoruturk','%5_PkSFwYk'),(55,'Baki','Demir','1972-08-20','Erkek','0895-195 4443','46153 Çağveren Streets\nPort Müretport, WA 03959','tanbaycetin','_9A3KSCprn'),(56,'Benek','Akdeniz','1948-03-26','Kadın','(214)775 0531','90751 Eraslan Shoals\nGürelcemstad, DC 13337','sayrak22','_(6e^ZiW)!'),(57,'Muktedir','Demirel','1984-05-29','Erkek','+90(253)306-1930x9647','25112 Kapagan Square Apt. 609\nHubanmouth, AL 99498','karlukhandurmus','E5^%ZzU_+s'),(58,'Faize','Gülen','1986-08-24','Erkek','05699685672','561 Öngen Rest\nGülville, MH 28064','erincer22','^iTMf1Vk!k'),(59,'Güleğen','Yılmaz','1941-11-04','Kadın','0635 955 30 20','87401 Seracettin Roads\nGünarhaven, KY 97124','teberergul','542@UKmvE#'),(60,'Gülcegün','Çamurcuoğlu','1984-07-01','Kadın','402 3 713','06097 Turcein Spur\nSouth Divanberg, WY 19364','sensoybaytal','@wfD6(Ka)o');
/*!40000 ALTER TABLE `hastalar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `randevular`
--

DROP TABLE IF EXISTS `randevular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `randevular` (
  `RandevuID` int NOT NULL AUTO_INCREMENT,
  `RandevuTarihi` date DEFAULT NULL,
  `RandevuSaati` time DEFAULT NULL,
  `HastaID` int DEFAULT NULL,
  `DoktorID` int DEFAULT NULL,
  PRIMARY KEY (`RandevuID`),
  KEY `HastaID` (`HastaID`),
  KEY `DoktorID` (`DoktorID`),
  CONSTRAINT `randevular_ibfk_1` FOREIGN KEY (`HastaID`) REFERENCES `hastalar` (`HastaID`),
  CONSTRAINT `randevular_ibfk_2` FOREIGN KEY (`DoktorID`) REFERENCES `doktorlar` (`DoktorID`)
) ENGINE=InnoDB AUTO_INCREMENT=2005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `randevular`
--

LOCK TABLES `randevular` WRITE;
/*!40000 ALTER TABLE `randevular` DISABLE KEYS */;
INSERT INTO `randevular` VALUES (1,'2024-06-12','10:00:00',13,20),(2,'2024-05-30','14:00:00',11,18),(3,'2024-06-07','08:00:00',56,6),(4,'2024-05-28','18:00:00',41,17),(5,'2024-05-22','09:00:00',57,18),(6,'2024-06-13','18:00:00',60,18),(7,'2024-06-17','15:00:00',3,17),(8,'2024-06-07','16:00:00',40,14),(9,'2024-06-17','18:00:00',42,5),(10,'2024-05-31','09:00:00',41,11),(11,'2024-05-22','17:00:00',6,18),(12,'2024-05-30','18:00:00',7,9),(13,'2024-05-26','12:00:00',50,16),(14,'2024-05-27','14:00:00',52,17),(15,'2024-05-23','15:00:00',18,14),(16,'2024-05-19','10:00:00',10,17),(17,'2024-06-09','10:00:00',9,4),(18,'2024-06-01','14:00:00',41,3),(19,'2024-05-23','12:00:00',18,8),(20,'2024-05-29','18:00:00',38,4),(21,'2024-06-15','09:00:00',37,15),(22,'2024-05-25','13:00:00',60,8),(23,'2024-05-19','09:00:00',41,10),(24,'2024-05-26','15:00:00',54,4),(25,'2024-05-20','08:00:00',44,9),(26,'2024-05-28','10:00:00',1,17),(27,'2024-05-26','11:00:00',48,8),(28,'2024-05-24','18:00:00',44,12),(29,'2024-05-25','11:00:00',20,4),(30,'2024-06-05','15:00:00',18,20);
/*!40000 ALTER TABLE `randevular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tibbiraporlar`
--

DROP TABLE IF EXISTS `tibbiraporlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tibbiraporlar` (
  `RaporID` int NOT NULL AUTO_INCREMENT,
  `RaporTarihi` date DEFAULT NULL,
  `RaporIcerigi` text,
  `HastaID` int DEFAULT NULL,
  `DoktorID` int DEFAULT NULL,
  `ResimURL` varchar(255) DEFAULT NULL,
  `JsonRapor` json DEFAULT NULL,
  PRIMARY KEY (`RaporID`),
  KEY `HastaID` (`HastaID`),
  KEY `DoktorID` (`DoktorID`),
  CONSTRAINT `tibbiraporlar_ibfk_1` FOREIGN KEY (`HastaID`) REFERENCES `hastalar` (`HastaID`),
  CONSTRAINT `tibbiraporlar_ibfk_2` FOREIGN KEY (`DoktorID`) REFERENCES `doktorlar` (`DoktorID`)
) ENGINE=InnoDB AUTO_INCREMENT=33334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tibbiraporlar`
--

LOCK TABLES `tibbiraporlar` WRITE;
/*!40000 ALTER TABLE `tibbiraporlar` DISABLE KEYS */;
INSERT INTO `tibbiraporlar` VALUES (1,'2024-05-19','Hastaya 6 gün dinlenme verilmiştir',1,6,'https://akar.tr/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Parol\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(2,'2024-05-19','Hastaya 3 gün dinlenme verilmiştir',2,12,'https://www.tav.tr/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Baş ağrısı\", \"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Parol\", \"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(3,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',3,18,'http://assan.net/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(4,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',4,7,'https://ipragaz.com/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Baş ağrısı\", \"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(5,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',5,3,'http://hayrioglu.com/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(6,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',6,9,'http://www.soylu.com/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Mide bulantısı\", \"Ateş\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(7,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',7,2,'http://sakarya.org/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Ateş\", \"Mide bulantısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(8,'2024-05-19','Hastaya 10 gün dinlenme verilmiştir',8,19,'https://www.akca.com/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Boğaz ağrısı\", \"Baş ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Parol\", \"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(9,'2024-05-19','Hastaya 3 gün dinlenme verilmiştir',9,2,'https://www.selcuk.org/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Astım\"}'),(10,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',10,11,'http://www.guclu.com/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Ateş\", \"Baş ağrısı\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(11,'2024-05-19','Hastaya 9 gün dinlenme verilmiştir',11,6,'https://www.vestel.tr/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Aspirin\", \"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(12,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',12,2,'https://zorlu.tr/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Vitamin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(13,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',13,16,'http://www.akcay.net/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Vitamin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(14,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',14,16,'http://ergul.com/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Ateş\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(15,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',15,2,'https://www.bilir.tr/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Ateş\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(16,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',16,18,'https://tevetoglu.tr/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(17,'2024-05-19','Hastaya 10 gün dinlenme verilmiştir',17,3,'https://gul.tr/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Ateş\", \"Boğaz ağrısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Parol\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(18,'2024-05-19','Hastaya 9 gün dinlenme verilmiştir',18,15,'https://durmus.net/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Boğaz ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(19,'2024-05-19','Hastaya 4 gün dinlenme verilmiştir',19,3,'https://www.corlu.tr/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Ateş\", \"Boğaz ağrısı\", \"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(20,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',20,16,'https://www.akdeniz.com/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Vitamin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(21,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',21,7,'https://mapa.tr/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(22,'2024-05-19','Hastaya 10 gün dinlenme verilmiştir',22,18,'http://iskenderun.tr/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Ateş\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(23,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',23,6,'https://guclu.net/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Mide bulantısı\", \"Ateş\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(24,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',24,5,'http://er-bakir.com/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Mide bulantısı\", \"Boğaz ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(25,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',25,7,'https://safak.net/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Mide bulantısı\", \"Boğaz ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(26,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',26,12,'https://www.arsoy.org/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Ateş\", \"Baş ağrısı\", \"Mide bulantısı\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(27,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',27,6,'https://sama.net/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Parol\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(28,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',28,11,'https://www.koton.tr/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Ateş\", \"Mide bulantısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(29,'2024-05-19','Hastaya 3 gün dinlenme verilmiştir',29,11,'http://petkim.net/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Mide bulantısı\", \"Baş ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Aspirin\", \"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(30,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',30,18,'https://sezgin.net/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(31,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',31,6,'https://arslan.org/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(32,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',32,7,'http://hancer.net/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Boğaz ağrısı\", \"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(33,'2024-05-19','Hastaya 4 gün dinlenme verilmiştir',33,12,'http://www.ford.com/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Baş ağrısı\", \"Boğaz ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(34,'2024-05-19','Hastaya 3 gün dinlenme verilmiştir',34,20,'https://www.turk.org/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Ateş\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(35,'2024-05-19','Hastaya 5 gün dinlenme verilmiştir',35,18,'https://www.bizim.org/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Mide bulantısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Astım\"}'),(36,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',36,19,'http://akcay.com/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Parol\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(37,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',37,9,'http://www.teknosa.tr/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Parol\", \"Aspirin\", \"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(38,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',38,2,'https://yorulmaz.org/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(39,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',39,11,'http://www.bizim.com/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Boğaz ağrısı\", \"Baş ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Aspirin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(40,'2024-05-19','Hastaya 9 gün dinlenme verilmiştir',40,19,'http://www.inonu.org/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(41,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',41,17,'https://demir.com/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Baş ağrısı\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(42,'2024-05-19','Hastaya 3 gün dinlenme verilmiştir',42,11,'http://yorulmaz.org/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Antibiyotik\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Astım\"}'),(43,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',43,7,'http://www.sezgin.tr/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(44,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',44,13,'http://www.seven.tr/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\", \"Aspirin\", \"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(45,'2024-05-19','Hastaya 10 gün dinlenme verilmiştir',45,2,'https://www.borusan.net/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Baş ağrısı\", \"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(46,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',46,1,'https://www.ulker.com/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Baş ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Astım\"}'),(47,'2024-05-19','Hastaya 10 gün dinlenme verilmiştir',47,8,'https://www.akca.tr/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Baş ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Vitamin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(48,'2024-05-19','Hastaya 6 gün dinlenme verilmiştir',48,4,'https://www.tiryaki.net/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(49,'2024-05-19','Hastaya 6 gün dinlenme verilmiştir',49,17,'http://sama.tr/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(50,'2024-05-19','Hastaya 9 gün dinlenme verilmiştir',50,10,'http://aselsan.com/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Astım\"}'),(51,'2024-05-19','Hastaya 5 gün dinlenme verilmiştir',51,16,'https://limak.tr/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(52,'2024-05-19','Hastaya 5 gün dinlenme verilmiştir',52,15,'https://yuksel.com/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Antibiyotik\", \"Aspirin\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(53,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',53,10,'http://www.akdeniz.com/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Mide bulantısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Aspirin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Astım\"}'),(54,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',54,6,'http://www.koton.tr/','{\"muayne_sonucu\": \"Yuksek Tansiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Ateş\", \"Mide bulantısı\", \"Boğaz ağrısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Antibiyotik\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}'),(55,'2024-05-19','Hastaya 5 gün dinlenme verilmiştir',55,17,'http://www.ergul.com/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Yüksek\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Ateş\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Antibiyotik\", \"Parol\"], \"hastanin_sahip_oldugu_hastalik\": \"Soğuk algınlığı\"}'),(56,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',56,17,'http://tupras.org/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Boğaz ağrısı\", \"Ateş\", \"Mide bulantısı\"], \"hastaya_verilen_ilaclar\": [\"Parol\", \"Vitamin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(57,'2024-05-19','Hastaya 7 gün dinlenme verilmiştir',57,2,'http://www.hancer.tr/','{\"muayne_sonucu\": \"Hafif enfeksiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Ateş\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Aspirin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Grip\"}'),(58,'2024-05-19','Hastaya 1 gün dinlenme verilmiştir',58,6,'http://www.sensoy.org/','{\"muayne_sonucu\": \"Ağır enfeksiyon\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Normal\", \"hastanin_sikayetleri\": [\"Mide bulantısı\", \"Baş ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(59,'2024-05-19','Hastaya 2 gün dinlenme verilmiştir',59,14,'https://akcay.com/','{\"muayne_sonucu\": \"Yuksek Kan Sekeri\", \"tedavi_sureci\": \"1 Ay\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Boğaz ağrısı\", \"Ateş\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\"], \"hastanin_sahip_oldugu_hastalik\": \"Migren\"}'),(60,'2024-05-19','Hastaya 8 gün dinlenme verilmiştir',60,15,'http://www.demirel.com/','{\"muayne_sonucu\": \"Normal\", \"tedavi_sureci\": \"2 Hafta\", \"tibbi_oneriler\": \"Bol su içmek, dinlenmek\", \"kan_tahlil_sonucu\": \"Düşük\", \"hastanin_sikayetleri\": [\"Baş ağrısı\", \"Boğaz ağrısı\"], \"hastaya_verilen_ilaclar\": [\"Vitamin\", \"Antibiyotik\"], \"hastanin_sahip_oldugu_hastalik\": \"Şeker Hastalığı\"}');
/*!40000 ALTER TABLE `tibbiraporlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonetici`
--

DROP TABLE IF EXISTS `yonetici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonetici` (
  `YoneticiID` int NOT NULL AUTO_INCREMENT,
  `Ad` varchar(50) DEFAULT NULL,
  `Soyad` varchar(50) DEFAULT NULL,
  `yoneticiun` varchar(45) DEFAULT NULL,
  `yoneticisifre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`YoneticiID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonetici`
--

LOCK TABLES `yonetici` WRITE;
/*!40000 ALTER TABLE `yonetici` DISABLE KEYS */;
INSERT INTO `yonetici` VALUES (1,'omer','san','adminx','aaa'),(2,'berat','olmez','adminy','aaa'),(3,'lo','q','q','q'),(15,'a','q','w','w'),(16,'ww','ww','ww','ww');
/*!40000 ALTER TABLE `yonetici` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-19 19:35:10
