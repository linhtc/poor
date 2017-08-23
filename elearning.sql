-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: elearning
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.17.04.1

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
-- Table structure for table `e_classes`
--

DROP TABLE IF EXISTS `e_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_classes`
--

LOCK TABLES `e_classes` WRITE;
/*!40000 ALTER TABLE `e_classes` DISABLE KEYS */;
INSERT INTO `e_classes` VALUES (1,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 1',0),(2,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 2',0),(3,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 3',0),(4,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 4',0),(5,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 5',0),(6,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 6',0),(7,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 7',0),(8,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 8',0),(9,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 9',0),(10,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 10',0),(11,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 11',0),(12,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp 12',0),(13,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp ôn thi ĐH',0),(14,'2017-08-08 14:28:15','2017-08-08 14:28:15','192.168.1.1','Lớp năng khiếu',0),(15,'2017-08-08 14:28:15','2017-08-08 14:39:10','127.0.0.1','Anh giao tiếp',0),(16,'2017-08-08 14:38:33','2017-08-08 14:38:33','127.0.0.1','test 2',1),(17,'2017-08-09 09:18:35','2017-08-09 09:18:35','127.0.0.1','1',1),(18,'2017-08-09 09:18:40','2017-08-09 09:18:40','127.0.0.1','1',1);
/*!40000 ALTER TABLE `e_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_doc_details`
--

DROP TABLE IF EXISTS `e_doc_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_doc_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `document` bigint(20) DEFAULT '0',
  `parent` bigint(20) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_doc` (`document`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=1502269657530 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_doc_details`
--

LOCK TABLES `e_doc_details` WRITE;
/*!40000 ALTER TABLE `e_doc_details` DISABLE KEYS */;
INSERT INTO `e_doc_details` VALUES (1,NULL,NULL,NULL,1,0,'Chuyen de 1',NULL,NULL,0),(2,NULL,NULL,NULL,1,1,'Chu de 1',NULL,NULL,0),(3,NULL,NULL,NULL,1,1,'Chu de 2',NULL,NULL,0),(4,NULL,NULL,NULL,1,0,'Chuyen de 2',NULL,NULL,0),(5,NULL,NULL,NULL,1,4,'Chu de 1',NULL,NULL,0),(6,NULL,NULL,NULL,1,4,'Chu de 2',NULL,NULL,0),(1502247269244,'2017-08-09 09:55:50','2017-08-09 15:12:13',NULL,3,0,'Chu de 1','',0,0),(1502247274897,'2017-08-09 09:55:50','2017-08-09 15:12:13',NULL,3,0,'Chu de 2','',3,0),(1502247279097,'2017-08-09 09:55:50','2017-08-09 15:12:13',NULL,3,1502247269244,'Bai 1','http://elearning.local/api/cdn/metadata/1502265582introduction-to-bluetooth-low-energy.pdf',1,0),(1502247282097,'2017-08-09 09:55:50','2017-08-09 15:12:13',NULL,3,1502247269244,'Bai 2','http://elearning.local/api/cdn/metadata/1502265592esp_wroom_32_datasheet_en.pdf',2,0),(1502247286367,'2017-08-09 09:55:50','2017-08-09 15:12:13',NULL,3,1502247274897,'Bai 1','',4,0),(1502247289017,'2017-08-09 09:55:50','2017-08-09 15:12:13',NULL,3,1502247274897,'Bai 2','',5,0),(1502247291824,'2017-08-09 09:55:50','2017-08-09 15:12:13',NULL,3,1502247274897,'Bai 3','',6,0),(1502269640773,'2017-08-09 16:07:53','2017-08-09 16:07:53',NULL,4,0,'Chuong 1','',0,0),(1502269644632,'2017-08-09 16:07:53','2017-08-09 16:07:53',NULL,4,0,'Chuong 2','',3,0),(1502269651799,'2017-08-09 16:07:53','2017-08-09 16:07:53',NULL,4,1502269640773,'Bai 1','http://elearning.local/api/cdn/metadata/1502269670introduction-to-bluetooth-low-energy.pdf',1,0),(1502269657529,'2017-08-09 16:07:53','2017-08-09 16:07:53',NULL,4,1502269640773,'Bai 2','',2,0);
/*!40000 ALTER TABLE `e_doc_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_documents`
--

DROP TABLE IF EXISTS `e_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `subject` bigint(20) DEFAULT '0',
  `class` bigint(20) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_doc` (`subject`,`class`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_documents`
--

LOCK TABLES `e_documents` WRITE;
/*!40000 ALTER TABLE `e_documents` DISABLE KEYS */;
INSERT INTO `e_documents` VALUES (1,NULL,'2017-08-21 14:52:25','127.0.0.1',2,1,0),(2,'2017-08-09 09:21:00','2017-08-09 09:21:00','127.0.0.1',3,1,0),(3,'2017-08-09 09:21:30','2017-08-21 14:17:06','127.0.0.1',4,1,0),(4,'2017-08-09 09:26:27','2017-08-09 16:29:21','127.0.0.1',4,2,0),(5,'2017-08-21 14:16:58','2017-08-21 14:16:58','127.0.0.1',4,3,0),(7,'2017-08-21 14:20:39','2017-08-21 14:35:37','127.0.0.1',5,6,0),(8,'2017-08-21 14:24:55','2017-08-21 14:31:51','127.0.0.1',5,5,1);
/*!40000 ALTER TABLE `e_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_new_classes`
--

DROP TABLE IF EXISTS `e_new_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_new_classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT '0',
  `subject` varchar(255) DEFAULT '0',
  `address_street` varchar(255) DEFAULT NULL,
  `address_district` varchar(255) DEFAULT NULL,
  `times_per_week` varchar(255) DEFAULT '0',
  `work_time` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) DEFAULT NULL,
  `done` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_new_classes`
--

LOCK TABLES `e_new_classes` WRITE;
/*!40000 ALTER TABLE `e_new_classes` DISABLE KEYS */;
INSERT INTO `e_new_classes` VALUES (1,NULL,NULL,NULL,'lop 1','toan','tl 43','thu duc','3','19h-21h','1tr2','giao vien nam',0,0);
/*!40000 ALTER TABLE `e_new_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_regis_requirements`
--

DROP TABLE IF EXISTS `e_regis_requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_regis_requirements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `requirement` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_regis_requirements`
--

LOCK TABLES `e_regis_requirements` WRITE;
/*!40000 ALTER TABLE `e_regis_requirements` DISABLE KEYS */;
INSERT INTO `e_regis_requirements` VALUES (1,NULL,NULL,NULL,'Sinh viên nam',NULL,0),(2,NULL,NULL,NULL,'Sinh viên nữ',NULL,0),(3,NULL,NULL,NULL,'Giáo viên nam',NULL,0),(4,NULL,NULL,NULL,'Giáo viên nữ',NULL,0);
/*!40000 ALTER TABLE `e_regis_requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_regis_students`
--

DROP TABLE IF EXISTS `e_regis_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_regis_students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `class` bigint(20) DEFAULT NULL,
  `subjects` varchar(255) DEFAULT NULL,
  `requirement_teachers` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `done` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'Da giai quyet xong chua',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_regis_students`
--

LOCK TABLES `e_regis_students` WRITE;
/*!40000 ALTER TABLE `e_regis_students` DISABLE KEYS */;
INSERT INTO `e_regis_students` VALUES (1,NULL,'2017-08-18 13:46:39',NULL,'linh','thu duc','tplus.tcl@gmail.com','0961095661',1,'mon toan','Sinh vien nam',NULL,1,0);
/*!40000 ALTER TABLE `e_regis_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_regis_teachers`
--

DROP TABLE IF EXISTS `e_regis_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_regis_teachers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `university` varchar(255) DEFAULT NULL,
  `speciality` varchar(255) DEFAULT NULL,
  `subjects` text,
  `classes` text,
  `areas` text,
  `means` varchar(255) DEFAULT NULL,
  `times_of_week` varchar(255) DEFAULT NULL,
  `period_time` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT '0',
  `dob` varchar(255) DEFAULT NULL COMMENT 'date of birth',
  `dog` varchar(255) DEFAULT NULL COMMENT 'date of graduate',
  `job` varchar(255) DEFAULT NULL,
  `avatar` text,
  `introduction` text,
  `done` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0' COMMENT 'Da giai quyet xong chua',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_regis_teachers`
--

LOCK TABLES `e_regis_teachers` WRITE;
/*!40000 ALTER TABLE `e_regis_teachers` DISABLE KEYS */;
/*!40000 ALTER TABLE `e_regis_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `e_subjects`
--

DROP TABLE IF EXISTS `e_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `e_subjects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `parent` bigint(20) DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `e_subjects`
--

LOCK TABLES `e_subjects` WRITE;
/*!40000 ALTER TABLE `e_subjects` DISABLE KEYS */;
INSERT INTO `e_subjects` VALUES (1,NULL,'2017-08-08 15:01:15','127.0.0.1',0,'Toán',0),(2,NULL,NULL,NULL,1,'Đại số',0),(3,NULL,NULL,NULL,1,'Hình học',0),(4,NULL,NULL,NULL,0,'Văn',0),(5,NULL,NULL,NULL,0,'Anh',0);
/*!40000 ALTER TABLE `e_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_groups`
--

DROP TABLE IF EXISTS `sys_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT '0' COMMENT '0: group lon nhat',
  `group_name` varchar(255) DEFAULT NULL,
  `permission` text,
  `menus_view` varchar(1000) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT '0' COMMENT '1: nhom bi khoa',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0' COMMENT '1: nhom bi xoa',
  `cnf_reports` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_groups`
--

LOCK TABLES `sys_groups` WRITE;
/*!40000 ALTER TABLE `sys_groups` DISABLE KEYS */;
INSERT INTO `sys_groups` VALUES (1,0,'Admin','{\"manage-class\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-subject\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-document\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-teacher-regis\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-student-regis\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"languages\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"profiles\":{\"edit\":1,\"execute\":1,\"view\":1},\"permissions\":{\"add\":1,\"edit\":1,\"view\":1,\"delete\":1},\"modules\":{\"add\":1,\"edit\":1,\"view\":1,\"delete\":1},\"menus\":{\"execute\":1,\"view\":1},\"groups\":{\"add\":1,\"edit\":1,\"execute\":1,\"view\":1,\"delete\":1},\"users\":{\"add\":1,\"edit\":1,\"execute\":1,\"view\":1,\"delete\":1},\"configurations\":{\"add\":1,\"edit\":1,\"execute\":1,\"view\":1,\"delete\":1}}','017,82,88,89,83,90,91,84,92,93,85,95,96,0,1,79,80,81,43,3,8,9,4,10,11,5,12,6,13,14,7,15,16,60,61,49',0,'2016-09-01 09:47:30','2016-09-06 17:17:11',6,'127.0.0.1','conglinh',0,'{\"tech4rums\":{\"phone\":{\"label\":\"Số điện thoại\", \"format\":\"string\", \"sort\":1}, \"status\":{\"label\":\"Trạng thái\", \"format\":\"string\", \"sort\":1}, \"modified\":{\"label\":\"Cập nhật\", \"format\":\"datetime\", \"sort\":1}}}'),(2,0,'Product','{\"profiles\":{\"edit\":1,\"execute\":1,\"view\":1},\"manage-class\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-subject\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-document\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-teacher-regis\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"manage-student-regis\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"languages\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1}}','43,1,0,17,82,88,89,83,90,91,84,92,93,85,95,96,79,80,81',0,'2016-09-05 04:02:28','2016-09-05 10:48:37',6,'127.0.0.1',NULL,0,NULL),(3,0,'MKT','{\"brands\":{\"view\":1},\"models\":{\"view\":1,\"rating\":1,\"execute\":1},\"devices\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"points\":{\"view\":1},\"segments\":{\"view\":1},\"comparisons\":{\"view\":1},\"languages\":{\"view\":1},\"profiles\":{\"edit\":1,\"execute\":1,\"view\":1}}','64,62,17,56,53,65,67,68,78,76,75,73,72,70,81,79,1,43',0,'2016-09-01 09:12:36','2016-09-06 10:51:02',6,'14.161.12.219','conglinh',0,NULL),(4,0,'Sale','{\"exchanges\":{\"SoldDetail\":1,\"ProfitPerDay\":1,\"view\":1},\"users_winner\":{\"execute\":1},\"profiles\":{\"edit\":1,\"execute\":1,\"view\":1}}','51,45,17,25,50,43,42,1,44',0,'2016-09-01 16:35:13','2016-09-05 14:26:10',11,'14.161.12.217','conglinh',0,NULL),(5,0,'CC','{\"users_winner\":{\"export\":1,\"view\":1,\"execute\":1},\"complaints\":{\"export\":1,\"import\":1,\"edit\":1,\"add\":1,\"execute\":1,\"view\":1,\"delete\":1},\"profiles\":{\"edit\":1,\"execute\":1,\"view\":1}}','27,25,17,50,52,43,42,1,44',0,'2016-09-05 04:02:15','2016-09-05 14:26:00',11,'14.161.12.217',NULL,0,NULL),(6,0,'Kế Toán','{\"exchanges\":{\"SoldDetail\":1,\"ProfitPerDay\":1,\"view\":1},\"profiles\":{\"edit\":1,\"execute\":1,\"view\":1}}','51,45,17,1,42,43,44',0,'2017-02-08 10:56:18','2017-02-08 10:56:18',11,'14.161.12.217',NULL,0,NULL);
/*!40000 ALTER TABLE `sys_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_languages`
--

DROP TABLE IF EXISTS `sys_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ip4` varchar(255) DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `vi` varchar(255) DEFAULT NULL,
  `en` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_lang` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=603 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_languages`
--

LOCK TABLES `sys_languages` WRITE;
/*!40000 ALTER TABLE `sys_languages` DISABLE KEYS */;
INSERT INTO `sys_languages` VALUES (1,'2017-04-27 16:07:51','2017-04-27 16:14:40',NULL,'default','rating_range','Đánh giá điểm từ 0 đến 10','Ratings Point value which ranges from zero to ten',0),(2,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','home','Trang chủ','Home',0),(3,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','id','ID','ID',0),(4,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','last_update','Cập nhật lần cuối','Last updated',0),(5,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','last_online','Online lần cuối','Last online',0),(6,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','photo','Hình ảnh','Photo',0),(7,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','video','Video','Video',0),(8,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','action','Thao tác','Action',0),(9,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','list','Danh sách','List',0),(10,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','promotion','Quảng cáo','Promotion',0),(11,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','view','Xem','View',0),(12,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','add','Thêm','Add',0),(13,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','edit','Sửa','Edit',0),(14,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','delete','Xóa','Delete',0),(15,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','export','Tải về','Export',0),(16,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','filter_by','Lọc theo','Filter by',0),(17,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','features','Tính năng','Features',0),(18,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','promo','Quảng cáo','Promo',0),(19,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','record_found','Số dòng tìm được:','Number of items:',0),(20,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','synced','Đồng bộ','Synced',0),(21,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','waiting','Đang chờ','Waiting',0),(22,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','success','Thành công','Success',0),(23,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','all_status','Tất cả trạng thái','All status',0),(24,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','info','Thông tin','Information',0),(25,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','click_to_download','Nhấn vào link để tải về','Click to download',0),(26,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','close','Đóng','Close',0),(27,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','save','Lưu','Save',0),(28,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','are_u_sure','Xác nhận?','Are you sure?',0),(29,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','ok','Đồng ý','OK',0),(30,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','cancel','Hủy bỏ','Cancel',0),(31,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','my_profile','Thông tin cá nhân','My Profile',0),(32,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','username','Tên đăng nhập','Username',0),(33,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','right','Quyền','Right',0),(34,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','change_avatar','Đổi Avatar','Change Avatar',0),(35,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','change_pw','Đổi mật khẩu','Change password',0),(36,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','full_name','Họ và tên','Full name',0),(37,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','email','Email','Email',0),(38,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','phone','Điện thoại','Phone',0),(39,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','dob','Ngày sinh','Birthday',0),(40,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','pw','Mật khẩu','Password',0),(41,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','re_pw','Xác nhận mật khẩu','Retype password',0),(42,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','system','Hệ thống','System',0),(43,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','profile','Hồ sơ','Profile',0),(44,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','setup','Cài đặt','Setup',0),(45,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','name','Tên','Name',0),(46,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','key','Khóa','Key',0),(47,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','value','Giá trị','Value',0),(48,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','priority','Ưu tiên','Priority',0),(49,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','location','Vị trí','Location',0),(50,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','app_version','Phiên bản','App version',0),(51,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','mix','Pha trộn','Mix',0),(52,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','config','Tùy chỉnh','Config',0),(53,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','include','Bao gồm','Include',0),(54,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','deselect','Bỏ chọn','Deselect',0),(55,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','notify','Thông báo','Notify',0),(56,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','complete','Hoàn thành','Complete',0),(57,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','choose_one_option','Chọn một giá trị','Choose a value',0),(58,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','listing','Liệt kê','Listing',0),(59,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','not_found','Không tìm thấy','Not found',0),(60,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','des','Mô tả','Description',0),(61,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','icon','Biểu tượng','Icon',0),(62,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','note','Ghi chú','Note',0),(63,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','drag_drop_click','Danh mục dưới đây sẽ được áp dụng cho Trang so sánh và Cấu hình chi tiết','The items below will be showed at Comparison, Detail of Specification page',0),(64,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','brand','Hãng','Brand',0),(65,'2017-04-26 14:27:04','2017-04-29 17:08:12',NULL,'default','model','Mẫu mã','Model',0),(66,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','device','Thiết bị','Device',0),(67,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','spec','Thông số','Spec',0),(68,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','comparison','So sánh','Comparison',0),(69,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','custom','Tùy chỉnh','Custom',0),(70,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','price','Giá','Price',0),(71,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','rate','Đánh giá','Rate',0),(72,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','crawler','Nguồn','Origin',0),(73,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','title','Tít','Title',0),(74,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','detail','Chi tiết','Detail',0),(75,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','overview','Tổng quan','Overview',0),(76,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','summary','Tóm tắt','Summary',0),(77,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','color','Màu sắc','Color',0),(78,'2017-04-26 14:27:04','2017-04-28 12:02:37',NULL,'default','capacity','Bộ nhớ','Storage',0),(79,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','feature','Tính năng','Feature',0),(80,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','component','Loại phân khúc','Segment type',0),(81,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','element','Đổi tượng so sánh','Element',0),(82,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','expression','Biểu thức','Expression',0),(83,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','operand','Đổi tượng so sánh','Operand',0),(84,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','operator','Biểu thức','Operator',0),(85,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','description','Mô tả','Description',0),(86,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','input_one_value','Nhập một giá trị','Input a value',0),(87,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','segment','Phân khúc','Segment',0),(88,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','click_to_upload','Nhấn vào để thay đổi ảnh','Click to change image',0),(89,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Camera Overview','Camera','Camera',0),(90,'2017-04-26 14:27:04','2017-04-28 12:01:50',NULL,'spec','Internal Storage','Bộ nhớ','Storage',0),(91,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Memory','Bộ nhớ RAM','Memory',0),(92,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','OS Version','Hệ điều hành','OS Version',0),(93,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Processor (Clock)','Vi xử lý','Processor (Clock)',0),(94,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Screen (Size & Type)','Màn hình','Screen (Size & Type)',0),(95,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Available Features in Device','Tính năng sẵn có','Available Features in Device',0),(96,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Battery Backup & Performance','Pin và hiệu năng','Battery Backup & Performance',0),(97,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Body & Design (look and feel)','Thiết kế (nhìn & cảm nhận)','Body & Design (look and feel)',0),(98,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Call Quality & Internet','Chất lượng cuộc gọi & Internet','Call Quality & Internet',0),(99,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Camera Quality (Both)','Chất lượng Camera (trước & sau)','Camera Quality (Both)',0),(100,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Display Design & Feature','Màn hình & tính năng','Display Design & Feature',0),(101,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Multimedia (Audio/Video)','Đa phương tiện','Multimedia (Audio/Video)',0),(102,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Network & Internet Connectivity','Mạng & Kết nối','Network & Internet Connectivity',0),(103,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Overall Gadget Performance','Hiệu suất tổng thể','Overall Gadget Performance',0),(104,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','User-Friendliness (How Easy)','Dễ sử dụng','User-Friendliness (How Easy)',0),(105,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Value For Money (VFM)','Đáng tiền (VFM)','Value For Money (VFM)',0),(106,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','General Information','Thông tin cơ bản','General Information',0),(107,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Device Type','Loại thiết bị','Device Type',0),(108,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Brand & Model','Hãng và mẫu','Brand & Model',0),(109,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Device Proclamation Date','Ngày ra mắt','Device Proclamation Date',0),(110,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Product Release Date','Ngày phát hành','Product Release Date',0),(111,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Product Availability Status','Tình trạng bán','Product Availability Status',0),(112,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Selling Price','Giá bán','Selling Price',0),(113,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Fingerprint Sensor','Cảm biến vân tay','Fingerprint Sensor',0),(114,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Waterproof','Chống nước','Waterproof',0),(115,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Body Design & Dimensions','Thiết kế Thân & Kích thước','Body Design & Dimensions',0),(116,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Design Type (Form Factor)','Loại thân máy','Design Type (Form Factor)',0),(117,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Dimensions (LxWxH)','Kích thước (LxWxH)','Dimensions (LxWxH)',0),(118,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Length','Chiều dài','Length',0),(119,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Broadness','Độ rộng','Broadness',0),(120,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Thickness','Độ dày','Thickness',0),(121,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Weight (in Grams)','Trọng lượng (gam)','Weight (in Grams)',0),(122,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Body Protection','Bảo vệ máy','Body Protection',0),(123,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Gadget Body Color','Màu sắc','Gadget Body Color',0),(124,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Device Body Material','Vật liệu','Device Body Material',0),(125,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Display & Screen','Màn hình & Hiển thị','Display & Screen',0),(126,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Display Type','Loại màn hình','Display Type',0),(127,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Display Size (in diagonal)','Kích thước màn hình (chéo)','Display Size (in diagonal)',0),(128,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Resolution (in Pixel)','Độ phân giải (pixel)','Resolution (in Pixel)',0),(129,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Multitouch Input','Đa chạm','Multitouch Input',0),(130,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Display Colors','Số màu hiển thị','Display Colors',0),(131,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Pixel Density (In PPI)','Tỉ trọng Pixel (PPI)','Pixel Density (In PPI)',0),(132,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Touch Screen','Cảm ứng','Touch Screen',0),(133,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Touchscreen Technology','Công nghệ Cảm ứng','Touchscreen Technology',0),(134,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Display Protection','Bảo vệ màn hình','Display Protection',0),(135,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Secondary Display','Màn hình phụ','Secondary Display',0),(136,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Screen to Body Ratio','Tỉ lệ màn hình với Thân','Screen to Body Ratio',0),(137,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Camera & Features','Camera & Tính năng','Camera & Features',0),(138,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Camera Type','Loại Camera','Camera Type',0),(139,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Rear Camera','Camera sau','Rear Camera',0),(140,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Image Dimensions','Kích thước ảnh chụp','Image Dimensions',0),(141,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Full HD Recording','Quay phim Full HD','Full HD Recording',0),(142,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','HD Recording','Quay chế độ HD','HD Recording',0),(143,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Auto Focus','Tự động lấy nét','Auto Focus',0),(144,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Touch Focus','Chạm lấy nét','Touch Focus',0),(145,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Video Resolution','Kích thước Video','Video Resolution',0),(146,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Aperture','Khẩu độ','Aperture',0),(147,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Primary Camera Features','Tính năng chính','Primary Camera Features',0),(148,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Flash Type','Đèn Flash','Flash Type',0),(149,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Front Facing Camera','Camera trước','Front Facing Camera',0),(150,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Front Camera Flash','Flash trước','Front Camera Flash',0),(151,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Hardware Parameters & Memory','Phần cứng','Hardware Parameters & Memory',0),(152,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Chipset (SoC)','Chipset (SoC)','Chipset (SoC)',0),(153,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','CPU Frequency','Tần số CPU','CPU Frequency',0),(154,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Number of Cores','Số nhân','Number of Cores',0),(155,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','CPU Bit Architecture','Số Bit','CPU Bit Architecture',0),(156,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Graphics Processing (GPU)','Xử lý đồ họa (GPU)','Graphics Processing (GPU)',0),(157,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Process Technology','Công nghệ Đồ họa','Process Technology',0),(158,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','RAM (Memory)','Bộ nhớ RAM','RAM (Memory)',0),(159,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Memory Type','Loại bộ nhớ','Memory Type',0),(160,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Internal Memory','Bộ nhớ trong','Internal Memory',0),(161,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Cache Memory','Bộ đệm','Cache Memory',0),(162,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Memory Speed (RAM)','Tốc độ RAM','Memory Speed (RAM)',0),(163,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Card & Expandable Memory','Sim & mở rộng','Card & Expandable Memory',0),(164,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Card Slot','Khe Sim','Card Slot',0),(165,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Memory Channels','Các kênh nhớ (channels)','Memory Channels',0),(166,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Sensors','Cảm biến','Sensors',0),(167,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Input Type','Loại tương tác','Input Type',0),(168,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Network & Cellular','Mạng & Di động','Network & Cellular',0),(169,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Network Technology','Công nghệ mạng','Network Technology',0),(170,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','3G Support','Hỗ trợ 3G','3G Support',0),(171,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','4G Support','Hỗ trợ 4G','4G Support',0),(172,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','2G Network Bands','Băng tần 2G','2G Network Bands',0),(173,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','3G Network Bands','Băng tần 3G','3G Network Bands',0),(174,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','4G Network Bands','Băng tần 4G','4G Network Bands',0),(175,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','SIM Card Type','Loại Sim','SIM Card Type',0),(176,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Number of SIM Card','Số Sim','Number of SIM Card',0),(177,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Dual SIM Support','Hỗ trợ nhiều Sim','Dual SIM Support',0),(178,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Software & Platforms','Phần mềm & Nền tảng','Software & Platforms',0),(179,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Operating System (OS)','Hệ điều hành','Operating System (OS)',0),(180,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','User Interface (UI)','Giao diện người dùng','User Interface (UI)',0),(181,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Java (Software Platform)','Nền tảng Java','Java (Software Platform)',0),(182,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Social Network (FB)','Mạng xã hội (Facebook)','Social Network (FB)',0),(183,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Video-Sharing Youtube','Chia sẻ Video (Youtube)','Video-Sharing Youtube',0),(184,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Microblogging (Twitter)','Viết Blog (Twitter)','Microblogging (Twitter)',0),(185,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Pre-Installed Apps','Ứng dụng cài sẵn','Pre-Installed Apps',0),(186,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Calculator','Máy tính','Calculator',0),(187,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Calender','Lịch','Calender',0),(188,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Clock & Alarm','Đồng hồ & Hẹn giờ','Clock & Alarm',0),(189,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Phone Book','Danh bạ điện thoại','Phone Book',0),(190,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Multimedia Features (Audio, Video and Images)','Đa phương tiện','Multimedia Features (Audio, Video and Images)',0),(191,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Supported Audio Format','Định dạng Âm thanh hỗ trợ','Supported Audio Format',0),(192,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Supported Video Format','Định dạng Video hỗ trợ','Supported Video Format',0),(193,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Picture format','Định dạng ảnh hỗ trợ','Picture format',0),(194,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Video Output','Cổng ra Video','Video Output',0),(195,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','FM Radio','Đài FM','FM Radio',0),(196,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Alert Types','Loại cảnh báo','Alert Types',0),(197,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Ring Tones','Nhạc chuông','Ring Tones',0),(198,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Supports Music Player','Trình chơi nhạc hỗ trợ','Supports Music Player',0),(199,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Supports Video Player','Trình chơi video hỗ trợ','Supports Video Player',0),(200,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Sound','Âm thanh','Sound',0),(201,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Loudspeaker','Loa','Loudspeaker',0),(202,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Audio Output','Cổng ra Âm thanh','Audio Output',0),(203,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Speakers','Loa','Speakers',0),(204,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Wired & Wireless Connectivity','Kết nối dây & không dây','Wired & Wireless Connectivity',0),(205,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Wi-Fi (Standards Supported)','Chuẩn Wi-Fi hỗ trợ','Wi-Fi (Standards Supported)',0),(206,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Wi-fi Hotspot','Trạm phát Wi-fi','Wi-fi Hotspot',0),(207,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','USB Type and Version','Loại USB & phiên bản','USB Type and Version',0),(208,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Bluetooth Type, Model','Loại Bluetooth và mẫu','Bluetooth Type, Model',0),(209,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Navigation Technology (GPS)','Định vị GPS','Navigation Technology (GPS)',0),(210,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Near Field Communication (NFC)','Kết nối NFC','Near Field Communication (NFC)',0),(211,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','HDMI Port','Cổng HDMI','HDMI Port',0),(212,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Infrared (IR)','Hồng ngoại','Infrared (IR)',0),(213,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Wireless Charging Technology','Công nghệ sạc không dây','Wireless Charging Technology',0),(214,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Data & Internet','Dữ liệu & mạng','Data & Internet',0),(215,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','General Packet Radio Service','GPRS','General Packet Radio Service',0),(216,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Enhanced Data for Global Evolution','EGPRS','Enhanced Data for Global Evolution',0),(217,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Internet Speed (Mbps)','Tốc độ Internet','Internet Speed (Mbps)',0),(218,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Supported Browser','Trình duyệt mặc định','Supported Browser',0),(219,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Messaging and Email Services','Tin nhắn & Email','Messaging and Email Services',0),(220,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Short Message Service','Tin nhắn Văn bản','Short Message Service',0),(221,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Multimedia Messaging Service','Tin nhắn Đa phương tiện','Multimedia Messaging Service',0),(222,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Messaging & Email','Tin nhắn & Email','Messaging & Email',0),(223,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','IM (Instant Messaging)','Tin nhắn (IM)','IM (Instant Messaging)',0),(224,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Battery and Power','Pin & Nguồn','Battery and Power',0),(225,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Battery Pattern','Loại Pin','Battery Pattern',0),(226,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Capacity (in mAh)','Dung lượng (mAh)','Capacity (in mAh)',0),(227,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Battery Fixing','Tháo rời Pin','Battery Fixing',0),(228,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Fast Battery Charging','Sạc nhanh','Fast Battery Charging',0),(229,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Standby Time','Thời gian tắt máy','Standby Time',0),(230,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Talk Time','Thời gian thoại','Talk Time',0),(231,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Music Play','Chơi nhạc','Music Play',0),(232,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Battery Video Playback','Phát lại Video (Playback)','Battery Video Playback',0),(233,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Web Browsing Time','Thời gian duyệt web','Web Browsing Time',0),(234,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Charging Duration','Thời gian sạc','Charging Duration',0),(235,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Warranty Details','Chi tiết bảo hành','Warranty Details',0),(236,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Warranty Type','Loại bảo hành','Warranty Type',0),(237,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Warranty Duration','Thời gian bảo hành','Warranty Duration',0),(238,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'spec','Box items','Nguyên hộp','Box items',0),(239,'2017-04-26 14:27:04','2017-05-05 13:54:24',NULL,'spec','In the box (Package Items)','Bao gồm (kèm phụ kiện)','In the box (Package Items)',0),(240,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Sun','CN','Sun',0),(241,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Mon','T2','Mon',0),(242,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Tue','T3','Tue',0),(243,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Wed','T4','Wed',0),(244,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Thu','T5','Thu',0),(245,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Fri','T6','Fri',0),(246,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Sat','T7','Sat',0),(247,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Jan','Tháng 1','January',0),(248,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Feb','Tháng 2','February',0),(249,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Mar','Tháng 3','March',0),(250,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Apr','Tháng 4','April',0),(251,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','May','Tháng 5','May',0),(252,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Jun','Tháng 6','June',0),(253,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Jul','Tháng 7','July',0),(254,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Aug','Tháng 8','August',0),(255,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Sep','Tháng 9','September',0),(256,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Oct','Tháng 10','October',0),(257,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Nov','Tháng 11','November',0),(258,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Dec','Tháng 12','December',0),(259,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','MM-DD-YYYY','YYYY-MM-DD','MM/DD/YYYY',0),(260,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','smt_dt_format','%d/%m/%Y %H:%I:%S','%m/%d/%Y %H:%I:%S',0),(261,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','seek','Tìm kiếm...','Seeking...',0),(262,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','prototype','Bản mẫu','Prototype',0),(263,'2017-04-26 14:27:04','2017-04-26 16:05:47',NULL,'default','prototyping','Đang tạo mẫu','Planning',0),(264,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','final','Hoàn thành','Final',0),(265,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','model_code','Mã code','Model code',0),(266,'2017-04-26 14:27:04','2017-04-27 11:28:47',NULL,'default','clk2view_rclk2up','Click chuột trái để phóng to, phải để tải ảnh mới','Press Mouse left to zoom+ or right to upload new one',0),(267,'2017-04-26 14:27:04','2017-04-29 17:27:37',NULL,'default','sketch','Ảnh mẫu','Sketch',0),(268,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','can_upload','Có thể Upload','Can Upload',0),(269,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','scaled_score','Thang điểm','Scaled Score',0),(270,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','percent','Tỉ lệ %','Percent',0),(271,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','Expert','Chuyên gia','Expert',0),(272,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','End user','Người dùng','User',0),(273,'2017-04-26 14:27:04','2017-04-26 16:11:59',NULL,'default','Feeling','Cảm nhận','Feeling',0),(274,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','point','Khung đánh giá','Point',0),(275,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','score','Điểm số','Score',0),(276,'2017-04-26 14:27:04','2017-04-26 15:22:08',NULL,'default','core_point','Điểm số','Core point',0),(277,'2017-04-26 14:27:04','2017-04-29 17:26:27',NULL,'default','sku','Mã SKU','SKU',0),(557,'2017-04-26 14:32:40','2017-04-26 15:21:06',NULL,'default','test 123','Kiểm tra thử 123','Testing 123',0),(559,'2017-04-26 14:50:47','2017-04-26 14:50:47',NULL,'default','lang','Ngôn ngữ','Language',1),(560,'2017-04-26 14:51:04','2017-04-26 15:08:32',NULL,'default','vi','Tiếng Việt ','Vietnamese',0),(561,'2017-04-26 14:51:26','2017-04-26 15:05:51',NULL,'default','en','Tiếng Anh','English',0),(565,'2017-04-26 15:07:47','2017-04-26 15:07:47',NULL,'default','keyword','Từ khóa','Keyword',0),(566,'2017-04-26 15:08:08','2017-04-26 15:20:30',NULL,'default','language','Ngôn ngữ','Language',0),(571,'2017-04-26 15:45:27','2017-04-26 15:47:59',NULL,'default','default','Mặc định','Default',0),(576,'2017-04-26 15:49:37','2017-04-26 15:50:24',NULL,'default','kind','Phân loại','Kind',0),(581,'2017-04-27 15:36:45','2017-04-27 15:37:00',NULL,'default','average_point','Điểm trung bình','Average rating',0),(584,'2017-04-26 14:27:04','2017-04-26 14:27:04',NULL,'default','hello','Xin chào','Hello',0),(588,'2017-04-28 10:11:51','2017-04-28 15:52:47',NULL,'default','voter','Người đánh giá','Voter',0),(595,'2017-04-29 17:01:25','2017-04-29 17:01:25',NULL,'default','model_comparison','So mẫu mã','Model Comparison',0),(596,'2017-04-29 17:01:51','2017-04-29 17:01:51',NULL,'default','sku_comparison','So sánh SKU','SKU Comparison',0),(598,'2017-04-29 17:10:03','2017-04-29 17:10:03',NULL,'default','status','Tình trạng','Status',0),(601,'2017-04-29 17:30:33','2017-04-29 17:30:33',NULL,'default','plan','Đang xây dựng','Planning',0),(602,'2017-04-29 17:30:59','2017-04-29 17:30:59',NULL,'default','release','Đã hoàn thành','Released',0);
/*!40000 ALTER TABLE `sys_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menus`
--

DROP TABLE IF EXISTS `sys_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT '0',
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_type` int(11) DEFAULT NULL COMMENT '1: chuc nang, 2: he thong',
  `module` varchar(255) DEFAULT NULL COMMENT 'vi du compaigns module',
  `functions` varchar(500) DEFAULT NULL,
  `router` varchar(255) DEFAULT NULL COMMENT 'module+router=url',
  `icon` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '1: module bi xoa',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menus`
--

LOCK TABLES `sys_menus` WRITE;
/*!40000 ALTER TABLE `sys_menus` DISABLE KEYS */;
INSERT INTO `sys_menus` VALUES (1,0,'system',NULL,'','','','',56,0),(2,0,'Sự kiện',NULL,'','','','',1,1),(3,1,'Quyền',NULL,'','','','fa-user-secret',70,0),(4,1,'Nhóm chức năng',NULL,'','','','fa-cogs',76,0),(5,1,'Danh mục',NULL,'','','','fa-barcode',82,0),(6,1,'Nhóm người dùng',NULL,'','','','fa-users',86,0),(7,1,'Người dùng',NULL,'','','','fa-user',93,0),(8,3,'Thêm mới',NULL,'permissions','{\"add\":\"Thêm\"}','add','',71,0),(9,3,'Danh sách',NULL,'permissions','{\"edit\":\"Sửa\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',72,0),(10,4,'Thêm mới',NULL,'modules','{\"add\":\"Thêm\"}','add','',77,0),(11,4,'Danh sách',NULL,'modules','{\"edit\":\"Sửa\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',78,0),(12,5,'Cấu hình',NULL,'menus','{\"execute\":\"Thực hiện\",\"view\":\"Xem\"}','view','',83,0),(13,6,'Thêm mới',NULL,'groups','{\"add\":\"Thêm\"}','add','',87,0),(14,6,'Danh sách',NULL,'groups','{\"edit\":\"Sửa\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',88,0),(15,7,'Thêm mới',NULL,'users','{\"add\":\"Thêm\"}','add','',94,0),(16,7,'Danh sách',NULL,'users','{\"edit\":\"Sửa\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',95,0),(17,0,'features',NULL,'','','','',1,0),(18,17,'Quà tặng',NULL,'','','','fa-gift',50,1),(19,18,'Quà hằng ngày',NULL,'','','','fa-briefcase',32,1),(20,18,'Vouchers',NULL,'','','','',39,1),(21,18,'Thẻ cào',NULL,'','','','',40,1),(22,19,'Thêm mới',NULL,'campaign_gifts','{\"add\":\"Thêm\"}','add','',33,1),(23,18,'Quà hằng ngày ',NULL,'campaign_gifts','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',51,1),(24,17,'Châm ngôn',NULL,'','','','fa-chrome',66,1),(25,17,'Người chơi',NULL,'','','','fa-odnoklassniki',75,1),(26,25,'Tất cả',NULL,'social_users','{\"view\":\"Xem\"}','view','',76,1),(27,25,'May mắn',NULL,'users_winner','{\"export\":\"Export\",\"view\":\"Xem\"}','view','',77,1),(28,25,'Spam',NULL,'blacklist','{\"export\":\"Export\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',80,1),(29,24,'Thêm mới',NULL,'precepts','{\"add\":\"Thêm\"}','add','',67,1),(30,24,'Danh sách',NULL,'precepts','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',68,1),(31,2,'Đại lý',NULL,'','','','fa-users',2,1),(32,2,'Sự kiện',NULL,'','','','fa-diamond',11,1),(33,31,'Thêm mới',NULL,'distributors','{\"add\":\"Thêm\"}','add','',3,1),(34,31,'Danh sách',NULL,'distributors','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',4,1),(35,32,'Gán đại lý',NULL,'campaign_distributors','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',20,1),(36,32,'Thêm mới',NULL,'campaigns','{\"add\":\"Thêm\"}','add','',12,1),(37,32,'Danh sách',NULL,'campaigns','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','',13,1),(38,32,'Gán đại lý',NULL,'campaign_distributors','{\"add\":\"Thêm\"}','add','',27,1),(39,18,'Mã giảm giá',NULL,'gift_vouchers','{\"export\":\"Export\",\"import\":\"Import\",\"view\":\"Xem\"}','view','',59,1),(40,18,'Thẻ cào',NULL,'gift_cards','{\"export\":\"Export\",\"view\":\"Xem\"}','view','',63,1),(41,7,'Đăng xuất',NULL,'users','{\"execute\":\"Thực hiện\"}','sign_out','',92,1),(42,1,'Cá nhân',NULL,'','','','fa-user',18,1),(43,1,'profile',NULL,'profiles','{\"edit\":\"Sửa\",\"execute\":\"Thực hiện\",\"view\":\"Xem\"}','view','fa-user',66,0),(44,42,'Đăng xuất',NULL,'profiles','{\"execute\":\"Thực hiện\"}','logout','',19,1),(45,17,'Biểu đồ',NULL,'','','','fa-pie-chart',36,1),(46,45,'Mini game',NULL,'dashboard','{\"export\":\"Export\",\"execute\":\"Thực hiện\",\"view\":\"Xem\"}','view','fa-dashboard',37,1),(47,45,'Voucher',NULL,'user_coupons','{\"view\":\"Xem\"}','chart_view','',41,1),(48,2,'Model',NULL,'modem_phones','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','fa-building',27,1),(49,60,'list',NULL,'configurations','{\"edit\":\"Sửa\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','fa-cog',102,0),(50,25,'Đổi máy',NULL,'users_winner','{\"execute\":\"Thực hiện\"}','exchange','',86,1),(51,45,'Đổi máy',NULL,'exchanges','{\"SoldDetail\":\"Bán chi tiết\",\"SoldPerDay\":\"Bán theo ngày\",\"ProfitPerDay\":\"LN theo ngày\",\"YieldPerDate\":\"TK theo ngày\",\"YieldPerModel\":\"TK theo SP\",\"view\":\"Xem\",\"YieldPerDay\":\"ĐK theo ngày\"}','view','fa-television',42,1),(52,25,'Khiếu nại',NULL,'complaints','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}','view','fa-odnoklassniki',87,1),(53,17,'model',NULL,'','','','fa-suitcase',11,1),(54,17,'promo',NULL,'','','','',17,1),(55,53,'add',NULL,'models','{\"add\":\"Thêm\"}','add','',12,1),(56,53,'list',NULL,'models','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\",\"rating\":\"Chấm điểm\"}','view','',13,1),(57,54,'add',NULL,'promotionsctrl','{\"add\":\"Thêm\"}','add','',18,1),(58,54,'list',NULL,'promotionsctrl','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',19,1),(59,17,'device',NULL,'','','','',17,1),(60,1,'setup',NULL,'','','','',100,0),(61,60,'add',NULL,'configurations','{\"add\":\"Thêm\"}','add','',101,0),(62,17,'brand',NULL,'','','','fa-university',2,1),(63,62,'add',NULL,'brands','{\"add\":\"Thêm\"}','add','',3,1),(64,62,'list',NULL,'brands','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',4,1),(65,17,'sku',NULL,'','','','fa-tablet fa-lg',21,1),(66,17,'spec',NULL,'','','','fa-instagram',31,1),(67,65,'add',NULL,'skus','{\"add\":\"Thêm\"}','add','',22,1),(68,65,'list',NULL,'skus','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\",\"rating\":\"Chấm điểm\"}','view','',23,1),(69,66,'custom',NULL,'specs','{\"view\":\"Xem\",\"execute\":\"Thực hiện\"}','view','',32,1),(70,17,'model_comparison',NULL,'','','','fa-compress',52,1),(71,70,'add',NULL,'comparisons','{\"add\":\"Thêm\"}','add','',53,1),(72,70,'list',NULL,'comparisons','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',54,1),(73,17,'segment',NULL,'','','','fa-bookmark-o',43,1),(74,73,'add',NULL,'segments','{\"add\":\"Thêm\"}','add','',44,1),(75,73,'list',NULL,'segments','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',45,1),(76,17,'score',NULL,'','','','fa-plane',35,1),(77,76,'add',NULL,'points','{\"add\":\"Thêm\"}','add','',36,1),(78,76,'list',NULL,'points','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',37,1),(79,1,'language',NULL,'','','','fa-globe',57,0),(80,79,'add',NULL,'languages','{\"add\":\"Thêm\"}','add','',58,0),(81,79,'list',NULL,'languages','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',59,0),(82,17,'class',NULL,'','','','',2,0),(83,17,'subject',NULL,'','','','',11,0),(84,17,'document',NULL,'','','','',20,0),(85,17,'register',NULL,'','','','',29,0),(86,85,'teacher',NULL,'','','','',30,1),(87,85,'student',NULL,'','','','',39,1),(88,82,'add',NULL,'manage-class','{\"add\":\"Thêm\"}','add','',3,0),(89,82,'list',NULL,'manage-class','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',4,0),(90,83,'add',NULL,'manage-subject','{\"add\":\"Thêm\"}','add','',12,0),(91,83,'list',NULL,'manage-subject','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',13,0),(92,84,'add',NULL,'manage-document','{\"add\":\"Thêm\"}','add','',21,0),(93,84,'list',NULL,'manage-document','{\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',22,0),(94,86,'list',NULL,'manage-teacher-regis','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',31,1),(95,85,'teacher',NULL,'manage-teacher-regis','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',40,0),(96,85,'student',NULL,'manage-student-regis','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}','view','',48,0);
/*!40000 ALTER TABLE `sys_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_metalogs`
--

DROP TABLE IF EXISTS `sys_metalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_metalogs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `imei` varchar(255) DEFAULT NULL,
  `file` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_metalogs`
--

LOCK TABLES `sys_metalogs` WRITE;
/*!40000 ALTER TABLE `sys_metalogs` DISABLE KEYS */;
INSERT INTO `sys_metalogs` VALUES (1,'2017-08-09 12:02:32','2017-08-09 12:02:32','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(2,'2017-08-09 12:10:28','2017-08-09 12:10:28','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(3,'2017-08-09 12:11:10','2017-08-09 12:11:10','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(4,'2017-08-09 12:20:06','2017-08-09 12:20:06','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(5,'2017-08-09 12:20:26','2017-08-09 12:20:26','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(6,'2017-08-09 12:20:53','2017-08-09 12:20:53','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(7,'2017-08-09 12:23:18','2017-08-09 12:23:18','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(8,'2017-08-09 12:28:33','2017-08-09 12:28:33','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(9,'2017-08-09 13:21:06','2017-08-09 13:21:06','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(10,'2017-08-09 13:23:42','2017-08-09 13:23:42','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(11,'2017-08-09 13:24:48','2017-08-09 13:24:48','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(12,'2017-08-09 13:25:33','2017-08-09 13:25:33','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(13,'2017-08-09 13:30:25','2017-08-09 13:30:25','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(14,'2017-08-09 13:30:59','2017-08-09 13:30:59','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(15,'2017-08-09 13:31:54','2017-08-09 13:31:54','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(16,'2017-08-09 13:32:25','2017-08-09 13:32:25','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(17,'2017-08-09 13:33:55','2017-08-09 13:33:55','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(18,'2017-08-09 13:41:22','2017-08-09 13:41:22','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(19,'2017-08-09 13:45:23','2017-08-09 13:45:23','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(20,'2017-08-09 13:48:23','2017-08-09 13:48:23','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(21,'2017-08-09 13:48:44','2017-08-09 13:48:44','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(22,'2017-08-09 13:51:25','2017-08-09 13:51:25','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(23,'2017-08-09 13:51:55','2017-08-09 13:51:55','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(24,'2017-08-09 13:53:12','2017-08-09 13:53:12','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(25,'2017-08-09 13:53:14','2017-08-09 13:53:14','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(26,'2017-08-09 13:53:16','2017-08-09 13:53:16','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(27,'2017-08-09 13:54:06','2017-08-09 13:54:06','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(28,'2017-08-09 13:54:30','2017-08-09 13:54:30','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(29,'2017-08-09 13:54:53','2017-08-09 13:54:53','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(30,'2017-08-09 13:55:18','2017-08-09 13:55:18','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(31,'2017-08-09 13:56:15','2017-08-09 13:56:15','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(32,'2017-08-09 13:56:24','2017-08-09 13:56:24','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(33,'2017-08-09 13:57:10','2017-08-09 13:57:10','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(34,'2017-08-09 13:57:47','2017-08-09 13:57:47','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(35,'2017-08-09 13:58:12','2017-08-09 13:58:12','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(36,'2017-08-09 13:58:35','2017-08-09 13:58:35','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(37,'2017-08-09 14:00:44','2017-08-09 14:00:44','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(38,'2017-08-09 14:01:35','2017-08-09 14:01:35','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(39,'2017-08-09 14:05:27','2017-08-09 14:05:27','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(40,'2017-08-09 14:06:15','2017-08-09 14:06:15','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(41,'2017-08-09 14:07:36','2017-08-09 14:07:36','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(42,'2017-08-09 14:09:22','2017-08-09 14:09:22','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(43,'2017-08-09 14:10:17','2017-08-09 14:10:17','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(44,'2017-08-09 14:12:20','2017-08-09 14:12:20','127.0.0.1',NULL,'1502262737introduction-to-bluetooth-low-energy.pdf'),(45,'2017-08-09 14:12:29','2017-08-09 14:12:29','127.0.0.1',NULL,'1502262737introduction-to-bluetooth-low-energy.pdf'),(46,'2017-08-09 14:12:33','2017-08-09 14:12:33','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(47,'2017-08-09 14:12:37','2017-08-09 14:12:37','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(48,'2017-08-09 14:13:01','2017-08-09 14:13:01','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(49,'2017-08-09 14:13:08','2017-08-09 14:13:08','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(50,'2017-08-09 14:13:28','2017-08-09 14:13:28','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(51,'2017-08-09 14:13:36','2017-08-09 14:13:36','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(52,'2017-08-09 14:14:00','2017-08-09 14:14:00','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(53,'2017-08-09 14:14:49','2017-08-09 14:14:49','127.0.0.1',NULL,'1502262737introduction-to-bluetooth-low-energy.pdf'),(54,'2017-08-09 14:14:58','2017-08-09 14:14:58','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(55,'2017-08-09 14:15:05','2017-08-09 14:15:05','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(56,'2017-08-09 14:16:53','2017-08-09 14:16:53','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(57,'2017-08-09 14:17:16','2017-08-09 14:17:16','127.0.0.1',NULL,'1502262737introduction-to-bluetooth-low-energy.pdf'),(58,'2017-08-09 14:17:28','2017-08-09 14:17:28','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(59,'2017-08-09 14:18:21','2017-08-09 14:18:21','127.0.0.1',NULL,'1502262737introduction-to-bluetooth-low-energy.pdf'),(60,'2017-08-09 14:18:29','2017-08-09 14:18:29','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(61,'2017-08-09 14:18:41','2017-08-09 14:18:41','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(62,'2017-08-09 14:19:36','2017-08-09 14:19:36','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(63,'2017-08-09 14:20:46','2017-08-09 14:20:46','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(64,'2017-08-09 14:21:24','2017-08-09 14:21:24','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(65,'2017-08-09 14:21:45','2017-08-09 14:21:45','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(66,'2017-08-09 14:21:58','2017-08-09 14:21:58','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(67,'2017-08-09 14:22:46','2017-08-09 14:22:46','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(68,'2017-08-09 14:24:17','2017-08-09 14:24:17','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(69,'2017-08-09 14:24:46','2017-08-09 14:24:46','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(70,'2017-08-09 14:25:00','2017-08-09 14:25:00','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(71,'2017-08-09 14:25:12','2017-08-09 14:25:12','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(72,'2017-08-09 14:25:26','2017-08-09 14:25:26','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(73,'2017-08-09 14:25:31','2017-08-09 14:25:31','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(74,'2017-08-09 14:25:56','2017-08-09 14:25:56','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(75,'2017-08-09 14:27:13','2017-08-09 14:27:13','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(76,'2017-08-09 14:27:48','2017-08-09 14:27:48','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(77,'2017-08-09 14:27:52','2017-08-09 14:27:52','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(78,'2017-08-09 14:27:56','2017-08-09 14:27:56','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(79,'2017-08-09 14:29:24','2017-08-09 14:29:24','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(80,'2017-08-09 14:30:08','2017-08-09 14:30:08','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(81,'2017-08-09 14:30:12','2017-08-09 14:30:12','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(82,'2017-08-09 14:31:38','2017-08-09 14:31:38','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(83,'2017-08-09 14:33:12','2017-08-09 14:33:12','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(84,'2017-08-09 14:33:25','2017-08-09 14:33:25','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(85,'2017-08-09 14:33:37','2017-08-09 14:33:37','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(86,'2017-08-09 14:33:39','2017-08-09 14:33:39','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(87,'2017-08-09 14:33:41','2017-08-09 14:33:41','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(88,'2017-08-09 14:33:43','2017-08-09 14:33:43','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(89,'2017-08-09 14:33:44','2017-08-09 14:33:44','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(90,'2017-08-09 14:33:46','2017-08-09 14:33:46','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(91,'2017-08-09 14:33:48','2017-08-09 14:33:48','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(92,'2017-08-09 14:33:50','2017-08-09 14:33:50','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(93,'2017-08-09 14:33:53','2017-08-09 14:33:53','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(94,'2017-08-09 14:33:59','2017-08-09 14:33:59','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(95,'2017-08-09 14:34:00','2017-08-09 14:34:00','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(96,'2017-08-09 14:34:02','2017-08-09 14:34:02','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(97,'2017-08-09 14:34:07','2017-08-09 14:34:07','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(98,'2017-08-09 14:34:10','2017-08-09 14:34:10','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(99,'2017-08-09 14:34:12','2017-08-09 14:34:12','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(100,'2017-08-09 14:34:15','2017-08-09 14:34:15','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(101,'2017-08-09 14:34:19','2017-08-09 14:34:19','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(102,'2017-08-09 14:34:19','2017-08-09 14:34:19','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(103,'2017-08-09 14:34:20','2017-08-09 14:34:20','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(104,'2017-08-09 14:34:21','2017-08-09 14:34:21','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(105,'2017-08-09 14:34:25','2017-08-09 14:34:25','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(106,'2017-08-09 14:34:29','2017-08-09 14:34:29','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(107,'2017-08-09 14:34:33','2017-08-09 14:34:33','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(108,'2017-08-09 14:37:50','2017-08-09 14:37:50','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(109,'2017-08-09 14:37:53','2017-08-09 14:37:53','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(110,'2017-08-09 14:37:57','2017-08-09 14:37:57','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(111,'2017-08-09 14:38:01','2017-08-09 14:38:01','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(112,'2017-08-09 14:38:06','2017-08-09 14:38:06','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(113,'2017-08-09 14:38:09','2017-08-09 14:38:09','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(114,'2017-08-09 14:38:12','2017-08-09 14:38:12','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(115,'2017-08-09 14:38:14','2017-08-09 14:38:14','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(116,'2017-08-09 14:38:16','2017-08-09 14:38:16','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(117,'2017-08-09 14:38:17','2017-08-09 14:38:17','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(118,'2017-08-09 14:38:20','2017-08-09 14:38:20','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(119,'2017-08-09 14:38:26','2017-08-09 14:38:26','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(120,'2017-08-09 14:38:29','2017-08-09 14:38:29','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(121,'2017-08-09 14:38:39','2017-08-09 14:38:39','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(122,'2017-08-09 14:38:45','2017-08-09 14:38:45','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(123,'2017-08-09 14:38:48','2017-08-09 14:38:48','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(124,'2017-08-09 14:38:49','2017-08-09 14:38:49','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(125,'2017-08-09 14:39:46','2017-08-09 14:39:46','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(126,'2017-08-09 14:39:49','2017-08-09 14:39:49','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(127,'2017-08-09 14:41:27','2017-08-09 14:41:27','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(128,'2017-08-09 14:41:30','2017-08-09 14:41:30','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(129,'2017-08-09 14:59:16','2017-08-09 14:59:16','127.0.0.1',NULL,'1502262737introduction-to-bluetooth-low-energy.pdf'),(130,'2017-08-09 14:59:55','2017-08-09 14:59:55','127.0.0.1',NULL,'1502265592esp_wroom_32_datasheet_en.pdf'),(131,'2017-08-09 14:59:59','2017-08-09 14:59:59','127.0.0.1',NULL,'1502265582introduction-to-bluetooth-low-energy.pdf'),(132,'2017-08-09 15:00:15','2017-08-09 15:00:15','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(133,'2017-08-09 15:00:36','2017-08-09 15:00:36','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(134,'2017-08-09 15:00:47','2017-08-09 15:00:47','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(135,'2017-08-09 15:00:56','2017-08-09 15:00:56','127.0.0.1',NULL,'1502250909esp_wroom_32_datasheet_en.pdf'),(136,'2017-08-09 16:07:57','2017-08-09 16:07:57','127.0.0.1',NULL,'1502269670introduction-to-bluetooth-low-energy.pdf'),(137,'2017-08-21 13:48:18','2017-08-21 13:48:18','127.0.0.1',NULL,'1502269670introduction-to-bluetooth-low-energy.pdf'),(138,'2017-08-23 13:33:25','2017-08-23 13:33:25','127.0.0.1',NULL,'1502265582introduction-to-bluetooth-low-energy.pdf');
/*!40000 ALTER TABLE `sys_metalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_modules`
--

DROP TABLE IF EXISTS `sys_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_modules` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(255) DEFAULT NULL,
  `module_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'class name',
  `functions` varchar(1000) DEFAULT NULL COMMENT '{"add":"Thêm", "edit":"Sửa", "delete":"Xóa", "view":"Danh sách", "import":"Nhập file", "export":"Xuất file"}',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '1: module bi xoa',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`module_key`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_modules`
--

LOCK TABLES `sys_modules` WRITE;
/*!40000 ALTER TABLE `sys_modules` DISABLE KEYS */;
INSERT INTO `sys_modules` VALUES (23,NULL,'admins','{\"view\":\"Xem\"}',1,NULL,NULL,NULL,NULL,NULL),(25,NULL,'blacklist','{\"export\":\"Export\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(37,NULL,'brands','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(19,NULL,'campaigns','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(21,NULL,'campaign_distributors','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(15,NULL,'campaign_gifts','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(39,NULL,'comparisons','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(30,NULL,'complaints','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(27,NULL,'configurations','{\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',0,NULL,NULL,NULL,NULL,NULL),(29,NULL,'dashboard','{\"export\":\"Export\",\"execute\":\"Thực hiện\",\"view\":\"Xem\"}',1,NULL,NULL,NULL,NULL,NULL),(36,NULL,'devices','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(20,NULL,'distributors','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(31,NULL,'exchanges','{\"SoldDetail\":\"Bán chi tiết\",\"SoldPerDay\":\"Bán theo ngày\",\"ProfitPerDay\":\"LN theo ngày\",\"YieldPerDate\":\"TK theo ngày\",\"YieldPerModel\":\"TK theo SP\",\"view\":\"Xem\",\"YieldPerDay\":\"ĐK theo ngày\"}',1,NULL,NULL,NULL,NULL,NULL),(13,NULL,'gift_cards','{\"export\":\"Export\",\"view\":\"Xem\"}',1,NULL,NULL,NULL,NULL,NULL),(14,NULL,'gift_vouchers','{\"export\":\"Export\",\"import\":\"Import\",\"view\":\"Xem\"}',1,NULL,NULL,NULL,NULL,NULL),(8,NULL,'groups','{\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',0,NULL,NULL,NULL,NULL,NULL),(42,NULL,'languages','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',0,NULL,NULL,NULL,NULL,NULL),(46,NULL,'manage-class','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',0,NULL,NULL,NULL,NULL,NULL),(47,NULL,'manage-document','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',0,NULL,NULL,NULL,NULL,NULL),(48,NULL,'manage-new-class','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',0,NULL,NULL,NULL,NULL,NULL),(49,NULL,'manage-student-regis','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',0,NULL,NULL,NULL,NULL,NULL),(50,NULL,'manage-subject','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',0,NULL,NULL,NULL,NULL,NULL),(51,NULL,'manage-teacher-regis','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',0,NULL,NULL,NULL,NULL,NULL),(7,NULL,'menus','{\"execute\":\"Thực hiện\",\"view\":\"Xem\"}',0,NULL,NULL,NULL,NULL,NULL),(34,NULL,'models','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\",\"rating\":\"Chấm điểm\"}',1,NULL,NULL,NULL,NULL,NULL),(26,NULL,'modem_phones','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(6,NULL,'modules','{\"edit\":\"Sửa\",\"add\":\"Thêm\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',0,NULL,NULL,NULL,NULL,NULL),(5,NULL,'permissions','{\"edit\":\"Sửa\",\"add\":\"Thêm\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',0,NULL,NULL,NULL,NULL,NULL),(41,NULL,'points','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(12,NULL,'precepts','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(33,NULL,'profiles','{\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',0,NULL,NULL,NULL,NULL,NULL),(35,NULL,'promotionsctrl','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(40,NULL,'segments','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(44,NULL,'skus','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\",\"rating\":\"Chấm điểm\"}',1,NULL,NULL,NULL,NULL,NULL),(45,NULL,'skus-comparisons','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(11,NULL,'social_users','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(38,NULL,'specs','{\"add\":\"Thêm\",\"edit\":\"Sửa\",\"delete\":\"Xóa\",\"view\":\"Xem\",\"import\":\"Import\",\"export\":\"Export\",\"execute\":\"Thực hiện\"}',1,NULL,NULL,NULL,NULL,NULL),(4,NULL,'users','{\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',0,NULL,NULL,NULL,NULL,NULL),(16,NULL,'users_winner','{\"export\":\"Export\",\"import\":\"Import\",\"edit\":\"Sửa\",\"add\":\"Thêm\",\"execute\":\"Thực hiện\",\"view\":\"Xem\",\"delete\":\"Xóa\"}',1,NULL,NULL,NULL,NULL,NULL),(22,NULL,'user_coupons','{\"view\":\"Xem\"}',1,NULL,NULL,NULL,NULL,NULL),(1,NULL,'versions','{\"export\":\"Export\",\"import\":\"Import\"}',1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permissions`
--

DROP TABLE IF EXISTS `sys_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_name` varchar(255) DEFAULT NULL,
  `permission_key` varchar(255) DEFAULT NULL COMMENT 'add, edit, ...',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '1: module bi xoa',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_ip` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_key_UNIQUE` (`permission_key`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permissions`
--

LOCK TABLES `sys_permissions` WRITE;
/*!40000 ALTER TABLE `sys_permissions` DISABLE KEYS */;
INSERT INTO `sys_permissions` VALUES (7,'Thêm','add',0,NULL,NULL,NULL,NULL,NULL),(8,'Sửa','edit',0,NULL,NULL,NULL,NULL,NULL),(9,'Xóa','delete',0,NULL,NULL,NULL,NULL,NULL),(10,'Xem','view',0,NULL,NULL,NULL,NULL,NULL),(11,'Import','import',0,NULL,NULL,NULL,NULL,NULL),(12,'Export','export',0,NULL,NULL,NULL,NULL,NULL),(13,'Thực hiện','execute',0,NULL,NULL,NULL,NULL,NULL),(14,'you2','hate',1,NULL,NULL,NULL,NULL,NULL),(15,'TK theo ngày','YieldPerDate',1,NULL,NULL,NULL,NULL,NULL),(16,'TK theo SP','YieldPerModel',1,NULL,NULL,NULL,NULL,NULL),(18,'ĐK theo ngày','YieldPerDay',1,NULL,NULL,NULL,NULL,NULL),(19,'Bán theo ngày','SoldPerDay',1,NULL,NULL,NULL,NULL,NULL),(20,'Bán chi tiết','SoldDetail',1,NULL,NULL,NULL,NULL,NULL),(21,'LN theo ngày','ProfitPerDay',1,NULL,NULL,NULL,NULL,NULL),(22,'Chấm điểm','rating',0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_users`
--

DROP TABLE IF EXISTS `sys_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT '0',
  `user_ip` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT '0',
  `password` varchar(255) DEFAULT NULL,
  `is_administrator` tinyint(1) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender_id` tinyint(1) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_status` tinyint(4) DEFAULT '0',
  `is_delete` tinyint(4) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `status_log` varchar(255) DEFAULT NULL,
  `permission` text,
  `menus_view` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_users`
--

LOCK TABLES `sys_users` WRITE;
/*!40000 ALTER TABLE `sys_users` DISABLE KEYS */;
INSERT INTO `sys_users` VALUES (1,'2015-11-30 05:39:09','2016-02-13 19:03:56',1,'::1','root',1,'ab6ba60ab0f6ae750f65859a3e8bcdff',1,'Bùi Huỳnh Kinh Luân',NULL,1,'0984206548','luanbhk@gmail.com','2016/02/13/726395a298b60cc202e13beb25e0c9aa.jpg',0,0,0,NULL,NULL,NULL),(2,'2015-11-30 05:39:09','2016-08-25 15:52:27',2,'14.161.12.217','admin',1,'6b9d69cfef9163f0257b2aa13577ba73',1,'Trọng Hóa',NULL,1,'0984206548','luanbhk@gmail.com','2016/07/27/692cf1bde8edae2a3a09638b6cbc0b34.jpg',0,0,0,NULL,NULL,NULL),(4,'2016-02-13 16:37:46','2017-04-18 13:55:44',6,'116.100.240.126','kinhluan',2,'2d694b87d38b768ac47c8dc03edcd6ec',0,'Kinh Luân',NULL,NULL,NULL,NULL,'kinhluan.png',0,0,0,NULL,'{\"brands\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"models\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1,\"rating\":1},\"skus\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1,\"rating\":1},\"specs\":{\"view\":1,\"execute\":1},\"points\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"export\":1,\"execute\":1},\"segments\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"comparisons\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"skus-comparisons\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"languages\":{\"add\":1,\"edit\":1,\"delete\":1,\"view\":1,\"import\":1,\"export\":1,\"execute\":1},\"profiles\":{\"edit\":1,\"execute\":1,\"view\":1},\"permissions\":{\"add\":1,\"edit\":1,\"view\":1,\"delete\":1},\"modules\":{\"add\":1,\"edit\":1,\"view\":1,\"delete\":1},\"menus\":{\"execute\":1,\"view\":1},\"groups\":{\"add\":1,\"edit\":1,\"execute\":1,\"view\":1,\"delete\":1},\"users\":{\"add\":1,\"edit\":1,\"execute\":1,\"view\":1,\"delete\":1},\"configurations\":{\"add\":1,\"edit\":1,\"execute\":1,\"view\":1,\"delete\":1}}','62,63,64,53,55,56,65,67,68,69,76,77,78,73,74,75,70,71,72,82,83,84,79,80,81,43,17,66,#,1,3,8,9,4,10,11,5,12,6,13,14,7,15,16,60,61,49'),(5,'2016-08-22 09:01:45','2016-08-22 09:01:45',3,'14.161.12.217','huynhtuananh',1,'c8813afd9f744be52f364984c4327609',0,'Huỳnh Tuấn Anh',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL),(6,'2016-08-30 08:18:20','2017-03-20 15:45:09',11,'14.161.12.217','conglinh',1,'5e570e982d6f1c096253f668d9a83f24',1,'Leon Tran','1993-09-19',NULL,'0961095661','conglinh.tran@mobiistar.vn','conglinh.jpg',0,0,0,NULL,NULL,NULL),(7,'2017-04-11 17:22:31','2017-04-11 17:27:14',11,'127.0.0.1','leon.tran',2,'4494fcade89bf50eb98ccb6ca5a5587c',0,'Leon Tran',NULL,NULL,NULL,NULL,'leon.tran.jpg',0,0,0,NULL,NULL,NULL),(8,'2017-04-27 16:19:14','2017-04-27 16:19:14',6,'14.161.12.217','tplus.tcl',2,'4494fcade89bf50eb98ccb6ca5a5587c',0,'De Creative L',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL),(9,'2017-04-27 16:36:57','2017-04-27 16:36:57',6,'14.161.12.217','mkt.ad',3,'4a8efff8065a1d9a4c688aac22fe8f2b',0,'MKT Admin',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL),(10,'2017-06-04 07:54:28','2017-06-04 07:54:28',4,'116.100.240.126','carl',2,'e9f933884d87e27d29d565c1960856ca',0,'Carl Ngô',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL),(11,'2017-07-22 15:14:53','2017-07-22 15:14:53',6,'14.161.12.217','phuong.luu',2,'4a8efff8065a1d9a4c688aac22fe8f2b',1,'Lưu Ngân Phượng',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL),(12,'2017-08-21 13:46:23','2017-08-21 14:04:44',6,'127.0.0.1','men.vo',2,'4a8efff8065a1d9a4c688aac22fe8f2b',0,'Võ Quang Mến',NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-23 15:19:55
