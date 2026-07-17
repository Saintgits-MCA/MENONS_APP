-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: menondb
-- ------------------------------------------------------
-- Server version	8.0.42

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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=801 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add admin',7,'add_admin'),(26,'Can change admin',7,'change_admin'),(27,'Can delete admin',7,'delete_admin'),(28,'Can view admin',7,'view_admin'),(29,'Can add baseunit',8,'add_baseunit'),(30,'Can change baseunit',8,'change_baseunit'),(31,'Can delete baseunit',8,'delete_baseunit'),(32,'Can view baseunit',8,'view_baseunit'),(33,'Can add batch',9,'add_batch'),(34,'Can change batch',9,'change_batch'),(35,'Can delete batch',9,'delete_batch'),(36,'Can view batch',9,'view_batch'),(37,'Can add branch',10,'add_branch'),(38,'Can change branch',10,'change_branch'),(39,'Can delete branch',10,'delete_branch'),(40,'Can view branch',10,'view_branch'),(41,'Can add casehistrypersonalinfo',11,'add_casehistrypersonalinfo'),(42,'Can change casehistrypersonalinfo',11,'change_casehistrypersonalinfo'),(43,'Can delete casehistrypersonalinfo',11,'delete_casehistrypersonalinfo'),(44,'Can view casehistrypersonalinfo',11,'view_casehistrypersonalinfo'),(45,'Can add casemedicalreport',12,'add_casemedicalreport'),(46,'Can change casemedicalreport',12,'change_casemedicalreport'),(47,'Can delete casemedicalreport',12,'delete_casemedicalreport'),(48,'Can view casemedicalreport',12,'view_casemedicalreport'),(49,'Can add city',13,'add_city'),(50,'Can change city',13,'change_city'),(51,'Can delete city',13,'delete_city'),(52,'Can view city',13,'view_city'),(53,'Can add comapany',14,'add_comapany'),(54,'Can change comapany',14,'change_comapany'),(55,'Can delete comapany',14,'delete_comapany'),(56,'Can view comapany',14,'view_comapany'),(57,'Can add country',15,'add_country'),(58,'Can change country',15,'change_country'),(59,'Can delete country',15,'delete_country'),(60,'Can view country',15,'view_country'),(61,'Can add department',16,'add_department'),(62,'Can change department',16,'change_department'),(63,'Can delete department',16,'delete_department'),(64,'Can view department',16,'view_department'),(65,'Can add designation',17,'add_designation'),(66,'Can change designation',17,'change_designation'),(67,'Can delete designation',17,'delete_designation'),(68,'Can view designation',17,'view_designation'),(69,'Can add district',18,'add_district'),(70,'Can change district',18,'change_district'),(71,'Can delete district',18,'delete_district'),(72,'Can view district',18,'view_district'),(73,'Can add hospitaldetails',19,'add_hospitaldetails'),(74,'Can change hospitaldetails',19,'change_hospitaldetails'),(75,'Can delete hospitaldetails',19,'delete_hospitaldetails'),(76,'Can view hospitaldetails',19,'view_hospitaldetails'),(77,'Can add invoice error log',20,'add_invoiceerrorlog'),(78,'Can change invoice error log',20,'change_invoiceerrorlog'),(79,'Can delete invoice error log',20,'delete_invoiceerrorlog'),(80,'Can view invoice error log',20,'view_invoiceerrorlog'),(81,'Can add item category',21,'add_itemcategory'),(82,'Can change item category',21,'change_itemcategory'),(83,'Can delete item category',21,'delete_itemcategory'),(84,'Can view item category',21,'view_itemcategory'),(85,'Can add menuheadingdetails',22,'add_menuheadingdetails'),(86,'Can change menuheadingdetails',22,'change_menuheadingdetails'),(87,'Can delete menuheadingdetails',22,'delete_menuheadingdetails'),(88,'Can view menuheadingdetails',22,'view_menuheadingdetails'),(89,'Can add prescription',23,'add_prescription'),(90,'Can change prescription',23,'change_prescription'),(91,'Can delete prescription',23,'delete_prescription'),(92,'Can view prescription',23,'view_prescription'),(93,'Can add role',24,'add_role'),(94,'Can change role',24,'change_role'),(95,'Can delete role',24,'delete_role'),(96,'Can view role',24,'view_role'),(97,'Can add staffdetails',25,'add_staffdetails'),(98,'Can change staffdetails',25,'change_staffdetails'),(99,'Can delete staffdetails',25,'delete_staffdetails'),(100,'Can view staffdetails',25,'view_staffdetails'),(101,'Can add state',26,'add_state'),(102,'Can change state',26,'change_state'),(103,'Can delete state',26,'delete_state'),(104,'Can view state',26,'view_state'),(105,'Can add status',27,'add_status'),(106,'Can change status',27,'change_status'),(107,'Can delete status',27,'delete_status'),(108,'Can view status',27,'view_status'),(109,'Can add storedetails',28,'add_storedetails'),(110,'Can change storedetails',28,'change_storedetails'),(111,'Can delete storedetails',28,'delete_storedetails'),(112,'Can view storedetails',28,'view_storedetails'),(113,'Can add supplier',29,'add_supplier'),(114,'Can change supplier',29,'change_supplier'),(115,'Can delete supplier',29,'delete_supplier'),(116,'Can view supplier',29,'view_supplier'),(117,'Can add taxmaster',30,'add_taxmaster'),(118,'Can change taxmaster',30,'change_taxmaster'),(119,'Can delete taxmaster',30,'delete_taxmaster'),(120,'Can view taxmaster',30,'view_taxmaster'),(121,'Can add treatment_master',31,'add_treatment_master'),(122,'Can change treatment_master',31,'change_treatment_master'),(123,'Can delete treatment_master',31,'delete_treatment_master'),(124,'Can view treatment_master',31,'view_treatment_master'),(125,'Can add equipment_master',32,'add_equipment_master'),(126,'Can change equipment_master',32,'change_equipment_master'),(127,'Can delete equipment_master',32,'delete_equipment_master'),(128,'Can view equipment_master',32,'view_equipment_master'),(129,'Can add item subcategory',33,'add_itemsubcategory'),(130,'Can change item subcategory',33,'change_itemsubcategory'),(131,'Can delete item subcategory',33,'delete_itemsubcategory'),(132,'Can view item subcategory',33,'view_itemsubcategory'),(133,'Can add medical report file',34,'add_medicalreportfile'),(134,'Can change medical report file',34,'change_medicalreportfile'),(135,'Can delete medical report file',34,'delete_medicalreportfile'),(136,'Can view medical report file',34,'view_medicalreportfile'),(137,'Can add medicinemaster',35,'add_medicinemaster'),(138,'Can change medicinemaster',35,'change_medicinemaster'),(139,'Can delete medicinemaster',35,'delete_medicinemaster'),(140,'Can view medicinemaster',35,'view_medicinemaster'),(141,'Can add itemaster',36,'add_itemaster'),(142,'Can change itemaster',36,'change_itemaster'),(143,'Can delete itemaster',36,'delete_itemaster'),(144,'Can view itemaster',36,'view_itemaster'),(145,'Can add menudetails',37,'add_menudetails'),(146,'Can change menudetails',37,'change_menudetails'),(147,'Can delete menudetails',37,'delete_menudetails'),(148,'Can view menudetails',37,'view_menudetails'),(149,'Can add package_deatils',38,'add_package_deatils'),(150,'Can change package_deatils',38,'change_package_deatils'),(151,'Can delete package_deatils',38,'delete_package_deatils'),(152,'Can view package_deatils',38,'view_package_deatils'),(153,'Can add patient_details',39,'add_patient_details'),(154,'Can change patient_details',39,'change_patient_details'),(155,'Can delete patient_details',39,'delete_patient_details'),(156,'Can view patient_details',39,'view_patient_details'),(157,'Can add obstretichistory',40,'add_obstretichistory'),(158,'Can change obstretichistory',40,'change_obstretichistory'),(159,'Can delete obstretichistory',40,'delete_obstretichistory'),(160,'Can view obstretichistory',40,'view_obstretichistory'),(161,'Can add obg history',41,'add_obghistory'),(162,'Can change obg history',41,'change_obghistory'),(163,'Can delete obg history',41,'delete_obghistory'),(164,'Can view obg history',41,'view_obghistory'),(165,'Can add nextreatmentdetailsmaster',42,'add_nextreatmentdetailsmaster'),(166,'Can change nextreatmentdetailsmaster',42,'change_nextreatmentdetailsmaster'),(167,'Can delete nextreatmentdetailsmaster',42,'delete_nextreatmentdetailsmaster'),(168,'Can view nextreatmentdetailsmaster',42,'view_nextreatmentdetailsmaster'),(169,'Can add menustralhistory',43,'add_menustralhistory'),(170,'Can change menustralhistory',43,'change_menustralhistory'),(171,'Can delete menustralhistory',43,'delete_menustralhistory'),(172,'Can view menustralhistory',43,'view_menustralhistory'),(173,'Can add medication',44,'add_medication'),(174,'Can change medication',44,'change_medication'),(175,'Can delete medication',44,'delete_medication'),(176,'Can view medication',44,'view_medication'),(177,'Can add med_ history',45,'add_med_history'),(178,'Can change med_ history',45,'change_med_history'),(179,'Can delete med_ history',45,'delete_med_history'),(180,'Can view med_ history',45,'view_med_history'),(181,'Can add labinvestigation',46,'add_labinvestigation'),(182,'Can change labinvestigation',46,'change_labinvestigation'),(183,'Can delete labinvestigation',46,'delete_labinvestigation'),(184,'Can view labinvestigation',46,'view_labinvestigation'),(185,'Can add hopresentillness',47,'add_hopresentillness'),(186,'Can change hopresentillness',47,'change_hopresentillness'),(187,'Can delete hopresentillness',47,'delete_hopresentillness'),(188,'Can view hopresentillness',47,'view_hopresentillness'),(189,'Can add hopastillness',48,'add_hopastillness'),(190,'Can change hopastillness',48,'change_hopastillness'),(191,'Can delete hopastillness',48,'delete_hopastillness'),(192,'Can view hopastillness',48,'view_hopastillness'),(193,'Can add generalphysicalexamination',49,'add_generalphysicalexamination'),(194,'Can change generalphysicalexamination',49,'change_generalphysicalexamination'),(195,'Can delete generalphysicalexamination',49,'delete_generalphysicalexamination'),(196,'Can view generalphysicalexamination',49,'view_generalphysicalexamination'),(197,'Can add family history',50,'add_familyhistory'),(198,'Can change family history',50,'change_familyhistory'),(199,'Can delete family history',50,'delete_familyhistory'),(200,'Can view family history',50,'view_familyhistory'),(201,'Can add doctorprescription',51,'add_doctorprescription'),(202,'Can change doctorprescription',51,'change_doctorprescription'),(203,'Can delete doctorprescription',51,'delete_doctorprescription'),(204,'Can view doctorprescription',51,'view_doctorprescription'),(205,'Can add differentialdiagnosis',52,'add_differentialdiagnosis'),(206,'Can change differentialdiagnosis',52,'change_differentialdiagnosis'),(207,'Can delete differentialdiagnosis',52,'delete_differentialdiagnosis'),(208,'Can view differentialdiagnosis',52,'view_differentialdiagnosis'),(209,'Can add dietary history',53,'add_dietaryhistory'),(210,'Can change dietary history',53,'change_dietaryhistory'),(211,'Can delete dietary history',53,'delete_dietaryhistory'),(212,'Can view dietary history',53,'view_dietaryhistory'),(213,'Can add diet_ chart',54,'add_diet_chart'),(214,'Can change diet_ chart',54,'change_diet_chart'),(215,'Can delete diet_ chart',54,'delete_diet_chart'),(216,'Can view diet_ chart',54,'view_diet_chart'),(217,'Can add diagnosis',55,'add_diagnosis'),(218,'Can change diagnosis',55,'change_diagnosis'),(219,'Can delete diagnosis',55,'delete_diagnosis'),(220,'Can view diagnosis',55,'view_diagnosis'),(221,'Can add dashvidhpariksha',56,'add_dashvidhpariksha'),(222,'Can change dashvidhpariksha',56,'change_dashvidhpariksha'),(223,'Can delete dashvidhpariksha',56,'delete_dashvidhpariksha'),(224,'Can view dashvidhpariksha',56,'view_dashvidhpariksha'),(225,'Can add complaints',57,'add_complaints'),(226,'Can change complaints',57,'change_complaints'),(227,'Can delete complaints',57,'delete_complaints'),(228,'Can view complaints',57,'view_complaints'),(229,'Can add ashtavidhpariksha',58,'add_ashtavidhpariksha'),(230,'Can change ashtavidhpariksha',58,'change_ashtavidhpariksha'),(231,'Can delete ashtavidhpariksha',58,'delete_ashtavidhpariksha'),(232,'Can view ashtavidhpariksha',58,'view_ashtavidhpariksha'),(233,'Can add patient_history',59,'add_patient_history'),(234,'Can change patient_history',59,'change_patient_history'),(235,'Can delete patient_history',59,'delete_patient_history'),(236,'Can view patient_history',59,'view_patient_history'),(237,'Can add personal history',60,'add_personalhistory'),(238,'Can change personal history',60,'change_personalhistory'),(239,'Can delete personal history',60,'delete_personalhistory'),(240,'Can view personal history',60,'view_personalhistory'),(241,'Can add personal historyold',61,'add_personalhistoryold'),(242,'Can change personal historyold',61,'change_personalhistoryold'),(243,'Can delete personal historyold',61,'delete_personalhistoryold'),(244,'Can view personal historyold',61,'view_personalhistoryold'),(245,'Can add phy_ sys_ examination',62,'add_phy_sys_examination'),(246,'Can change phy_ sys_ examination',62,'change_phy_sys_examination'),(247,'Can delete phy_ sys_ examination',62,'delete_phy_sys_examination'),(248,'Can view phy_ sys_ examination',62,'view_phy_sys_examination'),(249,'Can add preliminarydata',63,'add_preliminarydata'),(250,'Can change preliminarydata',63,'change_preliminarydata'),(251,'Can delete preliminarydata',63,'delete_preliminarydata'),(252,'Can view preliminarydata',63,'view_preliminarydata'),(253,'Can add prescriptiont',64,'add_prescriptiont'),(254,'Can change prescriptiont',64,'change_prescriptiont'),(255,'Can delete prescriptiont',64,'delete_prescriptiont'),(256,'Can view prescriptiont',64,'view_prescriptiont'),(257,'Can add record_ sheet',65,'add_record_sheet'),(258,'Can change record_ sheet',65,'change_record_sheet'),(259,'Can delete record_ sheet',65,'delete_record_sheet'),(260,'Can view record_ sheet',65,'view_record_sheet'),(261,'Can add reorderleveldetails',66,'add_reorderleveldetails'),(262,'Can change reorderleveldetails',66,'change_reorderleveldetails'),(263,'Can delete reorderleveldetails',66,'delete_reorderleveldetails'),(264,'Can view reorderleveldetails',66,'view_reorderleveldetails'),(265,'Can add menumanagement',67,'add_menumanagement'),(266,'Can change menumanagement',67,'change_menumanagement'),(267,'Can delete menumanagement',67,'delete_menumanagement'),(268,'Can view menumanagement',67,'view_menumanagement'),(269,'Can add sampraptighataka',68,'add_sampraptighataka'),(270,'Can change sampraptighataka',68,'change_sampraptighataka'),(271,'Can delete sampraptighataka',68,'delete_sampraptighataka'),(272,'Can view sampraptighataka',68,'view_sampraptighataka'),(273,'Can add staffallocation',69,'add_staffallocation'),(274,'Can change staffallocation',69,'change_staffallocation'),(275,'Can delete staffallocation',69,'delete_staffallocation'),(276,'Can view staffallocation',69,'view_staffallocation'),(277,'Can add purchaseorderheader',70,'add_purchaseorderheader'),(278,'Can change purchaseorderheader',70,'change_purchaseorderheader'),(279,'Can delete purchaseorderheader',70,'delete_purchaseorderheader'),(280,'Can view purchaseorderheader',70,'view_purchaseorderheader'),(281,'Can add invoicemaster',71,'add_invoicemaster'),(282,'Can change invoicemaster',71,'change_invoicemaster'),(283,'Can delete invoicemaster',71,'delete_invoicemaster'),(284,'Can view invoicemaster',71,'view_invoicemaster'),(285,'Can add grnheader',72,'add_grnheader'),(286,'Can change grnheader',72,'change_grnheader'),(287,'Can delete grnheader',72,'delete_grnheader'),(288,'Can view grnheader',72,'view_grnheader'),(289,'Can add dailyreportforop',73,'add_dailyreportforop'),(290,'Can change dailyreportforop',73,'change_dailyreportforop'),(291,'Can delete dailyreportforop',73,'delete_dailyreportforop'),(292,'Can view dailyreportforop',73,'view_dailyreportforop'),(293,'Can add creditdetailsmaster',74,'add_creditdetailsmaster'),(294,'Can change creditdetailsmaster',74,'change_creditdetailsmaster'),(295,'Can delete creditdetailsmaster',74,'delete_creditdetailsmaster'),(296,'Can view creditdetailsmaster',74,'view_creditdetailsmaster'),(297,'Can add consultationinvdetails',75,'add_consultationinvdetails'),(298,'Can change consultationinvdetails',75,'change_consultationinvdetails'),(299,'Can delete consultationinvdetails',75,'delete_consultationinvdetails'),(300,'Can view consultationinvdetails',75,'view_consultationinvdetails'),(301,'Can add roleassign',76,'add_roleassign'),(302,'Can change roleassign',76,'change_roleassign'),(303,'Can delete roleassign',76,'delete_roleassign'),(304,'Can view roleassign',76,'view_roleassign'),(305,'Can add daily treatmentdetails',77,'add_dailytreatmentdetails'),(306,'Can change daily treatmentdetails',77,'change_dailytreatmentdetails'),(307,'Can delete daily treatmentdetails',77,'delete_dailytreatmentdetails'),(308,'Can view daily treatmentdetails',77,'view_dailytreatmentdetails'),(309,'Can add appointments',78,'add_appointments'),(310,'Can change appointments',78,'change_appointments'),(311,'Can delete appointments',78,'delete_appointments'),(312,'Can view appointments',78,'view_appointments'),(313,'Can add stock edit logtabl',79,'add_stockeditlogtabl'),(314,'Can change stock edit logtabl',79,'change_stockeditlogtabl'),(315,'Can delete stock edit logtabl',79,'delete_stockeditlogtabl'),(316,'Can view stock edit logtabl',79,'view_stockeditlogtabl'),(317,'Can add physicalstockdetails',80,'add_physicalstockdetails'),(318,'Can change physicalstockdetails',80,'change_physicalstockdetails'),(319,'Can delete physicalstockdetails',80,'delete_physicalstockdetails'),(320,'Can view physicalstockdetails',80,'view_physicalstockdetails'),(321,'Can add invoicechild',81,'add_invoicechild'),(322,'Can change invoicechild',81,'change_invoicechild'),(323,'Can delete invoicechild',81,'delete_invoicechild'),(324,'Can view invoicechild',81,'view_invoicechild'),(325,'Can add creditdetailschild',82,'add_creditdetailschild'),(326,'Can change creditdetailschild',82,'change_creditdetailschild'),(327,'Can delete creditdetailschild',82,'delete_creditdetailschild'),(328,'Can view creditdetailschild',82,'view_creditdetailschild'),(329,'Can add systematic examination',83,'add_systematicexamination'),(330,'Can change systematic examination',83,'change_systematicexamination'),(331,'Can delete systematic examination',83,'delete_systematicexamination'),(332,'Can view systematic examination',83,'view_systematicexamination'),(333,'Can add treatment',84,'add_treatment'),(334,'Can change treatment',84,'change_treatment'),(335,'Can delete treatment',84,'delete_treatment'),(336,'Can view treatment',84,'view_treatment'),(337,'Can add treatment_ chart',85,'add_treatment_chart'),(338,'Can change treatment_ chart',85,'change_treatment_chart'),(339,'Can delete treatment_ chart',85,'delete_treatment_chart'),(340,'Can view treatment_ chart',85,'view_treatment_chart'),(341,'Can add nextreatmentdetailschild',86,'add_nextreatmentdetailschild'),(342,'Can change nextreatmentdetailschild',86,'change_nextreatmentdetailschild'),(343,'Can delete nextreatmentdetailschild',86,'delete_nextreatmentdetailschild'),(344,'Can view nextreatmentdetailschild',86,'view_nextreatmentdetailschild'),(345,'Can add treatmentadvised',87,'add_treatmentadvised'),(346,'Can change treatmentadvised',87,'change_treatmentadvised'),(347,'Can delete treatmentadvised',87,'delete_treatmentadvised'),(348,'Can view treatmentadvised',87,'view_treatmentadvised'),(349,'Can add treatmentinvoicemaster',88,'add_treatmentinvoicemaster'),(350,'Can change treatmentinvoicemaster',88,'change_treatmentinvoicemaster'),(351,'Can delete treatmentinvoicemaster',88,'delete_treatmentinvoicemaster'),(352,'Can view treatmentinvoicemaster',88,'view_treatmentinvoicemaster'),(353,'Can add treatmentinvoicechild',89,'add_treatmentinvoicechild'),(354,'Can change treatmentinvoicechild',89,'change_treatmentinvoicechild'),(355,'Can delete treatmentinvoicechild',89,'delete_treatmentinvoicechild'),(356,'Can view treatmentinvoicechild',89,'view_treatmentinvoicechild'),(357,'Can add triggeraftersalereturn',90,'add_triggeraftersalereturn'),(358,'Can change triggeraftersalereturn',90,'change_triggeraftersalereturn'),(359,'Can delete triggeraftersalereturn',90,'delete_triggeraftersalereturn'),(360,'Can view triggeraftersalereturn',90,'view_triggeraftersalereturn'),(361,'Can add unitdt',91,'add_unitdt'),(362,'Can change unitdt',91,'change_unitdt'),(363,'Can delete unitdt',91,'delete_unitdt'),(364,'Can view unitdt',91,'view_unitdt'),(365,'Can add triggerupdate_purchaseorderchild',92,'add_triggerupdate_purchaseorderchild'),(366,'Can change triggerupdate_purchaseorderchild',92,'change_triggerupdate_purchaseorderchild'),(367,'Can delete triggerupdate_purchaseorderchild',92,'delete_triggerupdate_purchaseorderchild'),(368,'Can view triggerupdate_purchaseorderchild',92,'view_triggerupdate_purchaseorderchild'),(369,'Can add triggerforstock',93,'add_triggerforstock'),(370,'Can change triggerforstock',93,'change_triggerforstock'),(371,'Can delete triggerforstock',93,'delete_triggerforstock'),(372,'Can view triggerforstock',93,'view_triggerforstock'),(373,'Can add triggerforafterupdatestock',94,'add_triggerforafterupdatestock'),(374,'Can change triggerforafterupdatestock',94,'change_triggerforafterupdatestock'),(375,'Can delete triggerforafterupdatestock',94,'delete_triggerforafterupdatestock'),(376,'Can view triggerforafterupdatestock',94,'view_triggerforafterupdatestock'),(377,'Can add stockentry physicalstockdetails',95,'add_stockentryphysicalstockdetails'),(378,'Can change stockentry physicalstockdetails',95,'change_stockentryphysicalstockdetails'),(379,'Can delete stockentry physicalstockdetails',95,'delete_stockentryphysicalstockdetails'),(380,'Can view stockentry physicalstockdetails',95,'view_stockentryphysicalstockdetails'),(381,'Can add purchaseorderchild',96,'add_purchaseorderchild'),(382,'Can change purchaseorderchild',96,'change_purchaseorderchild'),(383,'Can delete purchaseorderchild',96,'delete_purchaseorderchild'),(384,'Can view purchaseorderchild',96,'view_purchaseorderchild'),(385,'Can add grnchild',97,'add_grnchild'),(386,'Can change grnchild',97,'change_grnchild'),(387,'Can delete grnchild',97,'delete_grnchild'),(388,'Can view grnchild',97,'view_grnchild'),(389,'Can add vitals',98,'add_vitals'),(390,'Can change vitals',98,'change_vitals'),(391,'Can delete vitals',98,'delete_vitals'),(392,'Can view vitals',98,'view_vitals'),(393,'Can add vyadhipariksha',99,'add_vyadhipariksha'),(394,'Can change vyadhipariksha',99,'change_vyadhipariksha'),(395,'Can delete vyadhipariksha',99,'delete_vyadhipariksha'),(396,'Can view vyadhipariksha',99,'view_vyadhipariksha'),(397,'Can add sourcedetails',100,'add_sourcedetails'),(398,'Can change sourcedetails',100,'change_sourcedetails'),(399,'Can delete sourcedetails',100,'delete_sourcedetails'),(400,'Can view sourcedetails',100,'view_sourcedetails'),(401,'Can add enquiry',101,'add_enquiry'),(402,'Can change enquiry',101,'change_enquiry'),(403,'Can delete enquiry',101,'delete_enquiry'),(404,'Can view enquiry',101,'view_enquiry'),(405,'Can add followup',102,'add_followup'),(406,'Can change followup',102,'change_followup'),(407,'Can delete followup',102,'delete_followup'),(408,'Can view followup',102,'view_followup'),(409,'Can add nex doctor prescription',103,'add_nexdoctorprescription'),(410,'Can change nex doctor prescription',103,'change_nexdoctorprescription'),(411,'Can delete nex doctor prescription',103,'delete_nexdoctorprescription'),(412,'Can view nex doctor prescription',103,'view_nexdoctorprescription'),(413,'Can add medication entry',104,'add_medicationentry'),(414,'Can change medication entry',104,'change_medicationentry'),(415,'Can delete medication entry',104,'delete_medicationentry'),(416,'Can view medication entry',104,'view_medicationentry'),(417,'Can add casehistory error log',105,'add_casehistoryerrorlog'),(418,'Can change casehistory error log',105,'change_casehistoryerrorlog'),(419,'Can delete casehistory error log',105,'delete_casehistoryerrorlog'),(420,'Can view casehistory error log',105,'view_casehistoryerrorlog'),(421,'Can add diet',106,'add_diet'),(422,'Can change diet',106,'change_diet'),(423,'Can delete diet',106,'delete_diet'),(424,'Can view diet',106,'view_diet'),(425,'Can add medicalfollowup',107,'add_medicalfollowup'),(426,'Can change medicalfollowup',107,'change_medicalfollowup'),(427,'Can delete medicalfollowup',107,'delete_medicalfollowup'),(428,'Can view medicalfollowup',107,'view_medicalfollowup'),(429,'Can add clairveda case history',108,'add_clairvedacasehistory'),(430,'Can change clairveda case history',108,'change_clairvedacasehistory'),(431,'Can delete clairveda case history',108,'delete_clairvedacasehistory'),(432,'Can view clairveda case history',108,'view_clairvedacasehistory'),(433,'Can add clairveda follow up',109,'add_clairvedafollowup'),(434,'Can change clairveda follow up',109,'change_clairvedafollowup'),(435,'Can delete clairveda follow up',109,'delete_clairvedafollowup'),(436,'Can view clairveda follow up',109,'view_clairvedafollowup'),(437,'Can add clairveda follow up report',110,'add_clairvedafollowupreport'),(438,'Can change clairveda follow up report',110,'change_clairvedafollowupreport'),(439,'Can delete clairveda follow up report',110,'delete_clairvedafollowupreport'),(440,'Can view clairveda follow up report',110,'view_clairvedafollowupreport'),(441,'Can add clairveda prescription',111,'add_clairvedaprescription'),(442,'Can change clairveda prescription',111,'change_clairvedaprescription'),(443,'Can delete clairveda prescription',111,'delete_clairvedaprescription'),(444,'Can view clairveda prescription',111,'view_clairvedaprescription'),(445,'Can add clairvedcasehistrypersonalinfo',112,'add_clairvedcasehistrypersonalinfo'),(446,'Can change clairvedcasehistrypersonalinfo',112,'change_clairvedcasehistrypersonalinfo'),(447,'Can delete clairvedcasehistrypersonalinfo',112,'delete_clairvedcasehistrypersonalinfo'),(448,'Can view clairvedcasehistrypersonalinfo',112,'view_clairvedcasehistrypersonalinfo'),(449,'Can add casehistoryresult report',113,'add_casehistoryresultreport'),(450,'Can change casehistoryresult report',113,'change_casehistoryresultreport'),(451,'Can delete casehistoryresult report',113,'delete_casehistoryresultreport'),(452,'Can view casehistoryresult report',113,'view_casehistoryresultreport'),(453,'Can add followupcalldetails',114,'add_followupcalldetails'),(454,'Can change followupcalldetails',114,'change_followupcalldetails'),(455,'Can delete followupcalldetails',114,'delete_followupcalldetails'),(456,'Can view followupcalldetails',114,'view_followupcalldetails'),(457,'Can add ippatientadmission',115,'add_ippatientadmission'),(458,'Can change ippatientadmission',115,'change_ippatientadmission'),(459,'Can delete ippatientadmission',115,'delete_ippatientadmission'),(460,'Can view ippatientadmission',115,'view_ippatientadmission'),(461,'Can add room_details',116,'add_room_details'),(462,'Can change room_details',116,'change_room_details'),(463,'Can delete room_details',116,'delete_room_details'),(464,'Can view room_details',116,'view_room_details'),(465,'Can add ippatientroombooking',117,'add_ippatientroombooking'),(466,'Can change ippatientroombooking',117,'change_ippatientroombooking'),(467,'Can delete ippatientroombooking',117,'delete_ippatientroombooking'),(468,'Can view ippatientroombooking',117,'view_ippatientroombooking'),(469,'Can add ipdailymedicine',118,'add_ipdailymedicine'),(470,'Can change ipdailymedicine',118,'change_ipdailymedicine'),(471,'Can delete ipdailymedicine',118,'delete_ipdailymedicine'),(472,'Can view ipdailymedicine',118,'view_ipdailymedicine'),(473,'Can add iptreatmentdetails',119,'add_iptreatmentdetails'),(474,'Can change iptreatmentdetails',119,'change_iptreatmentdetails'),(475,'Can delete iptreatmentdetails',119,'delete_iptreatmentdetails'),(476,'Can view iptreatmentdetails',119,'view_iptreatmentdetails'),(477,'Can add patient discharge',120,'add_patientdischarge'),(478,'Can change patient discharge',120,'change_patientdischarge'),(479,'Can delete patient discharge',120,'delete_patientdischarge'),(480,'Can view patient discharge',120,'view_patientdischarge'),(481,'Can add ip bill',121,'add_ipbill'),(482,'Can change ip bill',121,'change_ipbill'),(483,'Can delete ip bill',121,'delete_ipbill'),(484,'Can view ip bill',121,'view_ipbill'),(485,'Can add patient audit log',122,'add_patientauditlog'),(486,'Can change patient audit log',122,'change_patientauditlog'),(487,'Can delete patient audit log',122,'delete_patientauditlog'),(488,'Can view patient audit log',122,'view_patientauditlog'),(489,'Can add room change log',123,'add_roomchangelog'),(490,'Can change room change log',123,'change_roomchangelog'),(491,'Can delete room change log',123,'delete_roomchangelog'),(492,'Can view room change log',123,'view_roomchangelog'),(493,'Can add ipexpandedbillmedicinedetail',124,'add_ipexpandedbillmedicinedetail'),(494,'Can change ipexpandedbillmedicinedetail',124,'change_ipexpandedbillmedicinedetail'),(495,'Can delete ipexpandedbillmedicinedetail',124,'delete_ipexpandedbillmedicinedetail'),(496,'Can view ipexpandedbillmedicinedetail',124,'view_ipexpandedbillmedicinedetail'),(497,'Can add ipexpandedbillotherexpensesdetail',125,'add_ipexpandedbillotherexpensesdetail'),(498,'Can change ipexpandedbillotherexpensesdetail',125,'change_ipexpandedbillotherexpensesdetail'),(499,'Can delete ipexpandedbillotherexpensesdetail',125,'delete_ipexpandedbillotherexpensesdetail'),(500,'Can view ipexpandedbillotherexpensesdetail',125,'view_ipexpandedbillotherexpensesdetail'),(501,'Can add ip expanded bill room detail',126,'add_ipexpandedbillroomdetail'),(502,'Can change ip expanded bill room detail',126,'change_ipexpandedbillroomdetail'),(503,'Can delete ip expanded bill room detail',126,'delete_ipexpandedbillroomdetail'),(504,'Can view ip expanded bill room detail',126,'view_ipexpandedbillroomdetail'),(505,'Can add ipexpandedbilltreatmentdetail',127,'add_ipexpandedbilltreatmentdetail'),(506,'Can change ipexpandedbilltreatmentdetail',127,'change_ipexpandedbilltreatmentdetail'),(507,'Can delete ipexpandedbilltreatmentdetail',127,'delete_ipexpandedbilltreatmentdetail'),(508,'Can view ipexpandedbilltreatmentdetail',127,'view_ipexpandedbilltreatmentdetail'),(509,'Can add packagemaster',128,'add_packagemaster'),(510,'Can change packagemaster',128,'change_packagemaster'),(511,'Can delete packagemaster',128,'delete_packagemaster'),(512,'Can view packagemaster',128,'view_packagemaster'),(513,'Can add advice on discharge',129,'add_adviceondischarge'),(514,'Can change advice on discharge',129,'change_adviceondischarge'),(515,'Can delete advice on discharge',129,'delete_adviceondischarge'),(516,'Can view advice on discharge',129,'view_adviceondischarge'),(517,'Can add discharge medication procedure',130,'add_dischargemedicationprocedure'),(518,'Can change discharge medication procedure',130,'change_dischargemedicationprocedure'),(519,'Can delete discharge medication procedure',130,'delete_dischargemedicationprocedure'),(520,'Can view discharge medication procedure',130,'view_dischargemedicationprocedure'),(521,'Can add ip package payment',131,'add_ippackagepayment'),(522,'Can change ip package payment',131,'change_ippackagepayment'),(523,'Can delete ip package payment',131,'delete_ippackagepayment'),(524,'Can view ip package payment',131,'view_ippackagepayment'),(525,'Can add dashboardesign',132,'add_dashboardesign'),(526,'Can change dashboardesign',132,'change_dashboardesign'),(527,'Can delete dashboardesign',132,'delete_dashboardesign'),(528,'Can view dashboardesign',132,'view_dashboardesign'),(529,'Can add dashboardallocation',133,'add_dashboardallocation'),(530,'Can change dashboardallocation',133,'change_dashboardallocation'),(531,'Can delete dashboardallocation',133,'delete_dashboardallocation'),(532,'Can view dashboardallocation',133,'view_dashboardallocation'),(533,'Can add ip packageextend',134,'add_ippackageextend'),(534,'Can change ip packageextend',134,'change_ippackageextend'),(535,'Can delete ip packageextend',134,'delete_ippackageextend'),(536,'Can view ip packageextend',134,'view_ippackageextend'),(537,'Can add treatment room_details',135,'add_treatmentroom_details'),(538,'Can change treatment room_details',135,'change_treatmentroom_details'),(539,'Can delete treatment room_details',135,'delete_treatmentroom_details'),(540,'Can view treatment room_details',135,'view_treatmentroom_details'),(541,'Can add oppatienttreamentroombooking',136,'add_oppatienttreamentroombooking'),(542,'Can change oppatienttreamentroombooking',136,'change_oppatienttreamentroombooking'),(543,'Can delete oppatienttreamentroombooking',136,'delete_oppatienttreamentroombooking'),(544,'Can view oppatienttreamentroombooking',136,'view_oppatienttreamentroombooking'),(545,'Can add proceduredt',137,'add_proceduredt'),(546,'Can change proceduredt',137,'change_proceduredt'),(547,'Can delete proceduredt',137,'delete_proceduredt'),(548,'Can view proceduredt',137,'view_proceduredt'),(549,'Can add oppatienttimeslotbooking',138,'add_oppatienttimeslotbooking'),(550,'Can change oppatienttimeslotbooking',138,'change_oppatienttimeslotbooking'),(551,'Can delete oppatienttimeslotbooking',138,'delete_oppatienttimeslotbooking'),(552,'Can view oppatienttimeslotbooking',138,'view_oppatienttimeslotbooking'),(553,'Can add oppatientadmission',139,'add_oppatientadmission'),(554,'Can change oppatientadmission',139,'change_oppatientadmission'),(555,'Can delete oppatientadmission',139,'delete_oppatientadmission'),(556,'Can view oppatientadmission',139,'view_oppatientadmission'),(557,'Can add op package payment',140,'add_oppackagepayment'),(558,'Can change op package payment',140,'change_oppackagepayment'),(559,'Can delete op package payment',140,'delete_oppackagepayment'),(560,'Can view op package payment',140,'view_oppackagepayment'),(561,'Can add labtestchild',141,'add_labtestchild'),(562,'Can change labtestchild',141,'change_labtestchild'),(563,'Can delete labtestchild',141,'delete_labtestchild'),(564,'Can view labtestchild',141,'view_labtestchild'),(565,'Can add labtestmaster',142,'add_labtestmaster'),(566,'Can change labtestmaster',142,'change_labtestmaster'),(567,'Can delete labtestmaster',142,'delete_labtestmaster'),(568,'Can view labtestmaster',142,'view_labtestmaster'),(569,'Can add casehistorydietplan',143,'add_casehistorydietplan'),(570,'Can change casehistorydietplan',143,'change_casehistorydietplan'),(571,'Can delete casehistorydietplan',143,'delete_casehistorydietplan'),(572,'Can view casehistorydietplan',143,'view_casehistorydietplan'),(573,'Can add casehistorydoctorsnote',144,'add_casehistorydoctorsnote'),(574,'Can change casehistorydoctorsnote',144,'change_casehistorydoctorsnote'),(575,'Can delete casehistorydoctorsnote',144,'delete_casehistorydoctorsnote'),(576,'Can view casehistorydoctorsnote',144,'view_casehistorydoctorsnote'),(577,'Can add casehistorymedicalandsurgicalhistory',145,'add_casehistorymedicalandsurgicalhistory'),(578,'Can change casehistorymedicalandsurgicalhistory',145,'change_casehistorymedicalandsurgicalhistory'),(579,'Can delete casehistorymedicalandsurgicalhistory',145,'delete_casehistorymedicalandsurgicalhistory'),(580,'Can view casehistorymedicalandsurgicalhistory',145,'view_casehistorymedicalandsurgicalhistory'),(581,'Can add casehistorytreatmentplan',146,'add_casehistorytreatmentplan'),(582,'Can change casehistorytreatmentplan',146,'change_casehistorytreatmentplan'),(583,'Can delete casehistorytreatmentplan',146,'delete_casehistorytreatmentplan'),(584,'Can view casehistorytreatmentplan',146,'view_casehistorytreatmentplan'),(585,'Can add casehistryvitals',147,'add_casehistryvitals'),(586,'Can change casehistryvitals',147,'change_casehistryvitals'),(587,'Can delete casehistryvitals',147,'delete_casehistryvitals'),(588,'Can view casehistryvitals',147,'view_casehistryvitals'),(589,'Can add casehistorylabtestrequisition',148,'add_casehistorylabtestrequisition'),(590,'Can change casehistorylabtestrequisition',148,'change_casehistorylabtestrequisition'),(591,'Can delete casehistorylabtestrequisition',148,'delete_casehistorylabtestrequisition'),(592,'Can view casehistorylabtestrequisition',148,'view_casehistorylabtestrequisition'),(593,'Can add casehistorylabresult',149,'add_casehistorylabresult'),(594,'Can change casehistorylabresult',149,'change_casehistorylabresult'),(595,'Can delete casehistorylabresult',149,'delete_casehistorylabresult'),(596,'Can view casehistorylabresult',149,'view_casehistorylabresult'),(597,'Can add prescriptionnew',150,'add_prescriptionnew'),(598,'Can change prescriptionnew',150,'change_prescriptionnew'),(599,'Can delete prescriptionnew',150,'delete_prescriptionnew'),(600,'Can view prescriptionnew',150,'view_prescriptionnew'),(601,'Can add ratemaster',151,'add_ratemaster'),(602,'Can change ratemaster',151,'change_ratemaster'),(603,'Can delete ratemaster',151,'delete_ratemaster'),(604,'Can view ratemaster',151,'view_ratemaster'),(605,'Can add appointmentinvoicemaster',152,'add_appointmentinvoicemaster'),(606,'Can change appointmentinvoicemaster',152,'change_appointmentinvoicemaster'),(607,'Can delete appointmentinvoicemaster',152,'delete_appointmentinvoicemaster'),(608,'Can view appointmentinvoicemaster',152,'view_appointmentinvoicemaster'),(609,'Can add food',153,'add_food'),(610,'Can change food',153,'change_food'),(611,'Can delete food',153,'delete_food'),(612,'Can view food',153,'view_food'),(613,'Can add new invoice master',154,'add_newinvoicemaster'),(614,'Can change new invoice master',154,'change_newinvoicemaster'),(615,'Can delete new invoice master',154,'delete_newinvoicemaster'),(616,'Can view new invoice master',154,'view_newinvoicemaster'),(617,'Can add new invoice child',155,'add_newinvoicechild'),(618,'Can change new invoice child',155,'change_newinvoicechild'),(619,'Can delete new invoice child',155,'delete_newinvoicechild'),(620,'Can view new invoice child',155,'view_newinvoicechild'),(621,'Can add medicinemaster_new',156,'add_medicinemaster_new'),(622,'Can change medicinemaster_new',156,'change_medicinemaster_new'),(623,'Can delete medicinemaster_new',156,'delete_medicinemaster_new'),(624,'Can view medicinemaster_new',156,'view_medicinemaster_new'),(625,'Can add medicinemasterrate',157,'add_medicinemasterrate'),(626,'Can change medicinemasterrate',157,'change_medicinemasterrate'),(627,'Can delete medicinemasterrate',157,'delete_medicinemasterrate'),(628,'Can view medicinemasterrate',157,'view_medicinemasterrate'),(629,'Can add inventory category',158,'add_inventorycategory'),(630,'Can change inventory category',158,'change_inventorycategory'),(631,'Can delete inventory category',158,'delete_inventorycategory'),(632,'Can view inventory category',158,'view_inventorycategory'),(633,'Can add inventory company',159,'add_inventorycompany'),(634,'Can change inventory company',159,'change_inventorycompany'),(635,'Can delete inventory company',159,'delete_inventorycompany'),(636,'Can view inventory company',159,'view_inventorycompany'),(637,'Can add inventory invoice master',160,'add_inventoryinvoicemaster'),(638,'Can change inventory invoice master',160,'change_inventoryinvoicemaster'),(639,'Can delete inventory invoice master',160,'delete_inventoryinvoicemaster'),(640,'Can view inventory invoice master',160,'view_inventoryinvoicemaster'),(641,'Can add inventoryinvoicechild',161,'add_inventoryinvoicechild'),(642,'Can change inventoryinvoicechild',161,'change_inventoryinvoicechild'),(643,'Can delete inventoryinvoicechild',161,'delete_inventoryinvoicechild'),(644,'Can view inventoryinvoicechild',161,'view_inventoryinvoicechild'),(645,'Can add inventorymaster',162,'add_inventorymaster'),(646,'Can change inventorymaster',162,'change_inventorymaster'),(647,'Can delete inventorymaster',162,'delete_inventorymaster'),(648,'Can view inventorymaster',162,'view_inventorymaster'),(649,'Can add inventorystockdetails',163,'add_inventorystockdetails'),(650,'Can change inventorystockdetails',163,'change_inventorystockdetails'),(651,'Can delete inventorystockdetails',163,'delete_inventorystockdetails'),(652,'Can view inventorystockdetails',163,'view_inventorystockdetails'),(653,'Can add invreorderdetails',164,'add_invreorderdetails'),(654,'Can change invreorderdetails',164,'change_invreorderdetails'),(655,'Can delete invreorderdetails',164,'delete_invreorderdetails'),(656,'Can view invreorderdetails',164,'view_invreorderdetails'),(657,'Can add credit note master',165,'add_creditnotemaster'),(658,'Can change credit note master',165,'change_creditnotemaster'),(659,'Can delete credit note master',165,'delete_creditnotemaster'),(660,'Can view credit note master',165,'view_creditnotemaster'),(661,'Can add credit note child',166,'add_creditnotechild'),(662,'Can change credit note child',166,'change_creditnotechild'),(663,'Can delete credit note child',166,'delete_creditnotechild'),(664,'Can view credit note child',166,'view_creditnotechild'),(665,'Can add payment update log',167,'add_paymentupdatelog'),(666,'Can change payment update log',167,'change_paymentupdatelog'),(667,'Can delete payment update log',167,'delete_paymentupdatelog'),(668,'Can view payment update log',167,'view_paymentupdatelog'),(669,'Can add appointment fee rule',168,'add_appointmentfeerule'),(670,'Can change appointment fee rule',168,'change_appointmentfeerule'),(671,'Can delete appointment fee rule',168,'delete_appointmentfeerule'),(672,'Can view appointment fee rule',168,'view_appointmentfeerule'),(673,'Can add patient visit tracking',169,'add_patientvisittracking'),(674,'Can change patient visit tracking',169,'change_patientvisittracking'),(675,'Can delete patient visit tracking',169,'delete_patientvisittracking'),(676,'Can view patient visit tracking',169,'view_patientvisittracking'),(677,'Can add stock audit log',170,'add_stockauditlog'),(678,'Can change stock audit log',170,'change_stockauditlog'),(679,'Can delete stock audit log',170,'delete_stockauditlog'),(680,'Can view stock audit log',170,'view_stockauditlog'),(681,'Can add Pharmacy Invoice Payment Update Log',171,'add_paymentupdatelognew'),(682,'Can change Pharmacy Invoice Payment Update Log',171,'change_paymentupdatelognew'),(683,'Can delete Pharmacy Invoice Payment Update Log',171,'delete_paymentupdatelognew'),(684,'Can view Pharmacy Invoice Payment Update Log',171,'view_paymentupdatelognew'),(685,'Can add appointment edit log',172,'add_appointmenteditlog'),(686,'Can change appointment edit log',172,'change_appointmenteditlog'),(687,'Can delete appointment edit log',172,'delete_appointmenteditlog'),(688,'Can view appointment edit log',172,'view_appointmenteditlog'),(689,'Can add zoho access token',173,'add_zohoaccesstoken'),(690,'Can change zoho access token',173,'change_zohoaccesstoken'),(691,'Can delete zoho access token',173,'delete_zohoaccesstoken'),(692,'Can view zoho access token',173,'view_zohoaccesstoken'),(693,'Can add zoho config',174,'add_zohoconfig'),(694,'Can change zoho config',174,'change_zohoconfig'),(695,'Can delete zoho config',174,'delete_zohoconfig'),(696,'Can view zoho config',174,'view_zohoconfig'),(697,'Can add Assigned Appointment',175,'add_assignedappointments'),(698,'Can change Assigned Appointment',175,'change_assignedappointments'),(699,'Can delete Assigned Appointment',175,'delete_assignedappointments'),(700,'Can view Assigned Appointment',175,'view_assignedappointments'),(701,'Can add prescription edit log',176,'add_prescriptioneditlog'),(702,'Can change prescription edit log',176,'change_prescriptioneditlog'),(703,'Can delete prescription edit log',176,'delete_prescriptioneditlog'),(704,'Can view prescription edit log',176,'view_prescriptioneditlog'),(705,'Can add appointment fee',177,'add_appointmentfee'),(706,'Can change appointment fee',177,'change_appointmentfee'),(707,'Can delete appointment fee',177,'delete_appointmentfee'),(708,'Can view appointment fee',177,'view_appointmentfee'),(709,'Can add casehistorylabbill',178,'add_casehistorylabbill'),(710,'Can change casehistorylabbill',178,'change_casehistorylabbill'),(711,'Can delete casehistorylabbill',178,'delete_casehistorylabbill'),(712,'Can view casehistorylabbill',178,'view_casehistorylabbill'),(713,'Can add proforma invoice',179,'add_proformainvoice'),(714,'Can change proforma invoice',179,'change_proformainvoice'),(715,'Can delete proforma invoice',179,'delete_proformainvoice'),(716,'Can view proforma invoice',179,'view_proformainvoice'),(717,'Can add purchase order',180,'add_purchaseorder'),(718,'Can change purchase order',180,'change_purchaseorder'),(719,'Can delete purchase order',180,'delete_purchaseorder'),(720,'Can view purchase order',180,'view_purchaseorder'),(721,'Can add proforma item',181,'add_proformaitem'),(722,'Can change proforma item',181,'change_proformaitem'),(723,'Can delete proforma item',181,'delete_proformaitem'),(724,'Can view proforma item',181,'view_proformaitem'),(725,'Can add po item',182,'add_poitem'),(726,'Can change po item',182,'change_poitem'),(727,'Can delete po item',182,'delete_poitem'),(728,'Can view po item',182,'view_poitem'),(729,'Can add b2b invoice',183,'add_b2binvoice'),(730,'Can change b2b invoice',183,'change_b2binvoice'),(731,'Can delete b2b invoice',183,'delete_b2binvoice'),(732,'Can view b2b invoice',183,'view_b2binvoice'),(733,'Can add b2b invoice item',184,'add_b2binvoiceitem'),(734,'Can change b2b invoice item',184,'change_b2binvoiceitem'),(735,'Can delete b2b invoice item',184,'delete_b2binvoiceitem'),(736,'Can view b2b invoice item',184,'view_b2binvoiceitem'),(737,'Can add b2c invoice',185,'add_b2cinvoice'),(738,'Can change b2c invoice',185,'change_b2cinvoice'),(739,'Can delete b2c invoice',185,'delete_b2cinvoice'),(740,'Can view b2c invoice',185,'view_b2cinvoice'),(741,'Can add b2c invoice item',186,'add_b2cinvoiceitem'),(742,'Can change b2c invoice item',186,'change_b2cinvoiceitem'),(743,'Can delete b2c invoice item',186,'delete_b2cinvoiceitem'),(744,'Can view b2c invoice item',186,'view_b2cinvoiceitem'),(745,'Can add stock transfer',187,'add_stocktransfer'),(746,'Can change stock transfer',187,'change_stocktransfer'),(747,'Can delete stock transfer',187,'delete_stocktransfer'),(748,'Can view stock transfer',187,'view_stocktransfer'),(749,'Can add stock transfer item',188,'add_stocktransferitem'),(750,'Can change stock transfer item',188,'change_stocktransferitem'),(751,'Can delete stock transfer item',188,'delete_stocktransferitem'),(752,'Can view stock transfer item',188,'view_stocktransferitem'),(753,'Can add stock transfer log',189,'add_stocktransferlog'),(754,'Can change stock transfer log',189,'change_stocktransferlog'),(755,'Can delete stock transfer log',189,'delete_stocktransferlog'),(756,'Can view stock transfer log',189,'view_stocktransferlog'),(757,'Can add source lead',190,'add_sourcelead'),(758,'Can change source lead',190,'change_sourcelead'),(759,'Can delete source lead',190,'delete_sourcelead'),(760,'Can view source lead',190,'view_sourcelead'),(761,'Can add lab invoice child',191,'add_labinvoicechild'),(762,'Can change lab invoice child',191,'change_labinvoicechild'),(763,'Can delete lab invoice child',191,'delete_labinvoicechild'),(764,'Can view lab invoice child',191,'view_labinvoicechild'),(765,'Can add lab invoice master',192,'add_labinvoicemaster'),(766,'Can change lab invoice master',192,'change_labinvoicemaster'),(767,'Can delete lab invoice master',192,'delete_labinvoicemaster'),(768,'Can view lab invoice master',192,'view_labinvoicemaster'),(769,'Can add labunitmaster',193,'add_labunitmaster'),(770,'Can change labunitmaster',193,'change_labunitmaster'),(771,'Can delete labunitmaster',193,'delete_labunitmaster'),(772,'Can view labunitmaster',193,'view_labunitmaster'),(773,'Can add normal value master',194,'add_normalvaluemaster'),(774,'Can change normal value master',194,'change_normalvaluemaster'),(775,'Can delete normal value master',194,'delete_normalvaluemaster'),(776,'Can view normal value master',194,'view_normalvaluemaster'),(777,'Can add headerdetails',195,'add_headerdetails'),(778,'Can change headerdetails',195,'change_headerdetails'),(779,'Can delete headerdetails',195,'delete_headerdetails'),(780,'Can view headerdetails',195,'view_headerdetails'),(781,'Can add procedure master',196,'add_proceduremaster'),(782,'Can change procedure master',196,'change_proceduremaster'),(783,'Can delete procedure master',196,'delete_proceduremaster'),(784,'Can view procedure master',196,'view_proceduremaster'),(785,'Can add casuality invoice child',197,'add_casualityinvoicechild'),(786,'Can change casuality invoice child',197,'change_casualityinvoicechild'),(787,'Can delete casuality invoice child',197,'delete_casualityinvoicechild'),(788,'Can view casuality invoice child',197,'view_casualityinvoicechild'),(789,'Can add casuality invoice master',198,'add_casualityinvoicemaster'),(790,'Can change casuality invoice master',198,'change_casualityinvoicemaster'),(791,'Can delete casuality invoice master',198,'delete_casualityinvoicemaster'),(792,'Can view casuality invoice master',198,'view_casualityinvoicemaster'),(793,'Can add lab requisition master',199,'add_labrequisitionmaster'),(794,'Can change lab requisition master',199,'change_labrequisitionmaster'),(795,'Can delete lab requisition master',199,'delete_labrequisitionmaster'),(796,'Can view lab requisition master',199,'view_labrequisitionmaster'),(797,'Can add lab result master',200,'add_labresultmaster'),(798,'Can change lab result master',200,'change_labresultmaster'),(799,'Can delete lab result master',200,'delete_labresultmaster'),(800,'Can view lab result master',200,'view_labresultmaster');
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
  `first_name` varchar(150) NOT NULL,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `ayurvedaapp_admin`
--

DROP TABLE IF EXISTS `ayurvedaapp_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_admin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_admin`
--

LOCK TABLES `ayurvedaapp_admin` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_adviceondischarge`
--

DROP TABLE IF EXISTS `ayurvedaapp_adviceondischarge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_adviceondischarge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `advice_text` longtext NOT NULL,
  `discharge_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_adviceon_discharge_id_d6103c04_fk_ayurvedaa` (`discharge_id`),
  CONSTRAINT `ayurvedaapp_adviceon_discharge_id_d6103c04_fk_ayurvedaa` FOREIGN KEY (`discharge_id`) REFERENCES `ayurvedaapp_patientdischarge` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_adviceondischarge`
--

LOCK TABLES `ayurvedaapp_adviceondischarge` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_adviceondischarge` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_adviceondischarge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_appointmenteditlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_appointmenteditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_appointmenteditlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(10) NOT NULL,
  `original_token_no` varchar(300) DEFAULT NULL,
  `original_doctor_id` int DEFAULT NULL,
  `original_appointment_date` date DEFAULT NULL,
  `original_status` varchar(100) DEFAULT NULL,
  `original_contactno` varchar(100) DEFAULT NULL,
  `original_remark` varchar(300) DEFAULT NULL,
  `original_fee` varchar(100) DEFAULT NULL,
  `new_doctor_id` int DEFAULT NULL,
  `new_appointment_date` date DEFAULT NULL,
  `new_status` varchar(100) DEFAULT NULL,
  `new_contactno` varchar(100) DEFAULT NULL,
  `new_remark` varchar(300) DEFAULT NULL,
  `new_fee` varchar(100) DEFAULT NULL,
  `action_date` date NOT NULL,
  `action_time` time(6) NOT NULL,
  `appointment_id` bigint DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `staff_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_appointm_appointment_id_e530fdf5_fk_ayurvedaa` (`appointment_id`),
  KEY `ayurvedaapp_appointm_branch_id_d76e0fe4_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_appointm_staff_id_cb2772a8_fk_ayurvedaa` (`staff_id`),
  CONSTRAINT `ayurvedaapp_appointm_appointment_id_e530fdf5_fk_ayurvedaa` FOREIGN KEY (`appointment_id`) REFERENCES `ayurvedaapp_appointments` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_branch_id_d76e0fe4_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_staff_id_cb2772a8_fk_ayurvedaa` FOREIGN KEY (`staff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmenteditlog`
--

LOCK TABLES `ayurvedaapp_appointmenteditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmenteditlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_appointmenteditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_appointmentfee`
--

DROP TABLE IF EXISTS `ayurvedaapp_appointmentfee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_appointmentfee` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `visit_type` varchar(50) NOT NULL,
  `fee_amount` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `doctor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ayurvedaapp_appointmentf_branch_id_doctor_id_visi_126562b3_uniq` (`branch_id`,`doctor_id`,`visit_type`),
  KEY `ayurvedaapp_appointm_doctor_id_0df83f96_fk_ayurvedaa` (`doctor_id`),
  CONSTRAINT `ayurvedaapp_appointm_branch_id_74e2065e_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_doctor_id_0df83f96_fk_ayurvedaa` FOREIGN KEY (`doctor_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmentfee`
--

LOCK TABLES `ayurvedaapp_appointmentfee` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmentfee` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointmentfee` VALUES (1,'Consultation',200.00,1,'2026-06-10 03:46:12.256609','2026-06-10 03:59:09.341567',5,1),(2,'Followup',100.00,0,'2026-06-10 04:01:43.176991','2026-06-11 09:49:43.612082',5,1);
/*!40000 ALTER TABLE `ayurvedaapp_appointmentfee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_appointmentfeerule`
--

DROP TABLE IF EXISTS `ayurvedaapp_appointmentfeerule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_appointmentfeerule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(200) NOT NULL,
  `rule_type` varchar(20) NOT NULL,
  `base_fee` decimal(10,2) NOT NULL,
  `visit_count_limit` int unsigned DEFAULT NULL,
  `time_period_months` int unsigned DEFAULT NULL,
  `additional_fee` decimal(10,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmentfeerule`
--

LOCK TABLES `ayurvedaapp_appointmentfeerule` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmentfeerule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_appointmentfeerule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_appointmentinvoicemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_appointmentinvoicemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_appointmentinvoicemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatmentInvoicenumber` varchar(400) NOT NULL,
  `currentdate` date NOT NULL,
  `subtotal` double NOT NULL,
  `tax` double NOT NULL,
  `shipping` double NOT NULL,
  `total` double NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `discount` varchar(15) DEFAULT NULL,
  `consultationfee` varchar(400) DEFAULT NULL,
  `consultationfeecumregfee` varchar(400) DEFAULT NULL,
  `cancelstatus` tinyint(1) NOT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `payementmode` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_appointm_Mrno_id_96fd25c8_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_appointm_branch_id_c30c0ec9_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_appointm_hospitalname_id_662c00eb_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_appointm_preparedby_id_c485f491_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_appointm_branch_id_c30c0ec9_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_hospitalname_id_662c00eb_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_Mrno_id_96fd25c8_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_preparedby_id_c485f491_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointmentinvoicemaster`
--

LOCK TABLES `ayurvedaapp_appointmentinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointmentinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointmentinvoicemaster` VALUES (1,'TKNO202604091','2026-04-09',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(2,'TKNO202604092','2026-04-09',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(3,'TKNO202604093','2026-04-09',500,0,0,500,'jibin','1234567890','0','500','500',0,2,5,2,NULL,'Cash'),(4,'TKNO202605121','2026-05-12',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(5,'TKNO202605122','2026-05-12',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(6,'TKNO202605131','2026-05-13',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(7,'TKNO202605261','2026-05-26',500,0,0,500,'testpt','9999999999','0','500','500',0,198,5,2,NULL,'Cash'),(8,'TKNO202605262','2026-05-26',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(9,'TKNO202606021','2026-06-02',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(10,'TKNO202606031','2026-06-03',500,0,0,500,'testuser','9895310696','0','500','500',0,196,5,2,NULL,'Cash'),(11,'TKNO202606091','2026-06-09',500,0,0,500,'testpatient123','8992882991','0','500','500',0,214,5,2,NULL,'Cash'),(12,'TKNO202606092','2026-06-09',500,0,0,500,'testpt','9999999999','0','500','500',0,198,5,2,NULL,'Cash'),(13,'TKNO202606093','2026-06-09',500,0,0,500,'test','9048272638','0','500','500',0,1,5,2,NULL,'Cash'),(14,'TKNO202606101','2026-06-10',200,0,0,200,'testpatient123','8992882991','0','200','200',0,214,5,2,NULL,'Cash'),(15,'TKNO202606111','2026-06-11',200,0,0,200,'test7678','8789978789','0','200','200',0,216,5,2,NULL,'Cash'),(16,'TKNO202606121','2026-06-12',200,0,0,200,'test7678','8789978789','0','200','200',0,216,5,2,NULL,'Cash'),(17,'TKNO202606122','2026-06-12',200,0,0,200,'testuser','9895310696','0','200','200',0,196,5,2,NULL,'Cash'),(18,'TKNO202606123','2026-06-12',200,0,0,200,'testpatient123','8992882991','0','200','200',0,214,5,2,NULL,'Cash');
/*!40000 ALTER TABLE `ayurvedaapp_appointmentinvoicemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_appointments`
--

DROP TABLE IF EXISTS `ayurvedaapp_appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_appointments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Tokenno` varchar(300) NOT NULL,
  `Appointment_date` date NOT NULL,
  `Remark` varchar(300) DEFAULT NULL,
  `Current_Date` date NOT NULL,
  `Branch_id` bigint NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  `Doctor_Name_id` bigint NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Fee` varchar(100) DEFAULT NULL,
  `visit_duration` int NOT NULL,
  `visit_end_time` time(6) DEFAULT NULL,
  `visit_start_time` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_appointm_Branch_id_0cb71037_fk_ayurvedaa` (`Branch_id`),
  KEY `ayurvedaapp_appointm_MR_Number_id_8f02ded9_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_appointm_Doctor_Name_id_bf0916dd_fk_ayurvedaa` (`Doctor_Name_id`),
  CONSTRAINT `ayurvedaapp_appointm_Branch_id_0cb71037_fk_ayurvedaa` FOREIGN KEY (`Branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_Doctor_Name_id_bf0916dd_fk_ayurvedaa` FOREIGN KEY (`Doctor_Name_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_appointm_MR_Number_id_8f02ded9_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_appointments`
--

LOCK TABLES `ayurvedaapp_appointments` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_appointments` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_appointments` VALUES (1,'TKNO202604091','2026-04-09','','2026-04-09',5,1,174,'','Consultation','500',30,NULL,NULL),(2,'TKNO202604092','2026-04-09','','2026-04-09',5,1,174,'','Consultation','500',30,NULL,NULL),(3,'TKNO202604093','2026-04-09','','2026-04-09',5,2,174,'','Consultation','500',30,NULL,NULL),(4,'TKNO202605121','2026-05-12','','2026-05-12',5,196,174,'','Consultation','500',30,NULL,NULL),(5,'TKNO202605122','2026-05-12','','2026-05-12',5,1,174,'','Consultation','500',30,NULL,NULL),(6,'TKNO202605131','2026-05-13','','2026-05-13',5,196,1,'','Consultation','500',30,NULL,NULL),(7,'TKNO202605261','2026-05-26','','2026-05-26',5,198,1,'','Consultation','500',30,NULL,NULL),(8,'TKNO202605262','2026-05-26','','2026-05-26',5,196,174,'','Consultation','500',30,NULL,NULL),(9,'TKNO202606021','2026-06-03','','2026-06-02',5,196,1,'9789699090','Consultation','500',30,NULL,NULL),(10,'TKNO202606031','2026-06-08','','2026-06-03',5,196,1,'','Consultation','500',30,NULL,NULL),(11,'TKNO202606091','2026-06-09','','2026-06-09',5,214,174,'','Consultation','500',30,NULL,NULL),(12,'TKNO202606092','2026-06-09','','2026-06-09',5,198,174,'','Consultation','500',30,NULL,NULL),(13,'TKNO202606093','2026-06-09','','2026-06-09',5,1,174,'','Consultation','500',30,NULL,NULL),(14,'TKNO202606101','2026-06-10','','2026-06-10',5,214,1,'','Consultation','200',30,NULL,NULL),(15,'TKNO202606111','2026-06-11','','2026-06-11',5,216,1,'','Consultation','200',30,NULL,NULL),(16,'TKNO202606121','2026-06-12','','2026-06-12',5,216,1,'8787878778','Consultation','200',30,NULL,NULL),(17,'TKNO202606122','2026-06-12','','2026-06-12',5,196,1,'','Consultation','200',30,NULL,NULL),(18,'TKNO202606123','2026-06-12','','2026-06-12',5,214,1,'','Consultation','200',30,NULL,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ashtavidhpariksha`
--

DROP TABLE IF EXISTS `ayurvedaapp_ashtavidhpariksha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ashtavidhpariksha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `naadi` varchar(500) DEFAULT NULL,
  `mala` varchar(500) DEFAULT NULL,
  `mutra` varchar(500) DEFAULT NULL,
  `jivha` varchar(500) DEFAULT NULL,
  `Shobda` varchar(500) DEFAULT NULL,
  `sparsha` varchar(500) DEFAULT NULL,
  `drishti` varchar(500) DEFAULT NULL,
  `Aakriti` varchar(500) DEFAULT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ashtavid_MR_Number_id_e82d0d9c_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_ashtavid_MR_Number_id_e82d0d9c_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ashtavidhpariksha`
--

LOCK TABLES `ayurvedaapp_ashtavidhpariksha` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ashtavidhpariksha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_ashtavidhpariksha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_assignedappointments`
--

DROP TABLE IF EXISTS `ayurvedaapp_assignedappointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_assignedappointments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appointment_date` date NOT NULL,
  `schedule_date` date DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `assigned_date` datetime(6) NOT NULL,
  `is_used` tinyint(1) NOT NULL,
  `used_date` datetime(6) DEFAULT NULL,
  `appointment_id` bigint DEFAULT NULL,
  `assigned_by_id` bigint NOT NULL,
  `branch_id` bigint NOT NULL,
  `doctor_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_assigned_appointment_id_6a3cfd08_fk_ayurvedaa` (`appointment_id`),
  KEY `ayurvedaapp_assigned_assigned_by_id_e71af548_fk_ayurvedaa` (`assigned_by_id`),
  KEY `ayurvedaapp_assigned_branch_id_b750cfec_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_assigned_doctor_id_5480a22d_fk_ayurvedaa` (`doctor_id`),
  KEY `ayurvedaapp_assigned_patient_id_8b864b52_fk_ayurvedaa` (`patient_id`),
  CONSTRAINT `ayurvedaapp_assigned_appointment_id_6a3cfd08_fk_ayurvedaa` FOREIGN KEY (`appointment_id`) REFERENCES `ayurvedaapp_appointments` (`id`),
  CONSTRAINT `ayurvedaapp_assigned_assigned_by_id_e71af548_fk_ayurvedaa` FOREIGN KEY (`assigned_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_assigned_branch_id_b750cfec_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_assigned_doctor_id_5480a22d_fk_ayurvedaa` FOREIGN KEY (`doctor_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_assigned_patient_id_8b864b52_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_assignedappointments`
--

LOCK TABLES `ayurvedaapp_assignedappointments` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_assignedappointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_assignedappointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_b2binvoice`
--

DROP TABLE IF EXISTS `ayurvedaapp_b2binvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_b2binvoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoicenumber` varchar(400) NOT NULL,
  `invoice_date` date NOT NULL,
  `proforma_reference` varchar(400) DEFAULT NULL,
  `buyer_name` varchar(400) NOT NULL,
  `buyer_address` longtext NOT NULL,
  `buyer_gstin` varchar(20) DEFAULT NULL,
  `consignee_name` varchar(400) NOT NULL,
  `consignee_address` longtext NOT NULL,
  `consignee_gstin` varchar(20) DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `cgst_total` decimal(12,2) NOT NULL,
  `sgst_total` decimal(12,2) NOT NULL,
  `igst_total` decimal(12,2) NOT NULL,
  `grand_total` decimal(12,2) NOT NULL,
  `amount_in_words` varchar(255) NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `buyer_state` varchar(100) DEFAULT NULL,
  `buyer_state_code` varchar(10) DEFAULT NULL,
  `buyers_order_date` date DEFAULT NULL,
  `buyers_order_no` varchar(100) DEFAULT NULL,
  `consignee_state` varchar(100) DEFAULT NULL,
  `consignee_state_code` varchar(10) DEFAULT NULL,
  `delivery_note_date` date DEFAULT NULL,
  `destination` varchar(200) DEFAULT NULL,
  `dispatch_doc_no` varchar(100) DEFAULT NULL,
  `dispatched_through` varchar(200) DEFAULT NULL,
  `payment_mode` varchar(100) DEFAULT NULL,
  `terms_of_delivery` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_b2binvoi_branch_id_6315e228_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_b2binvoi_hospitalname_id_25811428_fk_ayurvedaa` (`hospitalname_id`),
  CONSTRAINT `ayurvedaapp_b2binvoi_branch_id_6315e228_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_b2binvoi_hospitalname_id_25811428_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_b2binvoice`
--

LOCK TABLES `ayurvedaapp_b2binvoice` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_b2binvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_b2binvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_b2binvoiceitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_b2binvoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_b2binvoiceitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sl_no` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `batch_info` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `gst_percent` decimal(4,2) NOT NULL,
  `hsn_code` varchar(20) NOT NULL,
  `taxable_value` decimal(12,2) NOT NULL,
  `cgst` decimal(12,2) NOT NULL,
  `sgst` decimal(12,2) NOT NULL,
  `igst` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `invoice_id` bigint NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `company_id` int DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `manufacturer_date` date DEFAULT NULL,
  `medicine_master_id` int DEFAULT NULL,
  `physical_stock_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `unit_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_b2binvoi_invoice_id_4cec6f08_fk_ayurvedaa` (`invoice_id`),
  CONSTRAINT `ayurvedaapp_b2binvoi_invoice_id_4cec6f08_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_b2binvoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_b2binvoiceitem`
--

LOCK TABLES `ayurvedaapp_b2binvoiceitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_b2binvoiceitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_b2binvoiceitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_b2cinvoice`
--

DROP TABLE IF EXISTS `ayurvedaapp_b2cinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_b2cinvoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoicenumber` varchar(400) NOT NULL,
  `invoice_date` date NOT NULL,
  `proforma_reference` varchar(400) DEFAULT NULL,
  `customer_name` varchar(400) NOT NULL,
  `customer_address` longtext NOT NULL,
  `customer_state` varchar(100) DEFAULT NULL,
  `customer_gstin` varchar(20) DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `cgst_total` decimal(12,2) NOT NULL,
  `sgst_total` decimal(12,2) NOT NULL,
  `grand_total` decimal(12,2) NOT NULL,
  `amount_in_words` varchar(255) NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `bill_to_address` longtext,
  `bill_to_name` varchar(400) DEFAULT NULL,
  `customer_state_code` varchar(10) DEFAULT NULL,
  `place_of_supply` varchar(200) DEFAULT NULL,
  `transport_mode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_b2cinvoi_branch_id_db9435f4_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_b2cinvoi_hospitalname_id_d133c640_fk_ayurvedaa` (`hospitalname_id`),
  CONSTRAINT `ayurvedaapp_b2cinvoi_branch_id_db9435f4_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_b2cinvoi_hospitalname_id_d133c640_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_b2cinvoice`
--

LOCK TABLES `ayurvedaapp_b2cinvoice` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_b2cinvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_b2cinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_b2cinvoiceitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_b2cinvoiceitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_b2cinvoiceitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sl_no` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `batch_info` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `gst_percent` decimal(4,2) NOT NULL,
  `hsn_code` varchar(20) NOT NULL,
  `taxable_value` decimal(12,2) NOT NULL,
  `cgst` decimal(12,2) NOT NULL,
  `sgst` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `invoice_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_b2cinvoi_invoice_id_9f03d2bc_fk_ayurvedaa` (`invoice_id`),
  CONSTRAINT `ayurvedaapp_b2cinvoi_invoice_id_9f03d2bc_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_b2cinvoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_b2cinvoiceitem`
--

LOCK TABLES `ayurvedaapp_b2cinvoiceitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_b2cinvoiceitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_b2cinvoiceitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_baseunit`
--

DROP TABLE IF EXISTS `ayurvedaapp_baseunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_baseunit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unit` varchar(300) NOT NULL,
  `symbol` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_baseunit`
--

LOCK TABLES `ayurvedaapp_baseunit` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_baseunit` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_baseunit` VALUES (48,'BTL','BTL'),(49,'STRP','STRP'),(50,'SACH','SACH'),(51,'NOS','NOS'),(52,'PKT','PKT'),(53,'0','0'),(54,'testunit','testunit'),(55,'MILLILITRE','ML'),(56,'GRAM','g');
/*!40000 ALTER TABLE `ayurvedaapp_baseunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_batch`
--

DROP TABLE IF EXISTS `ayurvedaapp_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_batch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Batch_no` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_batch`
--

LOCK TABLES `ayurvedaapp_batch` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_branch`
--

DROP TABLE IF EXISTS `ayurvedaapp_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_branch` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Branch_Name` varchar(500) NOT NULL,
  `Branch_Address` varchar(300) NOT NULL,
  `Branch_contactno` varchar(100) NOT NULL,
  `Branch_InchargeName` varchar(300) NOT NULL,
  `Branch_Incharge_contactno` varchar(100) NOT NULL,
  `gstno` varchar(500) DEFAULT NULL,
  `hosporclinic` varchar(500) DEFAULT NULL,
  `compositiontax` tinyint(1) NOT NULL,
  `inactive` tinyint(1) NOT NULL,
  `is_franchise` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_branch`
--

LOCK TABLES `ayurvedaapp_branch` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_branch` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_branch` VALUES (5,'Kottayam','ktm','9999999999','','9999999999','gstno',NULL,0,0,0);
/*!40000 ALTER TABLE `ayurvedaapp_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistorydietplan`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistorydietplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistorydietplan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` date NOT NULL,
  `noofdays` varchar(100) DEFAULT NULL,
  `foodtobeavoided` longtext,
  `case_history_id` bigint DEFAULT NULL,
  `diet_id` bigint DEFAULT NULL,
  `handledbystaff_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_diet_id_3d38c086_fk_ayurvedaa` (`diet_id`),
  KEY `ayurvedaapp_casehist_handledbystaff_id_966d9cae_fk_ayurvedaa` (`handledbystaff_id`),
  KEY `ayurvedaapp_casehist_patient_id_e03c836c_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_case_history_id_7e596c69_fk_ayurvedaa` (`case_history_id`),
  CONSTRAINT `ayurvedaapp_casehist_case_history_id_7e596c69_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_diet_id_3d38c086_fk_ayurvedaa` FOREIGN KEY (`diet_id`) REFERENCES `ayurvedaapp_diet` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_handledbystaff_id_966d9cae_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_e03c836c_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorydietplan`
--

LOCK TABLES `ayurvedaapp_casehistorydietplan` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorydietplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorydietplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistorydoctorsnote`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistorydoctorsnote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistorydoctorsnote` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notes` longtext NOT NULL,
  `created_at` date NOT NULL,
  `case_history_id` bigint DEFAULT NULL,
  `handledbystaff_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_handledbystaff_id_305a207e_fk_ayurvedaa` (`handledbystaff_id`),
  KEY `ayurvedaapp_casehist_patient_id_a990bdec_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_case_history_id_7bb1951d_fk_ayurvedaa` (`case_history_id`),
  CONSTRAINT `ayurvedaapp_casehist_case_history_id_7bb1951d_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_handledbystaff_id_305a207e_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_a990bdec_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorydoctorsnote`
--

LOCK TABLES `ayurvedaapp_casehistorydoctorsnote` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorydoctorsnote` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorydoctorsnote` VALUES (1,'<p>tst</p>','2026-05-12',NULL,1,1);
/*!40000 ALTER TABLE `ayurvedaapp_casehistorydoctorsnote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistoryerrorlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistoryerrorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistoryerrorlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `error_message` longtext NOT NULL,
  `Current_Date` date NOT NULL,
  `related_mrno` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistoryerrorlog`
--

LOCK TABLES `ayurvedaapp_casehistoryerrorlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistoryerrorlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_casehistoryerrorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistorylabbill`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistorylabbill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistorylabbill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `patient_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_patient_id_351c25c9_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_preparedby_id_193fe828_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_351c25c9_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_preparedby_id_193fe828_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorylabbill`
--

LOCK TABLES `ayurvedaapp_casehistorylabbill` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabbill` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabbill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistorylabresult`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistorylabresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistorylabresult` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `result_value` varchar(200) DEFAULT NULL,
  `normal_value` varchar(200) DEFAULT NULL,
  `report_file` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `patient_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `labtest_id` bigint NOT NULL,
  `labtestdate` date DEFAULT NULL,
  `bill_id` bigint DEFAULT NULL,
  `result_master_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_preparedby_id_fbff6c6d_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_casehist_labtest_id_d5b13498_fk_ayurvedaa` (`labtest_id`),
  KEY `ayurvedaapp_casehist_patient_id_0d41e653_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_bill_id_cdee9e09_fk_ayurvedaa` (`bill_id`),
  KEY `ayurvedaapp_casehist_result_master_id_a867bd97_fk_ayurvedaa` (`result_master_id`),
  CONSTRAINT `ayurvedaapp_casehist_bill_id_cdee9e09_fk_ayurvedaa` FOREIGN KEY (`bill_id`) REFERENCES `ayurvedaapp_labinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_labtest_id_d5b13498_fk_ayurvedaa` FOREIGN KEY (`labtest_id`) REFERENCES `ayurvedaapp_labtestchild` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_0d41e653_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_preparedby_id_fbff6c6d_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_result_master_id_a867bd97_fk_ayurvedaa` FOREIGN KEY (`result_master_id`) REFERENCES `ayurvedaapp_labresultmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorylabresult`
--

LOCK TABLES `ayurvedaapp_casehistorylabresult` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabresult` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorylabresult` VALUES (37,'36','35.00 - 56.00 mg/dL','','2026-06-09 07:11:45.967474',1,1,1,'2026-06-09',25,2),(38,'45','25.00 - 88.00 mg/dL','','2026-06-09 07:11:45.971471',1,1,3,'2026-06-09',25,2),(39,'150','100.00 - 300.00 mg/dL','','2026-06-09 07:39:47.668438',196,1,2,'2026-06-09',26,3),(40,'50','25.00 - 88.00 mg/dL','','2026-06-09 07:39:47.673434',196,1,3,'2026-06-09',26,3),(41,'120','100.00 - 300.00 mg/dL','','2026-06-09 07:58:01.320201',214,1,2,'2026-06-09',23,4),(42,'40','25.00 - 88.00 mg/dL','','2026-06-09 07:58:01.323201',214,1,3,'2026-06-09',23,4),(43,'30','35.00 - 56.00 mg/dL','','2026-06-10 06:11:16.629277',1,1,1,'2026-06-10',31,5),(44,'250','100.00 - 300.00 mg/dL','','2026-06-10 06:11:16.638267',1,1,2,'2026-06-10',31,5),(45,'28','25.00 - 88.00 mg/dL','','2026-06-10 06:11:16.642451',1,1,3,'2026-06-10',31,5),(46,'200','100.00 - 300.00 mg/dL','','2026-06-11 08:57:23.460697',214,1,2,'2026-06-11',34,6),(47,'85','25.00 - 88.00 mg/dL','','2026-06-11 08:57:23.467690',214,1,3,'2026-06-11',34,6),(48,'50','35.00 - 56.00 mg/dL','','2026-06-11 08:57:23.470688',214,1,1,'2026-06-11',34,6),(49,'150','100.00 - 300.00 mg/dL','','2026-06-11 10:31:54.649426',216,1,2,'2026-06-11',35,7),(50,'75','25.00 - 88.00 mg/dL','','2026-06-11 10:31:54.654538',216,1,3,'2026-06-11',35,7),(69,'45','35.00 - 56.00 mg/dL','','2026-06-12 05:42:19.209663',198,1,1,'2026-06-12',33,17),(70,'150','100.00 - 300.00 mg/dL','','2026-06-12 05:42:19.213660',198,1,2,'2026-06-12',33,17),(71,'150','100.00 - 300.00 mg/dL','','2026-06-13 05:52:16.903452',214,1,2,'2026-06-13',36,18),(72,'50','25.00 - 88.00 mg/dL','','2026-06-13 05:52:16.911443',214,1,3,'2026-06-13',36,18),(73,'45','100.00 - 300.00 mg/dL','','2026-06-13 06:50:21.601822',198,1,2,'2026-06-13',30,19),(74,'40','25.00 - 88.00 mg/dL','','2026-06-13 06:50:21.606938',198,1,3,'2026-06-13',30,19),(75,'150','100.00 - 300.00 mg/dL','','2026-06-12 07:02:16.783913',217,1,2,'2026-06-12',37,20),(76,'75','25.00 - 88.00 mg/dL','','2026-06-12 07:02:16.787909',217,1,3,'2026-06-12',37,20),(77,'50','35.00 - 56.00 mg/dL','','2026-06-12 07:43:30.776704',198,1,1,'2026-06-12',39,21);
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistorylabtestrequisition`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistorylabtestrequisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistorylabtestrequisition` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `case_history_id` bigint DEFAULT NULL,
  `handledbystaff_id` bigint DEFAULT NULL,
  `labtestchild_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  `invoice_id` bigint DEFAULT NULL,
  `requisition_master_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_handledbystaff_id_2e10d5c5_fk_ayurvedaa` (`handledbystaff_id`),
  KEY `ayurvedaapp_casehist_labtestchild_id_6ade0f7b_fk_ayurvedaa` (`labtestchild_id`),
  KEY `ayurvedaapp_casehist_patient_id_b53547fd_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_case_history_id_ebacbd2d_fk_ayurvedaa` (`case_history_id`),
  KEY `ayurvedaapp_casehist_invoice_id_7411756a_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_casehist_requisition_master_i_d77a30df_fk_ayurvedaa` (`requisition_master_id`),
  CONSTRAINT `ayurvedaapp_casehist_case_history_id_ebacbd2d_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_handledbystaff_id_2e10d5c5_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_invoice_id_7411756a_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_labinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_labtestchild_id_6ade0f7b_fk_ayurvedaa` FOREIGN KEY (`labtestchild_id`) REFERENCES `ayurvedaapp_labtestchild` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_b53547fd_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_requisition_master_i_d77a30df_fk_ayurvedaa` FOREIGN KEY (`requisition_master_id`) REFERENCES `ayurvedaapp_labrequisitionmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorylabtestrequisition`
--

LOCK TABLES `ayurvedaapp_casehistorylabtestrequisition` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabtestrequisition` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorylabtestrequisition` VALUES (35,'2026-06-09 04:40:38.467893',NULL,1,2,214,NULL,1),(36,'2026-06-09 04:40:38.473882',NULL,1,3,214,NULL,1),(38,'2026-06-09 05:05:25.409876',1,1,1,1,NULL,3),(39,'2026-06-09 05:05:25.415869',1,1,3,1,NULL,3),(40,'2026-06-09 07:37:30.792310',NULL,1,2,196,NULL,4),(41,'2026-06-09 07:37:30.796306',NULL,1,3,196,NULL,4),(42,'2026-06-09 07:55:51.160483',NULL,1,2,198,NULL,5),(43,'2026-06-09 07:55:51.163596',NULL,1,3,198,NULL,5),(44,'2026-06-10 06:09:21.207015',1,1,1,1,NULL,6),(45,'2026-06-10 06:09:21.213965',1,1,2,1,NULL,6),(46,'2026-06-10 06:09:21.216962',1,1,3,1,NULL,6),(47,'2026-06-10 06:14:51.448321',NULL,1,2,196,NULL,7),(48,'2026-06-10 06:14:51.451318',NULL,1,3,196,NULL,7),(49,'2026-06-10 06:34:50.815562',NULL,1,1,198,NULL,8),(50,'2026-06-10 06:34:50.819556',NULL,1,2,198,NULL,8),(51,'2026-06-11 08:56:20.935492',NULL,1,2,214,NULL,9),(52,'2026-06-11 08:56:20.949737',NULL,1,3,214,NULL,9),(53,'2026-06-11 08:56:20.954732',NULL,1,1,214,NULL,9),(54,'2026-06-11 10:26:59.788383',NULL,1,2,216,NULL,10),(55,'2026-06-11 10:26:59.795377',NULL,1,3,216,NULL,10),(56,'2026-06-12 05:49:11.826407',NULL,1,2,214,NULL,11),(57,'2026-06-12 05:49:11.831330',NULL,1,3,214,NULL,11),(58,'2026-06-12 06:56:15.985273',NULL,1,2,217,NULL,12),(59,'2026-06-12 06:56:15.993263',NULL,1,3,217,NULL,12),(60,'2026-06-12 07:01:04.131361',NULL,1,1,217,NULL,13),(61,'2026-06-12 07:44:48.018148',NULL,1,2,219,46,14),(62,'2026-06-12 07:44:48.024143',NULL,1,3,219,46,14);
/*!40000 ALTER TABLE `ayurvedaapp_casehistorylabtestrequisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistorymedicalandsurgicalhistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistorymedicalandsurgicalhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistorymedicalandsurgicalhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medicalhistory` longtext NOT NULL,
  `surgicalhist` longtext NOT NULL,
  `created_at` date NOT NULL,
  `case_history_id` bigint DEFAULT NULL,
  `handledbystaff_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_handledbystaff_id_2437cc30_fk_ayurvedaa` (`handledbystaff_id`),
  KEY `ayurvedaapp_casehist_patient_id_c6263288_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_case_history_id_d446ee62_fk_ayurvedaa` (`case_history_id`),
  CONSTRAINT `ayurvedaapp_casehist_case_history_id_d446ee62_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_handledbystaff_id_2437cc30_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_c6263288_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorymedicalandsurgicalhistory`
--

LOCK TABLES `ayurvedaapp_casehistorymedicalandsurgicalhistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorymedicalandsurgicalhistory` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorymedicalandsurgicalhistory` VALUES (1,'<p>tst</p>','<p>test</p>','2026-05-12',NULL,1,1);
/*!40000 ALTER TABLE `ayurvedaapp_casehistorymedicalandsurgicalhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistoryresultreport`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistoryresultreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistoryresultreport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `casehistory_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_casehistory_id_c3b3079b_fk_ayurvedaa` (`casehistory_id`),
  CONSTRAINT `ayurvedaapp_casehist_casehistory_id_c3b3079b_fk_ayurvedaa` FOREIGN KEY (`casehistory_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistoryresultreport`
--

LOCK TABLES `ayurvedaapp_casehistoryresultreport` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistoryresultreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_casehistoryresultreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistorytreatmentplan`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistorytreatmentplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistorytreatmentplan` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `count` varchar(100) DEFAULT NULL,
  `created_at` date NOT NULL,
  `case_history_id` bigint DEFAULT NULL,
  `prepairedby_id` bigint DEFAULT NULL,
  `treatment_id` bigint NOT NULL,
  `patient_id` bigint NOT NULL,
  `followup_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_prepairedby_id_ff170042_fk_ayurvedaa` (`prepairedby_id`),
  KEY `ayurvedaapp_casehist_treatment_id_b6d6ba48_fk_ayurvedaa` (`treatment_id`),
  KEY `ayurvedaapp_casehist_patient_id_0101c250_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_casehist_followup_id_eb430b2f_fk_ayurvedaa` (`followup_id`),
  KEY `ayurvedaapp_casehist_case_history_id_e8b9f914_fk_ayurvedaa` (`case_history_id`),
  CONSTRAINT `ayurvedaapp_casehist_case_history_id_e8b9f914_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_followup_id_eb430b2f_fk_ayurvedaa` FOREIGN KEY (`followup_id`) REFERENCES `ayurvedaapp_clairvedafollowup` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_patient_id_0101c250_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_prepairedby_id_ff170042_fk_ayurvedaa` FOREIGN KEY (`prepairedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_treatment_id_b6d6ba48_fk_ayurvedaa` FOREIGN KEY (`treatment_id`) REFERENCES `ayurvedaapp_treatment_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistorytreatmentplan`
--

LOCK TABLES `ayurvedaapp_casehistorytreatmentplan` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistorytreatmentplan` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistorytreatmentplan` VALUES (1,'2026-05-12','1','2026-05-12',NULL,NULL,1,1,NULL),(2,'2026-05-12','1','2026-05-12',1,NULL,1,1,1);
/*!40000 ALTER TABLE `ayurvedaapp_casehistorytreatmentplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistrypersonalinfo`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistrypersonalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistrypersonalinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int NOT NULL,
  `weight` double NOT NULL,
  `height` double NOT NULL,
  `mrno` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mrno` (`mrno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistrypersonalinfo`
--

LOCK TABLES `ayurvedaapp_casehistrypersonalinfo` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistrypersonalinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_casehistrypersonalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casehistryvitals`
--

DROP TABLE IF EXISTS `ayurvedaapp_casehistryvitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casehistryvitals` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `bmi` double DEFAULT NULL,
  `bp` varchar(20) DEFAULT NULL,
  `fbs` double DEFAULT NULL,
  `ppbs` double DEFAULT NULL,
  `hba1c` double DEFAULT NULL,
  `tchol` double DEFAULT NULL,
  `hdl` double DEFAULT NULL,
  `tg` double DEFAULT NULL,
  `ldl` double DEFAULT NULL,
  `s_creatinine` double DEFAULT NULL,
  `uric_acid` double DEFAULT NULL,
  `sgpt` double DEFAULT NULL,
  `sgot` double DEFAULT NULL,
  `alcohol` tinyint(1) NOT NULL,
  `smoking` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `mrno_id` bigint DEFAULT NULL,
  `handledbystaff_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casehist_mrno_id_8543775e_fk_ayurvedaa` (`mrno_id`),
  KEY `ayurvedaapp_casehist_handledbystaff_id_65227d23_fk_ayurvedaa` (`handledbystaff_id`),
  CONSTRAINT `ayurvedaapp_casehist_handledbystaff_id_65227d23_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casehist_mrno_id_8543775e_fk_ayurvedaa` FOREIGN KEY (`mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casehistryvitals`
--

LOCK TABLES `ayurvedaapp_casehistryvitals` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casehistryvitals` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casehistryvitals` VALUES (1,56,45,145,21.4,'135/75',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,'2026-05-12 16:25:33.866862',1,1),(2,56,67,145,31.87,'120/80',0,0,0,0,0,0,0,0,0,0,0,0,0,'2026-05-26 09:44:01.231917',1,1),(3,25,70,170,24.22,'120/90',0,0,0,0,0,0,0,0,0,0,0,0,0,'2026-06-03 11:04:47.891496',196,1);
/*!40000 ALTER TABLE `ayurvedaapp_casehistryvitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casemedicalreport`
--

DROP TABLE IF EXISTS `ayurvedaapp_casemedicalreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casemedicalreport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `drugHistory` varchar(1000) NOT NULL,
  `historyofpresentcomplaint` varchar(1000) NOT NULL,
  `finaldiagnosis` varchar(800) NOT NULL,
  `testneeded` varchar(600) NOT NULL,
  `Current_Date` date NOT NULL,
  `mrno_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casemedi_mrno_id_68c718cf_fk_ayurvedaa` (`mrno_id`),
  CONSTRAINT `ayurvedaapp_casemedi_mrno_id_68c718cf_fk_ayurvedaa` FOREIGN KEY (`mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casemedicalreport`
--

LOCK TABLES `ayurvedaapp_casemedicalreport` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casemedicalreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_casemedicalreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casualityinvoicechild`
--

DROP TABLE IF EXISTS `ayurvedaapp_casualityinvoicechild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casualityinvoicechild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sl_no` int unsigned NOT NULL,
  `procedure_name` varchar(300) NOT NULL,
  `procedure_code` varchar(50) DEFAULT NULL,
  `description` longtext,
  `quantity` decimal(8,2) NOT NULL,
  `rate` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `notes` longtext,
  `is_completed` tinyint(1) NOT NULL,
  `invoice_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_casualit_invoice_id_33338b49_fk_ayurvedaa` (`invoice_id`),
  CONSTRAINT `ayurvedaapp_casualit_invoice_id_33338b49_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_casualityinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_casualityinvoicechild_chk_1` CHECK ((`sl_no` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casualityinvoicechild`
--

LOCK TABLES `ayurvedaapp_casualityinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casualityinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casualityinvoicechild` VALUES (1,1,'X-ray Chest',NULL,NULL,1.00,200.00,200.00,0.00,0.00,NULL,0,1),(2,1,'Catheterization Charge',NULL,NULL,1.00,200.00,200.00,0.00,0.00,NULL,0,2),(3,2,'Observation Charge',NULL,NULL,1.00,100.00,100.00,0.00,0.00,NULL,0,2),(5,1,'X-ray Chest',NULL,NULL,1.00,200.00,200.00,0.00,0.00,NULL,0,4),(6,1,'Catheterization Charge',NULL,NULL,1.00,200.00,200.00,0.00,0.00,NULL,0,5),(7,1,'NST Charge',NULL,NULL,1.00,400.00,400.00,0.00,0.00,NULL,0,6),(8,1,'Scanning Charge',NULL,NULL,1.00,100.00,100.00,0.00,0.00,NULL,0,7),(9,2,'Catheterization Charge',NULL,NULL,1.00,200.00,200.00,0.00,0.00,NULL,0,7),(10,1,'NST Charge',NULL,NULL,1.00,400.00,400.00,0.00,0.00,NULL,0,8),(11,1,'ECG - 12 Lead',NULL,NULL,1.00,200.00,200.00,0.00,0.00,NULL,0,9);
/*!40000 ALTER TABLE `ayurvedaapp_casualityinvoicechild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_casualityinvoicemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_casualityinvoicemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_casualityinvoicemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `patient_name` varchar(255) NOT NULL,
  `patient_mr_no` varchar(100) DEFAULT NULL,
  `patient_phone` varchar(20) DEFAULT NULL,
  `patient_address` longtext,
  `patient_age` varchar(20) DEFAULT NULL,
  `patient_gender` varchar(10) DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `discount` decimal(12,2) NOT NULL,
  `consultation_fee` decimal(10,2) NOT NULL,
  `registration_fee` decimal(10,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `cash_amount` decimal(12,2) DEFAULT NULL,
  `online_amount` decimal(12,2) DEFAULT NULL,
  `card_amount` decimal(12,2) DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL,
  `cancelled_at` datetime(6) DEFAULT NULL,
  `branch_id` bigint DEFAULT NULL,
  `cancelled_by_id` bigint DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `hospital_id` bigint DEFAULT NULL,
  `patient_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_no` (`invoice_no`),
  KEY `ayurvedaapp_casualit_branch_id_06c8ba5d_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_casualit_cancelled_by_id_22adced1_fk_ayurvedaa` (`cancelled_by_id`),
  KEY `ayurvedaapp_casualit_created_by_id_572da739_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_casualit_hospital_id_6b82a356_fk_ayurvedaa` (`hospital_id`),
  KEY `ayurvedaapp_casualit_patient_id_941099ee_fk_ayurvedaa` (`patient_id`),
  CONSTRAINT `ayurvedaapp_casualit_branch_id_06c8ba5d_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_casualit_cancelled_by_id_22adced1_fk_ayurvedaa` FOREIGN KEY (`cancelled_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casualit_created_by_id_572da739_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_casualit_hospital_id_6b82a356_fk_ayurvedaa` FOREIGN KEY (`hospital_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_casualit_patient_id_941099ee_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_casualityinvoicemaster`
--

LOCK TABLES `ayurvedaapp_casualityinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_casualityinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_casualityinvoicemaster` VALUES (1,'CAS-2026-06-0001','2026-06-05','testuser','MRNO202605121','9895310696',NULL,NULL,NULL,200.00,0.00,0.00,0.00,0.00,0.00,200.00,'Cash','Paid','2026-06-05 06:30:00.531200','2026-06-05 06:30:00.531200',200.00,0.00,0.00,0,NULL,5,NULL,1,2,196),(2,'CAS-2026-06-0002','2026-06-05','test','MRNO202604091','9048272638',NULL,NULL,NULL,300.00,0.00,0.00,0.00,100.00,0.00,400.00,'Cash, GPay','Paid','2026-06-05 06:50:14.831483','2026-06-05 06:50:14.831483',100.00,300.00,0.00,0,NULL,5,NULL,1,2,1),(4,'CAS-2026-06-0004','2026-06-05','Rahul','MRNO202606052','9672891910','Kottayam','34','Male',200.00,0.00,0.00,0.00,0.00,0.00,200.00,'Cash, Card','Paid','2026-06-05 08:20:23.838617','2026-06-05 08:20:23.838617',100.00,0.00,100.00,0,NULL,5,NULL,1,2,203),(5,'CAS-2026-06-0005','2026-06-05','Sonu','MRNO202606053','7827828912','Kottayam','25','Male',200.00,0.00,0.00,0.00,100.00,0.00,300.00,'Cash, GPay, Card','Paid','2026-06-05 08:43:47.266246','2026-06-08 06:05:01.687860',100.00,100.00,100.00,1,'2026-06-08 06:05:01.687860',5,1,1,2,204),(6,'CAS-2026-06-0006','2026-06-05','testuser','MRNO202605121','9895310696','Kottayam','50','Male',400.00,0.00,0.00,0.00,100.00,0.00,500.00,'Cash, GPay','Paid','2026-06-05 09:04:07.611300','2026-06-05 09:04:07.611300',400.00,100.00,0.00,0,NULL,5,NULL,1,2,196),(7,'CAS-2026-06-0007','2026-06-06','testuser','MRNO202605121','9895310696','Kottayam','50','Male',300.00,0.00,0.00,0.00,0.00,0.00,300.00,'Cash','Paid','2026-06-06 07:15:29.834600','2026-06-06 07:15:29.834600',300.00,0.00,0.00,0,NULL,5,NULL,1,2,196),(8,'CAS-2026-06-0008','2026-06-08','Shibu','MRNO202606081','8878762761','Kottayam','35','Male',400.00,0.00,0.00,0.00,0.00,0.00,400.00,'Cash','Paid','2026-06-08 04:54:23.392412','2026-06-08 04:54:23.392412',400.00,0.00,0.00,0,NULL,5,NULL,1,2,213),(9,'CAS-2026-06-0009','2026-06-10','Rahul','MRNO202606101','6744342344','Kottayam','35','Male',200.00,0.00,0.00,0.00,0.00,0.00,200.00,'Cash','Paid','2026-06-10 06:24:10.667116','2026-06-10 06:24:10.667116',200.00,0.00,0.00,0,NULL,5,NULL,1,2,215);
/*!40000 ALTER TABLE `ayurvedaapp_casualityinvoicemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_city`
--

DROP TABLE IF EXISTS `ayurvedaapp_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_city` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `City_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_city`
--

LOCK TABLES `ayurvedaapp_city` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_city` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_city` VALUES (1,'PAMPADY'),(2,'PANGADA'),(3,'PUTHUPALLY'),(4,'MEENADAM'),(5,'12 MILE'),(6,'14 MILE'),(7,'7 MILE'),(8,'8 MILE'),(9,'KODUNGOOR'),(10,'PALLIKATHODU'),(11,'SN PURAM'),(12,'KOOROPADA'),(13,'test');
/*!40000 ALTER TABLE `ayurvedaapp_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_clairvedacasehistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_clairvedacasehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_clairvedacasehistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  `chief_complaint` varchar(255) NOT NULL,
  `present_complaint` longtext NOT NULL,
  `final_diagnosis` varchar(255) NOT NULL,
  `follow_up_date` date DEFAULT NULL,
  `created_at` date NOT NULL,
  `assigned_doctor_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `prepairedby_id` bigint DEFAULT NULL,
  `deletestatus` tinyint(1) NOT NULL,
  `branchcasehstry_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_clairved_assigned_doctor_id_85f9c8f1_fk_ayurvedaa` (`assigned_doctor_id`),
  KEY `ayurvedaapp_clairved_patient_id_12af1e33_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_clairved_prepairedby_id_6ddd846e_fk_ayurvedaa` (`prepairedby_id`),
  KEY `ayurvedaapp_clairved_branchcasehstry_id_91370324_fk_ayurvedaa` (`branchcasehstry_id`),
  CONSTRAINT `ayurvedaapp_clairved_assigned_doctor_id_85f9c8f1_fk_ayurvedaa` FOREIGN KEY (`assigned_doctor_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_branchcasehstry_id_91370324_fk_ayurvedaa` FOREIGN KEY (`branchcasehstry_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_patient_id_12af1e33_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_prepairedby_id_6ddd846e_fk_ayurvedaa` FOREIGN KEY (`prepairedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_clairvedacasehistory`
--

LOCK TABLES `ayurvedaapp_clairvedacasehistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedacasehistory` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_clairvedacasehistory` VALUES (1,'Consultation','<p>test</p>','','test','2026-05-12','2026-05-12',1,1,1,0,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_clairvedacasehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_clairvedafollowup`
--

DROP TABLE IF EXISTS `ayurvedaapp_clairvedafollowup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_clairvedafollowup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `notes` longtext NOT NULL,
  `created_at` date NOT NULL,
  `case_history_id` bigint NOT NULL,
  `handledbystaff_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_clairved_case_history_id_4065004b_fk_ayurvedaa` (`case_history_id`),
  KEY `ayurvedaapp_clairved_handledbystaff_id_c712945b_fk_ayurvedaa` (`handledbystaff_id`),
  CONSTRAINT `ayurvedaapp_clairved_case_history_id_4065004b_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_handledbystaff_id_c712945b_fk_ayurvedaa` FOREIGN KEY (`handledbystaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_clairvedafollowup`
--

LOCK TABLES `ayurvedaapp_clairvedafollowup` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedafollowup` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_clairvedafollowup` VALUES (1,'','2026-05-12',1,1);
/*!40000 ALTER TABLE `ayurvedaapp_clairvedafollowup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_clairvedafollowupreport`
--

DROP TABLE IF EXISTS `ayurvedaapp_clairvedafollowupreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_clairvedafollowupreport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `follow_up_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_clairved_follow_up_id_dff7b62e_fk_ayurvedaa` (`follow_up_id`),
  CONSTRAINT `ayurvedaapp_clairved_follow_up_id_dff7b62e_fk_ayurvedaa` FOREIGN KEY (`follow_up_id`) REFERENCES `ayurvedaapp_clairvedafollowup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_clairvedafollowupreport`
--

LOCK TABLES `ayurvedaapp_clairvedafollowupreport` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedafollowupreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedafollowupreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_clairvedaprescription`
--

DROP TABLE IF EXISTS `ayurvedaapp_clairvedaprescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_clairvedaprescription` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `prescriptiondate` date NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `count` int NOT NULL,
  `dosage` varchar(50) NOT NULL,
  `case_history_id` bigint NOT NULL,
  `followup_id` bigint DEFAULT NULL,
  `prescribeddoctor_id` bigint DEFAULT NULL,
  `physicalstock_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_clairved_case_history_id_f12f7180_fk_ayurvedaa` (`case_history_id`),
  KEY `ayurvedaapp_clairved_followup_id_e11fe7d4_fk_ayurvedaa` (`followup_id`),
  KEY `ayurvedaapp_clairved_prescribeddoctor_id_fb7e5b88_fk_ayurvedaa` (`prescribeddoctor_id`),
  KEY `ayurvedaapp_clairved_physicalstock_id_d8dcebe6_fk_ayurvedaa` (`physicalstock_id`),
  CONSTRAINT `ayurvedaapp_clairved_case_history_id_f12f7180_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_followup_id_e11fe7d4_fk_ayurvedaa` FOREIGN KEY (`followup_id`) REFERENCES `ayurvedaapp_clairvedafollowup` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_physicalstock_id_d8dcebe6_fk_ayurvedaa` FOREIGN KEY (`physicalstock_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_prescribeddoctor_id_fb7e5b88_fk_ayurvedaa` FOREIGN KEY (`prescribeddoctor_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_clairvedaprescription`
--

LOCK TABLES `ayurvedaapp_clairvedaprescription` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedaprescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedaprescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_clairvedcasehistrypersonalinfo`
--

DROP TABLE IF EXISTS `ayurvedaapp_clairvedcasehistrypersonalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_clairvedcasehistrypersonalinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `clrcasehistory_id` bigint NOT NULL,
  `mrno_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_clairved_clrcasehistory_id_8cc6ecad_fk_ayurvedaa` (`clrcasehistory_id`),
  KEY `ayurvedaapp_clairved_mrno_id_9c1c8f1d_fk_ayurvedaa` (`mrno_id`),
  CONSTRAINT `ayurvedaapp_clairved_clrcasehistory_id_8cc6ecad_fk_ayurvedaa` FOREIGN KEY (`clrcasehistory_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_clairved_mrno_id_9c1c8f1d_fk_ayurvedaa` FOREIGN KEY (`mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_clairvedcasehistrypersonalinfo`
--

LOCK TABLES `ayurvedaapp_clairvedcasehistrypersonalinfo` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedcasehistrypersonalinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_clairvedcasehistrypersonalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_comapany`
--

DROP TABLE IF EXISTS `ayurvedaapp_comapany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_comapany` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Comapany_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_comapany`
--

LOCK TABLES `ayurvedaapp_comapany` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_comapany` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_comapany` VALUES (146,'tescomp'),(147,'Autozone '),(148,'Erreka'),(149,'AJ'),(150,'Hikvision');
/*!40000 ALTER TABLE `ayurvedaapp_comapany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_complaints`
--

DROP TABLE IF EXISTS `ayurvedaapp_complaints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_complaints` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `complaints` varchar(1000) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_complain_MR_Number_id_a9fd943d_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_complain_MR_Number_id_a9fd943d_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_complaints`
--

LOCK TABLES `ayurvedaapp_complaints` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_complaints` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_complaints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_consultationinvdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_consultationinvdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_consultationinvdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `currentdate` date NOT NULL,
  `tax` double NOT NULL,
  `total` double NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `discount` varchar(15) DEFAULT NULL,
  `consultfee` varchar(400) DEFAULT NULL,
  `consultfeecumregfee` varchar(400) DEFAULT NULL,
  `consltinvno` varchar(400) NOT NULL,
  `cancelinvoicestatus` tinyint(1) NOT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_consulta_branch_id_36c6aed7_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_consulta_hospitalname_id_f169b64a_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_consulta_preparedby_id_94197fff_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_consulta_branch_id_36c6aed7_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_consulta_hospitalname_id_f169b64a_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_consulta_preparedby_id_94197fff_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_consultationinvdetails`
--

LOCK TABLES `ayurvedaapp_consultationinvdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_consultationinvdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_consultationinvdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_country`
--

DROP TABLE IF EXISTS `ayurvedaapp_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_country` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Country_Name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_country`
--

LOCK TABLES `ayurvedaapp_country` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_country` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_country` VALUES (14,'INDIA');
/*!40000 ALTER TABLE `ayurvedaapp_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_creditdetailschild`
--

DROP TABLE IF EXISTS `ayurvedaapp_creditdetailschild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_creditdetailschild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `particulars` varchar(400) NOT NULL,
  `returnqty` varchar(400) NOT NULL,
  `amount` double NOT NULL,
  `sutotal` double NOT NULL,
  `currentdate` date NOT NULL,
  `description` varchar(400) NOT NULL,
  `unt` varchar(400) NOT NULL,
  `medcompany_id` bigint DEFAULT NULL,
  `crno_id` bigint DEFAULT NULL,
  `invmsid_id` bigint DEFAULT NULL,
  `medid_id` bigint DEFAULT NULL,
  `suppid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_creditde_medcompany_id_b9f6e189_fk_ayurvedaa` (`medcompany_id`),
  KEY `ayurvedaapp_creditde_crno_id_8bf9cfda_fk_ayurvedaa` (`crno_id`),
  KEY `ayurvedaapp_creditde_invmsid_id_e146b64c_fk_ayurvedaa` (`invmsid_id`),
  KEY `ayurvedaapp_creditde_medid_id_dab020d3_fk_ayurvedaa` (`medid_id`),
  KEY `ayurvedaapp_creditde_suppid_id_119e45c2_fk_ayurvedaa` (`suppid_id`),
  CONSTRAINT `ayurvedaapp_creditde_crno_id_8bf9cfda_fk_ayurvedaa` FOREIGN KEY (`crno_id`) REFERENCES `ayurvedaapp_creditdetailsmaster` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_invmsid_id_e146b64c_fk_ayurvedaa` FOREIGN KEY (`invmsid_id`) REFERENCES `ayurvedaapp_invoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_medcompany_id_b9f6e189_fk_ayurvedaa` FOREIGN KEY (`medcompany_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_medid_id_dab020d3_fk_ayurvedaa` FOREIGN KEY (`medid_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_suppid_id_119e45c2_fk_ayurvedaa` FOREIGN KEY (`suppid_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_creditdetailschild`
--

LOCK TABLES `ayurvedaapp_creditdetailschild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_creditdetailschild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_creditdetailschild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_creditdetailsmaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_creditdetailsmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_creditdetailsmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `currentdate` date NOT NULL,
  `crno` varchar(400) NOT NULL,
  `subtotal` double NOT NULL,
  `totalamount` varchar(400) NOT NULL,
  `tax` varchar(400) NOT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `invmsid_id` bigint DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_creditde_branch_id_8af3ad38_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_creditde_hospitalname_id_0df830dd_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_creditde_invmsid_id_dc3d7d7e_fk_ayurvedaa` (`invmsid_id`),
  KEY `ayurvedaapp_creditde_Mrno_id_b10605d9_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_creditde_preparedby_id_e63eca57_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_creditde_branch_id_8af3ad38_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_hospitalname_id_0df830dd_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_invmsid_id_dc3d7d7e_fk_ayurvedaa` FOREIGN KEY (`invmsid_id`) REFERENCES `ayurvedaapp_invoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_Mrno_id_b10605d9_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_creditde_preparedby_id_e63eca57_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_creditdetailsmaster`
--

LOCK TABLES `ayurvedaapp_creditdetailsmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_creditdetailsmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_creditdetailsmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_creditnotechild`
--

DROP TABLE IF EXISTS `ayurvedaapp_creditnotechild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_creditnotechild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `particulars` varchar(400) DEFAULT NULL,
  `quantity` int NOT NULL,
  `amount` double NOT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `remarks` longtext,
  `restocked` tinyint(1) NOT NULL,
  `invoice_child_id` bigint DEFAULT NULL,
  `creditnote_master_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_creditno_invoice_child_id_99adcdc0_fk_ayurvedaa` (`invoice_child_id`),
  KEY `ayurvedaapp_creditno_creditnote_master_id_ebca76e8_fk_ayurvedaa` (`creditnote_master_id`),
  CONSTRAINT `ayurvedaapp_creditno_creditnote_master_id_ebca76e8_fk_ayurvedaa` FOREIGN KEY (`creditnote_master_id`) REFERENCES `ayurvedaapp_creditnotemaster` (`id`),
  CONSTRAINT `ayurvedaapp_creditno_invoice_child_id_99adcdc0_fk_ayurvedaa` FOREIGN KEY (`invoice_child_id`) REFERENCES `ayurvedaapp_newinvoicechild` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_creditnotechild`
--

LOCK TABLES `ayurvedaapp_creditnotechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_creditnotechild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_creditnotechild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_creditnotemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_creditnotemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_creditnotemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `creditnote_number` varchar(200) DEFAULT NULL,
  `creditnote_date` date NOT NULL,
  `reason` longtext,
  `subtotal` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `branch_id` bigint NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `hospitalname_id` bigint NOT NULL,
  `invoicemaster_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `creditnote_number` (`creditnote_number`),
  KEY `ayurvedaapp_creditno_branch_id_cc1f3cb6_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_creditno_created_by_id_c3eaedf7_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_creditno_hospitalname_id_3a7847fe_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_creditno_invoicemaster_id_3ffa8ea7_fk_ayurvedaa` (`invoicemaster_id`),
  CONSTRAINT `ayurvedaapp_creditno_branch_id_cc1f3cb6_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_creditno_created_by_id_c3eaedf7_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_creditno_hospitalname_id_3a7847fe_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_creditno_invoicemaster_id_3ffa8ea7_fk_ayurvedaa` FOREIGN KEY (`invoicemaster_id`) REFERENCES `ayurvedaapp_newinvoicemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_creditnotemaster`
--

LOCK TABLES `ayurvedaapp_creditnotemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_creditnotemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_creditnotemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_dailyreportforop`
--

DROP TABLE IF EXISTS `ayurvedaapp_dailyreportforop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_dailyreportforop` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `currentdate` date NOT NULL,
  `particular` varchar(400) NOT NULL,
  `value` varchar(400) NOT NULL,
  `normal_value` varchar(400) DEFAULT NULL,
  `iporopstatus` varchar(400) NOT NULL,
  `dateofvitals` date DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_dailyrep_Mrno_id_bece7c00_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_dailyrep_preparedby_id_00a6a034_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_dailyrep_Mrno_id_bece7c00_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_dailyrep_preparedby_id_00a6a034_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dailyreportforop`
--

LOCK TABLES `ayurvedaapp_dailyreportforop` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dailyreportforop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_dailyreportforop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_dailytreatmentdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_dailytreatmentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_dailytreatmentdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Treatment_name` varchar(400) NOT NULL,
  `Medicinename` varchar(5000) NOT NULL,
  `Status` varchar(100) NOT NULL,
  `Current_date` date NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  `Patient_Name_id` bigint NOT NULL,
  `Staff_name_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_dailytre_MR_Number_id_12be3fa0_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_dailytre_Patient_Name_id_fb96ae48_fk_ayurvedaa` (`Patient_Name_id`),
  KEY `ayurvedaapp_dailytre_Staff_name_id_cff6b53e_fk_ayurvedaa` (`Staff_name_id`),
  CONSTRAINT `ayurvedaapp_dailytre_MR_Number_id_12be3fa0_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_dailytre_Patient_Name_id_fb96ae48_fk_ayurvedaa` FOREIGN KEY (`Patient_Name_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_dailytre_Staff_name_id_cff6b53e_fk_ayurvedaa` FOREIGN KEY (`Staff_name_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dailytreatmentdetails`
--

LOCK TABLES `ayurvedaapp_dailytreatmentdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dailytreatmentdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_dailytreatmentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_dashboardallocation`
--

DROP TABLE IF EXISTS `ayurvedaapp_dashboardallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_dashboardallocation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(400) NOT NULL,
  `ordering` int unsigned NOT NULL,
  `roleid_id` bigint NOT NULL,
  `dashboardid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_dashboar_roleid_id_997c4734_fk_ayurvedaa` (`roleid_id`),
  KEY `ayurvedaapp_dashboar_dashboardid_id_e242b2f4_fk_ayurvedaa` (`dashboardid_id`),
  CONSTRAINT `ayurvedaapp_dashboar_dashboardid_id_e242b2f4_fk_ayurvedaa` FOREIGN KEY (`dashboardid_id`) REFERENCES `ayurvedaapp_dashboardesign` (`id`),
  CONSTRAINT `ayurvedaapp_dashboar_roleid_id_997c4734_fk_ayurvedaa` FOREIGN KEY (`roleid_id`) REFERENCES `ayurvedaapp_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1530 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dashboardallocation`
--

LOCK TABLES `ayurvedaapp_dashboardallocation` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dashboardallocation` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_dashboardallocation` VALUES (1271,'Assigned',1,21,10),(1272,'Assigned',2,21,11),(1273,'Assigned',3,21,12),(1274,'Assigned',4,21,13),(1275,'Assigned',5,21,14),(1276,'Assigned',6,21,15),(1277,'Assigned',7,21,16),(1278,'Assigned',8,21,18),(1279,'Assigned',9,21,19),(1280,'Assigned',10,21,20),(1281,'Assigned',11,21,21),(1282,'Assigned',12,21,22),(1283,'Assigned',13,21,26),(1284,'Assigned',14,21,25),(1285,'Assigned',15,21,27),(1286,'Assigned',16,21,28),(1287,'Assigned',17,21,35),(1288,'Assigned',18,21,36),(1289,'Assigned',19,21,37),(1290,'Assigned',20,21,39),(1291,'Assigned',21,21,40),(1292,'Assigned',22,21,41),(1293,'Assigned',23,21,42),(1294,'Assigned',24,21,43),(1295,'Assigned',25,21,38),(1296,'Assigned',26,21,24),(1418,'Assigned',1,26,18),(1419,'Assigned',2,26,19),(1420,'Assigned',3,26,20),(1421,'Assigned',4,26,21),(1422,'Assigned',5,26,23),(1423,'Assigned',6,26,33),(1424,'Assigned',7,26,36),(1444,'Assigned',1,25,13),(1445,'Assigned',2,25,14),(1446,'Assigned',3,25,16),(1447,'Assigned',4,25,15),(1448,'Assigned',5,25,18),(1449,'Assigned',6,25,19),(1450,'Assigned',7,25,20),(1451,'Assigned',8,25,21),(1452,'Assigned',9,25,22),(1453,'Assigned',10,25,23),(1454,'Assigned',11,25,24),(1455,'Assigned',12,25,25),(1456,'Assigned',13,25,26),(1457,'Assigned',14,25,27),(1458,'Assigned',15,25,28),(1459,'Assigned',16,25,29),(1460,'Assigned',17,25,31),(1461,'Assigned',18,25,32),(1462,'Assigned',19,25,33),(1463,'Assigned',20,25,34),(1464,'Assigned',21,25,35),(1465,'Assigned',22,25,36),(1466,'Assigned',23,25,37),(1467,'Assigned',24,25,38),(1468,'Assigned',25,25,39),(1469,'Assigned',26,25,40),(1470,'Assigned',27,25,41),(1471,'Assigned',28,25,42),(1472,'Assigned',29,25,43),(1473,'Assigned',30,25,10),(1474,'Assigned',31,25,11),(1475,'Assigned',32,25,12),(1476,'Assigned',1,27,19),(1477,'Assigned',2,27,18),(1478,'Assigned',3,27,16),(1479,'Assigned',4,27,25),(1480,'Assigned',5,27,36),(1481,'Assigned',6,27,21),(1482,'Assigned',1,15,10),(1483,'Assigned',2,15,11),(1484,'Assigned',3,15,26),(1485,'Assigned',4,15,28),(1486,'Assigned',5,15,12),(1487,'Assigned',6,15,13),(1488,'Assigned',7,15,14),(1509,'Assigned',1,1,10),(1510,'Assigned',2,1,11),(1511,'Assigned',3,1,12),(1512,'Assigned',4,1,13),(1513,'Assigned',5,1,14),(1514,'Assigned',6,1,16),(1515,'Assigned',7,1,18),(1516,'Assigned',8,1,19),(1517,'Assigned',9,1,20),(1518,'Assigned',10,1,21),(1519,'Assigned',11,1,22),(1520,'Assigned',12,1,25),(1521,'Assigned',13,1,26),(1522,'Assigned',14,1,23),(1523,'Assigned',15,1,24),(1524,'Assigned',16,1,28),(1525,'Assigned',17,1,33),(1526,'Assigned',18,1,36),(1527,'Assigned',19,1,41),(1528,'Assigned',20,1,44),(1529,'Assigned',21,1,43);
/*!40000 ALTER TABLE `ayurvedaapp_dashboardallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_dashboardesign`
--

DROP TABLE IF EXISTS `ayurvedaapp_dashboardesign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_dashboardesign` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dashboardname` varchar(400) NOT NULL,
  `color` varchar(20) NOT NULL,
  `linkname` varchar(400) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dashboardesign`
--

LOCK TABLES `ayurvedaapp_dashboardesign` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dashboardesign` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_dashboardesign` VALUES (10,'Patient Details','#95e9cce8','adminpatientdetailtable',1),(11,'Todays Appointments','#5C9EDD','todayappointment',1),(12,'Today Medical Follow up ','#7ac15c','todaymedicalfollowup',1),(13,'Today Enquiry Follow Up','#FFCD00','todayremaindertable',1),(14,'Daily Call Summary','#e54f16','enquirycalldetails',1),(15,'Treatment Record','#db2fa6','treatmentlistrecord',1),(16,'Treatment Invoice List','#e97dcd','treatmentlist',1),(18,'Pharmacy Invoice List','#474bc1','invlist',1),(19,'Expiring Within 6 Months','#c31515','expiredmedicine',1),(20,'Current Reorder List','#FFDD00','currentreorderlist',1),(21,'Daily Pharmacy Sale List','#78dddd','daily_sales_report',1),(22,'Treatment Room Booking OP','#FF90BB','treatment_booking_list',1),(23,'Branchwise Revenue','#5C9EDD','dailyrevenue_dashboard',1),(24,'Pharmacy Queue List','#007BFF','pharmacyqueue',1),(25,'Transaction History','#e97dcd','daily_transaction_report',1),(26,'Consultation Invoice ','#3238a8','appointment_invlist',1),(27,'Branch-wise Pharmacy Invoice','#0335fc','pharmacyinvoicereport',1),(28,'Prescription Print','#e97dcd','prescription_list',1),(29,'Lab Test Queue','#007BFF','todays_labtests',1),(31,'New tax Invoice List','#e97dcd','newtaxinvlist',1),(32,'Sale Report After Sept 22','#007BFF','salesreport',1),(33,'Branch Summary','#0335fc','branch_list',1),(34,'Millet Invoice List','Green','inventory_invlist',1),(35,'Appointment Payment Edit','#006992','appinvedit',1),(36,'HSN Report','#e97dcd','gst_report',1),(37,'Online Consultation','Orange','zoho_contacts_view',1),(38,'Millet Sales Report','gray','inventory_sales_report',1),(39,'Doctors Visit Rport','#007BFF','doctor_visit_report',1),(40,'Lab Report Count ','#F57799','labcountreport',1),(41,'Pending Pharmacy Invoice','#575799','pending_pharmacy_invoice_list',1),(42,'Lab Revenue','Green','lab_revenue',1),(43,'Doctor\'s Appointment Fee Management','Blue','appointment_fee_list',1),(44,'Lab Invoice Bill','red','lab_invoice_list',1);
/*!40000 ALTER TABLE `ayurvedaapp_dashboardesign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_dashvidhpariksha`
--

DROP TABLE IF EXISTS `ayurvedaapp_dashvidhpariksha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_dashvidhpariksha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `prakriti` varchar(800) NOT NULL,
  `vikriti` varchar(800) NOT NULL,
  `saar` varchar(800) NOT NULL,
  `samhanan` varchar(800) NOT NULL,
  `satmya` varchar(800) NOT NULL,
  `pramana` varchar(800) NOT NULL,
  `satva` varchar(800) NOT NULL,
  `aharshakti` varchar(800) NOT NULL,
  `vyayamshakti` varchar(800) NOT NULL,
  `vaya` varchar(800) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_dashvidh_MR_Number_id_6096afe8_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_dashvidh_MR_Number_id_6096afe8_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dashvidhpariksha`
--

LOCK TABLES `ayurvedaapp_dashvidhpariksha` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dashvidhpariksha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_dashvidhpariksha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_department`
--

DROP TABLE IF EXISTS `ayurvedaapp_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_department` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Department_Name` varchar(500) NOT NULL,
  `flag` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_department`
--

LOCK TABLES `ayurvedaapp_department` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_department` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_department` VALUES (3,'Front Office',1),(4,'Medical Consutation',1),(5,'Therapeutic Department',1),(6,'Pharmacy',1),(8,'Admin',1),(9,'Inventory',1),(10,'lab',1),(11,'Branch Incharge',1),(12,'Front office & Pharmacy',1),(13,'Branch Incharge',1),(14,'test department',1);
/*!40000 ALTER TABLE `ayurvedaapp_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_designation`
--

DROP TABLE IF EXISTS `ayurvedaapp_designation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_designation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Designation_Name` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_designation`
--

LOCK TABLES `ayurvedaapp_designation` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_designation` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_designation` VALUES (1,'Admin'),(2,'CMO'),(3,'Associate Doctors'),(4,'Pharmacist'),(5,'Female Wellness Therapist '),(6,'Male Wellness Therapist'),(7,'CRRI'),(8,'Receptionist'),(9,'superadmin'),(10,'lab incharge'),(11,'Branch Incharge'),(12,'Front Office & Pharmacist'),(13,'Doctor'),(14,'CONSULTANT');
/*!40000 ALTER TABLE `ayurvedaapp_designation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_diagnosis`
--

DROP TABLE IF EXISTS `ayurvedaapp_diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_diagnosis` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `description` varchar(800) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_diagnosi_MR_Number_id_4b75ba37_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_diagnosi_MR_Number_id_4b75ba37_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_diagnosis`
--

LOCK TABLES `ayurvedaapp_diagnosis` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_diagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_diet`
--

DROP TABLE IF EXISTS `ayurvedaapp_diet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_diet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_diet`
--

LOCK TABLES `ayurvedaapp_diet` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_diet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_diet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_diet_chart`
--

DROP TABLE IF EXISTS `ayurvedaapp_diet_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_diet_chart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `six_fifteen` varchar(500) NOT NULL,
  `eight_thirty` varchar(500) NOT NULL,
  `eleven` varchar(500) NOT NULL,
  `twelve_thirty` varchar(500) NOT NULL,
  `four` varchar(500) NOT NULL,
  `six_thirty` varchar(500) NOT NULL,
  `bed_time` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_diet_cha_MR_Number_id_360320e9_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_diet_cha_MR_Number_id_360320e9_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_diet_chart`
--

LOCK TABLES `ayurvedaapp_diet_chart` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_diet_chart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_diet_chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_dietaryhistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_dietaryhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_dietaryhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Food_type` varchar(500) NOT NULL,
  `Food_Allergy` varchar(500) NOT NULL,
  `Likes_dislikes` varchar(500) NOT NULL,
  `Home_Recall` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_dietaryh_MR_Number_id_3ed646b1_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_dietaryh_MR_Number_id_3ed646b1_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dietaryhistory`
--

LOCK TABLES `ayurvedaapp_dietaryhistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dietaryhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_dietaryhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_differentialdiagnosis`
--

DROP TABLE IF EXISTS `ayurvedaapp_differentialdiagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_differentialdiagnosis` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_differen_MR_Number_id_29f44bfc_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_differen_MR_Number_id_29f44bfc_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_differentialdiagnosis`
--

LOCK TABLES `ayurvedaapp_differentialdiagnosis` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_differentialdiagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_differentialdiagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_dischargemedicationprocedure`
--

DROP TABLE IF EXISTS `ayurvedaapp_dischargemedicationprocedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_dischargemedicationprocedure` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `internal_medication` longtext,
  `treatment_procedure` longtext,
  `discharge_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_discharg_discharge_id_61fe436e_fk_ayurvedaa` (`discharge_id`),
  CONSTRAINT `ayurvedaapp_discharg_discharge_id_61fe436e_fk_ayurvedaa` FOREIGN KEY (`discharge_id`) REFERENCES `ayurvedaapp_patientdischarge` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_dischargemedicationprocedure`
--

LOCK TABLES `ayurvedaapp_dischargemedicationprocedure` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_dischargemedicationprocedure` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_dischargemedicationprocedure` VALUES (1,'t','t',1),(2,'tet','tt',2);
/*!40000 ALTER TABLE `ayurvedaapp_dischargemedicationprocedure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_district`
--

DROP TABLE IF EXISTS `ayurvedaapp_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_district` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `District_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_district`
--

LOCK TABLES `ayurvedaapp_district` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_district` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_district` VALUES (1,'testdistrict'),(2,'ERNAKULAM'),(3,'IDUKKI'),(4,'KOTTAYAM'),(5,'ALAPPUZHA');
/*!40000 ALTER TABLE `ayurvedaapp_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_doctorprescription`
--

DROP TABLE IF EXISTS `ayurvedaapp_doctorprescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_doctorprescription` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `direction` varchar(700) NOT NULL,
  `medicinename_id` bigint NOT NULL,
  `MR_Number_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_doctorpr_medicinename_id_05c06a86_fk_ayurvedaa` (`medicinename_id`),
  KEY `ayurvedaapp_doctorpr_MR_Number_id_e61435dc_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_doctorpr_medicinename_id_05c06a86_fk_ayurvedaa` FOREIGN KEY (`medicinename_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_doctorpr_MR_Number_id_e61435dc_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_doctorprescription`
--

LOCK TABLES `ayurvedaapp_doctorprescription` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_doctorprescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_doctorprescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_enquiry`
--

DROP TABLE IF EXISTS `ayurvedaapp_enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_enquiry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `age` varchar(10) NOT NULL,
  `complaint` varchar(300) NOT NULL,
  `Phone_number` varchar(15) NOT NULL,
  `currentdate` date NOT NULL,
  `callormsg` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `branch_id` bigint NOT NULL,
  `predpaidby_id` bigint NOT NULL,
  `sourrcdts_id` bigint NOT NULL,
  `language` varchar(800) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_enquiry_branch_id_56742d0a_fk_ayurvedaapp_branch_id` (`branch_id`),
  KEY `ayurvedaapp_enquiry_predpaidby_id_c2bd4f16_fk_ayurvedaa` (`predpaidby_id`),
  KEY `ayurvedaapp_enquiry_sourrcdts_id_bf64ba5d_fk_ayurvedaa` (`sourrcdts_id`),
  CONSTRAINT `ayurvedaapp_enquiry_branch_id_56742d0a_fk_ayurvedaapp_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_enquiry_predpaidby_id_c2bd4f16_fk_ayurvedaa` FOREIGN KEY (`predpaidby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_enquiry_sourrcdts_id_bf64ba5d_fk_ayurvedaa` FOREIGN KEY (`sourrcdts_id`) REFERENCES `ayurvedaapp_sourcedetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_enquiry`
--

LOCK TABLES `ayurvedaapp_enquiry` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_enquiry` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_enquiry` VALUES (1,'test','25','','8909876656','2026-05-26','Call','Recontact',5,1,1,'English',0,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_equipment_master`
--

DROP TABLE IF EXISTS `ayurvedaapp_equipment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_equipment_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Equipment_name` varchar(300) NOT NULL,
  `Branch_Name_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_equipmen_Branch_Name_id_a366bd3e_fk_ayurvedaa` (`Branch_Name_id`),
  CONSTRAINT `ayurvedaapp_equipmen_Branch_Name_id_a366bd3e_fk_ayurvedaa` FOREIGN KEY (`Branch_Name_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_equipment_master`
--

LOCK TABLES `ayurvedaapp_equipment_master` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_equipment_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_equipment_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_familyhistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_familyhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_familyhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `familyhistorydt` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_familyhi_MR_Number_id_549bfd94_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_familyhi_MR_Number_id_549bfd94_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_familyhistory`
--

LOCK TABLES `ayurvedaapp_familyhistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_familyhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_familyhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_followup`
--

DROP TABLE IF EXISTS `ayurvedaapp_followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_followup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `followupdate` date NOT NULL,
  `remainderdate` date DEFAULT NULL,
  `remarks` longtext NOT NULL,
  `enqid_id` bigint NOT NULL,
  `followedby_id` bigint NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_followup_enqid_id_129682aa_fk_ayurvedaapp_enquiry_id` (`enqid_id`),
  KEY `ayurvedaapp_followup_followedby_id_a13ccb91_fk_ayurvedaa` (`followedby_id`),
  KEY `ayurvedaapp_followup_branch_id_6bcfe7fc_fk_ayurvedaapp_branch_id` (`branch_id`),
  CONSTRAINT `ayurvedaapp_followup_branch_id_6bcfe7fc_fk_ayurvedaapp_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_followup_enqid_id_129682aa_fk_ayurvedaapp_enquiry_id` FOREIGN KEY (`enqid_id`) REFERENCES `ayurvedaapp_enquiry` (`id`),
  CONSTRAINT `ayurvedaapp_followup_followedby_id_a13ccb91_fk_ayurvedaa` FOREIGN KEY (`followedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_followup`
--

LOCK TABLES `ayurvedaapp_followup` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_followup` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_followup` VALUES (1,'2026-05-26','2026-05-26','m',1,190,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_followupcalldetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_followupcalldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_followupcalldetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `currentdate` date NOT NULL,
  `callorstatus` longtext NOT NULL,
  `status` longtext NOT NULL,
  `enqid_id` bigint NOT NULL,
  `followedby_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_followup_enqid_id_6eca8093_fk_ayurvedaa` (`enqid_id`),
  KEY `ayurvedaapp_followup_followedby_id_ef545b7a_fk_ayurvedaa` (`followedby_id`),
  CONSTRAINT `ayurvedaapp_followup_enqid_id_6eca8093_fk_ayurvedaa` FOREIGN KEY (`enqid_id`) REFERENCES `ayurvedaapp_enquiry` (`id`),
  CONSTRAINT `ayurvedaapp_followup_followedby_id_ef545b7a_fk_ayurvedaa` FOREIGN KEY (`followedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_followupcalldetails`
--

LOCK TABLES `ayurvedaapp_followupcalldetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_followupcalldetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_followupcalldetails` VALUES (1,'2026-05-26','Call','Recontact',1,190);
/*!40000 ALTER TABLE `ayurvedaapp_followupcalldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_food`
--

DROP TABLE IF EXISTS `ayurvedaapp_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_food` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_food`
--

LOCK TABLES `ayurvedaapp_food` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_generalphysicalexamination`
--

DROP TABLE IF EXISTS `ayurvedaapp_generalphysicalexamination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_generalphysicalexamination` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `pulse` varchar(800) NOT NULL,
  `temperature` varchar(800) NOT NULL,
  `bp` varchar(800) NOT NULL,
  `weight` varchar(800) NOT NULL,
  `bmi` varchar(800) NOT NULL,
  `lips` varchar(800) NOT NULL,
  `throat` varchar(800) NOT NULL,
  `spo2` varchar(800) NOT NULL,
  `tooth` varchar(800) NOT NULL,
  `nutriionalstatus` varchar(800) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_generalp_MR_Number_id_be49d4a9_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_generalp_MR_Number_id_be49d4a9_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_generalphysicalexamination`
--

LOCK TABLES `ayurvedaapp_generalphysicalexamination` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_generalphysicalexamination` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_generalphysicalexamination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_grnchild`
--

DROP TABLE IF EXISTS `ayurvedaapp_grnchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_grnchild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `orderdate` date DEFAULT NULL,
  `grnnumber` varchar(300) NOT NULL,
  `purchaseorderitemqty` varchar(300) NOT NULL,
  `receivedqty` varchar(300) NOT NULL,
  `mdate` date DEFAULT NULL,
  `exdate` date DEFAULT NULL,
  `batchno` varchar(300) NOT NULL,
  `rate` varchar(300) NOT NULL,
  `close` tinyint(1) NOT NULL,
  `branch_id` bigint NOT NULL,
  `itemcompany_id` bigint DEFAULT NULL,
  `grnhid_id` bigint NOT NULL,
  `itemname_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `suppliernm_id` bigint NOT NULL,
  `itemunit_id` bigint NOT NULL,
  `purchase_rate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_grnchild_branch_id_a4e576a1_fk_ayurvedaapp_branch_id` (`branch_id`),
  KEY `ayurvedaapp_grnchild_itemcompany_id_13685d03_fk_ayurvedaa` (`itemcompany_id`),
  KEY `ayurvedaapp_grnchild_grnhid_id_0f01eb4d_fk_ayurvedaa` (`grnhid_id`),
  KEY `ayurvedaapp_grnchild_itemname_id_455224e2_fk_ayurvedaa` (`itemname_id`),
  KEY `ayurvedaapp_grnchild_preparedby_id_432b8fa6_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_grnchild_suppliernm_id_400e11ff_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_grnchild_itemunit_id_47db0e75_fk_ayurvedaa` (`itemunit_id`),
  CONSTRAINT `ayurvedaapp_grnchild_branch_id_a4e576a1_fk_ayurvedaapp_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_grnchild_grnhid_id_0f01eb4d_fk_ayurvedaa` FOREIGN KEY (`grnhid_id`) REFERENCES `ayurvedaapp_grnheader` (`id`),
  CONSTRAINT `ayurvedaapp_grnchild_itemcompany_id_13685d03_fk_ayurvedaa` FOREIGN KEY (`itemcompany_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_grnchild_itemname_id_455224e2_fk_ayurvedaa` FOREIGN KEY (`itemname_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_grnchild_itemunit_id_47db0e75_fk_ayurvedaa` FOREIGN KEY (`itemunit_id`) REFERENCES `ayurvedaapp_unitdt` (`id`),
  CONSTRAINT `ayurvedaapp_grnchild_preparedby_id_432b8fa6_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_grnchild_suppliernm_id_400e11ff_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_grnchild`
--

LOCK TABLES `ayurvedaapp_grnchild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_grnchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_grnchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_grnheader`
--

DROP TABLE IF EXISTS `ayurvedaapp_grnheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_grnheader` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `grnno` varchar(300) NOT NULL,
  `prchaseorderno` varchar(300) NOT NULL,
  `grndate` date DEFAULT NULL,
  `currentdate` date DEFAULT NULL,
  `branch_id` bigint NOT NULL,
  `purchaseorderhid_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `suppliernm_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_grnheade_branch_id_1073fd70_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_grnheade_purchaseorderhid_id_f3a1d477_fk_ayurvedaa` (`purchaseorderhid_id`),
  KEY `ayurvedaapp_grnheade_preparedby_id_d7f93079_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_grnheade_suppliernm_id_c7e93652_fk_ayurvedaa` (`suppliernm_id`),
  CONSTRAINT `ayurvedaapp_grnheade_branch_id_1073fd70_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_grnheade_preparedby_id_d7f93079_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_grnheade_purchaseorderhid_id_f3a1d477_fk_ayurvedaa` FOREIGN KEY (`purchaseorderhid_id`) REFERENCES `ayurvedaapp_purchaseorderheader` (`id`),
  CONSTRAINT `ayurvedaapp_grnheade_suppliernm_id_c7e93652_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_grnheader`
--

LOCK TABLES `ayurvedaapp_grnheader` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_grnheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_grnheader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_headerdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_headerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_headerdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `header_image` varchar(100) DEFAULT NULL,
  `footer_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_headerdetails`
--

LOCK TABLES `ayurvedaapp_headerdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_headerdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_headerdetails` VALUES (1,'header/NEXGEN_PHYSIO.png',NULL);
/*!40000 ALTER TABLE `ayurvedaapp_headerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_hopastillness`
--

DROP TABLE IF EXISTS `ayurvedaapp_hopastillness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_hopastillness` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `hopastillnessdetails` varchar(1000) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_hopastil_MR_Number_id_757e0099_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_hopastil_MR_Number_id_757e0099_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_hopastillness`
--

LOCK TABLES `ayurvedaapp_hopastillness` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_hopastillness` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_hopastillness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_hopresentillness`
--

DROP TABLE IF EXISTS `ayurvedaapp_hopresentillness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_hopresentillness` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `hopresentillnessdetails` varchar(1000) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_hopresen_MR_Number_id_66c139df_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_hopresen_MR_Number_id_66c139df_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_hopresentillness`
--

LOCK TABLES `ayurvedaapp_hopresentillness` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_hopresentillness` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_hopresentillness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_hospitaldetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_hospitaldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_hospitaldetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Name` varchar(500) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `Register_no` varchar(300) NOT NULL,
  `GST` varchar(300) NOT NULL,
  `Manager_name` varchar(300) NOT NULL,
  `Contact_no` varchar(100) NOT NULL,
  `Email` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_hospitaldetails`
--

LOCK TABLES `ayurvedaapp_hospitaldetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_hospitaldetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_hospitaldetails` VALUES (2,'MENON\'S HOSPITAL','DR.MENON\'S HOSPITAL\r\nOPP.RAILWAY STATION\r\nOLAVAKKODE\r\nPALAKKAD-678002','images/WhatsApp_Image_2026-04-24_at_3.40.14_PM_1.jpeg','','TSTT','anu','9999999990','test@gmail.com');
/*!40000 ALTER TABLE `ayurvedaapp_hospitaldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_inventorycategory`
--

DROP TABLE IF EXISTS `ayurvedaapp_inventorycategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_inventorycategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorycategory`
--

LOCK TABLES `ayurvedaapp_inventorycategory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorycategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_inventorycategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_inventorycompany`
--

DROP TABLE IF EXISTS `ayurvedaapp_inventorycompany`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_inventorycompany` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Comapany_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorycompany`
--

LOCK TABLES `ayurvedaapp_inventorycompany` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorycompany` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_inventorycompany` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_inventoryinvoicechild`
--

DROP TABLE IF EXISTS `ayurvedaapp_inventoryinvoicechild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_inventoryinvoicechild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `particulars` varchar(400) NOT NULL,
  `amount` double NOT NULL,
  `sutotal` double NOT NULL,
  `currentdate` datetime(6) NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `batchno` varchar(400) DEFAULT NULL,
  `expirydate` varchar(400) DEFAULT NULL,
  `mfg` varchar(400) DEFAULT NULL,
  `unt` varchar(400) NOT NULL,
  `hsncode` varchar(400) NOT NULL,
  `tax` double NOT NULL,
  `taxamount` double NOT NULL,
  `baseqty` varchar(400) NOT NULL,
  `sgst` varchar(400) DEFAULT NULL,
  `cgst` varchar(400) DEFAULT NULL,
  `sgstamount` varchar(400) DEFAULT NULL,
  `cgstamount` varchar(400) DEFAULT NULL,
  `taxableamount` varchar(400) DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `suppid_id` bigint DEFAULT NULL,
  `invmasterid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_inventor_Mrno_id_44ab3daa_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_inventor_suppid_id_7134a07e_fk_ayurvedaa` (`suppid_id`),
  KEY `ayurvedaapp_inventor_invmasterid_id_0be66f7a_fk_ayurvedaa` (`invmasterid_id`),
  CONSTRAINT `ayurvedaapp_inventor_invmasterid_id_0be66f7a_fk_ayurvedaa` FOREIGN KEY (`invmasterid_id`) REFERENCES `ayurvedaapp_inventoryinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_Mrno_id_44ab3daa_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_suppid_id_7134a07e_fk_ayurvedaa` FOREIGN KEY (`suppid_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventoryinvoicechild`
--

LOCK TABLES `ayurvedaapp_inventoryinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventoryinvoicechild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_inventoryinvoicechild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_inventoryinvoicemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_inventoryinvoicemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_inventoryinvoicemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payementmode` varchar(300) DEFAULT NULL,
  `Invoicenumber` varchar(400) NOT NULL,
  `currentdate` date NOT NULL,
  `subtotal` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `discount` varchar(15) DEFAULT NULL,
  `consultationfee` varchar(400) DEFAULT NULL,
  `consultationfeecumregfee` varchar(400) DEFAULT NULL,
  `restockstatus` tinyint(1) NOT NULL,
  `totalsgstamount` varchar(400) DEFAULT NULL,
  `totalcgstamount` varchar(400) DEFAULT NULL,
  `totaltaxableamount` varchar(400) DEFAULT NULL,
  `cash_amount` varchar(400) DEFAULT NULL,
  `gpay_amount` varchar(400) DEFAULT NULL,
  `card_amount` varchar(400) DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_inventor_Mrno_id_52ed160f_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_inventor_branch_id_775e38ae_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_inventor_hospitalname_id_fecbf6c5_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_inventor_preparedby_id_b8232c64_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_inventor_branch_id_775e38ae_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_hospitalname_id_fecbf6c5_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_Mrno_id_52ed160f_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_preparedby_id_b8232c64_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventoryinvoicemaster`
--

LOCK TABLES `ayurvedaapp_inventoryinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventoryinvoicemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_inventoryinvoicemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_inventorymaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_inventorymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_inventorymaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itemcode` varchar(100) DEFAULT NULL,
  `itemnm` varchar(300) NOT NULL,
  `Generic_name` varchar(300) DEFAULT NULL,
  `racknumber` varchar(300) DEFAULT NULL,
  `Sideeffect` varchar(300) DEFAULT NULL,
  `hsncode` varchar(300) DEFAULT NULL,
  `bsuntid_id` bigint NOT NULL,
  `category_name_id` bigint DEFAULT NULL,
  `taxpercentage_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_inventor_bsuntid_id_16a07ed8_fk_ayurvedaa` (`bsuntid_id`),
  KEY `ayurvedaapp_inventor_category_name_id_f5ddfd58_fk_ayurvedaa` (`category_name_id`),
  KEY `ayurvedaapp_inventor_taxpercentage_id_99de6b9e_fk_ayurvedaa` (`taxpercentage_id`),
  CONSTRAINT `ayurvedaapp_inventor_bsuntid_id_16a07ed8_fk_ayurvedaa` FOREIGN KEY (`bsuntid_id`) REFERENCES `ayurvedaapp_baseunit` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_category_name_id_f5ddfd58_fk_ayurvedaa` FOREIGN KEY (`category_name_id`) REFERENCES `ayurvedaapp_inventorycategory` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_taxpercentage_id_99de6b9e_fk_ayurvedaa` FOREIGN KEY (`taxpercentage_id`) REFERENCES `ayurvedaapp_taxmaster` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorymaster`
--

LOCK TABLES `ayurvedaapp_inventorymaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorymaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_inventorymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_inventorystockdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_inventorystockdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_inventorystockdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Manufacturer_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Batch_no` varchar(500) NOT NULL,
  `Rate` varchar(300) NOT NULL,
  `qty` int NOT NULL,
  `lastupdatedate` date NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  `Comapany_name_id` bigint DEFAULT NULL,
  `insertedstaffid_id` bigint NOT NULL,
  `itemnm_id` bigint NOT NULL,
  `stockbranch_id` bigint DEFAULT NULL,
  `storenm_id` bigint NOT NULL,
  `suppliernm_id` bigint DEFAULT NULL,
  `unt_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_inventor_Comapany_name_id_15ed7311_fk_ayurvedaa` (`Comapany_name_id`),
  KEY `ayurvedaapp_inventor_insertedstaffid_id_f614c2d2_fk_ayurvedaa` (`insertedstaffid_id`),
  KEY `ayurvedaapp_inventor_itemnm_id_0aa055c9_fk_ayurvedaa` (`itemnm_id`),
  KEY `ayurvedaapp_inventor_stockbranch_id_d431f6f2_fk_ayurvedaa` (`stockbranch_id`),
  KEY `ayurvedaapp_inventor_storenm_id_8f3c4468_fk_ayurvedaa` (`storenm_id`),
  KEY `ayurvedaapp_inventor_suppliernm_id_7033eb3a_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_inventor_unt_id_1b94703d_fk_ayurvedaa` (`unt_id`),
  CONSTRAINT `ayurvedaapp_inventor_Comapany_name_id_15ed7311_fk_ayurvedaa` FOREIGN KEY (`Comapany_name_id`) REFERENCES `ayurvedaapp_inventorycompany` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_insertedstaffid_id_f614c2d2_fk_ayurvedaa` FOREIGN KEY (`insertedstaffid_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_itemnm_id_0aa055c9_fk_ayurvedaa` FOREIGN KEY (`itemnm_id`) REFERENCES `ayurvedaapp_inventorymaster` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_stockbranch_id_d431f6f2_fk_ayurvedaa` FOREIGN KEY (`stockbranch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_storenm_id_8f3c4468_fk_ayurvedaa` FOREIGN KEY (`storenm_id`) REFERENCES `ayurvedaapp_storedetails` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_suppliernm_id_7033eb3a_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`),
  CONSTRAINT `ayurvedaapp_inventor_unt_id_1b94703d_fk_ayurvedaa` FOREIGN KEY (`unt_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_inventorystockdetails`
--

LOCK TABLES `ayurvedaapp_inventorystockdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_inventorystockdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_inventorystockdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_invoicechild`
--

DROP TABLE IF EXISTS `ayurvedaapp_invoicechild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_invoicechild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `particulars` varchar(400) NOT NULL,
  `amount` double NOT NULL,
  `sutotal` double NOT NULL,
  `currentdate` datetime(6) NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `batchno` varchar(400) DEFAULT NULL,
  `expirydate` varchar(400) DEFAULT NULL,
  `mfg` varchar(400) DEFAULT NULL,
  `unt` varchar(400) NOT NULL,
  `hsncode` varchar(400) NOT NULL,
  `invmasterid_id` bigint DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `suppid_id` bigint DEFAULT NULL,
  `baseqty` varchar(400) NOT NULL,
  `tax` double NOT NULL,
  `taxamount` double NOT NULL,
  `cgst` varchar(400) DEFAULT NULL,
  `sgst` varchar(400) DEFAULT NULL,
  `cgstamount` varchar(400) DEFAULT NULL,
  `sgstamount` varchar(400) DEFAULT NULL,
  `taxableamount` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_invoicec_invmasterid_id_caefc50e_fk_ayurvedaa` (`invmasterid_id`),
  KEY `ayurvedaapp_invoicec_Mrno_id_7dd1b1cf_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_invoicec_suppid_id_73029b72_fk_ayurvedaa` (`suppid_id`),
  CONSTRAINT `ayurvedaapp_invoicec_invmasterid_id_caefc50e_fk_ayurvedaa` FOREIGN KEY (`invmasterid_id`) REFERENCES `ayurvedaapp_invoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_invoicec_Mrno_id_7dd1b1cf_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_invoicec_suppid_id_73029b72_fk_ayurvedaa` FOREIGN KEY (`suppid_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_invoicechild`
--

LOCK TABLES `ayurvedaapp_invoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_invoicechild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_invoicechild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_invoiceerrorlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_invoiceerrorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_invoiceerrorlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `error_message` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `related_invoice` varchar(50) DEFAULT NULL,
  `staff_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_invoiceerrorlog`
--

LOCK TABLES `ayurvedaapp_invoiceerrorlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_invoiceerrorlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_invoiceerrorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_invoicemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_invoicemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_invoicemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Invoicenumber` varchar(400) NOT NULL,
  `currentdate` date NOT NULL,
  `subtotal` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `discount` varchar(15) DEFAULT NULL,
  `consultationfee` varchar(400) DEFAULT NULL,
  `consultationfeecumregfee` varchar(400) DEFAULT NULL,
  `restockstatus` tinyint(1) NOT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `payementmode` varchar(300) DEFAULT NULL,
  `totalcgstamount` varchar(400) DEFAULT NULL,
  `totalsgstamount` varchar(400) DEFAULT NULL,
  `totaltaxableamount` varchar(400) DEFAULT NULL,
  `card_amount` varchar(400) DEFAULT NULL,
  `cash_amount` varchar(400) DEFAULT NULL,
  `gpay_amount` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_invoicem_branch_id_05a7a131_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_invoicem_hospitalname_id_b40af504_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_invoicem_Mrno_id_a808aea3_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_invoicem_preparedby_id_b84b2546_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_invoicem_branch_id_05a7a131_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_invoicem_hospitalname_id_b40af504_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_invoicem_Mrno_id_a808aea3_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_invoicem_preparedby_id_b84b2546_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_invoicemaster`
--

LOCK TABLES `ayurvedaapp_invoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_invoicemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_invoicemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_invreorderdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_invreorderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_invreorderdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `qty` varchar(300) NOT NULL,
  `companyid_id` bigint DEFAULT NULL,
  `itemname_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_invreord_companyid_id_9cee150e_fk_ayurvedaa` (`companyid_id`),
  KEY `ayurvedaapp_invreord_itemname_id_a9d5378b_fk_ayurvedaa` (`itemname_id`),
  CONSTRAINT `ayurvedaapp_invreord_companyid_id_9cee150e_fk_ayurvedaa` FOREIGN KEY (`companyid_id`) REFERENCES `ayurvedaapp_inventorycompany` (`id`),
  CONSTRAINT `ayurvedaapp_invreord_itemname_id_a9d5378b_fk_ayurvedaa` FOREIGN KEY (`itemname_id`) REFERENCES `ayurvedaapp_inventorymaster` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_invreorderdetails`
--

LOCK TABLES `ayurvedaapp_invreorderdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_invreorderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_invreorderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ipbill`
--

DROP TABLE IF EXISTS `ayurvedaapp_ipbill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ipbill` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_charges` decimal(10,2) NOT NULL,
  `medicine_charges` decimal(10,2) NOT NULL,
  `treatment_charges` decimal(10,2) NOT NULL,
  `other_expenses` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `billing_date` date NOT NULL,
  `food_expenses` decimal(10,2) DEFAULT NULL,
  `discharge_id` bigint DEFAULT NULL,
  `ip_admission_id` bigint NOT NULL,
  `ipinvoicenumber` varchar(200) NOT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `billingstaff_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipinvoicenumber` (`ipinvoicenumber`),
  KEY `ayurvedaapp_ipbill_discharge_id_9abe21d3_fk_ayurvedaa` (`discharge_id`),
  KEY `ayurvedaapp_ipbill_ip_admission_id_7d367f0d_fk_ayurvedaa` (`ip_admission_id`),
  KEY `ayurvedaapp_ipbill_billingstaff_id_6ee8b1eb_fk_ayurvedaa` (`billingstaff_id`),
  CONSTRAINT `ayurvedaapp_ipbill_billingstaff_id_6ee8b1eb_fk_ayurvedaa` FOREIGN KEY (`billingstaff_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_ipbill_discharge_id_9abe21d3_fk_ayurvedaa` FOREIGN KEY (`discharge_id`) REFERENCES `ayurvedaapp_patientdischarge` (`id`),
  CONSTRAINT `ayurvedaapp_ipbill_ip_admission_id_7d367f0d_fk_ayurvedaa` FOREIGN KEY (`ip_admission_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipbill`
--

LOCK TABLES `ayurvedaapp_ipbill` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipbill` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipbill` VALUES (1,0.00,500.00,0.00,0.00,0.00,0.00,500.00,'2026-04-09',0.00,1,1,'IPB20260409001',500.00,1),(2,111.00,0.00,0.00,0.00,0.00,0.00,222.00,'2026-04-09',111.00,NULL,1,'IPB20260409002',222.00,1),(3,400.00,20.00,712.00,0.00,0.00,0.00,1132.00,'2026-05-13',0.00,2,3,'IPB20260513001',1132.00,1),(4,400.00,20.00,712.00,0.00,0.00,0.00,1132.00,'2026-05-13',0.00,NULL,3,'IPB20260513002',1132.00,1);
/*!40000 ALTER TABLE `ayurvedaapp_ipbill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ipdailymedicine`
--

DROP TABLE IF EXISTS `ayurvedaapp_ipdailymedicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ipdailymedicine` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `medicinegiventime` longtext,
  `count` longtext,
  `dosage` longtext,
  `MR_Number_id` bigint DEFAULT NULL,
  `ipno_id` bigint DEFAULT NULL,
  `medicinename_id` bigint DEFAULT NULL,
  `physicalstock_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ipdailym_MR_Number_id_6face123_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_ipdailym_ipno_id_5dfd6365_fk_ayurvedaa` (`ipno_id`),
  KEY `ayurvedaapp_ipdailym_medicinename_id_481ebe06_fk_ayurvedaa` (`medicinename_id`),
  KEY `ayurvedaapp_ipdailym_physicalstock_id_22022bac_fk_ayurvedaa` (`physicalstock_id`),
  CONSTRAINT `ayurvedaapp_ipdailym_ipno_id_5dfd6365_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_ipdailym_medicinename_id_481ebe06_fk_ayurvedaa` FOREIGN KEY (`medicinename_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_ipdailym_MR_Number_id_6face123_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_ipdailym_physicalstock_id_22022bac_fk_ayurvedaa` FOREIGN KEY (`physicalstock_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipdailymedicine`
--

LOCK TABLES `ayurvedaapp_ipdailymedicine` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipdailymedicine` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipdailymedicine` VALUES (3,'2026-06-10','19:49','1','2',1,5,1659,12),(4,'2026-06-10','19:52','1','5',196,11,1659,11),(5,'2026-06-10','18:55','1','1',198,12,1659,22),(6,'2026-06-10','20:56','1','1',196,11,1659,12),(7,'2026-06-10','19:58','1','1',1,5,1659,12),(8,'2026-06-10','19:01','1','1',196,11,1659,12),(9,'2026-06-10','19:06','1','1',1,5,1659,12);
/*!40000 ALTER TABLE `ayurvedaapp_ipdailymedicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ipexpandedbillmedicinedetail`
--

DROP TABLE IF EXISTS `ayurvedaapp_ipexpandedbillmedicinedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ipexpandedbillmedicinedetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `medicinename` longtext NOT NULL,
  `count` longtext,
  `dosage` longtext,
  `Current_Date` date NOT NULL,
  `rate_per_medicine` decimal(10,2) NOT NULL,
  `totalmedicine` decimal(10,2) NOT NULL,
  `ipbilldt_id` bigint DEFAULT NULL,
  `ipno_id` bigint DEFAULT NULL,
  `physicalstock_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ipexpand_ipbilldt_id_ddebce7e_fk_ayurvedaa` (`ipbilldt_id`),
  KEY `ayurvedaapp_ipexpand_ipno_id_d085ac3d_fk_ayurvedaa` (`ipno_id`),
  KEY `ayurvedaapp_ipexpand_physicalstock_id_44f09a33_fk_ayurvedaa` (`physicalstock_id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipbilldt_id_ddebce7e_fk_ayurvedaa` FOREIGN KEY (`ipbilldt_id`) REFERENCES `ayurvedaapp_ipbill` (`id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipno_id_d085ac3d_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_ipexpand_physicalstock_id_44f09a33_fk_ayurvedaa` FOREIGN KEY (`physicalstock_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipexpandedbillmedicinedetail`
--

LOCK TABLES `ayurvedaapp_ipexpandedbillmedicinedetail` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillmedicinedetail` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipexpandedbillmedicinedetail` VALUES (1,'test item','1',NULL,'2026-05-13',20.00,20.00,4,3,12);
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillmedicinedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ipexpandedbillotherexpensesdetail`
--

DROP TABLE IF EXISTS `ayurvedaapp_ipexpandedbillotherexpensesdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ipexpandedbillotherexpensesdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `service` longtext,
  `details` longtext,
  `charges` decimal(10,2) NOT NULL,
  `Current_Date` date NOT NULL,
  `ipbilldt_id` bigint DEFAULT NULL,
  `ipno_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ipexpand_ipbilldt_id_b70c9db3_fk_ayurvedaa` (`ipbilldt_id`),
  KEY `ayurvedaapp_ipexpand_ipno_id_3b26f2d1_fk_ayurvedaa` (`ipno_id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipbilldt_id_b70c9db3_fk_ayurvedaa` FOREIGN KEY (`ipbilldt_id`) REFERENCES `ayurvedaapp_ipbill` (`id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipno_id_3b26f2d1_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipexpandedbillotherexpensesdetail`
--

LOCK TABLES `ayurvedaapp_ipexpandedbillotherexpensesdetail` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillotherexpensesdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillotherexpensesdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ipexpandedbillroomdetail`
--

DROP TABLE IF EXISTS `ayurvedaapp_ipexpandedbillroomdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ipexpandedbillroomdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `no_of_days` int unsigned NOT NULL,
  `rate_per_day` decimal(10,2) NOT NULL,
  `total_rent` decimal(10,2) NOT NULL,
  `remarks` longtext,
  `created_at` datetime(6) NOT NULL,
  `ipbill_id` bigint NOT NULL,
  `ipno_id` bigint NOT NULL,
  `room_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ipexpand_ipbill_id_437e69d9_fk_ayurvedaa` (`ipbill_id`),
  KEY `ayurvedaapp_ipexpand_ipno_id_5c082e45_fk_ayurvedaa` (`ipno_id`),
  KEY `ayurvedaapp_ipexpand_room_id_514545d0_fk_ayurvedaa` (`room_id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipbill_id_437e69d9_fk_ayurvedaa` FOREIGN KEY (`ipbill_id`) REFERENCES `ayurvedaapp_ipbill` (`id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipno_id_5c082e45_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_ipexpand_room_id_514545d0_fk_ayurvedaa` FOREIGN KEY (`room_id`) REFERENCES `ayurvedaapp_room_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipexpandedbillroomdetail`
--

LOCK TABLES `ayurvedaapp_ipexpandedbillroomdetail` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillroomdetail` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipexpandedbillroomdetail` VALUES (1,1,400.00,400.00,NULL,'2026-05-13 09:08:17.734966',4,3,1);
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbillroomdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ipexpandedbilltreatmentdetail`
--

DROP TABLE IF EXISTS `ayurvedaapp_ipexpandedbilltreatmentdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ipexpandedbilltreatmentdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatmentcount` longtext,
  `Current_Date` date NOT NULL,
  `rate_per_treatment` decimal(10,2) NOT NULL,
  `total_treatmentrate` decimal(10,2) NOT NULL,
  `ipbilldt_id` bigint DEFAULT NULL,
  `ipno_id` bigint DEFAULT NULL,
  `tratmntid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ipexpand_ipbilldt_id_5af0c384_fk_ayurvedaa` (`ipbilldt_id`),
  KEY `ayurvedaapp_ipexpand_ipno_id_60b8ad97_fk_ayurvedaa` (`ipno_id`),
  KEY `ayurvedaapp_ipexpand_tratmntid_id_0ffd7ba8_fk_ayurvedaa` (`tratmntid_id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipbilldt_id_5af0c384_fk_ayurvedaa` FOREIGN KEY (`ipbilldt_id`) REFERENCES `ayurvedaapp_ipbill` (`id`),
  CONSTRAINT `ayurvedaapp_ipexpand_ipno_id_60b8ad97_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_ipexpand_tratmntid_id_0ffd7ba8_fk_ayurvedaa` FOREIGN KEY (`tratmntid_id`) REFERENCES `ayurvedaapp_treatment_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ipexpandedbilltreatmentdetail`
--

LOCK TABLES `ayurvedaapp_ipexpandedbilltreatmentdetail` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbilltreatmentdetail` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ipexpandedbilltreatmentdetail` VALUES (1,'2','2026-05-13',356.00,712.00,4,3,1);
/*!40000 ALTER TABLE `ayurvedaapp_ipexpandedbilltreatmentdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ippackageextend`
--

DROP TABLE IF EXISTS `ayurvedaapp_ippackageextend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ippackageextend` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `total_extendepackageamount` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `dueofextend` decimal(10,2) NOT NULL,
  `amountpaidonextend` decimal(10,2) NOT NULL,
  `admission_id` bigint DEFAULT NULL,
  `mr_number_id` bigint NOT NULL,
  `package_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ippackag_admission_id_f599f6ff_fk_ayurvedaa` (`admission_id`),
  KEY `ayurvedaapp_ippackag_mr_number_id_5e35f58d_fk_ayurvedaa` (`mr_number_id`),
  KEY `ayurvedaapp_ippackag_package_id_id_461898a9_fk_ayurvedaa` (`package_id_id`),
  CONSTRAINT `ayurvedaapp_ippackag_admission_id_f599f6ff_fk_ayurvedaa` FOREIGN KEY (`admission_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_ippackag_mr_number_id_5e35f58d_fk_ayurvedaa` FOREIGN KEY (`mr_number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_ippackag_package_id_id_461898a9_fk_ayurvedaa` FOREIGN KEY (`package_id_id`) REFERENCES `ayurvedaapp_packagemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ippackageextend`
--

LOCK TABLES `ayurvedaapp_ippackageextend` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ippackageextend` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ippackageextend` VALUES (1,4936.00,'pending','2026-05-13','2026-05-16',4936.00,0.00,3,196,1);
/*!40000 ALTER TABLE `ayurvedaapp_ippackageextend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ippackagepayment`
--

DROP TABLE IF EXISTS `ayurvedaapp_ippackagepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ippackagepayment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `due_amount` decimal(10,2) NOT NULL,
  `bystander_payment` decimal(10,2) NOT NULL,
  `admission_id` bigint NOT NULL,
  `mr_number_id` bigint NOT NULL,
  `package_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ippackag_admission_id_fdf253d0_fk_ayurvedaa` (`admission_id`),
  KEY `ayurvedaapp_ippackag_mr_number_id_4c25eb10_fk_ayurvedaa` (`mr_number_id`),
  KEY `ayurvedaapp_ippackag_package_id_id_e7192b9e_fk_ayurvedaa` (`package_id_id`),
  CONSTRAINT `ayurvedaapp_ippackag_admission_id_fdf253d0_fk_ayurvedaa` FOREIGN KEY (`admission_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_ippackag_mr_number_id_4c25eb10_fk_ayurvedaa` FOREIGN KEY (`mr_number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_ippackag_package_id_id_e7192b9e_fk_ayurvedaa` FOREIGN KEY (`package_id_id`) REFERENCES `ayurvedaapp_packagemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ippackagepayment`
--

LOCK TABLES `ayurvedaapp_ippackagepayment` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ippackagepayment` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ippackagepayment` VALUES (1,0.00,'2026-04-09','2026-04-09','2026-04-09',1000.00,1234.00,234.00,0.00,1,1,1),(2,0.00,'2026-04-09','2026-04-09','2026-04-10',123.00,2468.00,2345.00,0.00,2,1,1),(3,0.00,'2026-04-09','2026-04-09','2026-04-10',2345.00,2468.00,0.00,0.00,2,1,1),(4,0.00,'2026-05-12','2026-05-12','2026-05-12',1000.00,1234.00,234.00,0.00,3,196,1),(5,0.00,'2026-05-12','2026-05-12','2026-05-12',100.00,1234.00,5070.00,0.00,3,196,1),(6,0.00,'2026-05-13','2026-05-13','2026-05-14',2000.00,2468.00,456.00,0.00,4,196,1),(7,0.00,'2026-05-13','2026-05-13','2026-05-14',456.00,2456.00,0.00,0.00,4,196,1),(8,0.00,'2026-06-10','2026-06-10','2026-06-12',200.00,3702.00,3502.00,0.00,12,198,1);
/*!40000 ALTER TABLE `ayurvedaapp_ippackagepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ippatientadmission`
--

DROP TABLE IF EXISTS `ayurvedaapp_ippatientadmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ippatientadmission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bloodgroup` longtext,
  `Current_Date` date NOT NULL,
  `age` varchar(100) NOT NULL,
  `contactnumber` varchar(100) DEFAULT NULL,
  `reasonforadmission` longtext,
  `MR_Number_id` bigint DEFAULT NULL,
  `Admittedstatus` tinyint(1) NOT NULL,
  `address` longtext,
  `advance_amount` decimal(10,2) NOT NULL,
  `bystander_rate` decimal(10,2) DEFAULT NULL,
  `discount` decimal(10,2) NOT NULL,
  `due_amount` decimal(10,2) NOT NULL,
  `need_bystander` tinyint(1) NOT NULL,
  `need_package` tinyint(1) NOT NULL,
  `package_id` bigint DEFAULT NULL,
  `total_package_rate` decimal(10,2) DEFAULT NULL,
  `totalpaidamount` decimal(10,2) DEFAULT NULL,
  `advancedue` decimal(10,2) NOT NULL,
  `amountpaidwithoutbystander` decimal(10,2) NOT NULL,
  `end_date` date DEFAULT NULL,
  `originalpcktotaalamountpaid` decimal(10,2) NOT NULL,
  `payingamount` decimal(10,2) NOT NULL,
  `start_date` date DEFAULT NULL,
  `totalpackageamountwithoutdiscount` decimal(10,2) NOT NULL,
  `admittedbranch_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ippatien_MR_Number_id_5f2ead79_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_ippatien_package_id_67878d12_fk_ayurvedaa` (`package_id`),
  KEY `ayurvedaapp_ippatien_admittedbranch_id_927900f2_fk_ayurvedaa` (`admittedbranch_id`),
  CONSTRAINT `ayurvedaapp_ippatien_admittedbranch_id_927900f2_fk_ayurvedaa` FOREIGN KEY (`admittedbranch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_MR_Number_id_5f2ead79_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_package_id_67878d12_fk_ayurvedaa` FOREIGN KEY (`package_id`) REFERENCES `ayurvedaapp_packagemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ippatientadmission`
--

LOCK TABLES `ayurvedaapp_ippatientadmission` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ippatientadmission` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ippatientadmission` VALUES (1,'Unknown','2026-04-09','22','9048272638','tt',1,0,'tt',1000.00,0.00,0.00,234.00,0,1,1,1234.00,1000.00,234.00,1000.00,'2026-04-09',1000.00,1234.00,'2026-04-09',1234.00,5),(2,'Unknown','2026-04-09','22','9048272638','r',1,0,'r',123.00,0.00,0.00,0.00,0,1,1,2468.00,2468.00,0.00,2468.00,'2026-04-10',2468.00,2468.00,'2026-04-09',2468.00,5),(3,'Unknown','2026-05-12','22','9895310696','TEST',196,0,'TEST',1000.00,0.00,0.00,5070.00,0,1,1,1234.00,1100.00,134.00,1100.00,'2026-05-12',1100.00,6170.00,'2026-05-12',1234.00,5),(4,'Unknown','2026-05-13','22','9895310696','test',196,0,'test',2000.00,0.00,12.00,0.00,0,1,1,2456.00,2456.00,0.00,2456.00,'2026-05-14',2456.00,2456.00,'2026-05-13',2468.00,5),(5,'A+','2026-06-10','22','9048272638','Test',1,1,'Kottayam',0.00,0.00,0.00,0.00,0,0,NULL,0.00,0.00,0.00,0.00,'2026-06-10',0.00,0.00,'2026-06-10',0.00,5),(11,'O+','2026-06-10','50','9895310696','Test',196,1,'Kottayam',0.00,0.00,0.00,0.00,0,0,NULL,0.00,0.00,0.00,0.00,'2026-06-10',0.00,0.00,'2026-06-10',0.00,5),(12,'O+','2026-06-10','25','9999999999','Not specified',198,1,'Kottayam',200.00,0.00,0.00,3502.00,0,1,1,3702.00,200.00,3502.00,200.00,'2026-06-12',200.00,3702.00,'2026-06-10',3702.00,5);
/*!40000 ALTER TABLE `ayurvedaapp_ippatientadmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ippatientroombooking`
--

DROP TABLE IF EXISTS `ayurvedaapp_ippatientroombooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ippatientroombooking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Admission_Date` date NOT NULL,
  `admissiontime` time(6) NOT NULL,
  `emergencycontact` varchar(100) NOT NULL,
  `Current_Date` date NOT NULL,
  `MR_Number_id` bigint DEFAULT NULL,
  `admitteddepartmnt_id` bigint DEFAULT NULL,
  `admitteddoctor_id` bigint DEFAULT NULL,
  `branchdt_id` bigint DEFAULT NULL,
  `roomdt_id` bigint DEFAULT NULL,
  `accommodation_type` varchar(10) DEFAULT NULL,
  `bed_number_id` bigint DEFAULT NULL,
  `floor_number` varchar(20) DEFAULT NULL,
  `room_number_id` bigint DEFAULT NULL,
  `room_type` varchar(20) DEFAULT NULL,
  `ipno_id` bigint DEFAULT NULL,
  `admissionenddate` date NOT NULL,
  `bookingcancel` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_ippatien_MR_Number_id_d01ab9e4_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_ippatien_admitteddepartmnt_id_7d219aad_fk_ayurvedaa` (`admitteddepartmnt_id`),
  KEY `ayurvedaapp_ippatien_admitteddoctor_id_0bfcb07a_fk_ayurvedaa` (`admitteddoctor_id`),
  KEY `ayurvedaapp_ippatien_branchdt_id_8caa8437_fk_ayurvedaa` (`branchdt_id`),
  KEY `ayurvedaapp_ippatien_roomdt_id_65160173_fk_ayurvedaa` (`roomdt_id`),
  KEY `ayurvedaapp_ippatien_bed_number_id_4b50ede1_fk_ayurvedaa` (`bed_number_id`),
  KEY `ayurvedaapp_ippatien_room_number_id_bdf8f615_fk_ayurvedaa` (`room_number_id`),
  KEY `ayurvedaapp_ippatien_ipno_id_7ee9d4aa_fk_ayurvedaa` (`ipno_id`),
  CONSTRAINT `ayurvedaapp_ippatien_admitteddepartmnt_id_7d219aad_fk_ayurvedaa` FOREIGN KEY (`admitteddepartmnt_id`) REFERENCES `ayurvedaapp_department` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_admitteddoctor_id_0bfcb07a_fk_ayurvedaa` FOREIGN KEY (`admitteddoctor_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_bed_number_id_4b50ede1_fk_ayurvedaa` FOREIGN KEY (`bed_number_id`) REFERENCES `ayurvedaapp_room_details` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_branchdt_id_8caa8437_fk_ayurvedaa` FOREIGN KEY (`branchdt_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_ipno_id_7ee9d4aa_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_MR_Number_id_d01ab9e4_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_room_number_id_bdf8f615_fk_ayurvedaa` FOREIGN KEY (`room_number_id`) REFERENCES `ayurvedaapp_room_details` (`id`),
  CONSTRAINT `ayurvedaapp_ippatien_roomdt_id_65160173_fk_ayurvedaa` FOREIGN KEY (`roomdt_id`) REFERENCES `ayurvedaapp_room_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ippatientroombooking`
--

LOCK TABLES `ayurvedaapp_ippatientroombooking` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ippatientroombooking` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_ippatientroombooking` VALUES (1,'2026-05-12','17:52:00.000000','989898989','2026-05-12',196,3,1,5,1,'Ward',1,'',NULL,NULL,3,'2026-05-13',0),(2,'2026-06-10','15:13:00.000000','8899878919','2026-06-10',1,3,1,NULL,2,'Room',NULL,'1',2,'Single',5,'2026-06-12',0),(3,'2026-06-10','05:15:00.000000','8898898212','2026-06-10',198,3,1,NULL,1,'Ward',1,'',NULL,NULL,12,'2026-06-12',0);
/*!40000 ALTER TABLE `ayurvedaapp_ippatientroombooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_iptreatmentdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_iptreatmentdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_iptreatmentdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatmenttime` longtext,
  `Current_Date` date NOT NULL,
  `treatment_date` date NOT NULL,
  `handled_by` longtext NOT NULL,
  `given_by` longtext NOT NULL,
  `deletedstatus` tinyint(1) NOT NULL,
  `MR_Number_id` bigint DEFAULT NULL,
  `ipno_id` bigint DEFAULT NULL,
  `tratmntid_id` bigint DEFAULT NULL,
  `treatmentcount` longtext,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_iptreatm_MR_Number_id_07b21629_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_iptreatm_ipno_id_effa62b8_fk_ayurvedaa` (`ipno_id`),
  KEY `ayurvedaapp_iptreatm_tratmntid_id_d4a742d4_fk_ayurvedaa` (`tratmntid_id`),
  CONSTRAINT `ayurvedaapp_iptreatm_ipno_id_effa62b8_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_iptreatm_MR_Number_id_07b21629_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_iptreatm_tratmntid_id_d4a742d4_fk_ayurvedaa` FOREIGN KEY (`tratmntid_id`) REFERENCES `ayurvedaapp_treatment_master` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_iptreatmentdetails`
--

LOCK TABLES `ayurvedaapp_iptreatmentdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_iptreatmentdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_iptreatmentdetails` VALUES (1,'14:07','2026-04-09','2026-04-09','1','1',0,1,1,1,''),(2,'17:49','2026-05-12','2026-05-12','1','',0,196,3,1,'2'),(3,'17:49','2026-06-10','2026-06-10','1','177',0,1,5,1,'1'),(4,'18:51','2026-06-10','2026-06-10','1','177',0,196,11,1,'1'),(5,'18:54','2026-06-10','2026-06-10','1','1',0,198,12,1,'1'),(6,'16:56','2026-06-10','2026-06-10','1','1',0,196,11,1,'1'),(7,'15:58','2026-06-10','2026-06-10','1','1',0,1,5,1,''),(8,'18:01','2026-06-10','2026-06-10','1','1',0,196,11,1,'1'),(9,'19:05','2026-06-10','2026-06-10','1','1',0,1,5,1,'1');
/*!40000 ALTER TABLE `ayurvedaapp_iptreatmentdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_itemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_itemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_itemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Purchase_Invoice_no` varchar(300) NOT NULL,
  `Generic_name` varchar(300) NOT NULL,
  `Manufacturer_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Sideeffect` varchar(300) NOT NULL,
  `Quantity` varchar(300) NOT NULL,
  `Batch_no` varchar(500) NOT NULL,
  `Rate` varchar(300) NOT NULL,
  `Suppliername` varchar(300) NOT NULL,
  `racknumber` varchar(300) NOT NULL,
  `Comapany_name_id` bigint DEFAULT NULL,
  `Subcategory_name_id` bigint DEFAULT NULL,
  `Medicinename_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_itemaste_Comapany_name_id_c0ccd7dd_fk_ayurvedaa` (`Comapany_name_id`),
  KEY `ayurvedaapp_itemaste_Subcategory_name_id_6e28f192_fk_ayurvedaa` (`Subcategory_name_id`),
  KEY `ayurvedaapp_itemaste_Medicinename_id_a133fc48_fk_ayurvedaa` (`Medicinename_id`),
  CONSTRAINT `ayurvedaapp_itemaste_Comapany_name_id_c0ccd7dd_fk_ayurvedaa` FOREIGN KEY (`Comapany_name_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_itemaste_Medicinename_id_a133fc48_fk_ayurvedaa` FOREIGN KEY (`Medicinename_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_itemaste_Subcategory_name_id_6e28f192_fk_ayurvedaa` FOREIGN KEY (`Subcategory_name_id`) REFERENCES `ayurvedaapp_itemsubcategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_itemaster`
--

LOCK TABLES `ayurvedaapp_itemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_itemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_itemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_itemcategory`
--

DROP TABLE IF EXISTS `ayurvedaapp_itemcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_itemcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_itemcategory`
--

LOCK TABLES `ayurvedaapp_itemcategory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_itemcategory` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_itemcategory` VALUES (88,'test inv cat'),(92,'VDP'),(93,'TAB'),(94,'CAP'),(95,'SYP'),(96,'INJ'),(97,'INF'),(98,'GEL'),(99,'SUTURE'),(100,'AEROFOAM'),(101,'APPLI'),(102,'BAG'),(103,'SYRIN'),(104,'SACHET'),(105,'SUS'),(106,'RESPULE'),(107,'CREAM'),(108,'DROPS'),(109,'BOTTLE'),(110,'PACK'),(111,'TAPE'),(112,'SOAP'),(113,'BANDAGE'),(114,'SOLU'),(115,'POWDER'),(116,'VACCINE'),(117,'LIQUID'),(118,'INHALER'),(119,'KIT'),(120,'LOTION'),(121,'OINT'),(122,'BRACE'),(123,'BELT'),(124,'VAGINAL'),(125,'COTTON'),(126,'FLUID'),(127,'CHEWABLE'),(128,'AMP'),(129,'TUBE'),(130,'ENEMA'),(131,'VIAL'),(132,'NAP'),(133,'MASK'),(134,'CATHETER'),(135,'GAUZE'),(136,'SUPP'),(137,'IV'),(138,'WIRE'),(139,'DRESS'),(140,'PASTE'),(141,'LIQD'),(142,'BLADE'),(143,'TEMBID'),(144,'test category');
/*!40000 ALTER TABLE `ayurvedaapp_itemcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_itemsubcategory`
--

DROP TABLE IF EXISTS `ayurvedaapp_itemsubcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_itemsubcategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Subcategory_name` varchar(300) NOT NULL,
  `Category_name_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_itemsubc_Category_name_id_062829cc_fk_ayurvedaa` (`Category_name_id`),
  CONSTRAINT `ayurvedaapp_itemsubc_Category_name_id_062829cc_fk_ayurvedaa` FOREIGN KEY (`Category_name_id`) REFERENCES `ayurvedaapp_itemcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_itemsubcategory`
--

LOCK TABLES `ayurvedaapp_itemsubcategory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_itemsubcategory` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_itemsubcategory` VALUES (158,'test inv cat',88),(167,'TAB',93),(168,'CAP',94),(169,'SYP',95),(170,'INJ',96),(171,'INF',97),(172,'GEL',98),(173,'SUTURE',99),(174,'AEROFOAM',100),(175,'APPLI',101),(176,'BAG',102),(177,'SYRIN',103),(178,'SACHET',104),(179,'SUS',105),(180,'RESPULE',106),(181,'CREAM',107),(182,'DROPS',108),(183,'BOTTLE',109),(184,'PACK',110),(185,'TAPE',111),(186,'SOAP',112),(187,'BANDAGE',113),(188,'SOLU',114),(189,'POWDER',115),(190,'VACCINE',116),(191,'LIQUID',117),(192,'INHALER',118),(193,'KIT',119),(194,'LOTION',120),(195,'OINT',121),(196,'BRACE',122),(197,'BELT',123),(198,'VAGINAL',124),(199,'COTTON',125),(200,'FLUID',126),(201,'CHEWABLE',127),(202,'AMP',128),(203,'TUBE',129),(204,'ENEMA',130),(205,'VIAL',131),(206,'NAP',132),(207,'MASK',133),(208,'CATHETER',134),(209,'GAUZE',135),(210,'SUPP',136),(211,'IV',137),(212,'WIRE',138),(213,'DRESS',139),(214,'PASTE',140),(215,'LIQD',141),(216,'BLADE',142),(217,'TEMBID',143),(218,'testsubcategory',144);
/*!40000 ALTER TABLE `ayurvedaapp_itemsubcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labinvestigation`
--

DROP TABLE IF EXISTS `ayurvedaapp_labinvestigation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labinvestigation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_labinves_MR_Number_id_50df5e9d_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_labinves_MR_Number_id_50df5e9d_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labinvestigation`
--

LOCK TABLES `ayurvedaapp_labinvestigation` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labinvestigation` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_labinvestigation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labinvoicechild`
--

DROP TABLE IF EXISTS `ayurvedaapp_labinvoicechild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labinvoicechild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sl_no` int unsigned NOT NULL,
  `testname` varchar(300) NOT NULL,
  `qty` decimal(8,2) NOT NULL,
  `rate` decimal(12,2) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `invoice_id` bigint NOT NULL,
  `test_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_labinvoi_invoice_id_89581001_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_labinvoi_test_id_29ff414b_fk_ayurvedaa` (`test_id`),
  CONSTRAINT `ayurvedaapp_labinvoi_invoice_id_89581001_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_labinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_labinvoi_test_id_29ff414b_fk_ayurvedaa` FOREIGN KEY (`test_id`) REFERENCES `ayurvedaapp_labtestchild` (`id`),
  CONSTRAINT `ayurvedaapp_labinvoicechild_chk_1` CHECK ((`sl_no` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labinvoicechild`
--

LOCK TABLES `ayurvedaapp_labinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labinvoicechild` VALUES (29,1,'Vitamin B12',1.00,200.00,200.00,23,2),(30,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,23,3),(33,1,'Vitamin B',1.00,100.00,100.00,25,1),(34,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,25,3),(35,1,'Vitamin B12',1.00,200.00,200.00,26,2),(36,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,26,3),(40,1,'Vitamin B12',1.00,200.00,200.00,30,2),(41,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,30,3),(42,1,'Vitamin B',1.00,100.00,100.00,31,1),(43,2,'Vitamin B12',1.00,200.00,200.00,31,2),(44,3,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,31,3),(45,1,'Vitamin B12',1.00,200.00,200.00,32,2),(46,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,32,3),(47,1,'Vitamin B',1.00,100.00,100.00,33,1),(48,2,'Vitamin B12',1.00,200.00,200.00,33,2),(49,1,'Vitamin B12',1.00,200.00,200.00,34,2),(50,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,34,3),(51,3,'Vitamin B',1.00,100.00,100.00,34,1),(52,1,'Vitamin B12',1.00,200.00,200.00,35,2),(53,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,35,3),(54,1,'Vitamin B12',1.00,200.00,200.00,36,2),(55,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,36,3),(56,1,'Vitamin B12',1.00,200.00,200.00,37,2),(57,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,37,3),(58,1,'Vitamin B',1.00,100.00,100.00,38,1),(68,1,'Vitamin B12',1.00,200.00,200.00,46,2),(69,2,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,46,3),(70,3,'Vitamin B',1.00,100.00,100.00,46,1),(71,1,'Vitamin B12',1.00,200.00,200.00,47,2),(72,1,'TFT (THYROID FUNCTION TEST)',1.00,300.00,300.00,48,3),(73,1,'Vitamin B',1.00,100.00,100.00,49,1),(74,2,'Vitamin B12',1.00,200.00,200.00,49,2);
/*!40000 ALTER TABLE `ayurvedaapp_labinvoicechild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labinvoicemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_labinvoicemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labinvoicemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoiceno` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `tax_percentage` decimal(5,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `discount` decimal(12,2) NOT NULL,
  `consultation_fee` decimal(10,2) NOT NULL,
  `registration_fee` decimal(10,2) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `card_amount` decimal(12,2) NOT NULL,
  `cash_amount` decimal(12,2) NOT NULL,
  `credit_amount` decimal(12,2) NOT NULL,
  `gpay_amount` decimal(12,2) NOT NULL,
  `is_credit` tinyint(1) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `cancelled_at` datetime(6) DEFAULT NULL,
  `cancelled_by_id` bigint DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL,
  `patient_id` bigint DEFAULT NULL,
  `result_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoiceno` (`invoiceno`),
  KEY `ayurvedaapp_labinvoi_created_by_id_db0ecd69_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_labinvoi_cancelled_by_id_18bb4e4c_fk_ayurvedaa` (`cancelled_by_id`),
  KEY `ayurvedaapp_labinvoi_patient_id_986335da_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_labinvoi_result_id_0310f0ef_fk_ayurvedaa` (`result_id`),
  CONSTRAINT `ayurvedaapp_labinvoi_cancelled_by_id_18bb4e4c_fk_ayurvedaa` FOREIGN KEY (`cancelled_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_labinvoi_created_by_id_db0ecd69_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_labinvoi_patient_id_986335da_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_labinvoi_result_id_0310f0ef_fk_ayurvedaa` FOREIGN KEY (`result_id`) REFERENCES `ayurvedaapp_labresultmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labinvoicemaster`
--

LOCK TABLES `ayurvedaapp_labinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labinvoicemaster` VALUES (23,'LAB-2026-06-0001','2026-06-09',500.00,0.00,0.00,0.00,0.00,0.00,500.00,1,0.00,500.00,0.00,0.00,0,'Paid','2026-06-09 08:02:03.202050',1,1,214,NULL),(25,'LAB-2026-06-0002','2026-06-09',400.00,0.00,0.00,0.00,0.00,0.00,400.00,1,0.00,400.00,0.00,0.00,0,'Paid',NULL,NULL,0,1,NULL),(26,'LAB-2026-06-0003','2026-06-09',500.00,0.00,0.00,0.00,0.00,0.00,500.00,1,0.00,250.00,0.00,250.00,0,'Paid',NULL,NULL,0,196,NULL),(30,'LAB-2026-06-0004','2026-06-09',500.00,0.00,0.00,0.00,0.00,0.00,500.00,1,0.00,50.00,0.00,450.00,0,'Paid',NULL,NULL,0,198,19),(31,'LAB-2026-06-0005','2026-06-10',600.00,0.00,0.00,0.00,0.00,0.00,600.00,1,0.00,600.00,0.00,0.00,0,'Paid',NULL,NULL,0,1,NULL),(32,'LAB-2026-06-0006','2026-06-10',600.00,0.00,0.00,0.00,0.00,0.00,600.00,1,0.00,300.00,0.00,300.00,0,'Paid','2026-06-10 06:18:08.973588',1,1,196,NULL),(33,'LAB-2026-06-0007','2026-06-10',300.00,0.00,0.00,0.00,0.00,0.00,300.00,1,0.00,300.00,0.00,0.00,0,'Paid',NULL,NULL,0,198,17),(34,'LAB-2026-06-0008','2026-06-11',600.00,0.00,0.00,0.00,0.00,0.00,600.00,1,0.00,600.00,0.00,0.00,0,'Paid',NULL,NULL,0,214,NULL),(35,'LAB-2026-06-0009','2026-06-11',500.00,5.00,25.00,0.00,0.00,0.00,525.00,1,0.00,500.00,0.00,25.00,0,'Paid',NULL,NULL,0,216,NULL),(36,'LAB-2026-06-0010','2026-06-12',500.00,0.00,0.00,0.00,0.00,0.00,500.00,1,0.00,450.00,0.00,50.00,0,'Paid',NULL,NULL,0,214,18),(37,'LAB-2026-06-0011','2026-06-12',500.00,0.00,0.00,0.00,0.00,0.00,500.00,1,0.00,500.00,0.00,0.00,0,'Paid',NULL,NULL,0,217,20),(38,'LAB-2026-06-0012','2026-06-12',100.00,0.00,0.00,0.00,0.00,0.00,100.00,1,0.00,0.00,100.00,0.00,1,'Credit',NULL,NULL,0,217,NULL),(39,'LAB-2026-06-0013','2026-06-12',100.00,0.00,0.00,0.00,0.00,0.00,100.00,1,0.00,50.00,0.00,50.00,0,'Paid',NULL,NULL,0,198,21),(46,'LAB-2026-06-0014','2026-06-12',600.00,0.00,0.00,0.00,0.00,0.00,600.00,1,0.00,0.00,600.00,0.00,1,'Credit',NULL,NULL,0,219,NULL),(47,'LAB-2026-06-0015','2026-06-12',200.00,0.00,0.00,0.00,0.00,0.00,200.00,1,0.00,0.00,200.00,0.00,1,'Credit',NULL,NULL,0,216,NULL),(48,'LAB-2026-06-0016','2026-06-12',300.00,0.00,0.00,0.00,0.00,0.00,300.00,1,0.00,0.00,300.00,0.00,1,'Credit',NULL,NULL,0,221,NULL),(49,'LAB-2026-06-0017','2026-06-12',300.00,0.00,0.00,0.00,0.00,0.00,300.00,1,0.00,300.00,0.00,0.00,0,'Paid',NULL,NULL,0,222,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_labinvoicemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labrequisitionmaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_labrequisitionmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labrequisitionmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `requisition_number` varchar(50) DEFAULT NULL,
  `is_cancelled` tinyint(1) NOT NULL,
  `cancelled_date` datetime(6) DEFAULT NULL,
  `cancellation_reason` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `notes` longtext NOT NULL,
  `cancelled_by_id` bigint DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `updated_by_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `requisition_number` (`requisition_number`),
  KEY `ayurvedaapp_labrequi_cancelled_by_id_d1772082_fk_ayurvedaa` (`cancelled_by_id`),
  KEY `ayurvedaapp_labrequi_created_by_id_581702c5_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_labrequi_invoice_id_61b0a8fa_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_labrequi_patient_id_e80f1214_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_labrequi_updated_by_id_5f9be78f_fk_ayurvedaa` (`updated_by_id`),
  CONSTRAINT `ayurvedaapp_labrequi_cancelled_by_id_d1772082_fk_ayurvedaa` FOREIGN KEY (`cancelled_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_labrequi_created_by_id_581702c5_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_labrequi_invoice_id_61b0a8fa_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_labinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_labrequi_patient_id_e80f1214_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_labrequi_updated_by_id_5f9be78f_fk_ayurvedaa` FOREIGN KEY (`updated_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labrequisitionmaster`
--

LOCK TABLES `ayurvedaapp_labrequisitionmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labrequisitionmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labrequisitionmaster` VALUES (1,'LABREQ202606090001',0,NULL,'','2026-06-09 04:40:38.455899','2026-06-09 05:03:34.966070','Requisition created with 3 tests',NULL,1,23,214,NULL),(3,'LABREQ202606090002',0,NULL,'','2026-06-09 05:05:25.403881','2026-06-09 05:10:36.744435','Requisition created with 2 tests',NULL,1,25,1,NULL),(4,'LABREQ202606090003',0,NULL,'','2026-06-09 07:37:30.785316','2026-06-09 07:38:53.111790','Requisition created with 2 tests',NULL,1,26,196,NULL),(5,'LABREQ202606090004',0,NULL,'','2026-06-09 07:55:51.156485','2026-06-09 07:57:21.227181','Requisition created with 2 tests',NULL,1,30,198,NULL),(6,'LABREQ202606100001',0,NULL,'','2026-06-10 06:09:21.197023','2026-06-10 06:10:22.207327','Requisition created with 3 tests',NULL,1,31,1,NULL),(7,'LABREQ202606100002',0,NULL,'','2026-06-10 06:14:51.443474','2026-06-10 06:17:25.486119','Requisition created with 2 tests',NULL,1,32,196,NULL),(8,'LABREQ202606100003',0,NULL,'','2026-06-10 06:34:50.809713','2026-06-10 06:35:15.883776','Requisition created with 2 tests',NULL,1,33,198,NULL),(9,'LABREQ202606110001',0,NULL,'','2026-06-11 08:56:20.924459','2026-06-11 08:56:44.118317','Requisition created with 3 tests',NULL,1,34,214,NULL),(10,'LABREQ202606110002',0,NULL,'','2026-06-11 10:26:59.782234','2026-06-11 10:30:10.503124','Requisition created with 2 tests',NULL,1,35,216,NULL),(11,'LABREQ202606120001',0,NULL,'','2026-06-12 05:49:11.819414','2026-06-12 05:49:51.890055','Requisition created with 2 tests',NULL,1,36,214,NULL),(12,'LABREQ202606120002',0,NULL,'','2026-06-12 06:56:15.976830','2026-06-12 06:58:14.557314','Requisition created with 2 tests',NULL,1,37,217,NULL),(13,'LABREQ202606120003',0,NULL,'','2026-06-12 07:01:04.125375','2026-06-12 07:01:27.422399','Requisition created with 1 tests',NULL,1,38,217,NULL),(14,'LABREQ202606120004',0,NULL,'','2026-06-12 07:44:48.010759','2026-06-12 08:10:17.809098','Requisition created with 2 tests',NULL,1,46,219,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_labrequisitionmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labresultmaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_labresultmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labresultmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `result_number` varchar(50) DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `completed_date` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `notes` longtext NOT NULL,
  `completed_by_id` bigint DEFAULT NULL,
  `created_by_id` bigint DEFAULT NULL,
  `invoice_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `requisition_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `result_number` (`result_number`),
  KEY `ayurvedaapp_labresul_completed_by_id_bcb319ea_fk_ayurvedaa` (`completed_by_id`),
  KEY `ayurvedaapp_labresul_created_by_id_d3a9621c_fk_ayurvedaa` (`created_by_id`),
  KEY `ayurvedaapp_labresul_invoice_id_57d2909e_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_labresul_patient_id_3ba8ea21_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_labresul_requisition_id_d4ba1fae_fk_ayurvedaa` (`requisition_id`),
  CONSTRAINT `ayurvedaapp_labresul_completed_by_id_bcb319ea_fk_ayurvedaa` FOREIGN KEY (`completed_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_labresul_created_by_id_d3a9621c_fk_ayurvedaa` FOREIGN KEY (`created_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_labresul_invoice_id_57d2909e_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_labinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_labresul_patient_id_3ba8ea21_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_labresul_requisition_id_d4ba1fae_fk_ayurvedaa` FOREIGN KEY (`requisition_id`) REFERENCES `ayurvedaapp_labrequisitionmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labresultmaster`
--

LOCK TABLES `ayurvedaapp_labresultmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labresultmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labresultmaster` VALUES (2,'LABRES202606090001',1,'2026-06-09 07:11:45.973585','2026-06-09 07:11:45.961481','2026-06-09 07:11:45.973585','Results saved for invoice LAB-2026-06-0002',1,1,25,1,NULL),(3,'LABRES202606090002',1,'2026-06-09 07:39:47.674432','2026-06-09 07:39:47.658856','2026-06-09 07:39:47.674432','Results saved for invoice LAB-2026-06-0003',1,1,26,196,NULL),(4,'LABRES202606090003',1,'2026-06-09 07:58:01.324307','2026-06-09 07:58:01.315207','2026-06-09 07:58:01.324307','Results saved for invoice LAB-2026-06-0001',1,1,23,214,NULL),(5,'LABRES202606100001',1,'2026-06-10 06:11:16.644270','2026-06-10 06:11:16.620688','2026-06-10 06:11:16.644270','Results saved for invoice LAB-2026-06-0005',1,1,31,1,NULL),(6,'LABRES202606110001',1,'2026-06-11 08:57:23.471831','2026-06-11 08:57:23.450465','2026-06-11 08:57:23.471831','Results saved for invoice LAB-2026-06-0008',1,1,34,214,NULL),(7,'LABRES202606110002',1,'2026-06-11 10:31:54.656432','2026-06-11 10:31:54.641434','2026-06-11 10:31:54.656432','Results saved for invoice LAB-2026-06-0009',1,1,35,216,NULL),(17,'LABRES202606120010',1,'2026-06-12 05:42:19.215659','2026-06-12 05:42:19.201672','2026-06-12 05:42:19.215659','Results saved for invoice LAB-2026-06-0007',1,1,33,198,NULL),(18,'LABRES202606130001',1,'2026-06-13 05:52:16.912443','2026-06-13 05:52:16.896459','2026-06-13 05:52:16.912443','Results saved for invoice LAB-2026-06-0010',1,1,36,214,NULL),(19,'LABRES202606130002',1,'2026-06-13 06:50:21.607940','2026-06-13 06:50:21.587757','2026-06-13 06:50:21.609021','Results saved for invoice LAB-2026-06-0004',1,1,30,198,NULL),(20,'LABRES202606120011',1,'2026-06-12 07:02:16.789907','2026-06-12 07:02:16.775919','2026-06-12 07:02:16.789907','Results saved for invoice LAB-2026-06-0011',1,1,37,217,NULL),(21,'LABRES202606120012',1,'2026-06-12 07:43:30.780700','2026-06-12 07:43:30.769711','2026-06-12 07:43:30.780700','Results saved for invoice LAB-2026-06-0013',1,1,39,198,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_labresultmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labtestchild`
--

DROP TABLE IF EXISTS `ayurvedaapp_labtestchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labtestchild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `testname` longtext,
  `symbol` varchar(300) DEFAULT NULL,
  `group_id` bigint DEFAULT NULL,
  `rate` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_labtestc_group_id_26c77b73_fk_ayurvedaa` (`group_id`),
  CONSTRAINT `ayurvedaapp_labtestc_group_id_26c77b73_fk_ayurvedaa` FOREIGN KEY (`group_id`) REFERENCES `ayurvedaapp_labtestmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labtestchild`
--

LOCK TABLES `ayurvedaapp_labtestchild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labtestchild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labtestchild` VALUES (1,1,'Vitamin B','Vitamin B',1,'100'),(2,1,'Vitamin B12','VB12',1,'200'),(3,1,'TFT (THYROID FUNCTION TEST)','TFT',2,'300');
/*!40000 ALTER TABLE `ayurvedaapp_labtestchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labtestmaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_labtestmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labtestmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `groupname` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rate` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labtestmaster`
--

LOCK TABLES `ayurvedaapp_labtestmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labtestmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labtestmaster` VALUES (1,'VITAMIN',1,'-'),(2,'THYROID PROFILE',1,'-'),(3,'FTP',1,'-');
/*!40000 ALTER TABLE `ayurvedaapp_labtestmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_labunitmaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_labunitmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_labunitmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unit` varchar(300) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_labunitmaster`
--

LOCK TABLES `ayurvedaapp_labunitmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_labunitmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_labunitmaster` VALUES (1,'mg/dL',1);
/*!40000 ALTER TABLE `ayurvedaapp_labunitmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_med_history`
--

DROP TABLE IF EXISTS `ayurvedaapp_med_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_med_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Med_history` varchar(1000) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_med_hist_MR_Number_id_7692ce72_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_med_hist_MR_Number_id_7692ce72_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_med_history`
--

LOCK TABLES `ayurvedaapp_med_history` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_med_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_med_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_medicalfollowup`
--

DROP TABLE IF EXISTS `ayurvedaapp_medicalfollowup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_medicalfollowup` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `currentdate` date NOT NULL,
  `nextfollowupdate` date NOT NULL,
  `progressnote` longtext,
  `currentsymptioms` longtext,
  `Mrno_id` bigint DEFAULT NULL,
  `followupstaffno_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_medicalf_Mrno_id_2b0d4c31_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_medicalf_followupstaffno_id_5acbbea2_fk_ayurvedaa` (`followupstaffno_id`),
  CONSTRAINT `ayurvedaapp_medicalf_followupstaffno_id_5acbbea2_fk_ayurvedaa` FOREIGN KEY (`followupstaffno_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_medicalf_Mrno_id_2b0d4c31_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medicalfollowup`
--

LOCK TABLES `ayurvedaapp_medicalfollowup` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medicalfollowup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_medicalfollowup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_medicalreportfile`
--

DROP TABLE IF EXISTS `ayurvedaapp_medicalreportfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_medicalreportfile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file` varchar(100) NOT NULL,
  `Current_Date` date NOT NULL,
  `report_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_medicalr_report_id_9120996c_fk_ayurvedaa` (`report_id`),
  CONSTRAINT `ayurvedaapp_medicalr_report_id_9120996c_fk_ayurvedaa` FOREIGN KEY (`report_id`) REFERENCES `ayurvedaapp_casemedicalreport` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medicalreportfile`
--

LOCK TABLES `ayurvedaapp_medicalreportfile` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medicalreportfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_medicalreportfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_medication`
--

DROP TABLE IF EXISTS `ayurvedaapp_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_medication` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Medication` varchar(1000) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_medicati_MR_Number_id_d3b0f6a8_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_medicati_MR_Number_id_d3b0f6a8_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medication`
--

LOCK TABLES `ayurvedaapp_medication` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_medicationentry`
--

DROP TABLE IF EXISTS `ayurvedaapp_medicationentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_medicationentry` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ex_stock_medicinename` varchar(100) DEFAULT NULL,
  `count` int unsigned NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `direction` varchar(700) NOT NULL,
  `medicinename_id` bigint DEFAULT NULL,
  `prescription_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_medicati_medicinename_id_3b969b86_fk_ayurvedaa` (`medicinename_id`),
  KEY `ayurvedaapp_medicati_prescription_id_31388bc2_fk_ayurvedaa` (`prescription_id`),
  CONSTRAINT `ayurvedaapp_medicati_medicinename_id_3b969b86_fk_ayurvedaa` FOREIGN KEY (`medicinename_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_medicati_prescription_id_31388bc2_fk_ayurvedaa` FOREIGN KEY (`prescription_id`) REFERENCES `ayurvedaapp_nexdoctorprescription` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medicationentry`
--

LOCK TABLES `ayurvedaapp_medicationentry` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medicationentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_medicationentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_medicinemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_medicinemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_medicinemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itemcode` varchar(100) DEFAULT NULL,
  `itemnm` varchar(300) NOT NULL,
  `Generic_name` varchar(300) DEFAULT NULL,
  `racknumber` varchar(300) DEFAULT NULL,
  `Sideeffect` varchar(300) DEFAULT NULL,
  `hsncode` varchar(300) DEFAULT NULL,
  `Subcategory_name_id` bigint DEFAULT NULL,
  `bsuntid_id` bigint NOT NULL,
  `taxpercentage_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_medicine_Subcategory_name_id_04f5867a_fk_ayurvedaa` (`Subcategory_name_id`),
  KEY `ayurvedaapp_medicine_bsuntid_id_c9e1b92c_fk_ayurvedaa` (`bsuntid_id`),
  KEY `ayurvedaapp_medicine_taxpercentage_id_e5b11299_fk_ayurvedaa` (`taxpercentage_id`),
  CONSTRAINT `ayurvedaapp_medicine_bsuntid_id_c9e1b92c_fk_ayurvedaa` FOREIGN KEY (`bsuntid_id`) REFERENCES `ayurvedaapp_baseunit` (`id`),
  CONSTRAINT `ayurvedaapp_medicine_Subcategory_name_id_04f5867a_fk_ayurvedaa` FOREIGN KEY (`Subcategory_name_id`) REFERENCES `ayurvedaapp_itemsubcategory` (`id`),
  CONSTRAINT `ayurvedaapp_medicine_taxpercentage_id_e5b11299_fk_ayurvedaa` FOREIGN KEY (`taxpercentage_id`) REFERENCES `ayurvedaapp_taxmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3065 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medicinemaster`
--

LOCK TABLES `ayurvedaapp_medicinemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medicinemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_medicinemaster` VALUES (1659,'test code','test item','','','','30049099',158,51,6),(1671,NULL,'VICKRYL NO 1 NW 2347',NULL,NULL,NULL,NULL,167,51,NULL),(1672,NULL,'QIZOPAN-40',NULL,NULL,NULL,NULL,167,51,NULL),(1673,NULL,'10 D',NULL,NULL,NULL,NULL,171,51,NULL),(1674,NULL,'3 WAY CONNECTION WITH TUBE',NULL,NULL,NULL,NULL,167,51,NULL),(1675,NULL,'3 WYA CONNECTION',NULL,NULL,NULL,NULL,174,51,NULL),(1676,NULL,'AARMOX 500',NULL,NULL,NULL,NULL,168,51,NULL),(1677,NULL,'AARVOL PLUS',NULL,NULL,NULL,NULL,168,51,NULL),(1678,NULL,'AB PAS N',NULL,NULL,NULL,NULL,167,51,NULL),(1679,NULL,'AB PHYLLINE',NULL,NULL,NULL,NULL,168,51,NULL),(1680,NULL,'ABDOMINAL BELT (S)',NULL,NULL,NULL,NULL,174,51,NULL),(1681,NULL,'ABDOMINAL BELT LARGE 1',NULL,NULL,NULL,NULL,174,51,NULL),(1682,NULL,'ABDOMINAL BELT MEDIUM 1',NULL,NULL,NULL,NULL,174,51,NULL),(1683,NULL,'ABDOMINAL BIN SMALL',NULL,NULL,NULL,NULL,175,51,NULL),(1684,NULL,'ABDOMINAL BIN XL',NULL,NULL,NULL,NULL,175,51,NULL),(1685,NULL,'ABDOMINAL COREST XL',NULL,NULL,NULL,NULL,NULL,51,NULL),(1686,NULL,'ABDOMINAL CORSET XXL',NULL,NULL,NULL,NULL,NULL,51,NULL),(1687,NULL,'ABDOMINAL HISTACTAMY KIT',NULL,NULL,NULL,NULL,176,51,NULL),(1688,NULL,'ABGEL',NULL,NULL,NULL,NULL,172,51,NULL),(1689,NULL,'ABIXIM 200mg',NULL,NULL,NULL,NULL,167,51,NULL),(1690,NULL,'ACEFLAM-P',NULL,NULL,NULL,NULL,167,51,NULL),(1691,NULL,'ACELOX P',NULL,NULL,NULL,NULL,167,51,NULL),(1692,NULL,'ACENEXT TH4',NULL,NULL,NULL,NULL,167,51,NULL),(1693,NULL,'ACETRA SP',NULL,NULL,NULL,NULL,167,51,NULL),(1694,NULL,'ACIMOL-SP',NULL,NULL,NULL,NULL,167,51,NULL),(1695,NULL,'ACIVIR 400DT',NULL,NULL,NULL,NULL,167,51,NULL),(1696,NULL,'ACIZER-SP',NULL,NULL,NULL,NULL,167,51,NULL),(1697,NULL,'ACULITE P 500ml',NULL,NULL,NULL,NULL,171,51,NULL),(1698,NULL,'AD-100',NULL,NULL,NULL,NULL,167,51,NULL),(1699,NULL,'ADRENALINE INJ AMP',NULL,NULL,NULL,NULL,170,51,NULL),(1700,NULL,'ADREWIN 1ml',NULL,NULL,NULL,NULL,170,51,NULL),(1701,NULL,'ADULT DIAPER LARGE(40)',NULL,NULL,NULL,NULL,167,51,NULL),(1702,NULL,'ADULT DIAPER M',NULL,NULL,NULL,NULL,167,51,NULL),(1703,NULL,'ADVACRYL 3.0 2437',NULL,NULL,NULL,NULL,NULL,51,NULL),(1704,NULL,'ADVACRYL RAPID 2-0 2777',NULL,NULL,NULL,NULL,173,51,NULL),(1705,NULL,'ADVAGRIP 180',NULL,NULL,NULL,NULL,173,51,NULL),(1706,NULL,'ADVAGRIP 180(BARB SUTURE)',NULL,NULL,NULL,NULL,173,51,NULL),(1707,NULL,'ADVALELE 840 70 CM',NULL,NULL,NULL,NULL,173,51,NULL),(1708,NULL,'ADVALON3.0 (3321)',NULL,NULL,NULL,NULL,174,51,NULL),(1709,NULL,'ALCIPRO IV 100ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(1710,NULL,'ALEX LS SYP 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(1711,NULL,'ALEX SYRUP 100ML',NULL,NULL,NULL,NULL,177,51,NULL),(1712,NULL,'ALFAKIM 250MG',NULL,NULL,NULL,NULL,170,51,NULL),(1713,NULL,'ALGEN VITAMIN-C',NULL,NULL,NULL,NULL,167,51,NULL),(1714,NULL,'ALKOF C/SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(1715,NULL,'ALLEGRA 120MG',NULL,NULL,NULL,NULL,167,51,NULL),(1716,NULL,'ALLEGRA 180 MG',NULL,NULL,NULL,NULL,167,51,NULL),(1717,NULL,'ALLERONE SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(1718,NULL,'ALLERONE M 60ML',NULL,NULL,NULL,NULL,179,51,NULL),(1719,NULL,'ALMOX 125 dry syp',NULL,NULL,NULL,NULL,169,51,NULL),(1720,NULL,'ALMOX 500 CAP 10 tab',NULL,NULL,NULL,NULL,168,51,NULL),(1721,NULL,'ALPRAX 0.25',NULL,NULL,NULL,NULL,167,51,NULL),(1722,NULL,'ALPRAX 0.5',NULL,NULL,NULL,NULL,167,51,NULL),(1723,NULL,'AMBRODIL S SYP',NULL,NULL,NULL,NULL,167,51,NULL),(1724,NULL,'AMLONG 5',NULL,NULL,NULL,NULL,167,51,NULL),(1725,NULL,'AMLONG 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(1726,NULL,'AMLONG 2.5',NULL,NULL,NULL,NULL,167,51,NULL),(1727,NULL,'ANAWIN HEAVY (A)',NULL,NULL,NULL,NULL,167,51,NULL),(1728,NULL,'ANAWIN HEAVY 0.5%',NULL,NULL,NULL,NULL,170,51,NULL),(1729,NULL,'ANESTRON',NULL,NULL,NULL,NULL,167,51,NULL),(1730,NULL,'ANEC SP',NULL,NULL,NULL,NULL,167,51,NULL),(1731,NULL,'ANEC-P 10',NULL,NULL,NULL,NULL,167,51,NULL),(1732,NULL,'ANEKET VIAL',NULL,NULL,NULL,NULL,167,51,NULL),(1733,NULL,'ANEKET INJ 100MG',NULL,NULL,NULL,NULL,170,51,NULL),(1734,NULL,'ANKLE BINDER SMALL',NULL,NULL,NULL,NULL,175,51,NULL),(1735,NULL,'ANKLE BRACE L',NULL,NULL,NULL,NULL,174,51,NULL),(1736,NULL,'ANTI D 300MCG',NULL,NULL,NULL,NULL,170,51,NULL),(1737,NULL,'ANTI D 150',NULL,NULL,NULL,NULL,170,51,NULL),(1738,NULL,'APCOD SACHET',NULL,NULL,NULL,NULL,178,51,NULL),(1739,NULL,'APCOD SOFTULE',NULL,NULL,NULL,NULL,168,51,NULL),(1740,NULL,'APCODOBIS',NULL,NULL,NULL,NULL,178,51,NULL),(1741,NULL,'APLICAPS',NULL,NULL,NULL,NULL,168,51,NULL),(1742,NULL,'APPLEVIT EVA SOFT',NULL,NULL,NULL,NULL,172,51,NULL),(1743,NULL,'APRON XL 60',NULL,NULL,NULL,NULL,167,51,NULL),(1744,NULL,'AQSUSTEN 25',NULL,NULL,NULL,NULL,170,51,NULL),(1745,NULL,'AREVIK',NULL,NULL,NULL,NULL,167,51,NULL),(1746,NULL,'ARGIPREG SACHET',NULL,NULL,NULL,NULL,178,51,NULL),(1747,NULL,'ARISTOZYME',NULL,NULL,NULL,NULL,169,51,NULL),(1748,NULL,'ARM SLING POUCH SMALL',NULL,NULL,NULL,NULL,175,51,NULL),(1749,NULL,'ARTACIL 2.5',NULL,NULL,NULL,NULL,170,51,NULL),(1750,NULL,'ASCAZIN',NULL,NULL,NULL,NULL,167,51,NULL),(1751,NULL,'ASCORIL SF SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(1752,NULL,'ASCORIL + EXPECTORANT',NULL,NULL,NULL,NULL,169,51,NULL),(1753,NULL,'ASCORIL D 100',NULL,NULL,NULL,NULL,169,51,NULL),(1754,NULL,'ASCORIL LS DROPS',NULL,NULL,NULL,NULL,169,51,NULL),(1755,NULL,'ASCORIL LS EXP',NULL,NULL,NULL,NULL,169,51,NULL),(1756,NULL,'ASTHABON',NULL,NULL,NULL,NULL,180,51,NULL),(1757,NULL,'ASTHALIN SYRUP',NULL,NULL,NULL,NULL,167,51,NULL),(1758,NULL,'ASTHALIN 2',NULL,NULL,NULL,NULL,167,51,NULL),(1759,NULL,'ASTHALIN RESPULES 2.5ML',NULL,NULL,NULL,NULL,180,51,NULL),(1760,NULL,'ASTHALIN-4',NULL,NULL,NULL,NULL,167,51,NULL),(1761,NULL,'ATARAX SYP',NULL,NULL,NULL,NULL,169,51,NULL),(1762,NULL,'ATARAX DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(1763,NULL,'ATARAX-10',NULL,NULL,NULL,NULL,167,51,NULL),(1764,NULL,'ATARAX LOTION 100ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(1765,NULL,'ATARAX- TAB 25 MG',NULL,NULL,NULL,NULL,167,51,NULL),(1766,NULL,'ATEN 25',NULL,NULL,NULL,NULL,167,51,NULL),(1767,NULL,'ATEN 50',NULL,NULL,NULL,NULL,167,51,NULL),(1768,NULL,'ATOGLA CREAM 100GM',NULL,NULL,NULL,NULL,181,51,NULL),(1769,NULL,'ATORMED 10mg',NULL,NULL,NULL,NULL,167,51,NULL),(1770,NULL,'ATORNET 10 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1771,NULL,'ATORVA 20 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1772,NULL,'ATROTAS 1ml',NULL,NULL,NULL,NULL,170,51,NULL),(1773,NULL,'AUGMENTIN 1000MG',NULL,NULL,NULL,NULL,167,51,NULL),(1774,NULL,'AUGMENTIN 375TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1775,NULL,'AUGMENTIN 625 MG',NULL,NULL,NULL,NULL,174,51,NULL),(1776,NULL,'AUGMENTIN DDS SYP',NULL,NULL,NULL,NULL,167,51,NULL),(1777,NULL,'AUGMENTIN DUO',NULL,NULL,NULL,NULL,167,51,NULL),(1778,NULL,'AUGPEN DROPS 10ML',NULL,NULL,NULL,NULL,182,51,NULL),(1779,NULL,'AUGPEN DS 457 MG',NULL,NULL,NULL,NULL,179,51,NULL),(1780,NULL,'AUGPEN HS',NULL,NULL,NULL,NULL,169,51,NULL),(1781,NULL,'AVIL 25',NULL,NULL,NULL,NULL,167,51,NULL),(1782,NULL,'AVIL 2ML(AMPULE)',NULL,NULL,NULL,NULL,170,51,NULL),(1783,NULL,'AVOMINE TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1784,NULL,'AZEL 500',NULL,NULL,NULL,NULL,167,51,NULL),(1785,NULL,'AZIBACT LR 100 SYP',NULL,NULL,NULL,NULL,179,51,NULL),(1786,NULL,'AZIBACT LR 200 SYP 200',NULL,NULL,NULL,NULL,169,51,NULL),(1787,NULL,'AZIDERM 20',NULL,NULL,NULL,NULL,181,51,NULL),(1788,NULL,'AZIPRL 100 SUS 30 ML 100 MG',NULL,NULL,NULL,NULL,183,51,NULL),(1789,NULL,'AZIPRL 200',NULL,NULL,NULL,NULL,169,51,NULL),(1790,NULL,'AZIRIL-500',NULL,NULL,NULL,NULL,167,51,NULL),(1791,NULL,'AZIROX 500',NULL,NULL,NULL,NULL,167,51,NULL),(1792,NULL,'AZITHCIN 500',NULL,NULL,NULL,NULL,167,51,NULL),(1793,NULL,'AZITHRAL 250 DT',NULL,NULL,NULL,NULL,167,51,NULL),(1794,NULL,'AZITHRAL -500',NULL,NULL,NULL,NULL,167,51,NULL),(1795,NULL,'AZITHRAL 100 LIQ15ML',NULL,NULL,NULL,NULL,167,51,NULL),(1796,NULL,'AZITHRAL 200 LIQ 15ML',NULL,NULL,NULL,NULL,167,51,NULL),(1797,NULL,'AZITHRAL 250',NULL,NULL,NULL,NULL,167,51,NULL),(1798,NULL,'AZITHRO 500',NULL,NULL,NULL,NULL,167,51,NULL),(1799,NULL,'AZTOGOLD 10',NULL,NULL,NULL,NULL,167,51,NULL),(1800,NULL,'AZTOR 10 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1801,NULL,'AZTOR 20 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1802,NULL,'AZTOR 5MG',NULL,NULL,NULL,NULL,167,51,NULL),(1803,NULL,'B-BACT OINT',NULL,NULL,NULL,NULL,167,51,NULL),(1804,NULL,'BABY WIPES 10 S',NULL,NULL,NULL,NULL,184,51,NULL),(1805,NULL,'BABY EXTRACTOR',NULL,NULL,NULL,NULL,167,51,NULL),(1806,NULL,'BABY GIFT BOX',NULL,NULL,NULL,NULL,167,51,NULL),(1807,NULL,'BABY KIT (HOLIDAY)',NULL,NULL,NULL,NULL,167,51,NULL),(1808,NULL,'BABY KIT[CLEAN CARE]',NULL,NULL,NULL,NULL,167,51,NULL),(1809,NULL,'BABY MASK',NULL,NULL,NULL,NULL,167,51,NULL),(1810,NULL,'BABY TAG',NULL,NULL,NULL,NULL,185,51,NULL),(1811,NULL,'BABYDEW',NULL,NULL,NULL,NULL,186,51,NULL),(1812,NULL,'BACTIGRAS 10 CM CM',NULL,NULL,NULL,NULL,174,51,NULL),(1813,NULL,'BAND AID WASH PROOF',NULL,NULL,NULL,NULL,167,51,NULL),(1814,NULL,'BAND SPOT',NULL,NULL,NULL,NULL,167,51,NULL),(1815,NULL,'BANDAGE CLOTH 10CM',NULL,NULL,NULL,NULL,167,51,NULL),(1816,NULL,'BANDAGE CLOTH 15CM',NULL,NULL,NULL,NULL,167,51,NULL),(1817,NULL,'BANDAGE CLOTH POP10CM',NULL,NULL,NULL,NULL,187,51,NULL),(1818,NULL,'BANDY PLUS SYRUP',NULL,NULL,NULL,NULL,167,51,NULL),(1819,NULL,'BANDY PLUS TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1820,NULL,'BANDY TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1821,NULL,'BANOCIDE FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(1822,NULL,'BCG VACCINE (TUBER VAC )',NULL,NULL,NULL,NULL,167,51,NULL),(1823,NULL,'BECOSTAR DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(1824,NULL,'BECOSULES',NULL,NULL,NULL,NULL,167,51,NULL),(1825,NULL,'BECTODINE 500ml',NULL,NULL,NULL,NULL,188,51,NULL),(1826,NULL,'BECTODINE SOLUTION 10%',NULL,NULL,NULL,NULL,188,51,NULL),(1827,NULL,'BED SHEET',NULL,NULL,NULL,NULL,174,51,NULL),(1828,NULL,'BENALGIS 100mg',NULL,NULL,NULL,NULL,167,51,NULL),(1829,NULL,'BENZAC AC',NULL,NULL,NULL,NULL,172,51,NULL),(1830,NULL,'BERBILIFE',NULL,NULL,NULL,NULL,167,51,NULL),(1831,NULL,'BETADINE 100ML SOLUTION',NULL,NULL,NULL,NULL,167,51,NULL),(1832,NULL,'BETADINE 15G OINTMENT 15 GM',NULL,NULL,NULL,NULL,167,51,NULL),(1833,NULL,'BETADINE 500ML SOLU',NULL,NULL,NULL,NULL,188,51,NULL),(1834,NULL,'BETADINE GARGLE 50',NULL,NULL,NULL,NULL,188,51,NULL),(1835,NULL,'BETADINE POWDER 10GM',NULL,NULL,NULL,NULL,189,51,NULL),(1836,NULL,'BETASTAL 1ML',NULL,NULL,NULL,NULL,170,51,NULL),(1837,NULL,'BETAVERT 8 10\'S',NULL,NULL,NULL,NULL,167,51,NULL),(1838,NULL,'BETNESOL INJ',NULL,NULL,NULL,NULL,167,51,NULL),(1839,NULL,'BETNESOL',NULL,NULL,NULL,NULL,167,51,NULL),(1840,NULL,'BETNI INJ',NULL,NULL,NULL,NULL,170,51,NULL),(1841,NULL,'BETNOVATE N 20 GM',NULL,NULL,NULL,NULL,167,51,NULL),(1842,NULL,'BETNOVATESKIN CREAM 20GM',NULL,NULL,NULL,NULL,167,51,NULL),(1843,NULL,'BEVAC 0.5 ML',NULL,NULL,NULL,NULL,170,51,NULL),(1844,NULL,'BEVAC 1ML',NULL,NULL,NULL,NULL,170,51,NULL),(1845,NULL,'BEVON SYP',NULL,NULL,NULL,NULL,167,51,NULL),(1846,NULL,'BFOLIC-D',NULL,NULL,NULL,NULL,167,51,NULL),(1847,NULL,'BHROON',NULL,NULL,NULL,NULL,167,51,NULL),(1848,NULL,'BIFILAC',NULL,NULL,NULL,NULL,167,51,NULL),(1849,NULL,'BIFILAC-HP',NULL,NULL,NULL,NULL,167,51,NULL),(1850,NULL,'BILAGET-M 20',NULL,NULL,NULL,NULL,167,51,NULL),(1851,NULL,'BILAVEL-M',NULL,NULL,NULL,NULL,167,51,NULL),(1852,NULL,'BILAZAP M',NULL,NULL,NULL,NULL,167,51,NULL),(1853,NULL,'BINDER(VELCRO) L',NULL,NULL,NULL,NULL,174,51,NULL),(1854,NULL,'BINDER(VELCRO) M',NULL,NULL,NULL,NULL,174,51,NULL),(1855,NULL,'BIOPOLIO',NULL,NULL,NULL,NULL,167,51,NULL),(1856,NULL,'BIOPOLIO 2ml',NULL,NULL,NULL,NULL,190,51,NULL),(1857,NULL,'BIOTREXATE (METHOTREXATE) 50mg',NULL,NULL,NULL,NULL,170,51,NULL),(1858,NULL,'BIPRAZONE 1.5 MG',NULL,NULL,NULL,NULL,170,51,NULL),(1859,NULL,'BIZFER XT',NULL,NULL,NULL,NULL,167,51,NULL),(1860,NULL,'BLOOD TRANSFUSION SET',NULL,NULL,NULL,NULL,167,51,NULL),(1861,NULL,'BLUMOX -500',NULL,NULL,NULL,NULL,167,51,NULL),(1862,NULL,'BOOSTRIX',NULL,NULL,NULL,NULL,190,51,NULL),(1863,NULL,'BOTROCLOT SOLUTION',NULL,NULL,NULL,NULL,191,51,NULL),(1864,NULL,'BRANCHOCID G CAP',NULL,NULL,NULL,NULL,168,51,NULL),(1865,NULL,'BRIOPAN 40MG',NULL,NULL,NULL,NULL,170,51,NULL),(1866,NULL,'BRONKOLYTE PD 60ML',NULL,NULL,NULL,NULL,169,51,NULL),(1867,NULL,'BRUFEN 200',NULL,NULL,NULL,NULL,167,51,NULL),(1868,NULL,'BUDE CORT 0.5MG',NULL,NULL,NULL,NULL,167,51,NULL),(1869,NULL,'BUDECORT 200',NULL,NULL,NULL,NULL,192,51,NULL),(1870,NULL,'BUDECORT 100INHALER',NULL,NULL,NULL,NULL,174,51,NULL),(1871,NULL,'BUPRIGESIC -A',NULL,NULL,NULL,NULL,167,51,NULL),(1872,NULL,'BUTODOL 1MG',NULL,NULL,NULL,NULL,167,51,NULL),(1873,NULL,'C TRI 1.0G V',NULL,NULL,NULL,NULL,167,51,NULL),(1874,NULL,'C TRI 1GM',NULL,NULL,NULL,NULL,167,51,NULL),(1875,NULL,'C TRI 250',NULL,NULL,NULL,NULL,167,51,NULL),(1876,NULL,'C TRI 500',NULL,NULL,NULL,NULL,167,51,NULL),(1877,NULL,'CABGOLIN 0.5',NULL,NULL,NULL,NULL,167,51,NULL),(1878,NULL,'CAESARIAN KIT(CAREON)',NULL,NULL,NULL,NULL,193,51,NULL),(1879,NULL,'CALACARE 100ml',NULL,NULL,NULL,NULL,194,51,NULL),(1880,NULL,'CALAPURE A 50ML',NULL,NULL,NULL,NULL,194,51,NULL),(1881,NULL,'CALCIUM SANDOZ INJ',NULL,NULL,NULL,NULL,167,51,NULL),(1882,NULL,'CALDOB TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1883,NULL,'CALMPOSE',NULL,NULL,NULL,NULL,170,51,NULL),(1884,NULL,'CALPOL 250 SUS',NULL,NULL,NULL,NULL,167,51,NULL),(1885,NULL,'CALPOL 500MG',NULL,NULL,NULL,NULL,167,51,NULL),(1886,NULL,'CALPOL DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(1887,NULL,'CALPOL PAED SUSP',NULL,NULL,NULL,NULL,167,51,NULL),(1888,NULL,'CALXITRATE-D',NULL,NULL,NULL,NULL,167,51,NULL),(1889,NULL,'CANAG-B 15GM',NULL,NULL,NULL,NULL,195,51,NULL),(1890,NULL,'CANDID 30 GM',NULL,NULL,NULL,NULL,181,51,NULL),(1891,NULL,'CANDID B CREAM 20 GM',NULL,NULL,NULL,NULL,167,51,NULL),(1892,NULL,'CANDID CREAM 20GM',NULL,NULL,NULL,NULL,167,51,NULL),(1893,NULL,'CANDID LOTION 20ML',NULL,NULL,NULL,NULL,167,51,NULL),(1894,NULL,'CANDID MOUTH PAINT 20ML',NULL,NULL,NULL,NULL,195,51,NULL),(1895,NULL,'CANDID POWDER 60GM',NULL,NULL,NULL,NULL,183,51,NULL),(1896,NULL,'CANDID V GEL',NULL,NULL,NULL,NULL,167,51,NULL),(1897,NULL,'CANDID V3',NULL,NULL,NULL,NULL,167,51,NULL),(1898,NULL,'CANDIFORCE 200',NULL,NULL,NULL,NULL,168,51,NULL),(1899,NULL,'CANDIFORCE 100 CAP',NULL,NULL,NULL,NULL,167,51,NULL),(1900,NULL,'CANDITRAL SB 130MG CAPS',NULL,NULL,NULL,NULL,167,51,NULL),(1901,NULL,'CANSOFT CL SUP',NULL,NULL,NULL,NULL,167,51,NULL),(1902,NULL,'CAP NURSES',NULL,NULL,NULL,NULL,174,51,NULL),(1903,NULL,'CAP SURGEONS',NULL,NULL,NULL,NULL,174,51,NULL),(1904,NULL,'CARIPILL',NULL,NULL,NULL,NULL,167,51,NULL),(1905,NULL,'CARITEC INJ',NULL,NULL,NULL,NULL,170,51,NULL),(1906,NULL,'CARMICIDE (PAEDIATRIC)',NULL,NULL,NULL,NULL,NULL,51,NULL),(1907,NULL,'CARMICIDE ADULT',NULL,NULL,NULL,NULL,167,51,NULL),(1908,NULL,'CARMICIDE DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(1909,NULL,'CARTIPAD',NULL,NULL,NULL,NULL,167,51,NULL),(1910,NULL,'CASTER OIL 100ML',NULL,NULL,NULL,NULL,167,51,NULL),(1911,NULL,'CASTRO G 100',NULL,NULL,NULL,NULL,167,51,NULL),(1912,NULL,'CEFTAS -100',NULL,NULL,NULL,NULL,167,51,NULL),(1913,NULL,'CEFTAS 200',NULL,NULL,NULL,NULL,167,51,NULL),(1914,NULL,'CEFTUM 250',NULL,NULL,NULL,NULL,167,51,NULL),(1915,NULL,'CEFTUM 500 MG',NULL,NULL,NULL,NULL,167,51,NULL),(1916,NULL,'CELFEE 500',NULL,NULL,NULL,NULL,167,51,NULL),(1917,NULL,'CENTACAL',NULL,NULL,NULL,NULL,168,51,NULL),(1918,NULL,'CERVECAL BRACE L',NULL,NULL,NULL,NULL,196,51,NULL),(1919,NULL,'CERVICAL COLLER M',NULL,NULL,NULL,NULL,167,51,NULL),(1920,NULL,'CERVIFEN',NULL,NULL,NULL,NULL,167,51,NULL),(1921,NULL,'CHESTON COLD 10',NULL,NULL,NULL,NULL,167,51,NULL),(1922,NULL,'CHOPE 300 SR',NULL,NULL,NULL,NULL,167,51,NULL),(1923,NULL,'CHROMIC - 2_0 NW4241',NULL,NULL,NULL,NULL,167,51,NULL),(1924,NULL,'CHROMIFEM',NULL,NULL,NULL,NULL,167,51,NULL),(1925,NULL,'CHYMORAL FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(1926,NULL,'CHYMOTHAL FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(1927,NULL,'CILACAR 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(1928,NULL,'CILAHEART- 10',NULL,NULL,NULL,NULL,167,51,NULL),(1929,NULL,'CILAHEART--5',NULL,NULL,NULL,NULL,167,51,NULL),(1930,NULL,'CILAHEART-T',NULL,NULL,NULL,NULL,167,51,NULL),(1931,NULL,'CIPLADIN 125GM',NULL,NULL,NULL,NULL,195,51,NULL),(1932,NULL,'CIPLOX -500',NULL,NULL,NULL,NULL,167,51,NULL),(1933,NULL,'CIPLOX -TZ',NULL,NULL,NULL,NULL,167,51,NULL),(1934,NULL,'CIPLOX OZ',NULL,NULL,NULL,NULL,167,51,NULL),(1935,NULL,'CIPMOX 500 CAP',NULL,NULL,NULL,NULL,168,51,NULL),(1936,NULL,'CIPZEN FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(1937,NULL,'CITRALKA LIQUID',NULL,NULL,NULL,NULL,169,51,NULL),(1938,NULL,'CLARIBID GRANULES',NULL,NULL,NULL,NULL,179,51,NULL),(1939,NULL,'CLARINOVA 250 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1940,NULL,'CLAVICLE BRACE WITH VELCRO-CH',NULL,NULL,NULL,NULL,197,51,NULL),(1941,NULL,'CLEAR UTI ORAL',NULL,NULL,NULL,NULL,179,51,NULL),(1942,NULL,'CLEARWAX',NULL,NULL,NULL,NULL,NULL,51,NULL),(1943,NULL,'CLIM V3',NULL,NULL,NULL,NULL,167,51,NULL),(1944,NULL,'CLINGEN FORTE',NULL,NULL,NULL,NULL,198,51,NULL),(1945,NULL,'CLIQ 100',NULL,NULL,NULL,NULL,167,51,NULL),(1946,NULL,'CLOPILET A 75',NULL,NULL,NULL,NULL,167,51,NULL),(1947,NULL,'CLOPILET TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1948,NULL,'CLOPILET A 150MG',NULL,NULL,NULL,NULL,167,51,NULL),(1949,NULL,'CLOSTAF 15gm',NULL,NULL,NULL,NULL,195,51,NULL),(1950,NULL,'CLOTNIL EP 40 INJ',NULL,NULL,NULL,NULL,170,51,NULL),(1951,NULL,'COBADEX CZS',NULL,NULL,NULL,NULL,167,51,NULL),(1952,NULL,'COCK UP SPLINT WRIST(L)',NULL,NULL,NULL,NULL,174,51,NULL),(1953,NULL,'COCOK UP SPLINT WRIST(M)',NULL,NULL,NULL,NULL,174,51,NULL),(1954,NULL,'COD CLAMP',NULL,NULL,NULL,NULL,167,51,NULL),(1955,NULL,'COFLORA',NULL,NULL,NULL,NULL,168,51,NULL),(1956,NULL,'COLICAID DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(1957,NULL,'COLON IBS TAB',NULL,NULL,NULL,NULL,167,51,NULL),(1958,NULL,'COQ 300',NULL,NULL,NULL,NULL,168,51,NULL),(1959,NULL,'CORECTIA M',NULL,NULL,NULL,NULL,167,51,NULL),(1960,NULL,'COREX DX COUGH SYP',NULL,NULL,NULL,NULL,167,51,NULL),(1961,NULL,'COTTON 25GM',NULL,NULL,NULL,NULL,167,51,NULL),(1962,NULL,'COTTON 400GM',NULL,NULL,NULL,NULL,199,51,NULL),(1963,NULL,'COVONIA LS 100ml',NULL,NULL,NULL,NULL,169,51,NULL),(1964,NULL,'CRANMED CAP',NULL,NULL,NULL,NULL,168,51,NULL),(1965,NULL,'CREMAFFIN SYP',NULL,NULL,NULL,NULL,167,51,NULL),(1966,NULL,'CRINA N C R 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(1967,NULL,'CTD 12.5',NULL,NULL,NULL,NULL,167,51,NULL),(1968,NULL,'CTD 6.25',NULL,NULL,NULL,NULL,167,51,NULL),(1969,NULL,'CTZ-LM',NULL,NULL,NULL,NULL,167,51,NULL),(1970,NULL,'CYCLOPAM',NULL,NULL,NULL,NULL,167,51,NULL),(1971,NULL,'CYCLOPAM A (INJ)',NULL,NULL,NULL,NULL,167,51,NULL),(1972,NULL,'CYCLOPAM SUSP',NULL,NULL,NULL,NULL,167,51,NULL),(1973,NULL,'CYCLOPAM SYP',NULL,NULL,NULL,NULL,167,51,NULL),(1974,NULL,'CYCLOPLUS',NULL,NULL,NULL,NULL,167,51,NULL),(1975,NULL,'CYCLOSET SYP',NULL,NULL,NULL,NULL,167,51,NULL),(1976,NULL,'CYNOMYCIN CAPS 100 MG',NULL,NULL,NULL,NULL,168,51,NULL),(1977,NULL,'CYSTONE',NULL,NULL,NULL,NULL,167,51,NULL),(1978,NULL,'CYSTOVA-DN',NULL,NULL,NULL,NULL,167,51,NULL),(1979,NULL,'D 10',NULL,NULL,NULL,NULL,200,51,NULL),(1980,NULL,'D BASK 60K',NULL,NULL,NULL,NULL,183,51,NULL),(1981,NULL,'D25 (INJECTION)',NULL,NULL,NULL,NULL,167,51,NULL),(1982,NULL,'D3 MUST 60 K',NULL,NULL,NULL,NULL,167,51,NULL),(1983,NULL,'D3 MUST DROPS',NULL,NULL,NULL,NULL,182,51,NULL),(1984,NULL,'D3 SHINE 60K',NULL,NULL,NULL,NULL,201,51,NULL),(1985,NULL,'D5 FLUIDS',NULL,NULL,NULL,NULL,167,51,NULL),(1986,NULL,'DAPASIS-10',NULL,NULL,NULL,NULL,167,51,NULL),(1987,NULL,'DAROLAC',NULL,NULL,NULL,NULL,178,51,NULL),(1988,NULL,'DECAMYCIN INJ',NULL,NULL,NULL,NULL,NULL,51,NULL),(1989,NULL,'DECOKIT SYP 60 ML',NULL,NULL,NULL,NULL,169,51,NULL),(1990,NULL,'DEFCORT 6MG',NULL,NULL,NULL,NULL,167,51,NULL),(1991,NULL,'DEFCORT ORAL SUSP',NULL,NULL,NULL,NULL,179,51,NULL),(1992,NULL,'DELICES DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(1993,NULL,'DELICES DROPS Z',NULL,NULL,NULL,NULL,174,51,NULL),(1994,NULL,'DEMISONE',NULL,NULL,NULL,NULL,167,51,NULL),(1995,NULL,'DEPOMEDROL INJ 1ML',NULL,NULL,NULL,NULL,167,51,NULL),(1996,NULL,'DEPOPRED INJ 2ML',NULL,NULL,NULL,NULL,167,51,NULL),(1997,NULL,'DERIPHYLLIN',NULL,NULL,NULL,NULL,170,51,NULL),(1998,NULL,'DERIPHYLLIN RETARD 150',NULL,NULL,NULL,NULL,167,51,NULL),(1999,NULL,'DERIVA-CMS GEL',NULL,NULL,NULL,NULL,172,51,NULL),(2000,NULL,'DERMADEW BABY SOAP',NULL,NULL,NULL,NULL,167,51,NULL),(2001,NULL,'DERMADEW ACNE SOAP',NULL,NULL,NULL,NULL,NULL,51,NULL),(2002,NULL,'DERMADEW ALOE LOTION',NULL,NULL,NULL,NULL,167,51,NULL),(2003,NULL,'DERMADEW SOAP',NULL,NULL,NULL,NULL,174,51,NULL),(2004,NULL,'DERMADEW ALOE CREAM',NULL,NULL,NULL,NULL,167,51,NULL),(2005,NULL,'DEXAVAC 4MG',NULL,NULL,NULL,NULL,167,51,NULL),(2006,NULL,'DEXONA INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2007,NULL,'DEXONA TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2008,NULL,'DEXORANGE (P) SYP',NULL,NULL,NULL,NULL,169,51,NULL),(2009,NULL,'DEXORANGE (SYRUP)',NULL,NULL,NULL,NULL,169,51,NULL),(2010,NULL,'DEXTOMID 50mg',NULL,NULL,NULL,NULL,202,51,NULL),(2011,NULL,'DEXTOMID 100 mg',NULL,NULL,NULL,NULL,170,51,NULL),(2012,NULL,'DEXTROS 10 500ML',NULL,NULL,NULL,NULL,170,51,NULL),(2013,NULL,'DIAPER ADULT M',NULL,NULL,NULL,NULL,167,51,NULL),(2014,NULL,'DICLOGESIC GEL 30G',NULL,NULL,NULL,NULL,195,51,NULL),(2015,NULL,'DICLOKEM AQ INJ 75 MG',NULL,NULL,NULL,NULL,202,51,NULL),(2016,NULL,'DICYCLOVAC INJ 2 ML',NULL,NULL,NULL,NULL,202,51,NULL),(2017,NULL,'DIGEBION SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(2018,NULL,'DIGEMIN 200ML',NULL,NULL,NULL,NULL,179,51,NULL),(2019,NULL,'DIGENE',NULL,NULL,NULL,NULL,167,51,NULL),(2020,NULL,'DIGENE GEL 170ML',NULL,NULL,NULL,NULL,167,51,NULL),(2021,NULL,'DIGERAFT XT 150ml',NULL,NULL,NULL,NULL,179,51,NULL),(2022,NULL,'DINO 2',NULL,NULL,NULL,NULL,167,51,NULL),(2023,NULL,'DIS MATERNITY PAD M',NULL,NULL,NULL,NULL,174,51,NULL),(2024,NULL,'DISPOSIBLE MATERNITY PAD LARGE',NULL,NULL,NULL,NULL,174,51,NULL),(2025,NULL,'DISPOSIBLE PAD FIXATOR X LARGE',NULL,NULL,NULL,NULL,174,51,NULL),(2026,NULL,'DISPOSIBLE PAD FIXATOR XX LARGE',NULL,NULL,NULL,NULL,174,51,NULL),(2027,NULL,'DNS 500ML',NULL,NULL,NULL,NULL,167,51,NULL),(2028,NULL,'DOIL LINIMENT 30ml',NULL,NULL,NULL,NULL,NULL,51,NULL),(2029,NULL,'DOIL SPRAY 50ml',NULL,NULL,NULL,NULL,NULL,51,NULL),(2030,NULL,'DOLO 650',NULL,NULL,NULL,NULL,167,51,NULL),(2031,NULL,'DOLONEX 20 INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2032,NULL,'DOLONEX DT',NULL,NULL,NULL,NULL,167,51,NULL),(2033,NULL,'DOMIN 5ML',NULL,NULL,NULL,NULL,170,51,NULL),(2034,NULL,'DOMSTAL 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2035,NULL,'DOXINATE',NULL,NULL,NULL,NULL,167,51,NULL),(2036,NULL,'DOXT100SL',NULL,NULL,NULL,NULL,167,51,NULL),(2037,NULL,'DRONIS 30',NULL,NULL,NULL,NULL,167,51,NULL),(2038,NULL,'DROXYL -500',NULL,NULL,NULL,NULL,167,51,NULL),(2039,NULL,'DROXYL 250 DT',NULL,NULL,NULL,NULL,167,51,NULL),(2040,NULL,'DULOTIN 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2041,NULL,'DUOLIN RESPULES',NULL,NULL,NULL,NULL,167,51,NULL),(2042,NULL,'DUPAMAC 100ml',NULL,NULL,NULL,NULL,169,51,NULL),(2043,NULL,'DUPHALAC 100ML',NULL,NULL,NULL,NULL,167,51,NULL),(2044,NULL,'DUPHALAC 250ml',NULL,NULL,NULL,NULL,183,51,NULL),(2045,NULL,'DUPHASTONE 10 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2046,NULL,'DUVADILAN RTARD 40',NULL,NULL,NULL,NULL,167,51,NULL),(2047,NULL,'DUVALDIAN',NULL,NULL,NULL,NULL,167,51,NULL),(2048,NULL,'DYDROFEM',NULL,NULL,NULL,NULL,167,51,NULL),(2049,NULL,'DYDROZON',NULL,NULL,NULL,NULL,167,51,NULL),(2050,NULL,'DYDROZOX',NULL,NULL,NULL,NULL,167,51,NULL),(2051,NULL,'DYNAGLIPT20',NULL,NULL,NULL,NULL,167,51,NULL),(2052,NULL,'DYNALON DN3328 3-0',NULL,NULL,NULL,NULL,NULL,51,NULL),(2053,NULL,'EASY FIX MIDIUM',NULL,NULL,NULL,NULL,167,51,NULL),(2054,NULL,'ECOFLORA',NULL,NULL,NULL,NULL,168,51,NULL),(2055,NULL,'ECOSPIRIN 75',NULL,NULL,NULL,NULL,167,51,NULL),(2056,NULL,'ECOSPRIN 150',NULL,NULL,NULL,NULL,167,51,NULL),(2057,NULL,'ECOSPRIN AV 75 CAP',NULL,NULL,NULL,NULL,167,51,NULL),(2058,NULL,'EFFERKAL D',NULL,NULL,NULL,NULL,167,51,NULL),(2059,NULL,'EFFON HP 75 INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2060,NULL,'EFIPRRES INJECTION 1ML',NULL,NULL,NULL,NULL,167,51,NULL),(2061,NULL,'ELACAL',NULL,NULL,NULL,NULL,167,51,NULL),(2062,NULL,'ELACAL MOM',NULL,NULL,NULL,NULL,167,51,NULL),(2063,NULL,'ELDOPAR CAPS',NULL,NULL,NULL,NULL,167,51,NULL),(2064,NULL,'ELDOPER',NULL,NULL,NULL,NULL,167,51,NULL),(2065,NULL,'ELROSE',NULL,NULL,NULL,NULL,168,51,NULL),(2066,NULL,'EMBRYOFIX-FG 5gm',NULL,NULL,NULL,NULL,178,51,NULL),(2067,NULL,'EMESET 2ML A',NULL,NULL,NULL,NULL,167,51,NULL),(2068,NULL,'EMESET 4',NULL,NULL,NULL,NULL,167,51,NULL),(2069,NULL,'EMESET SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2070,NULL,'EMILY',NULL,NULL,NULL,NULL,184,51,NULL),(2071,NULL,'ENCLAV-KID 30ML',NULL,NULL,NULL,NULL,179,51,NULL),(2072,NULL,'ENCORATE CHRONO 300MG',NULL,NULL,NULL,NULL,167,51,NULL),(2073,NULL,'ENCORATECHRONO 200MG 200MG',NULL,NULL,NULL,NULL,167,51,NULL),(2074,NULL,'ENDOGRACE M',NULL,NULL,NULL,NULL,168,51,NULL),(2075,NULL,'ENDOMED',NULL,NULL,NULL,NULL,174,51,NULL),(2076,NULL,'ENDOSIS CAP',NULL,NULL,NULL,NULL,168,51,NULL),(2077,NULL,'ENDOTRACHEAL TUBE 2.5',NULL,NULL,NULL,NULL,203,51,NULL),(2078,NULL,'ENDOTRACHEAL TUBE 6.5',NULL,NULL,NULL,NULL,NULL,51,NULL),(2079,NULL,'ENDOTRACHEALTUBE 7.5',NULL,NULL,NULL,NULL,167,51,NULL),(2080,NULL,'ENDOTRACHEALTUBE 8.0',NULL,NULL,NULL,NULL,177,51,NULL),(2081,NULL,'ENDOTRACHIAL TUBE NO 7',NULL,NULL,NULL,NULL,167,51,NULL),(2082,NULL,'ENJOYPRO-1200GM',NULL,NULL,NULL,NULL,189,51,NULL),(2083,NULL,'ENOXARIN 40mg',NULL,NULL,NULL,NULL,170,51,NULL),(2084,NULL,'ENRICAL',NULL,NULL,NULL,NULL,167,51,NULL),(2085,NULL,'ENTCOF',NULL,NULL,NULL,NULL,169,51,NULL),(2086,NULL,'ENTCOF LS 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(2087,NULL,'ENTCOLD SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(2088,NULL,'ENTEROGERMINA',NULL,NULL,NULL,NULL,167,51,NULL),(2089,NULL,'ENUFF CAP 100',NULL,NULL,NULL,NULL,167,51,NULL),(2090,NULL,'ENVAS 5',NULL,NULL,NULL,NULL,167,51,NULL),(2091,NULL,'EPIDOSIN A',NULL,NULL,NULL,NULL,167,51,NULL),(2092,NULL,'EPIDURAL KIT',NULL,NULL,NULL,NULL,167,51,NULL),(2093,NULL,'EPTOIN INJECTION',NULL,NULL,NULL,NULL,167,51,NULL),(2094,NULL,'ESTROPLUS 21',NULL,NULL,NULL,NULL,167,51,NULL),(2095,NULL,'ETHILON 2-0 NW3336',NULL,NULL,NULL,NULL,174,51,NULL),(2096,NULL,'ETHILON 3-0 NW 3321',NULL,NULL,NULL,NULL,174,51,NULL),(2097,NULL,'ETHILON 3_0 NW3328',NULL,NULL,NULL,NULL,174,51,NULL),(2098,NULL,'ETHISTRONE CR 10',NULL,NULL,NULL,NULL,167,51,NULL),(2099,NULL,'EUSKIN 100gm',NULL,NULL,NULL,NULL,181,51,NULL),(2100,NULL,'EVA PREGNENCY KIT',NULL,NULL,NULL,NULL,193,51,NULL),(2101,NULL,'EVAC 100ML',NULL,NULL,NULL,NULL,204,51,NULL),(2102,NULL,'EVAC ENEMA',NULL,NULL,NULL,NULL,167,51,NULL),(2103,NULL,'EVAGON HP 75',NULL,NULL,NULL,NULL,205,51,NULL),(2104,NULL,'EVERWHITE 1200',NULL,NULL,NULL,NULL,170,51,NULL),(2105,NULL,'EVION -400',NULL,NULL,NULL,NULL,167,51,NULL),(2106,NULL,'EVION -600',NULL,NULL,NULL,NULL,167,51,NULL),(2107,NULL,'EVION LC',NULL,NULL,NULL,NULL,167,51,NULL),(2108,NULL,'FACE MASK',NULL,NULL,NULL,NULL,174,51,NULL),(2109,NULL,'FACEMOIST CREAM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2110,NULL,'FACILE BATH NEW',NULL,NULL,NULL,NULL,206,51,NULL),(2111,NULL,'FACILE RAZER',NULL,NULL,NULL,NULL,NULL,51,NULL),(2112,NULL,'FAVAMIN',NULL,NULL,NULL,NULL,168,51,NULL),(2113,NULL,'FEBREX PLUS TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2114,NULL,'FECHASE',NULL,NULL,NULL,NULL,167,51,NULL),(2115,NULL,'FEEDY 5',NULL,NULL,NULL,NULL,174,51,NULL),(2116,NULL,'FEEDY 6',NULL,NULL,NULL,NULL,174,51,NULL),(2117,NULL,'FEETGLO CREAM 25GM',NULL,NULL,NULL,NULL,181,51,NULL),(2118,NULL,'FEGAIN',NULL,NULL,NULL,NULL,167,51,NULL),(2119,NULL,'FEMGOLIX 150 10',NULL,NULL,NULL,NULL,167,51,NULL),(2120,NULL,'FEMILOSH 100ml',NULL,NULL,NULL,NULL,174,51,NULL),(2121,NULL,'FENZA 600MG',NULL,NULL,NULL,NULL,167,51,NULL),(2122,NULL,'FENZA CREAM',NULL,NULL,NULL,NULL,181,51,NULL),(2123,NULL,'FEPANIL DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(2124,NULL,'FEPANIL 125 MG SUSP 60ML',NULL,NULL,NULL,NULL,167,51,NULL),(2125,NULL,'FEPANIL 250 SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2126,NULL,'FERAZONE XT',NULL,NULL,NULL,NULL,167,51,NULL),(2127,NULL,'FERIGEM GOLD',NULL,NULL,NULL,NULL,167,51,NULL),(2128,NULL,'FERONIA - XT SUSPENSION',NULL,NULL,NULL,NULL,167,51,NULL),(2129,NULL,'FERONIA-XT TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2130,NULL,'FERTIPINK',NULL,NULL,NULL,NULL,167,51,NULL),(2131,NULL,'FIBISAFE 25',NULL,NULL,NULL,NULL,167,51,NULL),(2132,NULL,'FIBROEASE 25',NULL,NULL,NULL,NULL,167,51,NULL),(2133,NULL,'FINFER',NULL,NULL,NULL,NULL,167,51,NULL),(2134,NULL,'FINGER COT',NULL,NULL,NULL,NULL,174,51,NULL),(2135,NULL,'FIXZER 200',NULL,NULL,NULL,NULL,167,51,NULL),(2136,NULL,'FLAGYL 400 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2137,NULL,'FLAGYL 200 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2138,NULL,'FLAGYL INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2139,NULL,'FLAGYL SUSP 100ML',NULL,NULL,NULL,NULL,167,51,NULL),(2140,NULL,'FLAGYL SUSP. 60ML',NULL,NULL,NULL,NULL,167,51,NULL),(2141,NULL,'FLAKE OFF P SOLUTION 1',NULL,NULL,NULL,NULL,174,51,NULL),(2142,NULL,'FLAVOCAL SOFT GEL',NULL,NULL,NULL,NULL,167,51,NULL),(2143,NULL,'FLEXY MASK(ADULT) O2',NULL,NULL,NULL,NULL,207,51,NULL),(2144,NULL,'FLORAFY V TAB 8',NULL,NULL,NULL,NULL,168,51,NULL),(2145,NULL,'FLORITA LL',NULL,NULL,NULL,NULL,168,51,NULL),(2146,NULL,'FLOXIP IV',NULL,NULL,NULL,NULL,170,51,NULL),(2147,NULL,'FLOXIP-TZ',NULL,NULL,NULL,NULL,167,51,NULL),(2148,NULL,'FLUARIX TETRA NH STRAIN 0.5ml',NULL,NULL,NULL,NULL,NULL,51,NULL),(2149,NULL,'FLUCOLD AF 60ml',NULL,NULL,NULL,NULL,169,51,NULL),(2150,NULL,'FLUCOLD AF DROPS',NULL,NULL,NULL,NULL,182,51,NULL),(2151,NULL,'FLUKA 150',NULL,NULL,NULL,NULL,167,51,NULL),(2152,NULL,'FLUVIR 75ml',NULL,NULL,NULL,NULL,169,51,NULL),(2153,NULL,'FLUVIR CAP 75 MG',NULL,NULL,NULL,NULL,NULL,51,NULL),(2154,NULL,'FOLEO M',NULL,NULL,NULL,NULL,167,51,NULL),(2155,NULL,'FOLITRAX 15MG',NULL,NULL,NULL,NULL,167,51,NULL),(2156,NULL,'FOLLIHAIR NEW',NULL,NULL,NULL,NULL,167,51,NULL),(2157,NULL,'FOLVITE -5',NULL,NULL,NULL,NULL,167,51,NULL),(2158,NULL,'FOLYS CATHETER 14',NULL,NULL,NULL,NULL,167,51,NULL),(2159,NULL,'FOLYS CATHETER 16',NULL,NULL,NULL,NULL,208,51,NULL),(2160,NULL,'FOLYS CATHETER 18',NULL,NULL,NULL,NULL,167,51,NULL),(2161,NULL,'FOLYS CATHETER 12',NULL,NULL,NULL,NULL,174,51,NULL),(2162,NULL,'FOPYMIN ACT TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2163,NULL,'FORACORT 200 INHALER',NULL,NULL,NULL,NULL,167,51,NULL),(2164,NULL,'FORCAN 150',NULL,NULL,NULL,NULL,167,51,NULL),(2165,NULL,'FORKET SYP 100ML',NULL,NULL,NULL,NULL,174,51,NULL),(2166,NULL,'FORNICANE CREAM 30gm',NULL,NULL,NULL,NULL,NULL,51,NULL),(2167,NULL,'FRACFAST MVT',NULL,NULL,NULL,NULL,167,51,NULL),(2168,NULL,'FRANCIP-D EYE/EAR',NULL,NULL,NULL,NULL,182,51,NULL),(2169,NULL,'FREELIV M 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(2170,NULL,'FRISIUM 5',NULL,NULL,NULL,NULL,167,51,NULL),(2171,NULL,'FRNSIX 2ML',NULL,NULL,NULL,NULL,170,51,NULL),(2172,NULL,'FUCIBET',NULL,NULL,NULL,NULL,181,51,NULL),(2173,NULL,'FULFLORA 60ML',NULL,NULL,NULL,NULL,169,51,NULL),(2174,NULL,'FUROSEPTIM',NULL,NULL,NULL,NULL,167,51,NULL),(2175,NULL,'FUSIVAL OINMENT',NULL,NULL,NULL,NULL,167,51,NULL),(2176,NULL,'GABANTIN 100 CAP',NULL,NULL,NULL,NULL,167,51,NULL),(2177,NULL,'GABAWIN 50',NULL,NULL,NULL,NULL,167,51,NULL),(2178,NULL,'GARDASIL 0.5 ML',NULL,NULL,NULL,NULL,205,51,NULL),(2179,NULL,'GARDENAL SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2180,NULL,'GAUZE 100CM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2181,NULL,'GAUZE SWAB 10',NULL,NULL,NULL,NULL,209,51,NULL),(2182,NULL,'GELUSIL TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2183,NULL,'GELUSIL MPS PET LIQ',NULL,NULL,NULL,NULL,169,51,NULL),(2184,NULL,'GELUSIL SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2185,NULL,'GEMER 1',NULL,NULL,NULL,NULL,167,51,NULL),(2186,NULL,'GEMER 2MG',NULL,NULL,NULL,NULL,167,51,NULL),(2187,NULL,'GEMYCINE 250',NULL,NULL,NULL,NULL,167,51,NULL),(2188,NULL,'GEMYCINE 500',NULL,NULL,NULL,NULL,167,51,NULL),(2189,NULL,'GENEVAC B ADULT',NULL,NULL,NULL,NULL,167,51,NULL),(2190,NULL,'GENEVAC B',NULL,NULL,NULL,NULL,167,51,NULL),(2191,NULL,'GENEVAC B PED VACCINE 0.5ml',NULL,NULL,NULL,NULL,183,51,NULL),(2192,NULL,'GENVO PLUS',NULL,NULL,NULL,NULL,168,51,NULL),(2193,NULL,'GERAGENE/E DROPS',NULL,NULL,NULL,NULL,182,51,NULL),(2194,NULL,'GERBISA CHILD(SUPPOSITORY)',NULL,NULL,NULL,NULL,210,51,NULL),(2195,NULL,'GERBISA SUPPOSITORIES 10MG',NULL,NULL,NULL,NULL,210,51,NULL),(2196,NULL,'GERBISA TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2197,NULL,'GESTMATE 200 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2198,NULL,'GESTO KIT 200',NULL,NULL,NULL,NULL,174,51,NULL),(2199,NULL,'GESTOFIT 300 SR 300 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2200,NULL,'GLADSOFT MOIST 100ML',NULL,NULL,NULL,NULL,194,51,NULL),(2201,NULL,'GLADVERT',NULL,NULL,NULL,NULL,167,51,NULL),(2202,NULL,'GLIMER 1MG TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2203,NULL,'GLIMIFIX M 2MG TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2204,NULL,'GLIMY 1',NULL,NULL,NULL,NULL,167,51,NULL),(2205,NULL,'GLIMY2',NULL,NULL,NULL,NULL,167,51,NULL),(2206,NULL,'GLINIX M2',NULL,NULL,NULL,NULL,167,51,NULL),(2207,NULL,'GLINIX-M1',NULL,NULL,NULL,NULL,167,51,NULL),(2208,NULL,'GLOVES 6',NULL,NULL,NULL,NULL,167,51,NULL),(2209,NULL,'GLOVES 6.5',NULL,NULL,NULL,NULL,167,51,NULL),(2210,NULL,'GLOVES 7',NULL,NULL,NULL,NULL,167,51,NULL),(2211,NULL,'GLOVES 7.5',NULL,NULL,NULL,NULL,167,51,NULL),(2212,NULL,'GLOVES 6 POWDWE FREE',NULL,NULL,NULL,NULL,189,51,NULL),(2213,NULL,'GLOVES 6.5 POWDER FREE (SURGICARE)',NULL,NULL,NULL,NULL,174,51,NULL),(2214,NULL,'GLUCOSE 75MG',NULL,NULL,NULL,NULL,167,51,NULL),(2215,NULL,'GLUCOSTIC D 100GM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2216,NULL,'GLYCIPHAGE',NULL,NULL,NULL,NULL,167,51,NULL),(2217,NULL,'GLYCIPHAGE SR',NULL,NULL,NULL,NULL,167,51,NULL),(2218,NULL,'GOLPENT-NT',NULL,NULL,NULL,NULL,167,51,NULL),(2219,NULL,'GOODAY',NULL,NULL,NULL,NULL,167,51,NULL),(2220,NULL,'GYNEMIX 200ML',NULL,NULL,NULL,NULL,169,51,NULL),(2221,NULL,'GYPSONA 10CM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2222,NULL,'GYPSONA 15CM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2223,NULL,'HAEMACEEL INFUSION',NULL,NULL,NULL,NULL,167,51,NULL),(2224,NULL,'HALCET 100ml',NULL,NULL,NULL,NULL,211,51,NULL),(2225,NULL,'HALOTHANE 250ML',NULL,NULL,NULL,NULL,174,51,NULL),(2226,NULL,'HAND SANITIZER 500ml',NULL,NULL,NULL,NULL,NULL,51,NULL),(2227,NULL,'HAPLOID M',NULL,NULL,NULL,NULL,167,51,NULL),(2228,NULL,'HAPPY NAP',NULL,NULL,NULL,NULL,181,51,NULL),(2229,NULL,'HAVRIX',NULL,NULL,NULL,NULL,170,51,NULL),(2230,NULL,'HBCOM SACHETS',NULL,NULL,NULL,NULL,178,51,NULL),(2231,NULL,'HBSAG KIT DCH IVE',NULL,NULL,NULL,NULL,193,51,NULL),(2232,NULL,'HCQS 300',NULL,NULL,NULL,NULL,167,51,NULL),(2233,NULL,'HERMIN INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2234,NULL,'HERPERAX 400',NULL,NULL,NULL,NULL,167,51,NULL),(2235,NULL,'HERPERAX 800TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2236,NULL,'HERPEREX OINT',NULL,NULL,NULL,NULL,167,51,NULL),(2237,NULL,'HERPEX 400 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2238,NULL,'HETRAZAN 100',NULL,NULL,NULL,NULL,167,51,NULL),(2239,NULL,'HEXASIL PFS',NULL,NULL,NULL,NULL,205,51,NULL),(2240,NULL,'HH AZI 250',NULL,NULL,NULL,NULL,167,51,NULL),(2241,NULL,'HHAMCLAV D/SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(2242,NULL,'HHAMCLAV DS DRY 457',NULL,NULL,NULL,NULL,169,51,NULL),(2243,NULL,'HHCEFI DRY 50',NULL,NULL,NULL,NULL,169,51,NULL),(2244,NULL,'HHCEFPOD/SYRUP 100',NULL,NULL,NULL,NULL,169,51,NULL),(2245,NULL,'HHCEPO 200',NULL,NULL,NULL,NULL,167,51,NULL),(2246,NULL,'HHCEPO DRY',NULL,NULL,NULL,NULL,169,51,NULL),(2247,NULL,'HHLEVO',NULL,NULL,NULL,NULL,167,51,NULL),(2248,NULL,'HHLEVO M KID',NULL,NULL,NULL,NULL,169,51,NULL),(2249,NULL,'HHLEVO- M KID',NULL,NULL,NULL,NULL,167,51,NULL),(2250,NULL,'HHLEVO-M',NULL,NULL,NULL,NULL,167,51,NULL),(2251,NULL,'HHLINCTUS SYP',NULL,NULL,NULL,NULL,169,51,NULL),(2252,NULL,'HHSONE',NULL,NULL,NULL,NULL,181,51,NULL),(2253,NULL,'HIMALAYA RASH FREECREAM',NULL,NULL,NULL,NULL,181,51,NULL),(2254,NULL,'HOMISURE PLUS',NULL,NULL,NULL,NULL,170,51,NULL),(2255,NULL,'HOMISURE TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2256,NULL,'HOT WATER BAG',NULL,NULL,NULL,NULL,167,51,NULL),(2257,NULL,'HUMINSULIN 30/70',NULL,NULL,NULL,NULL,167,51,NULL),(2258,NULL,'HYDROCORT - 100 INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2259,NULL,'HYDROGEN PEROXIDE 100ML',NULL,NULL,NULL,NULL,167,51,NULL),(2260,NULL,'HYDROGEN PEROXIDE 450ML',NULL,NULL,NULL,NULL,183,51,NULL),(2261,NULL,'HYSIN 16',NULL,NULL,NULL,NULL,167,51,NULL),(2262,NULL,'IBUGESIC PLUS SUS',NULL,NULL,NULL,NULL,167,51,NULL),(2263,NULL,'IBUGESIC PLUS SUS 60ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2264,NULL,'ILATAB 150',NULL,NULL,NULL,NULL,167,51,NULL),(2265,NULL,'INFANRIX HEXA',NULL,NULL,NULL,NULL,190,51,NULL),(2266,NULL,'INSUGEN INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2267,NULL,'INSULIN SYRINGE',NULL,NULL,NULL,NULL,167,51,NULL),(2268,NULL,'INTRAZONE-S 1.5GM 25',NULL,NULL,NULL,NULL,170,51,NULL),(2269,NULL,'IROMITS XT TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2270,NULL,'ISIBRO',NULL,NULL,NULL,NULL,167,51,NULL),(2271,NULL,'ISIVIT',NULL,NULL,NULL,NULL,167,51,NULL),(2272,NULL,'ITOR 40',NULL,NULL,NULL,NULL,167,51,NULL),(2273,NULL,'ITOR 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2274,NULL,'ITRAGEL 15GM',NULL,NULL,NULL,NULL,172,51,NULL),(2275,NULL,'IV CANILA (BLUE) 22',NULL,NULL,NULL,NULL,167,51,NULL),(2276,NULL,'IV CANILA (GREEN) 18',NULL,NULL,NULL,NULL,167,51,NULL),(2277,NULL,'IV CANILA (ROSE) 20',NULL,NULL,NULL,NULL,167,51,NULL),(2278,NULL,'IV CANNULA 18 (GREEN) 2',NULL,NULL,NULL,NULL,NULL,51,NULL),(2279,NULL,'IV CANNULA 20(ROSE) 2',NULL,NULL,NULL,NULL,NULL,51,NULL),(2280,NULL,'IV CANNULA 22(BLUE) 2',NULL,NULL,NULL,NULL,NULL,51,NULL),(2281,NULL,'IV CANNULA YELLOW 24',NULL,NULL,NULL,NULL,167,51,NULL),(2282,NULL,'IV SET',NULL,NULL,NULL,NULL,174,51,NULL),(2283,NULL,'IVEPRED 8MG',NULL,NULL,NULL,NULL,167,51,NULL),(2284,NULL,'IVREA SHAMPOO',NULL,NULL,NULL,NULL,NULL,51,NULL),(2285,NULL,'JONAC SUPP',NULL,NULL,NULL,NULL,167,51,NULL),(2286,NULL,'JUNIOR LANZOL 15 15',NULL,NULL,NULL,NULL,167,51,NULL),(2287,NULL,'K MAC UTI SY 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(2288,NULL,'KAINOCET 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2289,NULL,'KARVOL PLUS',NULL,NULL,NULL,NULL,167,51,NULL),(2290,NULL,'KEFPOD 100 DT',NULL,NULL,NULL,NULL,167,51,NULL),(2291,NULL,'KEFPOD 200',NULL,NULL,NULL,NULL,167,51,NULL),(2292,NULL,'KEFPOD ORANGE SUS 30ML',NULL,NULL,NULL,NULL,179,51,NULL),(2293,NULL,'KEFPOD100 ORANGE SUS 30ML',NULL,NULL,NULL,NULL,183,51,NULL),(2294,NULL,'KELAC',NULL,NULL,NULL,NULL,167,51,NULL),(2295,NULL,'KELAC INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2296,NULL,'KEMOBET INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2297,NULL,'KENACORT 10',NULL,NULL,NULL,NULL,170,51,NULL),(2298,NULL,'KENACORT 40 INJ',NULL,NULL,NULL,NULL,174,51,NULL),(2299,NULL,'KENADION INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2300,NULL,'KETANOV INJ',NULL,NULL,NULL,NULL,NULL,51,NULL),(2301,NULL,'KETOROL A',NULL,NULL,NULL,NULL,170,51,NULL),(2302,NULL,'KETOROL-TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2303,NULL,'KETOSTAR 50GM',NULL,NULL,NULL,NULL,186,51,NULL),(2304,NULL,'KETOSTAR 50ML DANDRUFF',NULL,NULL,NULL,NULL,194,51,NULL),(2305,NULL,'KINMOL IV 100ML',NULL,NULL,NULL,NULL,170,51,NULL),(2306,NULL,'KIRSCHNER WIRE 6\'\'LONG 1.5CM',NULL,NULL,NULL,NULL,212,51,NULL),(2307,NULL,'KIRSCHNER WIRE 6\'\'LONG 1.8MM',NULL,NULL,NULL,NULL,212,51,NULL),(2308,NULL,'KIRSCHNER WIRE 6\'\'LONG 2MM',NULL,NULL,NULL,NULL,212,51,NULL),(2309,NULL,'KIWI CUP COMPLEATE VACCUM SYSTEM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2310,NULL,'WITH PUMP',NULL,NULL,NULL,NULL,174,51,NULL),(2311,NULL,'KNEE CAP SMALL',NULL,NULL,NULL,NULL,167,51,NULL),(2312,NULL,'KNEE CAP LARGE',NULL,NULL,NULL,NULL,167,51,NULL),(2313,NULL,'KNEE IMMOBLISER Medium',NULL,NULL,NULL,NULL,NULL,51,NULL),(2314,NULL,'KNEE IMMOBLISER XL',NULL,NULL,NULL,NULL,NULL,51,NULL),(2315,NULL,'KNEE SUPPORT PLAIN (L)',NULL,NULL,NULL,NULL,168,51,NULL),(2316,NULL,'KRIMSON 35',NULL,NULL,NULL,NULL,167,51,NULL),(2317,NULL,'KUFRIL LS',NULL,NULL,NULL,NULL,169,51,NULL),(2318,NULL,'L S CORSET ELNOVA( S )DYNA',NULL,NULL,NULL,NULL,197,51,NULL),(2319,NULL,'L-MEACT',NULL,NULL,NULL,NULL,167,51,NULL),(2320,NULL,'LABEBET 100',NULL,NULL,NULL,NULL,167,51,NULL),(2321,NULL,'LABEBET INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2322,NULL,'LABLOL',NULL,NULL,NULL,NULL,170,51,NULL),(2323,NULL,'LACTACYD 100ml',NULL,NULL,NULL,NULL,198,51,NULL),(2324,NULL,'LACTARE',NULL,NULL,NULL,NULL,167,51,NULL),(2325,NULL,'LACTARE GRANUELS',NULL,NULL,NULL,NULL,167,51,NULL),(2326,NULL,'LACTODEX 1STARTER 500GM',NULL,NULL,NULL,NULL,167,51,NULL),(2327,NULL,'LALDOX-LB',NULL,NULL,NULL,NULL,NULL,51,NULL),(2328,NULL,'LAPROSCOPY KIT',NULL,NULL,NULL,NULL,NULL,51,NULL),(2329,NULL,'LARIFINAC TH4',NULL,NULL,NULL,NULL,167,51,NULL),(2330,NULL,'LASIX 2ML(AMPULE)',NULL,NULL,NULL,NULL,167,51,NULL),(2331,NULL,'LASIX TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2332,NULL,'LATEX EXAM GLOVES',NULL,NULL,NULL,NULL,193,51,NULL),(2333,NULL,'LATEX EXAM GLOVES LARGE',NULL,NULL,NULL,NULL,213,51,NULL),(2334,NULL,'LECAL D3 NANO SHOT',NULL,NULL,NULL,NULL,188,51,NULL),(2335,NULL,'LECAL FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(2336,NULL,'LEGGINSE',NULL,NULL,NULL,NULL,174,51,NULL),(2337,NULL,'LETFEM 2.5',NULL,NULL,NULL,NULL,167,51,NULL),(2338,NULL,'LETSURE 5',NULL,NULL,NULL,NULL,167,51,NULL),(2339,NULL,'LETWELL',NULL,NULL,NULL,NULL,167,51,NULL),(2340,NULL,'LETZOVA',NULL,NULL,NULL,NULL,167,51,NULL),(2341,NULL,'LEUKOPOR 1INC',NULL,NULL,NULL,NULL,167,51,NULL),(2342,NULL,'LEUKOPOR TRANSPARANT',NULL,NULL,NULL,NULL,167,51,NULL),(2343,NULL,'LEVACETAM 500',NULL,NULL,NULL,NULL,167,51,NULL),(2344,NULL,'LEVESAM 250',NULL,NULL,NULL,NULL,167,51,NULL),(2345,NULL,'LEVOCET TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2346,NULL,'LEVOFLOX 500',NULL,NULL,NULL,NULL,167,51,NULL),(2347,NULL,'LEVOLI.63 RESP 2.5ML',NULL,NULL,NULL,NULL,180,51,NULL),(2348,NULL,'LEVOLIN 1',NULL,NULL,NULL,NULL,167,51,NULL),(2349,NULL,'LEVOLIN 2',NULL,NULL,NULL,NULL,167,51,NULL),(2350,NULL,'LEVOLIN INHALER',NULL,NULL,NULL,NULL,167,51,NULL),(2351,NULL,'LEVOLIN RES 0.31',NULL,NULL,NULL,NULL,NULL,51,NULL),(2352,NULL,'LEVOLIN SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(2353,NULL,'LEVOSOS',NULL,NULL,NULL,NULL,169,51,NULL),(2354,NULL,'LEZEST M',NULL,NULL,NULL,NULL,169,51,NULL),(2355,NULL,'LIBIDUP',NULL,NULL,NULL,NULL,168,51,NULL),(2356,NULL,'LIGNOCAINE 30ml',NULL,NULL,NULL,NULL,170,51,NULL),(2357,NULL,'LIGNOX 2% INJ 30ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2358,NULL,'LIMCEE 500MG',NULL,NULL,NULL,NULL,167,51,NULL),(2359,NULL,'LINOWIN 600',NULL,NULL,NULL,NULL,167,51,NULL),(2360,NULL,'LIOFEN 10 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2361,NULL,'LIV 52',NULL,NULL,NULL,NULL,167,51,NULL),(2362,NULL,'LIV 52 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(2363,NULL,'LIVITZCAP',NULL,NULL,NULL,NULL,167,51,NULL),(2364,NULL,'LIVOGEN',NULL,NULL,NULL,NULL,167,51,NULL),(2365,NULL,'LIVOGEN XT',NULL,NULL,NULL,NULL,167,51,NULL),(2366,NULL,'LIVOGEN Z',NULL,NULL,NULL,NULL,167,51,NULL),(2367,NULL,'LMA SUPREME 3-0',NULL,NULL,NULL,NULL,NULL,51,NULL),(2368,NULL,'LOBATE GM',NULL,NULL,NULL,NULL,167,51,NULL),(2369,NULL,'LOMOFEN TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2370,NULL,'LONAZEP 0.5',NULL,NULL,NULL,NULL,167,51,NULL),(2371,NULL,'LONOPIN MD CATRIDGE',NULL,NULL,NULL,NULL,170,51,NULL),(2372,NULL,'LOPEZ INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2373,NULL,'LOPRA',NULL,NULL,NULL,NULL,167,51,NULL),(2374,NULL,'LORI INJ (DIAZEPAM)',NULL,NULL,NULL,NULL,170,51,NULL),(2375,NULL,'LORVAS',NULL,NULL,NULL,NULL,NULL,51,NULL),(2376,NULL,'LOSAR 50',NULL,NULL,NULL,NULL,167,51,NULL),(2377,NULL,'LOTOVIT',NULL,NULL,NULL,NULL,168,51,NULL),(2378,NULL,'LOX 2% INJECTION',NULL,NULL,NULL,NULL,167,51,NULL),(2379,NULL,'LOX 2% JELLY',NULL,NULL,NULL,NULL,167,51,NULL),(2380,NULL,'LOX 10 SPRAY 50ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2381,NULL,'LOX 2%WITH ADRENALENE',NULL,NULL,NULL,NULL,170,51,NULL),(2382,NULL,'LOXICARD 50ml',NULL,NULL,NULL,NULL,170,51,NULL),(2383,NULL,'LOZIVATE MF OINMENT',NULL,NULL,NULL,NULL,NULL,51,NULL),(2384,NULL,'LUBIC 20GM',NULL,NULL,NULL,NULL,167,51,NULL),(2385,NULL,'LYCOTEX',NULL,NULL,NULL,NULL,168,51,NULL),(2386,NULL,'LYMPEDIM',NULL,NULL,NULL,NULL,167,51,NULL),(2387,NULL,'LYSER D TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2388,NULL,'LYSER FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(2389,NULL,'M CARE CU 375 375',NULL,NULL,NULL,NULL,174,51,NULL),(2390,NULL,'M TORR 800',NULL,NULL,NULL,NULL,168,51,NULL),(2391,NULL,'MACBERY 100ml',NULL,NULL,NULL,NULL,169,51,NULL),(2392,NULL,'MACPROT VANILA',NULL,NULL,NULL,NULL,189,51,NULL),(2393,NULL,'MAGIC POD DT 100',NULL,NULL,NULL,NULL,167,51,NULL),(2394,NULL,'MAGNEON INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2395,NULL,'MAGNESIUM SULPHATE 100gm',NULL,NULL,NULL,NULL,214,51,NULL),(2396,NULL,'MAGNESIUM SULPHATE PAST 15GM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2397,NULL,'MAGNICARE',NULL,NULL,NULL,NULL,167,51,NULL),(2398,NULL,'MAMAFOL',NULL,NULL,NULL,NULL,167,51,NULL),(2399,NULL,'MANDROGEN PLUS',NULL,NULL,NULL,NULL,167,51,NULL),(2400,NULL,'MAXBLIZ',NULL,NULL,NULL,NULL,167,51,NULL),(2401,NULL,'MAXOZA L 5GM',NULL,NULL,NULL,NULL,178,51,NULL),(2402,NULL,'MAXTRA DROPS 15ML',NULL,NULL,NULL,NULL,167,51,NULL),(2403,NULL,'MAXTRA GARGLE 120ML',NULL,NULL,NULL,NULL,188,51,NULL),(2404,NULL,'MAXTRA SYRUP',NULL,NULL,NULL,NULL,167,51,NULL),(2405,NULL,'MAYO OSMO',NULL,NULL,NULL,NULL,167,51,NULL),(2406,NULL,'MDC-HOPE',NULL,NULL,NULL,NULL,167,51,NULL),(2407,NULL,'MEASURMENT SET (PEDIA-DRIP)',NULL,NULL,NULL,NULL,167,51,NULL),(2408,NULL,'MECOBLEND',NULL,NULL,NULL,NULL,167,51,NULL),(2409,NULL,'MEDCASTIN',NULL,NULL,NULL,NULL,167,51,NULL),(2410,NULL,'MEDI - GRIP 2.5',NULL,NULL,NULL,NULL,174,51,NULL),(2411,NULL,'MEDOMOL 300MG',NULL,NULL,NULL,NULL,167,51,NULL),(2412,NULL,'MEDOMOL DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(2413,NULL,'MEFENTOD SYP 60ml',NULL,NULL,NULL,NULL,NULL,51,NULL),(2414,NULL,'MEFENTOD-P 60ML',NULL,NULL,NULL,NULL,179,51,NULL),(2415,NULL,'MEFTAGESIC P SUS 60ML',NULL,NULL,NULL,NULL,179,51,NULL),(2416,NULL,'MEFTAGESIC DS 60ML',NULL,NULL,NULL,NULL,169,51,NULL),(2417,NULL,'MEFTAL 250',NULL,NULL,NULL,NULL,167,51,NULL),(2418,NULL,'MEFTAL 500',NULL,NULL,NULL,NULL,167,51,NULL),(2419,NULL,'MEFTAL FORT TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2420,NULL,'MEFTAL P SUSPENSION',NULL,NULL,NULL,NULL,167,51,NULL),(2421,NULL,'MEFTAL_P',NULL,NULL,NULL,NULL,167,51,NULL),(2422,NULL,'MEFTAL_SPAS',NULL,NULL,NULL,NULL,167,51,NULL),(2423,NULL,'MEGAHEAL 15GM',NULL,NULL,NULL,NULL,195,51,NULL),(2424,NULL,'MENOACTIVE',NULL,NULL,NULL,NULL,167,51,NULL),(2425,NULL,'MENONOK SOFTGEL',NULL,NULL,NULL,NULL,168,51,NULL),(2426,NULL,'MEPRATE',NULL,NULL,NULL,NULL,167,51,NULL),(2427,NULL,'MERO INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2428,NULL,'METHERGIN (AMPULE)',NULL,NULL,NULL,NULL,167,51,NULL),(2429,NULL,'METHERGIN',NULL,NULL,NULL,NULL,167,51,NULL),(2430,NULL,'METOCARD XL 25',NULL,NULL,NULL,NULL,167,51,NULL),(2431,NULL,'METOSARTAN 25MG',NULL,NULL,NULL,NULL,167,51,NULL),(2432,NULL,'METRO IV 100ML',NULL,NULL,NULL,NULL,167,51,NULL),(2433,NULL,'METROGYL 200 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2434,NULL,'METROGYL DG GEL',NULL,NULL,NULL,NULL,172,51,NULL),(2435,NULL,'METROGYL M',NULL,NULL,NULL,NULL,195,51,NULL),(2436,NULL,'METRON IV',NULL,NULL,NULL,NULL,167,51,NULL),(2437,NULL,'MEZOLAM INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2438,NULL,'MICHELLE AQ',NULL,NULL,NULL,NULL,170,51,NULL),(2439,NULL,'MICRO DRIP SET',NULL,NULL,NULL,NULL,167,51,NULL),(2440,NULL,'MICRODOX LBX CAP',NULL,NULL,NULL,NULL,168,51,NULL),(2441,NULL,'MICROSHIELD 100ML',NULL,NULL,NULL,NULL,188,51,NULL),(2442,NULL,'MICROSHIELD M4 500ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2443,NULL,'MICROSHIELD PVPS 500ML',NULL,NULL,NULL,NULL,183,51,NULL),(2444,NULL,'MICROSHILED HR 500ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2445,NULL,'MIFEGEST',NULL,NULL,NULL,NULL,167,51,NULL),(2446,NULL,'MIFEGEST KIT',NULL,NULL,NULL,NULL,167,51,NULL),(2447,NULL,'MIGRANIL EC',NULL,NULL,NULL,NULL,167,51,NULL),(2448,NULL,'MIKACIN 100',NULL,NULL,NULL,NULL,167,51,NULL),(2449,NULL,'MIKACIN 250MG INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2450,NULL,'MIKACIN 500',NULL,NULL,NULL,NULL,170,51,NULL),(2451,NULL,'MILKYZON D',NULL,NULL,NULL,NULL,167,51,NULL),(2452,NULL,'MINOLAST KID TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2453,NULL,'MIRENA',NULL,NULL,NULL,NULL,NULL,51,NULL),(2454,NULL,'MISOPROST 25 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2455,NULL,'MOB GEL',NULL,NULL,NULL,NULL,172,51,NULL),(2456,NULL,'MONOBACT 1.5GM',NULL,NULL,NULL,NULL,167,51,NULL),(2457,NULL,'MONOBACT 375 V',NULL,NULL,NULL,NULL,167,51,NULL),(2458,NULL,'MONOBACT 750 V',NULL,NULL,NULL,NULL,167,51,NULL),(2459,NULL,'MONOCEF SB 1gm',NULL,NULL,NULL,NULL,170,51,NULL),(2460,NULL,'MONOCRYL 3-0 NW1326',NULL,NULL,NULL,NULL,NULL,51,NULL),(2461,NULL,'MONTAIR 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2462,NULL,'MONTAIR-4',NULL,NULL,NULL,NULL,167,51,NULL),(2463,NULL,'MONTAIR-5',NULL,NULL,NULL,NULL,167,51,NULL),(2464,NULL,'MONTAS FX',NULL,NULL,NULL,NULL,167,51,NULL),(2465,NULL,'MONTEK LC',NULL,NULL,NULL,NULL,167,51,NULL),(2466,NULL,'MONTEK FX',NULL,NULL,NULL,NULL,167,51,NULL),(2467,NULL,'MONTEK LC KID',NULL,NULL,NULL,NULL,167,51,NULL),(2468,NULL,'MONTELEO',NULL,NULL,NULL,NULL,167,51,NULL),(2469,NULL,'MONTEMAC L KID',NULL,NULL,NULL,NULL,167,51,NULL),(2470,NULL,'MONTEPRL 4MG',NULL,NULL,NULL,NULL,167,51,NULL),(2471,NULL,'MONTEPRL 5mg',NULL,NULL,NULL,NULL,167,51,NULL),(2472,NULL,'MOOPING PAD',NULL,NULL,NULL,NULL,NULL,51,NULL),(2473,NULL,'MOTINORM DT',NULL,NULL,NULL,NULL,167,51,NULL),(2474,NULL,'MOX 250 DRY SYRUP',NULL,NULL,NULL,NULL,167,51,NULL),(2475,NULL,'MOX 500MG CAP',NULL,NULL,NULL,NULL,167,51,NULL),(2476,NULL,'MOX KID 250 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2477,NULL,'MOXIKIND CV 625',NULL,NULL,NULL,NULL,167,51,NULL),(2478,NULL,'MOXINTA 500',NULL,NULL,NULL,NULL,168,51,NULL),(2479,NULL,'MOXITOR LB 625',NULL,NULL,NULL,NULL,167,51,NULL),(2480,NULL,'MUCAINE GEL 200ML',NULL,NULL,NULL,NULL,167,51,NULL),(2481,NULL,'MUCINAC 600',NULL,NULL,NULL,NULL,167,51,NULL),(2482,NULL,'MULTI VITAMIN SY(GROWMAX)',NULL,NULL,NULL,NULL,169,51,NULL),(2483,NULL,'MULTIVISTA SOFTGEL 100',NULL,NULL,NULL,NULL,174,51,NULL),(2484,NULL,'MUMFER-MAX',NULL,NULL,NULL,NULL,167,51,NULL),(2485,NULL,'MUPIZEO OIN 10GM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2486,NULL,'MYKETO 20GM',NULL,NULL,NULL,NULL,181,51,NULL),(2487,NULL,'MYO PYROLYTE INJ 5ml',NULL,NULL,NULL,NULL,174,51,NULL),(2488,NULL,'MYOLINK DS',NULL,NULL,NULL,NULL,167,51,NULL),(2489,NULL,'MYOQUEEN',NULL,NULL,NULL,NULL,167,51,NULL),(2490,NULL,'MYORIL 4',NULL,NULL,NULL,NULL,168,51,NULL),(2491,NULL,'MYOSAFE',NULL,NULL,NULL,NULL,167,51,NULL),(2492,NULL,'MYOSPAS',NULL,NULL,NULL,NULL,167,51,NULL),(2493,NULL,'MYOSPAZ - TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2494,NULL,'MYOSTIGMIN A',NULL,NULL,NULL,NULL,167,51,NULL),(2495,NULL,'MYPAR INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2496,NULL,'MYZONE SL INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2497,NULL,'N 95 MASK',NULL,NULL,NULL,NULL,NULL,51,NULL),(2498,NULL,'NACPHIN 10',NULL,NULL,NULL,NULL,170,51,NULL),(2499,NULL,'NACPHIN 10MG',NULL,NULL,NULL,NULL,170,51,NULL),(2500,NULL,'NANO C PLUS',NULL,NULL,NULL,NULL,167,51,NULL),(2501,NULL,'NAP PV IODINE 500 ml',NULL,NULL,NULL,NULL,188,51,NULL),(2502,NULL,'NAPROSYN D 500',NULL,NULL,NULL,NULL,167,51,NULL),(2503,NULL,'NASIVION CLASSIC NASAL SPRAY',NULL,NULL,NULL,NULL,NULL,51,NULL),(2504,NULL,'NASIVION PAED 10ML',NULL,NULL,NULL,NULL,167,51,NULL),(2505,NULL,'NASIVIONS SALINE 10ML',NULL,NULL,NULL,NULL,183,51,NULL),(2506,NULL,'NASOLINE',NULL,NULL,NULL,NULL,NULL,51,NULL),(2507,NULL,'NATRISE 15 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2508,NULL,'NAXDOM 250',NULL,NULL,NULL,NULL,167,51,NULL),(2509,NULL,'NAXDOM 500',NULL,NULL,NULL,NULL,168,51,NULL),(2510,NULL,'NEBICARD 5MG',NULL,NULL,NULL,NULL,167,51,NULL),(2511,NULL,'NEBULIZER KIT ADULT',NULL,NULL,NULL,NULL,193,51,NULL),(2512,NULL,'NEBULIZER KIT CHILD',NULL,NULL,NULL,NULL,193,51,NULL),(2513,NULL,'NEEDLE 16',NULL,NULL,NULL,NULL,177,51,NULL),(2514,NULL,'NEEDLE 20',NULL,NULL,NULL,NULL,NULL,51,NULL),(2515,NULL,'NEEDLE 23',NULL,NULL,NULL,NULL,167,51,NULL),(2516,NULL,'NEEDLE 26',NULL,NULL,NULL,NULL,167,51,NULL),(2517,NULL,'NEEDLE 18',NULL,NULL,NULL,NULL,NULL,51,NULL),(2518,NULL,'NEFROSAVE',NULL,NULL,NULL,NULL,168,51,NULL),(2519,NULL,'NEL CATH 12',NULL,NULL,NULL,NULL,174,51,NULL),(2520,NULL,'NEL-CATH 10',NULL,NULL,NULL,NULL,NULL,51,NULL),(2521,NULL,'NEL-CATH 16 B',NULL,NULL,NULL,NULL,NULL,51,NULL),(2522,NULL,'NELCATH 14',NULL,NULL,NULL,NULL,208,51,NULL),(2523,NULL,'NEO HCG 5000',NULL,NULL,NULL,NULL,170,51,NULL),(2524,NULL,'NEOCURON INJ 2ML',NULL,NULL,NULL,NULL,167,51,NULL),(2525,NULL,'NEOFOST 2ml',NULL,NULL,NULL,NULL,170,51,NULL),(2526,NULL,'NEOMIT 2 ML INJ 4 MG',NULL,NULL,NULL,NULL,202,51,NULL),(2527,NULL,'NEOMIZ 200 TAB',NULL,NULL,NULL,NULL,NULL,51,NULL),(2528,NULL,'NEOMIZ 25',NULL,NULL,NULL,NULL,167,51,NULL),(2529,NULL,'NEOMOL 250 SUPP',NULL,NULL,NULL,NULL,210,51,NULL),(2530,NULL,'NEOMOL 80 SUPP 80',NULL,NULL,NULL,NULL,210,51,NULL),(2531,NULL,'NEOPAN',NULL,NULL,NULL,NULL,167,51,NULL),(2532,NULL,'NEOPEPTINE DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(2533,NULL,'NEOREF 10ML',NULL,NULL,NULL,NULL,167,51,NULL),(2534,NULL,'NEURAY N.T 10',NULL,NULL,NULL,NULL,167,51,NULL),(2535,NULL,'NEUROBION FORT A (INJ)',NULL,NULL,NULL,NULL,167,51,NULL),(2536,NULL,'NEUROBION FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(2537,NULL,'NEUROLIZ 75',NULL,NULL,NULL,NULL,167,51,NULL),(2538,NULL,'NEUROLIZ-M',NULL,NULL,NULL,NULL,167,51,NULL),(2539,NULL,'NEVRALGIE',NULL,NULL,NULL,NULL,167,51,NULL),(2540,NULL,'NEW MUMFER MAX',NULL,NULL,NULL,NULL,167,51,NULL),(2541,NULL,'NEWMOM FIXATOR -L',NULL,NULL,NULL,NULL,NULL,51,NULL),(2542,NULL,'NEX-D3 MAX',NULL,NULL,NULL,NULL,167,51,NULL),(2543,NULL,'NEXIPOX VACCINE(CHICKENPOX VAC)',NULL,NULL,NULL,NULL,190,51,NULL),(2544,NULL,'VAC',NULL,NULL,NULL,NULL,NULL,51,NULL),(2545,NULL,'NEXITO 5MG',NULL,NULL,NULL,NULL,167,51,NULL),(2546,NULL,'NEXPRO RD 40',NULL,NULL,NULL,NULL,167,51,NULL),(2547,NULL,'NICARDIA RETARD 20',NULL,NULL,NULL,NULL,167,51,NULL),(2548,NULL,'NICARDIA 10 CAP',NULL,NULL,NULL,NULL,167,51,NULL),(2549,NULL,'NICARDIA 5',NULL,NULL,NULL,NULL,167,51,NULL),(2550,NULL,'NICARDIA RETARD 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2551,NULL,'NICOACE-TH4',NULL,NULL,NULL,NULL,167,51,NULL),(2552,NULL,'NICODOL PLUS',NULL,NULL,NULL,NULL,167,51,NULL),(2553,NULL,'NIFTAS 100MG',NULL,NULL,NULL,NULL,167,51,NULL),(2554,NULL,'NIPCARE',NULL,NULL,NULL,NULL,167,51,NULL),(2555,NULL,'NIPPLE SHELD',NULL,NULL,NULL,NULL,167,51,NULL),(2556,NULL,'NIRLYTE P 500ML 1A80427',NULL,NULL,NULL,NULL,NULL,51,NULL),(2557,NULL,'NITRIGA GEL',NULL,NULL,NULL,NULL,172,51,NULL),(2558,NULL,'NITROBACT-100',NULL,NULL,NULL,NULL,168,51,NULL),(2559,NULL,'NKACIN 500',NULL,NULL,NULL,NULL,170,51,NULL),(2560,NULL,'NORBLU 400',NULL,NULL,NULL,NULL,167,51,NULL),(2561,NULL,'NORFLOX 200',NULL,NULL,NULL,NULL,167,51,NULL),(2562,NULL,'NORFLOX 400 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2563,NULL,'NORMAL KIT (CAERON)',NULL,NULL,NULL,NULL,193,51,NULL),(2564,NULL,'NORMAXIN',NULL,NULL,NULL,NULL,167,51,NULL),(2565,NULL,'NORMOFLORA-UTI',NULL,NULL,NULL,NULL,167,51,NULL),(2566,NULL,'NORMOZ',NULL,NULL,NULL,NULL,167,51,NULL),(2567,NULL,'NOSIC OD',NULL,NULL,NULL,NULL,167,51,NULL),(2568,NULL,'NOVAMOX 250 SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2569,NULL,'NOVELON',NULL,NULL,NULL,NULL,167,51,NULL),(2570,NULL,'NOVEX DS',NULL,NULL,NULL,NULL,167,51,NULL),(2571,NULL,'NOVIUM D3 PLUS',NULL,NULL,NULL,NULL,167,51,NULL),(2572,NULL,'NOVOTEL 20MG',NULL,NULL,NULL,NULL,167,51,NULL),(2573,NULL,'NOVOTEL 40 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2574,NULL,'NOVOTEL AM',NULL,NULL,NULL,NULL,167,51,NULL),(2575,NULL,'NOVOTEL-40H',NULL,NULL,NULL,NULL,167,51,NULL),(2576,NULL,'NS 500ML (INJECTION)',NULL,NULL,NULL,NULL,167,51,NULL),(2577,NULL,'NS 1000ML (INJECTION)',NULL,NULL,NULL,NULL,167,51,NULL),(2578,NULL,'NS 100ML INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2579,NULL,'NS 10ML',NULL,NULL,NULL,NULL,182,51,NULL),(2580,NULL,'NT SPAS',NULL,NULL,NULL,NULL,170,51,NULL),(2581,NULL,'NUROKIND G',NULL,NULL,NULL,NULL,167,51,NULL),(2582,NULL,'NURORISE',NULL,NULL,NULL,NULL,167,51,NULL),(2583,NULL,'NURORISE-P',NULL,NULL,NULL,NULL,167,51,NULL),(2584,NULL,'NUTROLIN B PLUS',NULL,NULL,NULL,NULL,168,51,NULL),(2585,NULL,'NUTROLIN B SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(2586,NULL,'OFLOMAC 200TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2587,NULL,'OFLOMAC OZ',NULL,NULL,NULL,NULL,167,51,NULL),(2588,NULL,'OFLOX 50 SUS',NULL,NULL,NULL,NULL,179,51,NULL),(2589,NULL,'OFLOX 200',NULL,NULL,NULL,NULL,167,51,NULL),(2590,NULL,'OFLOX 400',NULL,NULL,NULL,NULL,167,51,NULL),(2591,NULL,'OFLOX INFUSION',NULL,NULL,NULL,NULL,167,51,NULL),(2592,NULL,'OFLOX OZ TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2593,NULL,'OJEN -200',NULL,NULL,NULL,NULL,167,51,NULL),(2594,NULL,'OKACET',NULL,NULL,NULL,NULL,167,51,NULL),(2595,NULL,'OKACET COLD',NULL,NULL,NULL,NULL,167,51,NULL),(2596,NULL,'OLZITH 500',NULL,NULL,NULL,NULL,167,51,NULL),(2597,NULL,'OMEGA 3 GEMS',NULL,NULL,NULL,NULL,NULL,51,NULL),(2598,NULL,'OMEGAPURE',NULL,NULL,NULL,NULL,168,51,NULL),(2599,NULL,'OMEZ 20',NULL,NULL,NULL,NULL,167,51,NULL),(2600,NULL,'OMEZ INSTA POWDER',NULL,NULL,NULL,NULL,167,51,NULL),(2601,NULL,'ONDEM INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2602,NULL,'ONDEM MD 4',NULL,NULL,NULL,NULL,167,51,NULL),(2603,NULL,'ONDEM SYP 30ML',NULL,NULL,NULL,NULL,167,51,NULL),(2604,NULL,'ONDET',NULL,NULL,NULL,NULL,170,51,NULL),(2605,NULL,'ONDET 4',NULL,NULL,NULL,NULL,167,51,NULL),(2606,NULL,'ONLAC Z',NULL,NULL,NULL,NULL,189,51,NULL),(2607,NULL,'ONOFF 200',NULL,NULL,NULL,NULL,167,51,NULL),(2608,NULL,'ORNI-O',NULL,NULL,NULL,NULL,167,51,NULL),(2609,NULL,'OROFER FCM INJ 10ML',NULL,NULL,NULL,NULL,170,51,NULL),(2610,NULL,'OROFER S 200 INJ 10ML',NULL,NULL,NULL,NULL,170,51,NULL),(2611,NULL,'OROFER S INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2612,NULL,'OROTATE 3D TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2613,NULL,'ORS ORANGE LIQUID',NULL,NULL,NULL,NULL,NULL,51,NULL),(2614,NULL,'ORS APPLE LIQD 200ML',NULL,NULL,NULL,NULL,215,51,NULL),(2615,NULL,'ORS LEMON 21GM',NULL,NULL,NULL,NULL,178,51,NULL),(2616,NULL,'ORTHO STOKINETE 50 MM',NULL,NULL,NULL,NULL,184,51,NULL),(2617,NULL,'ORTHO STOKINETE 75MM',NULL,NULL,NULL,NULL,184,51,NULL),(2618,NULL,'ORUL GEL 10ml',NULL,NULL,NULL,NULL,172,51,NULL),(2619,NULL,'OSTOLIME',NULL,NULL,NULL,NULL,167,51,NULL),(2620,NULL,'OTOGESIC DROPS 5ML',NULL,NULL,NULL,NULL,182,51,NULL),(2621,NULL,'OTRIVIN OXY FAST RELIEF 10ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2622,NULL,'OVASHIEILD DS',NULL,NULL,NULL,NULL,167,51,NULL),(2623,NULL,'OXY SET ADULT (OXYGEN SET)',NULL,NULL,NULL,NULL,NULL,51,NULL),(2624,NULL,'OXYGEN MASK',NULL,NULL,NULL,NULL,NULL,51,NULL),(2625,NULL,'OXYGN MASK',NULL,NULL,NULL,NULL,207,51,NULL),(2626,NULL,'P 750 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2627,NULL,'PAEDIATRIC URINE BAG',NULL,NULL,NULL,NULL,193,51,NULL),(2628,NULL,'PAMPERS (NEW BABY)',NULL,NULL,NULL,NULL,184,51,NULL),(2629,NULL,'PAMPERS PANTS LG 2\'S',NULL,NULL,NULL,NULL,167,51,NULL),(2630,NULL,'PAMPERS PANTS MD 2\'S',NULL,NULL,NULL,NULL,167,51,NULL),(2631,NULL,'PAMPERS PANTS SMALL 2S',NULL,NULL,NULL,NULL,174,51,NULL),(2632,NULL,'PAMPERS PANTS2SFSD180',NULL,NULL,NULL,NULL,174,51,NULL),(2633,NULL,'PAN 20 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2634,NULL,'PAN 40TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2635,NULL,'PAN D CAPS',NULL,NULL,NULL,NULL,167,51,NULL),(2636,NULL,'PANGLEM',NULL,NULL,NULL,NULL,167,51,NULL),(2637,NULL,'PANTAKIND INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2638,NULL,'PANTAS 40',NULL,NULL,NULL,NULL,167,51,NULL),(2639,NULL,'PANTOCID L TAB 40',NULL,NULL,NULL,NULL,167,51,NULL),(2640,NULL,'PANWEL DSR',NULL,NULL,NULL,NULL,167,51,NULL),(2641,NULL,'PANZOLIC 40',NULL,NULL,NULL,NULL,167,51,NULL),(2642,NULL,'PARACAN SUPPOSITORY 170',NULL,NULL,NULL,NULL,NULL,51,NULL),(2643,NULL,'PARACAN SUPPOSITORY 250',NULL,NULL,NULL,NULL,NULL,51,NULL),(2644,NULL,'PARACAN SUPPOSITORIES 80',NULL,NULL,NULL,NULL,210,51,NULL),(2645,NULL,'PARACIP 100ML',NULL,NULL,NULL,NULL,211,51,NULL),(2646,NULL,'PARAFORCE IV',NULL,NULL,NULL,NULL,170,51,NULL),(2647,NULL,'PATIENT GOWN FEMALE WITH DRA',NULL,NULL,NULL,NULL,193,51,NULL),(2648,NULL,'PCM INJ 2ML',NULL,NULL,NULL,NULL,170,51,NULL),(2649,NULL,'PEDIA DRIP SET',NULL,NULL,NULL,NULL,NULL,51,NULL),(2650,NULL,'PEGFIBER',NULL,NULL,NULL,NULL,189,51,NULL),(2651,NULL,'PENTASUN-20',NULL,NULL,NULL,NULL,167,51,NULL),(2652,NULL,'PERIFIX 401 (18G)',NULL,NULL,NULL,NULL,170,51,NULL),(2653,NULL,'PERINORM TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2654,NULL,'PERINORM 2ML A',NULL,NULL,NULL,NULL,167,51,NULL),(2655,NULL,'PERISET INJ 2ML',NULL,NULL,NULL,NULL,170,51,NULL),(2656,NULL,'PHENERGAN INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2657,NULL,'PHENPRES 1ML',NULL,NULL,NULL,NULL,170,51,NULL),(2658,NULL,'PHEXIN 500',NULL,NULL,NULL,NULL,167,51,NULL),(2659,NULL,'PHEXIN REDY 250 SYP 60ML',NULL,NULL,NULL,NULL,167,51,NULL),(2660,NULL,'PICOZER',NULL,NULL,NULL,NULL,179,51,NULL),(2661,NULL,'PILEUM TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2662,NULL,'PILEX 30G',NULL,NULL,NULL,NULL,167,51,NULL),(2663,NULL,'PILORUTE EP',NULL,NULL,NULL,NULL,167,51,NULL),(2664,NULL,'PIRITON EXP',NULL,NULL,NULL,NULL,167,51,NULL),(2665,NULL,'PITOCIN INJ 10ML',NULL,NULL,NULL,NULL,167,51,NULL),(2666,NULL,'PIVIDINE 500ml',NULL,NULL,NULL,NULL,188,51,NULL),(2667,NULL,'PLACENTREX 2ML',NULL,NULL,NULL,NULL,167,51,NULL),(2668,NULL,'PLACIFLOW',NULL,NULL,NULL,NULL,178,51,NULL),(2669,NULL,'PLETOZ 100MG',NULL,NULL,NULL,NULL,167,51,NULL),(2670,NULL,'PNEUMOSIL PFS',NULL,NULL,NULL,NULL,170,51,NULL),(2671,NULL,'POLYBION A',NULL,NULL,NULL,NULL,170,51,NULL),(2672,NULL,'POP 10CM*3M',NULL,NULL,NULL,NULL,167,51,NULL),(2673,NULL,'POTTASSIUM CHOLORIDE ( STRONG',NULL,NULL,NULL,NULL,167,51,NULL),(2674,NULL,'POVIKEM 100ml',NULL,NULL,NULL,NULL,NULL,51,NULL),(2675,NULL,'POVIKEM 500',NULL,NULL,NULL,NULL,188,51,NULL),(2676,NULL,'PPE KIT',NULL,NULL,NULL,NULL,193,51,NULL),(2677,NULL,'PPG 0.2',NULL,NULL,NULL,NULL,NULL,51,NULL),(2678,NULL,'PPH',NULL,NULL,NULL,NULL,167,51,NULL),(2679,NULL,'PRACTIN SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2680,NULL,'PRAZOPRESS XL 2.5',NULL,NULL,NULL,NULL,167,51,NULL),(2681,NULL,'PREGASTAR 75',NULL,NULL,NULL,NULL,168,51,NULL),(2682,NULL,'PREGNA',NULL,NULL,NULL,NULL,181,51,NULL),(2683,NULL,'PREGNACARE',NULL,NULL,NULL,NULL,167,51,NULL),(2684,NULL,'PREGNANCY TEST',NULL,NULL,NULL,NULL,167,51,NULL),(2685,NULL,'PRELICA 30GM',NULL,NULL,NULL,NULL,172,51,NULL),(2686,NULL,'PREVENAR -13',NULL,NULL,NULL,NULL,170,51,NULL),(2687,NULL,'PRIMOLUT N',NULL,NULL,NULL,NULL,167,51,NULL),(2688,NULL,'PROCITIL 1ML',NULL,NULL,NULL,NULL,170,51,NULL),(2689,NULL,'PROGENIX',NULL,NULL,NULL,NULL,167,51,NULL),(2690,NULL,'PROGYNOVA 2MG',NULL,NULL,NULL,NULL,167,51,NULL),(2691,NULL,'PROLENE -1- NW840',NULL,NULL,NULL,NULL,NULL,51,NULL),(2692,NULL,'PROLENE -2-0-NW844',NULL,NULL,NULL,NULL,NULL,51,NULL),(2693,NULL,'PROLENE-1843',NULL,NULL,NULL,NULL,173,51,NULL),(2694,NULL,'PROLENE 4-0 NW849',NULL,NULL,NULL,NULL,NULL,51,NULL),(2695,NULL,'PROLOMET XL 25',NULL,NULL,NULL,NULL,174,51,NULL),(2696,NULL,'PROLUTON DEPOT V 500MG/2ML',NULL,NULL,NULL,NULL,167,51,NULL),(2697,NULL,'PROSTODIN 250MCG',NULL,NULL,NULL,NULL,170,51,NULL),(2698,NULL,'PROXTL 100 MG TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2699,NULL,'PROXTL 200',NULL,NULL,NULL,NULL,167,51,NULL),(2700,NULL,'PROXTL 50 DRY SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(2701,NULL,'PROXTL SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2702,NULL,'PUBERAL F',NULL,NULL,NULL,NULL,167,51,NULL),(2703,NULL,'PULMOCLEAR',NULL,NULL,NULL,NULL,167,51,NULL),(2704,NULL,'PULMOCLEAR 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(2705,NULL,'PYROLATE (A)',NULL,NULL,NULL,NULL,167,51,NULL),(2706,NULL,'QUROZYME',NULL,NULL,NULL,NULL,167,51,NULL),(2707,NULL,'R-VIT K 1ML',NULL,NULL,NULL,NULL,170,51,NULL),(2708,NULL,'RABBY 20',NULL,NULL,NULL,NULL,167,51,NULL),(2709,NULL,'RABEMAC 20 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2710,NULL,'RABEMAC-DSR',NULL,NULL,NULL,NULL,167,51,NULL),(2711,NULL,'RABIROSE 20',NULL,NULL,NULL,NULL,167,51,NULL),(2712,NULL,'RABIVAX INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2713,NULL,'RABIVORK',NULL,NULL,NULL,NULL,167,51,NULL),(2714,NULL,'RANBIOTIC (GENTAMYSIN ING)',NULL,NULL,NULL,NULL,NULL,51,NULL),(2715,NULL,'RANITIN 2',NULL,NULL,NULL,NULL,170,51,NULL),(2716,NULL,'RANTAC SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(2717,NULL,'RANTAC (R) A',NULL,NULL,NULL,NULL,167,51,NULL),(2718,NULL,'RANTAC 150',NULL,NULL,NULL,NULL,167,51,NULL),(2719,NULL,'RAPO 20mg',NULL,NULL,NULL,NULL,167,51,NULL),(2720,NULL,'RAPO DSR CAP',NULL,NULL,NULL,NULL,167,51,NULL),(2721,NULL,'REACTIN',NULL,NULL,NULL,NULL,167,51,NULL),(2722,NULL,'RECTOL 170',NULL,NULL,NULL,NULL,NULL,51,NULL),(2723,NULL,'RECTOL 250',NULL,NULL,NULL,NULL,NULL,51,NULL),(2724,NULL,'RECTOL 80',NULL,NULL,NULL,NULL,NULL,51,NULL),(2725,NULL,'REDIAL',NULL,NULL,NULL,NULL,167,51,NULL),(2726,NULL,'REDUX',NULL,NULL,NULL,NULL,167,51,NULL),(2727,NULL,'REGESTRONE TAB 5MG',NULL,NULL,NULL,NULL,167,51,NULL),(2728,NULL,'RENERVE BT',NULL,NULL,NULL,NULL,168,51,NULL),(2729,NULL,'REVEL',NULL,NULL,NULL,NULL,168,51,NULL),(2730,NULL,'REVICI E 250',NULL,NULL,NULL,NULL,167,51,NULL),(2731,NULL,'REVITAL CAL 500',NULL,NULL,NULL,NULL,167,51,NULL),(2732,NULL,'RHINAM M SYP 30 ML',NULL,NULL,NULL,NULL,169,51,NULL),(2733,NULL,'RHINAM SYP 60 ML',NULL,NULL,NULL,NULL,169,51,NULL),(2734,NULL,'RIBOVIN 10mg',NULL,NULL,NULL,NULL,167,51,NULL),(2735,NULL,'RICHAR CR',NULL,NULL,NULL,NULL,167,51,NULL),(2736,NULL,'RICHGUT',NULL,NULL,NULL,NULL,178,51,NULL),(2737,NULL,'RIFAGUT',NULL,NULL,NULL,NULL,167,51,NULL),(2738,NULL,'RIFAGUT 400 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2739,NULL,'RIGIN PLUS SACHETS',NULL,NULL,NULL,NULL,NULL,51,NULL),(2740,NULL,'RILIGOL',NULL,NULL,NULL,NULL,170,51,NULL),(2741,NULL,'RING PESSARY 3.1',NULL,NULL,NULL,NULL,NULL,51,NULL),(2742,NULL,'RING PESSARY 2.5',NULL,NULL,NULL,NULL,NULL,51,NULL),(2743,NULL,'RL 500ML',NULL,NULL,NULL,NULL,167,51,NULL),(2744,NULL,'ROGON HP INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2745,NULL,'ROMOVAC SET FG14',NULL,NULL,NULL,NULL,167,51,NULL),(2746,NULL,'ROMOVAC SET FG 16',NULL,NULL,NULL,NULL,167,51,NULL),(2747,NULL,'RONEMOX 500',NULL,NULL,NULL,NULL,168,51,NULL),(2748,NULL,'ROSCILLIN 500MG',NULL,NULL,NULL,NULL,170,51,NULL),(2749,NULL,'ROTASIL LIQUID',NULL,NULL,NULL,NULL,NULL,51,NULL),(2750,NULL,'ROTATEQ 2ML',NULL,NULL,NULL,NULL,190,51,NULL),(2751,NULL,'ROZAVEL 40',NULL,NULL,NULL,NULL,167,51,NULL),(2752,NULL,'ROZITOR 5',NULL,NULL,NULL,NULL,167,51,NULL),(2753,NULL,'RUTOZER SPO',NULL,NULL,NULL,NULL,195,51,NULL),(2754,NULL,'RUTOZER-H',NULL,NULL,NULL,NULL,167,51,NULL),(2755,NULL,'RYLE\'S TUBE 14',NULL,NULL,NULL,NULL,167,51,NULL),(2756,NULL,'RYLES TUBE 16ML',NULL,NULL,NULL,NULL,167,51,NULL),(2757,NULL,'RYLES TUBE 12',NULL,NULL,NULL,NULL,167,51,NULL),(2758,NULL,'SALISIA KT SHAMPOO',NULL,NULL,NULL,NULL,NULL,51,NULL),(2759,NULL,'SANITIZER (SPRAY) 100ml',NULL,NULL,NULL,NULL,NULL,51,NULL),(2760,NULL,'SCOFA -1000 E',NULL,NULL,NULL,NULL,168,51,NULL),(2761,NULL,'SEPTARAB',NULL,NULL,NULL,NULL,167,51,NULL),(2762,NULL,'SERAPEP D',NULL,NULL,NULL,NULL,167,51,NULL),(2763,NULL,'SERAX FORTE',NULL,NULL,NULL,NULL,167,51,NULL),(2764,NULL,'SERFIX-200',NULL,NULL,NULL,NULL,167,51,NULL),(2765,NULL,'SERLUKAST-L',NULL,NULL,NULL,NULL,167,51,NULL),(2766,NULL,'SEROFLO 250 (INHALER)',NULL,NULL,NULL,NULL,167,51,NULL),(2767,NULL,'SERTIDASE',NULL,NULL,NULL,NULL,167,51,NULL),(2768,NULL,'SEVURA 250ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2769,NULL,'SHELARC',NULL,NULL,NULL,NULL,167,51,NULL),(2770,NULL,'SHELCAL -500',NULL,NULL,NULL,NULL,167,51,NULL),(2771,NULL,'SHELCAL SUS 200ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2772,NULL,'SHINEROSE E',NULL,NULL,NULL,NULL,168,51,NULL),(2773,NULL,'SIBELIUM 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2774,NULL,'SIBELIUM 5MG',NULL,NULL,NULL,NULL,167,51,NULL),(2775,NULL,'SIBOLONE',NULL,NULL,NULL,NULL,167,51,NULL),(2776,NULL,'SILFOG NASAL SPRAY',NULL,NULL,NULL,NULL,NULL,51,NULL),(2777,NULL,'SILICONE TUBAL RING',NULL,NULL,NULL,NULL,NULL,51,NULL),(2778,NULL,'SILODAL 8 mg',NULL,NULL,NULL,NULL,168,51,NULL),(2779,NULL,'SILVEREX CREM 10GM',NULL,NULL,NULL,NULL,167,51,NULL),(2780,NULL,'SILVEREX IONIC 20GM',NULL,NULL,NULL,NULL,167,51,NULL),(2781,NULL,'SILYBON 70MG',NULL,NULL,NULL,NULL,167,51,NULL),(2782,NULL,'SILYBON SUS 100ML',NULL,NULL,NULL,NULL,167,51,NULL),(2783,NULL,'SIPHENE 50',NULL,NULL,NULL,NULL,167,51,NULL),(2784,NULL,'SITAPAZ M 50/500',NULL,NULL,NULL,NULL,167,51,NULL),(2785,NULL,'SKIN STAPLER',NULL,NULL,NULL,NULL,NULL,51,NULL),(2786,NULL,'SKRAMP 1',NULL,NULL,NULL,NULL,167,51,NULL),(2787,NULL,'SMUTH CREM',NULL,NULL,NULL,NULL,181,51,NULL),(2788,NULL,'SMUTH SUSPENSION',NULL,NULL,NULL,NULL,167,51,NULL),(2789,NULL,'SNEEZAREST',NULL,NULL,NULL,NULL,167,51,NULL),(2790,NULL,'SODAC 25ml',NULL,NULL,NULL,NULL,170,51,NULL),(2791,NULL,'SODIUM BICARBONATE INJECTION',NULL,NULL,NULL,NULL,167,51,NULL),(2792,NULL,'SODIUM CHLORIDE (INJECTION) 3%',NULL,NULL,NULL,NULL,170,51,NULL),(2793,NULL,'SODIUM PHOSPHATE ENEMA',NULL,NULL,NULL,NULL,167,51,NULL),(2794,NULL,'SOFF ROLL 15CM',NULL,NULL,NULL,NULL,167,51,NULL),(2795,NULL,'SOMPRAZ 20 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2796,NULL,'SOMPRAZ 40 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2797,NULL,'SOMPRAZ D 40TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2798,NULL,'SOMPRAZ IT',NULL,NULL,NULL,NULL,NULL,51,NULL),(2799,NULL,'SOMPRAZ IV INJ',NULL,NULL,NULL,NULL,NULL,51,NULL),(2800,NULL,'SORBITRATE 5',NULL,NULL,NULL,NULL,167,51,NULL),(2801,NULL,'SOREGEL 10MG',NULL,NULL,NULL,NULL,172,51,NULL),(2802,NULL,'SOVENTUS SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2803,NULL,'SPA TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2804,NULL,'SPASMODALE',NULL,NULL,NULL,NULL,167,51,NULL),(2805,NULL,'SPECTRALAX 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(2806,NULL,'SPESEMEN SACHET',NULL,NULL,NULL,NULL,NULL,51,NULL),(2807,NULL,'SPINAL NEEDLE 25',NULL,NULL,NULL,NULL,167,51,NULL),(2808,NULL,'SPINAL NEEDLE 26-BD',NULL,NULL,NULL,NULL,167,51,NULL),(2809,NULL,'SPINALNEEDLE23',NULL,NULL,NULL,NULL,167,51,NULL),(2810,NULL,'SPOOK FB 200',NULL,NULL,NULL,NULL,192,51,NULL),(2811,NULL,'STEMETIL INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2812,NULL,'STERILE WATER 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(2813,NULL,'STERIZONE ST 80',NULL,NULL,NULL,NULL,NULL,51,NULL),(2814,NULL,'STERIZONE ST 91',NULL,NULL,NULL,NULL,NULL,51,NULL),(2815,NULL,'AEROFOAM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2816,NULL,'STERIZONE ST82',NULL,NULL,NULL,NULL,174,51,NULL),(2817,NULL,'STERIZONE ST86',NULL,NULL,NULL,NULL,174,51,NULL),(2818,NULL,'STERWIN',NULL,NULL,NULL,NULL,170,51,NULL),(2819,NULL,'STON 1B6',NULL,NULL,NULL,NULL,167,51,NULL),(2820,NULL,'STUGERON 25',NULL,NULL,NULL,NULL,167,51,NULL),(2821,NULL,'SUCOL 10ML',NULL,NULL,NULL,NULL,167,51,NULL),(2822,NULL,'SUCRAFIL O',NULL,NULL,NULL,NULL,172,51,NULL),(2823,NULL,'SUCRAFIL SUSPEN',NULL,NULL,NULL,NULL,179,51,NULL),(2824,NULL,'SUCRALOCK O',NULL,NULL,NULL,NULL,179,51,NULL),(2825,NULL,'SUCRATE O SUSP',NULL,NULL,NULL,NULL,183,51,NULL),(2826,NULL,'SUCTION CATHETER 10',NULL,NULL,NULL,NULL,174,51,NULL),(2827,NULL,'SUCTION CATHETER 12',NULL,NULL,NULL,NULL,167,51,NULL),(2828,NULL,'SUCTION CATHETER 14',NULL,NULL,NULL,NULL,167,51,NULL),(2829,NULL,'SUCTION CATHETER 16',NULL,NULL,NULL,NULL,167,51,NULL),(2830,NULL,'SUCTION SET',NULL,NULL,NULL,NULL,167,51,NULL),(2831,NULL,'SUNPORE 5cm',NULL,NULL,NULL,NULL,NULL,51,NULL),(2832,NULL,'SUPACEF 1.5MG',NULL,NULL,NULL,NULL,167,51,NULL),(2833,NULL,'SUPACEF 750MG',NULL,NULL,NULL,NULL,167,51,NULL),(2834,NULL,'SUPIROCIN B PLUS',NULL,NULL,NULL,NULL,195,51,NULL),(2835,NULL,'SURBEX GOLD',NULL,NULL,NULL,NULL,168,51,NULL),(2836,NULL,'SURFAZ SN CREAM 10GM',NULL,NULL,NULL,NULL,167,51,NULL),(2837,NULL,'SURGEON GOWN',NULL,NULL,NULL,NULL,NULL,51,NULL),(2838,NULL,'SURGI KIT ( CESARIAN )',NULL,NULL,NULL,NULL,193,51,NULL),(2839,NULL,'SURGICAL BLADE 15',NULL,NULL,NULL,NULL,174,51,NULL),(2840,NULL,'SURGICAL BLADE 20',NULL,NULL,NULL,NULL,216,51,NULL),(2841,NULL,'SURGICAL BLADE 22',NULL,NULL,NULL,NULL,167,51,NULL),(2842,NULL,'SURGICAL BLADE 23',NULL,NULL,NULL,NULL,216,51,NULL),(2843,NULL,'SURGICAL BLADE LISTER 11',NULL,NULL,NULL,NULL,167,51,NULL),(2844,NULL,'SUSTEN 200',NULL,NULL,NULL,NULL,167,51,NULL),(2845,NULL,'SUTUPAK 1SW215',NULL,NULL,NULL,NULL,174,51,NULL),(2846,NULL,'SV SET',NULL,NULL,NULL,NULL,174,51,NULL),(2847,NULL,'SYNGALIN MNT',NULL,NULL,NULL,NULL,167,51,NULL),(2848,NULL,'SYR 2.5ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2849,NULL,'SYRINGE 10 ML',NULL,NULL,NULL,NULL,167,51,NULL),(2850,NULL,'SYRINGE 5ML',NULL,NULL,NULL,NULL,167,51,NULL),(2851,NULL,'SYRINGE 1ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(2852,NULL,'SYRINGE 20 ML',NULL,NULL,NULL,NULL,167,51,NULL),(2853,NULL,'T-BACT OINT 5G',NULL,NULL,NULL,NULL,167,51,NULL),(2854,NULL,'T.T VAC',NULL,NULL,NULL,NULL,170,51,NULL),(2855,NULL,'TAMEGUT 40',NULL,NULL,NULL,NULL,167,51,NULL),(2856,NULL,'TAXIM INJ 125 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2857,NULL,'TAXIM - O 200',NULL,NULL,NULL,NULL,167,51,NULL),(2858,NULL,'TAXIM 1.GM V',NULL,NULL,NULL,NULL,167,51,NULL),(2859,NULL,'TAXIM 250 MG V',NULL,NULL,NULL,NULL,167,51,NULL),(2860,NULL,'TAXIM 500 V',NULL,NULL,NULL,NULL,167,51,NULL),(2861,NULL,'TAXIM O 100 MG',NULL,NULL,NULL,NULL,167,51,NULL),(2862,NULL,'TAXIM O DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(2863,NULL,'TAXIM O DRY SYRUP',NULL,NULL,NULL,NULL,167,51,NULL),(2864,NULL,'TAXIM O FORTE D/SY',NULL,NULL,NULL,NULL,169,51,NULL),(2865,NULL,'TAZOMAC 4.5 INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2866,NULL,'TBN EYE 10ML',NULL,NULL,NULL,NULL,182,51,NULL),(2867,NULL,'TD VAC',NULL,NULL,NULL,NULL,167,51,NULL),(2868,NULL,'TEAR DROPS 5ML',NULL,NULL,NULL,NULL,167,51,NULL),(2869,NULL,'TEBINA',NULL,NULL,NULL,NULL,181,51,NULL),(2870,NULL,'TEDI BAR',NULL,NULL,NULL,NULL,186,51,NULL),(2871,NULL,'TELMA AM',NULL,NULL,NULL,NULL,167,51,NULL),(2872,NULL,'TELMA TAB 20MG',NULL,NULL,NULL,NULL,167,51,NULL),(2873,NULL,'TELMA 40 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2874,NULL,'TELMA H TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2875,NULL,'TELMAKIND 40',NULL,NULL,NULL,NULL,167,51,NULL),(2876,NULL,'TELMAKIND 20',NULL,NULL,NULL,NULL,167,51,NULL),(2877,NULL,'TELMAKIND 40 (DUPE)',NULL,NULL,NULL,NULL,167,51,NULL),(2878,NULL,'TEMP 15ML',NULL,NULL,NULL,NULL,182,51,NULL),(2879,NULL,'TEMP SYP 250',NULL,NULL,NULL,NULL,NULL,51,NULL),(2880,NULL,'TERMIN INJECTION',NULL,NULL,NULL,NULL,167,51,NULL),(2881,NULL,'TESTOVIRON DEPOT INJ 250mg',NULL,NULL,NULL,NULL,170,51,NULL),(2882,NULL,'TEXCLAV 625',NULL,NULL,NULL,NULL,167,51,NULL),(2883,NULL,'THERMOMETER',NULL,NULL,NULL,NULL,217,51,NULL),(2884,NULL,'THIAMIN',NULL,NULL,NULL,NULL,167,51,NULL),(2885,NULL,'THIAMIN 2ML',NULL,NULL,NULL,NULL,170,51,NULL),(2886,NULL,'THROBINAC P',NULL,NULL,NULL,NULL,167,51,NULL),(2887,NULL,'THROBINAC SP',NULL,NULL,NULL,NULL,167,51,NULL),(2888,NULL,'THROMBINAC TH',NULL,NULL,NULL,NULL,167,51,NULL),(2889,NULL,'THROMBOPHOB OINT',NULL,NULL,NULL,NULL,167,51,NULL),(2890,NULL,'THUMB SPICA SPLINT',NULL,NULL,NULL,NULL,174,51,NULL),(2891,NULL,'THYRONORM 88',NULL,NULL,NULL,NULL,NULL,51,NULL),(2892,NULL,'THYRONORM 12.5 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2893,NULL,'THYRONORM 125MG',NULL,NULL,NULL,NULL,167,51,NULL),(2894,NULL,'THYRONORM 150 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2895,NULL,'THYRONORM 25MG',NULL,NULL,NULL,NULL,167,51,NULL),(2896,NULL,'THYRONORM 37.5',NULL,NULL,NULL,NULL,167,51,NULL),(2897,NULL,'THYRONORM 50MG',NULL,NULL,NULL,NULL,167,51,NULL),(2898,NULL,'THYRONORM 75 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2899,NULL,'THYRONORM62.5 62.5',NULL,NULL,NULL,NULL,174,51,NULL),(2900,NULL,'TIGLOFER XT',NULL,NULL,NULL,NULL,168,51,NULL),(2901,NULL,'TOBA 0.3% EYE DROPS 5 ML',NULL,NULL,NULL,NULL,167,51,NULL),(2902,NULL,'TOBA DM5ML',NULL,NULL,NULL,NULL,167,51,NULL),(2903,NULL,'TOBACIN EYE DROPS 5ML',NULL,NULL,NULL,NULL,167,51,NULL),(2904,NULL,'TONOFERON DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(2905,NULL,'TONOFERON PAED SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2906,NULL,'TOP BAN 10CM ORTHO BANDAGE',NULL,NULL,NULL,NULL,NULL,51,NULL),(2907,NULL,'TOP BAN ORTHO BANDAGE 15CM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2908,NULL,'TOP CREPE 10 CM',NULL,NULL,NULL,NULL,167,51,NULL),(2909,NULL,'TOP CREPE 15CM',NULL,NULL,NULL,NULL,167,51,NULL),(2910,NULL,'TOP O PLAST 10CM',NULL,NULL,NULL,NULL,167,51,NULL),(2911,NULL,'TOTALIS CAP',NULL,NULL,NULL,NULL,168,51,NULL),(2912,NULL,'TRAMAZAC INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2913,NULL,'TRAMEF 2ml',NULL,NULL,NULL,NULL,170,51,NULL),(2914,NULL,'TRAMOSUN 2ml',NULL,NULL,NULL,NULL,170,51,NULL),(2915,NULL,'TRAPIC MF',NULL,NULL,NULL,NULL,167,51,NULL),(2916,NULL,'TRAPIC 650',NULL,NULL,NULL,NULL,167,51,NULL),(2917,NULL,'TRAPIC INJ 5ML',NULL,NULL,NULL,NULL,174,51,NULL),(2918,NULL,'TRAPIC TAB 500 10',NULL,NULL,NULL,NULL,NULL,51,NULL),(2919,NULL,'TRESIVAC (MMR)INJ',NULL,NULL,NULL,NULL,167,51,NULL),(2920,NULL,'TREVUP9THIAMIN)2ML 1',NULL,NULL,NULL,NULL,202,51,NULL),(2921,NULL,'TRIMOL',NULL,NULL,NULL,NULL,167,51,NULL),(2922,NULL,'TRIPZER PLUS',NULL,NULL,NULL,NULL,167,51,NULL),(2923,NULL,'TROPINE INJ 1ML',NULL,NULL,NULL,NULL,167,51,NULL),(2924,NULL,'TRUBOND TN622',NULL,NULL,NULL,NULL,173,51,NULL),(2925,NULL,'TRUGLYDE 1SN 2347 A 20CM',NULL,NULL,NULL,NULL,175,51,NULL),(2926,NULL,'TRUGLYDE FAST2-0 SN2762 90CM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2927,NULL,'NEEDLE (B11)',NULL,NULL,NULL,NULL,NULL,51,NULL),(2928,NULL,'TRUGLYDE FAST2-0 SN2777 140CM',NULL,NULL,NULL,NULL,NULL,51,NULL),(2929,NULL,'AEROFOAM (B11)',NULL,NULL,NULL,NULL,NULL,51,NULL),(2930,NULL,'TRUGUT 2-0 ( 3.5 METRIC ) 4241',NULL,NULL,NULL,NULL,167,51,NULL),(2931,NULL,'TRUSYNTH 1TS2347 90CM',NULL,NULL,NULL,NULL,175,51,NULL),(2932,NULL,'TUBERVAC INJ',NULL,NULL,NULL,NULL,170,51,NULL),(2933,NULL,'TURBOCLAV 625',NULL,NULL,NULL,NULL,167,51,NULL),(2934,NULL,'TYPBAR TCV VACCINE',NULL,NULL,NULL,NULL,190,51,NULL),(2935,NULL,'TYPLIN - C',NULL,NULL,NULL,NULL,167,51,NULL),(2936,NULL,'TYPLIN 10',NULL,NULL,NULL,NULL,167,51,NULL),(2937,NULL,'TYPLIN 25',NULL,NULL,NULL,NULL,167,51,NULL),(2938,NULL,'UBICAR',NULL,NULL,NULL,NULL,167,51,NULL),(2939,NULL,'UBICAR WOMEN',NULL,NULL,NULL,NULL,168,51,NULL),(2940,NULL,'UBIQNOR',NULL,NULL,NULL,NULL,167,51,NULL),(2941,NULL,'UDILIV 150',NULL,NULL,NULL,NULL,167,51,NULL),(2942,NULL,'UDILIV 300',NULL,NULL,NULL,NULL,167,51,NULL),(2943,NULL,'UGICLEAN 1000',NULL,NULL,NULL,NULL,167,51,NULL),(2944,NULL,'ULTRACET',NULL,NULL,NULL,NULL,167,51,NULL),(2945,NULL,'ULTRASUN',NULL,NULL,NULL,NULL,167,51,NULL),(2946,NULL,'UNDERPAD-PROCARE',NULL,NULL,NULL,NULL,NULL,51,NULL),(2947,NULL,'UNITREXATE 50',NULL,NULL,NULL,NULL,170,51,NULL),(2948,NULL,'UNWANTED KIT',NULL,NULL,NULL,NULL,167,51,NULL),(2949,NULL,'URIKIND TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2950,NULL,'URIX',NULL,NULL,NULL,NULL,170,51,NULL),(2951,NULL,'URO BAG (UROLINK)2000ML',NULL,NULL,NULL,NULL,167,51,NULL),(2952,NULL,'UT JOY 100 ML',NULL,NULL,NULL,NULL,179,51,NULL),(2953,NULL,'UTI FLUSH SACHET',NULL,NULL,NULL,NULL,NULL,51,NULL),(2954,NULL,'UV DOUX SUNSCREEN GEL',NULL,NULL,NULL,NULL,172,51,NULL),(2955,NULL,'VAGINAL HYSTERCTOMY KIT',NULL,NULL,NULL,NULL,193,51,NULL),(2956,NULL,'VALCIVIR 1000',NULL,NULL,NULL,NULL,167,51,NULL),(2957,NULL,'VALIUM 5MG',NULL,NULL,NULL,NULL,167,51,NULL),(2958,NULL,'VASOCONA',NULL,NULL,NULL,NULL,167,51,NULL),(2959,NULL,'VB7 HAIR',NULL,NULL,NULL,NULL,167,51,NULL),(2960,NULL,'VCET-LM TAB',NULL,NULL,NULL,NULL,167,51,NULL),(2961,NULL,'VECET MT',NULL,NULL,NULL,NULL,167,51,NULL),(2962,NULL,'VEGLISAP 50',NULL,NULL,NULL,NULL,167,51,NULL),(2963,NULL,'VEHYCAL XT',NULL,NULL,NULL,NULL,167,51,NULL),(2964,NULL,'VEIN-O-LINE 100cm',NULL,NULL,NULL,NULL,NULL,51,NULL),(2965,NULL,'VEINWIN',NULL,NULL,NULL,NULL,167,51,NULL),(2966,NULL,'VELTAM 0.4',NULL,NULL,NULL,NULL,167,51,NULL),(2967,NULL,'VELTAM-0.2',NULL,NULL,NULL,NULL,167,51,NULL),(2968,NULL,'VENOUS NERVE',NULL,NULL,NULL,NULL,167,51,NULL),(2969,NULL,'VENUSIA MAX LOTION',NULL,NULL,NULL,NULL,NULL,51,NULL),(2970,NULL,'VERTIN 16',NULL,NULL,NULL,NULL,167,51,NULL),(2971,NULL,'VERTIN 8',NULL,NULL,NULL,NULL,167,51,NULL),(2972,NULL,'VIBLIZ M',NULL,NULL,NULL,NULL,167,51,NULL),(2973,NULL,'VICARE I-',NULL,NULL,NULL,NULL,181,51,NULL),(2974,NULL,'VICKS 10G',NULL,NULL,NULL,NULL,167,51,NULL),(2975,NULL,'VICKS 5G',NULL,NULL,NULL,NULL,167,51,NULL),(2976,NULL,'VICKS BABY RUB',NULL,NULL,NULL,NULL,NULL,51,NULL),(2977,NULL,'VICKS INHALER',NULL,NULL,NULL,NULL,167,51,NULL),(2978,NULL,'VICRYL 1',NULL,NULL,NULL,NULL,174,51,NULL),(2979,NULL,'VICRYL 2_0NW2317',NULL,NULL,NULL,NULL,167,51,NULL),(2980,NULL,'VICRYL 3-0 NW2328',NULL,NULL,NULL,NULL,174,51,NULL),(2981,NULL,'VICRYL 3_0 NW 2437',NULL,NULL,NULL,NULL,174,51,NULL),(2982,NULL,'VICRYL NO 1NW2347',NULL,NULL,NULL,NULL,167,51,NULL),(2983,NULL,'VICRYL PLUS 3-0 VP 2328',NULL,NULL,NULL,NULL,175,51,NULL),(2984,NULL,'VICRYL RAPIDE 2_0 NW2777',NULL,NULL,NULL,NULL,174,51,NULL),(2985,NULL,'VICTORY 200',NULL,NULL,NULL,NULL,167,51,NULL),(2986,NULL,'VISTALAC',NULL,NULL,NULL,NULL,168,51,NULL),(2987,NULL,'VITAFLOW 5GM',NULL,NULL,NULL,NULL,178,51,NULL),(2988,NULL,'VITANOVA D3',NULL,NULL,NULL,NULL,178,51,NULL),(2989,NULL,'VITARGIN 1000MG',NULL,NULL,NULL,NULL,167,51,NULL),(2990,NULL,'VITASURGE 200ml',NULL,NULL,NULL,NULL,169,51,NULL),(2991,NULL,'VIZYLAC',NULL,NULL,NULL,NULL,167,51,NULL),(2992,NULL,'VIZYLAC SYP',NULL,NULL,NULL,NULL,167,51,NULL),(2993,NULL,'VOGLET 0.3',NULL,NULL,NULL,NULL,167,51,NULL),(2994,NULL,'VOGLET 0.2',NULL,NULL,NULL,NULL,167,51,NULL),(2995,NULL,'VOGLET-M.03 1',NULL,NULL,NULL,NULL,167,51,NULL),(2996,NULL,'VOLDASE DP-10',NULL,NULL,NULL,NULL,167,51,NULL),(2997,NULL,'VOLRAB 20 INJ',NULL,NULL,NULL,NULL,NULL,51,NULL),(2998,NULL,'VOLRAB 20MG',NULL,NULL,NULL,NULL,167,51,NULL),(2999,NULL,'VOMIKIND INJ',NULL,NULL,NULL,NULL,167,51,NULL),(3000,NULL,'VOMIKIND SYP',NULL,NULL,NULL,NULL,167,51,NULL),(3001,NULL,'VOVERAN 50',NULL,NULL,NULL,NULL,167,51,NULL),(3002,NULL,'VOVERAN INJECTIONS',NULL,NULL,NULL,NULL,167,51,NULL),(3003,NULL,'VOVERAN PLUS TAB',NULL,NULL,NULL,NULL,167,51,NULL),(3004,NULL,'VOVIDASE DP',NULL,NULL,NULL,NULL,167,51,NULL),(3005,NULL,'VOXIMOX CL 625',NULL,NULL,NULL,NULL,167,51,NULL),(3006,NULL,'VAL D3 PLUS DROPS 5ml',NULL,NULL,NULL,NULL,183,51,NULL),(3007,NULL,'VALYTE ORANGE',NULL,NULL,NULL,NULL,215,51,NULL),(3008,NULL,'VELDASE D',NULL,NULL,NULL,NULL,167,51,NULL),(3009,NULL,'WELLNOR 10',NULL,NULL,NULL,NULL,167,51,NULL),(3010,NULL,'WELSET INJ',NULL,NULL,NULL,NULL,170,51,NULL),(3011,NULL,'WELTEN-M',NULL,NULL,NULL,NULL,167,51,NULL),(3012,NULL,'WHISPER CHOICE ONXXL6S',NULL,NULL,NULL,NULL,NULL,51,NULL),(3013,NULL,'WHISPER CHOICE ULTRA 6S',NULL,NULL,NULL,NULL,167,51,NULL),(3014,NULL,'WHISPER CHOICE XL 6s',NULL,NULL,NULL,NULL,NULL,51,NULL),(3015,NULL,'WHITEFIELD OINTMENT',NULL,NULL,NULL,NULL,167,51,NULL),(3016,NULL,'WINKAST-FX',NULL,NULL,NULL,NULL,167,51,NULL),(3017,NULL,'VOXICEF SL 1.5mg',NULL,NULL,NULL,NULL,170,51,NULL),(3018,NULL,'WRIST SPLINT L LEFT',NULL,NULL,NULL,NULL,NULL,51,NULL),(3019,NULL,'WRIST SPLINT MEDIUM LEFT DYNA',NULL,NULL,NULL,NULL,NULL,51,NULL),(3020,NULL,'WRIST SPLINT RIGHT MEDIUM',NULL,NULL,NULL,NULL,NULL,51,NULL),(3021,NULL,'WRIST SPLINTLARGE RIGHT DYNA',NULL,NULL,NULL,NULL,NULL,51,NULL),(3022,NULL,'VYSOLONE-10',NULL,NULL,NULL,NULL,167,51,NULL),(3023,NULL,'VYSOLONE-5',NULL,NULL,NULL,NULL,167,51,NULL),(3024,NULL,'X-POD 200',NULL,NULL,NULL,NULL,167,51,NULL),(3025,NULL,'XONE IGM INJ',NULL,NULL,NULL,NULL,167,51,NULL),(3026,NULL,'XYMEX DROPS',NULL,NULL,NULL,NULL,167,51,NULL),(3027,NULL,'XYZAL 5MG',NULL,NULL,NULL,NULL,167,51,NULL),(3028,NULL,'XYZAL SYP',NULL,NULL,NULL,NULL,169,51,NULL),(3029,NULL,'XYZAL TAB',NULL,NULL,NULL,NULL,167,51,NULL),(3030,NULL,'Z BERRY 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(3031,NULL,'ZEKACIN 100 MG',NULL,NULL,NULL,NULL,NULL,51,NULL),(3032,NULL,'ZENTEL',NULL,NULL,NULL,NULL,167,51,NULL),(3033,NULL,'ZENTEL SYP',NULL,NULL,NULL,NULL,179,51,NULL),(3034,NULL,'ZERODOL SP',NULL,NULL,NULL,NULL,167,51,NULL),(3035,NULL,'ZERODOL (TAB)',NULL,NULL,NULL,NULL,167,51,NULL),(3036,NULL,'ZERODOL S TAB',NULL,NULL,NULL,NULL,167,51,NULL),(3037,NULL,'ZERODOL SPAS 100MG',NULL,NULL,NULL,NULL,167,51,NULL),(3038,NULL,'ZERODOL TH',NULL,NULL,NULL,NULL,167,51,NULL),(3039,NULL,'ZEROSTAT VT SPACER',NULL,NULL,NULL,NULL,167,51,NULL),(3040,NULL,'ZINCO-MN SYRUP',NULL,NULL,NULL,NULL,169,51,NULL),(3041,NULL,'ZINCOA TAB',NULL,NULL,NULL,NULL,167,51,NULL),(3042,NULL,'ZINCOVIT SYRUP',NULL,NULL,NULL,NULL,167,51,NULL),(3043,NULL,'ZINCOVIT',NULL,NULL,NULL,NULL,167,51,NULL),(3044,NULL,'ZINCOVIT DROPS 15ML',NULL,NULL,NULL,NULL,167,51,NULL),(3045,NULL,'ZITBLOW 20MG',NULL,NULL,NULL,NULL,168,51,NULL),(3046,NULL,'ZITHROLECT',NULL,NULL,NULL,NULL,167,51,NULL),(3047,NULL,'ZITOTEC 200',NULL,NULL,NULL,NULL,167,51,NULL),(3048,NULL,'ZIX MR',NULL,NULL,NULL,NULL,167,51,NULL),(3049,NULL,'ZOLFRESH 10MG',NULL,NULL,NULL,NULL,167,51,NULL),(3050,NULL,'ZOLFRESH 5',NULL,NULL,NULL,NULL,167,51,NULL),(3051,NULL,'ZONORAB D',NULL,NULL,NULL,NULL,167,51,NULL),(3052,NULL,'ZORBERRY DROPS 30 ML',NULL,NULL,NULL,NULL,182,51,NULL),(3053,NULL,'ZORBERRY SUS 200 ML',NULL,NULL,NULL,NULL,179,51,NULL),(3054,NULL,'ZORVIN KID SYRUP 100ML',NULL,NULL,NULL,NULL,169,51,NULL),(3055,NULL,'ZOVIRAX 200 TAB',NULL,NULL,NULL,NULL,167,51,NULL),(3056,NULL,'ZOVIRAX 800 800',NULL,NULL,NULL,NULL,167,51,NULL),(3057,NULL,'ZUVISTON TAB',NULL,NULL,NULL,NULL,167,51,NULL),(3058,NULL,'ZYLD 300',NULL,NULL,NULL,NULL,167,51,NULL),(3059,NULL,'ZYLYTE ORS POWDER 1',NULL,NULL,NULL,NULL,189,51,NULL),(3060,NULL,'ZYOXIN',NULL,NULL,NULL,NULL,167,51,NULL),(3061,NULL,'ZYRTEC SYP 60 ML',NULL,NULL,NULL,NULL,167,51,NULL),(3062,NULL,'ZYSET INJ 2.ML',NULL,NULL,NULL,NULL,NULL,51,NULL),(3063,NULL,'ZYTEE GEL 10 ML',NULL,NULL,NULL,NULL,172,51,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_medicinemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_medicinemaster_new`
--

DROP TABLE IF EXISTS `ayurvedaapp_medicinemaster_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_medicinemaster_new` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `itemcode` varchar(100) DEFAULT NULL,
  `itemnm` varchar(300) NOT NULL,
  `Generic_name` varchar(300) DEFAULT NULL,
  `racknumber` varchar(300) DEFAULT NULL,
  `Sideeffect` varchar(300) DEFAULT NULL,
  `hsncode` varchar(300) DEFAULT NULL,
  `Subcategory_name_id` bigint DEFAULT NULL,
  `bsuntid_id` bigint NOT NULL,
  `taxpercentage_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_medicine_Subcategory_name_id_8806bb43_fk_ayurvedaa` (`Subcategory_name_id`),
  KEY `ayurvedaapp_medicine_bsuntid_id_51415670_fk_ayurvedaa` (`bsuntid_id`),
  KEY `ayurvedaapp_medicine_taxpercentage_id_b0c76334_fk_ayurvedaa` (`taxpercentage_id`),
  CONSTRAINT `ayurvedaapp_medicine_bsuntid_id_51415670_fk_ayurvedaa` FOREIGN KEY (`bsuntid_id`) REFERENCES `ayurvedaapp_baseunit` (`id`),
  CONSTRAINT `ayurvedaapp_medicine_Subcategory_name_id_8806bb43_fk_ayurvedaa` FOREIGN KEY (`Subcategory_name_id`) REFERENCES `ayurvedaapp_itemsubcategory` (`id`),
  CONSTRAINT `ayurvedaapp_medicine_taxpercentage_id_b0c76334_fk_ayurvedaa` FOREIGN KEY (`taxpercentage_id`) REFERENCES `ayurvedaapp_taxmaster` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medicinemaster_new`
--

LOCK TABLES `ayurvedaapp_medicinemaster_new` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medicinemaster_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_medicinemaster_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_medicinemasterrate`
--

DROP TABLE IF EXISTS `ayurvedaapp_medicinemasterrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_medicinemasterrate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mrp` varchar(300) DEFAULT NULL,
  `branchid_id` bigint DEFAULT NULL,
  `itemid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_medicine_branchid_id_a954a868_fk_ayurvedaa` (`branchid_id`),
  KEY `ayurvedaapp_medicine_itemid_id_6bf0362b_fk_ayurvedaa` (`itemid_id`),
  CONSTRAINT `ayurvedaapp_medicine_branchid_id_a954a868_fk_ayurvedaa` FOREIGN KEY (`branchid_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_medicine_itemid_id_6bf0362b_fk_ayurvedaa` FOREIGN KEY (`itemid_id`) REFERENCES `ayurvedaapp_medicinemaster_new` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_medicinemasterrate`
--

LOCK TABLES `ayurvedaapp_medicinemasterrate` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_medicinemasterrate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_medicinemasterrate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_menudetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_menudetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_menudetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icon` varchar(400) NOT NULL,
  `menuname` varchar(400) NOT NULL,
  `link` varchar(400) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `menuheadingname_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_menudeta_menuheadingname_id_63331d54_fk_ayurvedaa` (`menuheadingname_id`),
  CONSTRAINT `ayurvedaapp_menudeta_menuheadingname_id_63331d54_fk_ayurvedaa` FOREIGN KEY (`menuheadingname_id`) REFERENCES `ayurvedaapp_menuheadingdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_menudetails`
--

LOCK TABLES `ayurvedaapp_menudetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_menudetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_menudetails` VALUES (6,'patientdetail.svg','Patient Details','patientdetails',1,10),(7,'patientdetail.svg','Appointments','appointment',1,10),(8,'treatmenthospital.svg','Treatments Details','treatmentmaster',1,11),(9,'treatmenthospital.svg','Treatments Record','treatmentplan',0,11),(10,'patientallocation.svg','Patient Room Booking','patientadmission',0,10),(11,'patienthistory.svg','Patient Case History','case-history',1,10),(12,'dailytreatent.svg','Discharge','discharge',0,10),(13,'dailytreatent.svg','Invoice','pharmacy_invoice',1,10),(14,'treatmenthospital.svg','Precheck','opvitals',0,11),(15,'dailytr.svg','Daily Treatments','dailytreatmentrecord',0,11),(16,'treatment.svg','Treatments Invoice','treatmentinvoice',1,11),(17,'itemdetails.svg','Category','category',1,12),(18,'itemdetails.svg',' Sub Category','subcategory',1,12),(19,'itemdetails.svg','Medicine Master','medicinemasterdt',1,12),(20,'itemdetails.svg','Medicne Company','Companymaster',1,12),(21,'itemdetails.svg','Stock Details','storestockentry',1,12),(22,'itemdetails.svg','Reorder Level Details','reorderlevel',1,12),(23,'staffdetails.svg','Staff Details','staffdetail',1,13),(24,'staffallocation.svg','Staff Allocation','staffallocation',1,13),(25,'prescription.svg','Case History','case-history',1,16),(26,'hospitaltable.svg','Hospital Registration','hospital',1,14),(27,'branch.svg','Branch','branch',1,14),(28,'country.svg','Country','countryform',1,15),(29,'state.svg','State','state',1,15),(30,'district.svg','District','district',1,15),(31,'city.svg','City','city',1,15),(32,'department.svg','Department','department',1,15),(33,'designation.svg','Designation','designation',1,15),(34,'roomallocation.svg ','Room','room',1,15),(35,'equipment.svg','Equipment','equipment',1,15),(36,'baseunit.svg','Base Unit','baseunitdt',1,15),(37,'unit.svg','Unit','saveunit',1,15),(38,'store.svg','Store','stockdt',1,15),(39,'supplier.svg','Supplier Details','supplierdetails',1,15),(40,'menu.svg','Menu Heading  Details','menuheading',1,17),(41,'menu.svg','Menu','menu',1,17),(42,'role.svg','Role','roledetails',1,17),(43,'rolealc.svg','Role Assign','roleassigndt',1,17),(44,'menu.svg','Menu Allocation','menu_list',1,17),(45,'enquiry.svg','Enquiry Details','enquirydetails',1,18),(46,'followup.svg','Follow Up','followupdt',1,18),(47,'sample.svg','mm','',0,12),(48,'ip.svg','Patient Admission','ipconvertion',0,10),(49,'purchase_order.svg','Purchase Order','purchaseorderdetails',1,12),(50,'itemdetails.svg','Grn','grndetails',1,12),(51,'itemdetails.svg','Tax Rate','savetax',1,12),(52,'itemdetails.svg','Treatment Allocation  Record','nextreatment',0,11),(53,'city.svg','Source Details','sourcedt',1,15),(58,'enquiry.svg','Trash Enquiries','trash_enquiries',1,18),(59,'itemdetails.svg','Diet','add_diet',1,15),(60,'purchase_order.svg','Daily Report Analysis','dailyinc',1,19),(61,'ippatient.svg','IP Admission','ippatient',1,20),(62,'ipdaily.svg','Medication Administration Record','ipdaily',1,20),(63,'dailytreatent.svg','Discharge','discharge',1,20),(64,'treatmenthospital.svg','consolidated IP bill','ipbill',1,20),(65,'roomallocation.svg','Room Shifting','changeroom',1,20),(66,'treatmenthospital.svg','Expanded Bill','ipbillexpand',1,20),(67,'roomallocation.svg','Room Booking','admission',1,20),(68,'packagemain.svg','Package Creation','packageelements',1,15),(69,'dailytreatent.svg','Package Due Payment','duepayemnt',1,20),(70,'dailytreatent.svg','Package Extension','patientpackageextendeddtsave',1,20),(71,'patientdetail.svg','Treatment Room Creation','treatmentroom',1,21),(72,'roomallocation.svg','Treatment Room  Booking','treatment_room_booking',1,21),(73,'menu.svg','Dashboard Allocation','dashboard_list',1,22),(74,'menu.svg','Dashboard Design','dashboarddetails',1,22),(77,'ippatient.svg','OP Admission','oppatientdetails',1,21),(78,'ippatient.svg','OP Due Payment','opduepayemnt',1,21),(79,'menu.svg','Test Master Creation','testmaster',1,23),(80,'menu.svg','Test Child','testchild',1,23),(81,'menu.svg','Vitals','vitals',1,10),(82,'menu.svg','Food to be avoided','food_create',1,15),(83,'menu.svg','Lab Result','labresultadd',1,23),(84,'menu.svg','Casehistory View For Pharmacy','case_history_listforpharmacy',1,10),(85,'menu.svg','Previou Casehistory Assign','previouscasehistory_list',1,10),(86,'menu.svg','Category','inventorycategory',1,24),(87,'menu.svg','Company ','InventoryCompanymaster',1,24),(88,'menu.svg','Item Master','inventorymasterdt',1,24),(89,'menu.svg','Stock','inventorystockentry',1,24),(90,'menu.svg','Reorder','inventoryreorderlevel',1,24),(91,'menu.svg','Invoice','inventory_invoice',1,24),(92,'patientmain.svg','Today appoinment','todayappointmentdirect',1,10),(93,'menu.svg','Credit Note','create_creditnote',1,12),(94,'master.svg','Online Appointments','online-appointment',1,10),(95,'menu.svg','Patient Case History View','previouscasehistoryview_list/',1,10),(96,'patientmain.svg','Smilee Appointment','smilee-appointment',1,10),(97,'menu.svg','Invoice','pharmacy_invoice',1,12),(98,'menu.svg','Add Lab Test','lab_test_requisition',1,23),(99,'menu.svg','Lab Invoice ','lab_invoice',1,23),(100,'menu.svg','Lab Test Unit','lab_unit_create',1,23),(101,'menu.svg','Lab test Normal Entry','normalevaluesave',1,23),(102,'menu.svg','Add Header and Footer','header_detail',1,23),(103,'menu.svg','Procedure Master','procedure_master_add',1,15),(104,'menu.svg','Casuality Invoice','casuality_invoice_view',1,10);
/*!40000 ALTER TABLE `ayurvedaapp_menudetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_menuheadingdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_menuheadingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_menuheadingdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `icon` varchar(400) NOT NULL,
  `menuheadingname` varchar(400) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_menuheadingdetails`
--

LOCK TABLES `ayurvedaapp_menuheadingdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_menuheadingdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_menuheadingdetails` VALUES (10,'patientmain.svg','Patient',1),(11,'treatment.svg','Treatment',1),(12,'medicine.svg','Pharmacy',1),(13,'staff.svg','Staff',1),(14,'hospital.svg',' Settings',1),(15,'master.svg','Master',1),(16,'packagemain.svg',' Doctor',1),(17,'staff.svg','Menu Managment',1),(18,'enquiry.svg','CRM',1),(19,'master.svg','Report',1),(20,'ip.svg','IP Patient',1),(21,'sample.svg','OP Patient',1),(22,'menu.svg','Dashboard Settings',1),(23,'itemdetails.svg','Laboratory',1),(24,'menu.svg','Millet',1);
/*!40000 ALTER TABLE `ayurvedaapp_menuheadingdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_menumanagement`
--

DROP TABLE IF EXISTS `ayurvedaapp_menumanagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_menumanagement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `add` varchar(400) NOT NULL,
  `view` varchar(400) NOT NULL,
  `edit` varchar(400) NOT NULL,
  `delete` varchar(400) NOT NULL,
  `menuid_id` bigint NOT NULL,
  `roleid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_menumana_menuid_id_c4e2483f_fk_ayurvedaa` (`menuid_id`),
  KEY `ayurvedaapp_menumana_roleid_id_d3d72a32_fk_ayurvedaa` (`roleid_id`),
  CONSTRAINT `ayurvedaapp_menumana_menuid_id_c4e2483f_fk_ayurvedaa` FOREIGN KEY (`menuid_id`) REFERENCES `ayurvedaapp_menudetails` (`id`),
  CONSTRAINT `ayurvedaapp_menumana_roleid_id_d3d72a32_fk_ayurvedaa` FOREIGN KEY (`roleid_id`) REFERENCES `ayurvedaapp_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4097 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_menumanagement`
--

LOCK TABLES `ayurvedaapp_menumanagement` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_menumanagement` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_menumanagement` VALUES (2639,'1','1','1','1',6,25),(2640,'1','1','1','1',7,25),(2641,'1','1','1','1',11,25),(2642,'1','1','1','1',13,25),(2643,'1','1','1','1',81,25),(2644,'1','1','1','1',84,25),(2645,'1','1','1','1',85,25),(2646,'1','1','1','1',92,25),(2647,'1','1','1','1',94,25),(2648,'1','1','1','1',95,25),(2649,'1','1','1','1',96,25),(2650,'1','1','1','1',8,25),(2651,'1','1','1','1',16,25),(2652,'1','1','1','1',17,25),(2653,'1','1','1','1',18,25),(2654,'1','1','1','1',19,25),(2655,'1','1','1','1',20,25),(2656,'1','1','1','1',21,25),(2657,'1','1','1','1',22,25),(2658,'1','1','1','1',49,25),(2659,'1','1','1','1',50,25),(2660,'1','1','1','1',51,25),(2661,'1','1','1','1',93,25),(2662,'1','1','1','1',23,25),(2663,'1','1','1','1',24,25),(2664,'1','1','1','1',26,25),(2665,'1','1','1','1',27,25),(2666,'1','1','1','1',28,25),(2667,'1','1','1','1',29,25),(2668,'1','1','1','1',30,25),(2669,'1','1','1','1',31,25),(2670,'1','1','1','1',32,25),(2671,'1','1','1','1',33,25),(2672,'1','1','1','1',34,25),(2673,'1','1','1','1',35,25),(2674,'1','1','1','1',36,25),(2675,'1','1','1','1',37,25),(2676,'1','1','1','1',38,25),(2677,'1','1','1','1',39,25),(2678,'1','1','1','1',53,25),(2679,'1','1','1','1',59,25),(2680,'1','1','1','1',68,25),(2681,'1','1','1','1',82,25),(2682,'1','1','1','1',25,25),(2683,'1','1','1','1',40,25),(2684,'1','1','1','1',41,25),(2685,'1','1','1','1',42,25),(2686,'1','1','1','1',43,25),(2687,'1','1','1','1',44,25),(2688,'1','1','1','1',45,25),(2689,'1','1','1','1',46,25),(2690,'1','1','1','1',58,25),(2691,'1','1','1','1',60,25),(2692,'1','1','1','1',61,25),(2693,'1','1','1','1',62,25),(2694,'1','1','1','1',63,25),(2695,'1','1','1','1',64,25),(2696,'1','1','1','1',65,25),(2697,'1','1','1','1',66,25),(2698,'1','1','1','1',67,25),(2699,'1','1','1','1',69,25),(2700,'1','1','1','1',70,25),(2701,'1','1','1','1',71,25),(2702,'1','1','1','1',72,25),(2703,'1','1','1','1',77,25),(2704,'1','1','1','1',78,25),(2705,'1','1','1','1',73,25),(2706,'1','1','1','1',74,25),(2707,'1','1','1','1',79,25),(2708,'1','1','1','1',80,25),(2709,'1','1','1','1',83,25),(2710,'1','1','1','1',86,25),(2711,'1','1','1','1',87,25),(2712,'1','1','1','1',88,25),(2713,'1','1','1','1',89,25),(2714,'1','1','1','1',90,25),(2715,'1','1','1','1',91,25),(2716,'1','1','1','1',6,10),(2717,'1','1','1','1',7,10),(2718,'1','1','1','1',11,10),(2719,'1','1','1','1',13,10),(2720,'1','1','1','1',81,10),(2721,'1','1','1','1',84,10),(2722,'1','1','1','1',85,10),(2723,'1','1','1','1',92,10),(2724,'1','1','1','1',94,10),(2725,'1','1','1','1',95,10),(2726,'1','1','1','1',96,10),(2727,'1','1','1','1',8,10),(2728,'1','1','1','1',16,10),(2729,'1','1','1','1',17,10),(2730,'1','1','1','1',18,10),(2731,'1','1','1','1',19,10),(2732,'1','1','1','1',20,10),(2733,'1','1','1','1',21,10),(2734,'1','1','1','1',22,10),(2735,'1','1','1','1',49,10),(2736,'1','1','1','1',50,10),(2737,'1','1','1','1',51,10),(2738,'1','1','1','1',93,10),(2739,'1','1','1','1',23,10),(2740,'1','1','1','1',24,10),(2741,'1','1','1','1',26,10),(2742,'1','1','1','1',27,10),(2743,'1','1','1','1',28,10),(2744,'1','1','1','1',29,10),(2745,'1','1','1','1',30,10),(2746,'1','1','1','1',31,10),(2747,'1','1','1','1',32,10),(2748,'1','1','1','1',33,10),(2749,'1','1','1','1',34,10),(2750,'1','1','1','1',35,10),(2751,'1','1','1','1',36,10),(2752,'1','1','1','1',37,10),(2753,'1','1','1','1',38,10),(2754,'1','1','1','1',39,10),(2755,'1','1','1','1',53,10),(2756,'1','1','1','1',59,10),(2757,'1','1','1','1',68,10),(2758,'1','1','1','1',82,10),(2759,'1','1','1','1',25,10),(2760,'1','1','1','1',40,10),(2761,'1','1','1','1',41,10),(2762,'1','1','1','1',42,10),(2763,'1','1','1','1',43,10),(2764,'1','1','1','1',44,10),(2765,'1','1','1','1',45,10),(2766,'1','1','1','1',46,10),(2767,'1','1','1','1',58,10),(2768,'1','1','1','1',60,10),(2769,'1','1','1','1',61,10),(2770,'1','1','1','1',62,10),(2771,'1','1','1','1',63,10),(2772,'1','1','1','1',64,10),(2773,'1','1','1','1',65,10),(2774,'1','1','1','1',66,10),(2775,'1','1','1','1',67,10),(2776,'1','1','1','1',69,10),(2777,'1','1','1','1',70,10),(2778,'1','1','1','1',71,10),(2779,'1','1','1','1',72,10),(2780,'1','1','1','1',77,10),(2781,'1','1','1','1',78,10),(2782,'1','1','1','1',73,10),(2783,'1','1','1','1',74,10),(2784,'1','1','1','1',79,10),(2785,'1','1','1','1',80,10),(2786,'1','1','1','1',83,10),(2787,'1','1','1','1',86,10),(2788,'1','1','1','1',87,10),(2789,'1','1','1','1',88,10),(2790,'1','1','1','1',89,10),(2791,'1','1','1','1',90,10),(2792,'1','1','1','1',91,10),(3273,'1','1','1','1',6,21),(3274,'1','1','1','1',7,21),(3275,'1','1','1','1',11,21),(3276,'1','1','1','1',13,21),(3277,'1','1','1','1',81,21),(3278,'1','1','1','1',84,21),(3279,'1','1','1','1',85,21),(3280,'1','1','1','1',92,21),(3281,'1','1','1','1',94,21),(3282,'1','1','1','1',8,21),(3283,'1','1','1','1',16,21),(3284,'1','1','1','1',17,21),(3285,'1','1','1','1',18,21),(3286,'1','1','1','1',19,21),(3287,'1','1','1','1',20,21),(3288,'1','1','1','1',21,21),(3289,'1','1','1','1',22,21),(3290,'1','1','1','1',49,21),(3291,'1','1','1','1',50,21),(3292,'1','1','1','1',51,21),(3293,'1','1','1','1',93,21),(3294,'1','1','1','1',28,21),(3295,'1','1','1','1',29,21),(3296,'1','1','1','1',30,21),(3297,'1','1','1','1',31,21),(3298,'1','1','1','1',34,21),(3299,'1','1','1','1',35,21),(3300,'1','1','1','1',36,21),(3301,'1','1','1','1',37,21),(3302,'1','1','1','1',38,21),(3303,'1','1','1','1',39,21),(3304,'1','1','1','1',53,21),(3305,'1','1','1','1',68,21),(3306,'1','1','1','1',82,21),(3307,'1','1','1','1',40,21),(3308,'1','1','1','1',41,21),(3309,'1','1','1','1',42,21),(3310,'1','1','1','1',43,21),(3311,'1','1','1','1',44,21),(3312,'1','1','1','1',60,21),(3313,'1','1','1','1',71,21),(3314,'1','1','1','1',72,21),(3315,'1','1','1','1',77,21),(3316,'1','1','1','1',78,21),(3317,'1','1','1','1',86,21),(3318,'1','1','1','1',87,21),(3319,'1','1','1','1',88,21),(3320,'1','1','1','1',89,21),(3321,'1','1','1','1',90,21),(3322,'1','1','1','1',91,21),(3427,'1','1','1','1',17,26),(3428,'1','1','1','1',18,26),(3429,'1','1','1','1',19,26),(3430,'1','1','1','1',20,26),(3431,'1','1','1','1',21,26),(3432,'1','1','1','1',22,26),(3433,'1','1','1','1',49,26),(3434,'1','1','1','1',50,26),(3435,'1','1','1','1',51,26),(3436,'1','1','1','1',93,26),(3437,'1','1','1','1',97,26),(3438,'1','1','1','1',23,26),(3439,'1','1','1','1',24,26),(3440,'1','1','1','1',28,26),(3441,'1','1','1','1',29,26),(3442,'1','1','1','1',30,26),(3443,'1','1','1','1',31,26),(3444,'1','1','1','1',32,26),(3445,'1','1','1','1',33,26),(3446,'1','1','1','1',35,26),(3447,'1','1','1','1',36,26),(3448,'1','1','1','1',37,26),(3449,'1','1','1','1',38,26),(3450,'1','1','1','1',39,26),(3451,'1','1','1','1',59,26),(3452,'1','1','1','1',82,26),(3453,'1','1','1','1',40,26),(3454,'1','1','1','1',41,26),(3455,'1','1','1','1',42,26),(3456,'1','1','1','1',43,26),(3457,'1','1','1','1',44,26),(3458,'1','1','1','1',73,26),(3459,'1','1','1','1',74,26),(3701,'1','1','1','1',8,27),(3702,'1','1','1','1',16,27),(3703,'1','1','1','1',17,27),(3704,'1','1','1','1',18,27),(3705,'1','1','1','1',19,27),(3706,'1','1','1','1',20,27),(3707,'1','1','1','1',21,27),(3708,'1','1','1','1',22,27),(3709,'1','1','1','1',49,27),(3710,'1','1','1','1',50,27),(3711,'1','1','1','1',51,27),(3712,'1','1','1','1',93,27),(3713,'1','1','1','1',97,27),(3714,'1','1','1','1',28,27),(3715,'1','1','1','1',29,27),(3716,'1','1','1','1',30,27),(3717,'1','1','1','1',31,27),(3718,'1','1','1','1',32,27),(3719,'1','1','1','1',33,27),(3720,'1','1','1','1',34,27),(3721,'1','1','1','1',36,27),(3722,'1','1','1','1',37,27),(3723,'1','1','1','1',38,27),(3724,'1','1','1','1',39,27),(3725,'1','1','1','1',53,27),(3726,'1','1','1','1',59,27),(3727,'1','1','1','1',68,27),(3728,'1','1','1','1',82,27),(3729,'1','1','1','1',6,15),(3730,'1','1','1','1',7,15),(3731,'1','1','1','1',13,15),(3732,'1','1','1','1',81,15),(3733,'1','1','1','1',85,15),(3734,'1','1','1','1',28,15),(3735,'1','1','1','1',29,15),(3736,'1','1','1','1',30,15),(3737,'1','1','1','1',31,15),(3738,'1','1','1','1',32,15),(3739,'1','1','1','1',33,15),(3740,'1','1','1','1',34,15),(3741,'1','1','1','1',35,15),(3742,'1','1','1','1',36,15),(3743,'1','1','1','1',37,15),(3744,'1','1','1','1',38,15),(3745,'1','1','1','1',39,15),(3746,'1','1','1','1',53,15),(3747,'1','1','1','1',68,15),(3748,'1','1','1','1',82,15),(3749,'1','1','1','1',45,15),(3750,'1','1','1','1',46,15),(3751,'1','1','1','1',58,15),(3752,'1','1','1','1',79,15),(3753,'1','1','1','1',80,15),(3754,'1','1','1','1',83,15),(4031,'1','1','1','1',6,1),(4032,'1','1','1','1',7,1),(4033,'1','1','1','1',11,1),(4034,'1','1','1','1',13,1),(4035,'1','1','1','1',81,1),(4036,'1','1','1','1',92,1),(4037,'1','1','1','1',95,1),(4038,'1','1','1','1',104,1),(4039,'1','1','1','1',8,1),(4040,'1','1','1','1',16,1),(4041,'1','1','1','1',17,1),(4042,'1','1','1','1',18,1),(4043,'1','1','1','1',19,1),(4044,'1','1','1','1',20,1),(4045,'1','1','1','1',21,1),(4046,'1','1','1','1',22,1),(4047,'1','1','1','1',51,1),(4048,'1','1','1','1',93,1),(4049,'1','1','1','1',23,1),(4050,'1','1','1','1',24,1),(4051,'1','1','1','1',26,1),(4052,'1','1','1','1',27,1),(4053,'1','1','1','1',28,1),(4054,'1','1','1','1',29,1),(4055,'1','1','1','1',30,1),(4056,'1','1','1','1',31,1),(4057,'1','1','1','1',32,1),(4058,'1','1','1','1',33,1),(4059,'1','1','1','1',34,1),(4060,'1','1','1','1',35,1),(4061,'1','1','1','1',36,1),(4062,'1','1','1','1',37,1),(4063,'1','1','1','1',38,1),(4064,'1','1','1','1',39,1),(4065,'1','1','1','1',53,1),(4066,'1','1','1','1',59,1),(4067,'1','1','1','1',68,1),(4068,'1','1','1','1',82,1),(4069,'1','1','1','1',103,1),(4070,'1','1','1','1',25,1),(4071,'1','1','1','1',41,1),(4072,'1','1','1','1',42,1),(4073,'1','1','1','1',43,1),(4074,'1','1','1','1',44,1),(4075,'1','1','1','1',45,1),(4076,'1','1','1','1',46,1),(4077,'1','1','1','1',58,1),(4078,'1','1','1','1',61,1),(4079,'1','1','1','1',62,1),(4080,'1','1','1','1',63,1),(4081,'1','1','1','1',64,1),(4082,'1','1','1','1',65,1),(4083,'1','1','1','1',66,1),(4084,'1','1','1','1',67,1),(4085,'1','1','1','1',69,1),(4086,'1','1','1','1',70,1),(4087,'1','1','1','1',73,1),(4088,'1','1','1','1',74,1),(4089,'1','1','1','1',79,1),(4090,'1','1','1','1',80,1),(4091,'1','1','1','1',83,1),(4092,'1','1','1','1',98,1),(4093,'1','1','1','1',99,1),(4094,'1','1','1','1',100,1),(4095,'1','1','1','1',101,1),(4096,'1','1','1','1',102,1);
/*!40000 ALTER TABLE `ayurvedaapp_menumanagement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_menustralhistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_menustralhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_menustralhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `menarche` varchar(800) NOT NULL,
  `menopauose` varchar(800) NOT NULL,
  `bleeding` varchar(800) NOT NULL,
  `interval` varchar(800) NOT NULL,
  `clots` varchar(800) NOT NULL,
  `colour` varchar(800) NOT NULL,
  `Complaints` varchar(800) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_menustra_MR_Number_id_244579bf_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_menustra_MR_Number_id_244579bf_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_menustralhistory`
--

LOCK TABLES `ayurvedaapp_menustralhistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_menustralhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_menustralhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_newinvoicechild`
--

DROP TABLE IF EXISTS `ayurvedaapp_newinvoicechild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_newinvoicechild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `particulars` varchar(400) NOT NULL,
  `amount` double NOT NULL,
  `sutotal` double NOT NULL,
  `currentdate` datetime(6) NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `batchno` varchar(400) DEFAULT NULL,
  `expirydate` varchar(400) DEFAULT NULL,
  `mfg` varchar(400) DEFAULT NULL,
  `unt` varchar(400) NOT NULL,
  `hsncode` varchar(400) NOT NULL,
  `tax` double NOT NULL,
  `taxamount` double NOT NULL,
  `baseqty` varchar(400) NOT NULL,
  `sgst` varchar(400) DEFAULT NULL,
  `cgst` varchar(400) DEFAULT NULL,
  `sgstamount` varchar(400) DEFAULT NULL,
  `cgstamount` varchar(400) DEFAULT NULL,
  `taxableamount` varchar(400) DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `suppid_id` bigint DEFAULT NULL,
  `invmasterid_id` bigint DEFAULT NULL,
  `returned_qty` int NOT NULL,
  `manufacturedate` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_newinvoi_Mrno_id_2997e997_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_newinvoi_suppid_id_9a369a36_fk_ayurvedaa` (`suppid_id`),
  KEY `ayurvedaapp_newinvoi_invmasterid_id_d0e7ce5e_fk_ayurvedaa` (`invmasterid_id`),
  CONSTRAINT `ayurvedaapp_newinvoi_invmasterid_id_d0e7ce5e_fk_ayurvedaa` FOREIGN KEY (`invmasterid_id`) REFERENCES `ayurvedaapp_newinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_Mrno_id_2997e997_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_suppid_id_9a369a36_fk_ayurvedaa` FOREIGN KEY (`suppid_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_newinvoicechild`
--

LOCK TABLES `ayurvedaapp_newinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_newinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_newinvoicechild` VALUES (21,1,'test item',130,130,'2026-05-18 00:00:00.000000','INV26/270001','','testptdt','998989889','testpurpose','2026-06-06','tescomp','PKT','30049099',5,6.19,'PKT','2.50','2.50','3.10','3.10','123.81',NULL,34,21,0,NULL),(22,1,'test item',130,130,'2026-05-22 00:00:00.000000','INV26/270002','','testptdt','998989889','testpurpose','2026-06-06','tescomp','PKT','30049099',5,6.19,'PKT','2.50','2.50','3.10','3.10','123.81',NULL,34,22,0,NULL),(23,5,'test item',130,650,'2026-06-11 00:00:00.000000','INV26/270003','','test7678','8789978789','testpurpose','2026-06-06','tescomp','PKT','30049099',5,30.95,'PKT','2.50','2.50','15.48','15.48','619.05',216,34,23,0,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_newinvoicechild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_newinvoicemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_newinvoicemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_newinvoicemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payementmode` varchar(300) DEFAULT NULL,
  `Invoicenumber` varchar(400) NOT NULL,
  `currentdate` date NOT NULL,
  `subtotal` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `discount` varchar(15) DEFAULT NULL,
  `consultationfee` varchar(400) DEFAULT NULL,
  `consultationfeecumregfee` varchar(400) DEFAULT NULL,
  `restockstatus` tinyint(1) NOT NULL,
  `totalsgstamount` varchar(400) DEFAULT NULL,
  `totalcgstamount` varchar(400) DEFAULT NULL,
  `totaltaxableamount` varchar(400) DEFAULT NULL,
  `cash_amount` varchar(400) DEFAULT NULL,
  `gpay_amount` varchar(400) DEFAULT NULL,
  `card_amount` varchar(400) DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_newinvoi_Mrno_id_ff93c4dd_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_newinvoi_branch_id_18e272a1_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_newinvoi_hospitalname_id_f37ff3ee_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_newinvoi_preparedby_id_7b901b47_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_newinvoi_branch_id_18e272a1_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_hospitalname_id_f37ff3ee_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_Mrno_id_ff93c4dd_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_newinvoi_preparedby_id_7b901b47_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_newinvoicemaster`
--

LOCK TABLES `ayurvedaapp_newinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_newinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_newinvoicemaster` VALUES (21,'Cash','INV26/270001','2026-05-18',130,6.19,0,130,'testptdt','998989889','0.0',NULL,NULL,1,'3.1','3.1','123.81','130.0','0.0','0.0',NULL,5,2,180),(22,'Cash','INV26/270002','2026-05-22',130,6.19,0,130,'testptdt','998989889','0.0',NULL,NULL,1,'3.1','3.1','123.81','130.0','0.0','0.0',NULL,5,2,1),(23,'Cash','INV26/270003','2026-06-11',650,30.95,0,650,'test7678','8789978789','0.0',NULL,NULL,1,'15.48','15.48','619.05','650.0','0.0','0.0',216,5,2,1);
/*!40000 ALTER TABLE `ayurvedaapp_newinvoicemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_nexdoctorprescription`
--

DROP TABLE IF EXISTS `ayurvedaapp_nexdoctorprescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_nexdoctorprescription` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `current_date` date NOT NULL,
  `complaint` varchar(700) NOT NULL,
  `note` longtext NOT NULL,
  `patient_id` bigint DEFAULT NULL,
  `dietid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_nexdocto_patient_id_2fc5d17d_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_nexdocto_dietid_id_725cf359_fk_ayurvedaa` (`dietid_id`),
  CONSTRAINT `ayurvedaapp_nexdocto_dietid_id_725cf359_fk_ayurvedaa` FOREIGN KEY (`dietid_id`) REFERENCES `ayurvedaapp_diet` (`id`),
  CONSTRAINT `ayurvedaapp_nexdocto_patient_id_2fc5d17d_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_nexdoctorprescription`
--

LOCK TABLES `ayurvedaapp_nexdoctorprescription` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_nexdoctorprescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_nexdoctorprescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_nextreatmentdetailschild`
--

DROP TABLE IF EXISTS `ayurvedaapp_nextreatmentdetailschild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_nextreatmentdetailschild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `handled_by` longtext NOT NULL,
  `given_by` longtext NOT NULL,
  `nexmaster_id` bigint DEFAULT NULL,
  `MR_Number_id` bigint DEFAULT NULL,
  `tratmntid_id` bigint DEFAULT NULL,
  `treatment_date` date NOT NULL,
  `treatmenttime` longtext,
  `deletedstatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_nextreat_nexmaster_id_96b5fea3_fk_ayurvedaa` (`nexmaster_id`),
  KEY `ayurvedaapp_nextreat_MR_Number_id_6e261658_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_nextreat_tratmntid_id_c2c4fc7d_fk_ayurvedaa` (`tratmntid_id`),
  CONSTRAINT `ayurvedaapp_nextreat_MR_Number_id_6e261658_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_nextreat_nexmaster_id_96b5fea3_fk_ayurvedaa` FOREIGN KEY (`nexmaster_id`) REFERENCES `ayurvedaapp_nextreatmentdetailsmaster` (`id`),
  CONSTRAINT `ayurvedaapp_nextreat_tratmntid_id_c2c4fc7d_fk_ayurvedaa` FOREIGN KEY (`tratmntid_id`) REFERENCES `ayurvedaapp_treatment_master` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_nextreatmentdetailschild`
--

LOCK TABLES `ayurvedaapp_nextreatmentdetailschild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_nextreatmentdetailschild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_nextreatmentdetailschild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_nextreatmentdetailsmaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_nextreatmentdetailsmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_nextreatmentdetailsmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `room_no` varchar(700) NOT NULL,
  `MR_Number_id` bigint DEFAULT NULL,
  `branchstff_id` bigint DEFAULT NULL,
  `prepairedstaff_id` bigint DEFAULT NULL,
  `casehistoryid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_nextreat_MR_Number_id_c585811a_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_nextreat_branchstff_id_ab94903a_fk_ayurvedaa` (`branchstff_id`),
  KEY `ayurvedaapp_nextreat_prepairedstaff_id_17058df7_fk_ayurvedaa` (`prepairedstaff_id`),
  KEY `ayurvedaapp_nextreat_casehistoryid_id_998d32c4_fk_ayurvedaa` (`casehistoryid_id`),
  CONSTRAINT `ayurvedaapp_nextreat_branchstff_id_ab94903a_fk_ayurvedaa` FOREIGN KEY (`branchstff_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_nextreat_casehistoryid_id_998d32c4_fk_ayurvedaa` FOREIGN KEY (`casehistoryid_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_nextreat_MR_Number_id_c585811a_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_nextreat_prepairedstaff_id_17058df7_fk_ayurvedaa` FOREIGN KEY (`prepairedstaff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_nextreatmentdetailsmaster`
--

LOCK TABLES `ayurvedaapp_nextreatmentdetailsmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_nextreatmentdetailsmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_nextreatmentdetailsmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_normalvaluemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_normalvaluemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_normalvaluemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `gender` varchar(20) DEFAULT NULL,
  `age_from` decimal(5,1) DEFAULT NULL,
  `age_to` decimal(5,1) DEFAULT NULL,
  `min_value` decimal(10,2) NOT NULL,
  `max_value` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `testchild_id` bigint DEFAULT NULL,
  `unit_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_normalva_testchild_id_164171a5_fk_ayurvedaa` (`testchild_id`),
  KEY `ayurvedaapp_normalva_unit_id_c3002600_fk_ayurvedaa` (`unit_id`),
  CONSTRAINT `ayurvedaapp_normalva_testchild_id_164171a5_fk_ayurvedaa` FOREIGN KEY (`testchild_id`) REFERENCES `ayurvedaapp_labtestchild` (`id`),
  CONSTRAINT `ayurvedaapp_normalva_unit_id_c3002600_fk_ayurvedaa` FOREIGN KEY (`unit_id`) REFERENCES `ayurvedaapp_labunitmaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_normalvaluemaster`
--

LOCK TABLES `ayurvedaapp_normalvaluemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_normalvaluemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_normalvaluemaster` VALUES (1,'Male',23.0,45.0,35.00,56.00,1,1,1),(2,'Male',10.0,50.0,100.00,300.00,1,2,1),(3,'Male',10.0,50.0,25.00,88.00,1,3,1),(4,'Male',45.0,80.0,120.00,190.00,1,1,1),(5,'Female',10.0,49.9,100.00,300.00,1,1,1),(6,'Female',20.0,50.0,5.00,100.00,1,3,1),(7,'Male',10.0,60.0,10.00,600.00,1,1,1);
/*!40000 ALTER TABLE `ayurvedaapp_normalvaluemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_obghistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_obghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_obghistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `MenstrualCycle_History` varchar(500) NOT NULL,
  `LMP` varchar(500) NOT NULL,
  `Painclot` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_obghisto_MR_Number_id_a03c0e31_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_obghisto_MR_Number_id_a03c0e31_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_obghistory`
--

LOCK TABLES `ayurvedaapp_obghistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_obghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_obghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_obstretichistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_obstretichistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_obstretichistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `gpal` varchar(1000) NOT NULL,
  `lma` varchar(1000) NOT NULL,
  `edd` varchar(1000) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_obstreti_MR_Number_id_340abb7c_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_obstreti_MR_Number_id_340abb7c_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_obstretichistory`
--

LOCK TABLES `ayurvedaapp_obstretichistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_obstretichistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_obstretichistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_oppackagepayment`
--

DROP TABLE IF EXISTS `ayurvedaapp_oppackagepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_oppackagepayment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `due_amount` decimal(10,2) NOT NULL,
  `bystander_payment` decimal(10,2) NOT NULL,
  `mr_number_id` bigint NOT NULL,
  `package_id_id` bigint DEFAULT NULL,
  `admission_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_oppackag_mr_number_id_abcc7591_fk_ayurvedaa` (`mr_number_id`),
  KEY `ayurvedaapp_oppackag_package_id_id_3a162d86_fk_ayurvedaa` (`package_id_id`),
  KEY `ayurvedaapp_oppackag_admission_id_5d62ae86_fk_ayurvedaa` (`admission_id`),
  CONSTRAINT `ayurvedaapp_oppackag_admission_id_5d62ae86_fk_ayurvedaa` FOREIGN KEY (`admission_id`) REFERENCES `ayurvedaapp_oppatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_oppackag_mr_number_id_abcc7591_fk_ayurvedaa` FOREIGN KEY (`mr_number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_oppackag_package_id_id_3a162d86_fk_ayurvedaa` FOREIGN KEY (`package_id_id`) REFERENCES `ayurvedaapp_packagemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_oppackagepayment`
--

LOCK TABLES `ayurvedaapp_oppackagepayment` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_oppackagepayment` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_oppackagepayment` VALUES (1,0.00,'2026-04-09','2026-04-09','2026-04-11',123.00,3702.00,3579.00,0.00,1,1,1),(2,0.00,'2026-04-09','2026-04-09','2026-04-11',3579.00,3702.00,0.00,0.00,1,1,1),(3,0.00,'2026-05-13','2026-05-13','2026-05-15',2000.00,3702.00,1702.00,0.00,196,1,2),(4,0.00,'2026-05-13','2026-05-13','2026-05-15',1702.00,3702.00,0.00,0.00,196,1,2);
/*!40000 ALTER TABLE `ayurvedaapp_oppackagepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_oppatientadmission`
--

DROP TABLE IF EXISTS `ayurvedaapp_oppatientadmission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_oppatientadmission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bloodgroup` longtext,
  `address` longtext,
  `Current_Date` date NOT NULL,
  `age` varchar(100) NOT NULL,
  `contactnumber` varchar(100) DEFAULT NULL,
  `reasonforadmission` longtext,
  `Admittedstatus` tinyint(1) NOT NULL,
  `need_package` tinyint(1) NOT NULL,
  `total_package_rate` decimal(10,2) DEFAULT NULL,
  `need_bystander` tinyint(1) NOT NULL,
  `bystander_rate` decimal(10,2) DEFAULT NULL,
  `totalpaidamount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `advance_amount` decimal(10,2) NOT NULL,
  `payingamount` decimal(10,2) NOT NULL,
  `amountpaidwithoutbystander` decimal(10,2) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `advancedue` decimal(10,2) NOT NULL,
  `originalpcktotaalamountpaid` decimal(10,2) NOT NULL,
  `totalpackageamountwithoutdiscount` decimal(10,2) NOT NULL,
  `MR_Number_id` bigint DEFAULT NULL,
  `package_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_oppatien_MR_Number_id_98053979_fk_ayurvedaa` (`MR_Number_id`),
  KEY `ayurvedaapp_oppatien_package_id_16ec929d_fk_ayurvedaa` (`package_id`),
  CONSTRAINT `ayurvedaapp_oppatien_MR_Number_id_98053979_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_package_id_16ec929d_fk_ayurvedaa` FOREIGN KEY (`package_id`) REFERENCES `ayurvedaapp_packagemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_oppatientadmission`
--

LOCK TABLES `ayurvedaapp_oppatientadmission` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_oppatientadmission` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_oppatientadmission` VALUES (1,'Unknown','zz','2026-04-09','22','9048272638','Not specified',1,1,3702.00,0,0.00,3702.00,0.00,0.00,123.00,3702.00,3702.00,'2026-04-09','2026-04-11',0.00,3702.00,3702.00,1,1),(2,'Unknown','tst','2026-05-13','23','9895310696','tst',1,1,3702.00,0,0.00,3702.00,0.00,0.00,2000.00,3702.00,3702.00,'2026-05-13','2026-05-15',0.00,3702.00,3702.00,196,1);
/*!40000 ALTER TABLE `ayurvedaapp_oppatientadmission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_oppatienttimeslotbooking`
--

DROP TABLE IF EXISTS `ayurvedaapp_oppatienttimeslotbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_oppatienttimeslotbooking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Gender` varchar(30) NOT NULL,
  `Current_Date` date NOT NULL,
  `bookingdate` date NOT NULL,
  `bookingstarttime` time(6) NOT NULL,
  `bookingendtime` time(6) NOT NULL,
  `bookingstatus` tinyint(1) NOT NULL,
  `bookingenddate` date NOT NULL,
  `branchdt_id` bigint DEFAULT NULL,
  `handledystaff_id` bigint DEFAULT NULL,
  `patientid_id` bigint DEFAULT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `proceduretaken_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_oppatien_branchdt_id_c70a35f6_fk_ayurvedaa` (`branchdt_id`),
  KEY `ayurvedaapp_oppatien_handledystaff_id_cbb651b7_fk_ayurvedaa` (`handledystaff_id`),
  KEY `ayurvedaapp_oppatien_patientid_id_8aa70480_fk_ayurvedaa` (`patientid_id`),
  KEY `ayurvedaapp_oppatien_preparedby_id_de88e420_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_oppatien_proceduretaken_id_30bd3904_fk_ayurvedaa` (`proceduretaken_id`),
  CONSTRAINT `ayurvedaapp_oppatien_branchdt_id_c70a35f6_fk_ayurvedaa` FOREIGN KEY (`branchdt_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_handledystaff_id_cbb651b7_fk_ayurvedaa` FOREIGN KEY (`handledystaff_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_patientid_id_8aa70480_fk_ayurvedaa` FOREIGN KEY (`patientid_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_preparedby_id_de88e420_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_proceduretaken_id_30bd3904_fk_ayurvedaa` FOREIGN KEY (`proceduretaken_id`) REFERENCES `ayurvedaapp_proceduredt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_oppatienttimeslotbooking`
--

LOCK TABLES `ayurvedaapp_oppatienttimeslotbooking` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_oppatienttimeslotbooking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_oppatienttimeslotbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_oppatienttreamentroombooking`
--

DROP TABLE IF EXISTS `ayurvedaapp_oppatienttreamentroombooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_oppatienttreamentroombooking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `bookingdate` date NOT NULL,
  `bookingstarttime` time(6) NOT NULL,
  `bookingendtime` time(6) NOT NULL,
  `bookingstatus` tinyint(1) NOT NULL,
  `branchdt_id` bigint DEFAULT NULL,
  `handledystaff_id` bigint DEFAULT NULL,
  `patientid_id` bigint DEFAULT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `treatmntroom_id` bigint DEFAULT NULL,
  `bookingenddate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_oppatien_branchdt_id_10c5c50a_fk_ayurvedaa` (`branchdt_id`),
  KEY `ayurvedaapp_oppatien_handledystaff_id_9d256dbc_fk_ayurvedaa` (`handledystaff_id`),
  KEY `ayurvedaapp_oppatien_patientid_id_3b9ec869_fk_ayurvedaa` (`patientid_id`),
  KEY `ayurvedaapp_oppatien_preparedby_id_9799070e_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_oppatien_treatmntroom_id_cbda41da_fk_ayurvedaa` (`treatmntroom_id`),
  CONSTRAINT `ayurvedaapp_oppatien_branchdt_id_10c5c50a_fk_ayurvedaa` FOREIGN KEY (`branchdt_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_handledystaff_id_9d256dbc_fk_ayurvedaa` FOREIGN KEY (`handledystaff_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_patientid_id_3b9ec869_fk_ayurvedaa` FOREIGN KEY (`patientid_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_preparedby_id_9799070e_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_oppatien_treatmntroom_id_cbda41da_fk_ayurvedaa` FOREIGN KEY (`treatmntroom_id`) REFERENCES `ayurvedaapp_treatmentroom_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_oppatienttreamentroombooking`
--

LOCK TABLES `ayurvedaapp_oppatienttreamentroombooking` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_oppatienttreamentroombooking` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_oppatienttreamentroombooking` VALUES (1,'2026-04-09','2026-04-09','14:13:00.000000','19:17:00.000000',1,5,1,1,1,1,'2026-04-11'),(2,'2026-04-09','2026-04-10','14:13:00.000000','19:17:00.000000',1,5,1,1,1,1,'2026-04-11'),(3,'2026-04-09','2026-04-11','14:13:00.000000','19:17:00.000000',1,5,1,1,1,1,'2026-04-11'),(4,'2026-05-13','2026-05-13','09:10:00.000000','10:10:00.000000',1,5,1,196,1,2,'2026-05-14'),(5,'2026-05-13','2026-05-14','09:10:00.000000','10:10:00.000000',1,5,1,196,1,1,'2026-05-14');
/*!40000 ALTER TABLE `ayurvedaapp_oppatienttreamentroombooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_package_deatils`
--

DROP TABLE IF EXISTS `ayurvedaapp_package_deatils`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_package_deatils` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Package_Name` varchar(300) NOT NULL,
  `Treatment_name` varchar(3000) NOT NULL,
  `Frequency` varchar(300) NOT NULL,
  `Package_rate` int NOT NULL,
  `Branch_Name_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_package__Branch_Name_id_c79a2891_fk_ayurvedaa` (`Branch_Name_id`),
  CONSTRAINT `ayurvedaapp_package__Branch_Name_id_c79a2891_fk_ayurvedaa` FOREIGN KEY (`Branch_Name_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_package_deatils`
--

LOCK TABLES `ayurvedaapp_package_deatils` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_package_deatils` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_package_deatils` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_packagemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_packagemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_packagemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `packagename` longtext,
  `packagedetails` longtext,
  `rate` decimal(10,2) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `status` varchar(300) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  `branchdt_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_packagem_branchdt_id_bd622cec_fk_ayurvedaa` (`branchdt_id`),
  CONSTRAINT `ayurvedaapp_packagem_branchdt_id_bd622cec_fk_ayurvedaa` FOREIGN KEY (`branchdt_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_packagemaster`
--

LOCK TABLES `ayurvedaapp_packagemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_packagemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_packagemaster` VALUES (1,'testpackage','                                    test',1234.00,'2026-04-09 14:06:34.759434','Active',0,NULL,5);
/*!40000 ALTER TABLE `ayurvedaapp_packagemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_patient_details`
--

DROP TABLE IF EXISTS `ayurvedaapp_patient_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_patient_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Patient_Name` varchar(300) NOT NULL,
  `Entry_Date` varchar(300) NOT NULL,
  `Medical_Record_Number` varchar(300) NOT NULL,
  `Age` varchar(30) DEFAULT NULL,
  `Gender` varchar(30) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `Branch_Name_id` bigint NOT NULL,
  `country_id` bigint DEFAULT NULL,
  `district` varchar(300) DEFAULT NULL,
  `state_id` bigint DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `consultation_type` varchar(10) NOT NULL,
  `zoho_contact_id` varchar(100) DEFAULT NULL,
  `source_lead_id` bigint DEFAULT NULL,
  `UHID_No` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zoho_contact_id` (`zoho_contact_id`),
  KEY `ayurvedaapp_patient__Branch_Name_id_b4652e7e_fk_ayurvedaa` (`Branch_Name_id`),
  KEY `ayurvedaapp_patient__country_id_69a0675c_fk_ayurvedaa` (`country_id`),
  KEY `ayurvedaapp_patient__state_id_f1b324fd_fk_ayurvedaa` (`state_id`),
  KEY `ayurvedaapp_patient__source_lead_id_9e615ed7_fk_ayurvedaa` (`source_lead_id`),
  CONSTRAINT `ayurvedaapp_patient__Branch_Name_id_b4652e7e_fk_ayurvedaa` FOREIGN KEY (`Branch_Name_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_patient__country_id_69a0675c_fk_ayurvedaa` FOREIGN KEY (`country_id`) REFERENCES `ayurvedaapp_country` (`id`),
  CONSTRAINT `ayurvedaapp_patient__source_lead_id_9e615ed7_fk_ayurvedaa` FOREIGN KEY (`source_lead_id`) REFERENCES `ayurvedaapp_sourcelead` (`id`),
  CONSTRAINT `ayurvedaapp_patient__state_id_f1b324fd_fk_ayurvedaa` FOREIGN KEY (`state_id`) REFERENCES `ayurvedaapp_state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patient_details`
--

LOCK TABLES `ayurvedaapp_patient_details` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patient_details` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patient_details` VALUES (1,'test','20260409','MRNO202604091','22','Female','test@gmail.com','9048272638','2026-04-09',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(2,'jibin','20260409','MRNO202604092','22','Male','test@gmail.com','1234567890','2026-04-09',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(196,'testuser','20260512','MRNO202605121','50','Male','','9895310696','2026-05-12',5,14,'None',1,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(197,'boby','20260516','MRNO202605161','42','Male','','9526324851','2026-05-16',5,14,'palakkad',1,0,NULL,'palakkad','offline',NULL,NULL,NULL),(198,'testpt','20260526','MRNO202605261','25','Female','','9999999999','2026-05-26',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(202,'Soman','20260605','MRNO202606051','25','Male','','8764534212','2026-06-05',5,14,'Kottayam',1,0,NULL,'','offline',NULL,NULL,NULL),(203,'Rahul','20260605','MRNO202606052','34','Male','','9672891910','2026-06-05',5,NULL,'None',NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(204,'Sonu','20260605','MRNO202606053','25','Male','','7827828912','2026-06-05',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(205,'Praveen Naik','20260605','MRNO202606054','45','Male','','8977899829','2026-06-05',5,NULL,'',NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(206,'Shan Shibu','20260605','MRNO202606055','25','Male','','7543234561','2026-06-05',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(207,'Shan Shibu Thomas','20260605','MRNO202606056','45','Male','','8765435671','2026-06-05',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(208,'Shobha','20260605','MRNO202606057','55','Female','','8765456786','2026-06-05',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(209,'Sona','20260605','MRNO202606058','34','Female','','9654456431','2026-06-05',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(210,'Shiju','20260605','MRNO202606059','45','Male','','7828929110','2026-06-05',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(211,'Sam','20260605','MRNO2026060510','44','Male','','8929929109','2026-06-05',5,NULL,NULL,NULL,0,NULL,'Malambuzha','offline',NULL,NULL,NULL),(212,'Jaison','20260605','MRNO2026060511','45','Male','','9889908912','2026-06-05',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(213,'Shibu','20260608','MRNO202606081','35','Male','','8878762761','2026-06-08',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(214,'testpatient123','20260608','MRNO202606082','20','Male','testp@gmail.com','8992882991','2026-06-08',5,14,'',1,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(215,'Rahul','20260610','MRNO202606101','35','Male','','6744342344','2026-06-10',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(216,'test7678','20260611','MRNO202606111','56','Male','test16@gmail.com','8789978789','2026-06-11',5,14,'Kottayam',1,0,NULL,'Kottayam ','offline',NULL,NULL,NULL),(217,'test12367','20260611','MRNO202606112','54','Male','','8988998889','2026-06-11',5,14,'Kottayam',1,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(218,'Soju','20260611','MRNO202606113','45','Male','','8765434567','2026-06-11',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL),(219,'tests56673','20260611','MRNO202606114','36','Male','','7876543456','2026-06-11',5,NULL,'',NULL,0,NULL,'','offline',NULL,NULL,NULL),(220,'Jithin','20260612','MRNO202606121','35.0','Male','','8978933892','2026-06-12',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(221,'Sonu','20260612','MRNO202606122','45.0','Male','','7878438783','2026-06-12',5,NULL,NULL,NULL,0,NULL,'','offline',NULL,NULL,NULL),(222,'Raju Kurian','20260612','MRNO202606123','65.0','Male','','8765433456','2026-06-12',5,NULL,NULL,NULL,0,NULL,'Kottayam','offline',NULL,NULL,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_patient_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_patient_history`
--

DROP TABLE IF EXISTS `ayurvedaapp_patient_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_patient_history` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Details` varchar(300) NOT NULL,
  `Allergy_type` varchar(300) NOT NULL,
  `Height` varchar(30) NOT NULL,
  `Weight` varchar(30) NOT NULL,
  `Blood_group` varchar(30) NOT NULL,
  `Patient_Name_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_patient__Patient_Name_id_1d674f11_fk_ayurvedaa` (`Patient_Name_id`),
  CONSTRAINT `ayurvedaapp_patient__Patient_Name_id_1d674f11_fk_ayurvedaa` FOREIGN KEY (`Patient_Name_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patient_history`
--

LOCK TABLES `ayurvedaapp_patient_history` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patient_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_patient_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_patientauditlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_patientauditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_patientauditlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mrno` varchar(100) DEFAULT NULL,
  `action` varchar(10) NOT NULL,
  `action_date` date NOT NULL,
  `action_time` time(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `patientid_id` bigint NOT NULL,
  `staff_id` bigint DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `new_value` longtext,
  `old_value` longtext,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_patienta_branch_id_76120c73_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_patienta_patientid_id_d225be74_fk_ayurvedaa` (`patientid_id`),
  KEY `ayurvedaapp_patienta_staff_id_4fcc7138_fk_ayurvedaa` (`staff_id`),
  CONSTRAINT `ayurvedaapp_patienta_branch_id_76120c73_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_patienta_patientid_id_d225be74_fk_ayurvedaa` FOREIGN KEY (`patientid_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_patienta_staff_id_4fcc7138_fk_ayurvedaa` FOREIGN KEY (`staff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patientauditlog`
--

LOCK TABLES `ayurvedaapp_patientauditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patientauditlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patientauditlog` VALUES (1,'MRNO202604091','INSERT','2026-04-09','12:44:52.310559',5,1,1,NULL,NULL,NULL),(2,'MRNO202604092','INSERT','2026-04-09','13:31:11.532462',5,2,1,NULL,NULL,NULL),(3,'MRNO202605121','INSERT','2026-05-12','15:27:26.678432',5,196,1,NULL,NULL,NULL),(4,'MRNO202605161','INSERT','2026-05-16','14:35:52.411172',5,197,1,NULL,NULL,NULL),(5,'MRNO202605261','INSERT','2026-05-26','09:40:56.226237',5,198,190,NULL,NULL,NULL),(6,'MRNO202605121','EDIT','2026-06-03','08:52:36.167120',5,196,1,NULL,NULL,NULL),(7,'MRNO202605121','EDIT','2026-06-03','08:57:30.131281',5,196,1,NULL,NULL,NULL),(8,'MRNO202606051','INSERT','2026-06-05','08:17:34.642129',5,202,1,NULL,NULL,NULL),(9,'MRNO202606052','EDIT','2026-06-05','08:21:04.470161',5,203,1,NULL,NULL,NULL),(10,'MRNO20260605  4','INSERT','2026-06-05','08:47:39.562333',5,205,1,NULL,NULL,NULL),(11,'MRNO20260605  5','INSERT','2026-06-05','08:57:00.738348',5,206,1,NULL,NULL,NULL),(12,'MRNO20260605  6','INSERT','2026-06-05','08:59:48.779666',5,207,1,NULL,NULL,NULL),(13,'MRNO20260605  7','INSERT','2026-06-05','09:00:27.586165',5,208,1,NULL,NULL,NULL),(14,'MRNO20260605  8','INSERT','2026-06-05','09:01:09.930929',5,209,1,NULL,NULL,NULL),(15,'MRNO20260605  9','INSERT','2026-06-05','09:01:46.163119',5,210,1,NULL,NULL,NULL),(16,'MRNO20260608  2','INSERT','2026-06-08','11:53:12.567441',5,214,1,NULL,NULL,NULL),(17,'MRNO20260611  1','INSERT','2026-06-11','10:26:24.994628',5,216,1,NULL,NULL,NULL),(18,'MRNO20260611  2','INSERT','2026-06-11','11:12:57.865036',5,217,1,NULL,NULL,NULL),(19,'MRNO202606114','INSERT','2026-06-11','11:17:09.395398',5,219,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_patientauditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_patientdischarge`
--

DROP TABLE IF EXISTS `ayurvedaapp_patientdischarge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_patientdischarge` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatment_summary` longtext NOT NULL,
  `discharged_date` date NOT NULL,
  `next_checkup_date` date DEFAULT NULL,
  `additional_notes` longtext,
  `sfirst_name` varchar(100) NOT NULL,
  `dischargedstaff_id` bigint DEFAULT NULL,
  `ipptno_id` bigint DEFAULT NULL,
  `accomadationtype` longtext,
  `bedno` longtext,
  `condition_on_discharge` longtext,
  `floorno` longtext,
  `roomno` longtext,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_patientd_dischargedstaff_id_d6801e05_fk_ayurvedaa` (`dischargedstaff_id`),
  KEY `ayurvedaapp_patientd_ipptno_id_81a60766_fk_ayurvedaa` (`ipptno_id`),
  CONSTRAINT `ayurvedaapp_patientd_dischargedstaff_id_d6801e05_fk_ayurvedaa` FOREIGN KEY (`dischargedstaff_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_patientd_ipptno_id_81a60766_fk_ayurvedaa` FOREIGN KEY (`ipptno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patientdischarge`
--

LOCK TABLES `ayurvedaapp_patientdischarge` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patientdischarge` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_patientdischarge` VALUES (1,'','2026-04-09','2026-04-10','','tst',1,1,'N/A','N/A','','N/A',''),(2,'test','2026-05-13','2026-05-15','','tst',1,3,'Ward','122','test','N/A',''),(3,'','2026-05-14',NULL,'','Shaji',1,2,'N/A','N/A','','N/A',''),(4,'','2026-05-20',NULL,'','Shaji',1,4,'Ward','122','','N/A','');
/*!40000 ALTER TABLE `ayurvedaapp_patientdischarge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_patientvisittracking`
--

DROP TABLE IF EXISTS `ayurvedaapp_patientvisittracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_patientvisittracking` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `visit_date` date NOT NULL,
  `fee_paid` decimal(10,2) NOT NULL,
  `fee_type` varchar(50) NOT NULL,
  `is_first_visit_in_period` tinyint(1) NOT NULL,
  `period_start_date` date DEFAULT NULL,
  `period_end_date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `appointment_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_patientv_appointment_id_2c40e7f1_fk_ayurvedaa` (`appointment_id`),
  KEY `ayurvedaapp_patientv_patient_id_a30c8f32_fk_ayurvedaa` (`patient_id`),
  CONSTRAINT `ayurvedaapp_patientv_appointment_id_2c40e7f1_fk_ayurvedaa` FOREIGN KEY (`appointment_id`) REFERENCES `ayurvedaapp_appointments` (`id`),
  CONSTRAINT `ayurvedaapp_patientv_patient_id_a30c8f32_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_patientvisittracking`
--

LOCK TABLES `ayurvedaapp_patientvisittracking` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_patientvisittracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_patientvisittracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_paymentupdatelog`
--

DROP TABLE IF EXISTS `ayurvedaapp_paymentupdatelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_paymentupdatelog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `previous_payment_mode` varchar(300) NOT NULL,
  `updated_payment_mode` varchar(300) NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `updatedamount` double NOT NULL,
  `beforeupdatingamount` double NOT NULL,
  `appointment_invoice_id` bigint NOT NULL,
  `updated_by_id` bigint NOT NULL,
  `previous_status` varchar(100) DEFAULT NULL,
  `updated_status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_paymentu_appointment_invoice__44b395fc_fk_ayurvedaa` (`appointment_invoice_id`),
  KEY `ayurvedaapp_paymentu_updated_by_id_8462f30e_fk_ayurvedaa` (`updated_by_id`),
  CONSTRAINT `ayurvedaapp_paymentu_appointment_invoice__44b395fc_fk_ayurvedaa` FOREIGN KEY (`appointment_invoice_id`) REFERENCES `ayurvedaapp_appointmentinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_paymentu_updated_by_id_8462f30e_fk_ayurvedaa` FOREIGN KEY (`updated_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_paymentupdatelog`
--

LOCK TABLES `ayurvedaapp_paymentupdatelog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_paymentupdatelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_paymentupdatelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_paymentupdatelognew`
--

DROP TABLE IF EXISTS `ayurvedaapp_paymentupdatelognew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_paymentupdatelognew` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `previous_payment_mode` varchar(300) NOT NULL,
  `updated_payment_mode` varchar(300) NOT NULL,
  `previous_cash_amount` varchar(400) NOT NULL,
  `previous_gpay_amount` varchar(400) NOT NULL,
  `previous_card_amount` varchar(400) NOT NULL,
  `updated_cash_amount` varchar(400) NOT NULL,
  `updated_gpay_amount` varchar(400) NOT NULL,
  `updated_card_amount` varchar(400) NOT NULL,
  `previous_total` double NOT NULL,
  `updated_total` double NOT NULL,
  `updated_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `user_agent` longtext,
  `remarks` longtext,
  `invoice_id` bigint NOT NULL,
  `updated_by_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_paymentu_invoice_id_a33a7cbe_fk_ayurvedaa` (`invoice_id`),
  KEY `ayurvedaapp_paymentu_updated_by_id_e80d7c7e_fk_ayurvedaa` (`updated_by_id`),
  CONSTRAINT `ayurvedaapp_paymentu_invoice_id_a33a7cbe_fk_ayurvedaa` FOREIGN KEY (`invoice_id`) REFERENCES `ayurvedaapp_newinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_paymentu_updated_by_id_e80d7c7e_fk_ayurvedaa` FOREIGN KEY (`updated_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_paymentupdatelognew`
--

LOCK TABLES `ayurvedaapp_paymentupdatelognew` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_paymentupdatelognew` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_paymentupdatelognew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_personalhistory`
--

DROP TABLE IF EXISTS `ayurvedaapp_personalhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_personalhistory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `personalHistorydt` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_personal_MR_Number_id_e28c5ee1_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_personal_MR_Number_id_e28c5ee1_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_personalhistory`
--

LOCK TABLES `ayurvedaapp_personalhistory` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_personalhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_personalhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_personalhistoryold`
--

DROP TABLE IF EXISTS `ayurvedaapp_personalhistoryold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_personalhistoryold` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Sleep` varchar(500) NOT NULL,
  `Bowels` varchar(500) NOT NULL,
  `Appetite` varchar(500) NOT NULL,
  `Thirst` varchar(500) NOT NULL,
  `Habits` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_personal_MR_Number_id_e1c35df9_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_personal_MR_Number_id_e1c35df9_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_personalhistoryold`
--

LOCK TABLES `ayurvedaapp_personalhistoryold` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_personalhistoryold` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_personalhistoryold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_phy_sys_examination`
--

DROP TABLE IF EXISTS `ayurvedaapp_phy_sys_examination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_phy_sys_examination` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Built` varchar(500) NOT NULL,
  `Pallor` varchar(500) NOT NULL,
  `Icterus` varchar(500) NOT NULL,
  `Edema` varchar(500) NOT NULL,
  `Cyanosis` varchar(500) NOT NULL,
  `Clubbing` varchar(500) NOT NULL,
  `CVS` varchar(500) NOT NULL,
  `RS` varchar(500) NOT NULL,
  `CNS` varchar(500) NOT NULL,
  `Joints` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_phy_sys__MR_Number_id_d99f9a66_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_phy_sys__MR_Number_id_d99f9a66_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_phy_sys_examination`
--

LOCK TABLES `ayurvedaapp_phy_sys_examination` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_phy_sys_examination` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_phy_sys_examination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_physicalstockdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_physicalstockdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_physicalstockdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Manufacturer_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Batch_no` varchar(500) NOT NULL,
  `Rate` varchar(300) NOT NULL,
  `qty` int NOT NULL,
  `lastupdatedate` date NOT NULL,
  `Comapany_name_id` bigint DEFAULT NULL,
  `itemnm_id` bigint NOT NULL,
  `insertedstaffid_id` bigint NOT NULL,
  `storenm_id` bigint NOT NULL,
  `suppliernm_id` bigint DEFAULT NULL,
  `unt_id` bigint NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  `stockbranch_id` bigint DEFAULT NULL,
  `purchase_rate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_physical_unt_id_5add269a_fk_ayurvedaa` (`unt_id`),
  KEY `ayurvedaapp_physical_Comapany_name_id_5a6c244b_fk_ayurvedaa` (`Comapany_name_id`),
  KEY `ayurvedaapp_physical_itemnm_id_79e1b3e4_fk_ayurvedaa` (`itemnm_id`),
  KEY `ayurvedaapp_physical_insertedstaffid_id_6cde9eb1_fk_ayurvedaa` (`insertedstaffid_id`),
  KEY `ayurvedaapp_physical_storenm_id_20c04a20_fk_ayurvedaa` (`storenm_id`),
  KEY `ayurvedaapp_physical_suppliernm_id_a7c942e6_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_physical_stockbranch_id_95ce69c0_fk_ayurvedaa` (`stockbranch_id`),
  CONSTRAINT `ayurvedaapp_physical_Comapany_name_id_5a6c244b_fk_ayurvedaa` FOREIGN KEY (`Comapany_name_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_physical_insertedstaffid_id_6cde9eb1_fk_ayurvedaa` FOREIGN KEY (`insertedstaffid_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_physical_itemnm_id_79e1b3e4_fk_ayurvedaa` FOREIGN KEY (`itemnm_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_physical_stockbranch_id_95ce69c0_fk_ayurvedaa` FOREIGN KEY (`stockbranch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_physical_storenm_id_20c04a20_fk_ayurvedaa` FOREIGN KEY (`storenm_id`) REFERENCES `ayurvedaapp_storedetails` (`id`),
  CONSTRAINT `ayurvedaapp_physical_suppliernm_id_a7c942e6_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`),
  CONSTRAINT `ayurvedaapp_physical_unt_id_5add269a_fk_ayurvedaa` FOREIGN KEY (`unt_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_physicalstockdetails`
--

LOCK TABLES `ayurvedaapp_physicalstockdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_physicalstockdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_physicalstockdetails` VALUES (11,'2026-04-26','2026-05-22','AO172','500.0',10,'2026-05-05',146,1659,185,1,31,10,1,'2026-05-08',5,0.00),(12,'2026-04-26','2026-05-05','bt45','20.0',40,'2026-05-05',146,1659,185,1,31,10,1,'2026-05-08',5,200.00),(22,'2026-04-27','2026-06-06','testpurpose','130.0',13,'2026-05-18',146,1659,189,1,34,11,0,NULL,5,0.00);
/*!40000 ALTER TABLE `ayurvedaapp_physicalstockdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_poitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_poitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_poitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sl_no` int NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `unit_rate` decimal(10,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `purchase_order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_poitem_purchase_order_id_41d5849b_fk_ayurvedaa` (`purchase_order_id`),
  CONSTRAINT `ayurvedaapp_poitem_purchase_order_id_41d5849b_fk_ayurvedaa` FOREIGN KEY (`purchase_order_id`) REFERENCES `ayurvedaapp_purchaseorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_poitem`
--

LOCK TABLES `ayurvedaapp_poitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_poitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_poitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_preliminarydata`
--

DROP TABLE IF EXISTS `ayurvedaapp_preliminarydata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_preliminarydata` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Gender` varchar(100) DEFAULT NULL,
  `Place` varchar(100) NOT NULL,
  `Phone_number` varchar(100) NOT NULL,
  `Occupation` varchar(100) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_prelimin_MR_Number_id_70903022_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_prelimin_MR_Number_id_70903022_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_preliminarydata`
--

LOCK TABLES `ayurvedaapp_preliminarydata` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_preliminarydata` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_preliminarydata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_prescription`
--

DROP TABLE IF EXISTS `ayurvedaapp_prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_prescription` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `before_diet_medicine_name` varchar(100) NOT NULL,
  `before_diet_quantity` varchar(800) NOT NULL,
  `after_diet_medicine_name` varchar(100) NOT NULL,
  `after_diet_quantity` varchar(800) NOT NULL,
  `notes` varchar(800) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_prescription`
--

LOCK TABLES `ayurvedaapp_prescription` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_prescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_prescriptioneditlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_prescriptioneditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_prescriptioneditlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(10) NOT NULL,
  `original_medicine_name` varchar(100) DEFAULT NULL,
  `original_noofdays` varchar(400) DEFAULT NULL,
  `original_moringtime` varchar(100) DEFAULT NULL,
  `original_noontime` varchar(100) DEFAULT NULL,
  `original_nighttime` varchar(100) DEFAULT NULL,
  `original_beforeorafterdiet` varchar(100) DEFAULT NULL,
  `original_medicineguideline` varchar(400) DEFAULT NULL,
  `original_qtyprescriped` int DEFAULT NULL,
  `original_medicine_id` int DEFAULT NULL,
  `original_physicalstock_id` int DEFAULT NULL,
  `original_prescription_date` date DEFAULT NULL,
  `original_patient_id` int DEFAULT NULL,
  `original_doctor_id` int DEFAULT NULL,
  `new_medicine_name` varchar(100) DEFAULT NULL,
  `new_noofdays` varchar(400) DEFAULT NULL,
  `new_moringtime` varchar(100) DEFAULT NULL,
  `new_noontime` varchar(100) DEFAULT NULL,
  `new_nighttime` varchar(100) DEFAULT NULL,
  `new_beforeorafterdiet` varchar(100) DEFAULT NULL,
  `new_medicineguideline` varchar(400) DEFAULT NULL,
  `new_qtyprescriped` int DEFAULT NULL,
  `new_medicine_id` int DEFAULT NULL,
  `new_physicalstock_id` int DEFAULT NULL,
  `new_prescription_date` date DEFAULT NULL,
  `new_doctor_id` int DEFAULT NULL,
  `action_date` date NOT NULL,
  `action_time` time(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `patient_id` bigint DEFAULT NULL,
  `prescription_id` bigint DEFAULT NULL,
  `staff_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_prescrip_branch_id_3bcdd36b_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_prescrip_patient_id_f6561069_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_prescrip_prescription_id_7ba05af0_fk_ayurvedaa` (`prescription_id`),
  KEY `ayurvedaapp_prescrip_staff_id_eb595985_fk_ayurvedaa` (`staff_id`),
  CONSTRAINT `ayurvedaapp_prescrip_branch_id_3bcdd36b_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_prescrip_patient_id_f6561069_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_prescrip_prescription_id_7ba05af0_fk_ayurvedaa` FOREIGN KEY (`prescription_id`) REFERENCES `ayurvedaapp_prescriptionnew` (`id`),
  CONSTRAINT `ayurvedaapp_prescrip_staff_id_eb595985_fk_ayurvedaa` FOREIGN KEY (`staff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_prescriptioneditlog`
--

LOCK TABLES `ayurvedaapp_prescriptioneditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_prescriptioneditlog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_prescriptioneditlog` VALUES (2,'EDIT','test item','5','5','0','0','Before Diet','',5,NULL,22,'2026-06-03',196,1,'test item','5','5','0','1','Before Diet','',5,NULL,22,'2026-06-03',1,'2026-06-03','10:45:43.211895',NULL,196,5,1),(3,'EDIT','test item','5','5','0','1','Before Diet','',5,NULL,22,'2026-06-03',196,1,'test item','5','1','0','0','Before Diet','',5,NULL,22,'2026-06-03',1,'2026-06-03','10:46:01.042505',NULL,196,5,1);
/*!40000 ALTER TABLE `ayurvedaapp_prescriptioneditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_prescriptionnew`
--

DROP TABLE IF EXISTS `ayurvedaapp_prescriptionnew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_prescriptionnew` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `prescriptiondate` date NOT NULL,
  `medicine_name` varchar(100) NOT NULL,
  `moringtime` varchar(100) NOT NULL,
  `noontime` varchar(100) NOT NULL,
  `nighttime` varchar(100) NOT NULL,
  `beforeorafterdiet` varchar(100) NOT NULL,
  `medicineguideline` varchar(400) NOT NULL,
  `noofdays` varchar(400) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL,
  `case_history_id` bigint DEFAULT NULL,
  `followup_id` bigint DEFAULT NULL,
  `patient_id` bigint NOT NULL,
  `physicalstock_id` bigint DEFAULT NULL,
  `prescribeddoctor_id` bigint DEFAULT NULL,
  `qtyprescriped` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_prescrip_followup_id_6fcf5b42_fk_ayurvedaa` (`followup_id`),
  KEY `ayurvedaapp_prescrip_physicalstock_id_05497bea_fk_ayurvedaa` (`physicalstock_id`),
  KEY `ayurvedaapp_prescrip_prescribeddoctor_id_1e9ab77c_fk_ayurvedaa` (`prescribeddoctor_id`),
  KEY `ayurvedaapp_prescrip_patient_id_5183d68a_fk_ayurvedaa` (`patient_id`),
  KEY `ayurvedaapp_prescrip_case_history_id_eb327c1a_fk_ayurvedaa` (`case_history_id`),
  CONSTRAINT `ayurvedaapp_prescrip_case_history_id_eb327c1a_fk_ayurvedaa` FOREIGN KEY (`case_history_id`) REFERENCES `ayurvedaapp_clairvedacasehistory` (`id`),
  CONSTRAINT `ayurvedaapp_prescrip_followup_id_6fcf5b42_fk_ayurvedaa` FOREIGN KEY (`followup_id`) REFERENCES `ayurvedaapp_clairvedafollowup` (`id`),
  CONSTRAINT `ayurvedaapp_prescrip_patient_id_5183d68a_fk_ayurvedaa` FOREIGN KEY (`patient_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_prescrip_physicalstock_id_05497bea_fk_ayurvedaa` FOREIGN KEY (`physicalstock_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_prescrip_prescribeddoctor_id_1e9ab77c_fk_ayurvedaa` FOREIGN KEY (`prescribeddoctor_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_prescriptionnew`
--

LOCK TABLES `ayurvedaapp_prescriptionnew` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_prescriptionnew` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_prescriptionnew` VALUES (5,'2026-06-03','test item','1','0','0','Before Diet','','5',0,NULL,NULL,196,22,1,5),(6,'2026-06-11','test item','1','0','0','Before Diet','','5',0,NULL,NULL,216,22,1,5);
/*!40000 ALTER TABLE `ayurvedaapp_prescriptionnew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_prescriptiont`
--

DROP TABLE IF EXISTS `ayurvedaapp_prescriptiont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_prescriptiont` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Medicinebd` varchar(500) NOT NULL,
  `occurance1bd` varchar(500) NOT NULL,
  `occurance2bd` varchar(500) NOT NULL,
  `occurance3bd` varchar(500) NOT NULL,
  `occurance4bd` varchar(500) NOT NULL,
  `occurance5bd` varchar(500) NOT NULL,
  `Medicinead` varchar(500) NOT NULL,
  `occurance1ad` varchar(500) NOT NULL,
  `occurance2ad` varchar(500) NOT NULL,
  `occurance3ad` varchar(500) NOT NULL,
  `occurance4ad` varchar(500) NOT NULL,
  `occurance5ad` varchar(500) NOT NULL,
  `Notes` varchar(800) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_prescrip_MR_Number_id_2491a246_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_prescrip_MR_Number_id_2491a246_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_prescriptiont`
--

LOCK TABLES `ayurvedaapp_prescriptiont` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_prescriptiont` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_prescriptiont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_proceduredt`
--

DROP TABLE IF EXISTS `ayurvedaapp_proceduredt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_proceduredt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `procedurename` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_proceduredt`
--

LOCK TABLES `ayurvedaapp_proceduredt` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_proceduredt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_proceduredt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_proceduremaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_proceduremaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_proceduremaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `description` longtext,
  `created_by` varchar(100) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `branch_id_id` bigint NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_proceduremaster_branch_id_id_2848f1dd` (`branch_id_id`),
  CONSTRAINT `ayurvedaapp_procedur_branch_id_id_2848f1dd_fk_ayurvedaa` FOREIGN KEY (`branch_id_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_proceduremaster`
--

LOCK TABLES `ayurvedaapp_proceduremaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_proceduremaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_proceduremaster` VALUES (1,'Nebulization','consultation',100.00,'','Anu K','2026-06-04 12:20:09.200111',5,1),(2,'Scanning Charge','consultation',100.00,'','Anu K','2026-06-04 12:21:28.130844',5,1),(3,'Observation Charge','consultation',100.00,'','Anu K','2026-06-04 12:25:16.628411',5,1),(4,'BP Check','consultation',20.00,'','Anu K','2026-06-04 12:25:29.804601',5,1),(5,'NST Charge','consultation',400.00,'','Anu K','2026-06-05 04:13:17.301927',5,1),(6,'X-ray Chest','consultation',200.00,'','Anu K','2026-06-05 04:19:18.538549',5,1),(7,'Catheterization Charge','consultation',200.00,'','Anu K','2026-06-05 04:37:04.490490',5,1),(8,'ECG - 12 Lead','consultation',200.00,'','Anu K','2026-06-10 06:21:44.293044',5,1);
/*!40000 ALTER TABLE `ayurvedaapp_proceduremaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_proformainvoice`
--

DROP TABLE IF EXISTS `ayurvedaapp_proformainvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_proformainvoice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `voucher_no` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `buyer_name` varchar(200) NOT NULL,
  `buyer_address` longtext NOT NULL,
  `buyer_gstin` varchar(15) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `gst_total` decimal(12,2) NOT NULL,
  `grand_total` decimal(12,2) NOT NULL,
  `amount_in_words` varchar(255) NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_status` varchar(10) NOT NULL,
  `payment_updated_by_id` bigint DEFAULT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `voucher_no` (`voucher_no`),
  KEY `ayurvedaapp_proforma_branch_id_2ed18451_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_proformainvoice_payment_updated_by_id_3216212c` (`payment_updated_by_id`),
  KEY `ayurvedaapp_proforma_purchase_order_id_6142cc00_fk_ayurvedaa` (`purchase_order_id`),
  CONSTRAINT `ayurvedaapp_proforma_branch_id_2ed18451_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_proforma_payment_updated_by_i_3216212c_fk_ayurvedaa` FOREIGN KEY (`payment_updated_by_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_proforma_purchase_order_id_6142cc00_fk_ayurvedaa` FOREIGN KEY (`purchase_order_id`) REFERENCES `ayurvedaapp_purchaseorder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_proformainvoice`
--

LOCK TABLES `ayurvedaapp_proformainvoice` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_proformainvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_proformainvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_proformaitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_proformaitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_proformaitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sl_no` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `batch_info` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `gst_percent` decimal(4,2) NOT NULL,
  `hsn_code` varchar(20) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `proforma_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_proforma_proforma_id_bda1304c_fk_ayurvedaa` (`proforma_id`),
  CONSTRAINT `ayurvedaapp_proforma_proforma_id_bda1304c_fk_ayurvedaa` FOREIGN KEY (`proforma_id`) REFERENCES `ayurvedaapp_proformainvoice` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_proformaitem`
--

LOCK TABLES `ayurvedaapp_proformaitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_proformaitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_proformaitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_purchaseorder`
--

DROP TABLE IF EXISTS `ayurvedaapp_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_purchaseorder` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `po_number` varchar(50) NOT NULL,
  `po_date` date NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_address` longtext NOT NULL,
  `proforma_reference` varchar(50) DEFAULT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `payment_terms` varchar(50) NOT NULL,
  `transport_mode` varchar(100) NOT NULL,
  `gst_applicable` tinyint(1) NOT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `grand_total` decimal(12,2) NOT NULL,
  `amount_in_words` varchar(255) NOT NULL,
  `prepared_by` varchar(100) NOT NULL,
  `checked_by` varchar(100) NOT NULL,
  `approved_by` varchar(100) NOT NULL,
  `approver_designation` varchar(100) NOT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `destination_branch_id` bigint DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `po_number` (`po_number`),
  KEY `ayurvedaapp_purchase_branch_id_20586d46_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_purchase_destination_branch_i_4cc530b5_fk_ayurvedaa` (`destination_branch_id`),
  CONSTRAINT `ayurvedaapp_purchase_branch_id_20586d46_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_destination_branch_i_4cc530b5_fk_ayurvedaa` FOREIGN KEY (`destination_branch_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_purchaseorder`
--

LOCK TABLES `ayurvedaapp_purchaseorder` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_purchaseorderchild`
--

DROP TABLE IF EXISTS `ayurvedaapp_purchaseorderchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_purchaseorderchild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `putrchaseorderno` varchar(300) NOT NULL,
  `suppliercontactnumber` varchar(100) NOT NULL,
  `orderdate` date DEFAULT NULL,
  `itemquantity` varchar(300) NOT NULL,
  `balance` varchar(300) NOT NULL,
  `extraqty` varchar(300) NOT NULL,
  `currentdate` datetime(6) NOT NULL,
  `branch_id` bigint NOT NULL,
  `itemcompany_id` bigint DEFAULT NULL,
  `itemname_id` bigint NOT NULL,
  `purchaseorderhid_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `suppliernm_id` bigint NOT NULL,
  `itemunit_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_purchase_branch_id_2d313022_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_purchase_itemcompany_id_394d5cbb_fk_ayurvedaa` (`itemcompany_id`),
  KEY `ayurvedaapp_purchase_itemname_id_12399cf4_fk_ayurvedaa` (`itemname_id`),
  KEY `ayurvedaapp_purchase_purchaseorderhid_id_394b0d63_fk_ayurvedaa` (`purchaseorderhid_id`),
  KEY `ayurvedaapp_purchase_preparedby_id_b9733dab_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_purchase_suppliernm_id_1138bce3_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_purchase_itemunit_id_74cb0dc4_fk_ayurvedaa` (`itemunit_id`),
  CONSTRAINT `ayurvedaapp_purchase_branch_id_2d313022_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_itemcompany_id_394d5cbb_fk_ayurvedaa` FOREIGN KEY (`itemcompany_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_itemname_id_12399cf4_fk_ayurvedaa` FOREIGN KEY (`itemname_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_itemunit_id_74cb0dc4_fk_ayurvedaa` FOREIGN KEY (`itemunit_id`) REFERENCES `ayurvedaapp_unitdt` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_preparedby_id_b9733dab_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_purchaseorderhid_id_394b0d63_fk_ayurvedaa` FOREIGN KEY (`purchaseorderhid_id`) REFERENCES `ayurvedaapp_purchaseorderheader` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_suppliernm_id_1138bce3_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_purchaseorderchild`
--

LOCK TABLES `ayurvedaapp_purchaseorderchild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseorderchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseorderchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_purchaseorderheader`
--

DROP TABLE IF EXISTS `ayurvedaapp_purchaseorderheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_purchaseorderheader` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `putrchaseorderno` varchar(300) NOT NULL,
  `orderdate` date DEFAULT NULL,
  `currentdate` date NOT NULL,
  `purschaseorderclose` tinyint(1) NOT NULL,
  `branch_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `suppliernm_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_purchase_branch_id_115fef66_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_purchase_preparedby_id_f0382e68_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_purchase_suppliernm_id_9eba5026_fk_ayurvedaa` (`suppliernm_id`),
  CONSTRAINT `ayurvedaapp_purchase_branch_id_115fef66_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_preparedby_id_f0382e68_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_purchase_suppliernm_id_9eba5026_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_purchaseorderheader`
--

LOCK TABLES `ayurvedaapp_purchaseorderheader` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseorderheader` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_purchaseorderheader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_ratemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_ratemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_ratemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_ratemaster`
--

LOCK TABLES `ayurvedaapp_ratemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_ratemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_ratemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_record_sheet`
--

DROP TABLE IF EXISTS `ayurvedaapp_record_sheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_record_sheet` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Bp` varchar(500) NOT NULL,
  `PR_RR` varchar(500) NOT NULL,
  `SPO2` varchar(500) NOT NULL,
  `TEMP` varchar(500) NOT NULL,
  `FPS_PPBS` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_record_s_MR_Number_id_c4fed098_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_record_s_MR_Number_id_c4fed098_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_record_sheet`
--

LOCK TABLES `ayurvedaapp_record_sheet` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_record_sheet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_record_sheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_reorderleveldetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_reorderleveldetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_reorderleveldetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `qty` varchar(300) NOT NULL,
  `companyid_id` bigint DEFAULT NULL,
  `itemname_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_reorderl_companyid_id_c9ef18a8_fk_ayurvedaa` (`companyid_id`),
  KEY `ayurvedaapp_reorderl_itemname_id_7d7b5cb4_fk_ayurvedaa` (`itemname_id`),
  CONSTRAINT `ayurvedaapp_reorderl_companyid_id_c9ef18a8_fk_ayurvedaa` FOREIGN KEY (`companyid_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_reorderl_itemname_id_7d7b5cb4_fk_ayurvedaa` FOREIGN KEY (`itemname_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_reorderleveldetails`
--

LOCK TABLES `ayurvedaapp_reorderleveldetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_reorderleveldetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_reorderleveldetails` VALUES (2,'1',146,1659);
/*!40000 ALTER TABLE `ayurvedaapp_reorderleveldetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_role`
--

DROP TABLE IF EXISTS `ayurvedaapp_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `rolename` varchar(400) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_role`
--

LOCK TABLES `ayurvedaapp_role` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_role` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_role` VALUES (1,'Admin',1),(9,'CMO',1),(10,'Resident Doctor',1),(12,'Wellness Therapist - Male',1),(13,'Wellness Therapist - Female',1),(15,'Front Office',1),(16,'Tisser Role',1),(18,'superadmin',1),(21,'Front office & Pharmacy',1),(23,'zoho front office',1),(25,'Doctor',1),(26,'Inventory Management',1),(27,'Pharmacist',1);
/*!40000 ALTER TABLE `ayurvedaapp_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_roleassign`
--

DROP TABLE IF EXISTS `ayurvedaapp_roleassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_roleassign` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `Branch_Name_id` bigint NOT NULL,
  `roleid_id` bigint NOT NULL,
  `Staff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_roleassi_Branch_Name_id_84de4198_fk_ayurvedaa` (`Branch_Name_id`),
  KEY `ayurvedaapp_roleassign_roleid_id_b9c7eda0_fk_ayurvedaapp_role_id` (`roleid_id`),
  KEY `ayurvedaapp_roleassi_Staff_id_557ca373_fk_ayurvedaa` (`Staff_id`),
  CONSTRAINT `ayurvedaapp_roleassi_Branch_Name_id_84de4198_fk_ayurvedaa` FOREIGN KEY (`Branch_Name_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_roleassi_Staff_id_557ca373_fk_ayurvedaa` FOREIGN KEY (`Staff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_roleassign_roleid_id_b9c7eda0_fk_ayurvedaapp_role_id` FOREIGN KEY (`roleid_id`) REFERENCES `ayurvedaapp_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_roleassign`
--

LOCK TABLES `ayurvedaapp_roleassign` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_roleassign` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_roleassign` VALUES (168,1,5,1,1),(173,1,5,26,185),(174,1,5,27,189),(175,1,5,15,190);
/*!40000 ALTER TABLE `ayurvedaapp_roleassign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_room_details`
--

DROP TABLE IF EXISTS `ayurvedaapp_room_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_room_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Floorno` varchar(50) NOT NULL,
  `Blockno` varchar(50) NOT NULL,
  `Roomno` varchar(50) DEFAULT NULL,
  `Room_type` varchar(300) DEFAULT NULL,
  `is_available` tinyint(1) NOT NULL,
  `bed_type` varchar(300) NOT NULL,
  `rate` varchar(10) NOT NULL,
  `branchidrm_id` bigint NOT NULL,
  `wardbedno` varchar(10) DEFAULT NULL,
  `wardorroom` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_room_det_branchidrm_id_204c936d_fk_ayurvedaa` (`branchidrm_id`),
  CONSTRAINT `ayurvedaapp_room_det_branchidrm_id_204c936d_fk_ayurvedaa` FOREIGN KEY (`branchidrm_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_room_details`
--

LOCK TABLES `ayurvedaapp_room_details` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_room_details` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_room_details` VALUES (1,'floor 1','1',NULL,NULL,0,'single','400',5,'122','Ward'),(2,'1','1','1','Single',0,'single','300',5,NULL,'Room'),(3,'1','1','2','Single',0,'single','100',5,NULL,'Room');
/*!40000 ALTER TABLE `ayurvedaapp_room_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_roomchangelog`
--

DROP TABLE IF EXISTS `ayurvedaapp_roomchangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_roomchangelog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `change_date` date NOT NULL,
  `change_time` time(6) NOT NULL,
  `no_of_days_stayed` int unsigned NOT NULL,
  `rate_per_day` decimal(10,2) NOT NULL,
  `total_rent` decimal(10,2) NOT NULL,
  `remarks` longtext,
  `created_at` datetime(6) NOT NULL,
  `changed_by_id` bigint DEFAULT NULL,
  `from_room_or_ward_id` bigint DEFAULT NULL,
  `ipno_id` bigint DEFAULT NULL,
  `to_room_or_ward_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_roomchan_changed_by_id_ef509314_fk_ayurvedaa` (`changed_by_id`),
  KEY `ayurvedaapp_roomchan_from_room_or_ward_id_a749a0df_fk_ayurvedaa` (`from_room_or_ward_id`),
  KEY `ayurvedaapp_roomchan_ipno_id_7deb31f2_fk_ayurvedaa` (`ipno_id`),
  KEY `ayurvedaapp_roomchan_to_room_or_ward_id_7a83c775_fk_ayurvedaa` (`to_room_or_ward_id`),
  CONSTRAINT `ayurvedaapp_roomchan_changed_by_id_ef509314_fk_ayurvedaa` FOREIGN KEY (`changed_by_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_roomchan_from_room_or_ward_id_a749a0df_fk_ayurvedaa` FOREIGN KEY (`from_room_or_ward_id`) REFERENCES `ayurvedaapp_room_details` (`id`),
  CONSTRAINT `ayurvedaapp_roomchan_ipno_id_7deb31f2_fk_ayurvedaa` FOREIGN KEY (`ipno_id`) REFERENCES `ayurvedaapp_ippatientadmission` (`id`),
  CONSTRAINT `ayurvedaapp_roomchan_to_room_or_ward_id_7a83c775_fk_ayurvedaa` FOREIGN KEY (`to_room_or_ward_id`) REFERENCES `ayurvedaapp_room_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_roomchangelog`
--

LOCK TABLES `ayurvedaapp_roomchangelog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_roomchangelog` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_roomchangelog` VALUES (1,'2026-06-10','08:14:20.178574',2,300.00,600.00,'khkhkh','2026-06-10 08:14:20.181527',NULL,2,5,3);
/*!40000 ALTER TABLE `ayurvedaapp_roomchangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_sampraptighataka`
--

DROP TABLE IF EXISTS `ayurvedaapp_sampraptighataka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_sampraptighataka` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `dosha` varchar(500) DEFAULT NULL,
  `samuthan` varchar(500) DEFAULT NULL,
  `adhistana` varchar(500) DEFAULT NULL,
  `rogmarg` varchar(500) DEFAULT NULL,
  `dushya` varchar(500) DEFAULT NULL,
  `srotas` varchar(500) DEFAULT NULL,
  `srotodushi` varchar(500) DEFAULT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_samprapt_MR_Number_id_efb7c124_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_samprapt_MR_Number_id_efb7c124_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_sampraptighataka`
--

LOCK TABLES `ayurvedaapp_sampraptighataka` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_sampraptighataka` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_sampraptighataka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_sourcedetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_sourcedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_sourcedetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sourcename` varchar(200) NOT NULL,
  `details` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_sourcedetails`
--

LOCK TABLES `ayurvedaapp_sourcedetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_sourcedetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_sourcedetails` VALUES (1,'campaign','',1,0,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_sourcedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_sourcelead`
--

DROP TABLE IF EXISTS `ayurvedaapp_sourcelead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_sourcelead` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sourceleadname` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_sourcelead`
--

LOCK TABLES `ayurvedaapp_sourcelead` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_sourcelead` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_sourcelead` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_staffallocation`
--

DROP TABLE IF EXISTS `ayurvedaapp_staffallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_staffallocation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Status` varchar(300) NOT NULL,
  `Username` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Branch_Name_id` bigint NOT NULL,
  `Department_Name_id` bigint NOT NULL,
  `Designation_Name_id` bigint NOT NULL,
  `Staff_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_staffall_Branch_Name_id_e1276d66_fk_ayurvedaa` (`Branch_Name_id`),
  KEY `ayurvedaapp_staffall_Department_Name_id_14bce496_fk_ayurvedaa` (`Department_Name_id`),
  KEY `ayurvedaapp_staffall_Designation_Name_id_a303d230_fk_ayurvedaa` (`Designation_Name_id`),
  KEY `ayurvedaapp_staffall_Staff_id_f311fc79_fk_ayurvedaa` (`Staff_id`),
  CONSTRAINT `ayurvedaapp_staffall_Branch_Name_id_e1276d66_fk_ayurvedaa` FOREIGN KEY (`Branch_Name_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_staffall_Department_Name_id_14bce496_fk_ayurvedaa` FOREIGN KEY (`Department_Name_id`) REFERENCES `ayurvedaapp_department` (`id`),
  CONSTRAINT `ayurvedaapp_staffall_Designation_Name_id_a303d230_fk_ayurvedaa` FOREIGN KEY (`Designation_Name_id`) REFERENCES `ayurvedaapp_designation` (`id`),
  CONSTRAINT `ayurvedaapp_staffall_Staff_id_f311fc79_fk_ayurvedaa` FOREIGN KEY (`Staff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_staffallocation`
--

LOCK TABLES `ayurvedaapp_staffallocation` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_staffallocation` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_staffallocation` VALUES (1,'active','mnsadmin','mnsadmin',5,8,3,1),(168,'active','teststaff','teststaff',5,4,2,174),(177,'active','anu','anu',5,5,5,184),(178,'active','invmanager','invmanager',5,9,12,185),(179,'active','test','test',5,9,1,186),(180,'active','pharmacist','pharmacist',5,6,4,189),(181,'active','frntstaff','frntstaff',5,3,8,190),(182,'active','doc','doc',5,4,13,193);
/*!40000 ALTER TABLE `ayurvedaapp_staffallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_staffdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_staffdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_staffdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Staff_firstname` varchar(300) NOT NULL,
  `Staff_lastname` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Email` varchar(300) DEFAULT NULL,
  `contactno` varchar(100) DEFAULT NULL,
  `Qualification` varchar(300) DEFAULT NULL,
  `Joining_date` date DEFAULT NULL,
  `Pancard_No` varchar(300) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `deleted_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_staffdetails`
--

LOCK TABLES `ayurvedaapp_staffdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_staffdetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_staffdetails` VALUES (1,'Anu','K','testaddress','Female','anu@gmail.com','9087675645','BNYS\r\n                    ','2025-07-01','ertt',0,NULL),(174,'test Staff','staff','','Male','teststaff@gmail.com','9048087187','                                            \r\n           MBBS         \r\n                    ','2026-03-17','234567',0,NULL),(184,'Anu','','','Female','','','                      \r\n                    ',NULL,'',1,'2026-05-05'),(185,'inventory manager','','','Female','','','                      \r\n                    ',NULL,'',1,'2026-05-05'),(186,'test Staff1','tst','tstt','Male','test@gmail.com','0123456789','                      \r\n                    ',NULL,'',0,NULL),(187,'staff11','','','Male','','9999998989','                      \r\n                    ',NULL,'',0,NULL),(188,'test stf','','','Male','','9999998989','                      \r\n                    ','2026-05-12','',0,NULL),(189,'pharmacist','','','Female','','','                      \r\n                    ',NULL,'',0,NULL),(190,'frontofficestaff','','','Female','','','                      \r\n                    ',NULL,'',0,NULL),(191,'Dr.Kamnakrishnakumar','Krishnakumar','','Female','','0491-2556326','                                  MS Gynaec&Obs.          \r\n                    \r\n                    ','2026-05-27','',0,NULL),(192,'Dr.Kamnakrishnakumar','','','Female','','','                      \r\n                    ',NULL,'',0,NULL),(193,'doctor','','','Female','','9999999999','                      \r\n                    ',NULL,'',0,NULL);
/*!40000 ALTER TABLE `ayurvedaapp_staffdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_state`
--

DROP TABLE IF EXISTS `ayurvedaapp_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_state` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `State_Name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_state`
--

LOCK TABLES `ayurvedaapp_state` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_state` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_state` VALUES (1,'Kerala'),(2,'Tamil Nadu'),(3,'Andra Pradesh'),(4,'Karnataka'),(5,'Telangana'),(6,'Bihar'),(7,'Madha Pradesh'),(8,'Uttar Pradesh'),(9,'Manipur'),(10,'Manipur'),(11,'Maharashtra'),(12,'Goa'),(13,'teststate1');
/*!40000 ALTER TABLE `ayurvedaapp_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_status`
--

DROP TABLE IF EXISTS `ayurvedaapp_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_status` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `stype` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_status`
--

LOCK TABLES `ayurvedaapp_status` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_status` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_status` VALUES (1,'pending'),(2,'converted'),(3,'closed');
/*!40000 ALTER TABLE `ayurvedaapp_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_stockauditlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_stockauditlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_stockauditlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(10) NOT NULL,
  `qty` int DEFAULT NULL,
  `action_date` date NOT NULL,
  `action_time` time(6) NOT NULL,
  `branch_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `staff_id` bigint DEFAULT NULL,
  `stock_id` bigint NOT NULL,
  `store_id` bigint DEFAULT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_stockaud_branch_id_ae5f5bf6_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_stockaud_item_id_f2811dc9_fk_ayurvedaa` (`item_id`),
  KEY `ayurvedaapp_stockaud_staff_id_a5523d66_fk_ayurvedaa` (`staff_id`),
  KEY `ayurvedaapp_stockaud_stock_id_d03fdd43_fk_ayurvedaa` (`stock_id`),
  KEY `ayurvedaapp_stockaud_store_id_eed8b71c_fk_ayurvedaa` (`store_id`),
  CONSTRAINT `ayurvedaapp_stockaud_branch_id_ae5f5bf6_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_stockaud_item_id_f2811dc9_fk_ayurvedaa` FOREIGN KEY (`item_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_stockaud_staff_id_a5523d66_fk_ayurvedaa` FOREIGN KEY (`staff_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_stockaud_stock_id_d03fdd43_fk_ayurvedaa` FOREIGN KEY (`stock_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_stockaud_store_id_eed8b71c_fk_ayurvedaa` FOREIGN KEY (`store_id`) REFERENCES `ayurvedaapp_storedetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stockauditlog`
--

LOCK TABLES `ayurvedaapp_stockauditlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stockauditlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_stockauditlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_stockeditlogtabl`
--

DROP TABLE IF EXISTS `ayurvedaapp_stockeditlogtabl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_stockeditlogtabl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `quantity_before` int NOT NULL,
  `quantity_after` int NOT NULL,
  `edit_time` datetime(6) NOT NULL,
  `current_date` date NOT NULL,
  `editstaffno_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_stockedi_editstaffno_id_4fb2f56b_fk_ayurvedaa` (`editstaffno_id`),
  CONSTRAINT `ayurvedaapp_stockedi_editstaffno_id_4fb2f56b_fk_ayurvedaa` FOREIGN KEY (`editstaffno_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stockeditlogtabl`
--

LOCK TABLES `ayurvedaapp_stockeditlogtabl` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stockeditlogtabl` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_stockeditlogtabl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_stockentryphysicalstockdetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_stockentryphysicalstockdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_stockentryphysicalstockdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Manufacturer_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Batch_no` varchar(500) NOT NULL,
  `Rate` varchar(300) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `currentdate` date NOT NULL,
  `Comapany_name_id` bigint DEFAULT NULL,
  `itemnm_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `storenm_id` bigint NOT NULL,
  `suppliernm_id` bigint DEFAULT NULL,
  `unt_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_stockent_Comapany_name_id_e1a78633_fk_ayurvedaa` (`Comapany_name_id`),
  KEY `ayurvedaapp_stockent_itemnm_id_f38ceb97_fk_ayurvedaa` (`itemnm_id`),
  KEY `ayurvedaapp_stockent_preparedby_id_f651d148_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_stockent_storenm_id_feb6e1c1_fk_ayurvedaa` (`storenm_id`),
  KEY `ayurvedaapp_stockent_suppliernm_id_9446dad0_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_stockent_unt_id_692944c9_fk_ayurvedaa` (`unt_id`),
  CONSTRAINT `ayurvedaapp_stockent_Comapany_name_id_e1a78633_fk_ayurvedaa` FOREIGN KEY (`Comapany_name_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_stockent_itemnm_id_f38ceb97_fk_ayurvedaa` FOREIGN KEY (`itemnm_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_stockent_preparedby_id_f651d148_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_stockent_storenm_id_feb6e1c1_fk_ayurvedaa` FOREIGN KEY (`storenm_id`) REFERENCES `ayurvedaapp_storedetails` (`id`),
  CONSTRAINT `ayurvedaapp_stockent_suppliernm_id_9446dad0_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`),
  CONSTRAINT `ayurvedaapp_stockent_unt_id_692944c9_fk_ayurvedaa` FOREIGN KEY (`unt_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stockentryphysicalstockdetails`
--

LOCK TABLES `ayurvedaapp_stockentryphysicalstockdetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stockentryphysicalstockdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_stockentryphysicalstockdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_stocktransfer`
--

DROP TABLE IF EXISTS `ayurvedaapp_stocktransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_stocktransfer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `transfer_number` varchar(50) NOT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `actual_delivery_date` date DEFAULT NULL,
  `remarks` longtext,
  `requested_qty` int NOT NULL,
  `status` varchar(20) NOT NULL,
  `total_items` int NOT NULL,
  `total_quantity` int NOT NULL,
  `verified_by` int DEFAULT NULL,
  `verified_at` datetime(6) DEFAULT NULL,
  `verified_remarks` longtext,
  `approved_by` int DEFAULT NULL,
  `approved_at` datetime(6) DEFAULT NULL,
  `approved_remarks` longtext,
  `dispatched_by` int DEFAULT NULL,
  `dispatched_at` datetime(6) DEFAULT NULL,
  `received_by` int DEFAULT NULL,
  `received_at` datetime(6) DEFAULT NULL,
  `rejection_reason` longtext,
  `created_by` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_branch_id` bigint DEFAULT NULL,
  `purchase_order_id` bigint DEFAULT NULL,
  `to_branch_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transfer_number` (`transfer_number`),
  KEY `ayurvedaapp_stocktra_from_branch_id_485ad098_fk_ayurvedaa` (`from_branch_id`),
  KEY `ayurvedaapp_stocktra_purchase_order_id_e92b8477_fk_ayurvedaa` (`purchase_order_id`),
  KEY `ayurvedaapp_stocktra_to_branch_id_2d1eae64_fk_ayurvedaa` (`to_branch_id`),
  CONSTRAINT `ayurvedaapp_stocktra_from_branch_id_485ad098_fk_ayurvedaa` FOREIGN KEY (`from_branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_stocktra_purchase_order_id_e92b8477_fk_ayurvedaa` FOREIGN KEY (`purchase_order_id`) REFERENCES `ayurvedaapp_purchaseorder` (`id`),
  CONSTRAINT `ayurvedaapp_stocktra_to_branch_id_2d1eae64_fk_ayurvedaa` FOREIGN KEY (`to_branch_id`) REFERENCES `ayurvedaapp_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stocktransfer`
--

LOCK TABLES `ayurvedaapp_stocktransfer` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stocktransfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_stocktransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_stocktransferitem`
--

DROP TABLE IF EXISTS `ayurvedaapp_stocktransferitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_stocktransferitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `approved_quantity` int NOT NULL,
  `quantity` int NOT NULL,
  `transferred_quantity` int NOT NULL,
  `requested_quantity` int NOT NULL,
  `verified_quantity` int NOT NULL,
  `received_quantity` int NOT NULL,
  `verification_remarks` longtext,
  `batch_no` varchar(500) NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `manufacturer_date` date DEFAULT NULL,
  `rate` decimal(10,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `status` varchar(20) NOT NULL,
  `notes` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `destination_stock_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `po_item_id` bigint DEFAULT NULL,
  `source_stock_id` bigint DEFAULT NULL,
  `stock_transfer_id` bigint NOT NULL,
  `unit_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_stocktra_destination_stock_id_6687e7af_fk_ayurvedaa` (`destination_stock_id`),
  KEY `ayurvedaapp_stocktra_item_id_a1a32331_fk_ayurvedaa` (`item_id`),
  KEY `ayurvedaapp_stocktra_po_item_id_feb870c9_fk_ayurvedaa` (`po_item_id`),
  KEY `ayurvedaapp_stocktra_source_stock_id_7a9f18b2_fk_ayurvedaa` (`source_stock_id`),
  KEY `ayurvedaapp_stocktra_stock_transfer_id_69a6978c_fk_ayurvedaa` (`stock_transfer_id`),
  KEY `ayurvedaapp_stocktra_unit_id_7fca7ced_fk_ayurvedaa` (`unit_id`),
  CONSTRAINT `ayurvedaapp_stocktra_destination_stock_id_6687e7af_fk_ayurvedaa` FOREIGN KEY (`destination_stock_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_stocktra_item_id_a1a32331_fk_ayurvedaa` FOREIGN KEY (`item_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_stocktra_po_item_id_feb870c9_fk_ayurvedaa` FOREIGN KEY (`po_item_id`) REFERENCES `ayurvedaapp_poitem` (`id`),
  CONSTRAINT `ayurvedaapp_stocktra_source_stock_id_7a9f18b2_fk_ayurvedaa` FOREIGN KEY (`source_stock_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_stocktra_stock_transfer_id_69a6978c_fk_ayurvedaa` FOREIGN KEY (`stock_transfer_id`) REFERENCES `ayurvedaapp_stocktransfer` (`id`),
  CONSTRAINT `ayurvedaapp_stocktra_unit_id_7fca7ced_fk_ayurvedaa` FOREIGN KEY (`unit_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stocktransferitem`
--

LOCK TABLES `ayurvedaapp_stocktransferitem` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stocktransferitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_stocktransferitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_stocktransferlog`
--

DROP TABLE IF EXISTS `ayurvedaapp_stocktransferlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_stocktransferlog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(20) NOT NULL,
  `old_status` varchar(20) DEFAULT NULL,
  `new_status` varchar(20) DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `remarks` longtext,
  `created_at` datetime(6) NOT NULL,
  `stock_transfer_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_stocktra_stock_transfer_id_21baa478_fk_ayurvedaa` (`stock_transfer_id`),
  CONSTRAINT `ayurvedaapp_stocktra_stock_transfer_id_21baa478_fk_ayurvedaa` FOREIGN KEY (`stock_transfer_id`) REFERENCES `ayurvedaapp_stocktransfer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_stocktransferlog`
--

LOCK TABLES `ayurvedaapp_stocktransferlog` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_stocktransferlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_stocktransferlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_storedetails`
--

DROP TABLE IF EXISTS `ayurvedaapp_storedetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_storedetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `storename` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_storedetails`
--

LOCK TABLES `ayurvedaapp_storedetails` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_storedetails` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_storedetails` VALUES (1,'store1'),(2,'store2');
/*!40000 ALTER TABLE `ayurvedaapp_storedetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_supplier`
--

DROP TABLE IF EXISTS `ayurvedaapp_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_supplier` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `suppliercode` varchar(100) DEFAULT NULL,
  `shopname` varchar(300) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactnumber` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_supplier`
--

LOCK TABLES `ayurvedaapp_supplier` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_supplier` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_supplier` VALUES (31,'test supplier','test','','','9999999999'),(32,'','Noarch ','Chennai','','91503 68887'),(33,'1180','DHAN INFOTECH','4/1180 , Edappally-Pukkattupady road\r\nJudgemukku, Thrikkakara P.O\r\nErnakulam- 682021','','9656155666'),(34,'3047','AJDISTI INDIA PVT LTD','NAKSHATHRA BUILDING, THOUNDAYIL ROAD, PANAMPILLY NAGAR, COCHIN - 36 ERNAKULAM, KERALA, INDIA','','9745166084');
/*!40000 ALTER TABLE `ayurvedaapp_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_systematicexamination`
--

DROP TABLE IF EXISTS `ayurvedaapp_systematicexamination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_systematicexamination` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `sysexamination` varchar(800) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_systemat_MR_Number_id_0ee6a2a9_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_systemat_MR_Number_id_0ee6a2a9_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_systematicexamination`
--

LOCK TABLES `ayurvedaapp_systematicexamination` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_systematicexamination` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_systematicexamination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_taxmaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_taxmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_taxmaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `taxrate` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_taxmaster`
--

LOCK TABLES `ayurvedaapp_taxmaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_taxmaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_taxmaster` VALUES (1,'5.0'),(2,'12.0'),(3,'18.0'),(4,'28.0'),(5,'5.0'),(6,'5.0'),(7,'0.0'),(8,'5.0');
/*!40000 ALTER TABLE `ayurvedaapp_taxmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatment`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tratmntid` varchar(100) NOT NULL,
  `treatment_details` longtext NOT NULL,
  `mr_number` varchar(100) NOT NULL,
  `patient_name` varchar(200) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatment`
--

LOCK TABLES `ayurvedaapp_treatment` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatment_chart`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatment_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatment_chart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `EM` varchar(500) NOT NULL,
  `Morning` varchar(500) NOT NULL,
  `Afternoon` varchar(500) NOT NULL,
  `Evening` varchar(500) NOT NULL,
  `Night` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_treatmen_MR_Number_id_f7193413_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_treatmen_MR_Number_id_f7193413_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatment_chart`
--

LOCK TABLES `ayurvedaapp_treatment_chart` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_chart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatment_givenby`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatment_givenby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatment_givenby` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatment_id` bigint NOT NULL,
  `staffdetails_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ayurvedaapp_treatment_gi_treatment_id_staffdetail_11a722ff_uniq` (`treatment_id`,`staffdetails_id`),
  KEY `ayurvedaapp_treatmen_staffdetails_id_3f7db712_fk_ayurvedaa` (`staffdetails_id`),
  CONSTRAINT `ayurvedaapp_treatmen_staffdetails_id_3f7db712_fk_ayurvedaa` FOREIGN KEY (`staffdetails_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_treatmen_treatment_id_69ca3bda_fk_ayurvedaa` FOREIGN KEY (`treatment_id`) REFERENCES `ayurvedaapp_treatment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatment_givenby`
--

LOCK TABLES `ayurvedaapp_treatment_givenby` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_givenby` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_givenby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatment_handledby`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatment_handledby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatment_handledby` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatment_id` bigint NOT NULL,
  `staffdetails_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ayurvedaapp_treatment_ha_treatment_id_staffdetail_e2dc78d8_uniq` (`treatment_id`,`staffdetails_id`),
  KEY `ayurvedaapp_treatmen_staffdetails_id_36152265_fk_ayurvedaa` (`staffdetails_id`),
  CONSTRAINT `ayurvedaapp_treatmen_staffdetails_id_36152265_fk_ayurvedaa` FOREIGN KEY (`staffdetails_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_treatmen_treatment_id_db4497ac_fk_ayurvedaa` FOREIGN KEY (`treatment_id`) REFERENCES `ayurvedaapp_treatment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatment_handledby`
--

LOCK TABLES `ayurvedaapp_treatment_handledby` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_handledby` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_handledby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatment_master`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatment_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatment_master` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Treatment_name` varchar(300) NOT NULL,
  `Rate` varchar(300) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Status` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatment_master`
--

LOCK TABLES `ayurvedaapp_treatment_master` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatment_master` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_treatment_master` VALUES (1,'Surgery','3560','                                                                                    test\r\n                   \r\n                   \r\n                   \r\n                   ','active');
/*!40000 ALTER TABLE `ayurvedaapp_treatment_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatmentadvised`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatmentadvised`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatmentadvised` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `treatmentadviseddescription` varchar(1000) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_treatmen_MR_Number_id_17b90594_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_treatmen_MR_Number_id_17b90594_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatmentadvised`
--

LOCK TABLES `ayurvedaapp_treatmentadvised` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatmentadvised` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_treatmentadvised` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatmentinvoicechild`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatmentinvoicechild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatmentinvoicechild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `particulars` varchar(400) NOT NULL,
  `amount` double NOT NULL,
  `sutotal` double NOT NULL,
  `currentdate` date NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `invmasterid_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_treatmen_Mrno_id_081062e8_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_treatmen_invmasterid_id_9f777794_fk_ayurvedaa` (`invmasterid_id`),
  CONSTRAINT `ayurvedaapp_treatmen_invmasterid_id_9f777794_fk_ayurvedaa` FOREIGN KEY (`invmasterid_id`) REFERENCES `ayurvedaapp_treatmentinvoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_treatmen_Mrno_id_081062e8_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatmentinvoicechild`
--

LOCK TABLES `ayurvedaapp_treatmentinvoicechild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatmentinvoicechild` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_treatmentinvoicechild` VALUES (1,2,'test treatment',356,712,'2026-04-09','TRMNO202604091','test','MRNO202604091 - test','9048272638',NULL,1),(2,1,'test treatment',356,356,'2026-05-12','TRMNO202605121','test','MRNO202604091 - test','9048272638',NULL,2),(3,1,'Surgery',3560,3560,'2026-06-10','TRMNO202606101','test','MRNO202605261 - testpt','9999999999',NULL,3),(4,1,'Surgery',3000,3000,'2026-06-11','TRMNO202606111','test','MRNO20260611  1 - test7678','8789978789',NULL,4),(5,1,'Surgery',3000,3000,'2026-06-12','TRMNO202606121','test','MRNO202606082 - testpatient123','8992882991',NULL,5);
/*!40000 ALTER TABLE `ayurvedaapp_treatmentinvoicechild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatmentinvoicemaster`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatmentinvoicemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatmentinvoicemaster` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `treatmentInvoicenumber` varchar(400) NOT NULL,
  `currentdate` date NOT NULL,
  `subtotal` double NOT NULL,
  `tax` double NOT NULL,
  `shipping` double NOT NULL,
  `total` double NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `discount` varchar(15) DEFAULT NULL,
  `consultationfee` varchar(400) DEFAULT NULL,
  `consultationfeecumregfee` varchar(400) DEFAULT NULL,
  `cancelstatus` tinyint(1) NOT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `branch_id` bigint NOT NULL,
  `hospitalname_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `paymentmode` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_treatmen_Mrno_id_85df718e_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_treatmen_branch_id_2d867a4d_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_treatmen_hospitalname_id_22bf560e_fk_ayurvedaa` (`hospitalname_id`),
  KEY `ayurvedaapp_treatmen_preparedby_id_0df9ac36_fk_ayurvedaa` (`preparedby_id`),
  CONSTRAINT `ayurvedaapp_treatmen_branch_id_2d867a4d_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_treatmen_hospitalname_id_22bf560e_fk_ayurvedaa` FOREIGN KEY (`hospitalname_id`) REFERENCES `ayurvedaapp_hospitaldetails` (`id`),
  CONSTRAINT `ayurvedaapp_treatmen_Mrno_id_85df718e_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_treatmen_preparedby_id_0df9ac36_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatmentinvoicemaster`
--

LOCK TABLES `ayurvedaapp_treatmentinvoicemaster` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatmentinvoicemaster` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_treatmentinvoicemaster` VALUES (1,'TRMNO202604091','2026-04-09',712,1,0,712,'MRNO202604091 - test','9048272638','0','','',0,NULL,5,2,1,'Cash'),(2,'TRMNO202605121','2026-05-12',356,1,0,356,'MRNO202604091 - test','9048272638','0','','',1,NULL,5,2,1,'Cash'),(3,'TRMNO202606101','2026-06-10',3560,1,0,3560,'MRNO202605261 - testpt','9999999999','0','','',0,NULL,5,2,1,'Cash'),(4,'TRMNO202606111','2026-06-11',3000,5,0,3150,'MRNO20260611  1 - test7678','8789978789','0','','',0,NULL,5,2,1,'Cash'),(5,'TRMNO202606121','2026-06-12',3000,5,0,3150,'MRNO202606082 - testpatient123','8992882991','0','','',0,NULL,5,2,1,'Cash');
/*!40000 ALTER TABLE `ayurvedaapp_treatmentinvoicemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_treatmentroom_details`
--

DROP TABLE IF EXISTS `ayurvedaapp_treatmentroom_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_treatmentroom_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Floorno` varchar(50) NOT NULL,
  `Roomno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_treatmentroom_details`
--

LOCK TABLES `ayurvedaapp_treatmentroom_details` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_treatmentroom_details` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_treatmentroom_details` VALUES (1,'floor 1','room 100'),(2,'Floor 5','test room 111');
/*!40000 ALTER TABLE `ayurvedaapp_treatmentroom_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_triggeraftersalereturn`
--

DROP TABLE IF EXISTS `ayurvedaapp_triggeraftersalereturn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_triggeraftersalereturn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `particulars` varchar(400) NOT NULL,
  `amount` double NOT NULL,
  `sutotal` double NOT NULL,
  `currentdate` date NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `description` varchar(400) NOT NULL,
  `patientname` varchar(400) DEFAULT NULL,
  `patientphno` varchar(15) DEFAULT NULL,
  `batchno` varchar(400) DEFAULT NULL,
  `expirydate` varchar(400) DEFAULT NULL,
  `mfg` varchar(400) DEFAULT NULL,
  `unt` varchar(400) NOT NULL,
  `hsncode` varchar(400) NOT NULL,
  `sales_return` tinyint(1) NOT NULL,
  `return_quantity` varchar(400) DEFAULT NULL,
  `Mrno_id` bigint DEFAULT NULL,
  `invmasterid_id` bigint DEFAULT NULL,
  `suppid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_triggera_Mrno_id_d4e93eb5_fk_ayurvedaa` (`Mrno_id`),
  KEY `ayurvedaapp_triggera_invmasterid_id_3fa02f1a_fk_ayurvedaa` (`invmasterid_id`),
  KEY `ayurvedaapp_triggera_suppid_id_e2dd4e3f_fk_ayurvedaa` (`suppid_id`),
  CONSTRAINT `ayurvedaapp_triggera_invmasterid_id_3fa02f1a_fk_ayurvedaa` FOREIGN KEY (`invmasterid_id`) REFERENCES `ayurvedaapp_invoicemaster` (`id`),
  CONSTRAINT `ayurvedaapp_triggera_Mrno_id_d4e93eb5_fk_ayurvedaa` FOREIGN KEY (`Mrno_id`) REFERENCES `ayurvedaapp_patient_details` (`id`),
  CONSTRAINT `ayurvedaapp_triggera_suppid_id_e2dd4e3f_fk_ayurvedaa` FOREIGN KEY (`suppid_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_triggeraftersalereturn`
--

LOCK TABLES `ayurvedaapp_triggeraftersalereturn` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_triggeraftersalereturn` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_triggeraftersalereturn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_triggerforafterupdatestock`
--

DROP TABLE IF EXISTS `ayurvedaapp_triggerforafterupdatestock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_triggerforafterupdatestock` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Manufacturer_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Batch_no` varchar(500) NOT NULL,
  `Rate` varchar(300) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `lastupdatedate` date NOT NULL,
  `Comapany_name_id` bigint DEFAULT NULL,
  `insertedstaffid_id` bigint NOT NULL,
  `itemnm_id` bigint NOT NULL,
  `physicalstockid_id` bigint NOT NULL,
  `storenm_id` bigint NOT NULL,
  `suppliernm_id` bigint DEFAULT NULL,
  `unt_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_triggerf_Comapany_name_id_ef601803_fk_ayurvedaa` (`Comapany_name_id`),
  KEY `ayurvedaapp_triggerf_insertedstaffid_id_04df83cc_fk_ayurvedaa` (`insertedstaffid_id`),
  KEY `ayurvedaapp_triggerf_itemnm_id_e0c424d3_fk_ayurvedaa` (`itemnm_id`),
  KEY `ayurvedaapp_triggerf_physicalstockid_id_e09a71ce_fk_ayurvedaa` (`physicalstockid_id`),
  KEY `ayurvedaapp_triggerf_storenm_id_4bcdcdc6_fk_ayurvedaa` (`storenm_id`),
  KEY `ayurvedaapp_triggerf_suppliernm_id_d4663f03_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_triggerf_unt_id_896990de_fk_ayurvedaa` (`unt_id`),
  CONSTRAINT `ayurvedaapp_triggerf_Comapany_name_id_ef601803_fk_ayurvedaa` FOREIGN KEY (`Comapany_name_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_insertedstaffid_id_04df83cc_fk_ayurvedaa` FOREIGN KEY (`insertedstaffid_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_itemnm_id_e0c424d3_fk_ayurvedaa` FOREIGN KEY (`itemnm_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_physicalstockid_id_e09a71ce_fk_ayurvedaa` FOREIGN KEY (`physicalstockid_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_storenm_id_4bcdcdc6_fk_ayurvedaa` FOREIGN KEY (`storenm_id`) REFERENCES `ayurvedaapp_storedetails` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_suppliernm_id_d4663f03_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_unt_id_896990de_fk_ayurvedaa` FOREIGN KEY (`unt_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_triggerforafterupdatestock`
--

LOCK TABLES `ayurvedaapp_triggerforafterupdatestock` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_triggerforafterupdatestock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_triggerforafterupdatestock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_triggerforstock`
--

DROP TABLE IF EXISTS `ayurvedaapp_triggerforstock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_triggerforstock` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Manufacturer_date` date DEFAULT NULL,
  `Expiry_date` date DEFAULT NULL,
  `Batch_no` varchar(500) NOT NULL,
  `Rate` varchar(300) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `lastupdatedate` date NOT NULL,
  `Comapany_name_id` bigint DEFAULT NULL,
  `insertedstaffid_id` bigint NOT NULL,
  `itemnm_id` bigint NOT NULL,
  `physicalstockid_id` bigint NOT NULL,
  `storenm_id` bigint NOT NULL,
  `suppliernm_id` bigint DEFAULT NULL,
  `unt_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_triggerf_Comapany_name_id_f73afc3e_fk_ayurvedaa` (`Comapany_name_id`),
  KEY `ayurvedaapp_triggerf_insertedstaffid_id_83c2bbf4_fk_ayurvedaa` (`insertedstaffid_id`),
  KEY `ayurvedaapp_triggerf_itemnm_id_1cfd2b40_fk_ayurvedaa` (`itemnm_id`),
  KEY `ayurvedaapp_triggerf_physicalstockid_id_a7a1817f_fk_ayurvedaa` (`physicalstockid_id`),
  KEY `ayurvedaapp_triggerf_storenm_id_96347dbc_fk_ayurvedaa` (`storenm_id`),
  KEY `ayurvedaapp_triggerf_suppliernm_id_2ec84433_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_triggerf_unt_id_ebaac5fa_fk_ayurvedaa` (`unt_id`),
  CONSTRAINT `ayurvedaapp_triggerf_Comapany_name_id_f73afc3e_fk_ayurvedaa` FOREIGN KEY (`Comapany_name_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_insertedstaffid_id_83c2bbf4_fk_ayurvedaa` FOREIGN KEY (`insertedstaffid_id`) REFERENCES `ayurvedaapp_staffdetails` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_itemnm_id_1cfd2b40_fk_ayurvedaa` FOREIGN KEY (`itemnm_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_physicalstockid_id_a7a1817f_fk_ayurvedaa` FOREIGN KEY (`physicalstockid_id`) REFERENCES `ayurvedaapp_physicalstockdetails` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_storenm_id_96347dbc_fk_ayurvedaa` FOREIGN KEY (`storenm_id`) REFERENCES `ayurvedaapp_storedetails` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_suppliernm_id_2ec84433_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`),
  CONSTRAINT `ayurvedaapp_triggerf_unt_id_ebaac5fa_fk_ayurvedaa` FOREIGN KEY (`unt_id`) REFERENCES `ayurvedaapp_unitdt` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_triggerforstock`
--

LOCK TABLES `ayurvedaapp_triggerforstock` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_triggerforstock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_triggerforstock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_triggerupdate_purchaseorderchild`
--

DROP TABLE IF EXISTS `ayurvedaapp_triggerupdate_purchaseorderchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_triggerupdate_purchaseorderchild` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `putrchaseorderno` varchar(300) NOT NULL,
  `suppliercontactnumber` varchar(100) NOT NULL,
  `orderdate` date DEFAULT NULL,
  `itemquantity` varchar(300) NOT NULL,
  `balance` varchar(300) NOT NULL,
  `extraqty` varchar(300) NOT NULL,
  `currentdate` datetime(6) NOT NULL,
  `branch_id` bigint NOT NULL,
  `itemcompany_id` bigint DEFAULT NULL,
  `itemname_id` bigint NOT NULL,
  `preparedby_id` bigint DEFAULT NULL,
  `purchaseorderhid_id` bigint NOT NULL,
  `suppliernm_id` bigint NOT NULL,
  `itemunit_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_triggeru_branch_id_0627350c_fk_ayurvedaa` (`branch_id`),
  KEY `ayurvedaapp_triggeru_itemcompany_id_212b6fd4_fk_ayurvedaa` (`itemcompany_id`),
  KEY `ayurvedaapp_triggeru_itemname_id_2181ca67_fk_ayurvedaa` (`itemname_id`),
  KEY `ayurvedaapp_triggeru_preparedby_id_bcfa3b65_fk_ayurvedaa` (`preparedby_id`),
  KEY `ayurvedaapp_triggeru_purchaseorderhid_id_48d7415e_fk_ayurvedaa` (`purchaseorderhid_id`),
  KEY `ayurvedaapp_triggeru_suppliernm_id_eb777cfb_fk_ayurvedaa` (`suppliernm_id`),
  KEY `ayurvedaapp_triggeru_itemunit_id_33c9f5dc_fk_ayurvedaa` (`itemunit_id`),
  CONSTRAINT `ayurvedaapp_triggeru_branch_id_0627350c_fk_ayurvedaa` FOREIGN KEY (`branch_id`) REFERENCES `ayurvedaapp_branch` (`id`),
  CONSTRAINT `ayurvedaapp_triggeru_itemcompany_id_212b6fd4_fk_ayurvedaa` FOREIGN KEY (`itemcompany_id`) REFERENCES `ayurvedaapp_comapany` (`id`),
  CONSTRAINT `ayurvedaapp_triggeru_itemname_id_2181ca67_fk_ayurvedaa` FOREIGN KEY (`itemname_id`) REFERENCES `ayurvedaapp_medicinemaster` (`id`),
  CONSTRAINT `ayurvedaapp_triggeru_itemunit_id_33c9f5dc_fk_ayurvedaa` FOREIGN KEY (`itemunit_id`) REFERENCES `ayurvedaapp_unitdt` (`id`),
  CONSTRAINT `ayurvedaapp_triggeru_preparedby_id_bcfa3b65_fk_ayurvedaa` FOREIGN KEY (`preparedby_id`) REFERENCES `ayurvedaapp_staffallocation` (`id`),
  CONSTRAINT `ayurvedaapp_triggeru_purchaseorderhid_id_48d7415e_fk_ayurvedaa` FOREIGN KEY (`purchaseorderhid_id`) REFERENCES `ayurvedaapp_purchaseorderheader` (`id`),
  CONSTRAINT `ayurvedaapp_triggeru_suppliernm_id_eb777cfb_fk_ayurvedaa` FOREIGN KEY (`suppliernm_id`) REFERENCES `ayurvedaapp_supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_triggerupdate_purchaseorderchild`
--

LOCK TABLES `ayurvedaapp_triggerupdate_purchaseorderchild` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_triggerupdate_purchaseorderchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_triggerupdate_purchaseorderchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_unitdt`
--

DROP TABLE IF EXISTS `ayurvedaapp_unitdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_unitdt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `unitname` varchar(300) NOT NULL,
  `basequantity` varchar(300) NOT NULL,
  `bsuntid_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_unitdt_bsuntid_id_9bc7c121_fk_ayurvedaa` (`bsuntid_id`),
  CONSTRAINT `ayurvedaapp_unitdt_bsuntid_id_9bc7c121_fk_ayurvedaa` FOREIGN KEY (`bsuntid_id`) REFERENCES `ayurvedaapp_baseunit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_unitdt`
--

LOCK TABLES `ayurvedaapp_unitdt` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_unitdt` DISABLE KEYS */;
INSERT INTO `ayurvedaapp_unitdt` VALUES (7,'BTL','1',48),(8,'STRP','1',49),(9,'SACH','1',50),(10,'NOS','1',51),(11,'PKT','1',52),(12,'0','1',53),(15,'CAPSULES','1',49),(16,'ML','100',55),(17,'g','1',56);
/*!40000 ALTER TABLE `ayurvedaapp_unitdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_vitals`
--

DROP TABLE IF EXISTS `ayurvedaapp_vitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_vitals` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Blood_Pressure` varchar(500) NOT NULL,
  `Pulse_rate` varchar(500) NOT NULL,
  `Respiratory_rate` varchar(500) NOT NULL,
  `Spo` varchar(500) NOT NULL,
  `Temperature` varchar(500) NOT NULL,
  `Height` varchar(500) NOT NULL,
  `Weight` varchar(500) NOT NULL,
  `BMI` varchar(500) NOT NULL,
  `IBW` varchar(500) NOT NULL,
  `Blood_Parameter_Record` varchar(500) NOT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_vitals_MR_Number_id_fed64b5d_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_vitals_MR_Number_id_fed64b5d_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_vitals`
--

LOCK TABLES `ayurvedaapp_vitals` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_vitals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_vitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_vyadhipariksha`
--

DROP TABLE IF EXISTS `ayurvedaapp_vyadhipariksha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_vyadhipariksha` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Current_Date` date NOT NULL,
  `Nidana` varchar(500) DEFAULT NULL,
  `Purvaroopa` varchar(500) DEFAULT NULL,
  `Roopa` varchar(500) DEFAULT NULL,
  `UpshayaAnupshaya` varchar(500) DEFAULT NULL,
  `MR_Number_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ayurvedaapp_vyadhipa_MR_Number_id_7eb286de_fk_ayurvedaa` (`MR_Number_id`),
  CONSTRAINT `ayurvedaapp_vyadhipa_MR_Number_id_7eb286de_fk_ayurvedaa` FOREIGN KEY (`MR_Number_id`) REFERENCES `ayurvedaapp_patient_details` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_vyadhipariksha`
--

LOCK TABLES `ayurvedaapp_vyadhipariksha` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_vyadhipariksha` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_vyadhipariksha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_zohoaccesstoken`
--

DROP TABLE IF EXISTS `ayurvedaapp_zohoaccesstoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_zohoaccesstoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `access_token` longtext NOT NULL,
  `expires_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_zohoaccesstoken`
--

LOCK TABLES `ayurvedaapp_zohoaccesstoken` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_zohoaccesstoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_zohoaccesstoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ayurvedaapp_zohoconfig`
--

DROP TABLE IF EXISTS `ayurvedaapp_zohoconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ayurvedaapp_zohoconfig` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `refresh_token` longtext NOT NULL,
  `token_url` varchar(200) NOT NULL,
  `contacts_url` varchar(200) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ayurvedaapp_zohoconfig`
--

LOCK TABLES `ayurvedaapp_zohoconfig` WRITE;
/*!40000 ALTER TABLE `ayurvedaapp_zohoconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `ayurvedaapp_zohoconfig` ENABLE KEYS */;
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
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'ayurvedaapp','admin'),(129,'ayurvedaapp','adviceondischarge'),(172,'ayurvedaapp','appointmenteditlog'),(177,'ayurvedaapp','appointmentfee'),(168,'ayurvedaapp','appointmentfeerule'),(152,'ayurvedaapp','appointmentinvoicemaster'),(78,'ayurvedaapp','appointments'),(58,'ayurvedaapp','ashtavidhpariksha'),(175,'ayurvedaapp','assignedappointments'),(183,'ayurvedaapp','b2binvoice'),(184,'ayurvedaapp','b2binvoiceitem'),(185,'ayurvedaapp','b2cinvoice'),(186,'ayurvedaapp','b2cinvoiceitem'),(8,'ayurvedaapp','baseunit'),(9,'ayurvedaapp','batch'),(10,'ayurvedaapp','branch'),(143,'ayurvedaapp','casehistorydietplan'),(144,'ayurvedaapp','casehistorydoctorsnote'),(105,'ayurvedaapp','casehistoryerrorlog'),(178,'ayurvedaapp','casehistorylabbill'),(149,'ayurvedaapp','casehistorylabresult'),(148,'ayurvedaapp','casehistorylabtestrequisition'),(145,'ayurvedaapp','casehistorymedicalandsurgicalhistory'),(113,'ayurvedaapp','casehistoryresultreport'),(146,'ayurvedaapp','casehistorytreatmentplan'),(11,'ayurvedaapp','casehistrypersonalinfo'),(147,'ayurvedaapp','casehistryvitals'),(12,'ayurvedaapp','casemedicalreport'),(197,'ayurvedaapp','casualityinvoicechild'),(198,'ayurvedaapp','casualityinvoicemaster'),(13,'ayurvedaapp','city'),(108,'ayurvedaapp','clairvedacasehistory'),(109,'ayurvedaapp','clairvedafollowup'),(110,'ayurvedaapp','clairvedafollowupreport'),(111,'ayurvedaapp','clairvedaprescription'),(112,'ayurvedaapp','clairvedcasehistrypersonalinfo'),(14,'ayurvedaapp','comapany'),(57,'ayurvedaapp','complaints'),(75,'ayurvedaapp','consultationinvdetails'),(15,'ayurvedaapp','country'),(82,'ayurvedaapp','creditdetailschild'),(74,'ayurvedaapp','creditdetailsmaster'),(166,'ayurvedaapp','creditnotechild'),(165,'ayurvedaapp','creditnotemaster'),(73,'ayurvedaapp','dailyreportforop'),(77,'ayurvedaapp','dailytreatmentdetails'),(133,'ayurvedaapp','dashboardallocation'),(132,'ayurvedaapp','dashboardesign'),(56,'ayurvedaapp','dashvidhpariksha'),(16,'ayurvedaapp','department'),(17,'ayurvedaapp','designation'),(55,'ayurvedaapp','diagnosis'),(106,'ayurvedaapp','diet'),(54,'ayurvedaapp','diet_chart'),(53,'ayurvedaapp','dietaryhistory'),(52,'ayurvedaapp','differentialdiagnosis'),(130,'ayurvedaapp','dischargemedicationprocedure'),(18,'ayurvedaapp','district'),(51,'ayurvedaapp','doctorprescription'),(101,'ayurvedaapp','enquiry'),(32,'ayurvedaapp','equipment_master'),(50,'ayurvedaapp','familyhistory'),(102,'ayurvedaapp','followup'),(114,'ayurvedaapp','followupcalldetails'),(153,'ayurvedaapp','food'),(49,'ayurvedaapp','generalphysicalexamination'),(97,'ayurvedaapp','grnchild'),(72,'ayurvedaapp','grnheader'),(195,'ayurvedaapp','headerdetails'),(48,'ayurvedaapp','hopastillness'),(47,'ayurvedaapp','hopresentillness'),(19,'ayurvedaapp','hospitaldetails'),(158,'ayurvedaapp','inventorycategory'),(159,'ayurvedaapp','inventorycompany'),(161,'ayurvedaapp','inventoryinvoicechild'),(160,'ayurvedaapp','inventoryinvoicemaster'),(162,'ayurvedaapp','inventorymaster'),(163,'ayurvedaapp','inventorystockdetails'),(81,'ayurvedaapp','invoicechild'),(20,'ayurvedaapp','invoiceerrorlog'),(71,'ayurvedaapp','invoicemaster'),(164,'ayurvedaapp','invreorderdetails'),(121,'ayurvedaapp','ipbill'),(118,'ayurvedaapp','ipdailymedicine'),(124,'ayurvedaapp','ipexpandedbillmedicinedetail'),(125,'ayurvedaapp','ipexpandedbillotherexpensesdetail'),(126,'ayurvedaapp','ipexpandedbillroomdetail'),(127,'ayurvedaapp','ipexpandedbilltreatmentdetail'),(134,'ayurvedaapp','ippackageextend'),(131,'ayurvedaapp','ippackagepayment'),(115,'ayurvedaapp','ippatientadmission'),(117,'ayurvedaapp','ippatientroombooking'),(119,'ayurvedaapp','iptreatmentdetails'),(36,'ayurvedaapp','itemaster'),(21,'ayurvedaapp','itemcategory'),(33,'ayurvedaapp','itemsubcategory'),(46,'ayurvedaapp','labinvestigation'),(191,'ayurvedaapp','labinvoicechild'),(192,'ayurvedaapp','labinvoicemaster'),(199,'ayurvedaapp','labrequisitionmaster'),(200,'ayurvedaapp','labresultmaster'),(141,'ayurvedaapp','labtestchild'),(142,'ayurvedaapp','labtestmaster'),(193,'ayurvedaapp','labunitmaster'),(45,'ayurvedaapp','med_history'),(107,'ayurvedaapp','medicalfollowup'),(34,'ayurvedaapp','medicalreportfile'),(44,'ayurvedaapp','medication'),(104,'ayurvedaapp','medicationentry'),(35,'ayurvedaapp','medicinemaster'),(156,'ayurvedaapp','medicinemaster_new'),(157,'ayurvedaapp','medicinemasterrate'),(37,'ayurvedaapp','menudetails'),(22,'ayurvedaapp','menuheadingdetails'),(67,'ayurvedaapp','menumanagement'),(43,'ayurvedaapp','menustralhistory'),(155,'ayurvedaapp','newinvoicechild'),(154,'ayurvedaapp','newinvoicemaster'),(103,'ayurvedaapp','nexdoctorprescription'),(86,'ayurvedaapp','nextreatmentdetailschild'),(42,'ayurvedaapp','nextreatmentdetailsmaster'),(194,'ayurvedaapp','normalvaluemaster'),(41,'ayurvedaapp','obghistory'),(40,'ayurvedaapp','obstretichistory'),(140,'ayurvedaapp','oppackagepayment'),(139,'ayurvedaapp','oppatientadmission'),(138,'ayurvedaapp','oppatienttimeslotbooking'),(136,'ayurvedaapp','oppatienttreamentroombooking'),(38,'ayurvedaapp','package_deatils'),(128,'ayurvedaapp','packagemaster'),(39,'ayurvedaapp','patient_details'),(59,'ayurvedaapp','patient_history'),(122,'ayurvedaapp','patientauditlog'),(120,'ayurvedaapp','patientdischarge'),(169,'ayurvedaapp','patientvisittracking'),(167,'ayurvedaapp','paymentupdatelog'),(171,'ayurvedaapp','paymentupdatelognew'),(60,'ayurvedaapp','personalhistory'),(61,'ayurvedaapp','personalhistoryold'),(62,'ayurvedaapp','phy_sys_examination'),(80,'ayurvedaapp','physicalstockdetails'),(182,'ayurvedaapp','poitem'),(63,'ayurvedaapp','preliminarydata'),(23,'ayurvedaapp','prescription'),(176,'ayurvedaapp','prescriptioneditlog'),(150,'ayurvedaapp','prescriptionnew'),(64,'ayurvedaapp','prescriptiont'),(137,'ayurvedaapp','proceduredt'),(196,'ayurvedaapp','proceduremaster'),(179,'ayurvedaapp','proformainvoice'),(181,'ayurvedaapp','proformaitem'),(180,'ayurvedaapp','purchaseorder'),(96,'ayurvedaapp','purchaseorderchild'),(70,'ayurvedaapp','purchaseorderheader'),(151,'ayurvedaapp','ratemaster'),(65,'ayurvedaapp','record_sheet'),(66,'ayurvedaapp','reorderleveldetails'),(24,'ayurvedaapp','role'),(76,'ayurvedaapp','roleassign'),(116,'ayurvedaapp','room_details'),(123,'ayurvedaapp','roomchangelog'),(68,'ayurvedaapp','sampraptighataka'),(100,'ayurvedaapp','sourcedetails'),(190,'ayurvedaapp','sourcelead'),(69,'ayurvedaapp','staffallocation'),(25,'ayurvedaapp','staffdetails'),(26,'ayurvedaapp','state'),(27,'ayurvedaapp','status'),(170,'ayurvedaapp','stockauditlog'),(79,'ayurvedaapp','stockeditlogtabl'),(95,'ayurvedaapp','stockentryphysicalstockdetails'),(187,'ayurvedaapp','stocktransfer'),(188,'ayurvedaapp','stocktransferitem'),(189,'ayurvedaapp','stocktransferlog'),(28,'ayurvedaapp','storedetails'),(29,'ayurvedaapp','supplier'),(83,'ayurvedaapp','systematicexamination'),(30,'ayurvedaapp','taxmaster'),(84,'ayurvedaapp','treatment'),(85,'ayurvedaapp','treatment_chart'),(31,'ayurvedaapp','treatment_master'),(87,'ayurvedaapp','treatmentadvised'),(89,'ayurvedaapp','treatmentinvoicechild'),(88,'ayurvedaapp','treatmentinvoicemaster'),(135,'ayurvedaapp','treatmentroom_details'),(90,'ayurvedaapp','triggeraftersalereturn'),(94,'ayurvedaapp','triggerforafterupdatestock'),(93,'ayurvedaapp','triggerforstock'),(92,'ayurvedaapp','triggerupdate_purchaseorderchild'),(91,'ayurvedaapp','unitdt'),(98,'ayurvedaapp','vitals'),(99,'ayurvedaapp','vyadhipariksha'),(173,'ayurvedaapp','zohoaccesstoken'),(174,'ayurvedaapp','zohoconfig'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-04-07 17:41:19.634978'),(2,'auth','0001_initial','2026-04-07 17:41:20.369751'),(3,'admin','0001_initial','2026-04-07 17:41:20.504092'),(4,'admin','0002_logentry_remove_auto_add','2026-04-07 17:41:20.517054'),(5,'admin','0003_logentry_add_action_flag_choices','2026-04-07 17:41:20.531075'),(6,'contenttypes','0002_remove_content_type_name','2026-04-07 17:41:20.631026'),(7,'auth','0002_alter_permission_name_max_length','2026-04-07 17:41:20.720840'),(8,'auth','0003_alter_user_email_max_length','2026-04-07 17:41:20.772964'),(9,'auth','0004_alter_user_username_opts','2026-04-07 17:41:20.788921'),(10,'auth','0005_alter_user_last_login_null','2026-04-07 17:41:20.877086'),(11,'auth','0006_require_contenttypes_0002','2026-04-07 17:41:20.883023'),(12,'auth','0007_alter_validators_add_error_messages','2026-04-07 17:41:20.902019'),(13,'auth','0008_alter_user_username_max_length','2026-04-07 17:41:21.038321'),(14,'auth','0009_alter_user_last_name_max_length','2026-04-07 17:41:21.128965'),(15,'auth','0010_alter_group_name_max_length','2026-04-07 17:41:21.164874'),(16,'auth','0011_update_proxy_permissions','2026-04-07 17:41:21.191752'),(17,'auth','0012_alter_user_first_name_max_length','2026-04-07 17:41:21.386803'),(18,'ayurvedaapp','0001_initial','2026-04-07 17:41:44.652759'),(19,'ayurvedaapp','0002_alter_casehistrypersonalinfo_age_and_more','2026-04-07 17:41:44.989456'),(20,'ayurvedaapp','0003_alter_invoicemaster_currentdate','2026-04-07 17:41:45.227240'),(21,'ayurvedaapp','0004_remove_followup_enqid_remove_followup_followedby_and_more','2026-04-07 17:41:45.699814'),(22,'ayurvedaapp','0005_sourcedetails_enquiry_followup','2026-04-07 17:41:46.370440'),(23,'ayurvedaapp','0006_enquiry_language','2026-04-07 17:41:46.464232'),(24,'ayurvedaapp','0007_delete_nexdoctorprescription','2026-04-07 17:41:46.486770'),(25,'ayurvedaapp','0008_nexdoctorprescription_medicationentry','2026-04-07 17:41:46.943737'),(26,'ayurvedaapp','0009_casehistoryerrorlog','2026-04-07 17:41:46.965673'),(27,'ayurvedaapp','0010_enquiry_deleted_enquiry_deleted_date','2026-04-07 17:41:47.137064'),(28,'ayurvedaapp','0011_invoicechild_baseqty_invoicechild_tax_and_more','2026-04-07 17:41:47.508788'),(29,'ayurvedaapp','0012_alter_patient_details_district','2026-04-07 17:41:48.698990'),(30,'ayurvedaapp','0013_diet','2026-04-07 17:41:48.720555'),(31,'ayurvedaapp','0014_staffdetails_deleted_staffdetails_deleted_date','2026-04-07 17:41:48.977747'),(32,'ayurvedaapp','0015_medicalfollowup','2026-04-07 17:41:49.227468'),(33,'ayurvedaapp','0016_remove_nexdoctorprescription_diet_and_more','2026-04-07 17:41:49.512881'),(34,'ayurvedaapp','0017_clairvedacasehistory_clairvedafollowup_and_more','2026-04-07 17:41:50.994475'),(35,'ayurvedaapp','0018_clairvedacasehistory_prepairedby','2026-04-07 17:41:51.351305'),(36,'ayurvedaapp','0019_alter_clairvedcasehistrypersonalinfo_age_and_more','2026-04-07 17:41:51.875178'),(37,'ayurvedaapp','0020_casehistoryresultreport','2026-04-07 17:41:52.176284'),(38,'ayurvedaapp','0021_nextreatmentdetailschild_treatment_date_and_more','2026-04-07 17:41:52.611483'),(39,'ayurvedaapp','0022_patient_details_deleted_patient_details_deleted_date','2026-04-07 17:41:53.531591'),(40,'ayurvedaapp','0023_alter_followup_remarks','2026-04-07 17:41:53.656789'),(41,'ayurvedaapp','0024_appointments_contactno_appointments_status','2026-04-07 17:41:53.929326'),(42,'ayurvedaapp','0025_physicalstockdetails_deleted_and_more','2026-04-07 17:41:54.184158'),(43,'ayurvedaapp','0026_followupcalldetails','2026-04-07 17:41:54.415328'),(44,'ayurvedaapp','0027_remove_enquiry_uniqueid','2026-04-07 17:41:54.487145'),(45,'ayurvedaapp','0028_alter_hospitaldetails_email_and_more','2026-04-07 17:41:55.863808'),(46,'ayurvedaapp','0029_patient_details_address','2026-04-07 17:41:56.286380'),(47,'ayurvedaapp','0030_nextreatmentdetailschild_treatmenttime','2026-04-07 17:41:56.393684'),(48,'ayurvedaapp','0031_nextreatmentdetailschild_deletedstatus_and_more','2026-04-07 17:41:56.671954'),(49,'ayurvedaapp','0032_ippatientadmission_room_details_ippatientroombooking','2026-04-07 17:41:57.963230'),(50,'ayurvedaapp','0033_room_details_wardbedno_room_details_wardorroom_and_more','2026-04-07 17:41:58.311048'),(51,'ayurvedaapp','0034_ippatientroombooking_accommodation_type_and_more','2026-04-07 17:41:59.317393'),(52,'ayurvedaapp','0035_ippatientadmission_admittedstatus','2026-04-07 17:41:59.447931'),(53,'ayurvedaapp','0036_ippatientroombooking_ipno_ipdailymedicine_and_more','2026-04-07 17:42:00.362095'),(54,'ayurvedaapp','0037_iptreatmentdetails_treatmentcount','2026-04-07 17:42:00.464806'),(55,'ayurvedaapp','0038_patientdischarge','2026-04-07 17:42:00.776780'),(56,'ayurvedaapp','0039_ipdailymedicine_physicalstock','2026-04-07 17:42:01.034468'),(57,'ayurvedaapp','0040_ipbill','2026-04-07 17:42:01.457910'),(58,'ayurvedaapp','0041_patientauditlog','2026-04-07 17:42:01.800300'),(59,'ayurvedaapp','0042_clairvedaprescription_physicalstock','2026-04-07 17:42:01.983799'),(60,'ayurvedaapp','0043_clairvedacasehistory_deletestatus','2026-04-07 17:42:02.230810'),(61,'ayurvedaapp','0044_roomchangelog','2026-04-07 17:42:02.777619'),(62,'ayurvedaapp','0045_ipbill_ipinvoicenumber_ipbill_subtotal','2026-04-07 17:42:02.923810'),(63,'ayurvedaapp','0046_ipbill_billingstaff','2026-04-07 17:42:03.127457'),(64,'ayurvedaapp','0047_ipexpandedbillmedicinedetail_and_more','2026-04-07 17:42:04.396219'),(65,'ayurvedaapp','0048_packagemaster','2026-04-07 17:42:06.715274'),(66,'ayurvedaapp','0049_alter_invoicechild_suppid','2026-04-07 17:42:09.492322'),(67,'ayurvedaapp','0050_ippatientadmission_address','2026-04-07 17:46:58.264296'),(68,'ayurvedaapp','0051_patientdischarge_accomadationtype_and_more','2026-04-07 17:46:59.186453'),(69,'ayurvedaapp','0052_ippatientadmission_advance_amount_and_more','2026-04-07 17:47:00.804025'),(70,'ayurvedaapp','0053_ippackagepayment','2026-04-07 17:47:01.140511'),(71,'ayurvedaapp','0054_ippatientroombooking_admissionenddate','2026-04-07 17:47:01.384729'),(72,'ayurvedaapp','0055_ippatientroombooking_bookingcancel','2026-04-07 17:47:01.513288'),(73,'ayurvedaapp','0056_dashboardesign_dashboardallocation','2026-04-07 17:47:01.768885'),(74,'ayurvedaapp','0057_ippatientadmission_advancedue_and_more','2026-04-07 17:47:03.586538'),(75,'ayurvedaapp','0058_treatmentroom_details_oppatienttreamentroombooking','2026-04-07 17:47:04.112097'),(76,'ayurvedaapp','0059_oppatienttreamentroombooking_bookingenddate','2026-04-07 17:47:04.241426'),(77,'ayurvedaapp','0060_proceduredt_oppatienttimeslotbooking','2026-04-07 17:47:04.750058'),(78,'ayurvedaapp','0061_oppatientadmission_oppackagepayment','2026-04-07 17:47:05.288139'),(79,'ayurvedaapp','0062_followup_branch','2026-04-07 17:47:05.497579'),(80,'ayurvedaapp','0063_ippatientadmission_admittedbranch','2026-04-07 17:47:05.908738'),(81,'ayurvedaapp','0064_physicalstockdetails_stockbranch','2026-04-07 17:47:06.180576'),(82,'ayurvedaapp','0065_labtestchild_labtestmaster_and_more','2026-04-07 17:47:09.850450'),(83,'ayurvedaapp','0066_casehistorydietplan_patient_and_more','2026-04-07 17:47:12.300610'),(84,'ayurvedaapp','0067_branch_gstno','2026-04-07 17:47:12.635688'),(85,'ayurvedaapp','0068_prescriptionnew_qtyprescriped','2026-04-07 17:47:12.832005'),(86,'ayurvedaapp','0069_ratemaster_appointments_fee_appointmentinvoicemaster','2026-04-07 17:47:13.459403'),(87,'ayurvedaapp','0070_casehistorytreatmentplan_followup','2026-04-07 17:47:13.813883'),(88,'ayurvedaapp','0071_food','2026-04-07 17:47:13.891946'),(89,'ayurvedaapp','0072_appointmentinvoicemaster_payementmode_and_more','2026-04-07 17:47:14.225210'),(90,'ayurvedaapp','0073_invoicechild_cgst_invoicechild_sgst','2026-04-07 17:47:14.451552'),(91,'ayurvedaapp','0074_casehistorylabresult_labtestdate','2026-04-07 17:47:14.643160'),(92,'ayurvedaapp','0075_invoicechild_cgstamount_invoicechild_sgstamount_and_more','2026-04-07 17:47:15.520948'),(93,'ayurvedaapp','0076_branch_hosporclinic_alter_branch_branch_address','2026-04-07 17:47:16.061406'),(94,'ayurvedaapp','0077_branch_compositiontax_alter_branch_branch_address','2026-04-07 17:47:16.640716'),(95,'ayurvedaapp','0078_invoicemaster_card_amount_invoicemaster_cash_amount_and_more','2026-04-07 17:47:17.155825'),(96,'ayurvedaapp','0079_alter_invoicemaster_shipping_and_more','2026-04-07 17:47:18.042143'),(97,'ayurvedaapp','0080_newinvoicemaster_newinvoicechild','2026-04-07 17:47:19.180534'),(98,'ayurvedaapp','0081_medicinemaster_new_medicinemasterrate','2026-04-07 17:47:19.878348'),(99,'ayurvedaapp','0082_inventorycategory_inventorycompany_and_more','2026-04-07 17:47:22.550575'),(100,'ayurvedaapp','0083_alter_prescriptionnew_case_history','2026-04-07 17:47:22.925706'),(101,'ayurvedaapp','0084_alter_casehistorydietplan_case_history_and_more','2026-04-07 17:47:24.370061'),(102,'ayurvedaapp','0085_alter_casehistorylabtestrequisition_case_history','2026-04-07 17:47:24.736577'),(103,'ayurvedaapp','0086_treatmentinvoicemaster_paymentmode','2026-04-07 17:47:24.985020'),(104,'ayurvedaapp','0087_creditnotemaster_creditnotechild','2026-04-07 17:47:25.778982'),(105,'ayurvedaapp','0088_branch_inactive','2026-04-07 17:47:26.233778'),(106,'ayurvedaapp','0089_newinvoicechild_returned_qty','2026-04-07 17:47:26.392988'),(107,'ayurvedaapp','0090_alter_casehistorylabresult_created_at','2026-04-07 17:47:26.584812'),(108,'ayurvedaapp','0091_newinvoicechild_manufacturedate','2026-04-07 17:47:26.759984'),(109,'ayurvedaapp','0092_paymentupdatelog','2026-04-07 17:47:27.102166'),(110,'ayurvedaapp','0093_appointmentfeerule_patientvisittracking','2026-04-07 17:47:27.431500'),(111,'ayurvedaapp','0094_stockauditlog','2026-04-07 17:47:27.999274'),(112,'ayurvedaapp','0095_paymentupdatelog_previous_status_and_more','2026-04-07 17:47:28.117613'),(113,'ayurvedaapp','0096_paymentupdatelognew','2026-04-07 17:47:28.487848'),(114,'ayurvedaapp','0097_appointmenteditlog','2026-04-07 17:47:28.889581'),(115,'ayurvedaapp','0098_zohoaccesstoken_zohoconfig_and_more','2026-04-07 17:47:30.472587'),(116,'ayurvedaapp','0099_patientauditlog_field_name_patientauditlog_new_value_and_more','2026-04-07 17:47:31.107477'),(117,'ayurvedaapp','0100_appointments_visit_duration_and_more','2026-04-07 17:47:31.638287'),(118,'ayurvedaapp','0101_assignedappointments','2026-04-07 17:47:32.275394'),(119,'ayurvedaapp','0102_prescriptioneditlog','2026-04-07 17:47:32.799331'),(120,'ayurvedaapp','0103_appointmentfee','2026-04-07 17:47:33.123414'),(121,'ayurvedaapp','0104_casehistorylabbill','2026-04-07 17:47:33.550004'),(122,'ayurvedaapp','0105_casehistorylabresult_bill','2026-04-07 17:47:33.886689'),(123,'ayurvedaapp','0106_alter_appointmentfee_visit_type','2026-04-07 17:47:33.987418'),(124,'sessions','0001_initial','2026-04-07 17:47:34.030614'),(125,'ayurvedaapp','0107_proformainvoice_purchaseorder_proformaitem_poitem','2026-04-08 09:36:57.715748'),(126,'ayurvedaapp','0108_alter_purchaseorder_approved_by','2026-04-08 09:36:57.729708'),(127,'ayurvedaapp','0109_proformainvoice_branch_purchaseorder_branch_and_more','2026-04-08 09:36:58.417802'),(128,'ayurvedaapp','0110_proformainvoice_payment_date_and_more','2026-04-08 09:36:58.688621'),(129,'ayurvedaapp','0111_alter_proformainvoice_payment_updated_by','2026-04-08 09:36:59.037854'),(130,'ayurvedaapp','0112_alter_purchaseorder_proforma_reference','2026-04-08 09:36:59.163522'),(131,'ayurvedaapp','0113_b2binvoice_b2binvoiceitem_b2cinvoice_b2cinvoiceitem','2026-04-08 09:37:00.598514'),(132,'ayurvedaapp','0114_b2binvoice_buyer_state_b2binvoice_buyer_state_code_and_more','2026-04-08 09:37:02.612691'),(133,'ayurvedaapp','0115_alter_proformainvoice_payment_status','2026-04-08 09:37:02.720275'),(134,'ayurvedaapp','0116_b2binvoiceitem_batch_no_b2binvoiceitem_company_id_and_more','2026-04-08 09:37:02.951072'),(135,'ayurvedaapp','0117_purchaseorder_destination_branch_and_more','2026-04-08 09:37:03.652803'),(136,'ayurvedaapp','0118_branch_is_franchise','2026-04-08 09:37:04.153878'),(137,'ayurvedaapp','0119_stocktransfer_stocktransferitem_stocktransferlog','2026-04-08 09:37:05.538166'),(138,'ayurvedaapp','0120_stockauditlog_remarks','2026-04-08 09:37:05.684000'),(139,'ayurvedaapp','0121_proformainvoice_purchase_order','2026-04-08 09:37:05.976113'),(140,'ayurvedaapp','0122_grnchild_purchase_rate','2026-05-05 14:14:52.178411'),(141,'ayurvedaapp','0123_physicalstockdetails_purchase_rate','2026-05-05 14:35:27.226467'),(142,'ayurvedaapp','0122_sourcelead','2026-05-11 05:09:12.449162'),(143,'ayurvedaapp','0123_patient_details_source_lead','2026-05-11 05:09:13.404211'),(144,'ayurvedaapp','0124_designation_department_name','2026-05-11 05:09:13.675911'),(145,'ayurvedaapp','0125_remove_designation_department_name','2026-05-11 05:09:14.042267'),(146,'ayurvedaapp','0126_designation_department_designation_flag','2026-05-11 05:09:14.338411'),(147,'ayurvedaapp','0127_remove_designation_department_and_more','2026-05-11 05:09:14.663315'),(148,'ayurvedaapp','0128_alter_appointmentfee_visit_type','2026-05-11 05:09:14.782458'),(149,'ayurvedaapp','0129_grnchild_purchase_rate','2026-05-11 05:51:59.167045'),(150,'ayurvedaapp','0130_patient_details_house_name_patient_details_place_and_more','2026-05-11 05:52:16.195810'),(151,'ayurvedaapp','0131_remove_patient_details_house_name_and_more','2026-05-11 06:32:35.532350'),(152,'ayurvedaapp','0124_labtestmaster_rate','2026-06-02 11:09:44.107762'),(153,'ayurvedaapp','0125_labtestchild_rate','2026-06-02 11:23:10.181645'),(154,'ayurvedaapp','0126_labunitmaster_labinvoicemaster_labinvoicechild_and_more','2026-06-02 11:50:49.542123'),(155,'ayurvedaapp','0127_headerdetails','2026-06-03 04:23:55.601128'),(156,'ayurvedaapp','0128_labinvoicemaster_card_amount_and_more','2026-06-04 06:04:21.697230'),(157,'ayurvedaapp','0129_proceduremaster','2026-06-04 12:09:54.965387'),(158,'ayurvedaapp','0130_alter_proceduremaster_branch_id','2026-06-05 04:29:36.927585'),(159,'ayurvedaapp','0131_casualityinvoicemaster_casualityinvoicechild','2026-06-05 06:18:37.961757'),(160,'ayurvedaapp','0132_labinvoicemaster_cancelled_at_and_more','2026-06-08 06:20:37.118091'),(161,'ayurvedaapp','0133_alter_casehistorylabresult_bill','2026-06-08 10:10:16.306788'),(162,'ayurvedaapp','0134_casehistorylabtestrequisition_invoice','2026-06-08 11:42:25.469242'),(163,'ayurvedaapp','0135_alter_casehistorylabtestrequisition_created_at','2026-06-08 12:06:11.401185'),(164,'ayurvedaapp','0136_labinvoicemaster_patient','2026-06-09 04:11:27.982022'),(165,'ayurvedaapp','0137_labrequisitionmaster_and_more','2026-06-09 04:37:38.232644'),(166,'ayurvedaapp','0138_remove_labinvoicemaster_patient_mr_and_more','2026-06-09 05:16:09.839773'),(167,'ayurvedaapp','0139_labresultmaster_casehistorylabresult_result_master','2026-06-09 05:41:21.960169'),(168,'ayurvedaapp','0140_labinvoicechild_test','2026-06-09 06:14:10.348672'),(169,'ayurvedaapp','0141_labinvoicemaster_result','2026-06-12 05:27:31.899545');
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
INSERT INTO `django_session` VALUES ('0eqv08hyhmsj7895xw8lyns3skce9m8y','.eJxlz8sKwjAQBdBfkVl3E4pis3PdTxCRaKYxkAc0oyLiv5vEB9MWssg9M-SSJ7hobEikhgGkaFjUmKwJINsGara6LpxGFc6XEtZ8-xiURwESduG66uG39-c-EqmH8nkyRoffxz7XBHIvDg0QJvL5BFPG0G66LXBVurCY2M3ifYGoLS1Qo0NCxvkXTrOyjvu0q9KsqtqsqRorer0BAyZ0oQ:1wUNR3:dh-YC51TrLVjt6o0p0VZzIGQ9rbMP4Ld54lJbNcG_EQ','2026-06-16 11:37:29.146881'),('0uewv0337prm0224lfsm8ulndhxi95cv','.eJx1ldFygjAURH-lk2cfFMWqv9BP6HQ6kUSkleBAbKfT6b8XhJDdi7zBWdi9uVySX3Wp8sI1Xp9O6rB63i0AGNsUuWtxslB3UJj2Zpcu1LHWLjt3tym-8O50aVfqoAr3ZZ2v6p-nUjud2_pJhZfGZ14q7_WPLlulri62M0u24bpRh9dk-7ZQmfY2b43KvGwNjx_dY2q9SZ7VVNOmE1cPlK_Cfs9I1hR-RjL2Yr0dxOZ2zLysYieFWAJhyCcO4cQpubSmdHmI3I8kZvX3ENIDcO8B2WZVeaXVrJdEoZsjwz6OEDs4Qu6dr7JPCEIGHRsINmtA2KcBUUBtq9oE9yQAcg8E3AMC94DI_VpnZ_IaAFgNBJwGQkZ57VoUP-Z6gzD6j4ha0f5g0MMdMOxhTx68SD3skfhIp5O-ZBCxJ4ohgVFMgBQUoJhodzsb8TOl64mCE46cJh0FmngUJvEyfCM4R88Ez8Q-DO32NRmaCg7TChQnFjBOLeBJqG6a_D5OInw7o3MRUhXFSFkUJWUqzjTn_oThuvZTKZYkBKhGKFCIUHgTdL7d7-88_pab5USBzZA4bogk4KZIArfADv2J2SljWHqEuOxIccmRikPseqW4dEkUj6_A6OwKkA6uACHq7x-eCceQ:1wLFHi:JIFEg2HuR28NNTZ3zXh6gIBRxh6504Q7P9fntlemVYc','2026-05-22 12:36:06.243892'),('1ptvyusimk1gryeyzxgxcxq1g7vk1hke','.eJxlzM8KwjAMBvBXkZx3KUOF3jzvEUQkW7Ku0qawVkXEd9fWP1R2y_fLl9zBBWMlJhxH0KqpInG0RkC3DZRsqRT6GWWYcljX7aOgZwUadnJedfDt_bgLKeEN_WszB8efZ-8xgt6rQz4ZptCfvJi8hnazVVArUuZ_u1i-LpDJpgUSO05c-PEE19xRUQ:1wSA8s:JcDaTeI1WKlSFSRSjaSaFeLxQ6wzDjzoyqF-5UDDKLI','2026-06-10 14:31:34.725643'),('2qcqwp0vojsojfgcjjaz2zidxyid6jq0','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wQfzS:zw9UDwuUJ3BAWXJ0TNAbxhiqvdjAZq33jdeL5T3B7II','2026-06-06 12:07:42.395902'),('4ene9sy54gesbuzj9bqpafwh5h898wxh','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuQgZqRFF-TirUaAizWMkq2jC2FgDIgDM5:1wViHu:xLfSqQz7bgF9u_MUw-1ZHtLta02SHSDkRMmPepLp-QU','2026-06-20 04:05:34.936191'),('6k52i81pbo7bwj5givk6hqo1aoqzmub5','.eJxtlN1uwjAMRl8F5bo3lL_CK-wRpgmFxA3Z2hSlgQ1Ne_elLaGfs92RY8cnri2-RdMZ6_og61oclruqAKCpt8ZFXBZiBFbHQ7UpxMlLp87DcYMXjk62tBQHYd2NXOj8fdFKJw35hUiXnjkvXQjyLtsY8V1DQ7Fym3734vBabt-KoVJnFR0v3rpwlEpR31NMDf5KhTDedaf31pnhtlitV2sBUOqBLhHdLH0-2MWrc4Rz0gP8TSFtAyeaGgr0YH1slNgz1nuOZwdA8AAFF9Dcpz4iTz0jY6aRcM2IuGNETKBkIBOH15o2DvEpKnf_xGZhHgFxHoIH5CHe6fWkQv6KKg9Az4ixceTYPXJmbknP4yz3TzK7pjNIJgDVJ8DKxnl6neZWJsB6SAQqJwS1E2LVg_zKPtZqw_GsAQgmoCADmi1iXctGgW7PKC5jYmwdE2QLmWCmin8vIKqAoWYiTDIhppgQCH5-AfB4pxI:1wKCki:WAUKILDaf3FNcHT1i53_LZVbcC_KdLzrZzdHan1HcLo','2026-05-19 15:41:44.194896'),('740fwd9wmbcns6viulkw59xw86y8gy1w','.eJx1kFsOgjAQRbdi5psfUJCwBZdgjBnpWKu0NaXREOPeLUJ18PHXOXd6T9MbNFYq03rc76FKl2XCgKBWSRNwlsATKBGGMk9g59DUh37M-YWtQU0pVKDMhYy3rptpNCjJzSBeeu2srPfYoQ6Jsw31ZVkRzy1U66zYJFCjJxmKtNShcHfs12C-yJbwnaHow_RHclF0_RORUP5PJKghT2PYeluf3g-Yc_YWR8KEETFRRB-C8INMUDLGBQOZCAY0EQxoIji7-jDpGgGrGglrGgkruj8AeJ-56A:1wKXfL:97bEU_tpaohF5Vnob6fDSCnIEPIOePidPjoUpoKoHXc','2026-05-20 14:01:35.221536'),('7rbt68m1b0997wolld9mru5qx7x928nz','.eJx1zF0KwjAMwPGrSJ77sA9l2it4BBHJ2qyrrK20QRni3bWDyUD3luT3J08YgrE-MXYdyHJfiMVBU7LGg9wKmHarc3IQ0Eb0qs_rbtlfPDoqQcKtx-hQ2cQbmOsvHgMzjug-EsNA-UvVzHMCeaqaswCFTCbE0RnnObTXnEHdFDX8GuqM5R-5W3qsEGnLK6RpIKYJX29PbGJ0:1wQO5T:fSUSCHIc6yOGJaRGurYa-7ZiE3iJ11-61x-fbdIZ238','2026-06-05 17:00:43.042828'),('8p88erutjacj540qmbip6ufw98owujsi','.eJx1k91ygyAUhF8lw7UX0fyZvEIfodPpIKCxFcggTSfT6bsXI-ge09zJt7CL6_GHdbZpTe95XbNTfigzAFL1bWMCLjJ2B60Mi3KXscpxI87DcocH3g3XKmcn1pqrMt6620pzwxvlViwdmva8WO_5jeugONupwazYp-eenV6L_VvGBPeqCUa60cGw-hi2sc22OLBHjctBzP9Rrq36fiIp2fonklSd8iqK_Vcl_PIW5VKYr0Aw5BMO4YSTZK2kNk2KPE5kzhrXEDICcB8BsRVWX8jbbNaEQpsTwx4niA1OkHbnrfiEIGTQWCRYVkTYU0Qk4OLEmXhFAFaRgFMkxMgp62S6ZpEAsU4EvBMC84QWPYSfBHoogWEPIyE9jIj0MKJFQF3zTkDEkVAMSYzEJEiCEqTjY3z4U-7fep7O7fpBgTEiHEeJCDhORID43z8Grozw:1wKeQn:jn5nxPDfxBmJ_Tw5Y_gjAS29dVUh9URUEso-oeurer0','2026-05-20 21:15:01.246538'),('a7ojtqzvzhvf4ugwnr9o112s0gddb7a7','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wOB6H:wrdGsRaXcf8ZbIqi66H1frxH05zUqdpRHcFNbNYRfGQ','2026-05-30 14:44:25.409984'),('ahqz78fhjjp0fxj5tmj5my8bhpyzs746','.eJxlj8sKwjAQRX9FZt2FsXWTnet-gohEM42BPKAZFRH_3SZWnbaQRe6ZyxzmCS4aGxKprgMpKhY1JmsCyLqCkq0uhVOvwvmSw5a3j0F5FCBhF66rFr69H24jkXoo_5-MK_rocFz9-SaQe3GogDCRH14weQzNelMDp0pnLCbsZvG-gKgtLaBGh4QMDzc5zWQN51NXQTNVYTNTYUz0egNVD3j4:1wWRqh:jMKJxJRnRQ8HuZfkNMbgAuNsscgk0KlA1Nvvynh7eQY','2026-06-22 04:44:31.454746'),('dt1b67y1cjsj68hmq387cxo0w1g0jbp0','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wUNnT:2kFyVjDlDTXeRoV7463fHJCXptXvFK9lA9Goe3EuL5Q','2026-06-16 12:00:39.712393'),('eyjrjqxkzruilmrrykkffg12folj2qku','.eJx1kFFOwzAQRK9S7Xc-mpS2IVfgCBVCG3trDLGNkm1Rhbg7DkncdaF_3jf2zHq-oAvG-oHxeISm3NeFAJoGa3zEVQG_wOo41NsC2h69eh3HrXzw4tFRCQ1YfybPob-sHHo01K9geZTuPAVmvKCLSh86Gs2q3XIeoDlUu-cCFDKZaOSMi4bt23gNNg_VHv5qqEex_Ec5W_q8I5G2fEfS1BHTLA6nVvHtFvWtcF0hwyI_4yI841myI-28WSIfE7lmTbMImYBwn0Bmq4L7yH6zWWdUtJmY7DFB2WCCeXcc1LsIkkw0NhNZ1oxkTzMSAd8_MFHrNw:1wKUMT:w_spFh9uLpOJOYZLpW_9vldjELGkJl8E2oNJIfOfaEg','2026-05-20 10:29:53.356614'),('hjvz9h048cx5hod3s73ivbwjzwci6vkw','.eJxtkUFuwjAQRa-CZp0FFkJts2PNERBCBk-Cq3gcJU4RQr17CTHxN3Tn_2b8nyXfqPG1lT7oqqJSFRAN97YWKlcFPbI1j4Vjp-V0HsMatw-iHSsqaSPDYkvPvRlvfQj6ql2axIrONxyrp2NP5U7tC9Jt66QeR7T6Up_3i14aK_zO71GbMasp_Fi-pMTGhpQMNxw45qkwuz4jKJkZVM0sK2yDCf74De_7SDRJIgBFJCCI5KVeV4G7_wwwQA_gzAY8cwLPzI5lcLWT8UlRvFy-cPgDoPgZgPFXAIP09w8VBtm9:1wVQR1:OpKysZWxDyz7AY0nybrcIvbFN4Kew1fiapvple1D8ZU','2026-06-19 09:01:47.052627'),('j1p65mvsdpm4pdzp2vm8i65nzvns8zrm','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wHhla:n0Nn8JHW-HqUBQo7Ub3qDEhbSWMyq-es-ALWxgZi5LE','2026-05-12 18:12:18.402627'),('j37i2wsnhkgtysu21k1ahbiltm79x35w','.eJxlj8sKwjAQRX9FZp1NqEXJznU_QUSmzbQNpIk0oyLiv9vEB2kLs8g9c5lDnmB9Z1xgbFtQUmRRUzCdA1UISNnoVKhHdE0fQ5m3zw4HkqDg4K6bCn69P648Mz5wmDajt_Q99nkGUEd5EsAUeJjGdXENxb4sIKeoI5YzdjN0X0HShldQkyWmDE-_sDqTbXM-dyW0UCW2MCU2F2HdYKA-8IWTqNzB6w1VnnvA:1wUeZn:TOdz5rrbH6eZzX3qMOkKKTWFYKdEyRgkT0UpjcyPuAA','2026-06-17 05:55:39.096545'),('k0ndxm8ad686v5masm8eqh8e7frvsyap','.eJxdzkEOwiAQBdCrmFl3g8bEsHPdIxjTUBjqGAoGaI0x3t22lkq7Yx4f_rzBuIZsiEJr4KzIRoWBGgv8UMA0k5oCtRdW3sbhmKcrK1pkwOFsu10JKbdw6WIUL9EON94ZnD_7HQPwC7sWQLZ3JLF6eLKxElJiCDgEo-9wXsLV9_EpHNiJwd-EGjGXnvC5IVQUN6TQYMQFtRZGZhX7leYlyVY1CVdFCbOqzxdqInth:1wK88x:PXJUfUvZ-RtH1WEWsUai-aMOHuG-QFuQRWczKjNxtbo','2026-05-19 10:46:27.979059'),('l2yeh9j36hahqn34dr54c2j2dcesyiqq','.eJyrVsrJT8_MKy5JTEtTsjK0MNRBEkhJLc5Mz1OystBRAvMzU4BKLA10lJKKEvOSM0BcU2T18XmJuamGSlZKaUX5eSX5QA3JqWAJBSWYHrgS7_ySksTKxFygTFF-TirYaFMYu1jJKtrQNLYWALIqNTs:1wS5al:DCO6QOyS8mOP87dTLoFAxK8CXo5adHB64EHvcwuMino','2026-06-10 09:40:03.939875'),('ml7ginbj9jmtrcghw13ffmw9bb944t5x','.eJxtzcEKwjAMgOFXkZx7qWOCvXneI4hIZrNZ2VppM0XEd5dN3VLw1nwJ_Z_Qhdb5xNg0YLQSo6XkWg-mUDDNzk4HdUR_Oo9DKa-PHnvSYGDnh1UFv7uZq8CMD-xBQQwdfT_7PBOYvT4ouLLlUF96345rKPRmDbOiHU0vcHN0z4Ws41wsdcQ0GzZM8V9BLGRHcFYTnjWFZ-XEIVLW3ZY5L1WBoilUFIWK3usNX8ibbA:1wMLLC:7H66MhdR7CJEwvq2l2_m2Fw5QnG6izXFIHdAckkRj0c','2026-05-25 07:46:14.543452'),('mo0wyqpjdcl0imoanvoi3yg8xgch7946','.eJxNzE0KwyAQBeCrhFm70fw0eIUeoZQwqcZa4ggqKaH07tVAirt535uZD6zeWIoJlwUkv4ysAqWjNZRZMDjAqhzGnsEckB7PEvv6YCJ0moMES5um5MPeOCQ0OjRwHv13rj4l3NHlJvhVl2diOOcI8iaGOwMTyM8vR6b00HZtBxWiKspr2qx-H_b9Ad16SKs:1wK9Xr:pvmpgq0P3kf3X6650MJzWqZHYvo0FSH5sJ6CIu5_nV0','2026-05-19 12:16:15.856817'),('mqlji2jkkgk4ks23i6s6mr2m6yt9sqk1','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuQgZqRFF-TirUaAizWMkq2jBWR6kkMSk5sTg1o7ikoASkQMnQ0kKpFgC-5zqc:1wWuqV:ACotxHSfTh8CtEORpt9WBjpBrON_b0Sdj3Kn1VU6Rx8','2026-06-23 11:42:15.940960'),('n36pqzobssen9p04kc3qpu7lmdbmnofm','.eJxNjFsKgCAQRbcS8-1PQg_cQkuIiKkmE3IElSCivWdB0d-95z4OWJ02HCLOM6i8qsUPTBSM5oSlgAeYKZm6EDB45HG5bfEf9IyWclBgeCOOzu-ZRUZNPoN39HUaFyPuaFPi3Ur3mSxfHUC1suzOCwnONbQ:1wAl44:9sgz1stVQSszxvsBD7qii-0WVFKB27zYWup-ozF2qyM','2026-04-23 14:18:40.792504'),('nwtp1f5ndr6n459cp2mm5wa1q1nl1kpp','.eJxtj8sOgjAQRX_FzJpNRRLDzjWfYIwpdoCaPhI7aozx3wUKpTySLjrn3vRMv6BsLY0jXlWQsyQaBTpZG8jTBPpZir5QPri5Nd2Qxe2r4RoZ5HAyz10BYy_gwhLxD9dt8rAKh8f81UF-ZpcEhGu8VBuy5b3rQHrM9rCKuOgytg5eEt_bCQpJ24lAhYRDRuio_Z4S2tTjAoeYT-qAImlgkS6wlUi3Z9KkMzr3eLYQebgweRipfn_2YqHo:1wV3U7:yfGT-qZlcOGQwjIqSBJ6Qe6Nxob-QYqZv68SJdjva7M','2026-06-18 08:31:27.669333'),('p7ice0pbq5eduaa7eie8ae15f9rxf0yn','.eJxtjM0KwjAQBl9F9pxLKIrm5rmPICJbs42RZAPttiLiu2viD1V6229m2BuE5Dz3gm0LRqvJtNR7x2AqBWV7W4KmQz6e8lhO6wNjJA0Gtjwsavh0X1wnEbxifJouBXo_e509mJ3eK4jEQ3SRJTXnHEC1Wm_gl6PNQv_R0dNlBpP1MoMtBRIq4v4AfiRWLQ:1wUOL1:5nwe0xNo7p5qPUh7t0CCyK-frKiwg8tBoxD7W0FM02s','2026-06-16 12:35:19.947852'),('pjag9q7c91pigrviovn9a0xze7a16m12','.eJxtkdFugyAUhl-l4dqLirN1vsIeoVkWhFPKJmCQdWmWvftgKh7I7uT79f_wnG8yWqnM7Nn1Svr63FUICJiVNAHTivwBJcKhaysyOGb4LR5b_MGbYRpq0hNl7mC8dY-DZoZJcAeyfZTeebHeswfTIXF2hFhGT9vzTPoLPb1Gr-UfdniPMWmemprsjIkIMbkr-CoQCOULJGAEDxv8nKbAtJGroj1mFEkSw5oEsSjBTMWZBxmGoqUOw0n_RM__ZLu2TJC8jNAVyii_iNVTdoXmmFEkTwxrE8TCBDOVBrGPlj4nsiuWM6pfAKpeQLG1gftyjl0Z4N0hnK0P8WyDiGfmyfFbVr0CVLoSVLcSVPTzCz-tJbg:1wLacO:Juufr77Fz6za9GkPRi0Ng4itSA7RUMnUcDOo1SWe-9U','2026-05-23 11:22:52.546028'),('qtmeo8h8n0ic7ihqb5kfqgt4ns54t5e2','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wUyzM:lVXWr5F8n0qw3KiIiEhFdh3J1yTBthMyzPP_mqR4Y0k','2026-06-18 03:43:24.020256'),('qv8cte51q6achgjm130gvx6mzcv4lmd8','.eJxdz0FuwyAQQNGrRLP2IrbjNPIVeoSqqoiZUFozWJikiqrcPVAVGLwzD8NnfmG2StPqxeUCY_tyahhIXLWiwF0Df6BlWJyGBs5O0PQZlwM_8EHCYAsjaLoheevuOyNIKHQ7SIfyP6_We3EXJuw4O2O8rDum7xXGt-74Hrt2-rbnr7gN_aFvoZiQEbncNP5sCKX2G5I4o8d_NEhXo0x4bY4Mh42XEFcW48yCnKvoel2WYIZUSu4rZZNl47Nl5NNlrFKTNUs1Xb-vtKSKsVRBlipYpRxaJ1OlS1A1krBCInZ_Inb74wm-MN_d:1wKw9z:LBmL3h3V45Q4mQuvk8N6m6TfqoFPDkVWyKiMKJ-Xa1Q','2026-05-21 16:10:51.984411'),('r3lphvi4y9t4xrjgyvxkfuy2yw1mumg3','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuQgZqRFF-TirUaAizWMkq2jC2FgDIgDM5:1wVkqW:OvBjlVmV29J0OY86oWShPd4pnO-x3aPQEnOYT5Ab9Do','2026-06-20 06:49:28.741675'),('slhrr52cs36le9uy4l9yuik6oxzp3vqd','.eJxtjlEKgzAQRK8i-50fbWOtV-gRSilrs2qK2UASLFJ69yYWi6B_O_Nmhn3DYDvNPmDbQp2fKrEyFHndcbQLAbOhVRSVFNA45EefpFwX7oyGcqhB80gcrJsyg4wduQyW0j9zsSHghCYSZwdKY0W53B7qa1HeBCjf_94wca95phQcjvIMG4QqsXwLRk2vfUJKh32iaKBAM_t8AXIJYww:1wK9Kv:Rj4N3nuWAa0AeZymQ_TNJkfzBbUcKvioiZ-RKXQPHO8','2026-05-19 12:02:53.635276'),('tgwe3w8fbagomsylvwlwyo3f9tnlpvgz','.eJxtjdEKwjAMRX9F8twHqwy3_oKfICLZms7K1koXFBH_3W2wmYJvybk3OW_oYuvDwOgcGF1qJYClwbcBTKlg3r0dK9VWQZ0wNNdpLWT_ErAnDQZcioHjeNDQHGxguVkrx8iML-zHJMWO5tfFMg9gTro4K7iz5Vjf-tBOBdgfdhWsFO3E9A88PD1zQtZzTix1xLQydEzpn0EE0iNwZhM8cwouzJ8vqFp8oQ:1wS8Rh:Zqy-UZIORs84bm3hsdUust6ChQp8gJTN4XLD62ByofA','2026-06-10 12:42:53.421678'),('tk4pw2mq7j8mho8ak1svlmhj2t0va61x','.eJx1ls1u2zAQhF-l4NmH2I4dybee8whBUdASpaoVSUGiEwRF372WxJ8ZKgZ8sL6ld0TurJd_RW_bzkxONo247HfwWKupa424HHdiee7qZcF1lKb6NT-ccPVPI7Xai4v4bm7fXkVYF_GrdU5-Sn2PjLZXPtn6dRKXt_2PnaikU60dP3WrjbPX3_MicTyfn8Q2Jus5uP8i8t6pjwchVXfuQahWvXLKB6fbtXL5W2wC6RUIgz5xECdOylrV2rRB8hBJ0lqfQWQFkH0FlNapyen7J6YuC6IpfWIgkSDIJEhSg6vnXUWpl0OZaNLxAEQ8AQVPsvSycWr8SgECqAOY1ICTJnAujXGjks4f4KlISBsoT0BYocCwSIGx8Zyt_oDnnoGB3TxBp3mEJvMo85e5ZcYuyoyj1xIlxyVMvkuYRBvb9x-3AWt2Lp_zQJIlDLrEQThxkpXDkDxynP9ErOk7o7acG4y7i1sr88SakH4eESSJDFJFRglHazWd00tBNOkkBkIJglKCuddGRVrFgTE5LkA2XaDsu0C5cxc3gtoZIXRsQNitgWGnBpbt6j6MoIMKYLifldBmVkQ7WRFXSNmxDtlPAVD2QLAwHmFZPMomz8B9UhyJ4swZth2SIE2bALOTahrZV3BWJVE8rcDovAKkEwswc3Wv5DS1Zn4N_vcpH8XR6dsoeX4bJvdvw5vZeL_Q9DB4yxI5D8cFZbNxYdloXBgJVVYPfKU4EoUrTWR4mYkQrzERgtS__6NWPQE:1wSWdW:rjB5QUDMP-qKHQfOOrn2YzhNstILSgHazgs8YtNUiEc','2026-06-11 14:32:42.596093'),('w8e93gw0w08wxpxoi03086usq3s9t6tq','.eJxt0s9ywiAQBvBX6XD2YP44am49-widTgcDSdMGyCTY1un03aviwreMN_kt7gdkf8Xo-sEuXnadaIoVLJVeht6KplqJ23pQtw3HWdr2_brY4O43K40uRCOe7enpIGhf5IPzXp6luVRmN-p7s_BzEc1L8XqPccePa1FURb0VyaS6YgHyNejvjLQafEZKj9rriF0nxxYidkwxhIzFELIgQhbVSq97N59Nb6xPgdX2QS3F5hUIz0twhLzE73w6tj4_xS4vwM2R8fLoeH90lmy0MranyH2UlBXWEBIAugfgL-vMxG5Tr5nCa0bDd4yILxgxmxfXfkIQGs5KEDYpgdicBGIBs3azou4lAetOAt2JoDsR697P9kLpG9Q1YoqIBBle_mRDU284p_8DPu4ABwXNxnSa2GE3e6Y4oGRsOgnZaBJmc2lP_G7luswcZzQpm9TEbF4TQ-jfP29Mxew:1wAP9r:hQus_LCrbrJaKEZcItAj39pvUUCbmDTxwim0hWYPk4A','2026-04-22 14:55:11.471779'),('wqpsbahcorc1vnedxf4lo404vqzzzwu3','.eJxlkEEOwiAQRa9iZt0NNhrbnesewRiDMq0kQJuCGmO8u5RWmLYJC_5j-I_wAdU20ljH6xpKlpEo0MrGQJlnELIUYeDac3O7D2FHpy-Ga2RQwtE8NhX85yKuWuf4m2t_0rcKp7Jxa6E8sXMGvOu0aYYjyPe7rR9tjZIG19xHLobMxvCU-EoJhXQpCVTocMpj4ex6RKQkMlIV2azQoXXar_i-4jCjyZMYESVITAmuVP7nlSCygvK5K6CFKrCFKTAi-v4AON2sWA:1wUMl1:uaJPzElSKMhntfqwJEdDg-VWjXCxKJZJK6rBcc9n_1U','2026-06-16 10:54:03.629242'),('wzgy6sw3kzvvdtrn5n946uh5xr505yfz','.eJyrVsrJT8_MKy5JTEtTsjLUQeKmpBZnpucpWRnrKIH5mSlgBUlFiXnJGSCOKbLq-LzE3FRDJSslx7xSBW8lmDq4sHd-SUliZWIuUKYoPycVahiEWaxkFW0YWwsAGIIuwA:1wV07o:g23BUJohLPT3Ggs4TzP7Qw1WgGpCnUR--ktt7HP2y1s','2026-06-18 04:56:12.140066'),('ycrgnpc1lrffhwa10idgb8tqlcd64wqv','.eJxtkN0KwiAYhm8lvuOdiI3Ks453CRHh8psZ_sB0RUT33uZWuhV44Pu8Lz7gE7STyvrAmwYYKbIo0CtpgdECYlYiDuqW2_NlCGW-PllukACDve1WFXx2X1y5EPiDm75pncbpsfHqgR3IsQCDtjPS2ODq6zAAutlRmHMuhoIs6E3h_Q9GocIfLFBjwKkI6IPpj5WjclvSGU3CxDJdgpkswR9V_3VaZLJ1zueuiBaqyBamyDLR6w0Em5v8:1wUd9Z:ucj67518aVZrLBcPgMJzVsUIplMFOay5NnZmzHBMSj4','2026-06-17 04:24:29.709358'),('zdj4fwqlo8il94a953mzcbyrohb5aewv','.eJxt1E1ugzAQhuGrVF5nEfLTFnZd5whVFTl4IK7AIDxJVVW9ex0C9jekUhbxY2deC6T8qKarrfOsq0oV2QqWhrytnSq2KzWurRkPnAbtyvNtscfTR6dbylSh3tzl6aDmc5EPHbP-1m3amUYMXUPT6PtXr4r37GOKdqfP26barXe5SqbNDTOQq6WvBZGxvCBDDTFFrCrdlCmxXwvFyGwiM6MIzShSreOBNE-dbZ6odSkTCSrRIBJNNHTft66eE5sgnWuso0cPS4zWIleLUC0S94Hi55FgSDQYFU0M7NlweFZwP9AUmQASk0BgksV4XTEN_xVgAzvAogYumuCizPpUak9nz_39rW-y58DWXTtb0rEfrOOjLkvynsI2DxdaKdOHdyqfx_5FSU-XRYW7IsNVkeVNyXMbPjH5mgtNwWSQSwixhA-p8NfRmBTL1-iyNdIiNdqiNBqEfv8ANuqTxA:1wXzuQ:Zj7Ip2SZ_8dUp3dxO7dI0RSyENMlyDXmNqxsPgd0--I','2026-06-26 11:18:46.154383');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'menondb'
--

--
-- Dumping routines for database 'menondb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-12 17:11:32
