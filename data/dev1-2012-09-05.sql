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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (1,'testgroup','active'),(7,'dev1','active');
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
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
INSERT INTO `auth_group_permissions` VALUES (1,1,17),(2,1,1),(83,7,33),(82,7,34),(81,7,35),(80,7,36),(79,7,24),(78,7,23),(77,7,22),(76,7,21),(75,7,20),(74,7,19),(73,7,18),(72,7,17),(71,7,16),(70,7,15),(69,7,14),(68,7,13),(67,7,12),(66,7,11),(65,7,10),(64,7,9),(63,7,8),(62,7,7),(61,7,6),(60,7,5),(59,7,4),(58,7,3),(57,7,2),(56,7,1);
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
INSERT INTO `auth_user` VALUES (1,'Kongluan Lin','Kongluan','Lin','','linkongluan@gmail.com','642841ac5168288de710c090272fdcba',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(3,'Shane Dale','Shane','Dale','','shane@propertymode.com.au','1e113fa10ad2e32cac8043b85e99a88d',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(4,'Sandra Macnaughton','Sandra','Macnaughton','','sandra@propertymode.com.au','a921e09118e627ef733a8cc7f3ce835c',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(5,'Justin Hopley','justin','Hopley','','justin@propertymode.com.au','09d914bbbd32fa8145d374c2e82ef7b5',1,1,'2012-08-21 04:59:17','2012-08-21 04:59:17','active'),(6,'peterpeter','peter','peter','','p@p.com','83878c91171338902e0fe0fb97a8c47a',1,1,'2012-08-21 06:20:21','2012-08-21 06:20:21','active'),(7,'adriandinc','adrian','dinc','','adrian@surrondpix.com.au','f22571ad0aacace295ee3f8940aa7ac5',1,1,'2012-08-23 05:43:38','2012-08-23 05:43:38','active');
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citizen_citizen`
--

LOCK TABLES `citizen_citizen` WRITE;
/*!40000 ALTER TABLE `citizen_citizen` DISABLE KEYS */;
INSERT INTO `citizen_citizen` VALUES (1,'Mark','Young',12345,'active'),(2,'Paul','Kennardy',510134,'active'),(3,'Bob','Smith',1001,'active'),(5,'Michael','Kay',30032,'active');
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
INSERT INTO `django_session` VALUES ('b41341d2bda060bea4b11ee95a598a92','OGU3M2RjOGNmNzNmOGVhMGZlY2QzNGQ0MTczMmE5YWRkMzkwOTMyOTqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWAwAAABLb25nbHVhbiBMaW5VCXN1cGVydXNl\ncnEJiFUJZmlyc3RuYW1lcQpYCAAAAEtvbmdsdWFuVQhsYXN0bmFtZXELWAMAAABMaW5VCGlfc3Rh\ndHVzcQxYBgAAAGFjdGl2ZVUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3Rh\ndGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1YlUKZGF0ZWpvaW5lZHEU\nY2RhdGV0aW1lCmRhdGV0aW1lCnEVVQoH3AgVBDsRAAAAY3B5dHoKX1VUQwpxFilScReGUnEYVQVl\nbWFpbHEZWBUAAABsaW5rb25nbHVhbkBnbWFpbC5jb21VDWNvbnRhY3RudW1iZXJxGlgAAAAAVQls\nYXN0bG9naW5xG2gVVQoH3AgVBDsRAAAAaBeGUnEcVQZhY3RpdmVxHYhVCHBhc3N3b3JkcR5YIAAA\nADY0Mjg0MWFjNTE2ODI4OGRlNzEwYzA5MDI3MmZkY2JhVQJpZHEfigEBdWJzLg==\n','2012-09-18 23:04:10'),('e32b211419a6c321e29ebe8e92c3775d','ZDM3NDVhOGEwOGViMWZiN2IzYzAzNjVhODBkYmNhNGQ1ZjliOGI5MzqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWA0AAABKdXN0aW4gSG9wbGV5VQlzdXBlcnVz\nZXJxCYhVCWZpcnN0bmFtZXEKWAYAAABqdXN0aW5VCGxhc3RuYW1lcQtYBgAAAEhvcGxleVUIaV9z\ndGF0dXNxDFgGAAAAYWN0aXZlVQZfc3RhdGVxDWNkamFuZ28uZGIubW9kZWxzLmJhc2UKTW9kZWxT\ndGF0ZQpxDimBcQ99cRAoVQZhZGRpbmdxEYlVAmRicRJVB2RlZmF1bHRxE3ViVQpkYXRlam9pbmVk\ncRRjZGF0ZXRpbWUKZGF0ZXRpbWUKcRVVCgfcCBUEOxEAAABjcHl0egpfVVRDCnEWKVJxF4ZScRhV\nBWVtYWlscRlYGgAAAGp1c3RpbkBwcm9wZXJ0eW1vZGUuY29tLmF1VQ1jb250YWN0bnVtYmVycRpY\nAAAAAFUJbGFzdGxvZ2lucRtoFVUKB9wIFQQ7EQAAAGgXhlJxHFUGYWN0aXZlcR2IVQhwYXNzd29y\nZHEeWCAAAAAwOWQ5MTRiYmJkMzJmYTgxNDVkMzc0YzJlODJlZjdiNVUCaWRxH4oBBXVicy4=\n','2012-09-18 22:51:29'),('63100f433db9ea8b046061bd8c84b20e','ZWM1ZDFmYWNlNWNmOGExMWI4YjVmYjM1NjRlMjYzMjdjMTExYzlmNTqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWAoAAABwZXRlcnBldGVyVQlzdXBlcnVzZXJx\nCYhVCWZpcnN0bmFtZXEKWAUAAABwZXRlclUIbGFzdG5hbWVxC1gFAAAAcGV0ZXJVCGlfc3RhdHVz\ncQxYBgAAAGFjdGl2ZVUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3RhdGUK\ncQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1YlUKZGF0ZWpvaW5lZHEUY2Rh\ndGV0aW1lCmRhdGV0aW1lCnEVVQoH3AgVBhQVAAAAY3B5dHoKX1VUQwpxFilScReGUnEYVQVlbWFp\nbHEZWAcAAABwQHAuY29tVQ1jb250YWN0bnVtYmVycRpYAAAAAFUJbGFzdGxvZ2lucRtoFVUKB9wI\nFQYUFQAAAGgXhlJxHFUGYWN0aXZlcR2IVQhwYXNzd29yZHEeWCAAAAA4Mzg3OGM5MTE3MTMzODkw\nMmUwZmUwZmI5N2E4YzQ3YVUCaWRxH4oBBnVicy4=\n','2012-09-04 06:22:56'),('3b4788ffdb40b2c0768ac8812a101ce1','OGVkNTA0Y2E1OWVjNDNmZTFhNDM4YWUxZWY2MDFmMTFkMGQyMTc2MjqAAn1xAS4=\n','2012-09-04 07:00:23'),('9c4309e5401a746ffde412be5f32719b','OGU3M2RjOGNmNzNmOGVhMGZlY2QzNGQ0MTczMmE5YWRkMzkwOTMyOTqAAn1xAVUEdXNlcnECY2Nv\ncHlfcmVnCl9yZWNvbnN0cnVjdG9yCnEDY2F1dGgubW9kZWxzClVzZXIKcQRjX19idWlsdGluX18K\nb2JqZWN0CnEFTodScQZ9cQcoVQh1c2VybmFtZXEIWAwAAABLb25nbHVhbiBMaW5VCXN1cGVydXNl\ncnEJiFUJZmlyc3RuYW1lcQpYCAAAAEtvbmdsdWFuVQhsYXN0bmFtZXELWAMAAABMaW5VCGlfc3Rh\ndHVzcQxYBgAAAGFjdGl2ZVUGX3N0YXRlcQ1jZGphbmdvLmRiLm1vZGVscy5iYXNlCk1vZGVsU3Rh\ndGUKcQ4pgXEPfXEQKFUGYWRkaW5ncRGJVQJkYnESVQdkZWZhdWx0cRN1YlUKZGF0ZWpvaW5lZHEU\nY2RhdGV0aW1lCmRhdGV0aW1lCnEVVQoH3AgVBDsRAAAAY3B5dHoKX1VUQwpxFilScReGUnEYVQVl\nbWFpbHEZWBUAAABsaW5rb25nbHVhbkBnbWFpbC5jb21VDWNvbnRhY3RudW1iZXJxGlgAAAAAVQls\nYXN0bG9naW5xG2gVVQoH3AgVBDsRAAAAaBeGUnEcVQZhY3RpdmVxHYhVCHBhc3N3b3JkcR5YIAAA\nADY0Mjg0MWFjNTE2ODI4OGRlNzEwYzA5MDI3MmZkY2JhVQJpZHEfigEBdWJzLg==\n','2012-09-06 01:44:45');
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jtax_declaredvalue`
--

LOCK TABLES `jtax_declaredvalue` WRITE;
/*!40000 ALTER TABLE `jtax_declaredvalue` DISABLE KEYS */;
INSERT INTO `jtax_declaredvalue` VALUES (1,2000,1,400000,'$AUS','2000-01-02 10:30:00',152,'true'),(2,2000,2,550000,'$AUS','2005-05-09 12:10:30',185,'true'),(3,3000,1,750000,'$AUS','2007-12-22 15:50:28',202,'true'),(4,1010,2,360000,'$AUS','2009-08-25 20:32:45',235,'true'),(5,1001,1,860000,'$AUS','2011-05-30 15:20:15',521,'true');
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
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_log`
--

LOCK TABLES `log_log` WRITE;
/*!40000 ALTER TABLE `log_log` DISABLE KEYS */;
INSERT INTO `log_log` VALUES (1,1,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-21 06:20:30','','','view User [peterpeter]'),(2,2,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-21 06:20:35','{\'username\': u\'peterpeter\', \'superuser\': False, \'groups\': [], \'firstname\': u\'peter\', \'lastname\': u\'peter\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-21 06:20:21\', \'email\': u\'p@p.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-21 06:20:21\', \'active\': True, \'password\': u\'020e36ec80045462f13c33d190eb7b6f\', \'id\': 6L, \'permissions\': []}','{\'username\': u\'peterpeter\', \'superuser\': False, \'groups\': [], \'firstname\': u\'peter\', \'lastname\': u\'peter\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-21 06:20:21\', \'email\': u\'p@p.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-21 06:20:21\', \'active\': True, \'password\': \'83878c91171338902e0fe0fb97a8c47a\', \'id\': 6L, \'permissions\': []}',' change password from \'020e36ec80045462f13c33d190eb7b6f\' to \'83878c91171338902e0fe0fb97a8c47a\' on User [peterpeter]'),(3,3,5,NULL,NULL,'justin Hopley','auth_user','2012-08-23 05:43:46','','','view User [adriandinc]'),(4,4,5,NULL,NULL,'justin Hopley','auth_user','2012-08-23 05:43:54','{\'username\': u\'adriandinc\', \'superuser\': False, \'groups\': [2L], \'firstname\': u\'adrian\', \'lastname\': u\'dinc\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-23 05:43:38\', \'email\': u\'adrian@surrondpix.com.au\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-23 05:43:38\', \'active\': True, \'password\': u\'66e5780a22508bad65b615ca6c4d709d\', \'id\': 7L, \'permissions\': []}','{\'username\': u\'adriandinc\', \'superuser\': True, \'groups\': [2L], \'firstname\': u\'adrian\', \'lastname\': u\'dinc\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-23 05:43:38\', \'email\': u\'adrian@surrondpix.com.au\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-23 05:43:38\', \'active\': True, \'password\': \'f22571ad0aacace295ee3f8940aa7ac5\', \'id\': 7L, \'permissions\': []}',' change superuser from \'False\' to \'True\', change password from \'66e5780a22508bad65b615ca6c4d709d\' to \'f22571ad0aacace295ee3f8940aa7ac5\' on User [adriandinc]'),(5,5,1,NULL,NULL,'Kongluan Lin','property_property','2012-08-23 07:13:52','','{\'i_status\': \'active\', \'citizens\': [], \'plotid\': 8221, \'suburb\': u\'Parramatta\', \'streetno\': 152, \'boundary\': 83L, \'id\': 83L, \'streetname\': u\'Little Street\'}','add Property [152 Little Street, Parramatta]'),(6,6,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 04:46:04','','','view Group [testgroup3]'),(7,7,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 04:46:11','{\'i_status\': u\'active\', \'permissions\': [19L, 20L, 21L], \'id\': 3L, \'name\': u\'testgroup3\'}','{\'i_status\': u\'active\', \'permissions\': [19L, 20L], \'id\': 3L, \'name\': u\'testgroup3\'}',' remove permissions [\'Can view user\'] on Group [testgroup3]'),(8,8,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 04:51:33','','','view User [WongLee]'),(9,9,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 04:52:10','{\'username\': u\'WongLee\', \'superuser\': False, \'groups\': [], \'firstname\': u\'Wong\', \'lastname\': u\'Lee\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 04:50:23\', \'email\': u\'wlee@gmail.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 04:50:23\', \'active\': True, \'password\': u\'c1ba3a655c3707af46e1d22daacd7a18\', \'id\': 8L, \'permissions\': []}','{\'username\': u\'WongLee\', \'superuser\': False, \'groups\': [], \'firstname\': u\'Wong\', \'lastname\': u\'Lee\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 04:50:23\', \'email\': u\'wlee@gmail.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 04:50:23\', \'active\': True, \'password\': \'76f5d947149185d77a1fa1a114b3fb30\', \'id\': 8L, \'permissions\': []}',' change password from \'c1ba3a655c3707af46e1d22daacd7a18\' to \'76f5d947149185d77a1fa1a114b3fb30\' on User [WongLee]'),(10,10,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 04:59:01','','','view Citizen [Mark Tong]'),(11,11,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:00:28','','','view Citizen [Mark Tong]'),(12,12,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:02:36','','','view Citizen [Mark Tong]'),(13,13,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:07:29','','','view Citizen [Mark Tong]'),(14,14,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:08:55','','','view Citizen [Mark Tong]'),(15,15,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 05:51:59','','','view Citizen [Mark Tong]'),(16,16,1,NULL,NULL,'Kongluan Lin','property_property','2012-08-24 05:58:13','','{\'i_status\': \'active\', \'citizens\': [], \'plotid\': 5555, \'suburb\': u\'Chatswood\', \'streetno\': 230, \'boundary\': 84L, \'id\': 84L, \'streetname\': u\'Auburn Road\'}','add Property [230 Auburn Road, Chatswood]'),(17,17,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:36:17','','','delete Group [test group 4]'),(18,18,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:38:03','','','User[Kongluan Lin] delete Group [test group 3]'),(19,19,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:39:12','','','User[Kongluan Lin] add Group [test group 3]'),(20,20,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:45:09','','','User[Kongluan Lin] view Group [test group 3]'),(21,21,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:45:37','{\'i_status\': u\'active\', \'permissions\': [9L, 10L, 11L], \'id\': 6L, \'name\': u\'test group 3\'}','{\'i_status\': u\'active\', \'permissions\': [9L, 10L], \'id\': 6L, \'name\': u\'test group 3\'}','User[Kongluan Lin]  remove permissions [\'Can change log\'] on Group [test group 3]'),(22,22,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-24 06:46:25','','','User[Kongluan Lin] delete Group [test group 3]'),(23,23,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 06:58:24','','','User[Kongluan Lin] delete User [Peter Wang]'),(24,24,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 06:59:35','','','User[Kongluan Lin] add User [PeterWang]'),(25,25,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 06:59:57','','','User[Kongluan Lin] view User [PeterWang]'),(26,26,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-24 07:00:27','{\'username\': u\'PeterWang\', \'superuser\': False, \'groups\': [], \'firstname\': u\'Peter\', \'lastname\': u\'Wang\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 06:59:35\', \'email\': u\'p@wang.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 06:59:35\', \'active\': True, \'password\': u\'aed285a479e32849b2d2c2a99b7d93d4\', \'id\': 9L, \'permissions\': []}','{\'username\': u\'PetersWang\', \'superuser\': False, \'groups\': [2L], \'firstname\': u\'Peters\', \'lastname\': u\'Wang\', \'i_status\': u\'active\', \'datejoined\': \'2012-08-24 06:59:35\', \'email\': u\'p@wang.com\', \'contactnumber\': u\'\', \'lastlogin\': \'2012-08-24 06:59:35\', \'active\': True, \'password\': \'83878c91171338902e0fe0fb97a8c47a\', \'id\': 9L, \'permissions\': []}','User[Kongluan Lin]  change username from \'PeterWang\' to \'PetersWang\', change firstname from \'Peter\' to \'Peters\', associate with groups [\'dev\'], change password from \'aed285a479e32849b2d2c2a99b7d93d4\' to \'83878c91171338902e0fe0fb97a8c47a\' on User [PetersWang]'),(27,27,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 07:07:18','','','User[Kongluan Lin] add Citizen [Paul Kennardy]'),(28,28,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 07:09:38','','','User[Kongluan Lin] view Citizen [Paul Kennardy]'),(29,29,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-24 07:09:45','{\'lastname\': u\'Kennardy\', \'i_status\': u\'active\', \'citizenid\': 510132L, \'id\': 2L, \'firstname\': u\'Paul\'}','{\'lastname\': u\'Kennardy\', \'i_status\': u\'active\', \'citizenid\': 510134, \'id\': 2L, \'firstname\': u\'Paul\'}','User[Kongluan Lin]  change citizenid from \'510132\' to \'510134\' on Citizen [Paul Kennardy]'),(30,30,1,NULL,NULL,'Kongluan Lin','property_property','2012-08-24 07:16:04','','','User[Kongluan Lin] add Property [239 Auburn Road, Chatswood]'),(31,31,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:05:09','','','User[Kongluan Lin] '),(32,32,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:06:11','','','User[Kongluan Lin] '),(33,33,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:06:34','','','User[Kongluan Lin] logout'),(34,34,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-26 23:06:59','','','User[Kongluan Lin] login'),(35,35,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-27 07:17:50','','','User[Kongluan Lin] logout'),(36,36,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-27 22:44:26','','','User[Kongluan Lin] login'),(37,37,5,NULL,NULL,'justin Hopley','auth_user','2012-08-28 04:03:17','','','User[justin Hopley] login'),(38,38,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-28 04:35:39','','','User[Kongluan Lin] view Citizen [Mark Tong]'),(39,39,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-08-28 04:35:45','','','User[Kongluan Lin] view Citizen [Mark Tong]'),(40,40,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-28 04:39:01','','','User[Kongluan Lin] view Group [dev]'),(41,41,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-28 04:40:16','','','User[Kongluan Lin] view Group [dev]'),(42,42,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-28 04:40:23','','','User[Kongluan Lin] view Group [dev]'),(43,43,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-28 04:42:00','','','User[Kongluan Lin] delete Group [dev]'),(44,44,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-28 04:43:00','','','User[Kongluan Lin] view Group [testgroup]'),(45,45,1,NULL,NULL,'Kongluan Lin','auth_group','2012-08-28 04:49:29','','','User[Kongluan Lin] add Group [dev1]'),(46,46,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-28 04:53:26','','','User[Kongluan Lin] view User [PetersWang]'),(47,47,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-28 04:53:36','','','User[Kongluan Lin] view User [PetersWang]'),(48,48,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-28 04:53:47','','','User[Kongluan Lin] view User [PetersWang]'),(49,49,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-28 04:54:41','','','User[Kongluan Lin] delete User [PetersWang]'),(50,50,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-28 05:04:46','','','User[Kongluan Lin] logout'),(51,51,1,NULL,NULL,'Kongluan Lin','auth_user','2012-08-28 05:04:57','','','User[Kongluan Lin] login'),(52,52,5,NULL,NULL,'justin Hopley','auth_user','2012-08-29 06:52:45','','','User[justin Hopley] logout'),(53,53,5,NULL,NULL,'justin Hopley','auth_user','2012-08-29 06:57:46','','','User[justin Hopley] login'),(54,54,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 22:55:59','','','User[Kongluan Lin] logout'),(55,55,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 22:56:13','','','User[Kongluan Lin] login'),(56,56,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 23:40:45','','','User[Kongluan Lin] logout'),(57,57,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 23:43:06','','','User[Kongluan Lin] login'),(58,58,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 23:43:35','','','User[Kongluan Lin] logout'),(59,59,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 23:46:20','','','User[Kongluan Lin] login'),(60,60,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 23:46:34','','','User[Kongluan Lin] logout'),(61,61,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-02 23:52:09','','','User[Kongluan Lin] login'),(62,62,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-03 07:21:08','','','User[Kongluan Lin] logout'),(63,63,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-03 23:46:26','','','User[Kongluan Lin] login'),(64,64,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-03 23:51:32','','','User[Kongluan Lin] add Property [135 Little Street, Parramatta]'),(65,65,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-03 23:53:44','','','User[Kongluan Lin] add Property [137 Little Street, Parramatta]'),(66,66,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-03 23:54:53','','','User[Kongluan Lin] add Property [139 Little Street, Parramatta]'),(67,67,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-03 23:55:36','','','User[Kongluan Lin] add Property [141 Little Street, Parramatta]'),(68,68,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-03 23:57:36','','','User[Kongluan Lin] add Property [143 Little Street, Parramatta]'),(69,69,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-03 23:58:32','','','User[Kongluan Lin] add Property [145 Little Street, Parramatta]'),(70,70,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:01:46','','','User[Kongluan Lin] add Property [1 Eagle Street, Parramatta]'),(71,71,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:02:28','','','User[Kongluan Lin] add Property [2 Eagle Street, Parramatta]'),(72,72,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:04:14','','','User[Kongluan Lin] add Property [3 Eagle Street, Parramatta]'),(73,73,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:05:29','','','User[Kongluan Lin] add Property [4 Eagle Street, Parramatta]'),(74,74,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:06:07','','','User[Kongluan Lin] add Property [5 Eagle Street, Parramatta]'),(75,75,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:06:56','','','User[Kongluan Lin] add Property [6 Eagle Street, Parramatta]'),(76,76,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:07:46','','','User[Kongluan Lin] add Property [7 Eagle Street, Parramatta]'),(77,77,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:13:20','','','User[Kongluan Lin] add Property [9 Eagle Street, Parramatta]'),(78,78,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:14:15','','','User[Kongluan Lin] add Property [11 Eagle Street, Parramatta]'),(79,79,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:14:54','','','User[Kongluan Lin] add Property [13 Eagle Street, Parramatta]'),(80,80,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:15:44','','','User[Kongluan Lin] add Property [14 Eagle Street, Parramatta]'),(81,81,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:18:12','','','User[Kongluan Lin] add Property [15 Eagle Street, Parramatta]'),(82,82,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:18:56','','','User[Kongluan Lin] add Property [16 Eagle Street, Parramatta]'),(83,83,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:20:48','','','User[Kongluan Lin] add Property [147 Little Street, Parramatta]'),(84,84,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:21:46','','','User[Kongluan Lin] add Property [148 Little Street, Parramatta]'),(85,85,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:22:43','','','User[Kongluan Lin] add Property [149 Little Street, Parramatta]'),(86,86,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:23:44','','','User[Kongluan Lin] add Property [153 Little Street, Parramatta]'),(87,87,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:27:19','','','User[Kongluan Lin] add Property [1 Dixon Street, Parramatta]'),(88,88,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:28:49','','','User[Kongluan Lin] add Property [2 Dixon Street, Glebe]'),(89,89,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:29:40','','','User[Kongluan Lin] add Property [3 Dixon Street, Parramatta]'),(90,90,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:30:25','','','User[Kongluan Lin] add Property [4 Dixon Street, Glebe]'),(91,91,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:31:35','','','User[Kongluan Lin] add Property [5 Dixon Street, Glebe]'),(92,92,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:36:13','','','User[Kongluan Lin] add Property [6 Dixon Street, Glebe]'),(93,93,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:40:50','','','User[Kongluan Lin] add Property [10 York Street, Petersham]'),(94,94,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:42:02','','','User[Kongluan Lin] add Property [12 York Street, Petersham]'),(95,95,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:43:10','','','User[Kongluan Lin] add Property [13 York Street, Petersham]'),(96,96,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:48:23','','','User[Kongluan Lin] add Property [13 Harold Street, Glebe]'),(97,97,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:49:02','','','User[Kongluan Lin] add Property [14 Harold Street, Glebe]'),(98,98,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 00:51:51','','','User[Kongluan Lin] add Property [4 Paul Street, Ashfield]'),(99,99,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:07:06','','','User[Kongluan Lin] add Property [1 Church Street, Atarmon]'),(100,100,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:08:00','','','User[Kongluan Lin] add Property [2 Church Street, Atarmon]'),(101,101,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:08:31','','','User[Kongluan Lin] add Property [3 Church Street, Atarmon]'),(102,102,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:09:13','','','User[Kongluan Lin] add Property [4 Church Street, Atarmon]'),(103,103,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:10:53','','','User[Kongluan Lin] add Property [5 Church Street, Atarmon]'),(104,104,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:11:19','','','User[Kongluan Lin] add Property [6 Church Street, Atarmon]'),(105,105,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:11:53','','','User[Kongluan Lin] add Property [7 Church Street, Atarmon]'),(106,106,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:12:36','','','User[Kongluan Lin] add Property [8 Church Street, Atarmon]'),(107,107,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:15:33','','','User[Kongluan Lin] add Property [50 Croydon Road, Atarmon]'),(108,108,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:16:11','','','User[Kongluan Lin] add Property [51 Croydon Road, Atarmon]'),(109,109,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:16:48','','','User[Kongluan Lin] add Property [15 Croydon Road, Atarmon]'),(110,110,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:30:46','','','User[Kongluan Lin] add Property [7 Dixon Street, Glebe]'),(111,111,5,NULL,NULL,'justin Hopley','citizen_citizen','2012-09-04 01:32:17','','','User[justin Hopley] add Citizen [Bob Smith]'),(112,112,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:33:22','','','User[Kongluan Lin] add Property [8 Dixon Street, Glebe]'),(113,113,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:34:34','','','User[Kongluan Lin] add Property [9 Dixon Street, Glebe]'),(114,114,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:35:14','','','User[Kongluan Lin] add Property [9 Dixon Street, Glebe]'),(115,115,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:36:24','','','User[Kongluan Lin] add Property [11 Dixon Street, Glebe]'),(116,116,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:37:03','','','User[Kongluan Lin] add Property [12 Dixon Street, Glebe]'),(117,117,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:38:49','','','User[Kongluan Lin] add Property [1 Gordon Avenue, Glebe]'),(118,118,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:39:18','','','User[Kongluan Lin] add Property [2 Gordon Avenue, Glebe]'),(119,119,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:39:54','','','User[Kongluan Lin] add Property [3 Gordon Avenue, Glebe]'),(120,120,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:41:43','','','User[Kongluan Lin] add Property [4 Gordon Avenue, Glebe]'),(121,121,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:42:35','','','User[Kongluan Lin] add Property [5 Gordon Avenue, Glebe]'),(122,122,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:43:04','','','User[Kongluan Lin] add Property [6 Gordon Avenue, Glebe]'),(123,123,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:44:04','','','User[Kongluan Lin] add Property [7 Gordon Avenue, Glebe]'),(124,124,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:44:45','','','User[Kongluan Lin] add Property [8 Gordon Avenue, Glebe]'),(125,125,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:45:08','','','User[Kongluan Lin] add Property [9 Gordon Avenue, Glebe]'),(126,126,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:46:03','','','User[Kongluan Lin] add Property [10 Gordon Avenue, Glebe]'),(127,127,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:46:32','','','User[Kongluan Lin] add Property [11 Gordon Avenue, Glebe]'),(128,128,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:47:07','','','User[Kongluan Lin] add Property [11 Gordon Avenue, Glebe]'),(129,129,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:48:15','','','User[Kongluan Lin] add Property [13 Gordon Avenue, Glebe]'),(130,130,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:48:38','','','User[Kongluan Lin] add Property [14 Gordon Avenue, Glebe]'),(131,131,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:49:08','','','User[Kongluan Lin] add Property [15 Gordon Avenue, Glebe]'),(132,132,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:51:01','','','User[Kongluan Lin] add Property [1 Elezebeth Street, Glebe]'),(133,133,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:51:22','','','User[Kongluan Lin] add Property [2 Elezebeth Street, Glebe]'),(134,134,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:51:44','','','User[Kongluan Lin] add Property [3 Elezebeth Street, Glebe]'),(135,135,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:52:26','','','User[Kongluan Lin] add Property [4 Elezebeth Street, Glebe]'),(136,136,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:53:00','','','User[Kongluan Lin] add Property [5 Elezebeth Street, Glebe]'),(137,137,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:53:26','','','User[Kongluan Lin] add Property [6 Elezebeth Street, Glebe]'),(138,138,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:53:51','','','User[Kongluan Lin] add Property [7 Elezebeth Street, Glebe]'),(139,139,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:54:15','','','User[Kongluan Lin] add Property [8 Elezebeth Street, Glebe]'),(140,140,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:57:39','','','User[Kongluan Lin] add Property [14 York Street, Petersham]'),(141,141,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:58:20','','','User[Kongluan Lin] add Property [15 York Street, Petersham]'),(142,142,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 01:59:21','','','User[Kongluan Lin] add Property [16 York Street, Petersham]'),(143,143,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:00:08','','','User[Kongluan Lin] add Property [16 York Street, Petersham]'),(144,144,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:00:42','','','User[Kongluan Lin] add Property [17 York Street, Petersham]'),(145,145,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:01:28','','','User[Kongluan Lin] add Property [18 York Street, Petersham]'),(146,146,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:02:27','','','User[Kongluan Lin] add Property [1 Swan Avenue, Petersham]'),(147,147,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:03:07','','','User[Kongluan Lin] add Property [2 Swan Avenue, Petersham]'),(148,148,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:03:39','','','User[Kongluan Lin] add Property [3 Swan Avenue, Petersham]'),(149,149,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:04:22','','','User[Kongluan Lin] add Property [4 York Street, Petersham]'),(150,150,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:04:59','','','User[Kongluan Lin] add Property [5 Swan Avenue, Petersham]'),(151,151,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:06:12','','','User[Kongluan Lin] add Property [6 Swan Avenue, Petersham]'),(152,152,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:06:47','','','User[Kongluan Lin] add Property [7 Swan Avenue, Petersham]'),(153,153,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:07:34','','','User[Kongluan Lin] add Property [8 Swan Avenue, Petersham]'),(154,154,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:08:08','','','User[Kongluan Lin] add Property [9 Swan Avenue, Petersham]'),(155,155,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:08:49','','','User[Kongluan Lin] add Property [10 Swan Avenue, Petersham]'),(156,156,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:09:26','','','User[Kongluan Lin] add Property [11 Swan Avenue, Petersham]'),(157,157,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:09:53','','','User[Kongluan Lin] add Property [12 Swan Avenue, Petersham]'),(158,158,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:12:20','','','User[Kongluan Lin] add Property [101 Cleveland Steet, Petersham]'),(159,159,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:12:54','','','User[Kongluan Lin] add Property [102 Cleveland Steet, Petersham]'),(160,160,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:13:27','','','User[Kongluan Lin] add Property [103 Cleveland Steet, Petersham]'),(161,161,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:14:04','','','User[Kongluan Lin] add Property [104 Cleveland Steet, Petersham]'),(162,162,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:14:44','','','User[Kongluan Lin] add Property [105 Cleveland Steet, Petersham]'),(163,163,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:18:56','','','User[Kongluan Lin] add Property [106 Cleveland Steet, Petersham]'),(164,164,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:19:27','','','User[Kongluan Lin] add Property [107 Cleveland Steet, Petersham]'),(165,165,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 02:20:02','','','User[Kongluan Lin] add Property [108 Cleveland Steet, Petersham]'),(166,166,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 03:55:19','','','User[Kongluan Lin] add Property [109 Cleveland Steet, Petersham]'),(167,167,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 03:57:39','','','User[Kongluan Lin] add Property [110 Cooper Street, Petersham]'),(168,168,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 03:58:43','','','User[Kongluan Lin] add Property [111 Cooper Street, Petersham]'),(169,169,1,NULL,NULL,'Kongluan Lin','property_property','2012-09-04 04:00:25','','','User[Kongluan Lin] add Property [112 Cooper Street, Petersham]'),(170,170,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:33:45','','','User[Kongluan Lin] add Citizen [Mary Roman]'),(171,171,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:42:12','','','User[Kongluan Lin] view Citizen [Paul Kennardy]'),(172,172,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:43:56','','','User[Kongluan Lin] view Citizen [Paul Kennardy]'),(173,173,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:44:47','','','User[Kongluan Lin] view Citizen [Paul Kennardy]'),(174,174,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:45:21','','','User[Kongluan Lin] view Citizen [Paul Kennardy]'),(175,175,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:45:56','','','User[Kongluan Lin] view Citizen [Paul Kennardy]'),(176,176,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:49:08','','','User[Kongluan Lin] view Citizen [Mark Tong]'),(177,177,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:49:30','','','User[Kongluan Lin] view Citizen [Mark Yong]'),(178,178,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:49:43','','','User[Kongluan Lin] view Citizen [Mark Young]'),(179,179,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:58:54','','','User[Kongluan Lin] delete Citizen [Mary Roman]'),(180,180,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 04:59:59','','','User[Kongluan Lin] view Citizen [Bob Smith]'),(181,181,1,NULL,NULL,'Kongluan Lin','citizen_citizen','2012-09-04 05:00:34','','','User[Kongluan Lin] view Citizen [Bob Smith]'),(182,182,5,NULL,NULL,'justin Hopley','citizen_citizen','2012-09-04 22:49:36','','','User[justin Hopley] add Citizen [Michael Kay]'),(183,183,5,NULL,NULL,'justin Hopley','auth_user','2012-09-04 22:50:58','','','User[justin Hopley] logout'),(184,184,5,NULL,NULL,'justin Hopley','auth_user','2012-09-04 22:51:29','','','User[justin Hopley] login'),(185,185,5,NULL,NULL,'justin Hopley','auth_group','2012-09-04 22:53:16','','','User[justin Hopley] view Group [dev1]'),(186,186,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-04 22:55:02','','','User[Kongluan Lin] logout'),(187,187,1,NULL,NULL,'Kongluan Lin','auth_user','2012-09-04 23:04:10','','','User[Kongluan Lin] login'),(188,188,5,NULL,NULL,'justin Hopley','property_property','2012-09-04 23:13:10','','','User[justin Hopley] add Property [9 Elezebeth Street, Glebe]'),(189,189,5,NULL,NULL,'justin Hopley','property_property','2012-09-04 23:13:42','','','User[justin Hopley] add Property [10 Elezebeth Street, Glebe]');
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
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_boundary`
--

LOCK TABLES `property_boundary` WRITE;
/*!40000 ALTER TABLE `property_boundary` DISABLE KEYS */;
INSERT INTO `property_boundary` VALUES (88,'\0\0\0\0\0\0\0\0\0\0\0\0\0�ܩ�IAĹ�$�x\n�^E�Z��IA|^uuJy\n�h��=ÇIA9ӄ=$y\n�7����IAi?γnx\n��ܩ�IAĹ�$�x\n�','manual','active'),(2,'\0\0\0\0\0\0\0\0\0\0\0\0\0$D�IA��׿Qq\n�@�<e��IA}6�gp\n�䒙(��IARzt�o\n�}�ط�IA\ZM� �o\n�G@&̇IA#�0�up\n�$D�IA��׿Qq\n�','manual','active'),(3,'\0\0\0\0\0\0\0\0\0\0\0\0\0G@&̇IA��4plp\n�!H\n��IA�n���o\n��Ɠ}ÇIA��&�n\n�1r�؇IA��vjo\n�G@&̇IA��4plp\n�','manual','active'),(4,'\0\0\0\0\0\0\0\0\0\0	\0\0\0�4��؇IAﰢ!\\o\n���!�ǇIA.�^�n\n�+��ÇIA����{n\n�V��IA�����n\n��ݤ���IA�n��vn\n�l��@ˇIAJ���#m\n��@���IA2!Ad�m\n�9�8B߇IA;��A�n\n��4��؇IAﰢ!\\o\n�','manual','active'),(5,'\0\0\0\0\0\0\0\0\0\0\0\0\0����IA��m�fm\n�d9�9чIA��1�l\n��+MևIAU���l\n�G�2��IA\nܺk�l\n�����IA��m�fm\n�','manual','active'),(6,'\0\0\0\0\0\0\0\0\0\0\0\0\0G�2��IA\nܺk�l\n�d9�9чIA���k\n���K�ׇIA�ir��j\n��I�܇IA���j\n������IA�̓��j\n��H^���IAnU<)k\n�G�2��IA\nܺk�l\n�','manual','active'),(7,'\0\0\0\0\0\0\0\0\0\0\r\0\0\0�I�܇IA���j\n�*X>�ЇIA%T�k\n��+MևIA=��Rl\n�\0���чIA� ���l\n�Z�V��IAK��!l\n�Z�V��IA�5�k\n��Q\r竇IAV���`j\n��.Y��IA\n��Ki\n��.Y��IA�1�i\n�T\0	��IA�K=��h\n����x��IA�m9��h\n�^o�뼇IAae8i\n��I�܇IA���j\n�','manual','active'),(8,'\0\0\0\0\0\0\0\0\0\0\n\0\0\0!H\n��IAK��!l\n�Y��yƇIA���rl\n��Ɠ}ÇIA�ޝ�l\n�2�ʇIAb���m\n� ��-ƇIA�C��m\n���͇IA6�3��m\n�/5B_ǇIA�\n�Сn\n��ݤ���IA�n��vn\n��Q\r竇IA�D��m\n�!H\n��IAK��!l\n�','manual','active'),(9,'\0\0\0\0\0\0\0\0\0\0\0\0\0콝K��IA��\"1o\n��r����IA�Ҟ�eo\n���b��IAƃ��o\n���~�IAﰢ!\\o\n�y�����IA�%��5o\n�콝K��IA��\"1o\n�','manual','active'),(10,'\0\0\0\0\0\0\0\0\0\0\0\0\0=*�ϩ�IAu�1��m\n�a�4���IA.�^�n\n�Z�J��IA�6>�Tp\n�&����IAƃ��o\n����*��IA$�to\n�=*�ϩ�IAu�1��m\n�','manual','active'),(11,'\0\0\0\0\0\0\0\0\0\0	\0\0\0��y#e�IA@ZI�m\n��v�n�IA2!Ad�m\n���f�l�IAa6\"� n\n�	7�f�IA(f9��m\n�\\��f�IAa6\"� n\n����6j�IA��EBn\n�Q�Hlh�IA엦n\n�UyL�^�IA��EBn\n���y#e�IA@ZI�m\n�','manual','active'),(12,'\0\0\0\0\0\0\0\0\0\0\0\0\0�\'�R}�IA(��u�o\n�[�>O��IAD��o\n���/8~�IA��Q�$p\n�𚡽y�IA��b��o\n���m|�IA��<�o\n��\'�R}�IA(��u�o\n�','manual','active'),(13,'\0\0\0\0\0\0\0\0\0\0\0\0\0�CK\Z\0�IA�C��m\n�?V���IA_߹�\"o\n�@�zIهIA[�R�p\n�vJ�\0ևIA{b\0m�p\n���gՇIA�����q\n�Qg�V��IAZEA_s\n��b����IAhy��ms\n���\nL�IAv���{s\n�?8��IA	��*s\n�P6X�IAhy��ms\n�)���IA��3��r\n�����IAQ�ccpr\n�X1���IAz�f�q\n����\n�IA!Z��wq\n����[	�IA�Q��p\n��eG�	�IA�Yb*n\n��CK\Z\0�IA�C��m\n�','manual','active'),(14,'\0\0\0\0\0\0\0\0\0\0\0\0\0𚡽y�IAd�f:�o\n���/8~�IA�xS\0 p\n��>�z�IA#�0�up\n��5r?x�IAI<TYp\n�𚡽y�IA��d�o\n�𚡽y�IAd�f:�o\n�','manual','active'),(15,'\0\0\0\0\0\0\0\0\0\0\0\0\0�;,w_�IA�(Zn\n�H�k�IA�>�%�n\n��}��h�IA��\'o\n�J��Aa�IA1��]�n\n��ܑ^�IA�j�Io\n����1Y�IA���?o\n��;,w_�IA�(Zn\n�','manual','active'),(16,'\0\0\0\0\0\0\0\0\0\0\0\0\0��gՇIA����q\n��H^���IAAVds\n��b����IA��͓s\n�U�,���IA��<t\n�\nR���IAZEA_s\n��I�܇IA�zq�t\n���gՇIA����q\n�','manual','active'),(17,'\0\0\0\0\0\0\0\0\0\0\0\0\0���1Y�IA��\'o\n�UyL�^�IAɍ��Ro\n�4��X�IAZ_Vp\n�KҐT�IAaQt��o\n����1Y�IA��\'o\n�','manual','active'),(18,'\0\0\0\0\0\0\0\0\0\0\0\0\0݉��t�IA����q\n�� !|�IA�2��&q\n��O�i�IA\n�.�zp\n��5r?x�IA�B�Jp\n�kCu�IA�����p\n�݉��t�IA����q\n�','manual','active'),(19,'\0\0\0\0\0\0\0\0\0\0\0\0\0\r��J�IAo�4m^u\n��՜8��IA��ut\n�}dN�IAAVds\n�}d)+݇IA�|��t\n�\r��J�IAo�4m^u\n�','manual','active'),(20,'\0\0\0\0\0\0\0\0\0\0\0\0\0�CrN�IA��G�<p\n�0WPPU�IA�27qp\n�<N��R�IAx�\r��p\n���3[L�IA1�*S�p\n��CrN�IA��G�<p\n�','manual','active'),(21,'\0\0\0\0\0\0\0\0\0\0\0\0\0kCu�IA���\nq\n�c]�Vz�IA�f�5q\n�݉��t�IA����r\n��UJo�IA��-�q\n�kCu�IA���\nq\n�','manual','active'),(22,'\0\0\0\0\0\0\0\0\0\0\0\0\0�ԭq�IA�.���q\n����Fr�IA�@���q\n�X�Ŗo�IA `�yr\n�c�F3m�IA�m�Xr\n��UJo�IA�ƟJ�q\n�Z|p�IAz�f�q\n��ԭq�IA�.���q\n�','manual','active'),(23,'\0\0\0\0\0\0\0\0\0\0\0\0\0���J�IA\'*#o�p\n����R�IAj���p\n����S�IA�Q��p\n���r�O�IA!Z��wq\n��A�F�IA�U�N0q\n��A�F�IA�U�N0q\n����J�IA\'*#o�p\n�','manual','active'),(24,'\0\0\0\0\0\0\0\0\0\0\0\0\0�o&�m�IA�e�kr\n��5r?x�IA�DӼr\n�_�B�v�IA��+��r\n��W�j�IAY�HE�r\n�U)�l�IA*�g�fr\n��o&�m�IA�e�kr\n�','manual','active'),(25,'\0\0\0\0\0\0\0\0\0\0\0\0\0vF�IAy��9q\n�r��O�IA0��L�q\n�r��O�IA�ƟJ�q\n�D��L�IA�Q��r\n�9X4B�IA�<��q\n�vF�IAy��9q\n�','manual','active'),(26,'\0\0\0\0\0\0\0\0\0\0\0\0\0��1qy�IAY�HE�r\n�0��4��IA�M;��r\n��O�i�IA�	9s\n�&��tv�IA\r&C	s\n�Ғ\"Zw�IAq�J~�r\n���1qy�IAY�HE�r\n�','manual','active'),(27,'\0\0\0\0\0\0\0\0\0\0	\0\0\0j8��U�IA����q\n���X�IA�<��q\n�R�\rI[�IAК�jCq\n��ܑ^�IA�ՆVq\n���}�[�IA�����q\n��Z�*_�IAz�f�q\n�����b�IAК�jCq\n�	���Y�IA���Oq\n�j8��U�IA����q\n�','manual','active'),(28,'\0\0\0\0\0\0\0\0\0\0\0\0\0콝K��IAgC��r\n�x��Տ�IA�{/s\n���yr��IA���x�s\n��Ԯ���IA�b&!s\n�콝K��IAgC��r\n�','manual','active'),(29,'\0\0\0\0\0\0\0\0\0\0\0\0\0x��Տ�IA!u\Z�%s\n���yr��IA�.\"�s\n�{87k��IA�m�Xr\n�pA�Ε�IA\n݀�(r\n�˘�IA�2w�@r\n�{87k��IA���=s\n��g��IAZEA_s\n�(܆P��IA���Z�s\n�!�	&��IA^����s\n�i\'9���IA�.\"�s\n��dY��IAA �s\n�x��Տ�IA!u\Z�%s\n�','manual','active'),(30,'\0\0\0\0\0\0\0\0\0\0\0\0\0���\ZW�IA�����q\n�j8��U�IA��~�-r\n�Ů��[�IAC�ibr\n��Z�*_�IA�.���q\n����\ZW�IA�����q\n�','manual','active'),(31,'\0\0\0\0\0\0\0\0\0\0\0\0\0&����IA�^�Y�s\n�ĝf锇IApk�w�s\n�7`F���IA%�^Gs\n�������IAاB4s\n������IA�fq�Nr\n�/�{��IAQ�ccpr\n��D\"���IA�2w�@r\n���Q��IAC�ibr\n��︧�IA.7ZF�r\n�L����IAq�J~�r\n�@�<e��IA�^9}�r\n��p����IA��+��r\n�[2}3��IAاB4s\n�=*�ϩ�IA^����s\n�I����IApk�w�s\n�@ ��IA�����s\n��V p��IA�*��s\n�&����IA�^�Y�s\n�','manual','active'),(32,'\0\0\0\0\0\0\0\0\0\0\0\0\0Y�sb�IA���e\Zr\n�\\��f�IA\0\"y�;r\n�M\n�d�IA�lT��r\n�׿�`�IAQ�ccpr\n�Y�sb�IA���e\Zr\n�','manual','active'),(33,'\0\0\0\0\0\0\0\0\0\0\0\0\0��߱�IA�o7D�r\n��1ք��IA����q\n�K^�$��IA���q\n���-N��IA���Oq\n�9��:��IA�6�inq\n��[���IA�.���q\n��p����IAc�P)�r\n��M���IAmIX\r�r\n��l㮇IA��|H2r\n�L����IAG&\\�r\n���߱�IA�o7D�r\n�','manual','active'),(34,'\0\0\0\0\0\0\0\0\0\0\0\0\0U)�l�IA��O�)p\n�M�D�q�IA�%@�Op\n�����n�IAm.�p\n��^(i�IA���p\n�U)�l�IA��O�)p\n�','manual','active'),(35,'\0\0\0\0\0\0\0\0\0\0\n\0\0\0���ꨇIAq���\0q\n�&����IA1�*S�p\n��3$⚇IAQ�n�p\n�E�@ף�IAК�jCq\n��.Y��IA�ՆVq\n���d���IAq���\0q\n���bw��IA#�0�up\n����ꨇIA�����p\n�����IA��`q\n����ꨇIAq���\0q\n�','manual','active'),(36,'\0\0\0\0\0\0\0\0\0\0\0\0\0Ғ\"Zw�IA�j�Io\n����s�IA�2[�p\n��W�j�IAd�f:�o\n����l�IA��xo\n�Q�n�IAxλo\n�Ғ\"Zw�IA�j�Io\n�','manual','active'),(37,'\0\0\0\0\0\0\0\0\0\0\0\0\0���IA}6�gp\n�����IA}�hs�o\n��=��IAI<TYp\n������IA���p\n����IA}6�gp\n�','manual','active'),(38,'\0\0\0\0\0\0\0\0\0\0\0\0\0���IA}6�gp\n�����IA}�hs�o\n��=��IAI<TYp\n������IA���p\n����IA}6�gp\n�','manual','active'),(39,'\0\0\0\0\0\0\0\0\0\0\0\0\0BW���IA��b��o\n�0F�W��IA6��ʣo\n�,���IA�xS\0 p\n�x��Տ�IA�Y:^p\n�7�_��IA����q\n�!���IA?%��p\n�%�\r���IAI<TYp\n���+Ƈ�IA?%��p\n�;=J�IAܬMU.p\n����L��IA[�R�p\n��񗠑�IAy��9q\n�;=J�IA�Q��p\n�5ː��IA�U�N0q\n��r����IA���\nq\n�BW���IA��b��o\n�','manual','active'),(40,'\0\0\0\0\0\0\0\0\0\0\0\0\0M�D�q�IA]�/c�m\n�Wf\0�|�IA�����n\n�Wf\0�|�IAb䳹n\n�𚡽y�IA�Y�>Do\n����s�IAxλo\n��\rc(v�IA.�^�n\n���5�o�IA���Kn\n�M�D�q�IA]�/c�m\n�','manual','active'),(41,'\0\0\0\0\0\0\0\0\0\0\0\0\0�=��IAV{\Z�3n\n��=��IA��&�n\n�3�푇IA��&�n\n�BW���IAtUɕ�n\n���d���IAf!�@�n\n��\"&��IA���Kn\n��3$⚇IAV{\Z�3n\n��u\0��IA�&Fn\n���yr��IA�H �%n\n��dY��IA���8n\n��=��IAV{\Z�3n\n�','manual','active'),(42,'\0\0\0\0\0\0\0\0\0\0\0\0\0|���g�IA�2��&q\n�U)�l�IAy��9q\n��?�Qi�IAv����q\n�M\n�d�IAd�/�q\n�|���g�IA�2��&q\n�','manual','active'),(43,'\0\0\0\0\0\0\0\0\0\0\0\0\0��bw��IAS(n\n�H!l��IA^�i�l\n�:���IA� ���l\n���煒�IA�aVןm\n�IqDI��IAgx7G�m\n���bw��IAS(n\n�','manual','active'),(44,'\0\0\0\0\0\0\0\0\0\0\n\0\0\0;�`�IA �\r��p\n��[�`�IA�R�p\n�|���g�IAU?��p\n���h�IAC��p\n�;�`�IA\n�.�zp\n�F���]�IAQ�n�p\n��;,w_�IA �\r��p\n���_�IA �\r��p\n���_�IA9�5�p\n�;�`�IA �\r��p\n�','manual','active'),(45,'\0\0\0\0\0\0\0\0\0\0	\0\0\0�l1���IA*����l\n����/��IAj\0p�k\n�@�<e��IAy\n�nl\n�I����IA���4Vl\n���\\̬�IA�>�l|l\n�O;����IA�z�6\0l\n�L����IA�T\0�k\n��R����IA\nܺk�l\n��l1���IA*����l\n�','manual','active'),(46,'\0\0\0\0\0\0\0\0\0\0\0\0\0�o&�m�IAb䳹n\n�\"b��r�IAJ�ږ�n\n�g:��p�IA�6��:o\n�U)�l�IA���?o\n��o&�m�IAb䳹n\n�','manual','active'),(47,'\0\0\0\0\0\0\0\0\0\0\0\0\0�-��u�IA��0�k\n��r����IA`P�zMj\n�;=J�IA|��$jj\n�F����IA�z�}�i\n�IqDI��IA���j\n��g��IA�T�#�j\n������IA�5x>�j\n������IA��n!�j\n��D\"���IA�1���j\n���oU��IAnU<)k\n��.Y��IAi�MX<k\n��^�Ӧ�IA��.Ȉk\n�ĝf锇IA�e���l\n�5ː��IA3�n&l\n��S[D��IA�r���l\n�|��G��IA�r���l\n�y�����IA3�n&l\n�r�@�{�IA�8�k\n�𚡽y�IA�8�k\n��-��u�IA��0�k\n�','manual','active'),(48,'\0\0\0\0\0\0\0\0\0\0\0\0\0��daq�IAj\0p�k\n�I2en�IAk���_l\n��-��u�IA����l\n���x�IAA:��4l\n���daq�IAj\0p�k\n�','manual','active'),(50,'\0\0\0\0\0\0\0\0\0\0\0\0\0�����IA��p\n�_�!І�IAf~��q\n��|\Z�q�IA]�m�q\n��|\Z�q�IA�mX�p\n������IA��p\n�','manual','active'),(51,'\0\0\0\0\0\0\0\0\0\0\0\0\0�����IA&\n�3�q\n�oˑ��IAr�I�r\n�/ j�r�IAZ\n�r\n�/ j�r�IA�m�4�q\n������IA&\n�3�q\n�','manual','active'),(52,'\0\0\0\0\0\0\0\0\0\0\0\0\0�:q�IAZ\n�r\n��q���IA���r\n�~OQN��IA�-�zt\n� ��Pq�IA�\n���s\n��:q�IAZ\n�r\n�','manual','active'),(53,'\0\0\0\0\0\0\0\0\0\0\0\0\0�q���IA�P�t\n�/ j�r�IA����s\n�i��r�IA��-;	u\n��q���IA��+u\n��q���IA�P�t\n�','manual','active'),(54,'\0\0\0\0\0\0\0\0\0\0\0\0\0�]��q�IA��-;	u\n���i��IA��+u\n�oˑ��IA�ֽPv\n��>�5r�IA�ֽPv\n��]��q�IA��-;	u\n�','manual','active'),(55,'\0\0\0\0\0\0\0\0\0\0\0\0\0oˑ��IA��4v\n�t�Zkp�IA��mv\n��:q�IA�@@�Tw\n���i��IAtQ>�Yw\n�oˑ��IA��4v\n�','manual','active'),(56,'\0\0\0\0\0\0\0\0\0\0\0\0\0�6{�o�IA��w\n���i��IA�6b�w\n��1爈IAw�\Z�*z\n�pW�y�IAіRs�y\n�i��r�IAE�\\�x\n��6{�o�IA��w\n�','manual','active'),(57,'\0\0\0\0\0\0\0\0\0\0\0\0\0qk�l�IA�z�RWq\n��-�nm�IA�i �8p\n���SZ�IAp�3�p\n��u�U�IA�z�RWq\n�qk�l�IA�z�RWq\n�','manual','active'),(58,'\0\0\0\0\0\0\0\0\0\0\0\0\07���l�IA܌�\\q\n�{ә�K�IA�z�RWq\n��yJL�IA(|:/qr\n��-�nm�IA(|:/qr\n�7���l�IA܌�\\q\n�','manual','active'),(59,'\0\0\0\0\0\0\0\0\0\0\0\0\0�L�\"m�IA��6�zr\n���	�K�IA�i<hlr\n��9|M�IA��\n�s\n�qk�l�IAm)�Ѻs\n��L�\"m�IA��6�zr\n�','manual','active'),(60,'\0\0\0\0\0\0\0\0\0\0\0\0\0����k�IAm)�Ѻs\n��8�/M�IA��\n�s\n��9|M�IAv�T��t\n��ܿ�<�IA��P=�t\n��LF�IA�ſ�v\n�b�\\�k�IA��4v\n�����k�IAm)�Ѻs\n�','manual','active'),(61,'\0\0\0\0\0\0\0\0\0\0\0\0\0�$}k�IA���v\n����QF�IA���v\n��WY�L�IA*_gw\n��$}k�IA^Y�w\n��$}k�IA���v\n�','manual','active'),(62,'\0\0\0\0\0\0\0\0\0\0	\0\0\07���l�IA<�UJ w\n��yJL�IA.M[�w\n�I��R�IAɉ��w\n���Z�IAe��BMx\n�)V�4^�IA���]�x\n�0p/_e�IA�Ρ��x\n����h�IA䚧?�x\n��C\r�j�IA�Q�zsx\n�7���l�IA<�UJ w\n�','manual','active'),(63,'\0\0\0\0\0\0\0\0\0\0\0\0\0��x蜈IA}��7q\n���8��IAR��8�p\n�oˑ��IA>쫹p\n������IAf~��q\n� ��4��IA��dr\n���x蜈IA}��7q\n�','manual','active'),(64,'\0\0\0\0\0\0\0\0\0\0\0\0\0��x蜈IAmc�r\n��q���IA[av�q\n��q���IAZ\n�r\n� ��4��IA�a��r\n���x蜈IAmc�r\n�','manual','active'),(65,'\0\0\0\0\0\0\0\0\0\0\0\0\0 ��4��IA�a��r\n���i��IAZ\n�r\n���i��IA�P�t\n� ��4��IA�P�t\n� ��4��IA�a��r\n�','manual','active'),(66,'\0\0\0\0\0\0\0\0\0\0\0\0\0�~8\Z��IAЕ�$t\n�oˑ��IA鄎]\Zt\n��q���IAF!9_u\n�`�f��IA*��Bu\n��~8\Z��IAЕ�$t\n�','manual','active'),(67,'\0\0\0\0\0\0\0\0\0\0\0\0\0?A���IAf�S�u\n������IA���œu\n��q���IA\ZI)�w\n��~8\Z��IA\ZI)�w\n�?A���IAf�S�u\n�','manual','active'),(68,'\0\0\0\0\0\0\0\0\0\0\0\0\0��x蜈IA�6b�w\n�6�!І�IA�6b�w\n���i��IA\\}�Zy\n���x蜈IA+���y\n���x蜈IA�6b�w\n�','manual','active'),(69,'\0\0\0\0\0\0\0\0\0\0\0\0\0 ��4��IA\\}�Zy\n������IA5Z��y\n�~OQN��IA�}7&z\n������IA\0�ޘz\n� ��4��IA\\}�Zy\n�','manual','active'),(70,'\0\0\0\0\0\0\0\0\0\0\0\0\0��E���IA�C�Tq\n�v$M+��IA��sq\n���,ĺ�IA:)\'��r\n�q�-��IA��fNr\n���E���IA�C�Tq\n�','manual','active'),(71,'\0\0\0\0\0\0\0\0\0\0\0\0\0��w��IA:)\'��r\n�����IA��dr\n��3�ƣ�IA\0֚is\n���w��IA\0֚is\n���w��IA:)\'��r\n�','manual','active'),(72,'\0\0\0\0\0\0\0\0\0\0\0\0\0��w��IA6��ws\n�q�-��IA6��ws\n�ߏ6ᢈIA�g�yt\n�v$M+��IA�g�yt\n���w��IA6��ws\n�','manual','active'),(73,'\0\0\0\0\0\0\0\0\0\0\0\0\0��w��IA%�i\"ut\n�a�ի��IA�g�yt\n�q�-��IA��\Z�u\n���w��IA{xwu\n���w��IA%�i\"ut\n�','manual','active'),(85,'\0\0\0\0\0\0\0\0\0\0\0\0\0>�1��IA��U�p\n�~����IA`1э�p\n��>sf��IA�$DLYr\n�{C���IA�eY�$r\n�>�1��IA��U�p\n�','manual','active'),(75,'\0\0\0\0\0\0\0\0\0\0\0\0\0��|���IA{xwu\n��3�ƣ�IA��u\n�a�ի��IAs߃��v\n�v$M+��IAs߃��v\n���|���IA{xwu\n�','manual','active'),(76,'\0\0\0\0\0\0\0\0\0\0\0\0\0\"Ȝ��IA�~��v\n�����IAs߃��v\n�\'�e_��IA��D�w\n�v$M+��IA�x\n�\"Ȝ��IA�~��v\n�','manual','active'),(77,'\0\0\0\0\0\0\0\0\0\0\0\0\0$d{��IA\ZI)�w\n���޽�IA��F�w\n�d����IA�.��ix\n����IA���]�x\n���C��IAE��\'x\n�^E�Z��IAE��\'x\n�$d{��IA\ZI)�w\n�','manual','active'),(78,'\0\0\0\0\0\0\0\0\0\0\0\0\0=C�޹�IA���x\n�RRz��IA�j��w\n��3�ƣ�IA�ߟ[�x\n�v$M+��IANI��x\n�=C�޹�IA���x\n�','manual','active'),(79,'\0\0\0\0\0\0\0\0\0\0\0\0\0���E��IA9ӄ=$y\n�����IA@���x\n���Ɣ��IAZ&&Tz\n���=��IA�}7&z\n����E��IA9ӄ=$y\n�','manual','active'),(80,'\0\0\0\0\0\0\0\0\0\0\0\0\0X�Ƿ�IAiZ �z\n�ߏ6ᢈIAs(�	z\n�$h\'ʠ�IA���z\n�q�-��IA|y�j�z\n�*2���IA����a{\n�X�Ƿ�IAiZ �z\n�','manual','active'),(87,'\0\0\0\0\0\0\0\0\0\0	\0\0\0$�1��IA�U�j�v\n�~:�ˇIA�ܠ�ev\n�ƟM͇IAJ�O�.w\n�ly对�IA\'F�Fw\n�ly对�IA�nW�w\n������IA.M[�w\n�ۮ����IA�%|��v\n�з��IA�~��v\n�$�1��IA�U�j�v\n�','manual','active'),(86,'\0\0\0\0\0\0\0\0\0\0	\0\0\0�7Yn��IA��J��t\n�.�q�IAhYZZ�t\n�=?1#ćIA�VGu\n�ƟM͇IA�\Z9u\n�H���·IA����u\n�J�㣇IA)b��Dv\n����e��IAX����u\n��챇IA{xwu\n��7Yn��IA��J��t\n�','manual','active'),(84,'\0\0\0\0\0\0\0\0\0\0\0\0\0!�X��IA���Pp\n����IA�\Z��p\n�,��F�IAtPxO�q\n���|��IA�Ѣ5oq\n�!�X��IA���Pp\n�','manual','active'),(89,'\0\0\0\0\0\0\0\0\0\0\0\0\0����ŇIA��y�x\n����ՇIAws�}x\n���I�ևIA\'&�w�x\n�k) �ƇIAC��!y\n�k) �ƇIAC��!y\n�2H��ƇIANI��x\n�����ŇIA��y�x\n�','manual','active'),(90,'\0\0\0\0\0\0\0\0\0\0\0\0\0����IA�`y\n��z�^��IAs(�	z\n�^E�Z��IAz\roLz\n�\\����IAQ��k�z\n����<��IAc��1�z\n�e_h���IA��O�z\n�з��IA���{\n���.��IA���z\n������IA�.쥝z\n����kǇIA�;�Zz\n�2H��ƇIAW�3��y\n�����ŇIA��N�y\n�\n(y$؇IA�.^Ƀy\n��n�هIAL�+��y\n�����݇IAe�-8�y\n�G�\'܇IAx�)y\n���ŇIA��o�Xy\n���ćIA��2y\n�����IA�`y\n�','manual','active'),(91,'\0\0\0\0\0\0\0\0\0\0	\0\0\0^E�Z��IApgW�\r|\n�pV�!��IA�˄:~\n�z��IAi@��}\n�a�d��IAԼ��}\n�=?1#ćIAJ�we}\n��^��ÇIA�g�\\\'}\n�O\0j\rևIA���\n}\n�1��ӇIABRv�{\n�^E�Z��IApgW�\r|\n�','manual','active'),(92,'\0\0\0\0\0\0\0\0\0\0\0\0\0�`�߇IAF!9_u\n��cK.��IAz!�yv\n���j�IA�Q�)w\n�R=���IA�����v\n��Ƶ���IA�|r��v\n��Ƶ���IA�jt��v\n��`�߇IAF!9_u\n�','manual','active'),(93,'\0\0\0\0\0\0\0\0\0\0\0\0\0y\rUK�IAJ�O�.w\n�JӠ��IA a�w\n��@��IA�6b�w\n�N��0�IA(}\0~�w\n�y\rUK�IAJ�O�.w\n�','manual','active'),(94,'\0\0\0\0\0\0\0\0\0\0\0\0\0�S��IAI^�0x\n�������IA(}\0~�w\n�&@���IA��kXby\n���v:�IA ����z\n��΍5�IA���{\n�nq@�IAUV���z\n�FFb)�IAQ��k�z\n��S��IAI^�0x\n�','manual','active'),(95,'\0\0\0\0\0\0\0\0\0\0\0\0\0j����IA<�UJ w\n��s��IA׽�w\n�<��M\n�IA,���x\n��}�X�IA��c�w\n�j����IA<�UJ w\n�','manual','active'),(96,'\0\0\0\0\0\0\0\0\0\0\0\0\0b�V��IA:*�C\"x\n��6���IA���x\n�(}!��IA9ӄ=$y\n������IA�}Y7y\n�b�V��IA:*�C\"x\n�','manual','active'),(97,'\0\0\0\0\0\0\0\0\0\0\0\0\0��G��IA�b;zy\n��x���IA��e�py\n�!c��IA�6Qz\n�)���IA�M�_z\n���G��IA�b;zy\n�','manual','active'),(98,'\0\0\0\0\0\0\0\0\0\0\0\0\00�c��IA��igy\n�^�Ra�IA�.쥝z\n�B����IA���z\n��Bm�IA��LȮy\n���$�IA��ctuy\n��G���IA�Mw�Ey\n�0�c��IA��igy\n�','manual','active'),(99,'\0\0\0\0\0\0\0\0\0\0\0\0\0��%�IA\"q���{\n�T*���IAѱ�hN{\n�����\n�IA%�[R}\n������IA-��=�}\n���%�IA\"q���{\n�','manual','active'),(100,'\0\0\0\0\0\0\0\0\0\0\0\0\0YW`��IAE�v�}\n���+�IA�y�#,}\n�7���IAD�Rp�~\n��AO���IA��5�~\n�YW`��IAE�v�}\n�','manual','active'),(101,'\0\0\0\0\0\0\0\0\0\0\0\0\0Ϧ~�IA)��!\n�xL�/�IA��1��~\n�|����IA�c�I-�\n�`q�\Z��IA`�]�\n�Ϧ~�IA)��!\n�','manual','active'),(102,'\0\0\0\0\0\0\0\0\0\0\0\0\0o��L��IAr��Ռ�\n�b^���IA:S�\n��(���IA:#ȁ\n���\n`��IA!�=�\n���1��IAn\0xց\n�kh^��IA��*��\n�o��L��IAr��Ռ�\n�','manual','active'),(103,'\0\0\0\0\0\0\0\0\0\0\0\0\0��Q�IA�I��1{\n�6�� �IA|y�j�z\n��y%�IA�2Eh|\n���E��IA.N!D�|\n��e��IAb3]+�{\n���Q�IA�I��1{\n�','manual','active'),(104,'\0\0\0\0\0\0\0\0\0\0\0\0\0xL�/�IA�	E�~\n�:>Z�$�IA8\\�z~\n��0ȧ)�IA+��,E�\n�]�IA�i��t�\n�xL�/�IA�	E�~\n�','manual','active'),(105,'\0\0\0\0\0\0\0\0\0\0\0\0\01��ӇIA7�n,�{\n�Y�%���IAZAxI�{\n�R=���IAz=�Y�}\n�����ŇIA���}\n��^��ÇIAؾ�??}\n����YևIA��y}\n�1��ӇIA7�n,�{\n�','manual','active'),(106,'\0\0\0\0\0\0\0\0\0\0\0\0\0���<��IA�݂~\n��S��IAT\Z�˞}\n��S�IAdp9��~\n��챇IA��l>\n��챇IA��l>\n����<��IA�݂~\n�','manual','active'),(107,'\0\0\0\0\0\0\0\0\0\0\0\0\0�8��IA��0\n����2̇IA��+��~\n�@|��ԇIA]d�a�\n��֕ʸ�IA��Ȑ�\n��8��IA��0\n�','manual','active'),(108,'\0\0\0\0\0\0\0\0\0\0\0\0\0��\\/χIA�cm\n���2��IA��5�~\n�����IA,��\n��:�ԇIAY�Ց?�\n�rC��͇IA?���r\n���\\/χIA�cm\n�','manual','active'),(109,'\0\0\0\0\0\0\0\0\0\0\0\0\0�`���IA���}q\n�(�yΈIApׅ޶q\n�q�4�ψIA���cs\n��`���IAk+g�r\n��`���IA���}q\n�','manual','active'),(110,'\0\0\0\0\0\0\0\0\0\0\0\0\0�-ĺ�IA/n�r\n��*U^ψIA��&s\n�Wq�(шIA܄@2t\n��-ĺ�IA����(t\n��-ĺ�IA/n�r\n�','manual','active'),(111,'\0\0\0\0\0\0\0\0\0\0\0\0\0\\��w��IA܄@2t\n�q�4�ψIA+�@t\n��ͤCЈIAF!9_u\n�P�<ۼ�IA.2	\0du\n�\\��w��IA܄@2t\n�','manual','active'),(112,'\0\0\0\0\0\0\0\0\0\0\0\0\0A#}���IAF!9_u\n�凌,ΈIAF!9_u\n�bhu�ΈIA��0�v\n�A#}���IA��i�v\n�A#}���IAF!9_u\n�','manual','active'),(113,'\0\0\0\0\0\0\0\0\0\0\0\0\0��m���IA�%|��v\n���%�͈IA��0�v\n�bhu�ΈIA���x\n��W���IA�2���x\n���m���IA�%|��v\n�','manual','active'),(114,'\0\0\0\0\0\0\0\0\0\0\0\0\0M\Z�E��IA�2���x\n���%�͈IA��D�w\n�jҷ�ȈIApgW�\r|\n��F 泈IA	�Kf{\n�M\Z�E��IA�2���x\n�','manual','active'),(115,'\0\0\0\0\0\0\0\0\0\0\0\0\0Þv�-�IAK���{\n���E�IA��O�z\n�����G�IA4|��{\n����/�IAb3]+�{\n�Þv�-�IAK���{\n�','manual','active'),(116,'\0\0\0\0\0\0\0\0\0\0\0\0\0�&�,�IA�F8|\n�\'l��K�IA��fH�{\n�/��R�IA���ڵ\n���n�@�IA(B��#�\n�HrT�2�IA�A\"�	\n��&�,�IA�F8|\n�','manual','active'),(117,'\0\0\0\0\0\0\0\0\0\0	\0\0\08�\r�j�IA���Gz\n��9��i�IA�E[�|\n�C��~u�IA���}\n�np}Z��IA%�[R}\n�u�����IA�*��o{\n���y�t�IA>�1��y\n���y�t�IA>�1��y\n���y�t�IA>�1��y\n�8�\r�j�IA���Gz\n�','manual','active'),(118,'\0\0\0\0\0\0\0\0\0\0\0\0\0J ��$�IA�-\n��r\n��44�3�IA���^p\n��`�s?�IA+�F�n\n���y%�IA���m\n�CM��IAZ{�	n\n���?��IA����rn\n����IA��q	po\n�}7���IA�(<mp\n�Ɯ�]�IA�Q�q\n��:�\Z�IA�2K�r\n��Tk�!�IA��\0�\0s\n�J ��$�IA�-\n��r\n�','manual','active'),(119,'\0\0\0\0\0\0\0\0\0\0\0\0\0�[C�5�IA�H\\�o\n�\0�(,P�IA[F$!/p\n�6�Y�L�IAi��`�s\n�Ε�%+�IA8Ҿ�s\n���9-%�IA�a��r\n��[C�5�IA�H\\�o\n�','manual','active'),(120,'\0\0\0\0\0\0\0\0\0\0\n\0\0\0��\0�IA{��s\n����n�IA*��Bu\n�A�?�IAĹ�$�x\n�\n��*<�IA��0�v\n��<��5�IA�-&Wu\n��ei�&�IAm)�Ѻs\n�e�ϋ�IAL���r\n���+�IA�Fζ|s\n�mU��IAC��ҏs\n���\0�IA{��s\n�','manual','active'),(121,'\0\0\0\0\0\0\0\0\0\0\0\0\0�;׫>�IA$A]1r\n��3XH<�IA|�,��r\n����2N�IA�\0�\0s\n�@��.Q�IA`�8�ur\n�@��.Q�IA`�8�ur\n�@��.Q�IA`�8�ur\n��;׫>�IA$A]1r\n�','manual','active'),(122,'\0\0\0\0\0\0\0\0\0\0\0\0\0�P��;�IA��.ٍr\n��n�\0M�IA��\0�\0s\n�Д�D�IA�o�ft\n�g�;S3�IA���%�s\n��P��;�IA��.ٍr\n�','manual','active'),(123,'\0\0\0\0\0\0\0\0\0\0\0\0\0����3�IA�\n���s\n�9�L�0�IAL�e�~t\n����A�IA��7X�t\n���$XD�IA/�qbt\n�����3�IA�\n���s\n�','manual','active'),(124,'\0\0\0\0\0\0\0\0\0\0\0\0\0�%m\n0�IArb>�t\n�o;~Z-�IA��7X�t\n�U�=�.�IA��+u\n��Yg_>�IATU�mu\n�K���B�IA��7X�t\n��%m\n0�IArb>�t\n�','manual','active'),(125,'\0\0\0\0\0\0\0\0\0\0\0\0\0Y��P�IA�0�r\n��0��M�IAø��s\n�0\n�^�IAC��ҏs\n��H�b�IA�P,�r\n�Y��P�IA�0�r\n�','manual','active'),(126,'\0\0\0\0\0\0\0\0\0\0\0\0\0VOAMM�IA����!s\n�ń�PJ�IAF�C�s\n��E;\\�IA����#t\n�0\n�^�IA*�ę�s\n��N��^�IA*�ę�s\n�0\n�^�IA*�ę�s\n�VOAMM�IA����!s\n�','manual','active'),(127,'\0\0\0\0\0\0\0\0\0\0\0\0\0��rJ�IAU:���s\n���G�IA	fuxXt\n���$XD�IA��5�t\n�ޯ]BV�IA�\Z9u\n�d�;�[�IA�a��t\n���rJ�IAU:���s\n�','manual','active'),(128,'\0\0\0\0\0\0\0\0\0\0\0\0\0K���B�IAՀ9��t\n�HG�>�IATU�mu\n����Q�IA�L��u\n�	\r]U�IA8��Pu\n�	\r]U�IA8��Pu\n�K���B�IAՀ9��t\n�','manual','active'),(129,'\0\0\0\0\0\0\0\0\0\0\0\0\0��U^i�IAܧ�\ns\n��H�b�IA܄@2t\n�?cz�IA�*C��t\n�趎H{�IAd�g�yt\n��Tˤ��IA��P=�t\n���؂��IAᒩ{�s\n���؂��IAᒩ{�s\n���U^i�IAܧ�\ns\n�','manual','active'),(130,'\0\0\0\0\0\0\0\0\0\0\0\0\0�Y�-|�IA�H\\��t\n�p�=��IA��J��t\n�����IA�nɦv\n�\'��\\�IA�:4u\n�\\��a�IA����(t\n��Q_�y�IAaE��t\n��Y�-|�IA�H\\��t\n�','manual','active'),(131,'\0\0\0\0\0\0\0\0\0\0\0\0\0�g�f�IAX����u\n����3b�IA7���Rv\n�Zyn�{�IA��h��v\n�^�v�IA��4v\n�$%=*�IA��4v\n��g�f�IAX����u\n�','manual','active'),(132,'\0\0\0\0\0\0\0\0\0\0\0\0\0O�!׈IA�l��q\n��E҈ֈIAT��)Hs\n�����IAb��~Vs\n���\"�IAN�6�zr\n�O�!׈IA�l��q\n�','manual','active'),(133,'\0\0\0\0\0\0\0\0\0\0\0\0\0�ߢ\nՈIA���E[s\n�èZX�IA���`s\n�����IA�1{#Jt\n��ߢ\nՈIA!}\\Et\n��ߢ\nՈIA���E[s\n�','manual','active'),(134,'\0\0\0\0\0\0\0\0\0\0\0\0\0x�!׈IA=�k[pt\n��-\Z��IA%�i\"ut\n�6k:��IA<fUru\n��cb<ֈIA.2	\0du\n��cb<ֈIA.2	\0du\n�i���ՈIA\rrZu\n�x�!׈IA=�k[pt\n�','manual','active'),(135,'\0\0\0\0\0\0\0\0\0\0\0\0\0�cb<ֈIAC�hu\n��-\Z��IA.2	\0du\n�oL�=�IA��i�v\n�&B�ֈIA�����v\n��cb<ֈIAC�hu\n�','manual','active'),(136,'\0\0\0\0\0\0\0\0\0\0\0\0\0�D҈ֈIA��i�v\n�èZX�IA��0�v\n�\'�z��IA\"C��y\n��ߢ\nՈIA��LȮy\n��D҈ֈIA��i�v\n�','manual','active'),(137,'\0\0\0\0\0\0\0\0\0\0\0\0\0�@ӈIA0�7U�y\n�Ab���IAs(�	z\n��x���IAݎ6�^|\n�0���ՈIAݎ6�^|\n�ŪψIA�VY�|\n�q�4�ψIA/z��{\n��@ӈIA0�7U�y\n�','manual','active'),(138,'\0\0\0\0\0\0\0\0\0\0\0\0\0~�io�IA	�Kf{\n��O�IA����I{\n������IA�¢/S{\n�H,s���IA@�\r\n�|\n��d���IAuR��|\n�����IA�oҜ|\n�èZX�IA�oҜ|\n�~�io�IA	�Kf{\n�','manual','active'),(139,'\0\0\0\0\0\0\0\0\0\0\0\0\0oL�=�IA���Bz\n�<5�>��IAz\roLz\n�T����IA�}�@{\n����I��IA�&�0({\n��]��IA��k{\n�oL�=�IA	�Kf{\n�oL�=�IA���Bz\n�','manual','active'),(140,'\0\0\0\0\0\0\0\0\0\0\0\0\0\'�z��IA�}7&z\n�K��p��IA���Gz\n����\0�IAj���\Zy\n����2�IANI��x\n�����IA��o�Xy\n�6k:��IA��o�Xy\n�\'�z��IA�}7&z\n�','manual','active'),(141,'\0\0\0\0\0\0\0\0\0\0\0\0\0���2�IAk��y\n�Z=q�\0�IAQvy\n�܃m�IA��`\nx\n�6k:��IA��D�w\n�èZX�IAws�}x\n��n���IA\\}�Zy\n����2�IAk��y\n�','manual','active'),(142,'\0\0\0\0\0\0\0\0\0\0	\0\0\06k:��IA�c��v\n�6k:��IA����w\n�����IA����w\n�e���IA��`\nx\n��\'`R�IA<�UJ w\n�������IA�:].\rw\n�S#�w��IA a�w\n�}�����IA�l��v\n�6k:��IA�c��v\n�','manual','active'),(143,'\0\0\0\0\0\0\0\0\0\0\0\0\0oL�=�IA�\n��,v\n��-\Z��IA�l��v\n�܃m�IA*_gw\n��О�IA���5�u\n����I��IA����u\n�oL�=�IA�\n��,v\n�','manual','active'),(144,'\0\0\0\0\0\0\0\0\0\0\0\0\0*t�T�IAl�L˼t\n�@�0��IA��N�t\n�e���IA���n�u\n�@���IA���R�u\n��>Q�IAf�S�u\n��T)��IAX����u\n�*t�T�IAl�L˼t\n�','manual','active'),(145,'\0\0\0\0\0\0\0\0\0\0\0\0\0�I�IAl�L˼t\n�܃m�IA��J��t\n�@�0��IA��\n�s\n�@���IAw伵�s\n��-\Z��IA���ds\n��I�IAl�L˼t\n�','manual','active'),(146,'\0\0\0\0\0\0\0\0\0\0\0\0\0���IAޮ4�r\n��{�	\0�IA���\ns\n�܃m�IA�����s\n�=���IA{��s\n�\'�z��IA���)Hs\n����IAޮ4�r\n�','manual','active'),(147,'\0\0\0\0\0\0\0\0\0\0\0\0\0����IA�I��1{\n��\'`R�IA�����|\n��ч��IA7��!�}\n����\Z�IA�}�@{\n����\Z�IA�}�@{\n�`)��IA����D{\n�����IA�I��1{\n�','manual','active'),(148,'\0\0\0\0\0\0\0\0\0\0\0\0\0\nn��IA�C?9�y\n���P\Z�IA\"V=\0�y\n����\Z�IA�I��1{\n�Ќ���IA��{\n�\nn��IA�C?9�y\n�','manual','active'),(149,'\0\0\0\0\0\0\0\0\0\0\0\0\0�8^�IA���x\n����\Z�IA�!�άx\n�s\'��IA�E��y\n��v~��IA��LȮy\n��8^�IA���x\n�','manual','active'),(150,'\0\0\0\0\0\0\0\0\0\0\0\0\0\r�=��IA@�G�Aw\n�\\*%~�IA�@@�Tw\n�����IA���]�x\n��8^�IAws�}x\n���e�IAws�}x\n�aW���IAws�}x\n�\r�=��IA@�G�Aw\n�','manual','active'),(151,'\0\0\0\0\0\0\0\0\0\0\0\0\0aW���IAO��Nv\n�\\*%~�IA]��k\\v\n�#I�1�IA�K-8w\n��v~��IAfDIKw\n�aW���IAO��Nv\n�','manual','active'),(152,'\0\0\0\0\0\0\0\0\0\0\0\0\0�8^�IAaE��t\n�k���IA8��Pu\n���z!�IA]��k\\v\n���e�IAs�OIv\n��8^�IAaE��t\n�','manual','active'),(153,'\0\0\0\0\0\0\0\0\0\0\0\0\0cD��%�IA����s\n��Kz]9�IA=�k[pt\n���J�7�IA����u\n��gE��IA.2	\0du\n�cD��%�IA����s\n�','manual','active'),(154,'\0\0\0\0\0\0\0\0\0\0\0\0\0����IAc���{u\n�\r:|�4�IA���n�u\n�\r:|�4�IA�Yv�v\n�k���IA��0�v\n�����IAc���{u\n�','manual','active'),(155,'\0\0\0\0\0\0\0\0\0\0\0\0\0����IA�Yv�v\n�����2�IA�c��v\n����d3�IA7���\0x\n����IA���w\n�����IA�Yv�v\n�','manual','active'),(156,'\0\0\0\0\0\0\0\0\0\0\0\0\0��՘�IA�6b�w\n�����2�IA7���\0x\n�\n�=1�IA5Z��y\n�����IA\0���x\n���՘�IA�6b�w\n�','manual','active'),(157,'\0\0\0\0\0\0\0\0\0\0\0\0\0�g�IA7�>�x\n�}o�1�IA+���y\n�n�]h0�IAHy9��y\n��^Ɓ�IA�2Ar�y\n��g�IA7�>�x\n�','manual','active'),(158,'\0\0\0\0\0\0\0\0\0\0\0\0\0.@6��IAiZ �z\n�n�]h0�IA���Gz\n��f�6/�IA�Z��6{\n��^Ɓ�IAg��{\n�.@6��IAiZ �z\n�','manual','active'),(159,'\0\0\0\0\0\0\0\0\0\0\0\0\0�^Ɓ�IA�&�0({\n�%�.�.�IA����I{\n���NQ.�IA.N!D�|\n����\Z�IA��*a{|\n��^Ɓ�IA�&�0({\n�','manual','active'),(160,'\0\0\0\0\0\0\0\0\0\0\0\0\0�u���IA_�|\n�/8�IA)~��s}\n���+�IA[���}\n��?�-�IAc�\'�|\n��u���IA_�|\n�','manual','active'),(161,'\0\0\0\0\0\0\0\0\0\0\0\0\0|T�Ү�IAl�d�{\n��(ʠ�IA\"q���{\n�0�	���IAy��]�|\n�3�T��IA�oҜ|\n��=����IA�I>�K|\n�|T�Ү�IAl�d�{\n�','manual','active'),(162,'\0\0\0\0\0\0\0\0\0\0\0\0\0�ЙO��IAy��]�|\n�ϱ�IA�;#}�|\n��0���IA�V�\"}\n��#$X��IA)~��s}\n�,�*��IA�\"�@}\n��kjњ�IAؾ�??}\n��ЙO��IAy��]�|\n�','manual','active'),(163,'\0\0\0\0\0\0\0\0\0\0\0\0\0�窟��IAT\Z�˞}\n���ݥ�IA��ՔM}\n���d&��IA����~\n���+<��IA�iY~\n��窟��IAT\Z�˞}\n�','manual','active'),(164,'\0\0\0\0\0\0\0\0\0\0\0\0\0忛���IA@`�p~\n��#$X��IAź�s~\n��,����IA��-5�~\n��%��IA��9\n�忛���IA@`�p~\n�','manual','active'),(165,'\0\0\0\0\0\0\0\0\0\0\0\0\0�%��IA��0\n��Į��IA!\0�HX�\n���d&��IA!\0�HX�\n���㉫�IA��0\n��%��IA��0\n�','manual','active'),(166,'\0\0\0\0\0\0\0\0\0\0\0\0\0\\_���IA�i��t�\n��б��IA��]��\n�霟���IAޏ���\n�,�*��IAvS�;\\�\n��(7ᢈIA`�]�\n�\\_���IA�i��t�\n�','manual','active'),(167,'\0\0\0\0\0\0\0\0\0\0\0\0\0��d&��IA[B>�=�\n�FPF���IA]d�a�\n�ww�`��IA��ʂ\n�{����IAT\0)%r�\n���d&��IA[B>�=�\n�','manual','active'),(168,'\0\0\0\0\0\0\0\0\0\0\0\0\0iC���IA!\0�HX�\n���ۥ��IA:S�\n�{����IAm�*^m�\n��A��IA[B>�=�\n�iC���IA!\0�HX�\n�','manual','active'),(169,'\0\0\0\0\0\0\0\0\0\0\0\0\0?��IA��0\n�\\��IA�R �\n�~�+���IA!\0�HX�\n������IA�c�I-�\n�?��IA��0\n�','manual','active'),(170,'\0\0\0\0\0\0\0\0\0\0\0\0\0���.��IA%�[R}\n�W��ĈIA�iY~\n��j ÈIA�A\"�	\n��,����IAv4\n�����IAFw�7~\n�J݄���IA-��=�}\n����.��IA%�[R}\n�','manual','active'),(171,'\0\0\0\0\0\0\0\0\0\0\0\0\0��\0��IAz\"_d�{\n�7|�鰈IA \Z\'�|\n���)RĈIAzq\0F~\n�jҷ�ȈIA��*a{|\n��G�ȈIA��*a{|\n���\0��IAz\"_d�{\n�','manual','active'),(172,'\0\0\0\0\0\0\0\0\0\0\0\0\0S䵓͈IA�;#}�|\n���_�IAuR��|\n��oMz�IA���Z}}\n�v�ɈIA�q���}\n�S䵓͈IA�;#}�|\n�','manual','active'),(173,'\0\0\0\0\0\0\0\0\0\0\0\0\0�W�ʈIAbN� �}\n��\n���IA���Z}}\n��oMz�IA�}V)~\n�$�؈IA��o�J~\n��G�ȈIAzq\0F~\n��W�ʈIAbN� �}\n�','manual','active'),(174,'\0\0\0\0\0\0\0\0\0\0\0\0\0jҷ�ȈIA�iY~\n�����ƈIA��&\n�{C+��IA��+��~\n���\\��IA���~\n���!n׈IAzq\0F~\n�jҷ�ȈIA�iY~\n�','manual','active'),(175,'\0\0\0\0\0\0\0\0\0\0\0\0\0�ǈIA��l>\n��&�ňIA�����\n��t`ۈIA�q�g�\n��LQ�؈IA�cm\n��ǈIA��l>\n�','manual','active'),(176,'\0\0\0\0\0\0\0\0\0\0\0\0\0e	�ĈIA嶿��\n��z\Z;IAѲj�π\n��;S%ԈIAv8xF��\n��ߢ\nՈIA�+�K�\n�e	�ĈIA嶿��\n�','manual','active'),(177,'\0\0\0\0\0\0\0\0\0\0\0\0\0\0��U��IAw�2BZ�\n�&B�ֈIA*d:&G�\n�3.�8وIA����\n���WՈIAH>���\n��q�׿�IA��I�\n�\0��U��IAw�2BZ�\n�','manual','active'),(178,'\0\0\0\0\0\0\0\0\0\0\0\0\0��ۥ��IAh��M�\n���WՈIA,��\n��l�؈IA�`�b�\n��D҈ֈIAުN���\n��J����IA�����\n���ۥ��IAh��M�\n�','manual','active'),(179,'\0\0\0\0\0\0\0\0\0\0\0\0\0#Z<*�IA�u\0{�|\n�H,s���IAؾ�??}\n��O�IA�&Q\0\n�g���IA��/n�~\n�#Z<*�IA�u\0{�|\n�','manual','active'),(180,'\0\0\0\0\0\0\0\0\0\0\0\0\0���وIA�\Z�\n�{��ڈIA�ǽJ�\n��G���IA�N���\n��O�IA��7R�~\n����وIA�\Z�\n�','manual','active'),(181,'\0\0\0\0\0\0\0\0\0\0\0\0\0tys�ӈIA+��,E�\n��ͤCЈIAv8xF��\n���WՈIABS<_B�\n�.���IA\"rUD�\n�=���IA�N���\n�tys�ӈIA+��,E�\n�','manual','active'),(182,'\0\0\0\0\0\0\0\0\0\0\0\0\0��WՈIA��4{U�\n�.���IA\na��\n��I�IA����x�\n�&B�ֈIA�4�V��\n��D҈ֈIA�4�V��\n�&B�ֈIA�4�V��\n�&B�ֈIA�#����\n���WՈIA��4{U�\n�','manual','active'),(183,'\0\0\0\0\0\0\0\0\0\0\0\0\0x�!׈IA�z�r��\n��oMz�IA�\0���\n��-\Z��IA\n��\0��\n����IA(($��\n�i���ՈIAުN���\n�x�!׈IA�z�r��\n�','manual','active'),(184,'\0\0\0\0\0\0\0\0\0\0\0\0\0��k�IAҟUł\n�Ќ���IA�4�V��\n��Ŝ��IA��P4��\n���Rt��IA���g[�\n�~�io�IA]\Z��\n���k�IAҟUł\n�','manual','active'),(185,'\0\0\0\0\0\0\0\0\0\0\0\0\0@���IA?�I� �\n���	�IA\n�S	�\n�Y��\r�IAz̼�}�\n�����IA��Ȑ�\n�@���IA?�I� �\n�','manual','active'),(186,'\0\0\0\0\0\0\0\0\0\0\0\0\05u��IA�����\n�Ji��IA\"WOV\n�`)��IA��b��\n�1�d�IA�E|*�\n�5u��IA�����\n�','manual','active'),(187,'\0\0\0\0\0\0\0\0\0\0\0\0\0H,s���IA��x:}\n�.@6��IA~����}\n�V`m0\n�IA��+��~\n����I��IA-3C\n�H,s���IA��x:}\n�','manual','active'),(188,'\0\0\0\0\0\0\0\0\0\0\0\0\0j^�,�IANJZT~\n�.@6��IA����~\n��A�|\n�IA�\r(��~\n��<���IA�l�ʀ\n���A&�IAr��Ռ�\n�j^�,�IANJZT~\n�','manual','active'),(189,'\0\0\0\0\0\0\0\0\0\0\0\0\0�8^�IA\0�K\'�\n���՘�IA�|���\n��r*$�IA0@�8�\n�\\*%~�IA]d�a�\n��3K��IA�#����\n��8^�IA\0�K\'�\n�','manual','active'),(190,'\0\0\0\0\0\0\0\0\0\0\0\0\0����IA\n��\0��\n�\\*%~�IA�޺s��\n�/8�IA#Xɝׄ\n�<5�>��IA���Js�\n��8^�IAEޥ�\n�����IA\n��\0��\n�','manual','active'),(191,'\0\0\0\0\0\0\0\0\0\0\0\0\0����G�IA�jt��v\n�Y79�:�IA}����v\n�h���;�IA ��Uu\n���D�IA�rs/u\n��$�G�IAآ��v\n�����G�IA�jt��v\n�','manual','active'),(192,'\0\0\0\0\0\0\0\0\0\0\0\0\0 V�B:�IAof�1�v\n�e.�+8�IAs�՗[x\n�#�B�J�IA�U�#�x\n�����G�IA�~��v\n� V�B:�IAof�1�v\n�','manual','active');
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
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_property`
--

LOCK TABLES `property_property` WRITE;
/*!40000 ALTER TABLE `property_property` DISABLE KEYS */;
INSERT INTO `property_property` VALUES (88,8002,139,'Little Street','Parramatta',88,'active'),(2,2000,1,'Stacey','Ashfield',2,'active'),(3,2001,2,'Stacey','Ashfield',3,'active'),(4,2002,3,'Stacey','Ashfield',4,'active'),(5,2003,4,'Stacey','Ashfield',5,'active'),(6,2004,5,'Stacey','Ashfield',6,'active'),(7,2005,6,'Stacey','Ashfield',7,'active'),(8,2006,7,'Stacey','Ashfield',8,'active'),(9,3000,12,'Myall','Cabramatta',9,'active'),(10,2007,8,'Stacey','Ashfield',10,'active'),(11,1000,52,'Phillip Steet','Parramatta',11,'active'),(12,3078,13,'Myall','Cabramatta',12,'active'),(13,2006,1,'paul st','Ashfield',13,'active'),(14,3002,14,'Myall','Cabramatta',14,'active'),(15,1001,54,'Phillip Steet','Parramatta',15,'active'),(16,2008,2,'paul st','Ashfield',16,'active'),(17,1003,56,'Phillip Steet','Parramatta',17,'active'),(18,3003,15,'Myall','Cabramatta',18,'active'),(19,2009,3,'paul st','Ashfield',19,'active'),(20,1004,58,'Phillip Steet','Parramatta',20,'active'),(21,3004,16,'Myall','Cabramatta',21,'active'),(22,3005,17,'Myall','Cabramatta',22,'active'),(23,1005,60,'Phillip Steet','Parramatta',23,'active'),(24,3006,18,'Myall','Cabramatta',24,'active'),(25,1006,62,'Phillip Steet','Parramatta',25,'active'),(26,3007,23,'John','Cabramatta',26,'active'),(27,1007,64,'Phillip Steet','Parramatta',27,'active'),(28,3008,24,'John','Cabramatta',28,'active'),(29,3009,25,'John','Cabramatta',29,'active'),(30,1008,5,'King Street','Parramatta',30,'active'),(31,3010,26,'John','Cabramatta',31,'active'),(32,1009,7,'King Street','Parramatta',32,'active'),(33,3011,112,'Bee','Cabramatta',33,'active'),(34,1010,101,'Wall Steet','Parramatta',34,'active'),(35,3012,122,'Bee','Cabramatta',35,'active'),(36,1011,103,'Wall Steet','Parramatta',36,'active'),(37,3013,121,'Bee','Cabramatta',37,'active'),(38,3013,121,'Bee','Cabramatta',38,'active'),(39,3014,119,'Bee','Cabramatta',39,'active'),(40,1012,111,'Wall Steet','Parramatta',40,'active'),(41,3015,32,'Goose','Cabramatta',41,'active'),(42,1015,99,'Wall Steet','Parramatta',42,'active'),(43,3016,33,'Goose','Cabramatta',43,'active'),(44,1019,15,'Wall Steet','Parramatta',44,'active'),(45,3017,34,'Goose','Cabramatta',45,'active'),(46,1025,45,'Wall Steet','Parramatta',46,'active'),(47,3018,236,'Hugh','Cabramatta',47,'active'),(48,3019,11,'Doom','Cabramatta',48,'active'),(50,9000,1,'Harold St','Glebe',50,'active'),(51,9001,2,'Harold St','Glebe',51,'active'),(52,9002,3,'Harold St','Glebe',52,'active'),(53,9003,4,'Harold St','Glebe',53,'active'),(54,9004,5,'Harold St','Glebe',54,'active'),(55,9005,6,'Harold St','Glebe',55,'active'),(56,9006,7,'Harold St','Glebe',56,'active'),(57,9006,7,'Harold St','Glebe',57,'active'),(58,9007,8,'Harold St','Glebe',58,'active'),(59,9008,9,'Harold St','Glebe',59,'active'),(60,9009,10,'Harold St','Glebe',60,'active'),(61,9010,11,'Harold St','Glebe',61,'active'),(62,9011,12,'Harold St','Glebe',62,'active'),(63,9012,1,'Paper St','Glebe',63,'active'),(64,9013,2,'Paper St','Glebe',64,'active'),(65,9014,3,'Paper St','Glebe',65,'active'),(66,9015,4,'Paper St','Glebe',66,'active'),(67,9016,5,'Paper St','Glebe',67,'active'),(68,9017,7,'Paper St','Glebe',68,'active'),(69,9018,8,'Paper St','Glebe',69,'active'),(70,9020,20,'Paper St','Glebe',70,'active'),(71,9021,21,'Paper St','Glebe',71,'active'),(72,9022,22,'Paper St','Glebe',72,'active'),(73,9023,23,'Paper St','glebe',73,'active'),(85,6666,239,'Auburn Road','Chatswood',85,'active'),(75,9024,24,'Paper St','Glebe',75,'active'),(76,9025,25,'Paper St','glebe',76,'active'),(77,8221,152,'Little Street','Parramatta',77,'active'),(78,9026,26,'Paper St','Glebe',78,'active'),(79,9027,27,'Paper St','Glebe',79,'active'),(80,9028,28,'Paper St','Glebe',80,'active'),(87,8001,137,'Little Street','Parramatta',87,'active'),(86,8000,135,'Little Street','Parramatta',86,'active'),(84,5555,230,'Auburn Road','Chatswood',84,'active'),(89,8003,141,'Little Street','Parramatta',89,'active'),(90,8004,143,'Little Street','Parramatta',90,'active'),(91,8005,145,'Little Street','Parramatta',91,'active'),(92,8010,1,'Eagle Street','Parramatta',92,'active'),(93,8011,2,'Eagle Street','Parramatta',93,'active'),(94,8012,3,'Eagle Street','Parramatta',94,'active'),(95,8013,4,'Eagle Street','Parramatta',95,'active'),(96,8014,5,'Eagle Street','Parramatta',96,'active'),(97,8015,6,'Eagle Street','Parramatta',97,'active'),(98,8016,7,'Eagle Street','Parramatta',98,'active'),(99,8017,9,'Eagle Street','Parramatta',99,'active'),(100,8018,11,'Eagle Street','Parramatta',100,'active'),(101,8019,13,'Eagle Street','Parramatta',101,'active'),(102,8020,14,'Eagle Street','Parramatta',102,'active'),(103,8021,15,'Eagle Street','Parramatta',103,'active'),(104,8022,16,'Eagle Street','Parramatta',104,'active'),(105,8006,147,'Little Street','Parramatta',105,'active'),(106,8007,148,'Little Street','Parramatta',106,'active'),(107,8008,149,'Little Street','Parramatta',107,'active'),(108,8009,153,'Little Street','Parramatta',108,'active'),(109,9029,1,'Dixon Street','Glebe',109,'active'),(110,9030,2,'Dixon Street','Glebe',110,'active'),(111,9031,3,'Dixon Street','Glebe',111,'active'),(112,9032,4,'Dixon Street','Glebe',112,'active'),(113,9033,5,'Dixon Street','Glebe',113,'active'),(114,9034,6,'Dixon Street','Glebe',114,'active'),(115,9035,10,'York Street','Petersham',115,'active'),(116,9037,12,'York Street','Petersham',116,'active'),(117,9038,13,'York Street','Petersham',117,'active'),(118,9100,13,'Harold Street','Glebe',118,'active'),(119,9101,14,'Harold Street','Glebe',119,'active'),(120,2010,4,'Paul Street','Ashfield',120,'active'),(121,1500,1,'Church Street','Atarmon',121,'active'),(122,1501,2,'Church Street','Atarmon',122,'active'),(123,1502,3,'Church Street','Atarmon',123,'active'),(124,1503,4,'Church Street','Atarmon',124,'active'),(125,1504,5,'Church Street','Atarmon',125,'active'),(126,1505,6,'Church Street','Atarmon',126,'active'),(127,1506,7,'Church Street','Atarmon',127,'active'),(128,1507,8,'Church Street','Atarmon',128,'active'),(129,1508,50,'Croydon Road','Atarmon',129,'active'),(130,1509,51,'Croydon Road','Atarmon',130,'active'),(131,1510,15,'Croydon Road','Atarmon',131,'active'),(132,9036,7,'Dixon Street','Glebe',132,'active'),(133,9040,8,'Dixon Street','Glebe',133,'active'),(134,9041,9,'Dixon Street','Glebe',134,'active'),(135,9042,10,'Dixon Street','Glebe',135,'active'),(136,9043,11,'Dixon Street','Glebe',136,'active'),(137,9044,12,'Dixon Street','Glebe',137,'active'),(138,9045,1,'Gordon Avenue','Glebe',138,'active'),(139,9046,2,'Gordon Avenue','Glebe',139,'active'),(140,9047,3,'Gordon Avenue','Glebe',140,'active'),(141,9048,4,'Gordon Avenue','Glebe',141,'active'),(142,9049,5,'Gordon Avenue','Glebe',142,'active'),(143,9050,6,'Gordon Avenue','Glebe',143,'active'),(144,9051,7,'Gordon Avenue','Glebe',144,'active'),(145,9052,8,'Gordon Avenue','Glebe',145,'active'),(146,9053,9,'Gordon Avenue','Glebe',146,'active'),(147,9054,10,'Gordon Avenue','Glebe',147,'active'),(148,9055,11,'Gordon Avenue','Glebe',148,'active'),(149,9056,12,'Gordon Avenue','Glebe',149,'active'),(150,9057,13,'Gordon Avenue','Glebe',150,'active'),(151,9058,14,'Gordon Avenue','Glebe',151,'active'),(152,9059,15,'Gordon Avenue','Glebe',152,'active'),(153,9060,1,'Elezebeth Street','Glebe',153,'active'),(154,9061,2,'Elezebeth Street','Glebe',154,'active'),(155,9062,3,'Elezebeth Street','Glebe',155,'active'),(156,9063,4,'Elezebeth Street','Glebe',156,'active'),(157,9064,5,'Elezebeth Street','Glebe',157,'active'),(158,9065,6,'Elezebeth Street','Glebe',158,'active'),(159,9066,7,'Elezebeth Street','Glebe',159,'active'),(160,9067,8,'Elezebeth Street','Glebe',160,'active'),(161,9068,14,'York Street','Petersham',161,'active'),(162,9069,15,'York Street','Petersham',162,'active'),(163,9070,16,'York Street','Petersham',163,'active'),(164,9071,16,'York Street','Petersham',164,'active'),(165,9072,17,'York Street','Petersham',165,'active'),(166,9073,18,'York Street','Petersham',166,'active'),(167,9074,1,'Swan Avenue','Petersham',167,'active'),(168,9075,2,'Swan Avenue','Petersham',168,'active'),(169,9076,3,'Swan Avenue','Petersham',169,'active'),(170,9077,4,'Swan Avenue','Petersham',170,'active'),(171,9078,5,'Swan Avenue','Petersham',171,'active'),(172,9079,6,'Swan Avenue','Petersham',172,'active'),(173,9080,7,'Swan Avenue','Petersham',173,'active'),(174,9081,8,'Swan Avenue','Petersham',174,'active'),(175,9082,9,'Swan Avenue','Petersham',175,'active'),(176,9083,10,'Swan Avenue','Petersham',176,'active'),(177,9084,11,'Swan Avenue','Petersham',177,'active'),(178,9085,12,'Swan Avenue','Petersham',178,'active'),(179,9086,101,'Cleveland Steet','Petersham',179,'active'),(180,9087,102,'Cleveland Steet','Petersham',180,'active'),(181,9088,103,'Cleveland Steet','Petersham',181,'active'),(182,9089,104,'Cleveland Steet','Petersham',182,'active'),(183,9090,105,'Cleveland Steet','Petersham',183,'active'),(184,9091,106,'Cleveland Steet','Petersham',184,'active'),(185,9092,107,'Cleveland Steet','Petersham',185,'active'),(186,9093,108,'Cleveland Steet','Petersham',186,'active'),(187,9094,109,'Cleveland Steet','Petersham',187,'active'),(188,9095,110,'Cooper Street','Petersham',188,'active'),(189,9096,111,'Cooper Street','Petersham',189,'active'),(190,9097,112,'Cooper Street','Petersham',190,'active'),(191,9200,9,'Elezebeth Street','Glebe',191,'active'),(192,9201,10,'Elezebeth Street','Glebe',192,'active');
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

-- Dump completed on 2012-09-05 10:08:17
