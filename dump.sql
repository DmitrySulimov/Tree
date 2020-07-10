CREATE DATABASE  IF NOT EXISTS `new_schema` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `new_schema`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: new_schema
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `idbranches` int NOT NULL AUTO_INCREMENT,
  `name` tinytext NOT NULL,
  `nesting_level` int DEFAULT NULL,
  `parent_name` tinytext,
  PRIMARY KEY (`idbranches`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'$RECYCLE.BIN',0,'D:'),(2,'.vs',0,'D:'),(3,'Admin Panel',0,'D:'),(4,'Backup_and_restore_with_bats_for_Serge',0,'D:'),(5,'Bandicam 3.0.3.1025 RePack (& Portable) by KpoJIuK.rar',0,'D:'),(6,'Bow connecter',0,'D:'),(7,'brackcapital.grafental-v2-bauabschnitt-8',0,'D:'),(8,'convertcsv.xlsx',0,'D:'),(9,'D2',0,'D:'),(10,'Dima work',0,'D:'),(11,'Firebase_application',0,'D:'),(12,'Firebase_Server_and_Client',0,'D:'),(13,'firecast_test',0,'D:'),(14,'firecast_test.rar',0,'D:'),(15,'GameSprites_old',0,'D:'),(16,'grafental_2018',0,'D:'),(17,'grafental_2018.zip',0,'D:'),(18,'HELPER',0,'D:'),(19,'Oculus bat for school project',0,'D:'),(20,'offtimer.exe',0,'D:'),(21,'OFFTimer.ini',0,'D:'),(22,'Photoshop',0,'D:'),(23,'QuestKioskTest',0,'D:'),(24,'RDP',0,'D:'),(25,'RDP_server',0,'D:'),(26,'RDP_test',0,'D:'),(27,'Room_id.json',0,'D:'),(28,'SchoolKaseVR-master',0,'D:'),(29,'steamvr.vrsettings',0,'D:'),(30,'Study',0,'D:'),(31,'System Volume Information',0,'D:'),(32,'TeamViewer_Setup.exe',0,'D:'),(33,'testProj',0,'D:'),(34,'TestRDP',0,'D:'),(35,'Unicorn',0,'D:'),(36,'Unity 17.4.3',0,'D:'),(37,'Unity 18.2.20',0,'D:'),(38,'Unity 18.3.6',0,'D:'),(39,'Windows 10 x86-x64 Ru 1903 + office',0,'D:'),(40,'Windows 10 x86-x64 Ru 1903 + office.rar',0,'D:'),(41,'WindowsFormsApp1',0,'D:'),(42,'WinPE10_8_Sergei_Strelec_x86_x64_2020.02.19_Russian.iso',0,'D:'),(43,'~$kolenko Igor.docx',0,'D:'),(44,'Дима',0,'D:'),(45,'Загрузки',0,'D:'),(46,'.env',1,'grafental_2018'),(47,'.env.example',1,'grafental_2018'),(48,'.git',1,'grafental_2018'),(49,'.gitattributes',1,'grafental_2018'),(50,'.gitignore',1,'grafental_2018'),(51,'app',1,'grafental_2018'),(52,'artisan',1,'grafental_2018'),(53,'bootstrap',1,'grafental_2018'),(54,'composer.json',1,'grafental_2018'),(55,'composer.lock',1,'grafental_2018'),(56,'composer.phar',1,'grafental_2018'),(57,'config',1,'grafental_2018'),(58,'database',1,'grafental_2018'),(59,'node_modules',1,'grafental_2018'),(60,'package-lock.json',1,'grafental_2018'),(61,'package.json',1,'grafental_2018'),(62,'public_',1,'grafental_2018'),(63,'README.md',1,'grafental_2018'),(64,'resources',1,'grafental_2018'),(65,'routes',1,'grafental_2018'),(66,'server.php',1,'grafental_2018'),(67,'storage',1,'grafental_2018'),(68,'tests',1,'grafental_2018'),(69,'vendor',1,'grafental_2018'),(70,'webpack.mix.js',1,'grafental_2018'),(71,'test',2,'text'),(72,'htc касса.txt',1,'Dima work'),(73,'Invoices',1,'Dima work'),(74,'Mail_passwords.kdbx',1,'Dima work'),(75,'scripts & registre',1,'Dima work'),(76,'seventh_dump_Nata.sql',1,'Dima work'),(77,'startGames_old.bat',1,'Dima work'),(78,'startGames_old_2.0.bat',1,'Dima work'),(79,'Sulimov_Dmitry_passwords.kdbx',1,'Dima work'),(80,'Uplay аутентификація.jpg',1,'Dima work'),(81,'VR_Passwords.kdbx',1,'Dima work'),(82,'.vscode',0,'.'),(83,'app.js',0,'.'),(84,'front.js',0,'.'),(85,'index.html',0,'.'),(86,'node_modules',0,'.'),(87,'package-lock.json',0,'.'),(88,'pathHandler.js',0,'.'),(89,'New Unity Project',1,'Study'),(90,'study U3d',1,'Study'),(91,'UnityBasic',1,'Study'),(92,'UnityEssential',1,'Study'),(93,'UnityStart',1,'Study'),(94,'web',1,'Study'),(95,'Flexbox les1',2,'web'),(96,'homeworks',2,'web'),(97,'HTML5',2,'web'),(98,'lesson 1 position',2,'web'),(99,'lesson 2 float',2,'web'),(100,'lesson 3 псеводо классы',2,'web'),(101,'Material',2,'web'),(102,'mobile',2,'web'),(103,'Practice 3',2,'web'),(104,'Practice 4',2,'web'),(105,'Practice 5',2,'web'),(106,'Practise',2,'web'),(107,'Practise 2',2,'web'),(108,'Trees',2,'web'),(109,'.vscode',3,'Trees'),(110,'app.js',3,'Trees'),(111,'front.js',3,'Trees'),(112,'index.html',3,'Trees'),(113,'node_modules',3,'Trees'),(114,'package-lock.json',3,'Trees'),(115,'pathHandler.js',3,'Trees'),(116,'$Recycle.Bin',0,'C:'),(117,'$WINDOWS.~BT',0,'C:'),(118,'$Windows.~WS',0,'C:'),(119,'adb',0,'C:'),(120,'Config.Msi',0,'C:'),(121,'cygwin64',0,'C:'),(122,'Documents and Settings',0,'C:'),(123,'hiberfil.sys',0,'C:'),(124,'Intel',0,'C:'),(125,'MSOCache',0,'C:'),(126,'pagefile.sys',0,'C:'),(127,'PerfLogs',0,'C:'),(128,'Program Files',0,'C:'),(129,'Program Files (x86)',0,'C:'),(130,'ProgramData',0,'C:'),(131,'Recovery',0,'C:'),(132,'steamvr1.vrsettings',0,'C:'),(133,'swapfile.sys',0,'C:'),(134,'System Volume Information',0,'C:'),(135,'Users',0,'C:'),(136,'Windows',0,'C:'),(137,'WMSDK',0,'C:'),(138,'_acestream_cache_',0,'C:'),(139,'Adobe',1,'Program Files (x86)'),(140,'Amolto Call Recorder for Skype',1,'Program Files (x86)'),(141,'Application Verifier',1,'Program Files (x86)'),(142,'AviSynth',1,'Program Files (x86)'),(143,'Bandicam',1,'Program Files (x86)'),(144,'Common Files',1,'Program Files (x86)'),(145,'ComposerSetup',1,'Program Files (x86)'),(146,'desktop.ini',1,'Program Files (x86)'),(147,'Entity Framework Tools',1,'Program Files (x86)'),(148,'FinalWire',1,'Program Files (x86)'),(149,'Google',1,'Program Files (x86)'),(150,'GtkSharp',1,'Program Files (x86)'),(151,'IIS Express',1,'Program Files (x86)'),(152,'InstallShield Installation Information',1,'Program Files (x86)'),(153,'Intel',1,'Program Files (x86)'),(154,'Internet Explorer',1,'Program Files (x86)'),(155,'KeePass Password Safe 2',1,'Program Files (x86)'),(156,'Microsoft Analysis Services',1,'Program Files (x86)'),(157,'Microsoft Help Viewer',1,'Program Files (x86)'),(158,'Microsoft Office',1,'Program Files (x86)'),(159,'Microsoft SDKs',1,'Program Files (x86)'),(160,'Microsoft SQL Server',1,'Program Files (x86)'),(161,'Microsoft Visual Studio',1,'Program Files (x86)'),(162,'Microsoft Visual Studio Tools for Unity',1,'Program Files (x86)'),(163,'Microsoft Web Tools',1,'Program Files (x86)'),(164,'Microsoft.NET',1,'Program Files (x86)'),(165,'Mozilla Thunderbird',1,'Program Files (x86)'),(166,'MSBuild',1,'Program Files (x86)'),(167,'MySQL',1,'Program Files (x86)'),(168,'NuGet',1,'Program Files (x86)'),(169,'NVIDIA Corporation',1,'Program Files (x86)'),(170,'PapDesigner',1,'Program Files (x86)'),(171,'Reference Assemblies',1,'Program Files (x86)'),(172,'SopCast',1,'Program Files (x86)'),(173,'Steam',1,'Program Files (x86)'),(174,'TeamViewer',1,'Program Files (x86)'),(175,'TunnelBear',1,'Program Files (x86)'),(176,'UltraISO',1,'Program Files (x86)'),(177,'Universal Media Server',1,'Program Files (x86)'),(178,'VulkanRT',1,'Program Files (x86)'),(179,'WiFi Channel Scanner',1,'Program Files (x86)'),(180,'Windows Defender',1,'Program Files (x86)'),(181,'Windows Kits',1,'Program Files (x86)'),(182,'Windows Mail',1,'Program Files (x86)'),(183,'Windows Media Player',1,'Program Files (x86)'),(184,'Windows Multimedia Platform',1,'Program Files (x86)'),(185,'Windows NT',1,'Program Files (x86)'),(186,'Windows Photo Viewer',1,'Program Files (x86)'),(187,'Windows Portable Devices',1,'Program Files (x86)'),(188,'Windows Sidebar',1,'Program Files (x86)'),(189,'WindowsPowerShell',1,'Program Files (x86)'),(190,'2.12',2,'GtkSharp'),(191,'updateinfo',2,'GtkSharp'),(192,'bin',3,'2.12'),(193,'etc',3,'2.12'),(194,'lib',3,'2.12'),(195,'share',3,'2.12'),(196,'icons',4,'share'),(197,'locale',4,'share'),(198,'themes',4,'share'),(199,'Default',5,'themes'),(200,'MS-Windows',5,'themes'),(201,'gtkrc',6,'Default');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-10 23:05:37
