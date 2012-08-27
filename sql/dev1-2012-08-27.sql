-- MySQL dump 10.13  Distrib 5.5.22, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dev1
-- ------------------------------------------------------
-- Server version	5.5.22-0ubuntu1

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
-- Table structure for table `admin_tools`
--

DROP TABLE IF EXISTS `admin_tools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_tools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_tools`
--

LOCK TABLES `admin_tools` WRITE;
/*!40000 ALTER TABLE `admin_tools` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_tools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_contenttype`
--

DROP TABLE IF EXISTS `auth_contenttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_contenttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_contenttype_f53ed95e` (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_contenttype`
--

LOCK TABLES `auth_contenttype` WRITE;
/*!40000 ALTER TABLE `auth_contenttype` DISABLE KEYS */;
INSERT INTO `auth_contenttype` VALUES (1,'permission','','',1),(2,'group','icons/group.png','',1),(3,'user','icons/user.png','',1),(4,'property','icons/property.png','',2),(5,'log','icons/logging.png','',3),(6,'citizen','icons/citizen.png','',4),(9,'tax','icons/tax.png','',5);
/*!40000 ALTER TABLE `auth_contenttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `i_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'testgroup','active'),(2,'dev','active');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,17),(2,1,1),(3,2,1),(4,2,2),(5,2,3),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,2,14),(17,2,15),(18,2,16),(19,2,17),(20,2,18),(21,2,19),(22,2,20),(23,2,21),(24,2,22),(25,2,23),(26,2,24),(27,2,25),(28,2,26),(29,2,27),(30,2,28),(31,2,29),(32,2,30),(33,2,31),(34,2,32),(35,2,36),(36,2,35),(37,2,34),(38,2,33);
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_module`
--

DROP TABLE IF EXISTS `auth_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_module`
--

LOCK TABLES `auth_module` WRITE;
/*!40000 ALTER TABLE `auth_module` DISABLE KEYS */;
INSERT INTO `auth_module` VALUES (1,'auth','',''),(2,'property','',''),(3,'log','',''),(4,'citizen','',''),(5,'tax','','');
/*!40000 ALTER TABLE `auth_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `codename` varchar(50) NOT NULL,
  `contenttype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_permission_a184c428` (`contenttype_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can view citizen','view_citizen',6),(2,'Can add citizen','add_citizen',6),(3,'Can change citizen','change_citizen',6),(4,'Can delete citizen','delete_citizen',6),(5,'Can view group','view_group',2),(6,'Can add group','add_group',2),(7,'Can change group','change_group',2),(8,'Can delete group','delete_group',2),(9,'Can view log','view_log',5),(10,'Can add log','add_log',5),(11,'Can change log','change_log',5),(12,'Can delete log','delete_log',5),(13,'Can view permission','view_permission',1),(14,'Can add permission','add_permission',1),(15,'Can change permission','change_permission',1),(16,'Can delete permission','delete_permission',1),(17,'Can view property','view_property',4),(18,'Can add property','add_property',4),(19,'Can change property','change_property',4),(20,'Can delete property','delete_property',4),(21,'Can view user','view_user',3),(22,'Can add user','add_user',3),(23,'Can change user','change_user',3),(24,'Can delete user','delete_user',3),(36,'Can delete tax','delete_tax',9),(35,'Can change tax','change_tax',9),(34,'Can add tax','add_tax',9),(33,'Can view tax','view_tax',9);
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `contactnumber` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `superuser` tinyint(1) NOT NULL,
  `lastlogin` datetime NOT NULL,
  `datejoined` datetime NOT NULL,
  `i_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'Kongluan Lin','Kongluan','Lin','','linkongluan@gmail.com','642841ac5168288de710c090272fdcba',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(9,'PetersWang','Peters','Wang','','p@wang.com','83878c91171338902e0fe0fb97a8c47a',1,0,'2012-08-24 06:59:35','2012-08-24 06:59:35','active'),(3,'Shane Dale','Shane','Dale','','shane@propertymode.com.au','1e113fa10ad2e32cac8043b85e99a88d',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(4,'Sandra Macnaughton','Sandra','Macnaughton','','sandra@propertymode.com.au','a921e09118e627ef733a8cc7f3ce835c',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(5,'Justin Hopley','justin','Hopley','','justin@propertymode.com.au','09d914bbbd32fa8145d374c2e82ef7b5',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(6,'peterpeter','peter','peter','','p@p.com','83878c91171338902e0fe0fb97a8c47a',1,1,'2012-08-21 06:20:21','2012-08-21 06:20:21','active'),(7,'adriandinc','adrian','dinc','','adrian@surrondpix.com.au','f22571ad0aacace295ee3f8940aa7ac5',1,1,'2012-08-23 05:43:38','2012-08-23 05:43:38','active');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (4,9,2),(3,7,2);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_permissions`
--

LOCK TABLES `auth_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citizen_citizen`
--

DROP TABLE IF EXISTS `citizen_citizen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citizen_citizen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `citizenid` int(11) NOT NULL,
  `i_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `citizenid` (`citizenid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_citizen`
--

LOCK TABLES `citizen_citizen` WRITE;
/*!40000 ALTER TABLE `citizen_citizen` DISABLE KEYS */;
INSERT INTO `citizen_citizen` VALUES (1,'Mark','Tong',12345,'active'),(2,'Paul','Kennardy',510134,'active');
/*!40000 ALTER TABLE `citizen_citizen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('b41341d2bda060bea4b11ee95a598a92','OGU3M2RjOGNmNzNmOGVhMGZlY2QzNGQ0MTczMmE5YWRkMzkwOTMyOTqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWAwAAABLb25nbHVhbiBMaW5VCXN1cGVydXNl\ncnEJiFUJZmlyc3RuYW1lcQpYCAAAAEtvbmdsdWFuVQhsYXN0bmFtZXELWAMAAABMaW5VCGlfc3Rh\ndHVzcQxYBgAAAGFjdGl2ZVUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3Rh\ndGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1YlUKZGF0ZWpvaW5lZHEU\nY2RhdGV0aW1lCmRhdGV0aW1lCnEVVQoH3AgVBDsRAAAAY3B5dHoKX1VUQwpxFilScReGUnEYVQVl\nbWFpbHEZWBUAAABsaW5rb25nbHVhbkBnbWFpbC5jb21VDWNvbnRhY3RudW1iZXJxGlgAAAAAVQls\nYXN0bG9naW5xG2gVVQoH3AgVBDsRAAAAaBeGUnEcVQZhY3RpdmVxHYhVCHBhc3N3b3JkcR5YIAAA\nADY0Mjg0MWFjNTE2ODI4OGRlNzEwYzA5MDI3MmZkY2JhVQJpZHEfigEBdWJzLg==\n','2012-09-09 23:06:59'),('e32b211419a6c321e29ebe8e92c3775d','ZDM3NDVhOGEwOGViMWZiN2IzYzAzNjVhODBkYmNhNGQ1ZjliOGI5MzqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWA0AAABKdXN0aW4gSG9wbGV5VQlzdXBlcnVz\nZXJxCYhVCWZpcnN0bmFtZXEKWAYAAABqdXN0aW5VCGxhc3RuYW1lcQtYBgAAAEhvcGxleVUIaV9z\ndGF0dXNxDFgGAAAAYWN0aXZlVQZfc3RhdGVxDWNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxT\ndGF0ZQpxDimBcQ99cRAoVQZhZGRpbmdxEYlVAmRicRJVB2RlZmF1bHRxE3ViVQpkYXRlam9pbmVk\ncRRjZGF0ZXRpbWUKZGF0ZXRpbWUKcRVVCgfcCBUEOxEAAABjcHl0egpfVVRDCnEWKVJxF4ZScRhV\nBWVtYWlscRlYGgAAAGp1c3RpbkBwcm9wZXJ0eW1vZGUuY29tLmF1VQ1jb250YWN0bnVtYmVycRpY\nAAAAAFUJbGFzdGxvZ2lucRtoFVUKB9wIFQQ7EQAAAGgXhlJxHFUGYWN0aXZlcR2IVQhwYXNzd29y\nZHEeWCAAAAAwOWQ5MTRiYmJkMzJmYTgxNDVkMzc0YzJlODJlZjdiNVUCaWRxH4oBBXVicy4=\n','2012-09-06 05:38:49'),('63100f433db9ea8b046061bd8c84b20e','ZWM1ZDFmYWNlNWNmOGExMWI4YjVmYjM1NjRlMjYzMjdjMTExYzlmNTqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWAoAAABwZXRlcnBldGVyVQlzdXBlcnVzZXJx\nCYhVCWZpcnN0bmFtZXEKWAUAAABwZXRlclUIbGFzdG5hbWVxC1gFAAAAcGV0ZXJVCGlfc3RhdHVz\ncQxYBgAAAGFjdGl2ZVUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUK\ncQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1YlUKZGF0ZWpvaW5lZHEUY2Rh\ndGV0aW1lCmRhdGV0aW1lCnEVVQoH3AgVBhQVAAAAY3B5dHoKX1VUQwpxFilScReGUnEYVQVlbWFp\nbHEZWAcAAABwQHAuY29tVQ1jb250YWN0bnVtYmVycRpYAAAAAFUJbGFzdGxvZ2lucRtoFVUKB9wI\nFQYUFQAAAGgXhlJxHFUGYWN0aXZlcR2IVQhwYXNzd29yZHEeWCAAAAA4Mzg3OGM5MTE3MTMzODkw\nMmUwZmUwZmI5N2E4YzQ3YVUCaWRxH4oBBnVicy4=\n','2012-09-04 06:22:56'),('3b4788ffdb40b2c0768ac8812a101ce1','OGVkNTA0Y2E1OWVjNDNmZTFhNDM4YWUxZWY2MDFmMTFkMGQyMTc2MjqAAn1xAS4=\n','2012-09-04 07:00:23'),('9c4309e5401a746ffde412be5f32719b','OGU3M2RjOGNmNzNmOGVhMGZlY2QzNGQ0MTczMmE5YWRkMzkwOTMyOTqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWAwAAABLb25nbHVhbiBMaW5VCXN1cGVydXNl\ncnEJiFUJZmlyc3RuYW1lcQpYCAAAAEtvbmdsdWFuVQhsYXN0bmFtZXELWAMAAABMaW5VCGlfc3Rh\ndHVzcQxYBgAAAGFjdGl2ZVUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3Rh\ndGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1YlUKZGF0ZWpvaW5lZHEU\nY2RhdGV0aW1lCmRhdGV0aW1lCnEVVQoH3AgVBDsRAAAAY3B5dHoKX1VUQwpxFilScReGUnEYVQVl\nbWFpbHEZWBUAAABsaW5rb25nbHVhbkBnbWFpbC5jb21VDWNvbnRhY3RudW1iZXJxGlgAAAAAVQls\nYXN0bG9naW5xG2gVVQoH3AgVBDsRAAAAaBeGUnEcVQZhY3RpdmVxHYhVCHBhc3N3b3JkcR5YIAAA\nADY0Mjg0MWFjNTE2ODI4OGRlNzEwYzA5MDI3MmZkY2JhVQJpZHEfigEBdWJzLg==\n','2012-09-06 01:44:45');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_assignedvalue`
--

DROP TABLE IF EXISTS `jtax_assignedvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_assignedvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlotId` int(11) NOT NULL,
  `AssignedValueAmount` int(11) NOT NULL,
  `AssignedValueDateTime` datetime NOT NULL,
  `AssignedValueAmountCurrencey` varchar(4) NOT NULL,
  `AssignedValueStaffId` int(11) NOT NULL,
  `AssignedValueCitizenId` int(11) NOT NULL,
  `AssignedValueValidUntil` datetime NOT NULL,
  `AssignedValueOnHold` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_assignedvalue`
--

LOCK TABLES `jtax_assignedvalue` WRITE;
/*!40000 ALTER TABLE `jtax_assignedvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_assignedvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_declaredvalue`
--

DROP TABLE IF EXISTS `jtax_declaredvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_declaredvalue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlotId` int(11) NOT NULL,
  `DeclairedValueCitizenId` int(11) NOT NULL,
  `DeclairedValueAmount` int(11) NOT NULL,
  `DeclairedValueAmountCurrencey` varchar(4) NOT NULL,
  `DeclairedValueDateTime` datetime NOT NULL,
  `DeclairedValueStaffId` int(11) NOT NULL,
  `DeclairedValueAccepted` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_declaredvalue`
--

LOCK TABLES `jtax_declaredvalue` WRITE;
/*!40000 ALTER TABLE `jtax_declaredvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_declaredvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_declaredvaluemedia`
--

DROP TABLE IF EXISTS `jtax_declaredvaluemedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_declaredvaluemedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DeclaredValueId_id` int(11) NOT NULL,
  `DeclaredValueMediaType` varchar(4) NOT NULL,
  `DeclaredValueMediaFile` varchar(100) NOT NULL,
  `DelcaredValueMediaStaffId` int(11) NOT NULL,
  `DeclaredValueMediaDateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jtax_declaredvaluemedia_7a215869` (`DeclaredValueId_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_declaredvaluemedia`
--

LOCK TABLES `jtax_declaredvaluemedia` WRITE;
/*!40000 ALTER TABLE `jtax_declaredvaluemedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_declaredvaluemedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_declaredvaluenotes`
--

DROP TABLE IF EXISTS `jtax_declaredvaluenotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_declaredvaluenotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DeclaredValueId_id` int(11) NOT NULL,
  `DeclaredValueNoteStaffId` int(11) NOT NULL,
  `DeclaredValueNote` longtext NOT NULL,
  `DeclaredValueNoteDateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jtax_declaredvaluenotes_7a215869` (`DeclaredValueId_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_declaredvaluenotes`
--

LOCK TABLES `jtax_declaredvaluenotes` WRITE;
/*!40000 ALTER TABLE `jtax_declaredvaluenotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_declaredvaluenotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_landrentaltax`
--

DROP TABLE IF EXISTS `jtax_landrentaltax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_landrentaltax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlotId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_landrentaltax`
--

LOCK TABLES `jtax_landrentaltax` WRITE;
/*!40000 ALTER TABLE `jtax_landrentaltax` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_landrentaltax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_landrentaltaxmedia`
--

DROP TABLE IF EXISTS `jtax_landrentaltaxmedia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_landrentaltaxmedia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LandRentalTaxId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jtax_landrentaltaxmedia_7ac1ad2c` (`LandRentalTaxId_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_landrentaltaxmedia`
--

LOCK TABLES `jtax_landrentaltaxmedia` WRITE;
/*!40000 ALTER TABLE `jtax_landrentaltaxmedia` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_landrentaltaxmedia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_landrentaltaxnotes`
--

DROP TABLE IF EXISTS `jtax_landrentaltaxnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_landrentaltaxnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LandRentalTaxId_id` int(11) NOT NULL,
  `LandRentalTaxNoteStaffId` int(11) NOT NULL,
  `LandRentalTaxNote` longtext NOT NULL,
  `LandRentalTaxNoteDateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jtax_landrentaltaxnotes_7ac1ad2c` (`LandRentalTaxId_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_landrentaltaxnotes`
--

LOCK TABLES `jtax_landrentaltaxnotes` WRITE;
/*!40000 ALTER TABLE `jtax_landrentaltaxnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_landrentaltaxnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_rentalincometax`
--

DROP TABLE IF EXISTS `jtax_rentalincometax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_rentalincometax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PlotId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_rentalincometax`
--

LOCK TABLES `jtax_rentalincometax` WRITE;
/*!40000 ALTER TABLE `jtax_rentalincometax` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_rentalincometax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jtax_rentalincometaxnotes`
--

DROP TABLE IF EXISTS `jtax_rentalincometaxnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jtax_rentalincometaxnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rentalIncomeTaxId_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jtax_rentalincometaxnotes_9fd1f59c` (`rentalIncomeTaxId_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_rentalincometaxnotes`
--

LOCK TABLES `jtax_rentalincometaxnotes` WRITE;
/*!40000 ALTER TABLE `jtax_rentalincometaxnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jtax_rentalincometaxnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_log`
--

DROP TABLE IF EXISTS `log_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transactionid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `plotid` int(11) DEFAULT NULL,
  `tids` varchar(200) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `table` varchar(100) DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `olddata` varchar(1000) DEFAULT NULL,
  `newdata` varchar(1000) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_log`
--

LOCK TABLES `log_log` WRITE;
/*!40000 ALTER TABLE `log_log` DISABLE KEYS */;
INSERT INTO `log_log` VALUES (1,1,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-21 06:20:30','','','view User [peterpeter]'),(2,2,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-21 06:20:35','{\'username\': u\'peterpeter\', \'superuser\': False, \'groups\': [], \'firstname\': u\'peter\', \'lastname\': u\'peter\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-21 06:20:21\', \'email\': u\'p@p.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-21 06:20:21\', \'active\': True, \'password\': u\'020e36ec80045462f13c33d190eb7b6f\', \'id\': 6L, \'permissions\': []}','{\'username\': u\'peterpeter\', \'superuser\': False, \'groups\': [], \'firstname\': u\'peter\', \'lastname\': u\'peter\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-21 06:20:21\', \'email\': u\'p@p.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-21 06:20:21\', \'active\': True, \'password\': \'83878c91171338902e0fe0fb97a8c47a\', \'id\': 6L, \'permissions\': []}',' change password from \'020e36ec80045462f13c33d190eb7b6f\' to \'83878c91171338902e0fe0fb97a8c47a\' on User [peterpeter]'),(3,3,5,NULL,NULL,'justin Hopley','auth_user','2012-08-23 05:43:46','','','view User [adriandinc]'),(4,4,5,NULL,NULL,'justin Hopley','auth_user','2012-08-23 05:43:54','{\'username\': u\'adriandinc\', \'superuser\': False, \'groups\': [2L], \'firstname\': u\'adrian\', \'lastname\': u\'dinc\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-23 05:43:38\', \'email\': u\'adrian@surrondpix.com.au\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-23 05:43:38\', \'active\': True, \'password\': u\'66e5780a22508bad65b615ca6c4d709d\', \'id\': 7L, \'permissions\': []}','{\'username\': u\'adriandinc\', \'superuser\': True, \'groups\': [2L], \'firstname\': u\'adrian\', \'lastname\': u\'dinc\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-23 05:43:38\', \'email\': u\'adrian@surrondpix.com.au\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-23 05:43:38\', \'active\': True, \'password\': \'f22571ad0aacace295ee3f8940aa7ac5\', \'id\': 7L, \'permissions\': []}',' change superuser from \'False\' to \'True\', change password from \'66e5780a22508bad65b615ca6c4d709d\' to \'f22571ad0aacace295ee3f8940aa7ac5\' on User [adriandinc]'),(5,5,1,NULL,NULL,'Kongluan Lin','property_property','2012-08-23 07:13:52','','{\'i_status\': \'active\', \'citizens\': [], \'plotid\': 8221, \'suburb\': u\'Parramatta\', \'streetno\': 152, \'boundary\': 83L, \'id\': 83L, \'streetname\': u\'Little Street\'}','add Property [152 Little Street, Parramatta]'),(6,6,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 04:46:04','','','view Group [testgroup3]'),(7,7,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 04:46:11','{\'i_status\': u\'active\', \'permissions\': [19L, 20L, 21L], \'id\': 3L, \'name\': u\'testgroup3\'}','{\'i_status\': u\'active\', \'permissions\': [19L, 20L], \'id\': 3L, \'name\': u\'testgroup3\'}',' remove permissions [\'Can view user\'] on Group [testgroup3]'),(8,8,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 04:51:33','','','view User [WongLee]'),(9,9,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 04:52:10','{\'username\': u\'WongLee\', \'superuser\': False, \'groups\': [], \'firstname\': u\'Wong\', \'lastname\': u\'Lee\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 04:50:23\', \'email\': u\'wlee@gmail.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 04:50:23\', \'active\': True, \'password\': u\'c1ba3a655c3707af46e1d22daacd7a18\', \'id\': 8L, \'permissions\': []}','{\'username\': u\'WongLee\', \'superuser\': False, \'groups\': [], \'firstname\': u\'Wong\', \'lastname\': u\'Lee\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 04:50:23\', \'email\': u\'wlee@gmail.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 04:50:23\', \'active\': True, \'password\': \'76f5d947149185d77a1fa1a114b3fb30\', \'id\': 8L, \'permissions\': []}',' change password from \'c1ba3a655c3707af46e1d22daacd7a18\' to \'76f5d947149185d77a1fa1a114b3fb30\' on User [WongLee]'),(10,10,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 04:59:01','','','view Citizen [Mark Tong]'),(11,11,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:00:28','','','view Citizen [Mark Tong]'),(12,12,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:02:36','','','view Citizen [Mark Tong]'),(13,13,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:07:29','','','view Citizen [Mark Tong]'),(14,14,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:08:55','','','view Citizen [Mark Tong]'),(15,15,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:51:59','','','view Citizen [Mark Tong]'),(16,16,1,NULL,NULL,'Kongluan Lin','property_property','2012-08-24 05:58:13','','{\'i_status\': \'active\', \'citizens\': [], \'plotid\': 5555, \'suburb\': u\'Chatswood\', \'streetno\': 230, \'boundary\': 84L, \'id\': 84L, \'streetname\': u\'Auburn Road\'}','add Property [230 Auburn Road, Chatswood]'),(17,17,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:36:17','','','delete Group [test group 4]'),(18,18,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:38:03','','','User[Kongluan Lin] delete Group [test group 3]'),(19,19,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:39:12','','','User[Kongluan Lin] add Group [test group 3]'),(20,20,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:45:09','','','User[Kongluan Lin] view Group [test group 3]'),(21,21,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:45:37','{\'i_status\': u\'active\', \'permissions\': [9L, 10L, 11L], \'id\': 6L, \'name\': u\'test group 3\'}','{\'i_status\': u\'active\', \'permissions\': [9L, 10L], \'id\': 6L, \'name\': u\'test group 3\'}','User[Kongluan Lin]  remove permissions [\'Can change log\'] on Group [test group 3]'),(22,22,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:46:25','','','User[Kongluan Lin] delete Group [test group 3]'),(23,23,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 06:58:24','','','User[Kongluan Lin] delete User [Peter Wang]'),(24,24,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 06:59:35','','','User[Kongluan Lin] add User [PeterWang]'),(25,25,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 06:59:57','','','User[Kongluan Lin] view User [PeterWang]'),(26,26,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 07:00:27','{\'username\': u\'PeterWang\', \'superuser\': False, \'groups\': [], \'firstname\': u\'Peter\', \'lastname\': u\'Wang\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 06:59:35\', \'email\': u\'p@wang.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 06:59:35\', \'active\': True, \'password\': u\'aed285a479e32849b2d2c2a99b7d93d4\', \'id\': 9L, \'permissions\': []}','{\'username\': u\'PetersWang\', \'superuser\': False, \'groups\': [2L], \'firstname\': u\'Peters\', \'lastname\': u\'Wang\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 06:59:35\', \'email\': u\'p@wang.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 06:59:35\', \'active\': True, \'password\': \'83878c91171338902e0fe0fb97a8c47a\', \'id\': 9L, \'permissions\': []}','User[Kongluan Lin]  change username from \'PeterWang\' to \'PetersWang\', change firstname from \'Peter\' to \'Peters\', associate with groups [\'dev\'], change password from \'aed285a479e32849b2d2c2a99b7d93d4\' to \'83878c91171338902e0fe0fb97a8c47a\' on User [PetersWang]'),(27,27,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 07:07:18','','','User[Kongluan Lin] add Citizen [Paul Kennardy]'),(28,28,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 07:09:38','','','User[Kongluan Lin] view Citizen [Paul Kennardy]'),(29,29,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 07:09:45','{\'lastname\': u\'Kennardy\', \'i_status\': u\'active\', \'citizenid\': 510132L, \'id\': 2L, \'firstname\': u\'Paul\'}','{\'lastname\': u\'Kennardy\', \'i_status\': u\'active\', \'citizenid\': 510134, \'id\': 2L, \'firstname\': u\'Paul\'}','User[Kongluan Lin]  change citizenid from \'510132\' to \'510134\' on Citizen [Paul Kennardy]'),(30,30,1,NULL,NULL,'Kongluan Lin','property_property','2012-08-24 07:16:04','','','User[Kongluan Lin] add Property [239 Auburn Road, Chatswood]'),(31,31,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:05:09','','','User[Kongluan Lin] '),(32,32,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:06:11','','','User[Kongluan Lin] '),(33,33,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:06:34','','','User[Kongluan Lin] logout'),(34,34,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:06:59','','','User[Kongluan Lin] login');
/*!40000 ALTER TABLE `log_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_boundary`
--

DROP TABLE IF EXISTS `property_boundary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_boundary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `polygon` polygon NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `i_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  SPATIAL KEY `property_boundary_polygon_id` (`polygon`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_boundary`
--

LOCK TABLES `property_boundary` WRITE;
/*!40000 ALTER TABLE `property_boundary` DISABLE KEYS */;
INSERT INTO `property_boundary` VALUES (2,'\0\0\0\0\0\0\0\0\0\0\0\0\0$D�IA��׿Qq\n�@�<e��IA}6�gp\n�䒙(��IARzt�o\n�}�ط�IA\ZM� �o\n�G@&̇IA#�0�up\n�$D�IA��׿Qq\n�','manual','active'),(3,'\0\0\0\0\0\0\0\0\0\0\0\0\0G@&̇IA��4plp\n�!H\n��IA�n���o\n��Ɠ}ÇIA��&�n\n�1r�؇IA��vjo\n�G@&̇IA��4plp\n�','manual','active'),(4,'\0\0\0\0\0\0\0\0\0\0	\0\0\0�4��؇IAﰢ!\\o\n���!�ǇIA.�^�n\n�+��ÇIA����{n\n�V��IA�����n\n��ݤ���IA�n��vn\n�l��@ˇIAJ���#m\n��@���IA2!Ad�m\n�9�8B߇IA;��A�n\n��4��؇IAﰢ!\\o\n�','manual','active'),(5,'\0\0\0\0\0\0\0\0\0\0\0\0\0����IA��m�fm\n�d9�9чIA��1�l\n��+MևIAU���l\n�G�2��IA\nܺk�l\n�����IA��m�fm\n�','manual','active'),(6,'\0\0\0\0\0\0\0\0\0\0\0\0\0G�2��IA\nܺk�l\n�d9�9чIA���k\n���K�ׇIA�ir��j\n��I�܇IA���j\n������IA�̓��j\n��H^���IAnU<)k\n�G�2��IA\nܺk�l\n�','manual','active'),(7,'\0\0\0\0\0\0\0\0\0\0\r\0\0\0�I�܇IA���j\n�*X>�ЇIA%T�k\n��+MևIA=��Rl\n�\0���чIA� ���l\n�Z�V��IAK��!l\n�Z�V��IA�5�k\n��Q\r竇IAV���`j\n��.Y��IA\n��Ki\n��.Y��IA�1�i\n�T\0	��IA�K=��h\n����x��IA�m9��h\n�^o�뼇IAae8i\n��I�܇IA���j\n�','manual','active'),(8,'\0\0\0\0\0\0\0\0\0\0\n\0\0\0!H\n��IAK��!l\n�Y��yƇIA���rl\n��Ɠ}ÇIA�ޝ�l\n�2�ʇIAb���m\n� ��-ƇIA�C��m\n���͇IA6�3��m\n�/5B_ǇIA�\n�Сn\n��ݤ���IA�n��vn\n��Q\r竇IA�D��m\n�!H\n��IAK��!l\n�','manual','active'),(9,'\0\0\0\0\0\0\0\0\0\0\0\0\0콝K��IA��\"1o\n��r����IA�Ҟ�eo\n���b��IAƃ��o\n���~�IAﰢ!\\o\n�y�����IA�%��5o\n�콝K��IA��\"1o\n�','manual','active'),(10,'\0\0\0\0\0\0\0\0\0\0\0\0\0=*�ϩ�IAu�1��m\n�a�4���IA.�^�n\n�Z�J��IA�6>�Tp\n�&����IAƃ��o\n����*��IA$�to\n�=*�ϩ�IAu�1��m\n�','manual','active'),(11,'\0\0\0\0\0\0\0\0\0\0	\0\0\0��y#e�IA@ZI�m\n��v�n�IA2!Ad�m\n���f�l�IAa6\"� n\n�	7�f�IA(f9��m\n�\\��f�IAa6\"� n\n����6j�IA��EBn\n�Q�Hlh�IA엦n\n�UyL�^�IA��EBn\n���y#e�IA@ZI�m\n�','manual','active'),(12,'\0\0\0\0\0\0\0\0\0\0\0\0\0�\'�R}�IA(��u�o\n�[�>O��IAD��o\n���/8~�IA��Q�$p\n�𚡽y�IA��b��o\n���m|�IA��<�o\n��\'�R}�IA(��u�o\n�','manual','active'),(13,'\0\0\0\0\0\0\0\0\0\0\0\0\0�CK\Z\0�IA�C��m\n�?V���IA_߹�\"o\n�@�zIهIA[�R�p\n�vJ�\0ևIA{b\0m�p\n���gՇIA�����q\n�Qg�V��IAZEA_s\n��b����IAhy��ms\n���\nL�IAv���{s\n�?8��IA	��*s\n�P6X�IAhy��ms\n�)���IA��3��r\n�����IAQ�ccpr\n�X1���IAz�f�q\n����\n�IA!Z��wq\n����[	�IA�Q��p\n��eG�	�IA�Yb*n\n��CK\Z\0�IA�C��m\n�','manual','active'),(14,'\0\0\0\0\0\0\0\0\0\0\0\0\0𚡽y�IAd�f:�o\n���/8~�IA�xS\0 p\n��>�z�IA#�0�up\n��5r?x�IAI<TYp\n�𚡽y�IA��d�o\n�𚡽y�IAd�f:�o\n�','manual','active'),(15,'\0\0\0\0\0\0\0\0\0\0\0\0\0�;,w_�IA�(Zn\n�H�k�IA�>�%�n\n��}��h�IA��\'o\n�J��Aa�IA1��]�n\n��ܑ^�IA�j�Io\n����1Y�IA���?o\n��;,w_�IA�(Zn\n�','manual','active'),(16,'\0\0\0\0\0\0\0\0\0\0\0\0\0��gՇIA����q\n��H^���IAAVds\n��b����IA��͓s\n�U�,���IA��<t\n�\nR���IAZEA_s\n��I�܇IA�zq�t\n���gՇIA����q\n�','manual','active'),(17,'\0\0\0\0\0\0\0\0\0\0\0\0\0���1Y�IA��\'o\n�UyL�^�IAɍ��Ro\n�4��X�IAZ_Vp\n�KҐT�IAaQt��o\n����1Y�IA��\'o\n�','manual','active'),(18,'\0\0\0\0\0\0\0\0\0\0\0\0\0݉��t�IA����q\n�� !|�IA�2��&q\n��O�i�IA\n�.�zp\n��5r?x�IA�B�Jp\n�kCu�IA�����p\n�݉��t�IA����q\n�','manual','active'),(19,'\0\0\0\0\0\0\0\0\0\0\0\0\0\r��J�IAo�4m^u\n��՜8��IA��ut\n�}dN�IAAVds\n�}d)+݇IA�|��t\n�\r��J�IAo�4m^u\n�','manual','active'),(20,'\0\0\0\0\0\0\0\0\0\0\0\0\0�CrN�IA��G�<p\n�0WPPU�IA�27qp\n�<N��R�IAx�\r��p\n���3[L�IA1�*S�p\n��CrN�IA��G�<p\n�','manual','active'),(21,'\0\0\0\0\0\0\0\0\0\0\0\0\0kCu�IA���\nq\n�c]�Vz�IA�f�5q\n�݉��t�IA����r\n��UJo�IA��-�q\n�kCu�IA���\nq\n�','manual','active'),(22,'\0\0\0\0\0\0\0\0\0\0\0\0\0�ԭq�IA�.���q\n����Fr�IA�@���q\n�X�Ŗo�IA `�yr\n�c�F3m�IA�m�Xr\n��UJo�IA�ƟJ�q\n�Z|p�IAz�f�q\n��ԭq�IA�.���q\n�','manual','active'),(23,'\0\0\0\0\0\0\0\0\0\0\0\0\0���J�IA\'*#o�p\n����R�IAj���p\n����S�IA�Q��p\n���r�O�IA!Z��wq\n��A�F�IA�U�N0q\n��A�F�IA�U�N0q\n����J�IA\'*#o�p\n�','manual','active'),(24,'\0\0\0\0\0\0\0\0\0\0\0\0\0�o&�m�IA�e�kr\n��5r?x�IA�DӼr\n�_�B�v�IA��+��r\n��W�j�IAY�HE�r\n�U)�l�IA*�g�fr\n��o&�m�IA�e�kr\n�','manual','active'),(25,'\0\0\0\0\0\0\0\0\0\0\0\0\0vF�IAy��9q\n�r��O�IA0��L�q\n�r��O�IA�ƟJ�q\n�D��L�IA�Q��r\n�9X4B�IA�<��q\n�vF�IAy��9q\n�','manual','active'),(26,'\0\0\0\0\0\0\0\0\0\0\0\0\0��1qy�IAY�HE�r\n�0��4��IA�M;��r\n��O�i�IA�	9s\n�&��tv�IA\r&C	s\n�Ғ\"Zw�IAq�J~�r\n���1qy�IAY�HE�r\n�','manual','active'),(27,'\0\0\0\0\0\0\0\0\0\0	\0\0\0j8��U�IA����q\n���X�IA�<��q\n�R�\rI[�IAК�jCq\n��ܑ^�IA�ՆVq\n���}�[�IA�����q\n��Z�*_�IAz�f�q\n�����b�IAК�jCq\n�	���Y�IA���Oq\n�j8��U�IA����q\n�','manual','active'),(28,'\0\0\0\0\0\0\0\0\0\0\0\0\0콝K��IAgC��r\n�x��Տ�IA�{/s\n���yr��IA���x�s\n��Ԯ���IA�b&!s\n�콝K��IAgC��r\n�','manual','active'),(29,'\0\0\0\0\0\0\0\0\0\0\0\0\0x��Տ�IA!u\Z�%s\n���yr��IA�.\"�s\n�{87k��IA�m�Xr\n�pA�Ε�IA\n݀�(r\n�˘�IA�2w�@r\n�{87k��IA���=s\n��g��IAZEA_s\n�(܆P��IA���Z�s\n�!�	&��IA^����s\n�i\'9���IA�.\"�s\n��dY��IAA �s\n�x��Տ�IA!u\Z�%s\n�','manual','active'),(30,'\0\0\0\0\0\0\0\0\0\0\0\0\0���\ZW�IA�����q\n�j8��U�IA��~�-r\n�Ů��[�IAC�ibr\n��Z�*_�IA�.���q\n����\ZW�IA�����q\n�','manual','active'),(31,'\0\0\0\0\0\0\0\0\0\0\0\0\0&����IA�^�Y�s\n�ĝf锇IApk�w�s\n�7`F���IA%�^Gs\n�������IAاB4s\n������IA�fq�Nr\n�/�{��IAQ�ccpr\n��D\"���IA�2w�@r\n���Q��IAC�ibr\n��︧�IA.7ZF�r\n�L����IAq�J~�r\n�@�<e��IA�^9}�r\n��p����IA��+��r\n�[2}3��IAاB4s\n�=*�ϩ�IA^����s\n�I����IApk�w�s\n�@ ��IA�����s\n��V p��IA�*��s\n�&����IA�^�Y�s\n�','manual','active'),(32,'\0\0\0\0\0\0\0\0\0\0\0\0\0Y�sb�IA���e\Zr\n�\\��f�IA\0\"y�;r\n�M\n�d�IA�lT��r\n�׿�`�IAQ�ccpr\n�Y�sb�IA���e\Zr\n�','manual','active'),(33,'\0\0\0\0\0\0\0\0\0\0\0\0\0��߱�IA�o7D�r\n��1ք��IA����q\n�K^�$��IA���q\n���-N��IA���Oq\n�9��:��IA�6�inq\n��[���IA�.���q\n��p����IAc�P)�r\n��M���IAmIX\r�r\n��l㮇IA��|H2r\n�L����IAG&\\�r\n���߱�IA�o7D�r\n�','manual','active'),(34,'\0\0\0\0\0\0\0\0\0\0\0\0\0U)�l�IA��O�)p\n�M�D�q�IA�%@�Op\n�����n�IAm.�p\n��^(i�IA���p\n�U)�l�IA��O�)p\n�','manual','active'),(35,'\0\0\0\0\0\0\0\0\0\0\n\0\0\0���ꨇIAq���\0q\n�&����IA1�*S�p\n��3$⚇IAQ�n�p\n�E�@ף�IAК�jCq\n��.Y��IA�ՆVq\n���d���IAq���\0q\n���bw��IA#�0�up\n����ꨇIA�����p\n�����IA��`q\n����ꨇIAq���\0q\n�','manual','active'),(36,'\0\0\0\0\0\0\0\0\0\0\0\0\0Ғ\"Zw�IA�j�Io\n����s�IA�2[�p\n��W�j�IAd�f:�o\n����l�IA��xo\n�Q�n�IAxλo\n�Ғ\"Zw�IA�j�Io\n�','manual','active'),(37,'\0\0\0\0\0\0\0\0\0\0\0\0\0���IA}6�gp\n�����IA}�hs�o\n��=��IAI<TYp\n������IA���p\n����IA}6�gp\n�','manual','active'),(38,'\0\0\0\0\0\0\0\0\0\0\0\0\0���IA}6�gp\n�����IA}�hs�o\n��=��IAI<TYp\n������IA���p\n����IA}6�gp\n�','manual','active'),(39,'\0\0\0\0\0\0\0\0\0\0\0\0\0BW���IA��b��o\n�0F�W��IA6��ʣo\n�,���IA�xS\0 p\n�x��Տ�IA�Y:^p\n�7�_��IA����q\n�!���IA?%��p\n�%�\r���IAI<TYp\n���+Ƈ�IA?%��p\n�;=J�IAܬMU.p\n����L��IA[�R�p\n��񗠑�IAy��9q\n�;=J�IA�Q��p\n�5ː��IA�U�N0q\n��r����IA���\nq\n�BW���IA��b��o\n�','manual','active'),(40,'\0\0\0\0\0\0\0\0\0\0\0\0\0M�D�q�IA]�/c�m\n�Wf\0�|�IA�����n\n�Wf\0�|�IAb䳹n\n�𚡽y�IA�Y�>Do\n����s�IAxλo\n��\rc(v�IA.�^�n\n���5�o�IA���Kn\n�M�D�q�IA]�/c�m\n�','manual','active'),(41,'\0\0\0\0\0\0\0\0\0\0\0\0\0�=��IAV{\Z�3n\n��=��IA��&�n\n�3�푇IA��&�n\n�BW���IAtUɕ�n\n���d���IAf!�@�n\n��\"&��IA���Kn\n��3$⚇IAV{\Z�3n\n��u\0��IA�&Fn\n���yr��IA�H �%n\n��dY��IA���8n\n��=��IAV{\Z�3n\n�','manual','active'),(42,'\0\0\0\0\0\0\0\0\0\0\0\0\0|���g�IA�2��&q\n�U)�l�IAy��9q\n��?�Qi�IAv����q\n�M\n�d�IAd�/�q\n�|���g�IA�2��&q\n�','manual','active'),(43,'\0\0\0\0\0\0\0\0\0\0\0\0\0��bw��IAS(n\n�H!l��IA^�i�l\n�:���IA� ���l\n���煒�IA�aVןm\n�IqDI��IAgx7G�m\n���bw��IAS(n\n�','manual','active'),(44,'\0\0\0\0\0\0\0\0\0\0\n\0\0\0;�`�IA �\r��p\n��[�`�IA�R�p\n�|���g�IAU?��p\n���h�IAC��p\n�;�`�IA\n�.�zp\n�F���]�IAQ�n�p\n��;,w_�IA �\r��p\n���_�IA �\r��p\n���_�IA9�5�p\n�;�`�IA �\r��p\n�','manual','active'),(45,'\0\0\0\0\0\0\0\0\0\0	\0\0\0�l1���IA*����l\n����/��IAj\0p�k\n�@�<e��IAy\n�nl\n�I����IA���4Vl\n���\\̬�IA�>�l|l\n�O;����IA�z�6\0l\n�L����IA�T\0�k\n��R����IA\nܺk�l\n��l1���IA*����l\n�','manual','active'),(46,'\0\0\0\0\0\0\0\0\0\0\0\0\0�o&�m�IAb䳹n\n�\"b��r�IAJ�ږ�n\n�g:��p�IA�6��:o\n�U)�l�IA���?o\n��o&�m�IAb䳹n\n�','manual','active'),(47,'\0\0\0\0\0\0\0\0\0\0\0\0\0�-��u�IA��0�k\n��r����IA`P�zMj\n�;=J�IA|��$jj\n�F����IA�z�}�i\n�IqDI��IA���j\n��g��IA�T�#�j\n������IA�5x>�j\n������IA��n!�j\n��D\"���IA�1���j\n���oU��IAnU<)k\n��.Y��IAi�MX<k\n��^�Ӧ�IA��.Ȉk\n�ĝf锇IA�e���l\n�5ː��IA3�n&l\n��S[D��IA�r���l\n�|��G��IA�r���l\n�y�����IA3�n&l\n�r�@�{�IA�8�k\n�𚡽y�IA�8�k\n��-��u�IA��0�k\n�','manual','active'),(48,'\0\0\0\0\0\0\0\0\0\0\0\0\0��daq�IAj\0p�k\n�I2en�IAk���_l\n��-��u�IA����l\n���x�IAA:��4l\n���daq�IAj\0p�k\n�','manual','active'),(50,'\0\0\0\0\0\0\0\0\0\0\0\0\0�����IA��p\n�_�!І�IAf~��q\n��|\Z�q�IA]�m�q\n��|\Z�q�IA�mX�p\n������IA��p\n�','manual','active'),(51,'\0\0\0\0\0\0\0\0\0\0\0\0\0�����IA&\n�3�q\n�oˑ��IAr�I�r\n�/ j�r�IAZ\n�r\n�/ j�r�IA�m�4�q\n������IA&\n�3�q\n�','manual','active'),(52,'\0\0\0\0\0\0\0\0\0\0\0\0\0�:q�IAZ\n�r\n��q���IA���r\n�~OQN��IA�-�zt\n� ��Pq�IA�\n���s\n��:q�IAZ\n�r\n�','manual','active'),(53,'\0\0\0\0\0\0\0\0\0\0\0\0\0�q���IA�P�t\n�/ j�r�IA����s\n�i��r�IA��-;	u\n��q���IA��+u\n��q���IA�P�t\n�','manual','active'),(54,'\0\0\0\0\0\0\0\0\0\0\0\0\0�]��q�IA��-;	u\n���i��IA��+u\n�oˑ��IA�ֽPv\n��>�5r�IA�ֽPv\n��]��q�IA��-;	u\n�','manual','active'),(55,'\0\0\0\0\0\0\0\0\0\0\0\0\0oˑ��IA��4v\n�t�Zkp�IA��mv\n��:q�IA�@@�Tw\n���i��IAtQ>�Yw\n�oˑ��IA��4v\n�','manual','active'),(56,'\0\0\0\0\0\0\0\0\0\0\0\0\0�6{�o�IA��w\n���i��IA�6b�w\n��1爈IAw�\Z�*z\n�pW�y�IAіRs�y\n�i��r�IAE�\\�x\n��6{�o�IA��w\n�','manual','active'),(57,'\0\0\0\0\0\0\0\0\0\0\0\0\0qk�l�IA�z�RWq\n��-�nm�IA�i �8p\n���SZ�IAp�3�p\n��u�U�IA�z�RWq\n�qk�l�IA�z�RWq\n�','manual','active'),(58,'\0\0\0\0\0\0\0\0\0\0\0\0\07���l�IA܌�\\q\n�{ә�K�IA�z�RWq\n��yJL�IA(|:/qr\n��-�nm�IA(|:/qr\n�7���l�IA܌�\\q\n�','manual','active'),(59,'\0\0\0\0\0\0\0\0\0\0\0\0\0�L�\"m�IA��6�zr\n���	�K�IA�i<hlr\n��9|M�IA��\n�s\n�qk�l�IAm)�Ѻs\n��L�\"m�IA��6�zr\n�','manual','active'),(60,'\0\0\0\0\0\0\0\0\0\0\0\0\0����k�IAm)�Ѻs\n��8�/M�IA��\n�s\n��9|M�IAv�T��t\n��ܿ�<�IA��P=�t\n��LF�IA�ſ�v\n�b�\\�k�IA��4v\n�����k�IAm)�Ѻs\n�','manual','active'),(61,'\0\0\0\0\0\0\0\0\0\0\0\0\0�$}k�IA���v\n����QF�IA���v\n��WY�L�IA*_gw\n��$}k�IA^Y�w\n��$}k�IA���v\n�','manual','active'),(62,'\0\0\0\0\0\0\0\0\0\0	\0\0\07���l�IA<�UJ w\n��yJL�IA.M[�w\n�I��R�IAɉ��w\n���Z�IAe��BMx\n�)V�4^�IA���]�x\n�0p/_e�IA�Ρ��x\n����h�IA䚧?�x\n��C\r�j�IA�Q�zsx\n�7���l�IA<�UJ w\n�','manual','active'),(63,'\0\0\0\0\0\0\0\0\0\0\0\0\0��x蜈IA}��7q\n���8��IAR��8�p\n�oˑ��IA>쫹p\n������IAf~��q\n� ��4��IA��dr\n���x蜈IA}��7q\n�','manual','active'),(64,'\0\0\0\0\0\0\0\0\0\0\0\0\0��x蜈IAmc�r\n��q���IA[av�q\n��q���IAZ\n�r\n� ��4��IA�a��r\n���x蜈IAmc�r\n�','manual','active'),(65,'\0\0\0\0\0\0\0\0\0\0\0\0\0 ��4��IA�a��r\n���i��IAZ\n�r\n���i��IA�P�t\n� ��4��IA�P�t\n� ��4��IA�a��r\n�','manual','active'),(66,'\0\0\0\0\0\0\0\0\0\0\0\0\0�~8\Z��IAЕ�$t\n�oˑ��IA鄎]\Zt\n��q���IAF!9_u\n�`�f��IA*��Bu\n��~8\Z��IAЕ�$t\n�','manual','active'),(67,'\0\0\0\0\0\0\0\0\0\0\0\0\0?A���IAf�S�u\n������IA���œu\n��q���IA\ZI)�w\n��~8\Z��IA\ZI)�w\n�?A���IAf�S�u\n�','manual','active'),(68,'\0\0\0\0\0\0\0\0\0\0\0\0\0��x蜈IA�6b�w\n�6�!І�IA�6b�w\n���i��IA\\}�Zy\n���x蜈IA+���y\n���x蜈IA�6b�w\n�','manual','active'),(69,'\0\0\0\0\0\0\0\0\0\0\0\0\0 ��4��IA\\}�Zy\n������IA5Z��y\n�~OQN��IA�}7&z\n������IA\0�ޘz\n� ��4��IA\\}�Zy\n�','manual','active'),(70,'\0\0\0\0\0\0\0\0\0\0\0\0\0��E���IA�C�Tq\n�v$M+��IA��sq\n���,ĺ�IA:)\'��r\n�q�-��IA��fNr\n���E���IA�C�Tq\n�','manual','active'),(71,'\0\0\0\0\0\0\0\0\0\0\0\0\0��w��IA:)\'��r\n�����IA��dr\n��3�ƣ�IA\0֚is\n���w��IA\0֚is\n���w��IA:)\'��r\n�','manual','active'),(72,'\0\0\0\0\0\0\0\0\0\0\0\0\0��w��IA6��ws\n�q�-��IA6��ws\n�ߏ6ᢈIA�g�yt\n�v$M+��IA�g�yt\n���w��IA6��ws\n�','manual','active'),(73,'\0\0\0\0\0\0\0\0\0\0\0\0\0��w��IA%�i\"ut\n�a�ի��IA�g�yt\n�q�-��IA��\Z�u\n���w��IA{xwu\n���w��IA%�i\"ut\n�','manual','active'),(85,'\0\0\0\0\0\0\0\0\0\0\0\0\0>�1��IA��U�p\n�~����IA`1э�p\n��>sf��IA�$DLYr\n�{C���IA�eY�$r\n�>�1��IA��U�p\n�','manual','active'),(75,'\0\0\0\0\0\0\0\0\0\0\0\0\0��|���IA{xwu\n��3�ƣ�IA��u\n�a�ի��IAs߃��v\n�v$M+��IAs߃��v\n���|���IA{xwu\n�','manual','active'),(76,'\0\0\0\0\0\0\0\0\0\0\0\0\0\"Ȝ��IA�~��v\n�����IAs߃��v\n�\'�e_��IA��D�w\n�v$M+��IA�x\n�\"Ȝ��IA�~��v\n�','manual','active'),(77,'\0\0\0\0\0\0\0\0\0\0\0\0\0$d{��IA\ZI)�w\n���޽�IA��F�w\n�d����IA�.��ix\n����IA���]�x\n���C��IAE��\'x\n�^E�Z��IAE��\'x\n�$d{��IA\ZI)�w\n�','manual','active'),(78,'\0\0\0\0\0\0\0\0\0\0\0\0\0=C�޹�IA���x\n�RRz��IA�j��w\n��3�ƣ�IA�ߟ[�x\n�v$M+��IANI��x\n�=C�޹�IA���x\n�','manual','active'),(79,'\0\0\0\0\0\0\0\0\0\0\0\0\0���E��IA9ӄ=$y\n�����IA@���x\n���Ɣ��IAZ&&Tz\n���=��IA�}7&z\n����E��IA9ӄ=$y\n�','manual','active'),(80,'\0\0\0\0\0\0\0\0\0\0\0\0\0X�Ƿ�IAiZ �z\n�ߏ6ᢈIAs(�	z\n�$h\'ʠ�IA���z\n�q�-��IA|y�j�z\n�*2���IA����a{\n�X�Ƿ�IAiZ �z\n�','manual','active'),(84,'\0\0\0\0\0\0\0\0\0\0\0\0\0!�X��IA���Pp\n����IA�\Z��p\n�,��F�IAtPxO�q\n���|��IA�Ѣ5oq\n�!�X��IA���Pp\n�','manual','active');
/*!40000 ALTER TABLE `property_boundary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_ownership`
--

DROP TABLE IF EXISTS `property_ownership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_ownership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `citizen_id` int(11) NOT NULL,
  `share` double NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date DEFAULT NULL,
  `i_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_ownership_6a812853` (`property_id`),
  KEY `property_ownership_d00bbef7` (`citizen_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_ownership`
--

LOCK TABLES `property_ownership` WRITE;
/*!40000 ALTER TABLE `property_ownership` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_ownership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_property`
--

DROP TABLE IF EXISTS `property_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plotid` int(11) NOT NULL,
  `streetno` int(11) DEFAULT NULL,
  `streetname` varchar(30) DEFAULT NULL,
  `suburb` varchar(50) NOT NULL,
  `boundary_id` int(11) NOT NULL,
  `i_status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_property_2879d902` (`boundary_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_property`
--

LOCK TABLES `property_property` WRITE;
/*!40000 ALTER TABLE `property_property` DISABLE KEYS */;
INSERT INTO `property_property` VALUES (2,2000,1,'Stacey','Ashfield',2,'active'),(3,2001,2,'Stacey','Ashfield',3,'active'),(4,2002,3,'Stacey','Ashfield',4,'active'),(5,2003,4,'Stacey','Ashfield',5,'active'),(6,2004,5,'Stacey','Ashfield',6,'active'),(7,2005,6,'Stacey','Ashfield',7,'active'),(8,2006,7,'Stacey','Ashfield',8,'active'),(9,3000,12,'Myall','Cabramatta',9,'active'),(10,2007,8,'Stacey','Ashfield',10,'active'),(11,1000,52,'Phillip Steet','Parramatta',11,'active'),(12,3000,13,'Myall','Cabramatta',12,'active'),(13,2006,1,'paul st','Ashfield',13,'active'),(14,3002,14,'Myall','Cabramatta',14,'active'),(15,1001,54,'Phillip Steet','Parramatta',15,'active'),(16,2008,2,'paul st','Ashfield',16,'active'),(17,1003,56,'Phillip Steet','Parramatta',17,'active'),(18,3003,15,'Myall','Cabramatta',18,'active'),(19,2009,3,'paul st','Ashfield',19,'active'),(20,1004,58,'Phillip Steet','Parramatta',20,'active'),(21,3004,16,'Myall','Cabramatta',21,'active'),(22,3005,17,'Myall','Cabramatta',22,'active'),(23,1005,60,'Phillip Steet','Parramatta',23,'active'),(24,3006,18,'Myall','Cabramatta',24,'active'),(25,1006,62,'Phillip Steet','Parramatta',25,'active'),(26,3007,23,'John','Cabramatta',26,'active'),(27,1007,64,'Phillip Steet','Parramatta',27,'active'),(28,3008,24,'John','Cabramatta',28,'active'),(29,3009,25,'John','Cabramatta',29,'active'),(30,1008,5,'King Street','Parramatta',30,'active'),(31,3010,26,'John','Cabramatta',31,'active'),(32,1009,7,'King Street','Parramatta',32,'active'),(33,3011,112,'Bee','Cabramatta',33,'active'),(34,1010,101,'Wall Steet','Parramatta',34,'active'),(35,3012,122,'Bee','Cabramatta',35,'active'),(36,1011,103,'Wall Steet','Parramatta',36,'active'),(37,3013,121,'Bee','Cabramatta',37,'active'),(38,3013,121,'Bee','Cabramatta',38,'active'),(39,3014,119,'Bee','Cabramatta',39,'active'),(40,1012,111,'Wall Steet','Parramatta',40,'active'),(41,3015,32,'Goose','Cabramatta',41,'active'),(42,1015,99,'Wall Steet','Parramatta',42,'active'),(43,3016,33,'Goose','Cabramatta',43,'active'),(44,1019,15,'Wall Steet','Parramatta',44,'active'),(45,3017,34,'Goose','Cabramatta',45,'active'),(46,1025,45,'Wall Steet','Parramatta',46,'active'),(47,3018,236,'Hugh','Cabramatta',47,'active'),(48,3019,11,'Doom','Cabramatta',48,'active'),(50,9000,1,'Harold St','Glebe',50,'active'),(51,9001,2,'Harold St','Glebe',51,'active'),(52,9002,3,'Harold St','Glebe',52,'active'),(53,9003,4,'Harold St','Glebe',53,'active'),(54,9004,5,'Harold St','Glebe',54,'active'),(55,9005,6,'Harold St','Glebe',55,'active'),(56,9006,7,'Harold St','Glebe',56,'active'),(57,9006,7,'Harold St','Glebe',57,'active'),(58,9007,8,'Harold St','Glebe',58,'active'),(59,9008,9,'Harold St','Glebe',59,'active'),(60,9009,10,'Harold St','Glebe',60,'active'),(61,9010,11,'Harold St','Glebe',61,'active'),(62,9011,12,'Harold St','Glebe',62,'active'),(63,9012,1,'Paper St','Glebe',63,'active'),(64,9013,2,'Paper St','Glebe',64,'active'),(65,9014,3,'Paper St','Glebe',65,'active'),(66,9015,4,'Paper St','Glebe',66,'active'),(67,9016,5,'Paper St','Glebe',67,'active'),(68,9017,7,'Paper St','Glebe',68,'active'),(69,9018,8,'Paper St','Glebe',69,'active'),(70,9020,20,'Paper St','Glebe',70,'active'),(71,9021,21,'Paper St','Glebe',71,'active'),(72,9022,22,'Paper St','Glebe',72,'active'),(73,9023,23,'Paper St','glebe',73,'active'),(85,6666,239,'Auburn Road','Chatswood',85,'active'),(75,9024,24,'Paper St','Glebe',75,'active'),(76,9025,25,'Paper St','glebe',76,'active'),(77,8221,152,'Little Street','Parramatta',77,'active'),(78,9026,26,'Paper St','Glebe',78,'active'),(79,9027,27,'Paper St','Glebe',79,'active'),(80,9028,28,'Paper St','Glebe',80,'active'),(84,5555,230,'Auburn Road','Chatswood',84,'active');
/*!40000 ALTER TABLE `property_property` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-08-27 10:08:20
